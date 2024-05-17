SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
-- In every procedure, we must insert the user_id in the last place
-- so as to check if the cuurent user has access and if so to what info


-- GET PROCEDURES
DELIMITER $$

DROP PROCEDURE IF EXISTS GetAllRecipies$$
CREATE PROCEDURE GetAllRecipies(IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        -- Admin users see all recipes
        SELECT
            r.ID_Recipe AS ID, r.Name, r.Description, r.Difficulty, nc.Name AS Cusine, r.Cooking_or_Pastry, r.Servings,
            r.Execution_Time, r.Preparation_Time, r.Cooking_Time,
            r.Tip1, r.Tip2, r.Tip3,
            n.Carbs_per_Portion, n.Protein_per_Portion, n.Fat_per_Portion, n.Cals_per_Portion,
            GROUP_CONCAT(CONCAT(s.Step_Number, '. ', s.Description) ORDER BY s.Step_Number SEPARATOR ', ') AS Steps,
            r.Photo, r.Photo_Description
        FROM Recipe r
        JOIN National_Cusine nc ON r.National_Cusine_ID = nc.ID_National_Cusine
        JOIN Nutritional_Value n ON r.ID_Recipe = n.ID_Recipe
        LEFT JOIN Steps s ON r.ID_Recipe = s.ID_Recipe
        GROUP BY r.ID_Recipe
        ORDER BY r.ID_Recipe;
    ELSE
        -- Non-admin users see only recipes they have access to
        SELECT
            r.ID_Recipe AS ID, r.Name, r.Description, r.Difficulty, nc.Name AS Cuisine, r.Cooking_or_Pastry, r.Servings,
            r.Execution_Time, r.Preparation_Time, r.Cooking_Time,
            r.Tip1, r.Tip2, r.Tip3,
            n.Carbs_per_Portion, n.Protein_per_Portion, n.Fat_per_Portion, n.Cals_per_Portion,
            GROUP_CONCAT(CONCAT(s.Step_Number, '. ', s.Description) ORDER BY s.Step_Number SEPARATOR ', ') AS Steps,
            r.Photo, r.Photo_Description
        FROM Recipe r
        JOIN National_Cusine nc ON r.National_Cusine_ID = nc.ID_National_Cusine
        JOIN Nutritional_Value n ON r.ID_Recipe = n.ID_Recipe
        LEFT JOIN Steps s ON r.ID_Recipe = s.ID_Recipe
        JOIN Recipe_Chef rc ON r.ID_Recipe = rc.ID_Recipe
        WHERE rc.ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_ID_User)
        GROUP BY r.ID_Recipe
        ORDER BY r.ID_Recipe;
    END IF;
END$$


DROP PROCEDURE IF EXISTS GetRecipeDetails$$
CREATE PROCEDURE GetRecipeDetails(IN p_ID_Recipe INT, IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_ID_Recipe AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_ID_User)) THEN
        -- Details, Steps, Nutritional Value
		SELECT
			r.ID_Recipe AS ID, r.Name, r.Description, r.Difficulty, nc.Name AS Cuisine, r.Cooking_or_Pastry, r.Servings, 
			r.Execution_Time, r.Preparation_Time, r.Cooking_Time,
			r.Tip1, r.Tip2, r.Tip3, 
			n.Carbs_per_Portion, n.Protein_per_Portion, n.Fat_per_Portion, n.Cals_per_Portion,
			GROUP_CONCAT(CONCAT(s.Step_Number, '. ', s.Description) ORDER BY s.Step_Number SEPARATOR ', ') AS Steps,
			r.Photo, r.Photo_Description
		FROM Recipe r
		JOIN National_Cusine nc ON r.National_Cusine_ID = nc.ID_National_Cusine
		JOIN Nutritional_Value n ON r.ID_Recipe = n.ID_Recipe
		LEFT JOIN Steps s ON r.ID_Recipe = s.ID_Recipe
		WHERE r.ID_Recipe = p_ID_Recipe;
		
		-- Ingredients
		SELECT
			i.ID_Ingredient AS ID, i.Name AS Ingredient, i.Quantity, i.Is_Primary,
			fc.Name AS Food_Category, i.Photo, i.Photo_Description
		FROM Ingredient i
		JOIN Food_Category fc ON i.ID_Food_Category = fc.Code
		WHERE i.ID_Recipe = p_ID_Recipe;
		
		-- Meals
		SELECT
			m.ID_Meal AS ID, m.Name AS Meal, m.Photo, m.Photo_Description
		FROM Meal m
		JOIN Recipe_Meal rm ON m.ID_Meal = rm.ID_Meal
		WHERE rm.ID_Recipe = p_ID_Recipe;
		
		-- Tags
		SELECT
			t.ID_Tag AS ID, t.Name AS Tag, t.Photo, t.Photo_Description
		FROM Tags t
		JOIN Recipe_Tag rt ON t.ID_Tag = rt.ID_Tag
		WHERE rt.ID_Recipe = p_ID_Recipe;
		
		-- Equipment
		SELECT
			e.ID_Equipment AS ID, e.Name AS Equipment, e.Instructions, e.Photo, e.Photo_Description
		FROM Equipment e
		JOIN Recipe_Equipment re ON e.ID_Equipment = re.ID_Equipment
		WHERE re.ID_Recipe = p_ID_Recipe;
		
		-- Thematic Units
		SELECT
			tu.ID_Thematic_Unit AS ID, tu.Name AS Thematic_Unit, tu.Description, tu.Photo, tu.Photo_Description
		FROM Thematic_Unit tu
		JOIN Recipe_Thematic_Unit rtu ON tu.ID_Thematic_Unit = rtu.ID_Thematic_Unit
		WHERE rtu.ID_Recipe = p_ID_Recipe;
    ELSE
        SELECT 'Access Denied. You do not have permission to delete this thematic unit from the recipe.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS GetChefDetails$$
CREATE PROCEDURE GetChefDetails(IN p_ID_Chef INT, IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
    DECLARE v_ID_Chef INT;
    
    -- Retrieve the role and chef id of the user
    SELECT Role, ID_Chef INTO v_Role, v_ID_Chef FROM User WHERE ID_User = p_ID_User;

    -- Check if user is authorized
    IF v_Role = 'Admin' OR v_ID_Chef = p_ID_Chef THEN
		SELECT
			c.ID_Chef,
			c.First_Name,
			c.Last_Name,
			u.Username,
			u.Password,
			c.Phone_Number,
			c.Birthdate,
			c.Age,
			c.Years_of_Experience,
			c.Specialization,
			GROUP_CONCAT(nc.Name ORDER BY nc.Name SEPARATOR ', ') AS National_Cuisines,
			c.Photo,
			c.Photo_Description
		FROM Chef c
		JOIN User u ON c.ID_Chef = u.ID_Chef
		JOIN National_Cusine_Chef AS ncc ON c.ID_Chef = ncc.ID_Chef
		JOIN National_Cusine nc ON ncc.ID_National_Cusine = nc.ID_National_Cusine
		WHERE c.ID_Chef = p_ID_Chef;
	ELSE
        SELECT 'Access Denied. You do not have permission to update this recipe details.';
	END IF;
END$$

DELIMITER ;


-- CALL GetAllRecipies(2);
-- CALL GetRecipeDetails(1, 2);
-- CALL GetChefDetails(30, 30);




-- DELETE PROCEDURES
DELIMITER $$

DROP PROCEDURE IF EXISTS DeleteThematicUnitFromRecipe$$
CREATE PROCEDURE DeleteThematicUnitFromRecipe(IN p_RecipeID INT, IN p_ThematicUnitID INT, IN p_UserID INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_UserID;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_RecipeID AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_UserID)) THEN
        DELETE FROM Recipe_Thematic_Unit
        WHERE ID_Thematic_Unit = p_ThematicUnitID AND ID_Recipe = p_RecipeID;
    ELSE
        SELECT 'Access Denied. You do not have permission to delete this thematic unit from the recipe.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS DeleteIngredientFromRecipe$$
CREATE PROCEDURE DeleteIngredientFromRecipe(IN p_RecipeID INT, IN p_IngredientID INT, IN p_UserID INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_UserID;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_RecipeID AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_UserID)) THEN
        DELETE FROM Ingredient
        WHERE ID_Ingredient = p_IngredientID AND ID_Recipe = p_RecipeID;
    ELSE
        SELECT 'Access Denied. You do not have permission to delete this ingredient from the recipe.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS DeleteTagFromRecipe$$
CREATE PROCEDURE DeleteTagFromRecipe(IN p_RecipeID INT, IN p_TagID INT, IN p_UserID INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_UserID;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_RecipeID AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_UserID)) THEN
        DELETE FROM Recipe_Tag
        WHERE ID_Tag = p_TagID AND ID_Recipe = p_RecipeID;
    ELSE
        SELECT 'Access Denied. You do not have permission to delete this tag from the recipe.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS DeleteMealFromRecipe$$
CREATE PROCEDURE DeleteMealFromRecipe(IN p_RecipeID INT, IN p_MealID INT, IN p_UserID INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_UserID;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_RecipeID AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_UserID)) THEN
        DELETE FROM Recipe_Meal
        WHERE ID_Meal = p_MealID AND ID_Recipe = p_RecipeID;
    ELSE
        SELECT 'Access Denied. You do not have permission to delete this meal from the recipe.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS DeleteEquipmentFromRecipe$$
CREATE PROCEDURE DeleteEquipmentFromRecipe(IN p_RecipeID INT, IN p_EquipmentID INT, IN p_UserID INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_UserID;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_RecipeID AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_UserID)) THEN
        DELETE FROM Recipe_Equipment
        WHERE ID_Equipment = p_EquipmentID AND ID_Recipe = p_RecipeID;
    ELSE
        SELECT 'Access Denied. You do not have permission to delete this equipment from the recipe.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS DeleteStepsFromRecipe$$
CREATE PROCEDURE DeleteStepsFromRecipe(IN p_RecipeID INT, IN p_UserID INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_UserID;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_RecipeID AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_UserID)) THEN
        DELETE FROM Steps
        WHERE ID_Recipe = p_RecipeID;
    ELSE
        SELECT 'Access Denied. You do not have permission to delete steps from this recipe.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS DeleteNationalCusineFromChef$$
CREATE PROCEDURE DeleteNationalCusineFromChef(IN p_ID_National_Cusine INT, IN p_ID_Chef INT, IN p_UserID INT)
BEGIN    
    DECLARE v_Role VARCHAR(255);
    DECLARE v_Chef_ID INT;
    SELECT Role, ID_Chef INTO v_Role, v_Chef_ID FROM User WHERE ID_User = p_UserID;
    
    IF v_Role = 'Admin' OR v_Chef_ID = p_ID_Chef THEN
        DELETE FROM National_Cusine_Chef
		WHERE ID_Chef = p_ID_Chef AND ID_National_Cusine = p_ID_National_Cusine;
    ELSE
        SELECT 'Access Denied. You do not have permission to add this thematic unit to the recipe.';
    END IF;
END$$

DELIMITER ;


-- CALL GetRecipeDetails(1, 2);
-- CALL DeleteIngredientFromRecipe(1, 5, 2);
-- CALL DeleteMealFromRecipe(1, 3, 2);
-- CALL DeleteTagFromRecipe(1, 10, 2);
-- CALL DeleteEquipmentFromRecipe(1, 1, 2);
-- CALL DeleteThematicUnitFromRecipe(1, 7, 2);
-- CALL DeleteStepsFromRecipe(1, 2);
-- CALL GetRecipeDetails(1, 2);
-- CALL GetChefDetails(5, 5);
-- CALL DeleteNationalCusineFromChef(13, 5, 5);
-- CALL GetChefDetails(5, 5);




-- INSERT PROCEDURES
DELIMITER $$

DROP PROCEDURE IF EXISTS AddNationalCusineToChef$$
CREATE PROCEDURE AddNationalCusineToChef(IN p_ID_National_Cusine INT, IN p_ID_Chef INT, IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
    DECLARE v_Chef_ID INT;
    SELECT Role, ID_Chef INTO v_Role, v_Chef_ID FROM User WHERE ID_User = p_ID_User;
    
    IF v_Role = 'Admin' OR v_Chef_ID = p_ID_Chef THEN
        INSERT INTO National_Cusine_Chef (ID_National_Cusine, ID_Chef)
		VALUES (p_ID_National_Cusine, p_ID_Chef);
    ELSE
        SELECT 'Access Denied. You do not have permission to add this thematic unit to the recipe.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS AddRecipe$$
CREATE PROCEDURE AddRecipe(
    IN p_Cooking_or_Pastry VARCHAR(7), 
    IN p_Difficulty INT, 
    IN p_Name VARCHAR(255),
    IN p_Description TEXT, 
    IN p_Tip1 TEXT, 
    IN p_Tip2 TEXT, 
    IN p_Tip3 TEXT,
    IN p_Preparation_Time INT, 
    IN p_Cooking_Time INT, 
    IN p_Servings INT,
    IN p_Photo TEXT, 
    IN p_Photo_Description VARCHAR(255),
    IN p_National_Cusine_ID INT,
    IN p_Carbs DECIMAL(5,2),
    IN p_Protein DECIMAL(5,2),
    IN p_Fat DECIMAL(5,2),
    IN p_ID_User INT
)
BEGIN
    INSERT INTO Recipe (Cooking_or_Pastry, Difficulty, Name, Description, Tip1, Tip2, Tip3, Execution_Time, Preparation_Time, Cooking_Time, Servings, Photo, Photo_Description, National_Cusine_ID)
    VALUES (p_Cooking_or_Pastry, p_Difficulty, p_Name, p_Description, p_Tip1, p_Tip2, p_Tip3, p_Preparation_Time + p_Cooking_Time, p_Preparation_Time, p_Cooking_Time, p_Servings, p_Photo, p_Photo_Description, p_National_Cusine_ID);
    
	-- Get the last inserted recipe's ID
    SET @last_recipe_id = LAST_INSERT_ID();
    
    INSERT INTO Nutritional_Value (ID_Recipe, Carbs_per_Portion, Protein_per_Portion, Fat_per_Portion, Cals_per_Portion)
    VALUES (@last_recipe_id, p_Carbs, p_Protein, p_Fat, p_Carbs*4 + p_Protein*4 + p_Fat*9);
    
    INSERT INTO Recipe_Chef
    VALUES ((SELECT ID_Chef FROM User WHERE ID_User = p_ID_User), @last_recipe_id);
END$$


DROP PROCEDURE IF EXISTS AddStepToRecipe$$
CREATE PROCEDURE AddStepToRecipe(IN p_ID_Recipe INT, IN p_Step_Number INT, IN p_Description TEXT, IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_ID_Recipe AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_ID_User)) THEN
        INSERT INTO Steps (ID_Recipe, Step_Number, Description)
        VALUES (p_ID_Recipe, p_Step_Number, p_Description);
    ELSE
        SELECT 'Access Denied. You do not have permission to add this step.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS AddIngredientToRecipe$$
CREATE PROCEDURE AddIngredientToRecipe(
    IN p_Name VARCHAR(255),
    IN p_Quantity VARCHAR(255),
    IN p_Is_Primary BOOL,
    IN p_Photo TEXT,
    IN p_Photo_Description VARCHAR(255),
    IN p_ID_Food_Category INT,
    IN p_ID_Recipe INT,
    IN p_ID_User INT
)
BEGIN
    DECLARE v_Role VARCHAR(255);
    DECLARE v_ExistsPrimary BOOL;

    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    SELECT EXISTS(
        SELECT 1 FROM Ingredient
        WHERE ID_Recipe = p_ID_Recipe AND Is_Primary = TRUE
    ) INTO v_ExistsPrimary;

    IF v_Role = 'Admin' OR EXISTS (
        SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_ID_Recipe AND ID_Chef = (
            SELECT ID_Chef FROM User WHERE ID_User = p_ID_User
        )
    ) THEN
        IF p_Is_Primary = TRUE AND v_ExistsPrimary THEN
            -- If trying to set this ingredient as primary but another primary already exists, throw an error
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Another primary ingredient already exists in this recipe.';
        ELSE
            -- Proceed with the insertion if no primary conflict or not setting as primary
            INSERT INTO Ingredient (Name, Quantity, Is_Primary, Photo, Photo_Description, ID_Food_Category, ID_Recipe)
            VALUES (p_Name, p_Quantity, p_Is_Primary, p_Photo, p_Photo_Description, p_ID_Food_Category, p_ID_Recipe);
        END IF;
    ELSE
        SELECT 'Access Denied. You do not have permission to add this ingredient.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS AddMealToRecipe$$
CREATE PROCEDURE AddMealToRecipe(IN p_ID_Meal INT, IN p_ID_Recipe INT, IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_ID_Recipe AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_ID_User)) THEN
        INSERT INTO Recipe_Meal (ID_Meal, ID_Recipe)
        VALUES (p_ID_Meal, p_ID_Recipe);
    ELSE
        SELECT 'Access Denied. You do not have permission to add this meal to the recipe.';
    END IF;
END$$



DROP PROCEDURE IF EXISTS AddTagToRecipe$$
CREATE PROCEDURE AddTagToRecipe(IN p_ID_Tag INT, IN p_ID_Recipe INT, IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_ID_Recipe AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_ID_User)) THEN
        INSERT INTO Recipe_Tag (ID_Tag, ID_Recipe)
        VALUES (p_ID_Tag, p_ID_Recipe);
    ELSE
        SELECT 'Access Denied. You do not have permission to tag this recipe.';
    END IF;
END$$



DROP PROCEDURE IF EXISTS AddEquipmentToRecipe$$
CREATE PROCEDURE AddEquipmentToRecipe(IN p_ID_Equipment INT, IN p_ID_Recipe INT, IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_ID_Recipe AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_ID_User)) THEN
        INSERT INTO Recipe_Equipment (ID_Equipment, ID_Recipe)
        VALUES (p_ID_Equipment, p_ID_Recipe);
    ELSE
        SELECT 'Access Denied. You do not have permission to add equipment to this recipe.';
    END IF;
END$$



DROP PROCEDURE IF EXISTS AddThematicUnitToRecipe$$
CREATE PROCEDURE AddThematicUnitToRecipe(IN p_ID_Thematic_Unit INT, IN p_ID_Recipe INT, IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_ID_Recipe AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_ID_User)) THEN
        INSERT INTO Recipe_Thematic_Unit (ID_Thematic_Unit, ID_Recipe)
        VALUES (p_ID_Thematic_Unit, p_ID_Recipe);
    ELSE
        SELECT 'Access Denied. You do not have permission to add this thematic unit to the recipe.';
    END IF;
END$$


DELIMITER ;


-- CALL AddNationalCusineToChef(1, 51, 51);
-- CALL AddRecipe('Cooking', 5, 'Spaghetti Carbonara', 'Classic Italian pasta dish with eggs, cheese, bacon, and pepper.', 'Cook pasta al dente.', 'Use high-quality Parmesan cheese.', 'Don\'t overcook the eggs.', 15, 15, 4, 'spaghetti_carbonara.jpg', 'A delicious plate of spaghetti carbonara', 1, 50.0, 20.0, 15.0, 2);
-- CALL AddStepToRecipe(51, 1, 'Boil water in a large pot.', 2);
-- CALL AddIngredientToRecipe('Spaghetti', '400g', TRUE, 'spaghetti_photo.jpg', 'Photo of spaghetti', 1, 51, 2);
-- CALL AddMealToRecipe(1, 51, 2);
-- CALL AddTagToRecipe(1, 51, 2);
-- CALL AddEquipmentToRecipe(1, 51, 2);
-- CALL AddThematicUnitToRecipe(1, 51, 2);




-- UPDATE PROCEDURES
DELIMITER $$

DROP PROCEDURE IF EXISTS UpdateChefDetails$$
CREATE PROCEDURE UpdateChefDetails(
    IN p_ID_Chef INT,
    IN p_First_Name VARCHAR(255),
    IN p_Last_Name VARCHAR(255),
    IN p_Phone_Number VARCHAR(15),
    IN p_Birthdate DATE,
    IN p_Age INT,
    IN p_Years_of_Experience INT,
    IN p_Specialization VARCHAR(20),
    IN p_Photo TEXT,
    IN p_Photo_Description VARCHAR(255),
    IN p_Username VARCHAR(255),
    IN p_Password VARCHAR(255),
    IN p_ID_User INT
)
BEGIN
    DECLARE v_Role VARCHAR(255);
    DECLARE v_ID_Chef INT;
    
    -- Retrieve the role and chef id of the user
    SELECT Role, ID_Chef INTO v_Role, v_ID_Chef FROM User WHERE ID_User = p_ID_User;

    -- Check if user is authorized
    IF v_Role = 'Admin' OR v_ID_Chef = p_ID_Chef THEN
        -- Update Chef details
        UPDATE Chef
        SET First_Name = p_First_Name,
            Last_Name = p_Last_Name,
            Phone_Number = p_Phone_Number,
            Birthdate = p_Birthdate,
            Age = p_Age,
            Years_of_Experience = p_Years_of_Experience,
            Specialization = p_Specialization,
            Photo = p_Photo,
            Photo_Description = p_Photo_Description
        WHERE ID_Chef = p_ID_Chef;

        -- Update User credentials
        UPDATE User
        SET Username = p_Username,
            Password = p_Password
        WHERE ID_User = p_ID_User;
    ELSE
        SELECT 'Access Denied. You do not have permission to update this recipe details.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS UpdateRecipeDetails$$
CREATE PROCEDURE UpdateRecipeDetails(
    IN p_ID_Recipe INT,
    IN p_Cooking_or_Pastry VARCHAR(7),
    IN p_Difficulty INT,
    IN p_Name VARCHAR(255),
    IN p_Description TEXT,
    IN p_Tip1 TEXT,
    IN p_Tip2 TEXT,
    IN p_Tip3 TEXT,
    IN p_Preparation_Time INT,
    IN p_Cooking_Time INT,
    IN p_Servings INT,
    IN p_Photo TEXT,
    IN p_Photo_Description VARCHAR(255),
    IN p_National_Cusine_ID INT,
    IN p_Carbs_per_Portion DECIMAL(5,2),
    IN p_Protein_per_Portion DECIMAL(5,2),
    IN p_Fat_per_Portion DECIMAL(5,2),
    IN p_ID_User INT
)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_ID_Recipe AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_ID_User)) THEN
        -- Perform the update
        UPDATE Recipe
        SET Cooking_or_Pastry = p_Cooking_or_Pastry,
            Difficulty = p_Difficulty,
            Name = p_Name,
            Description = p_Description,
            Tip1 = p_Tip1,
            Tip2 = p_Tip2,
            Tip3 = p_Tip3,
            Execution_Time = p_Preparation_Time + p_Cooking_Time,
            Preparation_Time = p_Preparation_Time,
            Cooking_Time = p_Cooking_Time,
            Servings = p_Servings,
            Photo = p_Photo,
            Photo_Description = p_Photo_Description,
            National_Cusine_ID = p_National_Cusine_ID
        WHERE ID_Recipe = p_ID_Recipe;

        UPDATE Nutritional_Value
        SET Carbs_per_Portion = p_Carbs_per_Portion,
            Protein_per_Portion = p_Protein_per_Portion,
            Fat_per_Portion = p_Fat_per_Portion
        WHERE ID_Recipe = p_ID_Recipe;
    ELSE
        SELECT 'Access Denied. You do not have permission to update this recipe details.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS UpdateStep$$
CREATE PROCEDURE UpdateStep(
    IN p_ID_Recipe INT,
    IN p_Step_Number INT,
    IN p_Description TEXT,
    IN p_ID_User INT
)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_ID_Recipe AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_ID_User)) THEN
        -- Perform the update
        UPDATE Steps
        SET Description = p_Description
        WHERE ID_Recipe = p_ID_Recipe AND Step_Number = p_Step_Number;
    ELSE
        SELECT 'Access Denied. You do not have permission to update this step.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS UpdateIngredient$$
CREATE PROCEDURE UpdateIngredient(
    IN p_ID_Ingredient INT,
    IN p_Name VARCHAR(255),
    IN p_Quantity VARCHAR(255),
    IN p_Is_Primary BOOL,
    IN p_Photo TEXT,
    IN p_Photo_Description VARCHAR(255),
    IN p_ID_Food_Category INT,
    IN p_ID_Recipe INT,
    IN p_ID_User INT
)
BEGIN
    DECLARE v_Role VARCHAR(255);
    DECLARE v_ExistsPrimary BOOL;

    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    SELECT EXISTS(
        SELECT 1 FROM Ingredient
        WHERE ID_Recipe = p_ID_Recipe AND Is_Primary = TRUE AND ID_Ingredient != p_ID_Ingredient
    ) INTO v_ExistsPrimary;

    IF v_Role = 'Admin' OR EXISTS (SELECT 1 FROM Recipe_Chef WHERE ID_Recipe = p_ID_Recipe AND ID_Chef = (SELECT ID_Chef FROM User WHERE ID_User = p_ID_User)) THEN
        IF p_Is_Primary = TRUE AND v_ExistsPrimary THEN
            -- If trying to set this ingredient as primary but another primary already exists, throw an error
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: Another primary ingredient already exists in this recipe.';
        ELSE
            -- Proceed with the update if no primary conflict or not setting as primary
            UPDATE Ingredient
            SET Name = p_Name,
                Quantity = p_Quantity,
                Is_Primary = p_Is_Primary,
                Photo = p_Photo,
                Photo_Description = p_Photo_Description,
                ID_Food_Category = p_ID_Food_Category
            WHERE ID_Ingredient = p_ID_Ingredient AND ID_Recipe = p_ID_Recipe;
        END IF;
    ELSE
        SELECT 'Access Denied. You do not have permission to update this ingredient.';
    END IF;
END$$

DELIMITER ;


-- CALL UpdateChefDetails(2, 'Jane', 'Smith', '987654321', '1985-05-20', 36, 15, 'Head Chef', 'new_photo.jpg', 'Updated description', 'jane_smith', 'new_password', 2);
-- CALL UpdateRecipeDetails(51, 'Cooking', 4, 'Spaghetti Carbonara Deluxe', 'A deluxe version of classic Italian pasta dish.', 'Cook pasta al dente and mix with egg and cheese mixture.', 'Use pancetta instead of bacon for extra flavor.', 'Garnish with freshly ground black pepper.', 20, 20, 4, 'deluxe_spaghetti_carbonara.jpg', 'An upgraded version of spaghetti carbonara', 1, 55.0, 25.0, 20.0, 2);
-- CALL UpdateStep(51, 1, 'Boil water in a large pot. Add spaghetti and cook until al dente.', 2);
-- CALL UpdateIngredient(249, 'Chopped Tomatoes', '200g', TRUE, 'path/to/tomato.jpg',  'Fresh red tomatoes', 1, 51, 2);