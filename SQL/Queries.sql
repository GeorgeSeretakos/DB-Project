#Query 3.1
#Μέσος Όρος Αξιολογήσεων (σκορ) ανά μάγειρα και Εθνική κουζίνα
SELECT
    C.ID_Chef,
    C.First_Name,
    C.Last_Name,
    NC.Name AS National_Cuisine,
    AVG(R.Rating) AS Average_Rating
FROM
    Chef C
    INNER JOIN Rating R ON C.ID_Chef = R.ID_Chef
    INNER JOIN Episode_Chef_Recipe_National_Cusine ECRNC ON C.ID_Chef = ECRNC.ID_Chef
    INNER JOIN National_Cusine NC ON ECRNC.ID_National_Cusine = NC.ID_National_Cusine
GROUP BY
    C.ID_Chef,
    NC.Name;

#Query 3.2 
#Για δεδομένη Εθνική κουζίνα και έτος, ποιοι μάγειρες ανήκουν σε αυτήν και ποιοι μάγειρες
#συμμετείχαν σε επεισόδια
SELECT  DISTINCT
    Chef.First_Name,
    Chef.Last_Name,
    National_Cusine.Name AS National_Cuisine,
    CASE
        WHEN Episode_Chef.ID_Chef IS NOT NULL THEN 'Yes'
        ELSE 'No'
    END AS Participated_in_Episodes
FROM 
    National_Cusine_Chef
INNER JOIN 
    Chef ON National_Cusine_Chef.ID_Chef = Chef.ID_Chef
INNER JOIN 
    National_Cusine ON National_Cusine_Chef.ID_National_Cusine = National_Cusine.ID_National_Cusine
LEFT JOIN 
    Episode_Chef ON Chef.ID_Chef = Episode_Chef.ID_Chef
LEFT JOIN 
    Episode ON Episode_Chef.ID_Episode = Episode.ID_Episode AND YEAR(Episode.Release_Date) = '2004'
WHERE 
    National_Cusine.Name = 'Greek';
#mallon ok h thema  tou node???

# Query 3.3
# Βρείτε τους νέους μάγειρες (ηλικία < 30 ετών) που έχουν τις περισσότερες συνταγές.

SELECT 
    Chef.First_Name, 
    Chef.Last_Name, 
    COUNT(Recipe_Chef.ID_Recipe) AS Recipe_Count
FROM 
    Chef
JOIN Recipe_Chef ON Chef.ID_Chef = Recipe_Chef.ID_Chef
WHERE 
    Chef.Age < 30
GROUP BY 
    Chef.ID_Chef
ORDER BY 
    Recipe_Count DESC;
    
    
    
    
    #auto sigoura doulevei
    
    
    
    
# Query 3.4
# Βρείτε τους μάγειρες που δεν έχουν συμμετάσχει ποτέ σε ως κριτές σε κάποιο επεισόδιο.

SELECT 
    Chef.First_Name,
    Chef.Last_Name
FROM 
    Chef
LEFT JOIN Episode_Chef ON Chef.ID_Chef = Episode_Chef.ID_Chef AND Episode_Chef.Judge = TRUE
WHERE 
    Episode_Chef.ID_Chef IS NULL;
    
 #   ok
    
    
    
    
    
    
    
    
# Query 3.5
# Ποιοι κριτές έχουν συμμετάσχει στον ίδιο αριθμό επεισοδίων σε διάστημα ενός έτους με περισσότερες από 3 εμφανίσεις;

SELECT
    EC1.ID_Chef,
    C.First_Name,
    C.Last_Name,
    COUNT(DISTINCT EC1.ID_Episode) AS Appearances
FROM
    Episode_Chef AS EC1
JOIN
    Chef C ON EC1.ID_Chef = C.ID_Chef
JOIN
    Episode E ON EC1.ID_Episode = E.ID_Episode
WHERE
    EC1.Judge = TRUE
    AND E.Release_Date >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 YEAR)
GROUP BY
    EC1.ID_Chef
HAVING
    Appearances > 3;
    
#oses fores to treksa menei keno  dyskolo senario??

#Query 3.6
/*Πολλές συνταγές καλύπτουν περισσότερες από μια ετικέτες. Ανάμεσα σε ζεύγη πεδίων (π.χ. 
brunch και κρύο πιάτο) που είναι κοινά στις συνταγές, βρείτε τα 3 κορυφαία (top-3) ζεύγη που 
εμφανίστηκαν σε επεισόδια
Για το ερώτημα αυτό η απάντηση σας θα πρέπει να περιλαμβάνει 
εκτός από το ερώτημα (query), εναλλακτικό Query Plan (πχ με force index), τα αντίστοιχα traces 
και τα συμπεράσματα σας από την μελέτη αυτών.*/


SELECT
    T1.Name AS Tag1,
    T2.Name AS Tag2,
    COUNT(*) AS Occurrences
FROM
    Recipe_Tag RT1
JOIN
    Recipe_Tag RT2 ON RT1.ID_Recipe = RT2.ID_Recipe AND RT1.ID_Tag < RT2.ID_Tag
JOIN
    Tags T1 ON RT1.ID_Tag = T1.ID_Tag
JOIN
    Tags T2 ON RT2.ID_Tag = T2.ID_Tag
JOIN
    Episode_Recipe ER1 ON RT1.ID_Recipe = ER1.ID_Recipe
JOIN
    Episode_Recipe ER2 ON RT2.ID_Recipe = ER2.ID_Recipe
GROUP BY
    T1.Name, T2.Name
ORDER BY
    Occurrences DESC
LIMIT 3;


#δουλευει πρεπει να βαλω κ εναλλακτικο query plan





# Query 3.7
# Βρείτε όλους τους μάγειρες που συμμετείχαν τουλάχιστον 5 λιγότερες φορές από τον μάγειρα με τις περισσότερες συμμετοχές σε επεισόδια.

SELECT 
    Chef.ID_Chef,
    Chef.First_Name,
    Chef.Last_Name,
    COUNT(Episode_Chef.ID_Episode) AS Episode_Count
FROM 
    Chef
JOIN 
    Episode_Chef ON Chef.ID_Chef = Episode_Chef.ID_Chef
GROUP BY 
    Chef.ID_Chef
HAVING 
    Episode_Count <= (SELECT MAX(Episode_Count) - 5 FROM (
        SELECT 
            COUNT(ID_Episode) AS Episode_Count
        FROM 
            Episode_Chef
        GROUP BY 
            ID_Chef
    ) AS MaxCount)
ORDER BY 
    Episode_Count DESC;








#δουλευει


# Query 3.9
# Λίστα με μέσο όρο αριθμού γραμμάριων υδατανθράκων στο διαγωνισμό ανά έτος;

SELECT 
    YEAR(E.Release_Date) AS Year,
    AVG(NV.Carbs_per_Portion) AS Average_Carbs
FROM 
    Episode E
JOIN 
    Episode_Recipe ER ON E.ID_Episode = ER.ID_Episode
JOIN 
    Recipe R ON ER.ID_Recipe = R.ID_Recipe
JOIN 
    Nutritional_Value NV ON R.ID_Recipe = NV.ID_Recipe
GROUP BY 
    YEAR(E.Release_Date)
ORDER BY 
    Year;










#ayto sigoura doulevei

# Query 3.10
# Ποιες Εθνικές κουζίνες έχουν τον ίδιο αριθμό συμμετοχών σε διαγωνισμούς, σε διάστημα δύο 
# συνεχόμενων ετών, με τουλάχιστον 3 συμμετοχές ετησίως

WITH CuisineParticipation AS (
    SELECT
        NC.Name AS Cuisine,
        YEAR(E.Release_Date) AS Year,
        COUNT(*) AS Participation_Count
    FROM
        National_Cusine NC
    JOIN
        Episode_National_Cusine ENC ON NC.ID_National_Cusine = ENC.ID_National_Cusine
    JOIN
        Episode E ON ENC.ID_Episode = E.ID_Episode
    GROUP BY
        NC.Name, YEAR(E.Release_Date)
    HAVING
        COUNT(*) >= 3
)

SELECT
    CP1.Cuisine,
    CP1.Year AS Year1,
    CP1.Participation_Count AS Participation1,
    CP2.Year AS Year2,
    CP2.Participation_Count AS Participation2
FROM
    CuisineParticipation CP1
JOIN
    CuisineParticipation CP2 ON CP1.Cuisine = CP2.Cuisine AND CP1.Year = CP2.Year - 1
WHERE
    CP1.Participation_Count = CP2.Participation_Count
ORDER BY
    CP1.Cuisine, CP1.Year;




#δουλευει







# Query 3.11
# Βρείτε τους top-5 κριτές που έχουν δώσει συνολικά την υψηλότερη βαθμολόγηση σε ένα
# μάγειρα. (όνομα κριτή, όνομα μάγειρα και συνολικό σκορ βαθμολόγησης)

SELECT 
    Judge.First_Name AS Judge_First_Name,
    Judge.Last_Name AS Judge_Last_Name,
    Chef.First_Name AS Chef_First_Name,
    Chef.Last_Name AS Chef_Last_Name,
    SUM(Rating.Rating) AS Total_Score
FROM 
    Rating
JOIN 
    Chef AS Judge ON Rating.ID_Judge = Judge.ID_Chef
JOIN 
    Chef ON Rating.ID_Chef = Chef.ID_Chef
GROUP BY 
    Rating.ID_Judge, Rating.ID_Chef
ORDER BY 
    Total_Score DESC
LIMIT 5;






#δεν δουλευει μενει κενο επειδη το rating einai keno



# Query 3.12
# Ποιο ήταν το πιο τεχνικά δύσκολο, από πλευράς συνταγών, επεισόδιο του διαγωνισμού ανά έτος;

WITH RankedEpisodes AS (
    SELECT
        YEAR(E.Release_Date) AS Year,
        E.ID_Episode,
        AVG(R.Difficulty) AS Average_Difficulty,
        RANK() OVER (PARTITION BY YEAR(E.Release_Date) ORDER BY AVG(R.Difficulty) DESC) AS Difficulty_Rank
    FROM 
        Episode E
    JOIN 
        Episode_Recipe ER ON E.ID_Episode = ER.ID_Episode
    JOIN 
        Recipe R ON ER.ID_Recipe = R.ID_Recipe
    GROUP BY 
        E.ID_Episode, YEAR(E.Release_Date)
)
SELECT
    Year,
    ID_Episode,
    Average_Difficulty
FROM
    RankedEpisodes
WHERE
    Difficulty_Rank = 1;






#δουλευει




# Query 3.13
# Ποιο επεισόδιο συγκέντρωσε τον χαμηλότερο βαθμό επαγγελματικής κατάρτισης (κριτές και μάγειρες);

SELECT 
    E.ID_Episode,
    E.Release_Date,
    SUM(Chef.Years_of_Experience) AS Total_Experience
FROM 
    Episode E
JOIN 
    Episode_Chef EC ON E.ID_Episode = EC.ID_Episode
JOIN 
    Chef ON EC.ID_Chef = Chef.ID_Chef
GROUP BY 
    E.ID_Episode
ORDER BY 
    Total_Experience ASC
LIMIT 1;

#δουλεύει










# Query 3.14
# Ποια θεματική ενότητα έχει εμφανιστεί τις περισσότερες φορές στο διαγωνισμό; 

SELECT 
    TU.Name AS Thematic_Unit_Name,
    COUNT(*) AS Occurrence_Count
FROM 
    Thematic_Unit TU
JOIN 
    Recipe_Thematic_Unit RTU ON TU.ID_Thematic_Unit = RTU.ID_Thematic_Unit
JOIN 
    Recipe R ON RTU.ID_Recipe = R.ID_Recipe
GROUP BY 
    TU.ID_Thematic_Unit
ORDER BY 
    Occurrence_Count DESC
LIMIT 1;




#οκ






# Query 3.15
# Ποιες ομάδες τροφίμων δεν έχουν εμφανιστεί ποτέ στον διαγωνισμό;


SELECT fc.Name AS Food_Category
FROM Food_Category fc
LEFT JOIN Ingredient i ON fc.Code = i.ID_Food_Category
GROUP BY fc.Name
HAVING COUNT(i.ID_Ingredient) = 0;

#οκ



