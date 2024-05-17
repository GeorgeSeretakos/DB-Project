SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
-- In every procedure, we must insert the user_id in the last place
-- so as to check if the cuurent user is the admin or not


-- GET PROCEDURES
DELIMITER $$

DROP PROCEDURE IF EXISTS GetAllChefs$$
CREATE PROCEDURE GetAllChefs(IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
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
		GROUP BY c.ID_Chef
		ORDER BY c.ID_Chef;
	ELSE
        SELECT 'Access Denied. You do not have permission to delete steps from this recipe.';
	END IF;
END$$


DROP PROCEDURE IF EXISTS GetNationalCuisines$$
CREATE PROCEDURE GetNationalCuisines(IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        SELECT * FROM National_Cuisine;
    ELSE
        SELECT 'Access Denied. You do not have permission to access this data.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS GetMeals$$
CREATE PROCEDURE GetMeals(IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        SELECT * FROM Meal;
    ELSE
        SELECT 'Access Denied. You do not have permission to access this data.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS GetTags$$
CREATE PROCEDURE GetTags(IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        SELECT * FROM Tags;
    ELSE
        SELECT 'Access Denied. You do not have permission to access this data.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS GetEquipment$$
CREATE PROCEDURE GetEquipment(IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        SELECT * FROM Equipment;
    ELSE
        SELECT 'Access Denied. You do not have permission to access this data.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS GetFoodCategories$$
CREATE PROCEDURE GetFoodCategories(IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        SELECT * FROM Food_Category;
    ELSE
        SELECT 'Access Denied. You do not have permission to access this data.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS GetThematicUnits$$
CREATE PROCEDURE GetThematicUnits(IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        SELECT * FROM Thematic_Unit;
    ELSE
        SELECT 'Access Denied. You do not have permission to access this data.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS GetIngredients$$
CREATE PROCEDURE GetIngredients(IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        SELECT 
            i.Name AS Ingredient,
            i.Quantity,
            i.Is_Primary,
            i.Photo,
            i.Photo_Description,
            r.Name AS Recipe,
            fc.Name AS Food_Category
        FROM Ingredient i
        INNER JOIN Recipe r ON i.ID_Recipe = r.ID_Recipe
        INNER JOIN Food_Category fc ON i.ID_Food_Category = fc.Code
        ORDER BY r.Name, i.Name;
    ELSE
        SELECT 'Access Denied. You do not have permission to access this data.' AS ErrorMessage;
    END IF;
END$$

DELIMITER ;


-- CALL GetAllChefs(1);
-- CALL GetMeals(1);
-- CALL GetThematicUnits(1);
-- CALL GetIngredients(1);




-- DELETE PROCEDURES
DELIMITER $$

DROP PROCEDURE IF EXISTS DeleteRecipe$$
CREATE PROCEDURE DeleteRecipe(IN RecipeID INT, IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
	SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

	IF v_Role = 'Admin' THEN
		DELETE FROM Recipe WHERE ID_Recipe = RecipeID;
	ELSE
		SELECT 'Access Denied. You do not have permission to perform this action.';
	END IF;
END$$


DROP PROCEDURE IF EXISTS DeleteChef$$
CREATE PROCEDURE DeleteChef(IN p_ID_Chef INT, IN p_ID_User INT)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        DELETE FROM Chef WHERE ID_Chef = p_ID_Chef;
    ELSE
        SELECT 'Access Denied. You do not have permission to perform this action.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS DeleteNationalCusine$$
CREATE PROCEDURE DeleteNationalCusine(IN p_ID INT, IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
	SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

	IF v_Role = 'Admin' THEN
		DELETE FROM National_Cusine WHERE ID_National_Cusine = p_ID;
	ELSE
		SELECT 'Access Denied. You do not have permission to perform this action.';
	END IF;
END$$


DROP PROCEDURE IF EXISTS DeleteMeal$$
CREATE PROCEDURE DeleteMeal(IN p_ID INT, IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
	SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

	IF v_Role = 'Admin' THEN
		DELETE FROM Meal WHERE ID_Meal = p_ID;
	ELSE
		SELECT 'Access Denied. You do not have permission to perform this action.';
	END IF;
END$$


DROP PROCEDURE IF EXISTS DeleteTags$$
CREATE PROCEDURE DeleteTags(IN p_ID INT, IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
	SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

	IF v_Role = 'Admin' THEN
		DELETE FROM Tags WHERE ID_Tag = p_ID;
	ELSE
		SELECT 'Access Denied. You do not have permission to perform this action.';
	END IF;
END$$


DROP PROCEDURE IF EXISTS DeleteEquipment$$
CREATE PROCEDURE DeleteEquipment(IN p_ID INT, IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
	SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

	IF v_Role = 'Admin' THEN
		DELETE FROM Equipment WHERE ID_Equipment = p_ID;
	ELSE
		SELECT 'Access Denied. You do not have permission to perform this action.';
	END IF;
END$$


DROP PROCEDURE IF EXISTS DeleteFoodCategory$$
CREATE PROCEDURE DeleteFoodCategory(IN p_Code INT, IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
	SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

	IF v_Role = 'Admin' THEN
		DELETE FROM Food_Category WHERE Code = p_Code;
	ELSE
		SELECT 'Access Denied. You do not have permission to perform this action.';
	END IF;
END$$


DROP PROCEDURE IF EXISTS DeleteThematicUnit$$
CREATE PROCEDURE DeleteThematicUnit(IN p_ID INT, IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
	SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

	IF v_Role = 'Admin' THEN
		DELETE FROM Thematic_Unit WHERE ID_Thematic_Unit = p_ID;
	ELSE
		SELECT 'Access Denied. You do not have permission to perform this action.';
	END IF;
END$$

DELIMITER ;


-- CALL DeleteRecipe(40, 1);
-- CALL DeleteChef(20, 1);
-- CALL DeleteMeal(2, 1);




-- INSERT PROCEDURES
DELIMITER $$

DROP PROCEDURE IF EXISTS AddNationalCusine$$
CREATE PROCEDURE AddNationalCusine(IN p_Name VARCHAR(255), IN p_Photo TEXT, IN p_Photo_Description VARCHAR(255), IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
	SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

	IF v_Role = 'Admin' THEN
		INSERT INTO National_Cusine (Name, Photo, Photo_Description)
		VALUES (p_Name, p_Photo, p_Photo_Description);
	ELSE
		SELECT 'Access Denied. You do not have permission to perform this action.';
	END IF;
END$$


DROP PROCEDURE IF EXISTS AddChef_User$$
CREATE PROCEDURE AddChef_User(
    IN p_First_Name VARCHAR(255),
    IN p_Last_Name VARCHAR(255),
    IN p_Phone_Number VARCHAR(15),
    IN p_Birthdate DATE,
    IN p_Age INT,
    IN p_Years_of_Experience INT,
    IN p_Specialization VARCHAR(20),
    IN p_Chef_Photo TEXT,
    IN p_Chef_Photo_Description VARCHAR(255),
    IN p_Username VARCHAR(255),
    IN p_Password VARCHAR(255),
    IN p_ID_User INT
)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        INSERT INTO Chef (First_Name, Last_Name, Phone_Number, Birthdate, 
            Age, Years_of_Experience, Specialization, Photo, Photo_Description)
        VALUES (p_First_Name, p_Last_Name, p_Phone_Number, p_Birthdate, p_Age, 
            p_Years_of_Experience, p_Specialization, p_Chef_Photo, p_Chef_Photo_Description);

        -- Get the last inserted chef's ID
        SET @last_chef_id = LAST_INSERT_ID();

        -- Insert new user data linked to the new chef
        INSERT INTO User (Username, Password, Role, ID_Chef)
        VALUES (p_Username, p_Password, 'Chef', @last_chef_id);
    ELSE
        SELECT 'Access Denied. Only admins can add new chefs and users.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS AddMeal$$
CREATE PROCEDURE AddMeal(IN p_Name VARCHAR(255), IN p_Photo TEXT, IN p_Photo_Description VARCHAR(255), IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
	SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

	IF v_Role = 'Admin' THEN
		INSERT INTO Meal (Name, Photo, Photo_Description)
		VALUES (p_Name, p_Photo, p_Photo_Description);
	ELSE
		SELECT 'Access Denied. You do not have permission to perform this action.';
	END IF;
END$$


DROP PROCEDURE IF EXISTS AddTag$$
CREATE PROCEDURE AddTag(IN p_Name VARCHAR(255), IN p_Photo TEXT, IN p_Photo_Description VARCHAR(255), IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
	SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

	IF v_Role = 'Admin' THEN
		INSERT INTO Tags (Name, Photo, Photo_Description)
		VALUES (p_Name, p_Photo, p_Photo_Description);
	ELSE
		SELECT 'Access Denied. You do not have permission to perform this action.';
	END IF;
END$$


DROP PROCEDURE IF EXISTS AddEquipment$$
CREATE PROCEDURE AddEquipment(IN p_Name VARCHAR(255), IN p_Instructions TEXT, IN p_Photo TEXT, IN p_Photo_Description VARCHAR(255), IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
	SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

	IF v_Role = 'Admin' THEN
		INSERT INTO Equipment (Name, Instructions, Photo, Photo_Description)
		VALUES (p_Name, p_Instructions, p_Photo, p_Photo_Description);
	ELSE
		SELECT 'Access Denied. You do not have permission to perform this action.';
	END IF;
END$$


DROP PROCEDURE IF EXISTS AddFoodCategory$$
CREATE PROCEDURE AddFoodCategory(IN p_Name VARCHAR(255), IN p_Description VARCHAR(255), IN p_Photo TEXT, IN p_Photo_Description VARCHAR(255), IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
	SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

	IF v_Role = 'Admin' THEN
		INSERT INTO Food_Category (Name, Description, Photo, Photo_Description)
		VALUES (p_Name, p_Description, p_Photo, p_Photo_Description);
	ELSE
		SELECT 'Access Denied. You do not have permission to perform this action.';
	END IF;
END$$


DROP PROCEDURE IF EXISTS AddThematicUnit$$
CREATE PROCEDURE AddThematicUnit(IN p_Name VARCHAR(255), IN p_Description TEXT, IN p_Photo TEXT, IN p_Photo_Description VARCHAR(255), IN p_ID_User INT)
BEGIN
	DECLARE v_Role VARCHAR(255);
	SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

	IF v_Role = 'Admin' THEN
		INSERT INTO Thematic_Unit (Name, Description, Photo, Photo_Description)
		VALUES (p_Name, p_Description, p_Photo, p_Photo_Description);
	ELSE
		SELECT 'Access Denied. You do not have permission to perform this action.';
	END IF;
END$$

DELIMITER ;

-- CALL AddChef_User('John', 'Doe', '123456789', '1990-01-01', 31, 10, 'Head chef', 'path_to_photo.jpg', 'A description of the chef', 'john_doe', 'password123', 1);
-- CALL AddNationalCusine('Italian Cuisine', 'path/to/photo.jpg', 'A photo of Italian food', 1);
-- CALL AddMeal('Spaghetti Carbonara', 'path/to/spaghetti.jpg', 'Delicious Italian pasta', 1);
-- CALL AddEquipment('Pasta Slicer', 'Used for making fresh pasta', 'path/to/pasta_maker.jpg', 'Pasta maker with adjustable settings', 1);




-- UPDATE PROCEDURES
DELIMITER $$

DROP PROCEDURE IF EXISTS UpdateNationalCusine$$
CREATE PROCEDURE UpdateNationalCusine(
    IN p_ID INT,
    IN p_Name VARCHAR(255),
    IN p_Photo TEXT,
    IN p_Photo_Description VARCHAR(255),
    IN p_ID_User INT
)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        UPDATE National_Cusine
        SET Name = p_Name,
            Photo = p_Photo,
            Photo_Description = p_Photo_Description
        WHERE ID_National_Cusine = p_ID;
    ELSE
        SELECT 'Access Denied. You do not have permission to perform this action.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS UpdateMeal$$
CREATE PROCEDURE UpdateMeal(
    IN p_ID INT,
    IN p_Name VARCHAR(255),
    IN p_Photo TEXT,
    IN p_Photo_Description VARCHAR(255),
    IN p_ID_User INT
)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        UPDATE Meal
        SET Name = p_Name,
            Photo = p_Photo,
            Photo_Description = p_Photo_Description
        WHERE ID_Meal = p_ID;
    ELSE
        SELECT 'Access Denied. You do not have permission to perform this action.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS UpdateTags$$
CREATE PROCEDURE UpdateTags(
    IN p_ID INT,
    IN p_Name VARCHAR(255),
    IN p_Photo TEXT,
    IN p_Photo_Description VARCHAR(255),
    IN p_ID_User INT
)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        UPDATE Tags
        SET Name = p_Name,
            Photo = p_Photo,
            Photo_Description = p_Photo_Description
        WHERE ID_Tag = p_ID;
    ELSE
        SELECT 'Access Denied. You do not have permission to perform this action.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS UpdateEquipment$$
CREATE PROCEDURE UpdateEquipment(
    IN p_ID INT,
    IN p_Name VARCHAR(255),
    IN p_Instructions TEXT,
    IN p_Photo TEXT,
    IN p_Photo_Description VARCHAR(255),
    IN p_ID_User INT
)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        UPDATE Equipment
        SET Name = p_Name,
            Instructions = p_Instructions,
            Photo = p_Photo,
            Photo_Description = p_Photo_Description
        WHERE ID_Equipment = p_ID;
    ELSE
        SELECT 'Access Denied. You do not have permission to perform this action.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS UpdateFoodCategory$$
CREATE PROCEDURE UpdateFoodCategory(
    IN p_Code INT,
    IN p_Name VARCHAR(255),
    IN p_Description VARCHAR(255),
    IN p_Photo TEXT,
    IN p_Photo_Description VARCHAR(255),
    IN p_ID_User INT
)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        UPDATE Food_Category
        SET Name = p_Name,
            Description = p_Description,
            Photo = p_Photo,
            Photo_Description = p_Photo_Description
        WHERE Code = p_Code;
    ELSE
        SELECT 'Access Denied. You do not have permission to perform this action.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS UpdateThematicUnit$$
CREATE PROCEDURE UpdateThematicUnit(
    IN p_ID INT,
    IN p_Name VARCHAR(255),
    IN p_Description TEXT,
    IN p_Photo TEXT,
    IN p_Photo_Description VARCHAR(255),
    IN p_ID_User INT
)
BEGIN
    DECLARE v_Role VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_ID_User;

    IF v_Role = 'Admin' THEN
        UPDATE Thematic_Unit
        SET Name = p_Name,
            Description = p_Description,
            Photo = p_Photo,
            Photo_Description = p_Photo_Description
        WHERE ID_Thematic_Unit = p_ID;
    ELSE
        SELECT 'Access Denied. You do not have permission to perform this action.';
    END IF;
END$$


DROP PROCEDURE IF EXISTS UpdateUserStatus$$
CREATE PROCEDURE UpdateUserStatus(
    IN p_Target_ID_User INT, -- ID of the user whose role is to be updated
    IN p_Exec_ID_User INT -- ID of the user executing the procedure
)
BEGIN
    DECLARE v_Role VARCHAR(255);
    DECLARE v_TargetRole VARCHAR(255);
    SELECT Role INTO v_Role FROM User WHERE ID_User = p_Exec_ID_User;

    IF v_Role = 'Admin' THEN
        SELECT Role INTO v_TargetRole FROM User WHERE ID_User = p_Target_ID_User;

        -- Check the current role and switch it
        IF v_TargetRole = 'Chef' THEN
            -- Update the role to Admin if the current role is Chef
            UPDATE User SET Role = 'Admin' WHERE ID_User = p_Target_ID_User;
        ELSE
            -- Update the role to Chef if the current role is Admin
            UPDATE User SET Role = 'Chef' WHERE ID_User = p_Target_ID_User;
        END IF;
    ELSE
        SELECT 'Access Denied. Only admins can change user roles.' AS ErrorMessage;
    END IF;
END$$

DELIMITER ;


-- CALL UpdateNationalCusine(26, 'Updated Italian Cuisine', 'new/path/to/photo.jpg', 'Updated photo of Italian food', 1);
-- CALL UpdateMeal(6, 'Updated Spaghetti Bolognese', 'new/path/to/spaghetti.jpg', 'Updated delicious Italian pasta', 1);
-- CALL UpdateThematicUnit(2, 'Italian Cooking Techniques', 'Advanced techniques for Italian cooking', 'new/path/to/photo.jpg', 'Photo of cooking class', 1);
-- CALL UpdateUserStatus(2, 1);