CREATE INDEX idx_name ON National_Cusine (Name);
CREATE INDEX idx_release_date ON Episode (Release_Date);
CREATE INDEX idx_ID_Chef ON Episode_chef(ID_Chef);
CREATE INDEX idx_Age ON Chef(Age);
CREATE INDEX idx_ID_Chef ON Recipe_Chef(ID_Chef);
CREATE INDEX idx_Name ON Tags(Name);
CREATE INDEX idx_ID_Recipe ON Nutritional_Value(ID_Recipe);
CREATE INDEX idx_ID_National_Cusine ON Episode_National_Cusine(ID_National_Cusine);
CREATE INDEX idx_ID_Judge ON Rating(ID_Judge);
CREATE INDEX idx_ID_Chef ON Rating(ID_Chef);
CREATE INDEX idx_Years_of_Experience ON Chef(Years_of_Experience);
CREATE INDEX idx_ID_Thematic_Unit ON Recipe_Thematic_Unit(ID_Thematic_Unit);
CREATE INDEX idx_ID_Food_Category ON Ingredient(ID_Food_Category);

 