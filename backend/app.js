import mysql from "mysql2/promise";

// Function to insert a new episode into the database
async function insertEpisode(db, releaseDate, year, episodeNumber) {
    const query = `
        INSERT INTO Episode (Release_Date, Year, Num_of_Episode)
        VALUES (?, ?, ?);
    `;
    try {
        const [result] = await db.execute(query, [releaseDate, year, episodeNumber]);
        const episodeId = result.insertId;
        console.log(`Episode ${episodeNumber} for year ${year} added successfully.`);
        return episodeId;
    } catch (error) {
        console.error("Error inserting episode: ", error);
    }
}

// Function to retrieve the next episode number for a given year
async function getNextEpisodeNumber(db, year) {
    const query = `
        SELECT MAX(Num_of_Episode) as maxEpisode FROM Episode
        WHERE Year = ?;
    `;
    try {
        const [results] = await db.execute(query, [year]);
        const maxEpisode = results[0].maxEpisode;
        return maxEpisode ? maxEpisode + 1 : 1;  // Return maxEpisode + 1 if exists, otherwise start with 1
    } catch (error) {
        console.error("Error fetching the next episode number: ", error);
        throw error;  // Re-throw to handle it in the calling function
    }
}

async function assignCuisinesToEpisode(db, episodeId) {
    let assignedCuisines = new Set();

    // Continue the loop until exactly 10 unique cuisines have been assigned
    while (assignedCuisines.size < 10) {
        // Fetch 10 random national cuisines not already considered
        const [cuisines] = await db.execute(`
            SELECT ID_National_Cusine
            FROM National_Cusine
            WHERE ID_National_Cusine NOT IN (?)
            ORDER BY RAND() LIMIT 10;
        `, [Array.from(assignedCuisines).length > 0 ? Array.from(assignedCuisines) : [0]]); // Use [0] when set is empty to avoid SQL errors

        // If less than 10 cuisines are fetched and the set is still not full, it may be stuck in an infinite loop
        if (cuisines.length === 0) {
            console.log("Not enough unique cuisines available to meet the required number.");
            break; // Break the loop if no more unique cuisines are available
        }

        for (const cuisine of cuisines) {
            const cuisineId = cuisine.ID_National_Cusine;

            // Check participation of this cuisine in the last 3 episodes
            const participationCounts = await checkParticipation(db, episodeId, [cuisineId], 'Episode_National_Cusine', 'ID_National_Cusine');

            // Ensure the cuisine has participated in fewer than 3 consecutive episodes
            if (participationCounts[cuisineId] >= 3) {
                console.log(`Cuisine ID ${cuisineId} has already participated in 3 consecutive episodes, skipping.`);
                continue; // Skip this cuisine and try the next
            }

            // Insert the cuisine into the Episode_National_Cusine table if not already assigned
            if (!assignedCuisines.has(cuisineId)) {
                await db.execute(`
                    INSERT INTO Episode_National_Cusine (ID_Episode, ID_National_Cusine)
                    VALUES (?, ?);
                `, [episodeId, cuisineId]);
                assignedCuisines.add(cuisineId);

                // Check if 10 cuisines have been assigned
                if (assignedCuisines.size === 10) {
                    break; // Exit the loop once 10 unique cuisines are assigned
                }
            }
        }
    }

    console.log("National cuisines assigned to episode successfully.");
    return Array.from(assignedCuisines); // Convert Set to Array to return
}

async function findChefsForCuisines(db, episodeId, nationalCuisineIDs) {
    let chefCusinePairs = []; // Array to store objects with chef and cusine IDs
    let addedChefs = new Set(); // Set to keep track of added chef IDs
    let assignedCuisines = new Set(); // Set to track which cuisines have been assigned

    while(chefCusinePairs.length < 10 && assignedCuisines.size < nationalCuisineIDs.length) {
        for (const cuisineId of nationalCuisineIDs) {
            if(chefCusinePairs.length >= 10) break;
            if (assignedCuisines.has(cuisineId)) continue; // Skip if this cuisine has already been assigned

            // Find all the chefs of the national cusine and select one of them
            const chefQuery = `
                SELECT ID_Chef
                FROM National_Cusine_Chef
                WHERE ID_National_Cusine = ?
                ORDER BY RAND() 
                LIMIT 1;
            `;
            try {
                const [chefResults] = await db.execute(chefQuery, [cuisineId]);
                if (chefResults.length > 0) {
                    const chefId = chefResults[0].ID_Chef;

                    // Check participation of this chef in the last 3 episodes
                    const chefParticipation = await checkParticipation(db, episodeId, [chefId], 'Episode_Chef', 'ID_Chef');

                    if (chefParticipation[chefId] >= 3) {
                        console.log(`Chef ID ${chefId} has already participated in 3 consecutive episodes, skipping.`);
                        continue; // Skip this chef and try another
                    }

                    if (!addedChefs.has(chefId)) { // Use Set to check for uniqueness
                        // Insert this chef into the Episode_Chef table as a non-judge
                        const insertQuery = `
                            INSERT INTO Episode_Chef (Judge, ID_Episode, ID_Chef)
                            VALUES (FALSE, ?, ?);
                        `;
                        await db.execute(insertQuery, [episodeId, chefId]);
                        addedChefs.add(chefId); // Add to Set of added chefs
                        assignedCuisines.add(cuisineId); // Mark this cuisine as assigned
                        chefCusinePairs.push({
                            chefId: chefId,
                            cuisineId: cuisineId
                        });
                    }


                } else {
                    // Handle the case where no chefs are found for a cuisine
                    console.log(`No chefs found for cuisine ID ${cuisineId}`);
                }
            } catch (error) {
                console.error(`Error fetching chef for cuisine ID ${cuisineId}: `, error);
                throw error;  // Propagate the error to be handled upstream
            }
        }
    }

    console.log("10 unique chefs successfully added to the episode and registered to the Episode_Chef table");
    return chefCusinePairs;  // Return the array of chef IDs
}

async function findJudgesForEpisode(db, episodeId, chefs) {
    // Prepare an array to collect the IDs of the judges
    let judges = [];

    while (judges.length < 3) {
        // Generate a SQL condition string with placeholders for the array of chef IDs
        const placeholders = [...chefs, ...judges].map(() => '?').join(',');
        // console.log("Placeholders: ", placeholders);

        // Select 3 chefs that are not in the chefs array
        const judgeQuery = `
            SELECT ID_Chef
            FROM Chef
            WHERE ID_Chef NOT IN (${placeholders})
            ORDER BY RAND() 
            LIMIT 3;
        `;

        try {
            const [result] = await db.execute(judgeQuery, [...chefs, ...judges]);

            for (const judge of result) {
                if (judges.length >= 3) break; // Ensure only 3 judges are selected

                // Check participation of this judge in the last 3 episodes
                // Koitao an o kritis exei simmetasxei sta proigoumena epeisodia mono os kritis
                const judgeParticipation  = await checkParticipation(db, episodeId, [judge.ID_Chef], 'Episode_Chef', 'ID_Chef', true);

                if (judgeParticipation[judge.ID_Chef] && judgeParticipation[judge.ID_Chef] >= 3) {
                    console.log(`Judge ID ${judge.ID_Chef} has already participated in 3 consecutive episodes, skipping.`);
                    continue; // Skip this judge and try another
                }

                // Insert these chefs as judges in the Episode_Chef table
                const insertJudgeQuery = `
                    INSERT INTO Episode_Chef (Judge, ID_Episode, ID_Chef)
                    VALUES (TRUE, ?, ?);
                `;
                await db.execute(insertJudgeQuery, [episodeId, judge.ID_Chef]);
                judges.push(judge.ID_Chef); // Store the judge's ID in the array
            }


        } catch (error) {
            console.error("Error adding judges to episode: ", error);
            throw error;  // Propagate the error to be handled upstream
        }
    }

    console.log("Judges successfully added to the episode.");
    return judges; // Return the array of the judges IDs
}

async function assignRecipesToEpisode(db, episodeId, chefCuisinePairs) {
    let episodeDetails = [];

    for (const pair of chefCuisinePairs) {
        // Fetch a random recipe that hasn't been checked yet
        const recipeQuery = `
            SELECT ID_Recipe FROM Recipe
            WHERE National_Cusine_ID = ?
            ORDER BY RAND();
        `;

        try {
            const [recipeResults] = await db.execute(recipeQuery, [pair.cuisineId]);

            // For all the recipes in this specific National Cuisine
            for (const recipe of recipeResults) {
                // Check participation of this recipe in the last 3 episodes
                const recipeParticipation = await checkParticipation(db, episodeId, [recipe.ID_Recipe], 'Episode_Recipe', 'ID_Recipe');

                if (recipeParticipation[recipe.ID_Recipe] >= 3) {
                    console.log(`Recipe ID ${recipe.ID_Recipe} has already participated in 3 consecutive episodes, skipping.`);
                    continue; // Skip this recipe and continue to the next one
                }

                const insertEpisodeRecipeQuery = `
                    INSERT INTO Episode_Recipe (ID_Episode, ID_Recipe)
                    VALUES (?, ?);
                `;
                await db.execute(insertEpisodeRecipeQuery, [episodeId, recipe.ID_Recipe]);

                episodeDetails.push({
                    chefId: pair.chefId,
                    cuisineId: pair.cuisineId,
                    recipeId: recipe.ID_Recipe
                });

                // Check if the recipe-chef pair already exists
                const checkExistQuery = `
                    SELECT COUNT(*) AS count FROM Recipe_Chef
                    WHERE ID_Chef = ? AND ID_Recipe = ?;
                `;
                const [existResults] = await db.execute(checkExistQuery, [pair.chefId, recipe.ID_Recipe]);
                if (existResults[0].count === 0) {
                    const insertRecipeChefQuery = `
                        INSERT INTO Recipe_Chef (ID_Chef, ID_Recipe)
                        VALUES (?, ?);
                    `;
                    await db.execute(insertRecipeChefQuery, [pair.chefId, recipe.ID_Recipe]);
                } else {
                    console.log(`Recipe ${recipe.ID_Recipe} already assigned to chef ${pair.chefId}, not reassigning.`);
                }
                break; // Found an eligible recipe, no need to check further recipes for this specific national cuisine
            }
            if (!episodeDetails.find(detail => detail.cuisineId === pair.cuisineId)) {
                console.log(`No eligible recipes found for cuisine ID ${pair.cuisineId} that have not been used in the last 3 episodes.`);
            }
        } catch (error) {
            console.error(`Error in database operations for cuisine ID ${pair.cuisineId}: `, error);
            throw error;
        }
    }

    console.log("Recipes assigned to all Chefs of the Episode successfully.");
    return episodeDetails;
}


async function insertChefCuisineRecipeTriples(db, episodeId, chefCuisineRecipe) {
    for (const detail of chefCuisineRecipe) {
        const insertQuery = `
            INSERT INTO Episode_Chef_Recipe_National_Cusine (ID_Episode, ID_Recipe, ID_Chef, ID_National_Cusine)
            VALUES (?, ?, ?, ?);
        `;

        try {
            await db.execute(insertQuery, [episodeId, detail.recipeId, detail.chefId, detail.cuisineId]);
            // console.log(`Inserted chef ${detail.chefId} with recipe ${detail.recipeId} for cuisine ${detail.cuisineId} into episode ${episodeId}.`);
        } catch (error) {
            console.error(`Error inserting data into Episode_Recipe_Chef_National_Cuisine: `, error);
            throw error;  // Propagate the error to be handled upstream
        }
    }
}


async function checkParticipation(db, currentEpisodeNumber, entityIds, entityTable, entityColumn, judgeFlag = null) {
    const startEpisode = Math.max(1, currentEpisodeNumber - 3);
    const endEpisode = currentEpisodeNumber - 1;

    if (endEpisode < 1) {
        console.log("No previous episodes to check.");
        return {};
    }

    // Building placeholder string for IN clause based on number of entityIds
    const placeholders = entityIds.map(() => '?').join(', ');

    let query = `
        SELECT ${entityColumn}, COUNT(*) AS participationCount
        FROM ${entityTable}
        WHERE ${entityColumn} IN (${placeholders}) AND ID_Episode BETWEEN ? AND ?
    `;
    let queryParams = [...entityIds, startEpisode, endEpisode];

    if (entityTable === 'Episode_Chef' && judgeFlag !== null) {
        query += ' AND Judge = ?';
        queryParams.push(judgeFlag);
    }

    query += ` GROUP BY ${entityColumn}`;
    console.log(`Executing query: ${query} with params: ${queryParams.join(", ")}`);
    console.log('\n');

    try {
        const [results] = await db.execute(query, queryParams);
        const participationCounts = {};
        results.forEach(result => {
            participationCounts[result[entityColumn]] = result.participationCount;
        });

        console.log(`Participation counts from last 3 episodes:`, participationCounts);
        return participationCounts;
    } catch (error) {
        console.error("Error fetching participation data:", error);
        throw error;
    }
}

async function assignRatings(db, episodeId, chefs, judges) {
    try {
        for (const chefId of chefs) {
            for (const judgeId of judges) {
                // Generate a random rating between 1 and 5
                const rating = Math.floor(Math.random() * 5) + 1;

                // Prepare the SQL query to insert the rating
                const query = `
                    INSERT INTO Rating (ID_Chef, ID_Episode, ID_Judge, Rating)
                    VALUES (?, ?, ?, ?);
                `;

                // Execute the query with the respective values
                await db.execute(query, [chefId, episodeId, judgeId, rating]);
            }
        }
        console.log("Ratings successfully assigned for episode " + episodeId);
    } catch (error) {
        console.error("Error assigning ratings: ", error);
        throw error;  // Propagate the error to be handled upstream
    }
}





async function runContest(year, releaseDate) {
    const db = await mysql.createConnection({
        host: 'localhost',
        user: "root",
        password: "192123George",
        database: "MasterChef"
    });

    try {
        // Retrieve the next episode number and insert a new episode
        const episodeNumber = await getNextEpisodeNumber(db, year);
        const episodeId = await insertEpisode(db, releaseDate, year, episodeNumber);


        // Assign cuisines to the newly created episode
        const nationalCusineIDs = await assignCuisinesToEpisode(db, episodeId);
        // console.log(nationalCusineIDs);

        // Find one chef for each of the 10 national cusines and INSERT into Episode_Chef
        const chefCusinePairs = await findChefsForCuisines(db, episodeId, nationalCusineIDs);
        const chefs = chefCusinePairs.map(pair => pair.chefId);
        console.log(chefCusinePairs);

        // Add judges to the episode
        const judges = await findJudgesForEpisode(db, episodeId, chefs);

        // Add ratings from all 3 judges to each chef
        await assignRatings(db, episodeId, chefs, judges);

        const chefCuisineRecipe = await assignRecipesToEpisode(db, episodeId, chefCusinePairs);
        console.log("Final result: \n", chefCuisineRecipe);

        // Insert into the Chef-Recipe-Cuisine-Episode
        await insertChefCuisineRecipeTriples(db, episodeId, chefCuisineRecipe);

    } catch (error) {
        console.error("Error running contest: ", error);
    } finally {
        await db.end();
    }
}

// runContest();

async function prepareEpisode(db, currentEpisodeNumber) {
    // Assuming these IDs are defined or fetched elsewhere
    const chefIds = [1, 2, 3];
    const judgeIds = [22, 39];
    const recipeIds = [10, 11];
    const cuisineIds = [20, 21];

    const chefParticipation = await checkParticipation(db, currentEpisodeNumber, chefIds, 'Episode_Chef', 'ID_Chef', 0);
    console.log("chefParticipation: ", chefParticipation);

    const judgeParticipation = await checkParticipation(db, currentEpisodeNumber, judgeIds, 'Episode_Chef', 'ID_Chef', 1);
    console.log("judgeParticipation: ", judgeParticipation);

    const recipeParticipation = await checkParticipation(db, currentEpisodeNumber, recipeIds, 'Episode_Recipe', 'ID_Recipe');
    console.log("recipeParticipation: ", recipeParticipation);

    const cuisineParticipation = await checkParticipation(db, currentEpisodeNumber, cuisineIds, 'Episode_National_Cusine', 'ID_National_Cusine');
    console.log("cuisineParticipation: ", cuisineParticipation);

    // Based on the returned counts, decide on adding entities to the new episode
    // Example: check if any entity has participated in more than 3 recent episodes
}

async function test() {
    const db = await mysql.createConnection({
        host: 'localhost',
        user: "root",
        password: "192123George",
        database: "MasterChef"
    });

    try {
        // Retrieve the next episode number and insert a new episode
        const episodeNumber = 4;
        await prepareEpisode(db, episodeNumber);

    } catch (error) {
        console.error("Error running contest: ", error);
    } finally {
        await db.end();
    }
}

async function insertMultipleEpisodes() {
    const startYear = 2000;
    const endYear = 2005;
    const episodesPerYear = 10;

    for (let year = startYear; year <= endYear; year++) {
        for (let episode = 1; episode <= episodesPerYear; episode++) {
            const month = String(episode).padStart(2, '0'); // Ensure month is two digits
            const releaseDate = `${year}-${month}-01`; // Using the first day of the month

            try {
                // Call runContest or the appropriate function to insert the episode
                await runContest(year, releaseDate);
                console.log(`Episode for ${releaseDate} inserted successfully.`);
            } catch (error) {
                console.error(`Error inserting episode for ${releaseDate}:`, error);
            }
        }
    }
}

async function insert1Episode() {
    const db = await mysql.createConnection({
        host: 'localhost',
        user: "root",
        password: "192123George",
        database: "MasterChef"
    });

    const year = 2006;
    const month = 10;
    const releaseDate = `${year}-${month}-01`; // Using the first day of the month

    try {
        // First, check if there are already 10 episodes this year
        const checkYearQuery = `
            SELECT COUNT(*) AS count FROM Episode
            WHERE YEAR(Release_Date) = ?;
        `;
        const [yearResults] = await db.execute(checkYearQuery, [year]);
        if (yearResults[0].count >= 10) {
            console.error(`Error: There are already 10 episodes in the year ${year}.`);
            return; // Stop the function if there are 10 episodes already
        }

        // Next, check if there is already an episode on the same day
        const checkDayQuery = `
            SELECT COUNT(*) AS count FROM Episode
            WHERE Release_Date = ?;
        `;
        const [dayResults] = await db.execute(checkDayQuery, [releaseDate]);
        if (dayResults[0].count > 0) {
            console.error(`Error: An episode is already scheduled for ${releaseDate}.`);
            return; // Stop the function if an episode is scheduled on this day
        }

        // If checks pass, then call runContest or the appropriate function to insert the episode
        await runContest(year, releaseDate);
        console.log(`Episode for ${releaseDate} inserted successfully.`);
    } catch (error) {
        console.error(`Error inserting episode for ${releaseDate}:`, error);
    }
}




import readline from 'readline';
import { exec } from 'child_process';

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

const users = {
    admin: {
        userId: '1',
    }
};

function authenticate(userId) {
    return users.admin.userId === userId;
}

function backupDatabase() {
    const command = `mysqldump -u root -p192123George MasterChef > backup.sql`;
    exec(command, (error, stdout, stderr) => {
        if (error) {
            console.error(`Backup error: ${error.message}`);
            return;
        }
        console.log('Backup complete');
    });
}

function restoreDatabase() {
    const command = `mysql -u root -p192123George MasterChef < backup.sql`;
    exec(command, (error, stdout, stderr) => {
        if (error) {
            console.error(`Restore error: ${error.message}`);
            return;
        }
        console.log('Restore complete');
    });
}


function admin() {
    rl.question('Please enter your user ID: ', (userId) => {
        if (authenticate(userId)) {
            rl.question('Do you want to (1) backup or (2) restore the database? Enter 1 for backup or 2 for restore: ', (answer) => {
                if (answer === '1') {
                    backupDatabase();
                } else if (answer === '2') {
                    restoreDatabase();
                } else {
                    console.log('Invalid option. Exiting...');
                }
                rl.close();
            });
        } else {
            console.log('Authentication failed. Access denied.');
            rl.close();
        }
    }, { echo: '*' }); // This hides password input, mimic secure password field
}





// Call actions

// TODO: Uncomment for 60 episode insertion
await insertMultipleEpisodes();

// TODO: Uncomment for 1 episode insertion
// await insert1Episode();

// TODO: Uncomment for admin backup or restore
// await admin();