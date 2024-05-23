# MasterChef Episode Management System

This Node.js application is designed to manage episodes for a fictional MasterChef-like culinary contest. It automates the creation of episodes, assignment of chefs and judges, management of national cuisines, and processes ratings given by judges.

## Features

- **Episode Creation**: Automate the scheduling of episodes with unique characteristics.
- **Chef and Judge Assignment**: Dynamically assign chefs and judges to episodes.
- **Cuisine Management**: Select different national cuisines for each episode.
- **Recipe Handling**: Link chefs to specific recipes from the assigned cuisines.
- **Ratings System**: Facilitate the rating process where judges evaluate the chefs' performances.

## Getting Started

### Prerequisites

- Node.js
- MySQL
- npm (Node Package Manager)

### Installing

Clone the repository to your local machine:

```bash
git clone https://github.com/GeorgeSeretakos/DB-Project.git
cd backend
```

Install the required npm packages
```bash
npm install
```

Set up your MySQL database by running the provided SQL schema files
```bash
myql -u yourUsername -p yourDatabaseName < shcema.sql
```

### Configuration

In some parts of the app.js file you will have to complete your own values as far as the database connection configurations are concerned

```bash
DB_HOST=localhost
DB_USER=root
DB_PASS=yourPassword
DB_NAME=MasterChef
```
Here are those parts of the code

### In the runContest function
```bash
async function runContest(year, releaseDate) {
    const db = await mysql.createConnection({
        host: 'localhost',
        user: "root",
        password: "1234", # Change to your own password
        database: "MasterChef"
    });
    
. . .
```

### In the insert1Episode function
```bash
async function insert1Episode() {
    const db = await mysql.createConnection({
        host: 'localhost',
        user: "root",
        password: "1234", # Change to your own password
        database: "MasterChef"
    });
    
. . .
```



### Usage

Run the application with Node.js

```bash
node app.js
```

### Available Functions

- insertMultipleEpisodes(): Bulk insert episodes across multiple years.
- insert1Episode(): Insert a single episode, performing all necessary checks to avoid conflicts.
- admin(): Backup the current data or Restore the database to its last backup state

To run the one of these functions you have to uncomment the respective function call at the end of the app.js file

```bash
// Call actions

// TODO: Uncomment for 60 episode insertion
// await insertMultipleEpisodes();

// TODO: Uncomment for 1 episode insertion
// await insert1Episode();

// TODO: Uncomment for admin backup or restore
// await admin();
```


### Insert 60 Episodes in the database

Uncomment the insertMultipleEpisodes() function

```bash
// Call actions

// TODO: Uncomment for 60 episode insertion
await insertMultipleEpisodes(); # Uncomment this line

// TODO: Uncomment for 1 episode insertion
// await insert1Episode();

// TODO: Uncomment for admin backup or restore
// await admin();
```

Choose the episodes' starting and ending year

```bash
async function insertMultipleEpisodes() {
    const startYear = 2000; # Change to your starting year
    const endYear = 2005; # Change to your ending year
    const episodesPerYear = 10; # Dont change
    
. . .
````

Then run the node application using: node app.js


### Insert 1 new episode in the database

Uncomment the insert1Episode() function

```bash
// Call actions

// TODO: Uncomment for 60 episode insertion
// await insertMultipleEpisodes();

// TODO: Uncomment for 1 episode insertion
await insert1Episode(); # Uncomment this line

// TODO: Uncomment for admin backup or restore
// await admin();
```

Then in the insert1Episode() function implementation give more information about the episode you want to insert. The episode always takes place at the first day of the month.
```bash
async function insert1Episode() {
    const db = await mysql.createConnection({
        host: 'localhost',
        user: "root",
        password: "1234",
        database: "MasterChef"
    });

    const year = 2006; # Change to the year of the episode
    const month = 10; # Change to the month of the episode 
    const releaseDate = `${year}-${month}-01`;
    
. . .
```

Then run the node application using: node app.js


### Admin backup or restore

Uncomment the admin() function

```bash
// Call actions

// TODO: Uncomment for 60 episode insertion
// await insertMultipleEpisodes();

// TODO: Uncomment for 1 episode insertion
// await insert1Episode();

// TODO: Uncomment for admin backup or restore
await admin(); # Uncomment this line
```

Then run the node application using: node app.js, and follow the instructions in the terminal. You will be authenticated as the administrator and then you will choose the functionality you want to perform. The backup file is stored in the current directory you are running the application form (backend folder).

## Contributing
Contributions are what make the open-source community such a fantastic place to learn, inspire, and create. Any contributions you make are greatly appreciated.

1. Fork the Project
2. Create your Feature Branch (git checkout -b feature/AmazingFeature)
3. Commit your Changes (git commit -m 'Add some AmazingFeature')
4. Push to the Branch (git push origin feature/AmazingFeature)
5. Open a Pull Request

## Contact

- Giorgos Seretakos - g.seretakos@gmail.com
- Stelios Katsis - stelioskatsis12@gmail.com
- Giannis Mertziotis - giannismertz@gmail.com

Project Link: https://github.com/GeorgeSeretakos/DB-Project.git
