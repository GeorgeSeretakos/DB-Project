CREATE DATABASE IF NOT EXISTS MasterChef;
USE MasterChef;

CREATE TABLE National_Cusine (
    ID_National_Cusine INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL UNIQUE,
    Photo TEXT,
    Photo_Description VARCHAR(255)
);

CREATE TABLE Recipe (
    ID_Recipe INT AUTO_INCREMENT PRIMARY KEY,
    Cooking_or_Pastry VARCHAR(7) NOT NULL CHECK (Cooking_or_Pastry IN ('Cooking', 'Pastry')),
    Difficulty INT NOT NULL CHECK (Difficulty BETWEEN 1 AND 5),
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    Tip1 TEXT,
    Tip2 TEXT,
    Tip3 TEXT,
    Execution_Time INT NOT NULL CHECK (Execution_Time > 0),
    Preparation_Time INT NOT NULL CHECK (Preparation_Time > 0),
    Cooking_Time INT NOT NULL CHECK (Cooking_Time > 0),
    Servings INT CHECK (Servings > 0),
    Photo TEXT,
    Photo_Description VARCHAR(255),
    
    National_Cusine_ID INT NOT NULL,
    FOREIGN KEY (National_Cusine_ID) REFERENCES National_Cusine(ID_National_Cusine) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Meal (
    ID_Meal INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL UNIQUE,
    Photo TEXT,
    Photo_Description VARCHAR(255)
);

CREATE TABLE Recipe_Meal (
	ID_Meal INT NOT NULL,
    ID_Recipe INT NOT NULL,
    PRIMARY KEY (ID_Meal, ID_Recipe),
    FOREIGN KEY (ID_Meal) REFERENCES Meal(ID_Meal) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Recipe) REFERENCES Recipe(ID_Recipe) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Tags (
    ID_Tag INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL UNIQUE,
    Photo TEXT,
    Photo_Description VARCHAR(255)
);

CREATE TABLE Recipe_Tag (
	ID_Tag INT NOT NULL,
    ID_Recipe INT NOT NULL,
    PRIMARY KEY (ID_Tag, ID_Recipe),
    FOREIGN KEY (ID_Tag) REFERENCES Tags(ID_Tag) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Recipe) REFERENCES Recipe(ID_Recipe) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Equipment (
    ID_Equipment INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL UNIQUE,
    Instructions TEXT,
    Photo TEXT,
    Photo_Description VARCHAR(255)
);

CREATE TABLE Recipe_Equipment (
	ID_Equipment INT NOT NULL,
    ID_Recipe INT NOT NULL,
    PRIMARY KEY (ID_Equipment, ID_Recipe),
    FOREIGN KEY (ID_Equipment) REFERENCES Equipment(ID_Equipment) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Recipe) REFERENCES Recipe(ID_Recipe) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Steps (
    ID_Recipe INT NOT NULL,
    Step_Number INT  CHECK (Step_Number > 0),
    Description TEXT,
    PRIMARY KEY (Step_Number, ID_Recipe),
    FOREIGN KEY (ID_Recipe) REFERENCES Recipe(ID_Recipe) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Nutritional_Value (
    ID_Recipe INT PRIMARY KEY,
    Carbs_per_Portion DECIMAL(5,2),
    Protein_per_Portion DECIMAL(5,2),
    Fat_per_Portion DECIMAL(5,2),
    Cals_per_Portion DECIMAL(5,2),
    FOREIGN KEY (ID_Recipe) REFERENCES Recipe(ID_Recipe) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Food_Category (
    Code INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL UNIQUE,
    Description VARCHAR(255) NOT NULL UNIQUE,
    Photo TEXT,
    Photo_Description VARCHAR(255)
);

CREATE TABLE Ingredient (
    ID_Ingredient INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Quantity VARCHAR(255),
    Is_Primary BOOL DEFAULT FALSE,
    Photo TEXT,
    Photo_Description VARCHAR(255),
    ID_Food_Category INT NOT NULL,
    ID_Recipe INT NOT NULL,
    FOREIGN KEY (ID_Food_Category) REFERENCES Food_Category(Code) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Recipe) REFERENCES Recipe(ID_Recipe) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Thematic_Unit (
    ID_Thematic_Unit INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL UNIQUE,
    Description TEXT,
    Photo TEXT,
    Photo_Description VARCHAR(255)
);

CREATE TABLE Recipe_Thematic_Unit (
	ID_Thematic_Unit INT NOT NULL,
    ID_Recipe INT NOT NULL,
    PRIMARY KEY (ID_Thematic_Unit, ID_Recipe),
    FOREIGN KEY (ID_Thematic_Unit) REFERENCES Thematic_Unit(ID_Thematic_Unit) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Recipe) REFERENCES Recipe(ID_Recipe) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Chef (
    ID_Chef INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    Phone_Number VARCHAR(15) NOT NULL,
    Birthdate DATE NOT NULL,
    Age INT CHECK (Age > 0 AND Age <= 100),
    Years_of_Experience INT CHECK (Years_of_Experience >= 0),
    Specialization VARCHAR(20) CHECK (Specialization IN ('Third cook','Second cook', 'First cook','Assistant chef', 'Head chef')),
    Photo TEXT,
    Photo_Description VARCHAR(255)
);

CREATE TABLE Recipe_Chef (
	ID_Chef INT NOT NULL,
    ID_Recipe INT NOT NULL,
    PRIMARY KEY (ID_Chef, ID_Recipe),
    FOREIGN KEY (ID_Chef) REFERENCES Chef(ID_Chef) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Recipe) REFERENCES Recipe(ID_Recipe) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE National_Cusine_Chef (
	ID_National_Cusine INT NOT NULL,
    ID_Chef INT NOT NULL,
    PRIMARY KEY (ID_National_Cusine, ID_Chef),
    FOREIGN KEY (ID_National_Cusine) REFERENCES National_Cusine(ID_National_Cusine) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Chef) REFERENCES Chef(ID_Chef) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Episode (
    ID_Episode INT AUTO_INCREMENT PRIMARY KEY,
    Release_Date DATE NOT NULL,
    Year YEAR NOT NULL,
    Num_of_Episode INT NOT NULL
);

CREATE TABLE Episode_Recipe (
	ID_Episode INT NOT NULL,
    ID_Recipe INT NOT NULL,
    PRIMARY KEY (ID_Episode, ID_Recipe),
    FOREIGN KEY (ID_Episode) REFERENCES Episode(ID_Episode) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Recipe) REFERENCES Recipe(ID_Recipe) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Episode_Chef (
	Judge BOOL NOT NULL,
	ID_Episode INT NOT NULL,
    ID_Chef INT NOT NULL,
    PRIMARY KEY (ID_Episode, ID_Chef),
    FOREIGN KEY (ID_Episode) REFERENCES Episode(ID_Episode) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Chef) REFERENCES Chef(ID_Chef) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Episode_National_Cusine (
	ID_Episode INT NOT NULL,
    ID_National_Cusine INT NOT NULL,
    PRIMARY KEY (ID_Episode, ID_National_Cusine),
    FOREIGN KEY (ID_Episode) REFERENCES Episode(ID_Episode) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_National_Cusine) REFERENCES National_Cusine(ID_National_Cusine) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Rating (
    ID_Rating INT AUTO_INCREMENT PRIMARY KEY,
    ID_Chef INT NOT NULL,
    ID_Episode INT NOT NULL,
    ID_Judge INT NOT NULL,
    Rating INT NOT NULL CHECK (Rating BETWEEN 1 AND 5),
	FOREIGN KEY (ID_Episode) REFERENCES Episode(ID_Episode) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Chef) REFERENCES Chef(ID_Chef) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ID_Judge) REFERENCES Chef(ID_Chef) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE User (
    ID_User INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(255) NOT NULL UNIQUE,
    Password VARCHAR(255),
    Role VARCHAR(255) NOT NULL CHECK (Role IN ('Admin', 'Chef')),
	ID_Chef INT,
    FOREIGN KEY (ID_Chef) REFERENCES Chef(ID_Chef) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS National_Cusine;
DROP TABLE IF EXISTS Recipe;
DROP TABLE IF EXISTS Tags;
DROP TABLE IF EXISTS Recipe_Tag;
DROP TABLE IF EXISTS Meal;
DROP TABLE IF EXISTS Recipe_Meal;
DROP TABLE IF EXISTS Equipment;
DROP TABLE IF EXISTS Recipe_Equipment;
DROP TABLE IF EXISTS Steps;
DROP TABLE IF EXISTS Nutritional_Value;
DROP TABLE IF EXISTS Ingredient;
DROP TABLE IF EXISTS Food_Category;
DROP TABLE IF EXISTS Thematic_Unit;
DROP TABLE IF EXISTS Recipe_Thematic_Unit;
DROP TABLE IF EXISTS Chef;
DROP TABLE IF EXISTS Recipe_Chef;
DROP TABLE IF EXISTS National_Cusine_Chef;
DROP TABLE IF EXISTS Episode;
DROP TABLE IF EXISTS Episode_National_Cusine;
DROP TABLE IF EXISTS Episode_Chef;
DROP TABLE IF EXISTS Episode_Recipe;
DROP TABLE IF EXISTS Rating;
DROP TABLE IF EXISTS User;

DROP DATABASE masterchef;