# Recipies and Tags #

INSERT INTO Recipe_Tag (ID_Tag, ID_Recipe) VALUES
-- Italian Pizza is a Family Dinner, Gourmet Meal, and could be a Comfort Food
(4, 1), (10, 1), (6, 1),
-- Chinese Mooncake is a Gourmet Meal
(10, 2),
-- Indian Curry is a Family Dinner, Comfort Food, High Protein
(4, 3), (6, 3), (8, 3),
-- French Coq au Vin is a Gourmet Meal, Family Dinner
(10, 4), (4, 4),
-- Mexican Tacos can be a Quick Lunch, Late Night Snack
(2, 5), (5, 5),
-- Japanese Cheesecake is a Gourmet Meal, Healthy Choice
(10, 6), (3, 6),
-- Thai Green Curry is a Healthy Choice, High Protein
(3, 7), (8, 7),
-- Spanish Paella is a Family Dinner, Gourmet Meal
(4, 8), (10, 8),
-- Korean Bibimbap is a Quick Lunch, Healthy Choice
(2, 9), (3, 9),
-- Vietnamese Pho is a Healthy Choice, Comfort Food
(3, 10), (6, 10),
-- American Apple Pie is a Comfort Food, Family Dinner
(6, 11), (4, 11),
-- British Fish and Chips is a Quick Lunch, Late Night Snack
(2, 12), (5, 12),
-- German Sausage Platter is a Family Dinner, High Protein
(4, 13), (8, 13),
-- Turkish Kebab is a High Protein, Family Dinner
(8, 14), (4, 14),
-- Greek Gyro is a Quick Lunch, Comfort Food
(2, 15), (6, 15),
-- Portuguese Bacalhau is a Gourmet Meal, Healthy Choice
(10, 16), (3, 16),
-- Russian Borsch is a Comfort Food, Healthy Choice
(6, 17), (3, 17),
-- Brazilian Feijoada is a Family Dinner, High Protein
(4, 18), (8, 18),
-- Egyptian Koshari is a Quick Lunch, Healthy Choice
(2, 19), (3, 19),
-- South African Bobotie is a Family Dinner, Gourmet Meal
(4, 20), (10, 20),
-- Moroccan Tagine is a Family Dinner, Gourmet Meal, Healthy Choice
(4, 21), (10, 21), (3, 21),
-- Australian Meat Pie is a Quick Lunch, Comfort Food
(2, 22), (6, 22),
-- Canadian Poutine is a Late Night Snack, Comfort Food
(5, 23), (6, 23),
-- Argentinian Asado is a Family Dinner, High Protein
(4, 24), (8, 24),
-- Belgian Waffles is a Brunch, Quick Breakfast
(1, 25), (9, 25),
-- Italian Risotto is a Gourmet Meal, Family Dinner
(10, 26), (4, 26),
-- Chinese Dumplings is a Quick Lunch, Gourmet Meal
(2, 27), (10, 27),
-- Indian Samosa is a Quick Lunch, Family Dinner
(2, 28), (4, 28),
-- French Ratatouille is a Healthy Choice, Gourmet Meal
(3, 29), (10, 29),
-- Mexican Enchiladas is a Family Dinner, Comfort Food
(4, 30), (6, 30),
-- Japanese Mochi is a Gourmet Meal, Quick Breakfast
(10, 31), (9, 31),
-- Thai Tom Yum Goong is a Healthy Choice, Quick Lunch
(3, 32), (2, 32),
-- Spanish Churros is a Brunch, Comfort Food
(1, 33), (6, 33),
-- Korean Kimchi Stew is a Comfort Food, Healthy Choice
(6, 34), (3, 34),
-- Vietnamese Banh Mi is a Quick Lunch, Healthy Choice
(2, 35), (3, 35),
-- American Brownies is a Comfort Food, Quick Breakfast
(6, 36), (9, 36),
-- British Shepherd’s Pie is a Family Dinner, Comfort Food
(4, 37), (6, 37),
-- German Pretzel is a Brunch, Family Dinner
(1, 38), (4, 38),
-- Turkish Baklava is a Gourmet Meal, Quick Breakfast
(10, 39), (9, 39),
-- Greek Salad is a Healthy Choice, Quick Lunch
(3, 40), (2, 40),
-- Portuguese Caldo Verde is a Family Dinner, Healthy Choice
(4, 41), (3, 41),
-- Russian Pelmeni is a Family Dinner, Quick Lunch
(4, 42), (2, 42),
-- Brazilian Coxinha is a Late Night Snack, Quick Lunch
(5, 43), (2, 43),
-- Egyptian Ful Medames is a Healthy Choice, Family Dinner
(3, 44), (4, 44),
-- South African Chakalaka is a Healthy Choice, Family Dinner
(3, 45), (4, 45),
-- Moroccan Couscous is a Family Dinner, Gourmet Meal, Healthy Choice
(4, 46), (10, 46), (3, 46),
-- Australian Lamingtons is a Brunch, Gourmet Meal
(1, 47), (10, 47),
-- Canadian Tourtière is a Family Dinner, Comfort Food
(4, 48), (6, 48),
-- Argentinian Empanadas is a Quick Lunch, Family Dinner
(2, 49), (4, 49),
-- Belgian Speculoos is a Quick Breakfast, Gourmet Meal
(9, 50), (10, 50);


# Recipies and Meals #

INSERT INTO Recipe_Meal (ID_Meal, ID_Recipe) VALUES
-- Breakfast
(1, 25), (1, 9), (1, 31), (1, 36), (1, 39), 
(1, 50), (1, 15), (1, 38), (1, 22), (1, 41),
-- Lunch
(2, 5), (2, 28), (2, 35), (2, 49), (2, 12),
(2, 3), (2, 7), (2, 19), (2, 42), (2, 44),
(2, 10), (2, 23), (2, 32), (2, 37), (2, 45),
-- Dinner
(3, 1), (3, 4), (3, 8), (3, 14), (3, 20),
(3, 7), (3, 21), (3, 16), (3, 24), (3, 29),
(3, 6), (3, 18), (3, 13), (3, 27), (3, 40),
-- Snack
(4, 43), (4, 12), (4, 23), (4, 33), (4, 13),
(4, 5), (4, 17), (4, 34), (4, 40), (4, 45),
(4, 11), (4, 30), (4, 48), (4, 2), (4, 47),
-- Dessert
(5, 6), (5, 2), (5, 47), (5, 50), (5, 11),
(5, 27), (5, 26), (5, 31), (5, 39), (5, 46),
(5, 17), (5, 41), (5, 14), (5, 21), (5, 24);


# Recipies and Equipment #

INSERT INTO Recipe_Equipment (ID_Equipment, ID_Recipe) VALUES
-- Recipe 1: Italian Pizza
(1, 1),  -- Knife for chopping toppings
(2, 1),  -- Cutting Board
(21, 1), -- Oven for baking the pizza
-- Recipe 2: Chinese Mooncake
(1, 2),  -- Knife for cutting dough
(14, 2), -- Rolling Pin
(21, 2), -- Oven for baking
-- Recipe 3: Indian Curry
(1, 3),  -- Knife for chopping ingredients
(3, 3),  -- Saucepan for cooking curry
-- Recipe 4: French Coq au Vin
(1, 4),  -- Knife for preparing chicken
(3, 4),  -- Saucepan for braising
-- Recipe 5: Mexican Tacos
(1, 5),  -- Knife for chopping toppings
(22, 5), -- Toaster for warming tortillas
-- Recipe 6: Japanese Cheesecake
(6, 6),  -- Whisk for mixing batter
(19, 6), -- Blender for pureeing ingredients
(21, 6), -- Oven for baking
-- Recipe 7: Thai Green Curry
(1, 7),  -- Knife for chopping herbs
(3, 7),  -- Saucepan for cooking curry
-- Recipe 8: Spanish Paella
(1, 8),  -- Knife for chopping ingredients
(29, 8), -- Wok for traditional stovetop method
-- Recipe 9: Korean Bibimbap
(1, 9),  -- Knife for chopping vegetables
(5, 9),  -- Mixing Bowl for mixing ingredients
-- Recipe 10: Vietnamese Pho
(1, 10), -- Knife for slicing meat
(3, 10), -- Saucepan for simmering broth
-- Recipe 11: American Apple Pie
(1, 11), -- Knife for slicing apples
(14, 11),-- Rolling Pin for dough
(21, 11),-- Oven for baking
-- Recipe 12: British Fish and Chips
(1, 12), -- Knife for cutting fish
(4, 12), -- Frying Pan for frying
-- Recipe 13: German Sausage Platter
(1, 13), -- Knife for cutting sausages
(27, 13),-- Grill for cooking sausages
-- Recipe 14: Turkish Kebab
(1, 14), -- Knife for cutting meat
(27, 14),-- Grill for grilling kebabs
-- Recipe 15: Greek Gyro
(1, 15), -- Knife for slicing meat
(4, 15), -- Frying Pan for cooking meat
-- Recipe 16: Portuguese Bacalhau
(1, 16), -- Knife for slicing ingredients
(3, 16), -- Saucepan for cooking
-- Recipe 17: Russian Borsch
(1, 17), -- Knife for chopping vegetables
(3, 17), -- Saucepan for simmering soup
-- Recipe 18: Brazilian Feijoada
(1, 18), -- Knife for cutting meat
(27, 18),-- Slow Cooker for simmering stew
-- Recipe 19: Egyptian Koshari
(1, 19), -- Knife for chopping ingredients
(3, 19), -- Saucepan for cooking lentils and pasta
-- Recipe 20: South African Bobotie
(1, 20), -- Knife for chopping ingredients
(21, 20),-- Oven for baking
-- Recipe 21: Moroccan Tagine
(1, 21),  -- Knife for chopping vegetables
(28, 21), -- Tagine for traditional cooking
-- Recipe 22: Australian Meat Pie
(1, 22),  -- Knife for chopping fillings
(14, 22), -- Rolling Pin for pie crust
(21, 22), -- Oven for baking
-- Recipe 23: Canadian Poutine
(1, 23),  -- Knife for cutting potatoes
(4, 23),  -- Frying Pan for frying potatoes
-- Recipe 24: Argentinian Asado
(1, 24),  -- Knife for cutting meat
(27, 24), -- Grill for cooking meat
-- Recipe 25: Belgian Waffles
(6, 25),  -- Whisk for batter
(22, 25), -- Toaster (assuming a waffle iron in this context)
-- Recipe 26: Italian Risotto
(1, 26),  -- Knife for chopping ingredients
(3, 26),  -- Saucepan for cooking risotto
-- Recipe 27: Chinese Dumplings
(1, 27),  -- Knife for chopping fillings
(14, 27), -- Rolling Pin for dough
-- Recipe 28: Indian Samosa
(1, 28),  -- Knife for chopping fillings
(14, 28), -- Rolling Pin for dough
(4, 28),  -- Frying Pan for frying
-- Recipe 29: French Ratatouille
(1, 29),  -- Knife for chopping vegetables
(3, 29),  -- Saucepan for simmering
-- Recipe 30: Mexican Enchiladas
(1, 30),  -- Knife for preparing fillings
(21, 30), -- Oven for baking
-- Recipe 31: Japanese Mochi
(19, 31), -- Blender for rice paste
(5, 31),  -- Mixing Bowl for combining ingredients
-- Recipe 32: Thai Tom Yum Goong
(1, 32),  -- Knife for chopping herbs and vegetables
(3, 32),  -- Saucepan for simmering soup
-- Recipe 33: Spanish Churros
(1, 33),  -- Knife for cutting dough
(4, 33),  -- Frying Pan for frying
-- Recipe 34: Korean Kimchi Stew
(1, 34),  -- Knife for chopping ingredients
(3, 34),  -- Saucepan for cooking stew
-- Recipe 35: Vietnamese Banh Mi
(1, 35),  -- Knife for slicing vegetables and meats
(22, 35), -- Toaster for bread
-- Recipe 36: American Brownies
(6, 36),  -- Whisk for batter
(21, 36), -- Oven for baking
-- Recipe 37: British Shepherd’s Pie
(1, 37),  -- Knife for chopping ingredients
(21, 37), -- Oven for baking
-- Recipe 38: German Pretzel
(1, 38),  -- Knife for shaping dough (if required)
(21, 38), -- Oven for baking
-- Recipe 39: Turkish Baklava
(1, 39),  -- Knife for cutting pastry and nuts
(21, 39), -- Oven for baking
-- Recipe 40: Greek Salad
(1, 40),  -- Knife for chopping vegetables
(2, 40),  -- Cutting Board for preparation
-- Recipe 41: Portuguese Caldo Verde
(1, 41),  -- Knife for slicing kale and sausages
(3, 41),  -- Saucepan for cooking soup
-- Recipe 42: Russian Pelmeni
(1, 42),  -- Knife for preparing fillings
(14, 42), -- Rolling Pin for dough
-- Recipe 43: Brazilian Coxinha
(1, 43),  -- Knife for preparing chicken filling
(4, 43),  -- Frying Pan for frying
-- Recipe 44: Egyptian Ful Medames
(1, 44),  -- Knife for chopping ingredients
(3, 44),  -- Saucepan for simmering
-- Recipe 45: South African Chakalaka
(1, 45),  -- Knife for chopping vegetables
(3, 45),  -- Saucepan for simmering
-- Recipe 46: Moroccan Couscous
(1, 46),  -- Knife for chopping vegetables
(29, 46), -- Steamer Basket for couscous
-- Recipe 47: Australian Lamingtons
(1, 47),  -- Knife for cutting sponge cake
(21, 47), -- Oven for baking sponge cake
-- Recipe 48: Canadian Tourtière
(1, 48),  -- Knife for chopping fillings
(14, 48), -- Rolling Pin for dough
(21, 48), -- Oven for baking
-- Recipe 49: Argentinian Empanadas
(1, 49),  -- Knife for cutting fillings
(14, 49), -- Rolling Pin for dough
(4, 49),  -- Frying Pan for frying or Oven for baking
-- Recipe 50: Belgian Speculoos
(1, 50),  -- Knife for shaping cookies
(21, 50); -- Oven for baking cookies


# Recipies and Thematic Units #

INSERT INTO Recipe_Thematic_Unit (ID_Thematic_Unit, ID_Recipe) VALUES
-- Village Recipes: Traditional and rural-style recipes
(1, 1), (1, 4), (1, 7), (1, 10), (1, 13), (1, 16), (1, 19), (1, 22),
-- Risotto Recipes: Specifically for risotto variations
(2, 26), (2, 46),
-- Easter Sweets: Desserts suitable for Easter
(3, 2), (3, 6), (3, 11), (3, 38), (3, 47),
-- Mediterranean Cuisine: Recipes inspired by Mediterranean flavors
(4, 15), (4, 20), (4, 21), (4, 24), (4, 29), (4, 31), (4, 40), (4, 45),
-- Summer Barbecue: Perfect for grilling and outdoor cooking
(5, 14), (5, 18), (5, 24), (5, 27), (5, 33), (5, 34), (5, 43), (5, 44),
-- Vegetarian Delights: Plant-based and vegetarian recipes
(6, 9), (6, 32), (6, 35), (6, 39), (6, 40), (6, 45), (6, 48),
-- Homemade Pizza: Different homemade pizza recipes
(7, 1), (7, 26), (7, 30), (7, 49),
-- Asian Fusion: Combining Asian culinary styles with modern twists
(8, 3), (8, 8), (8, 17), (8, 23), (8, 28), (8, 34), (8, 37),
-- Comfort Food Classics: Nostalgic and satisfying meals
(9, 4), (9, 12), (9, 14), (9, 17), (9, 25), (9, 37), (9, 41), (9, 50),
-- Healthy Bowls: Focused on nutritious and balanced meals
(10, 5), (10, 9), (10, 10), (10, 32), (10, 36), (10, 42);

# Chef and Thematic Units #

INSERT INTO National_Cusine_Chef (ID_National_Cusine, ID_Chef) VALUES
(1, 1), (5, 1), 				-- Chef 1 is associated with Italian and Mexican cuisines
(2, 2), (6, 2), (10, 2), 		-- Chef 2 is associated with Chinese, Japanese, and Vietnamese cuisines
(3, 3), (7, 3), 				-- Chef 3 is associated with Indian and Thai cuisines
(4, 4), 						-- Chef 4 is associated with French cuisine
(5, 5), (9, 5), (13, 5), 		-- Chef 5 is associated with Mexican, Korean, and German cuisines
(6, 6), (10, 6), 				-- Chef 6 is associated with Japanese and Vietnamese cuisines
(7, 7), (11, 7), 				-- Chef 7 is associated with Thai and American cuisines
(8, 8), (12, 8), (16, 8), 		-- Chef 8 is associated with Spanish, British, and Portuguese cuisines
(9, 9),							-- Chef 9 is associated with Korean cuisine
(10, 10), (14, 10), (18, 10), 	-- Chef 10 is associated with Vietnamese, Turkish, and Brazilian cuisines
(11, 11), (15, 11), (19, 11), 	-- Chef 11 is associated with American, Greek, and Egyptian cuisines
(12, 12), (16, 12),           	-- Chef 12 is associated with British and Portuguese cuisines
(13, 13), (17, 13), (21, 13), 	-- Chef 13 is associated with German, Russian, and Moroccan cuisines
(14, 14), (18, 14),           	-- Chef 14 is associated with Turkish and Brazilian cuisines
(15, 15), (19, 15), (23, 15), 	-- Chef 15 is associated with Greek, Egyptian, and Canadian cuisines
(16, 16), (20, 16),           	-- Chef 16 is associated with Portuguese and South African cuisines
(17, 17), (21, 17), (25, 17), 	-- Chef 17 is associated with Russian, Moroccan, and Belgian cuisines
(18, 18), (22, 18),          	-- Chef 18 is associated with Brazilian and Australian cuisines
(19, 19), (23, 19), (24, 19), 	-- Chef 19 is associated with Egyptian, Canadian, and Argentinian cuisines
(20, 20), (24, 20),           	-- Chef 20 is associated with South African and Argentinian cuisines
(21, 21), (25, 21),           	-- Chef 21 is associated with Moroccan and Belgian cuisines
(22, 22), (23, 22), (24, 22), 	-- Chef 22 is associated with Australian, Canadian, and Argentinian cuisines
(23, 23), (24, 23), (25, 23), 	-- Chef 23 is associated with Canadian, Argentinian, and Belgian cuisines
(24, 24), (25, 24),           	-- Chef 24 is associated with Argentinian and Belgian cuisines
(25, 25),                    	-- Chef 25 is associated with Belgian cuisine
(1, 26), (2, 26), (3, 26), 		-- Chef 26 enjoys a variety of popular cuisines
(4, 27), (5, 27),         		-- Chef 27 specializes in French and Mexican cuisines
(6, 28), (7, 28), (8, 28), 		-- Chef 28 handles East Asian and Spanish cuisines
(9, 29), (10, 29),        		-- Chef 29 focuses on Korean and Vietnamese cuisines
(11, 30), (12, 30),       		-- Chef 30 is versed in American and British cuisines
(13, 31), (14, 31), (15, 31), 	-- Chef 31 enjoys German, Turkish, and Greek cuisines
(16, 32), (17, 32),       		-- Chef 32 specializes in Portuguese and Russian cuisines
(18, 33), (19, 33), (20, 33), 	-- Chef 33 handles Brazilian, Egyptian, and South African cuisines
(21, 34), (22, 34),       		-- Chef 34 works with Moroccan and Australian cuisines
(23, 35), (24, 35), (25, 35), 	-- Chef 35 specializes in Canadian, Argentinian, and Belgian cuisines
(1, 36), (5, 36),         		-- Chef 36 revisits Italian and Mexican cuisines
(2, 37), (6, 37),         		-- Chef 37 delves into Chinese and Japanese cuisines
(3, 38), (7, 38),         		-- Chef 38 takes on Indian and Thai cuisines
(4, 39), (8, 39),         		-- Chef 39 covers French and Spanish cuisines
(9, 40), (10, 40),        		-- Chef 40 explores Korean and Vietnamese cuisines
(11, 41), (15, 41),       		-- Chef 41 enjoys American and Greek cuisines
(12, 42), (16, 42),       		-- Chef 42 focuses on British and Portuguese cuisines
(13, 43), (17, 43),       		-- Chef 43 specializes in German and Russian cuisines
(14, 44), (18, 44),       		-- Chef 44 handles Turkish and Brazilian cuisines
(19, 45), (23, 45),       		-- Chef 45 works with Egyptian and Canadian cuisines
(20, 46), (24, 46),       		-- Chef 46 covers South African and Argentinian cuisines
(21, 47), (25, 47),       		-- Chef 47 focuses on Moroccan and Belgian cuisines
(22, 48), (23, 48),       		-- Chef 48 delves into Australian and Canadian cuisines
(24, 49), (25, 49),       		-- Chef 49 specializes in Argentinian and Belgian cuisines
(1, 50), (2, 50), (3, 50); 		-- Chef 50 explores a broad range of popular cuisines