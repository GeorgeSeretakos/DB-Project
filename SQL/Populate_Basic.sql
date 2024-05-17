# Meal #

INSERT INTO Meal (Name, Photo, Photo_Description) VALUES 
('Breakfast', 'http://example.com/photos/breakfast.jpg', 'A photo of a hearty breakfast plate.'),
('Lunch', 'http://example.com/photos/lunch.jpg', 'A photo of a lunch meal with a sandwich and salad.'),
('Dinner', 'http://example.com/photos/dinner.jpg', 'A photo of a dinner meal with steak and vegetables.'),
('Snack', 'http://example.com/photos/snack.jpg', 'A photo of a healthy snack consisting of fruits and nuts.'),
('Dessert', 'http://example.com/photos/dessert.jpg', 'A photo of a delicious chocolate cake.');


# Tags #

INSERT INTO Tags (Name, Photo, Photo_Description) VALUES 
('Brunch', 'http://example.com/photos/brunch.jpg', 'A photo of a brunch spread.'),
('Quick Lunch', 'http://example.com/photos/quick_lunch.jpg', 'A photo of a quick lunch option.'),
('Healthy Choice', 'http://example.com/photos/healthy_choice.jpg', 'A photo of a healthy meal.'),
('Family Dinner', 'http://example.com/photos/family_dinner.jpg', 'A photo of a family dinner.'),
('Late Night Snack', 'http://example.com/photos/late_night_snack.jpg', 'A photo of a late night snack.'),
('Comfort Food', 'http://example.com/photos/comfort_food.jpg', 'A photo representing comfort food, like mac and cheese.'),
('Low Carb', 'http://example.com/photos/low_carb.jpg', 'A photo of a low carb meal, ideal for ketogenic diets.'),
('High Protein', 'http://example.com/photos/high_protein.jpg', 'A photo of a high protein dish, great for muscle building.'),
('Quick Breakfast', 'http://example.com/photos/quick_breakfast.jpg', 'A photo of a quick breakfast, easy to prepare.'),
('Gourmet Meals', 'http://example.com/photos/gourmet_meals.jpg', 'A photo of a gourmet meal, suitable for special occasions.');


# Food Category #

INSERT INTO Food_Category (Code, Name, Description, Photo, Photo_Description) VALUES 
(1, 'Spices and Essential Oils', 'Aromatic', 'http://example.com/photos/aromatic.jpg', 'Essential oils and spices.'),
(2, 'Coffee, Tea and Their Products', 'Caffeinated', 'http://example.com/photos/caffeinated.jpg', 'Various coffee and tea products.'),
(3, 'Preserved Foods', 'Canned', 'http://example.com/photos/canned.jpg', 'Canned and preserved food items.'),
(4, 'Sweeteners', 'Sweet', 'http://example.com/photos/sweet.jpg', 'Natural and artificial sweeteners.'),
(5, 'Fats and Oils', 'Fatty', 'http://example.com/photos/fatty.jpg', 'Cooking oils and fats.'),
(6, 'Dairy, Eggs and Their Products', 'Dairy', 'http://example.com/photos/dairy.jpg', 'Dairy products and eggs.'),
(7, 'Meat and Products', 'Meaty', 'http://example.com/photos/meaty.jpg', 'Fresh meats and meat products.'),
(8, 'Fisheries and Their Products', 'Fishy', 'http://example.com/photos/fishy.jpg', 'Fish and seafood products.'),
(9, 'Cereals and Their Products', 'Grainy', 'http://example.com/photos/grainy.jpg', 'Cereal grains and their derivatives.'),
(10, 'Various Plant-based Foods', 'Herbal', 'http://example.com/photos/herbal.jpg', 'Diverse plant-based foods.'),
(11, 'Products with Sweeteners', 'Enhanced', 'http://example.com/photos/enhanced.jpg', 'Products containing added sweeteners.'),
(12, 'Various Beverages', 'Beverage', 'http://example.com/photos/beverage.jpg', 'A variety of alcoholic and non-alcoholic beverages.');


# Thematic Unit #

INSERT INTO Thematic_Unit (Name, Description, Photo, Photo_Description) VALUES 
('Village Recipes', 'Traditional recipes passed down through generations, showcasing rural culinary traditions.', 'http://example.com/photos/village_recipes.jpg', 'Photo of traditional village cooking.'),
('Risotto Recipes', 'A variety of risotto recipes, each offering a unique blend of flavors and ingredients.', 'http://example.com/photos/risotto_recipes.jpg', 'Photo of creamy risotto.'),
('Easter Sweets', 'Easter sweets ideal for the Easter table, featuring traditional and modern desserts.', 'http://example.com/photos/easter_sweets.jpg', 'Photo of colorful Easter desserts.'),
('Mediterranean Cuisine', 'Recipes inspired by the flavors and ingredients of the Mediterranean region.', 'http://example.com/photos/mediterranean_cuisine.jpg', 'Photo of Mediterranean dishes.'),
('Summer Barbecue', 'Barbecue recipes perfect for outdoor grilling during the summer months.', 'http://example.com/photos/summer_barbecue.jpg', 'Photo of grilled barbecue.'),
('Vegetarian Delights', 'A collection of vegetarian recipes showcasing the versatility and creativity of plant-based cooking.', 'http://example.com/photos/vegetarian_delights.jpg', 'Photo of colorful vegetarian dishes.'),
('Homemade Pizza', 'Recipes for homemade pizzas with various toppings, from classic Margherita to gourmet creations.', 'http://example.com/photos/homemade_pizza.jpg', 'Photo of homemade pizza slices.'),
('Asian Fusion', 'A fusion of Asian flavors and cooking techniques, blending traditional dishes with modern twists.', 'http://example.com/photos/asian_fusion.jpg', 'Photo of Asian fusion cuisine.'),
('Comfort Food Classics', 'Classic comfort food recipes that evoke nostalgia and warmth, perfect for cozy nights in.', 'http://example.com/photos/comfort_food_classics.jpg', 'Photo of classic comfort food dishes.'),
('Healthy Bowls', 'Nutrient-rich bowl recipes packed with wholesome ingredients for a balanced and nutritious meal.', 'http://example.com/photos/healthy_bowls.jpg', 'Photo of colorful and nutritious bowl meals.');


# Equipment #

INSERT INTO Equipment (Name, Instructions, Photo, Photo_Description) VALUES 
('Knife', 'Use for chopping, slicing, and dicing ingredients.', 'http://example.com/photos/knife.jpg', 'Photo of a kitchen knife.'),
('Cutting Board', 'Place ingredients on the board for safe chopping and slicing.', 'http://example.com/photos/cutting_board.jpg', 'Photo of a wooden cutting board.'),
('Saucepan', 'Use for heating sauces, soups, and other liquids.', 'http://example.com/photos/saucepan.jpg', 'Photo of a saucepan on a stovetop.'),
('Frying Pan', 'Ideal for frying, sautéing, and searing ingredients.', 'http://example.com/photos/frying_pan.jpg', 'Photo of a frying pan with food cooking.'),
('Mixing Bowl', 'Combine ingredients for mixing, tossing, and blending.', 'http://example.com/photos/mixing_bowl.jpg', 'Photo of a mixing bowl with ingredients.'),
('Whisk', 'Use for whipping, beating, and incorporating air into mixtures.', 'http://example.com/photos/whisk.jpg', 'Photo of a wire whisk.'),
('Spatula', 'Ideal for flipping, turning, and serving food.', 'http://example.com/photos/spatula.jpg', 'Photo of a kitchen spatula.'),
('Colander', 'Drain liquids from cooked pasta, vegetables, and other foods.', 'http://example.com/photos/colander.jpg', 'Photo of a metal colander with pasta.'),
('Peeler', 'Peel the skin off fruits and vegetables quickly and easily.', 'http://example.com/photos/peeler.jpg', 'Photo of a vegetable peeler.'),
('Measuring Cups', 'Accurately measure dry and liquid ingredients for recipes.', 'http://example.com/photos/measuring_cups.jpg', 'Photo of measuring cups with ingredients.'),
('Measuring Spoons', 'Precisely measure small amounts of ingredients for recipes.', 'http://example.com/photos/measuring_spoons.jpg', 'Photo of measuring spoons with ingredients.'),
('Oven Mitts', 'Protect hands from heat when handling hot dishes and cookware.', 'http://example.com/photos/oven_mitts.jpg', 'Photo of oven mitts.'),
('Baking Sheet', 'Use for baking cookies, pastries, and other baked goods.', 'http://example.com/photos/baking_sheet.jpg', 'Photo of a baking sheet with cookies.'),
('Rolling Pin', 'Roll out dough for pies, pastries, and other baked goods.', 'http://example.com/photos/rolling_pin.jpg', 'Photo of a wooden rolling pin.'),
('Tongs', 'Grab and turn hot foods without piercing them.', 'http://example.com/photos/tongs.jpg', 'Photo of kitchen tongs.'),
('Grater', 'Grate cheese, vegetables, and other foods for recipes.', 'http://example.com/photos/grater.jpg', 'Photo of a cheese grater.'),
('Mixer', 'Beat, whip, and blend ingredients for baking and cooking.', 'http://example.com/photos/mixer.jpg', 'Photo of a stand mixer.'),
('Food Processor', 'Chop, puree, and mix ingredients quickly and efficiently.', 'http://example.com/photos/food_processor.jpg', 'Photo of a food processor.'),
('Blender', 'Blend, puree, and mix ingredients for smoothies, soups, and sauces.', 'http://example.com/photos/blender.jpg', 'Photo of a blender with smoothie ingredients.'),
('Oven', 'Use for baking, roasting, and broiling a variety of dishes.', 'http://example.com/photos/oven.jpg', 'Photo of an oven with a baking dish.'),
('Microwave', 'Quickly heat and cook food using microwave radiation.', 'http://example.com/photos/microwave.jpg', 'Photo of a microwave oven.'),
('Toaster', 'Toast bread slices to desired level of crispness.', 'http://example.com/photos/toaster.jpg', 'Photo of a toaster with toast.'),
('Coffee Maker', 'Brew coffee using ground coffee beans and water.', 'http://example.com/photos/coffee_maker.jpg', 'Photo of a coffee maker with coffee.'),
('Teapot', 'Steep tea leaves in hot water to brew tea.', 'http://example.com/photos/teapot.jpg', 'Photo of a teapot with tea.'),
('Electric Kettle', 'Quickly boil water for tea, coffee, and other hot beverages.', 'http://example.com/photos/electric_kettle.jpg', 'Photo of an electric kettle.'),
('Grill', 'Cook meats, vegetables, and other foods over an open flame.', 'http://example.com/photos/grill.jpg', 'Photo of a grill with cooking food.'),
('Slow Cooker', 'Simmer soups, stews, and other dishes over a long period of time.', 'http://example.com/photos/slow_cooker.jpg', 'Photo of a slow cooker with food cooking.'),
('Pressure Cooker', 'Cook food quickly using high pressure and steam.', 'http://example.com/photos/pressure_cooker.jpg', 'Photo of a pressure cooker with food.'),
('Rice Cooker', 'Cook rice and grains to perfection with minimal effort.', 'http://example.com/photos/rice_cooker.jpg', 'Photo of a rice cooker with cooked rice.'),
('Wok', 'Stir-fry, steam, and fry ingredients quickly and evenly.', 'http://example.com/photos/wok.jpg', 'Photo of a wok with cooking.'),
('Sauce Dispenser', 'Dispense sauces and dressings with precision and control.', 'http://example.com/photos/sauce_dispenser.jpg', 'Photo of a sauce dispenser.'),
('Ice Cream Maker', 'Make homemade ice cream and frozen desserts.', 'http://example.com/photos/ice_cream_maker.jpg', 'Photo of an ice cream maker with ice cream.'),
('Bread Machine', 'Automatically mix, knead, and bake bread and dough.', 'http://example.com/photos/bread_machine.jpg', 'Photo of a bread machine with freshly baked bread.'),
('Fondue Set', 'Dip fruits, bread, and other foods into melted cheese or chocolate.', 'http://example.com/photos/fondue_set.jpg', 'Photo of a fondue set.'),
('Pasta Maker', 'Make fresh pasta noodles from scratch.', 'http://example.com/photos/pasta_maker.jpg', 'Photo of a pasta maker with fresh pasta.'),
('Salad Spinner', 'Wash and dry salad greens quickly and efficiently.', 'http://example.com/photos/salad_spinner.jpg', 'Photo of a salad spinner with greens.'),
('Mortar and Pestle', 'Grind spices, herbs, and other ingredients into powders or pastes.', 'http://example.com/photos/mortar_and_pestle.jpg', 'Photo of a mortar and pestle.'),
('Cookie Cutter', 'Cut cookie dough into fun shapes for baking.', 'http://example.com/photos/cookie_cutter.jpg', 'Photo of cookie cutters with dough.'),
('Pizza Stone', 'Bake crisp and evenly cooked pizzas and breads.', 'http://example.com/photos/pizza_stone.jpg', 'Photo of a pizza stone in an oven.'),
('Basting Brush', 'Brush marinades, sauces, and oils onto food for added flavor and moisture.', 'http://example.com/photos/basting_brush.jpg', 'Photo of a basting brush with marinade.'),
('Pastry Brush', 'Brush egg wash, butter, and glazes onto pastries and baked goods.', 'http://example.com/photos/pastry_brush.jpg', 'Photo of a pastry brush with egg wash.'),
('Strainer', 'Strain liquids from solids or sift dry ingredients.', 'http://example.com/photos/strainer.jpg', 'Photo of a strainer with ingredients.'),
('Cheese Cloth', 'Drain liquids, strain solids, and wrap foods for cooking.', 'http://example.com/photos/cheese_cloth.jpg', 'Photo of cheese cloth with cheese.'),
('Grill Pan', 'Grill meats and vegetables indoors with grill marks.', 'http://example.com/photos/grill_pan.jpg', 'Photo of a grill pan with food cooking.'),
('Bakeware Set', 'Includes various baking pans and dishes for baking cakes, breads, and more.', 'http://example.com/photos/bakeware_set.jpg', 'Photo of a bakeware set.'),
('Steamer Basket', 'Steam vegetables, seafood, and dumplings for healthy cooking.', 'http://example.com/photos/steamer_basket.jpg', 'Photo of a steamer basket with vegetables.'),
('Corkscrew', 'Remove corks from wine bottles with ease.', 'http://example.com/photos/corkscrew.jpg', 'Photo of a corkscrew with a wine bottle.'),
('Can Opener', 'Open cans of food quickly and easily.', 'http://example.com/photos/can_opener.jpg', 'Photo of a can opener with a can.'),
('Kitchen Scale', 'Weigh ingredients accurately for precise cooking and baking.', 'http://example.com/photos/kitchen_scale.jpg', 'Photo of a kitchen scale with ingredients.'),
('Thermometer', 'Measure the temperature of foods for safe cooking.', 'http://example.com/photos/thermometer.jpg', 'Photo of a food thermometer.'),
('Pepper Grinder', 'Grind whole peppercorns for fresh-ground pepper.', 'http://example.com/photos/pepper_grinder.jpg', 'Photo of a pepper grinder with peppercorns.'),
('Garlic Press', 'Crush garlic cloves quickly and easily.', 'http://example.com/photos/garlic_press.jpg', 'Photo of a garlic press with garlic cloves.'),
('Juicer', 'Extract juice from fruits and vegetables for fresh beverages.', 'http://example.com/photos/juicer.jpg', 'Photo of a juicer with fruit.'),
('Ladle', 'Scoop and serve soups, stews, and sauces.', 'http://example.com/photos/ladle.jpg', 'Photo of a kitchen ladle with soup.'),
('Skewers', 'Thread meats, vegetables, and seafood for grilling and broiling.', 'http://example.com/photos/skewers.jpg', 'Photo of skewers with food.'),
('Salad Tongs', 'Toss and serve salads with ease.', 'http://example.com/photos/salad_tongs.jpg', 'Photo of salad tongs with salad.'),
('Potato Masher', 'Mash cooked potatoes and other root vegetables.', 'http://example.com/photos/potato_masher.jpg', 'Photo of a potato masher with mashed potatoes.');


# Chef #

INSERT INTO Chef (First_Name, Last_Name, Phone_Number, Birthdate, Age, Years_of_Experience, Specialization, Photo, Photo_Description) VALUES
('Admin', 'Admin', '123-456-7890', '1980-05-15', TIMESTAMPDIFF(YEAR, '1980-05-15', CURDATE()), 15, 'Head chef', 'http://example.com/photos/admin.jpg', 'Admin'),
('John', 'Doe', '123-456-7890', '1980-05-15', TIMESTAMPDIFF(YEAR, '1980-05-15', CURDATE()), 15, 'Head chef', 'http://example.com/photos/john_doe.jpg', 'Photo of Chef John Doe'),
('Alice', 'Smith', '234-567-8901', '1985-10-20', TIMESTAMPDIFF(YEAR, '1985-10-20', CURDATE()), 10, 'First cook', 'http://example.com/photos/alice_smith.jpg', 'Photo of Chef Alice Smith'),
('Michael', 'Johnson', '345-678-9012', '1976-07-08', TIMESTAMPDIFF(YEAR, '1976-07-08', CURDATE()), 20, 'Head chef', 'http://example.com/photos/michael_johnson.jpg', 'Photo of Chef Michael Johnson'),
('Emily', 'Brown', '456-789-0123', '1990-03-25', TIMESTAMPDIFF(YEAR, '1990-03-25', CURDATE()), 8, 'Second cook', 'http://example.com/photos/emily_brown.jpg', 'Photo of Chef Emily Brown'),
('David', 'Martinez', '567-890-1234', '1982-12-12', TIMESTAMPDIFF(YEAR, '1982-12-12', CURDATE()), 18, 'Head chef', 'http://example.com/photos/david_martinez.jpg', 'Photo of Chef David Martinez'),
('Jessica', 'Garcia', '678-901-2345', '1970-11-30', TIMESTAMPDIFF(YEAR, '1970-11-30', CURDATE()), 30, 'Head chef', 'http://example.com/photos/jessica_garcia.jpg', 'Photo of Chef Jessica Garcia'),
('Daniel', 'Lee', '789-012-3456', '1988-09-18', TIMESTAMPDIFF(YEAR, '1988-09-18', CURDATE()), 12, 'First cook', 'http://example.com/photos/daniel_lee.jpg', 'Photo of Chef Daniel Lee'),
('Sophia', 'Taylor', '890-123-4567', '1983-04-05', TIMESTAMPDIFF(YEAR, '1983-04-05', CURDATE()), 17, 'First cook', 'http://example.com/photos/sophia_taylor.jpg', 'Photo of Chef Sophia Taylor'),
('William', 'Anderson', '901-234-5678', '1978-01-28', TIMESTAMPDIFF(YEAR, '1978-01-28', CURDATE()), 25, 'Assistant chef', 'http://example.com/photos/william_anderson.jpg', 'Photo of Chef William Anderson'),
('Olivia', 'Thomas', '012-345-6789', '1995-06-10', TIMESTAMPDIFF(YEAR, '1995-06-10', CURDATE()), 5, 'Third cook', 'http://example.com/photos/olivia_thomas.jpg', 'Photo of Chef Olivia Thomas'),
('Grace', 'Jackson', '123-456-7890', '1987-08-15', TIMESTAMPDIFF(YEAR, '1987-08-15', CURDATE()), 14, 'Second cook', 'http://example.com/photos/grace_jackson.jpg', 'Photo of Chef Grace Jackson'),
('Ethan', 'White', '234-567-8901', '1974-09-20', TIMESTAMPDIFF(YEAR, '1974-09-20', CURDATE()), 24, 'First cook', 'http://example.com/photos/ethan_white.jpg', 'Photo of Chef Ethan White'),
('Emma', 'Miller', '345-678-9012', '1993-02-08', TIMESTAMPDIFF(YEAR, '1993-02-08', CURDATE()), 7, 'Second cook', 'http://example.com/photos/emma_miller.jpg', 'Photo of Chef Emma Miller'),
('Daniel', 'Harris', '456-789-0123', '1982-06-25', TIMESTAMPDIFF(YEAR, '1982-06-25', CURDATE()), 18, 'Assistant chef', 'http://example.com/photos/daniel_harris.jpg', 'Photo of Chef Daniel Harris'),
('Ava', 'Clark', '567-890-1234', '1990-11-30', TIMESTAMPDIFF(YEAR, '1990-11-30', CURDATE()), 12, 'Third cook', 'http://example.com/photos/ava_clark.jpg', 'Photo of Chef Ava Clark'),
('Noah', 'Lewis', '678-901-2345', '1979-07-18', TIMESTAMPDIFF(YEAR, '1979-07-18', CURDATE()), 22, 'Head chef', 'http://example.com/photos/noah_lewis.jpg', 'Photo of Chef Noah Lewis'),
('Mia', 'Walker', '789-012-3456', '1985-04-05', TIMESTAMPDIFF(YEAR, '1985-04-05', CURDATE()), 15, 'First cook', 'http://example.com/photos/mia_walker.jpg', 'Photo of Chef Mia Walker'),
('James', 'Robinson', '890-123-4567', '1976-01-28', TIMESTAMPDIFF(YEAR, '1976-01-28', CURDATE()), 28, 'Head chef', 'http://example.com/photos/james_robinson.jpg', 'Photo of Chef James Robinson'),
('Sophie', 'Young', '901-234-5678', '1992-06-10', TIMESTAMPDIFF(YEAR, '1992-06-10', CURDATE()), 8, 'Second cook', 'http://example.com/photos/sophie_young.jpg', 'Photo of Chef Sophie Young'),
('Alexander', 'King', '012-345-6789', '1981-11-15', TIMESTAMPDIFF(YEAR, '1981-11-15', CURDATE()), 18, 'Assistant chef', 'http://example.com/photos/alexander_king.jpg', 'Photo of Chef Alexander King'),
('Isabella', 'Wright', '123-456-7890', '1997-05-20', TIMESTAMPDIFF(YEAR, '1997-05-20', CURDATE()), 4, 'Third cook', 'http://example.com/photos/isabella_wright.jpg', 'Photo of Chef Isabella Wright'),
('Liam', 'Evans', '234-567-8901', '1980-08-08', TIMESTAMPDIFF(YEAR, '1980-08-08', CURDATE()), 22, 'First cook', 'http://example.com/photos/liam_evans.jpg', 'Photo of Chef Liam Evans'),
('Charlotte', 'Baker', '345-678-9012', '1988-01-15', TIMESTAMPDIFF(YEAR, '1988-01-15', CURDATE()), 12, 'Second cook', 'http://example.com/photos/charlotte_baker.jpg', 'Photo of Chef Charlotte Baker'),
('Benjamin', 'Green', '456-789-0123', '1973-09-30', TIMESTAMPDIFF(YEAR, '1973-09-30', CURDATE()), 28, 'Head chef', 'http://example.com/photos/benjamin_green.jpg', 'Photo of Chef Benjamin Green'),
('Amelia', 'Hill', '567-890-1234', '1993-04-18', TIMESTAMPDIFF(YEAR, '1993-04-18', CURDATE()), 7, 'Third cook', 'http://example.com/photos/amelia_hill.jpg', 'Photo of Chef Amelia Hill'),
('Daniel', 'Hill', '678-901-2345', '1975-11-10', TIMESTAMPDIFF(YEAR, '1975-11-10', CURDATE()), 27, 'Head chef', 'http://example.com/photos/daniel_hill.jpg', 'Photo of Chef Daniel Hill'),
('Emma', 'Carter', '789-012-3456', '1984-02-22', TIMESTAMPDIFF(YEAR, '1984-02-22', CURDATE()), 18, 'Assistant chef', 'http://example.com/photos/emma_carter.jpg', 'Photo of Chef Emma Carter'),
('Ryan', 'Adams', '890-123-4567', '1990-07-05', TIMESTAMPDIFF(YEAR, '1990-07-05', CURDATE()), 15, 'First cook', 'http://example.com/photos/ryan_adams.jpg', 'Photo of Chef Ryan Adams'),
('Ava', 'Russell', '901-234-5678', '1981-09-14', TIMESTAMPDIFF(YEAR, '1981-09-14', CURDATE()), 20, 'Head chef', 'http://example.com/photos/ava_russell.jpg', 'Photo of Chef Ava Russell'),
('David', 'Ward', '012-345-6789', '1978-04-30', TIMESTAMPDIFF(YEAR, '1978-04-30', CURDATE()), 22, 'Assistant chef', 'http://example.com/photos/david_ward.jpg', 'Photo of Chef David Ward'),
('Sophie', 'Howard', '123-456-7890', '1989-01-18', TIMESTAMPDIFF(YEAR, '1989-01-18', CURDATE()), 14, 'Second cook', 'http://example.com/photos/sophie_howard.jpg', 'Photo of Chef Sophie Howard'),
('Jackson', 'Turner', '234-567-8901', '1983-05-08', TIMESTAMPDIFF(YEAR, '1983-05-08', CURDATE()), 18, 'Assistant chef', 'http://example.com/photos/jackson_turner.jpg', 'Photo of Chef Jackson Turner'),
('Madison', 'Cooper', '345-678-9012', '1986-08-22', TIMESTAMPDIFF(YEAR, '1986-08-22', CURDATE()), 12, 'Third cook', 'http://example.com/photos/madison_cooper.jpg', 'Photo of Chef Madison Cooper'),
('Logan', 'Morris', '456-789-0123', '1992-03-15', TIMESTAMPDIFF(YEAR, '1992-03-15', CURDATE()), 8, 'First cook', 'http://example.com/photos/logan_morris.jpg', 'Photo of Chef Logan Morris'),
('Grace', 'Peterson', '567-890-1234', '1980-10-30', TIMESTAMPDIFF(YEAR, '1980-10-30', CURDATE()), 20, 'Head chef', 'http://example.com/photos/grace_peterson.jpg', 'Photo of Chef Grace Peterson'),
('Ella', 'Kelly', '678-901-2345', '1994-06-10', TIMESTAMPDIFF(YEAR, '1994-06-10', CURDATE()), 6, 'Third cook', 'http://example.com/photos/ella_kelly.jpg', 'Photo of Chef Ella Kelly'),
('Luke', 'Bailey', '789-012-3456', '1987-11-25', TIMESTAMPDIFF(YEAR, '1987-11-25', CURDATE()), 13, 'First cook', 'http://example.com/photos/luke_bailey.jpg', 'Photo of Chef Luke Bailey'),
('Mia', 'Fisher', '890-123-4567', '1979-02-28', TIMESTAMPDIFF(YEAR, '1979-02-28', CURDATE()), 21, 'Assistant chef', 'http://example.com/photos/mia_fisher.jpg', 'Photo of Chef Mia Fisher'),
('Owen', 'Bennett', '901-234-5678', '1983-07-15', TIMESTAMPDIFF(YEAR, '1983-07-15', CURDATE()), 17, 'Head chef', 'http://example.com/photos/owen_bennett.jpg', 'Photo of Chef Owen Bennett'),
('Zoe', 'James', '012-345-6789', '1990-12-20', TIMESTAMPDIFF(YEAR, '1990-12-20', CURDATE()), 10, 'Second cook', 'http://example.com/photos/zoe_james.jpg', 'Photo of Chef Zoe James'),
('Ethan', 'Parker', '123-456-7890', '1985-05-05', TIMESTAMPDIFF(YEAR, '1985-05-05', CURDATE()), 15, 'First cook', 'http://example.com/photos/ethan_parker.jpg', 'Photo of Chef Ethan Parker'),
('Chloe', 'Cox', '234-567-8901', '1977-10-18', TIMESTAMPDIFF(YEAR, '1977-10-18', CURDATE()), 23, 'Head chef', 'http://example.com/photos/chloe_cox.jpg', 'Photo of Chef Chloe Cox'),
('Gabriel', 'Richardson', '345-678-9012', '1993-03-30', TIMESTAMPDIFF(YEAR, '1993-03-30', CURDATE()), 7, 'Third cook', 'http://example.com/photos/gabriel_richardson.jpg', 'Photo of Chef Gabriel Richardson'),
('Lily', 'Gray', '456-789-0123', '1980-08-15', TIMESTAMPDIFF(YEAR, '1980-08-15', CURDATE()), 20, 'Assistant chef', 'http://example.com/photos/lily_gray.jpg', 'Photo of Chef Lily Gray'),
('Jack', 'Wright', '567-890-1234', '1989-04-10', TIMESTAMPDIFF(YEAR, '1989-04-10', CURDATE()), 11, 'First cook', 'http://example.com/photos/jack_wright.jpg', 'Photo of Chef Jack Wright'),
('Avery', 'Roberts', '678-901-2345', '1982-12-25', TIMESTAMPDIFF(YEAR, '1982-12-25', CURDATE()), 18, 'Second cook', 'http://example.com/photos/avery_roberts.jpg', 'Photo of Chef Avery Roberts'),
('Noah', 'Hill', '789-012-3456', '1988-07-20', TIMESTAMPDIFF(YEAR, '1988-07-20', CURDATE()), 12, 'Third cook', 'http://example.com/photos/noah_hill.jpg', 'Photo of Chef Noah Hill'),
('Harper', 'Morris', '890-123-4567', '1985-02-15', TIMESTAMPDIFF(YEAR, '1985-02-15', CURDATE()), 15, 'First cook', 'http://example.com/photos/harper_morris.jpg', 'Photo of Chef Harper Morris'),
('Matthew', 'Jenkins', '901-234-5678', '1984-11-08', TIMESTAMPDIFF(YEAR, '1984-11-08', CURDATE()), 16, 'Head chef', 'http://example.com/photos/matthew_jenkins.jpg', 'Photo of Chef Matthew Jenkins'),
('Scarlett', 'Baker', '012-345-6789', '1981-06-22', TIMESTAMPDIFF(YEAR, '1981-06-22', CURDATE()), 19, 'Assistant chef', 'http://example.com/photos/scarlett_baker.jpg', 'Photo of Chef Scarlett Baker');



# National Cusine #

INSERT INTO National_Cusine (Name, Photo, Photo_Description) VALUES
('Italian', 'https://example.com/italian_dish.jpg', 'Photo of Italian dish'),
('Chinese', 'https://example.com/chinese_dish.jpg', 'Photo of Chinese dish'),
('Indian', 'https://example.com/indian_dish.jpg', 'Photo of Indian dish'),
('French', 'https://example.com/french_dish.jpg', 'Photo of French dish'),
('Mexican', 'https://example.com/mexican_dish.jpg', 'Photo of Mexican dish'),
('Japanese', 'https://example.com/japanese_dish.jpg', 'Photo of Japanese dish'),
('Thai', 'https://example.com/thai_dish.jpg', 'Photo of Thai dish'),
('Spanish', 'https://example.com/spanish_dish.jpg', 'Photo of Spanish dish'),
('Korean', 'https://example.com/korean_dish.jpg', 'Photo of Korean dish'),
('Vietnamese', 'https://example.com/vietnamese_dish.jpg', 'Photo of Vietnamese dish'),
('American', 'https://example.com/american_dish.jpg', 'Photo of American dish'),
('British', 'https://example.com/british_dish.jpg', 'Photo of British dish'),
('German', 'https://example.com/german_dish.jpg', 'Photo of German dish'),
('Turkish', 'https://example.com/turkish_dish.jpg', 'Photo of Turkish dish'),
('Greek', 'https://example.com/greek_dish.jpg', 'Photo of Greek dish'),
('Portuguese', 'https://example.com/portuguese_dish.jpg', 'Photo of Portuguese dish'),
('Russian', 'https://example.com/russian_dish.jpg', 'Photo of Russian dish'),
('Brazilian', 'https://example.com/brazilian_dish.jpg', 'Photo of Brazilian dish'),
('Egyptian', 'https://example.com/egyptian_dish.jpg', 'Photo of Egyptian dish'),
('South African', 'https://example.com/south_african_dish.jpg', 'Photo of South African dish'),
('Moroccan', 'https://example.com/moroccan_dish.jpg', 'Photo of Moroccan dish'),
('Australian', 'https://example.com/australian_dish.jpg', 'Photo of Australian dish'),
('Canadian', 'https://example.com/canadian_dish.jpg', 'Photo of Canadian dish'),
('Argentinian', 'https://example.com/argentinian_dish.jpg', 'Photo of Argentinian dish'),
('Belgian', 'https://example.com/belgian_dish.jpg', 'Photo of Belgian dish');


# Recipe #

INSERT INTO Recipe 
(Cooking_or_Pastry, Difficulty, Name, Description, Tip1, Tip2, Tip3, Execution_Time, Preparation_Time, Cooking_Time, Servings, Photo, Photo_Description, National_Cusine_ID) 
VALUES
('Cooking', 3, 'Italian Pizza', 'Classic Neapolitan pizza with tomato, mozzarella and basil.', 'Use fresh basil', 'Preheat your oven to the highest setting', 'Use a pizza stone for best results', 140, 30, 110, 4, 'https://example.com/photos/italian-pizza.jpg', 'Photo of Italian Pizza', 1),
('Pastry', 2, 'Chinese Mooncake', 'Traditional Chinese pastry consumed during the Mid-Autumn Festival.', 'Use lotus seed paste', 'Mooncake molds are essential', 'Store in a cool, dry place', 180, 40, 140, 6, 'https://example.com/photos/chinese-mooncake.jpg', 'Photo of Chinese Mooncake', 2),
('Cooking', 4, 'Indian Curry', 'Spicy and flavorful curry made with chicken and various Indian spices.', 'Always use fresh spices', 'Serve with basmati rice', 'Adjust the chili to taste', 140, 20, 120, 4, 'https://example.com/photos/indian-curry.jpg', 'Photo of Indian Curry', 3),
('Cooking', 5, 'French Coq au Vin', 'French dish of chicken braised with wine, mushrooms, and garlic.', 'Marinate chicken overnight', 'Cook slowly to develop flavors', 'Can be made a day ahead', 180, 30, 150, 4, 'https://example.com/photos/french-coq-au-vin.jpg', 'Photo of French Coq au Vin', 4),
('Cooking', 1, 'Mexican Tacos', 'Traditional street-style tacos with corn tortillas and assorted fillings.', 'Use freshly made tortillas', 'Variety of toppings', 'Serve with lime wedges', 50, 10, 40, 2, 'https://example.com/photos/mexican-tacos.jpg', 'Photo of Mexican Tacos', 5),
('Pastry', 2, 'Japanese Cheesecake', 'Fluffy and light cheesecake popular in Japan.', 'Avoid overmixing the batter', 'Use a water bath for baking', 'Let it cool in the oven gradually', 180, 30, 150, 8, 'https://example.com/photos/japanese-cheesecake.jpg', 'Photo of Japanese Cheesecake', 6),
('Cooking', 2, 'Thai Green Curry', 'Aromatic curry made with green chili, coconut milk, and fresh herbs.', 'Use fresh green chili', 'Simmer on low heat', 'Adjust sweetness with palm sugar', 150, 20, 130, 4, 'https://example.com/photos/thai-green-curry.jpg', 'Photo of Thai Green Curry', 7),
('Cooking', 3, 'Spanish Paella', 'Iconic Spanish rice dish with seafood, chicken, and vegetables.', 'Use saffron for authentic flavor', 'Cook rice perfectly al dente', 'Serve directly from the pan', 160, 40, 120, 6, 'https://example.com/photos/spanish-paella.jpg', 'Photo of Spanish Paella', 8),
('Cooking', 2, 'Korean Bibimbap', 'Mixed rice bowl with assorted vegetables, meat, and gochujang.', 'Prepare ingredients in advance', 'Serve with a raw egg on top', 'Stir thoroughly before eating', 50, 30, 20, 1, 'https://example.com/photos/korean-bibimbap.jpg', 'Photo of Korean Bibimbap', 9),
('Cooking', 3, 'Vietnamese Pho', 'Noodle soup with a clear broth, herbs, and meat.', 'Use a bone broth for base', 'Simmer broth for hours', 'Serve with fresh herbs', 220, 40, 180, 4, 'https://example.com/photos/vietnamese-pho.jpg', 'Photo of Vietnamese Pho', 10),
('Pastry', 1, 'American Apple Pie', 'Classic dessert made with spiced apple filling and buttery crust.', 'Use tart apples like Granny Smith', 'Chill the dough before rolling', 'Serve with vanilla ice cream', 150, 30, 120, 8, 'https://example.com/photos/american-apple-pie.jpg', 'Photo of American Apple Pie', 11),
('Cooking', 3, 'British Fish and Chips', 'Traditional British meal of battered and fried fish served with chips.', 'Use beer in the batter for crispiness', 'Fry at high temperature for golden crust', 'Serve with tartar sauce', 50, 20, 30, 2, 'https://example.com/photos/british-fish-and-chips.jpg', 'Photo of British Fish and Chips', 12),
('Cooking', 4, 'German Sausage Platter', 'Assortment of grilled German sausages served with sauerkraut and mustard.', 'Use a variety of sausages', 'Grill to perfection', 'Accompany with German beer', 100, 10, 90, 4, 'https://example.com/photos/german-sausage-platter.jpg', 'Photo of German Sausage Platter', 13),
('Cooking', 3, 'Turkish Kebab', 'Grilled meat skewers marinated in Turkish spices.', 'Use lamb for authenticity', 'Marinate overnight', 'Grill over charcoal for smoky flavor', 150, 30, 120, 4, 'https://example.com/photos/turkish-kebab.jpg', 'Photo of Turkish Kebab', 14),
('Cooking', 2, 'Greek Gyro', 'Rotisserie-cooked meat served in pita bread with sauce and vegetables.', 'Slice meat thinly', 'Use homemade tzatziki sauce', 'Add fresh vegetables', 60, 20, 40, 3, 'https://example.com/photos/greek-gyro.jpg', 'Photo of Greek Gyro', 15),
('Cooking', 4, 'Portuguese Bacalhau', 'Salted cod dish traditionally prepared with potatoes and onions.', 'Desalt cod thoroughly', 'Layer ingredients for baking', 'Bake until golden brown', 180, 30, 150, 6, 'https://example.com/photos/portuguese-bacalhau.jpg', 'Photo of Portuguese Bacalhau', 16),
('Cooking', 2, 'Russian Borsch', 'Hearty beet soup served with sour cream.', 'Use fresh beets', 'Serve with rye bread', 'Add a garlic clove for extra flavor', 140, 20, 120, 4, 'https://example.com/photos/russian-borsch.jpg', 'Photo of Russian Borsch', 17),
('Cooking', 2, 'Brazilian Feijoada', 'Traditional Brazilian stew of black beans with pork.', 'Use black beans', 'Cook slowly for rich flavor', 'Serve with rice and oranges', 420, 60, 360, 8, 'https://example.com/photos/brazilian-feijoada.jpg', 'Photo of Brazilian Feijoada', 18),
('Cooking', 1, 'Egyptian Koshari', 'Mix of lentils, rice, pasta, and tomato sauce.', 'Use basmati rice', 'Layer the ingredients', 'Serve with garlic vinegar and hot sauce', 150, 30, 120, 4, 'https://example.com/photos/egyptian-koshari.jpg', 'Photo of Egyptian Koshari', 19),
('Cooking', 3, 'South African Bobotie', 'Spiced minced meat baked with an egg-based topping.', 'Use lamb or beef', 'Add apricot jam for sweetness', 'Serve with yellow rice', 160, 40, 120, 6, 'https://example.com/photos/south-african-bobotie.jpg', 'Photo of South African Bobotie', 20),
('Cooking', 2, 'Moroccan Tagine', 'Slow-cooked stew made with meat and vegetables.', 'Use a clay tagine', 'Combine sweet and savory flavors', 'Serve with couscous', 210, 30, 180, 4, 'https://example.com/photos/moroccan-tagine.jpg', 'Photo of Moroccan Tagine', 21),
('Cooking', 1, 'Australian Meat Pie', 'Iconic Australian pie filled with minced meat and gravy.', 'Use puff pastry for the crust', 'Add Worcestershire sauce for flavor', 'Serve with tomato sauce', 150, 30, 120, 4, 'https://example.com/photos/australian-meat-pie.jpg', 'Photo of Australian Meat Pie', 22),
('Cooking', 2, 'Canadian Poutine', 'Dish of fries topped with cheese curds and gravy.', 'Use fresh cheese curds', 'Make homemade gravy', 'Serve hot', 30, 10, 20, 3, 'https://example.com/photos/canadian-poutine.jpg', 'Photo of Canadian Poutine', 23),
('Cooking', 3, 'Argentinian Asado', 'Variety of meats grilled on an open fire.', 'Use different cuts of meat', 'Control the fire carefully', 'Serve with chimichurri sauce', 270, 30, 240, 6, 'https://example.com/photos/argentinian-asado.jpg', 'Photo of Argentinian Asado', 24),
('Cooking', 2, 'Belgian Waffles', 'Light and crispy waffles served with powdered sugar.', 'Ensure smooth batter', 'Preheat the waffle iron', 'Serve with strawberries', 50, 10, 40, 4, 'https://example.com/photos/belgian-waffles.jpg', 'Photo of Belgian Waffles', 25),
('Cooking', 3, 'Italian Risotto', 'Creamy Arborio rice cooked with broth and Parmesan.', 'Stir continuously', 'Use homemade broth', 'Finish with butter', 150, 20, 130, 4, 'https://example.com/photos/italian-risotto.jpg', 'Photo of Italian Risotto', 1),
('Pastry', 3, 'Chinese Dumplings', 'Dumplings filled with pork and vegetables, steamed or fried.', 'Use thin wrappers', 'Seal edges tightly', 'Serve with soy sauce', 140, 30, 110, 6, 'https://example.com/photos/chinese-dumplings.jpg', 'Photo of Chinese Dumplings', 2),
('Cooking', 4, 'Indian Samosa', 'Fried or baked pastry with a savory filling of spiced potatoes, onions, and peas.', 'Make dough crispy', 'Use fresh herbs', 'Serve with tamarind chutney', 120, 30, 90, 4, 'https://example.com/photos/indian-samosa.jpg', 'Photo of Indian Samosa', 3),
('Cooking', 4, 'French Ratatouille', 'Stewed vegetable dish from Provence.', 'Use fresh vegetables', 'Cook vegetables separately before combining', 'Serve as a side or main dish', 180, 30, 150, 4, 'https://example.com/photos/french-ratatouille.jpg', 'Photo of French Ratatouille', 4),
('Cooking', 2, 'Mexican Enchiladas', 'Corn tortillas rolled around a filling and covered with chili pepper sauce.', 'Use authentic enchilada sauce', 'Fill with cheese or meat', 'Top with sour cream', 120, 20, 100, 4, 'https://example.com/photos/mexican-enchiladas.jpg', 'Photo of Mexican Enchiladas', 5),
('Pastry', 2, 'Japanese Mochi', 'Sweet rice cake made of mochigome, a short-grain japonica glutinous rice.', 'Use sweet red bean filling', 'Keep mochi soft', 'Serve with green tea', 160, 40, 120, 6, 'https://example.com/photos/japanese-mochi.jpg', 'Photo of Japanese Mochi', 6),
('Cooking', 3, 'Thai Tom Yum Goong', 'Spicy shrimp soup flavored with lemongrass, kaffir lime leaves, and galangal.', 'Use fresh shrimp', 'Balance the hot and sour tastes', 'Serve with rice', 110, 20, 90, 4, 'https://example.com/photos/thai-tom-yum-goong.jpg', 'Photo of Thai Tom Yum Goong', 7),
('Cooking', 3, 'Spanish Churros', 'Fried-dough pastry typically dipped in chocolate.', 'Use a star-shaped nozzle', 'Fry until golden brown', 'Serve with hot chocolate', 80, 20, 60, 4, 'https://example.com/photos/spanish-churros.jpg', 'Photo of Spanish Churros', 8),
('Cooking', 3, 'Korean Kimchi Stew', 'Spicy stew made with kimchi, pork, and tofu.', 'Use fermented kimchi for depth', 'Add tofu at the end', 'Serve with steamed rice', 140, 20, 120, 4, 'https://example.com/photos/korean-kimchi-stew.jpg', 'Photo of Korean Kimchi Stew', 9),
('Cooking', 2, 'Vietnamese Banh Mi', 'Vietnamese sandwich that includes a variety of ingredients like pork, pate, and pickled vegetables.', 'Use fresh baguette', 'Include cilantro and jalapenos', 'Serve with mayonnaise', 40, 10, 30, 2, 'https://example.com/photos/vietnamese-banh-mi.jpg', 'Photo of Vietnamese Banh Mi', 10),
('Pastry', 1, 'American Brownies', 'Rich, chocolate baked dessert.', 'Use high-quality cocoa', 'Do not overbake', 'Add nuts if preferred', 50, 10, 40, 8, 'https://example.com/photos/american-brownies.jpg', 'Photo of American Brownies', 11),
('Cooking', 4, 'British Shepherd’s Pie', 'Savory pie with a crust of mashed potato and a filling of minced meat and vegetables.', 'Use lamb for traditional flavor', 'Add Worcestershire sauce', 'Top with cheese for extra flavor', 120, 30, 90, 4, 'https://example.com/photos/british-shepherds-pie.jpg', 'Photo of British Shepherd’s Pie', 12),
('Cooking', 3, 'German Pretzel', 'Traditional German twisted knot bread.', 'Boil in baking soda water before baking', 'Sprinkle with coarse salt', 'Serve with mustard or beer', 150, 30, 120, 6, 'https://example.com/photos/german-pretzel.jpg', 'Photo of German Pretzel', 13),
('Cooking', 3, 'Turkish Baklava', 'Rich, sweet pastry made of layers of filo filled with chopped nuts and sweetened with syrup or honey.', 'Use fresh filo dough', 'Butter every layer', 'Cut before baking', 330, 60, 270, 12, 'https://example.com/photos/turkish-baklava.jpg', 'Photo of Turkish Baklava', 14),
('Cooking', 1, 'Greek Salad', 'Fresh salad with tomatoes, cucumbers, onion, feta cheese, and olives.', 'Use fresh ingredients', 'Dress with olive oil and oregano', 'Add lemon juice for zest', 20, 10, 10, 4, 'https://example.com/photos/greek-salad.jpg', 'Photo of Greek Salad', 15),
('Cooking', 2, 'Portuguese Caldo Verde', 'Traditional Portuguese soup made with kale, potatoes, and chorizo.', 'Slice the kale thinly', 'Simmer until potatoes are tender', 'Serve with cornbread', 140, 20, 120, 4, 'https://example.com/photos/portuguese-caldo-verde.jpg', 'Photo of Portuguese Caldo Verde', 16),
('Cooking', 3, 'Russian Pelmeni', 'Dumplings consisting of a filling wrapped in thin, unleavened dough.', 'Use a mix of pork and beef', 'Serve with sour cream', 'Boil until they float', 210, 60, 150, 6, 'https://example.com/photos/russian-pelmeni.jpg', 'Photo of Russian Pelmeni', 17),
('Cooking', 3, 'Brazilian Coxinha', 'Popular Brazilian snack; chicken croquettes shaped into a drumstick.', 'Use finely shredded chicken', 'Coat with breadcrumbs', 'Deep fry until golden', 180, 40, 140, 8, 'https://example.com/photos/brazilian-coxinha.jpg', 'Photo of Brazilian Coxinha', 18),
('Cooking', 2, 'Egyptian Ful Medames', 'Traditional Egyptian fava bean stew.', 'Soak beans overnight', 'Cook with cumin and garlic', 'Serve with boiled eggs', 420, 120, 300, 4, 'https://example.com/photos/egyptian-ful-medames.jpg', 'Photo of Egyptian Ful Medames', 19),
('Cooking', 2, 'South African Chakalaka', 'Spicy vegetable relish traditionally served with bread, pap, or stews.', 'Use fresh produce', 'Spice with curry powder', 'Can be served hot or cold', 110, 20, 90, 4, 'https://example.com/photos/south-african-chakalaka.jpg', 'Photo of South African Chakalaka', 20),
('Cooking', 3, 'Moroccan Couscous', 'Steamed balls of crushed durum wheat semolina served with stew.', 'Use a couscousiere', 'Fluff with butter', 'Serve with vegetable or meat stew', 300, 30, 270, 6, 'https://example.com/photos/moroccan-couscous.jpg', 'Photo of Moroccan Couscous', 21),
('Pastry', 2, 'Australian Lamingtons', 'Sponge cake squares coated in chocolate and rolled in desiccated coconut.', 'Ensure cake is cooled before cutting', 'Dip in chocolate syrup', 'Roll in coconut', 150, 30, 120, 12, 'https://example.com/photos/australian-lamingtons.jpg', 'Photo of Australian Lamingtons', 22),
('Cooking', 2, 'Canadian Tourtière', 'Traditional Canadian meat pie usually made from minced pork and spices.', 'Use a mix of ground meat', 'Season well with spices', 'Serve with ketchup or chutney', 240, 30, 210, 6, 'https://example.com/photos/canadian-tourtiere.jpg', 'Photo of Canadian Tourtière', 23),
('Cooking', 4, 'Argentinian Empanadas', 'Stuffed bread or pastry baked or fried in many countries of Latin America and the south of Europe.', 'Use homemade dough', 'Fill with beef, chicken, or cheese', 'Seal edges with a fork', 160, 40, 120, 6, 'https://example.com/photos/argentinian-empanadas.jpg', 'Photo of Argentinian Empanadas', 24),
('Pastry', 2, 'Belgian Speculoos', 'Traditional spiced shortcrust biscuit, baked for consumption on or just before St Nicholas\' day in the Netherlands and Belgium.', 'Use a blend of spices including cinnamon, nutmeg, cloves, ginger, cardamom, and white pepper', 'Roll dough thin and evenly', 'Serve with coffee or tea', 100, 20, 80, 24, 'https://example.com/photos/belgian-speculoos.jpg', 'Photo of Belgian Speculoos', 25);


# Nutritional Value #

INSERT INTO Nutritional_Value (ID_Recipe, Carbs_per_Portion, Protein_per_Portion, Fat_per_Portion, Cals_per_Portion)
VALUES
(1, 30, 15, 10, (30 * 4) + (15 * 4) + (10 * 9)), -- Italian Pizza
(2, 40, 10, 15, (40 * 4) + (10 * 4) + (15 * 9)), -- Chinese Mooncake
(3, 20, 25, 20, (20 * 4) + (25 * 4) + (20 * 9)), -- Indian Curry
(4, 15, 30, 25, (15 * 4) + (30 * 4) + (25 * 9)), -- French Coq au Vin
(5, 20, 10, 15, (20 * 4) + (10 * 4) + (15 * 9)), -- Mexican Tacos
(6, 30, 20, 25, (30 * 4) + (20 * 4) + (25 * 9)), -- Japanese Cheesecake
(7, 25, 15, 20, (25 * 4) + (15 * 4) + (20 * 9)), -- Thai Green Curry
(8, 35, 20, 30, (35 * 4) + (20 * 4) + (30 * 9)), -- Spanish Paella
(9, 20, 25, 15, (20 * 4) + (25 * 4) + (15 * 9)), -- Korean Bibimbap
(10, 30, 20, 25, (30 * 4) + (20 * 4) + (25 * 9)), -- Vietnamese Pho
(11, 25, 10, 20, (25 * 4) + (10 * 4) + (20 * 9)), -- American Apple Pie
(12, 20, 30, 25, (20 * 4) + (30 * 4) + (25 * 9)), -- British Fish and Chips
(13, 15, 25, 30, (15 * 4) + (25 * 4) + (30 * 9)), -- German Sausage Platter
(14, 10, 30, 20, (10 * 4) + (30 * 4) + (20 * 9)), -- Turkish Kebab
(15, 25, 15, 20, (25 * 4) + (15 * 4) + (20 * 9)), -- Greek Gyro
(16, 30, 20, 25, (30 * 4) + (20 * 4) + (25 * 9)), -- Portuguese Bacalhau
(17, 20, 25, 15, (20 * 4) + (25 * 4) + (15 * 9)), -- Russian Borsch
(18, 25, 30, 30, (25 * 4) + (30 * 4) + (30 * 9)), -- Brazilian Feijoada
(19, 15, 20, 25, (15 * 4) + (20 * 4) + (25 * 9)), -- Egyptian Koshari
(20, 25, 30, 20, (25 * 4) + (30 * 4) + (20 * 9)), -- South African Bobotie
(21, 30, 25, 25, (30 * 4) + (25 * 4) + (25 * 9)), -- Moroccan Tagine
(22, 20, 15, 20, (20 * 4) + (15 * 4) + (20 * 9)), -- Australian Meat Pie
(23, 15, 20, 25, (15 * 4) + (20 * 4) + (25 * 9)), -- Canadian Poutine
(24, 25, 30, 30, (25 * 4) + (30 * 4) + (30 * 9)), -- Argentinian Asado
(25, 20, 10, 15, (20 * 4) + (10 * 4) + (15 * 9)), -- Belgian Waffles
(26, 30, 15, 10, (30 * 4) + (15 * 4) + (10 * 9)), -- Italian Risotto
(27, 40, 10, 15, (40 * 4) + (10 * 4) + (15 * 9)), -- Chinese Dumplings
(28, 20, 25, 20, (20 * 4) + (25 * 4) + (20 * 9)), -- Indian Samosa
(29, 15, 30, 25, (15 * 4) + (30 * 4) + (25 * 9)), -- French Ratatouille
(30, 20, 10, 15, (20 * 4) + (10 * 4) + (15 * 9)), -- Mexican Enchiladas
(31, 30, 20, 25, (30 * 4) + (20 * 4) + (25 * 9)), -- Japanese Mochi
(32, 25, 15, 20, (25 * 4) + (15 * 4) + (20 * 9)), -- Thai Tom Yum Goong
(33, 35, 20, 30, (35 * 4) + (20 * 4) + (30 * 9)), -- Spanish Churros
(34, 20, 25, 15, (20 * 4) + (25 * 4) + (15 * 9)), -- Korean Kimchi Stew
(35, 30, 20, 25, (30 * 4) + (20 * 4) + (25 * 9)), -- Vietnamese Banh Mi
(36, 25, 10, 20, (25 * 4) + (10 * 4) + (20 * 9)), -- American Brownies
(37, 20, 30, 25, (20 * 4) + (30 * 4) + (25 * 9)), -- British Shepherd’s Pie
(38, 15, 25, 30, (15 * 4) + (25 * 4) + (30 * 9)), -- German Pretzel
(39, 10, 30, 20, (10 * 4) + (30 * 4) + (20 * 9)), -- Turkish Baklava
(40, 25, 15, 20, (25 * 4) + (15 * 4) + (20 * 9)), -- Greek Salad
(41, 30, 20, 25, (30 * 4) + (20 * 4) + (25 * 9)), -- Portuguese Caldo Verde
(42, 20, 25, 15, (20 * 4) + (25 * 4) + (15 * 9)), -- Russian Pelmeni
(43, 25, 30, 30, (25 * 4) + (30 * 4) + (30 * 9)), -- Brazilian Coxinha
(44, 15, 20, 25, (15 * 4) + (20 * 4) + (25 * 9)), -- Egyptian Ful Medames
(45, 25, 30, 20, (25 * 4) + (30 * 4) + (20 * 9)), -- South African Chakalaka
(46, 30, 25, 25, (30 * 4) + (25 * 4) + (25 * 9)), -- Moroccan Couscous
(47, 20, 15, 20, (20 * 4) + (15 * 4) + (20 * 9)), -- Australian Lamingtons
(48, 15, 20, 25, (15 * 4) + (20 * 4) + (25 * 9)), -- Canadian Tourtière
(49, 25, 30, 30, (25 * 4) + (30 * 4) + (30 * 9)), -- Argentinian Empanadas
(50, 20, 10, 15, (20 * 4) + (10 * 4) + (15 * 9)); -- Belgian Chocolate Mousse


# Ingredients #

INSERT INTO Ingredient (Name, Quantity, Is_Primary, Photo, Photo_Description, ID_Food_Category, ID_Recipe) VALUES
-- Ingredients for Italian Pizza (Recipe ID 1)
('Flour', '200g', FALSE, 'http://example.com/photos/flour.jpg', 'Photo of wheat flour.', 4, 1),
('Tomato Sauce', '100g', TRUE, 'http://example.com/photos/tomato_sauce.jpg', 'Photo of tomato sauce.', 2, 1),
('Mozzarella Cheese', '100g', FALSE, 'http://example.com/photos/mozzarella.jpg', 'Photo of mozzarella cheese.', 3, 1),
('Basil', '5 leaves', FALSE, 'http://example.com/photos/basil.jpg', 'Photo of fresh basil leaves.', 2, 1),
('Olive Oil', '2 tbsp', FALSE, 'http://example.com/photos/olive_oil.jpg', 'Photo of olive oil.', 7, 1),
-- Ingredients for Chinese Mooncake (Recipe ID 2)
('Lotus Seed Paste', '150g', TRUE, 'http://example.com/photos/lotus_seed_paste.jpg', 'Photo of lotus seed paste.', 8, 2),
('Flour', '200g', FALSE, 'http://example.com/photos/flour.jpg', 'Photo of wheat flour.', 4, 2),
('Egg Yolk', '1 unit', FALSE, 'http://example.com/photos/egg_yolk.jpg', 'Photo of an egg yolk.', 3, 2),
('Sugar', '50g', FALSE, 'http://example.com/photos/sugar.jpg', 'Photo of sugar.', 8, 2),
('Salt', '1 tsp', FALSE, 'http://example.com/photos/salt.jpg', 'Photo of salt.', 5, 2),
-- Ingredients for Indian Curry (Recipe ID 3)
('Chicken', '200g', TRUE, 'http://example.com/photos/chicken.jpg', 'Photo of raw chicken.', 1, 3),
('Onions', '100g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of chopped onions.', 2, 3),
('Garlic', '20g', FALSE, 'http://example.com/photos/garlic.jpg', 'Photo of garlic cloves.', 2, 3),
('Curry Powder', '2 tbsp', FALSE, 'http://example.com/photos/curry_powder.jpg', 'Photo of curry powder.', 5, 3),
('Coconut Milk', '100 ml', FALSE, 'http://example.com/photos/coconut_milk.jpg', 'Photo of coconut milk.', 3, 3),
-- Ingredients for French Coq au Vin (Recipe ID 4)
('Chicken', '500g', TRUE, 'http://example.com/photos/chicken.jpg', 'Photo of raw chicken.', 1, 4),
('Red Wine', '250ml', FALSE, 'http://example.com/photos/red_wine.jpg', 'Photo of red wine.', 8, 4),
('Mushrooms', '100g', FALSE, 'http://example.com/photos/mushrooms.jpg', 'Photo of mushrooms.', 2, 4),
('Onions', '100g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 4),
('Bacon', '50g', FALSE, 'http://example.com/photos/bacon.jpg', 'Photo of bacon.', 1, 4),
-- Ingredients for Mexican Tacos (Recipe ID 5)
('Tortillas', '3 units', FALSE, 'http://example.com/photos/tortillas.jpg', 'Photo of tortillas.', 4, 5),
('Beef', '200g', TRUE, 'http://example.com/photos/beef.jpg', 'Photo of raw beef.', 1, 5),
('Onions', '50g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of chopped onions.', 2, 5),
('Cilantro', '30g', FALSE, 'http://example.com/photos/cilantro.jpg', 'Photo of cilantro.', 2, 5),
('Lime', '1 unit', FALSE, 'http://example.com/photos/lime.jpg', 'Photo of a lime.', 6, 5),
-- Ingredients for Japanese Cheesecake (Recipe ID 6)
('Cream Cheese', '200g', TRUE, 'http://example.com/photos/cream_cheese.jpg', 'Photo of cream cheese.', 3, 6),
('Sugar', '100g', FALSE, 'http://example.com/photos/sugar.jpg', 'Photo of sugar.', 8, 6),
('Eggs', '3 units', FALSE, 'http://example.com/photos/eggs.jpg', 'Photo of eggs.', 3, 6),
('Flour', '50g', FALSE, 'http://example.com/photos/flour.jpg', 'Photo of wheat flour.', 4, 6),
('Lemon Juice', '2 tbsp', FALSE, 'http://example.com/photos/lemon.jpg', 'Photo of a lemon.', 6, 6),
-- Ingredients for Thai Green Curry (Recipe ID 7)
('Chicken', '300g', TRUE, 'http://example.com/photos/chicken.jpg', 'Photo of raw chicken.', 1, 7),
('Coconut Milk', '400 ml', FALSE, 'http://example.com/photos/coconut_milk.jpg', 'Photo of coconut milk.', 3, 7),
('Green Curry Paste', '3 tbsp', FALSE, 'http://example.com/photos/green_curry_paste.jpg', 'Photo of green curry paste.', 5, 7),
('Eggplant', '100g', FALSE, 'http://example.com/photos/eggplant.jpg', 'Photo of eggplant.', 2, 7),
('Basil', '10g', FALSE, 'http://example.com/photos/basil.jpg', 'Photo of basil leaves.', 2, 7),
-- Ingredients for Spanish Paella (Recipe ID 8)
('Rice', '200g', FALSE, 'http://example.com/photos/rice.jpg', 'Photo of rice.', 4, 8),
('Chicken', '200g', TRUE, 'http://example.com/photos/chicken.jpg', 'Photo of raw chicken.', 1, 8),
('Seafood Mix', '200g', FALSE, 'http://example.com/photos/seafood.jpg', 'Photo of seafood.', 1, 8),
('Peppers', '100g', FALSE, 'http://example.com/photos/peppers.jpg', 'Photo of bell peppers.', 2, 8),
('Saffron', '1 tsp', FALSE, 'http://example.com/photos/saffron.jpg', 'Photo of saffron.', 5, 8),
-- Ingredients for Korean Bibimbap (Recipe ID 9)
('Rice', '200g', FALSE, 'http://example.com/photos/rice.jpg', 'Photo of cooked rice.', 4, 9),
('Beef', '150g', TRUE, 'http://example.com/photos/beef.jpg', 'Photo of raw beef.', 1, 9),
('Carrots', '50g', FALSE, 'http://example.com/photos/carrots.jpg', 'Photo of carrots.', 2, 9),
('Spinach', '50g', FALSE, 'http://example.com/photos/spinach.jpg', 'Photo of spinach.', 2, 9),
('Gochujang', '2 tbsp', FALSE, 'http://example.com/photos/gochujang.jpg', 'Photo of gochujang (Korean chili paste).', 5, 9),
-- Ingredients for Vietnamese Pho (Recipe ID 10)
('Beef Broth', '500ml', TRUE, 'http://example.com/photos/beef_broth.jpg', 'Photo of beef broth.', 1, 10),
('Rice Noodles', '200g', FALSE, 'http://example.com/photos/rice_noodles.jpg', 'Photo of rice noodles.', 4, 10),
('Beef', '100g', FALSE, 'http://example.com/photos/beef.jpg', 'Photo of raw beef.', 1, 10),
('Onions', '50g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 10),
('Cilantro', '20g', FALSE, 'http://example.com/photos/cilantro.jpg', 'Photo of cilantro.', 2, 10),
-- Ingredients for American Apple Pie (Recipe ID 11)
('Apples', '500g', TRUE, 'http://example.com/photos/apples.jpg', 'Photo of apples.', 6, 11),
('Sugar', '100g', FALSE, 'http://example.com/photos/sugar.jpg', 'Photo of sugar.', 8, 11),
('Flour', '300g', FALSE, 'http://example.com/photos/flour.jpg', 'Photo of wheat flour.', 4, 11),
('Butter', '150g', FALSE, 'http://example.com/photos/butter.jpg', 'Photo of butter.', 3, 11),
('Cinnamon', '1 tsp', FALSE, 'http://example.com/photos/cinnamon.jpg', 'Photo of cinnamon.', 5, 11),
-- Ingredients for British Fish and Chips (Recipe ID 12)
('Fish Fillets', '400g', TRUE, 'http://example.com/photos/fish_fillets.jpg', 'Photo of fish fillets.', 1, 12),
('Potatoes', '400g', FALSE, 'http://example.com/photos/potatoes.jpg', 'Photo of potatoes.', 2, 12),
('Flour', '200g', FALSE, 'http://example.com/photos/flour.jpg', 'Photo of wheat flour.', 4, 12),
('Beer', '250ml', FALSE, 'http://example.com/photos/beer.jpg', 'Photo of beer.', 8, 12),
('Salt', 'to taste', FALSE, 'http://example.com/photos/salt.jpg', 'Photo of salt.', 5, 12),
-- Ingredients for German Sausage Platter (Recipe ID 13)
('Sausages', '500g', TRUE, 'http://example.com/photos/sausages.jpg', 'Photo of various sausages.', 1, 13),
('Sauerkraut', '200g', FALSE, 'http://example.com/photos/sauerkraut.jpg', 'Photo of sauerkraut.', 2, 13),
('Mustard', '50g', FALSE, 'http://example.com/photos/mustard.jpg', 'Photo of mustard.', 5, 13),
('Potatoes', '300g', FALSE, 'http://example.com/photos/potatoes.jpg', 'Photo of potatoes.', 2, 13),
('Onions', '100g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 13),
-- Ingredients for Turkish Kebab (Recipe ID 14)
('Lamb', '500g', TRUE, 'http://example.com/photos/lamb.jpg', 'Photo of lamb meat.', 1, 14),
('Onions', '100g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 14),
('Garlic', '20g', FALSE, 'http://example.com/photos/garlic.jpg', 'Photo of garlic cloves.', 2, 14),
('Tomatoes', '200g', FALSE, 'http://example.com/photos/tomatoes.jpg', 'Photo of tomatoes.', 2, 14),
('Paprika', '1 tbsp', FALSE, 'http://example.com/photos/paprika.jpg', 'Photo of paprika spice.', 5, 14),
-- Ingredients for Greek Gyro (Recipe ID 15)
('Pork', '500g', TRUE, 'http://example.com/photos/pork.jpg', 'Photo of pork slices.', 1, 15),
('Pita Bread', '4 units', FALSE, 'http://example.com/photos/pita_bread.jpg', 'Photo of pita bread.', 4, 15),
('Tzatziki Sauce', '100g', FALSE, 'http://example.com/photos/tzatziki.jpg', 'Photo of tzatziki sauce.', 3, 15),
('Onions', '100g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 15),
('Tomatoes', '150g', FALSE, 'http://example.com/photos/tomatoes.jpg', 'Photo of tomatoes.', 2, 15),
-- Ingredients for Portuguese Bacalhau (Recipe ID 16)
('Salted Cod', '500g', TRUE, 'http://example.com/photos/salted_cod.jpg', 'Photo of salted cod.', 1, 16),
('Potatoes', '300g', FALSE, 'http://example.com/photos/potatoes.jpg', 'Photo of potatoes.', 2, 16),
('Onions', '150g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 16),
('Eggs', '3 units', FALSE, 'http://example.com/photos/eggs.jpg', 'Photo of eggs.', 3, 16),
('Olive Oil', '100ml', FALSE, 'http://example.com/photos/olive_oil.jpg', 'Photo of olive oil.', 7, 16),
-- Ingredients for Russian Borsch (Recipe ID 17)
('Beetroot', '400g', TRUE, 'http://example.com/photos/beetroot.jpg', 'Photo of beetroot.', 2, 17),
('Cabbage', '200g', FALSE, 'http://example.com/photos/cabbage.jpg', 'Photo of cabbage.', 2, 17),
('Carrots', '100g', FALSE, 'http://example.com/photos/carrots.jpg', 'Photo of carrots.', 2, 17),
('Potatoes', '300g', FALSE, 'http://example.com/photos/potatoes.jpg', 'Photo of potatoes.', 2, 17),
('Sour Cream', '100g', FALSE, 'http://example.com/photos/sour_cream.jpg', 'Photo of sour cream.', 3, 17),
-- Ingredients for Brazilian Feijoada (Recipe ID 18)
('Black Beans', '400g', TRUE, 'http://example.com/photos/black_beans.jpg', 'Photo of black beans.', 2, 18),
('Pork Meat', '300g', FALSE, 'http://example.com/photos/pork.jpg', 'Photo of pork meat.', 1, 18),
('Beef Sausage', '200g', FALSE, 'http://example.com/photos/beef_sausage.jpg', 'Photo of beef sausage.', 1, 18),
('Bacon', '100g', FALSE, 'http://example.com/photos/bacon.jpg', 'Photo of bacon.', 1, 18),
('Garlic', '20g', FALSE, 'http://example.com/photos/garlic.jpg', 'Photo of garlic cloves.', 2, 18),
-- Ingredients for Egyptian Koshari (Recipe ID 19)
('Rice', '200g', TRUE, 'http://example.com/photos/rice.jpg', 'Photo of rice.', 4, 19),
('Macaroni', '100g', FALSE, 'http://example.com/photos/macaroni.jpg', 'Photo of macaroni.', 4, 19),
('Lentils', '150g', FALSE, 'http://example.com/photos/lentils.jpg', 'Photo of lentils.', 2, 19),
('Tomato Sauce', '150ml', FALSE, 'http://example.com/photos/tomato_sauce.jpg', 'Photo of tomato sauce.', 2, 19),
('Onions', '100g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 19),
-- Ingredients for South African Bobotie (Recipe ID 20)
('Minced Meat', '500g', TRUE, 'http://example.com/photos/minced_meat.jpg', 'Photo of minced meat.', 1, 20),
('Bread', '2 slices', FALSE, 'http://example.com/photos/bread.jpg', 'Photo of bread.', 4, 20),
('Milk', '100ml', FALSE, 'http://example.com/photos/milk.jpg', 'Photo of milk.', 3, 20),
('Curry Powder', '2 tbsp', FALSE, 'http://example.com/photos/curry_powder.jpg', 'Photo of curry powder.', 5, 20),
('Eggs', '2 units', FALSE, 'http://example.com/photos/eggs.jpg', 'Photo of eggs.', 3, 20),
-- Ingredients for Moroccan Tagine (Recipe ID 21)
('Lamb', '500g', TRUE, 'http://example.com/photos/lamb.jpg', 'Photo of lamb meat.', 1, 21),
('Prunes', '100g', FALSE, 'http://example.com/photos/prunes.jpg', 'Photo of prunes.', 6, 21),
('Almonds', '50g', FALSE, 'http://example.com/photos/almonds.jpg', 'Photo of almonds.', 2, 21),
('Onions', '150g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 21),
('Cinnamon', '1 tsp', FALSE, 'http://example.com/photos/cinnamon.jpg', 'Photo of cinnamon.', 5, 21),
-- Ingredients for Australian Meat Pie (Recipe ID 22)
('Minced Beef', '400g', TRUE, 'http://example.com/photos/minced_beef.jpg', 'Photo of minced beef.', 1, 22),
('Onion', '100g', FALSE, 'http://example.com/photos/onion.jpg', 'Photo of onion.', 2, 22),
('Beef Broth', '200ml', FALSE, 'http://example.com/photos/beef_broth.jpg', 'Photo of beef broth.', 1, 22),
('Flour', '50g', FALSE, 'http://example.com/photos/flour.jpg', 'Photo of flour.', 4, 22),
('Puff Pastry', '1 sheet', FALSE, 'http://example.com/photos/puff_pastry.jpg', 'Photo of puff pastry.', 4, 22),
-- Ingredients for Canadian Poutine (Recipe ID 23)
('Potatoes', '500g', TRUE, 'http://example.com/photos/potatoes.jpg', 'Photo of potatoes.', 2, 23),
('Cheese Curds', '200g', FALSE, 'http://example.com/photos/cheese_curds.jpg', 'Photo of cheese curds.', 3, 23),
('Gravy', '300ml', FALSE, 'http://example.com/photos/gravy.jpg', 'Photo of gravy.', 8, 23),
('Garlic Powder', '1 tsp', FALSE, 'http://example.com/photos/garlic_powder.jpg', 'Photo of garlic powder.', 5, 23),
('Vegetable Oil', 'for frying', FALSE, 'http://example.com/photos/vegetable_oil.jpg', 'Photo of vegetable oil.', 7, 23),
-- Ingredients for Argentinian Asado (Recipe ID 24)
('Beef Ribs', '1 kg', TRUE, 'http://example.com/photos/beef_ribs.jpg', 'Photo of beef ribs.', 1, 24),
('Sausages', '200g', FALSE, 'http://example.com/photos/sausages.jpg', 'Photo of sausages.', 1, 24),
('Chimichurri', '100ml', FALSE, 'http://example.com/photos/chimichurri.jpg', 'Photo of chimichurri sauce.', 5, 24),
('Salt', 'to taste', FALSE, 'http://example.com/photos/salt.jpg', 'Photo of salt.', 5, 24),
('Charcoal', 'as needed', FALSE, 'http://example.com/photos/charcoal.jpg', 'Photo of charcoal.', 8, 24),
-- Ingredients for Belgian Waffles (Recipe ID 25)
('Flour', '250g', FALSE, 'http://example.com/photos/flour.jpg', 'Photo of flour.', 4, 25),
('Eggs', '2 units', TRUE, 'http://example.com/photos/eggs.jpg', 'Photo of eggs.', 3, 25),
('Milk', '200ml', FALSE, 'http://example.com/photos/milk.jpg', 'Photo of milk.', 3, 25),
('Butter', '50g', FALSE, 'http://example.com/photos/butter.jpg', 'Photo of melted butter.', 3, 25),
('Sugar', '2 tbsp', FALSE, 'http://example.com/photos/sugar.jpg', 'Photo of sugar.', 8, 25),
-- Ingredients for Italian Risotto (Recipe ID 26)
('Arborio Rice', '200g', TRUE, 'http://example.com/photos/arborio_rice.jpg', 'Photo of Arborio rice.', 4, 26),
('Chicken Broth', '500ml', FALSE, 'http://example.com/photos/chicken_broth.jpg', 'Photo of chicken broth.', 1, 26),
('Parmesan Cheese', '50g', FALSE, 'http://example.com/photos/parmesan.jpg', 'Photo of Parmesan cheese.', 3, 26),
('Onions', '100g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 26),
('White Wine', '100ml', FALSE, 'http://example.com/photos/white_wine.jpg', 'Photo of white wine.', 8, 26),
-- Ingredients for Chinese Dumplings (Recipe ID 27)
('Flour', '300g', TRUE, 'http://example.com/photos/flour.jpg', 'Photo of flour.', 4, 27),
('Ground Pork', '200g', FALSE, 'http://example.com/photos/ground_pork.jpg', 'Photo of ground pork.', 1, 27),
('Cabbage', '100g', FALSE, 'http://example.com/photos/cabbage.jpg', 'Photo of cabbage.', 2, 27),
('Ginger', '10g', FALSE, 'http://example.com/photos/ginger.jpg', 'Photo of ginger.', 2, 27),
('Soy Sauce', '2 tbsp', FALSE, 'http://example.com/photos/soy_sauce.jpg', 'Photo of soy sauce.', 8, 27),
-- Ingredients for Indian Samosa (Recipe ID 28)
('Potatoes', '300g', TRUE, 'http://example.com/photos/potatoes.jpg', 'Photo of potatoes.', 2, 28),
('Peas', '100g', FALSE, 'http://example.com/photos/peas.jpg', 'Photo of peas.', 2, 28),
('Flour', '200g', FALSE, 'http://example.com/photos/flour.jpg', 'Photo of flour for dough.', 4, 28),
('Cumin Seeds', '1 tsp', FALSE, 'http://example.com/photos/cumin_seeds.jpg', 'Photo of cumin seeds.', 5, 28),
('Oil', 'for frying', FALSE, 'http://example.com/photos/oil.jpg', 'Photo of cooking oil.', 7, 28),
-- Ingredients for French Ratatouille (Recipe ID 29)
('Tomatoes', '200g', TRUE, 'http://example.com/photos/tomatoes.jpg', 'Photo of tomatoes.', 2, 29),
('Eggplant', '150g', FALSE, 'http://example.com/photos/eggplant.jpg', 'Photo of eggplant.', 2, 29),
('Zucchini', '150g', FALSE, 'http://example.com/photos/zucchini.jpg', 'Photo of zucchini.', 2, 29),
('Bell Peppers', '150g', FALSE, 'http://example.com/photos/bell_peppers.jpg', 'Photo of bell peppers.', 2, 29),
('Onion', '100g', FALSE, 'http://example.com/photos/onion.jpg', 'Photo of onion.', 2, 29),
-- Ingredients for Mexican Enchiladas (Recipe ID 30)
('Corn Tortillas', '8 units', TRUE, 'http://example.com/photos/corn_tortillas.jpg', 'Photo of corn tortillas.', 4, 30),
('Enchilada Sauce', '300ml', FALSE, 'http://example.com/photos/enchilada_sauce.jpg', 'Photo of enchilada sauce.', 8, 30),
('Chicken', '200g', FALSE, 'http://example.com/photos/chicken.jpg', 'Photo of cooked chicken.', 1, 30),
('Cheese', '100g', FALSE, 'http://example.com/photos/cheese.jpg', 'Photo of shredded cheese.', 3, 30),
('Onions', '50g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 30),
-- Ingredients for Japanese Mochi (Recipe ID 31)
('Glutinous Rice Flour', '250g', TRUE, 'http://example.com/photos/glutinous_rice_flour.jpg', 'Photo of glutinous rice flour.', 4, 31),
('Sugar', '150g', FALSE, 'http://example.com/photos/sugar.jpg', 'Photo of sugar.', 8, 31),
('Water', '200ml', FALSE, 'http://example.com/photos/water.jpg', 'Photo of water.', 8, 31),
('Red Bean Paste', '200g', FALSE, 'http://example.com/photos/red_bean_paste.jpg', 'Photo of red bean paste.', 8, 31),
('Cornstarch', 'for dusting', FALSE, 'http://example.com/photos/cornstarch.jpg', 'Photo of cornstarch.', 4, 31),
-- Ingredients for Thai Tom Yum Goong (Recipe ID 32)
('Shrimp', '200g', TRUE, 'http://example.com/photos/shrimp.jpg', 'Photo of raw shrimp.', 1, 32),
('Lemongrass', '2 stalks', FALSE, 'http://example.com/photos/lemongrass.jpg', 'Photo of lemongrass.', 2, 32),
('Galangal', '20g', FALSE, 'http://example.com/photos/galangal.jpg', 'Photo of galangal.', 2, 32),
('Kaffir Lime Leaves', '5 leaves', FALSE, 'http://example.com/photos/kaffir_lime_leaves.jpg', 'Photo of kaffir lime leaves.', 2, 32),
('Fish Sauce', '2 tbsp', FALSE, 'http://example.com/photos/fish_sauce.jpg', 'Photo of fish sauce.', 8, 32),
-- Ingredients for Spanish Churros (Recipe ID 33)
('Flour', '200g', TRUE, 'http://example.com/photos/flour.jpg', 'Photo of flour.', 4, 33),
('Water', '250ml', FALSE, 'http://example.com/photos/water.jpg', 'Photo of water.', 8, 33),
('Sugar', '50g', FALSE, 'http://example.com/photos/sugar.jpg', 'Photo of sugar.', 8, 33),
('Salt', '1 tsp', FALSE, 'http://example.com/photos/salt.jpg', 'Photo of salt.', 5, 33),
('Vegetable Oil', 'for frying', FALSE, 'http://example.com/photos/vegetable_oil.jpg', 'Photo of vegetable oil.', 7, 33),
-- Ingredients for Korean Kimchi Stew (Recipe ID 34)
('Kimchi', '300g', TRUE, 'http://example.com/photos/kimchi.jpg', 'Photo of kimchi.', 2, 34),
('Pork Belly', '200g', FALSE, 'http://example.com/photos/pork_belly.jpg', 'Photo of pork belly.', 1, 34),
('Tofu', '200g', FALSE, 'http://example.com/photos/tofu.jpg', 'Photo of tofu.', 3, 34),
('Onions', '100g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 34),
('Garlic', '20g', FALSE, 'http://example.com/photos/garlic.jpg', 'Photo of garlic cloves.', 2, 34),
-- Ingredients for Vietnamese Banh Mi (Recipe ID 35)
('Baguette', '1 unit', TRUE, 'http://example.com/photos/baguette.jpg', 'Photo of a baguette.', 4, 35),
('Pork', '200g', FALSE, 'http://example.com/photos/pork.jpg', 'Photo of cooked pork.', 1, 35),
('Pickled Carrots', '50g', FALSE, 'http://example.com/photos/pickled_carrots.jpg', 'Photo of pickled carrots.', 2, 35),
('Cilantro', '20g', FALSE, 'http://example.com/photos/cilantro.jpg', 'Photo of cilantro.', 2, 35),
('Mayonnaise', '30ml', FALSE, 'http://example.com/photos/mayonnaise.jpg', 'Photo of mayonnaise.', 8, 35),
-- Ingredients for American Brownies (Recipe ID 36)
('Chocolate', '200g', TRUE, 'http://example.com/photos/chocolate.jpg', 'Photo of chocolate.', 8, 36),
('Butter', '100g', FALSE, 'http://example.com/photos/butter.jpg', 'Photo of butter.', 3, 36),
('Sugar', '200g', FALSE, 'http://example.com/photos/sugar.jpg', 'Photo of sugar.', 8, 36),
('Flour', '100g', FALSE, 'http://example.com/photos/flour.jpg', 'Photo of flour.', 4, 36),
('Eggs', '2 units', FALSE, 'http://example.com/photos/eggs.jpg', 'Photo of eggs.', 3, 36),
-- Ingredients for British Shepherd’s Pie (Recipe ID 37)
('Minced Lamb', '500g', TRUE, 'http://example.com/photos/minced_lamb.jpg', 'Photo of minced lamb.', 1, 37),
('Potatoes', '500g', FALSE, 'http://example.com/photos/potatoes.jpg', 'Photo of potatoes.', 2, 37),
('Carrots', '100g', FALSE, 'http://example.com/photos/carrots.jpg', 'Photo of carrots.', 2, 37),
('Peas', '100g', FALSE, 'http://example.com/photos/peas.jpg', 'Photo of peas.', 2, 37),
('Beef Broth', '200ml', FALSE, 'http://example.com/photos/beef_broth.jpg', 'Photo of beef broth.', 1, 37),
-- Ingredients for German Pretzel (Recipe ID 38)
('Flour', '500g', TRUE, 'http://example.com/photos/flour.jpg', 'Photo of flour.', 4, 38),
('Yeast', '10g', FALSE, 'http://example.com/photos/yeast.jpg', 'Photo of yeast.', 5, 38),
('Salt', '10g', FALSE, 'http://example.com/photos/salt.jpg', 'Photo of salt.', 5, 38),
('Butter', '50g', FALSE, 'http://example.com/photos/butter.jpg', 'Photo of butter.', 3, 38),
('Baking Soda', '30g', FALSE, 'http://example.com/photos/baking_soda.jpg', 'Photo for baking soda for boiling water.', 5, 38),
-- Ingredients for Turkish Baklava (Recipe ID 39)
('Phyllo Dough', '500g', TRUE, 'http://example.com/photos/phyllo_dough.jpg', 'Photo of phyllo dough.', 4, 39),
('Butter', '200g', FALSE, 'http://example.com/photos/butter.jpg', 'Photo of melted butter.', 3, 39),
('Walnuts', '300g', FALSE, 'http://example.com/photos/walnuts.jpg', 'Photo of crushed walnuts.', 2, 39),
('Sugar', '250g', FALSE, 'http://example.com/photos/sugar.jpg', 'Photo of sugar.', 8, 39),
('Honey', '150ml', FALSE, 'http://example.com/photos/honey.jpg', 'Photo of honey.', 8, 39),
-- Ingredients for Greek Salad (Recipe ID 40)
('Tomatoes', '200g', TRUE, 'http://example.com/photos/tomatoes.jpg', 'Photo of tomatoes.', 2, 40),
('Cucumbers', '150g', FALSE, 'http://example.com/photos/cucumbers.jpg', 'Photo of cucumbers.', 2, 40),
('Onions', '100g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 40),
('Feta Cheese', '150g', FALSE, 'http://example.com/photos/feta_cheese.jpg', 'Photo of feta cheese.', 3, 40),
('Olives', '50g', FALSE, 'http://example.com/photos/olives.jpg', 'Photo of olives.', 2, 40),
-- Ingredients for Portuguese Caldo Verde (Recipe ID 41)
('Potatoes', '500g', TRUE, 'http://example.com/photos/potatoes.jpg', 'Photo of potatoes.', 2, 41),
('Kale', '200g', FALSE, 'http://example.com/photos/kale.jpg', 'Photo of kale.', 2, 41),
('Chorizo', '150g', FALSE, 'http://example.com/photos/chorizo.jpg', 'Photo of chorizo sausage.', 1, 41),
('Onion', '100g', FALSE, 'http://example.com/photos/onion.jpg', 'Photo of onion.', 2, 41),
('Olive Oil', '50ml', FALSE, 'http://example.com/photos/olive_oil.jpg', 'Photo of olive oil.', 7, 41),
-- Ingredients for Russian Pelmeni (Recipe ID 42)
('Flour', '400g', TRUE, 'http://example.com/photos/flour.jpg', 'Photo of flour.', 4, 42),
('Ground Beef', '300g', FALSE, 'http://example.com/photos/ground_beef.jpg', 'Photo of ground beef.', 1, 42),
('Onions', '100g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 42),
('Garlic', '20g', FALSE, 'http://example.com/photos/garlic.jpg', 'Photo of garlic cloves.', 2, 42),
('Eggs', '2 units', FALSE, 'http://example.com/photos/eggs.jpg', 'Photo of eggs.', 3, 42),
-- Ingredients for Brazilian Coxinha (Recipe ID 43)
('Chicken', '300g', TRUE, 'http://example.com/photos/chicken.jpg', 'Photo of chicken.', 1, 43),
('Wheat Flour', '200g', FALSE, 'http://example.com/photos/flour.jpg', 'Photo of flour.', 4, 43),
('Butter', '50g', FALSE, 'http://example.com/photos/butter.jpg', 'Photo of butter.', 3, 43),
('Chicken Stock', '200ml', FALSE, 'http://example.com/photos/chicken_stock.jpg', 'Photo of chicken stock.', 1, 43),
('Breadcrumbs', '100g', FALSE, 'http://example.com/photos/breadcrumbs.jpg', 'Photo of breadcrumbs.', 4, 43),
-- Ingredients for Egyptian Ful Medames (Recipe ID 44)
('Fava Beans', '500g', TRUE, 'http://example.com/photos/fava_beans.jpg', 'Photo of fava beans.', 2, 44),
('Garlic', '20g', FALSE, 'http://example.com/photos/garlic.jpg', 'Photo of garlic cloves.', 2, 44),
('Lemon Juice', '50ml', FALSE, 'http://example.com/photos/lemon.jpg', 'Photo of lemon juice.', 6, 44),
('Olive Oil', '50ml', FALSE, 'http://example.com/photos/olive_oil.jpg', 'Photo of olive oil.', 7, 44),
('Cumin', '1 tsp', FALSE, 'http://example.com/photos/cumin.jpg', 'Photo of cumin powder.', 5, 44),
-- Ingredients for South African Chakalaka (Recipe ID 45)
('Carrots', '200g', TRUE, 'http://example.com/photos/carrots.jpg', 'Photo of carrots.', 2, 45),
('Bell Peppers', '150g', FALSE, 'http://example.com/photos/bell_peppers.jpg', 'Photo of bell peppers.', 2, 45),
('Onions', '100g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 45),
('Tomatoes', '200g', FALSE, 'http://example.com/photos/tomatoes.jpg', 'Photo of tomatoes.', 2, 45),
('Curry Powder', '1 tbsp', FALSE, 'http://example.com/photos/curry_powder.jpg', 'Photo of curry powder.', 5, 45),
-- Ingredients for Moroccan Couscous (Recipe ID 46)
('Couscous', '300g', TRUE, 'http://example.com/photos/couscous.jpg', 'Photo of couscous.', 4, 46),
('Chicken', '200g', FALSE, 'http://example.com/photos/chicken.jpg', 'Photo of chicken.', 1, 46),
('Zucchini', '100g', FALSE, 'http://example.com/photos/zucchini.jpg', 'Photo of zucchini.', 2, 46),
('Chickpeas', '150g', FALSE, 'http://example.com/photos/chickpeas.jpg', 'Photo of chickpeas.', 2, 46),
('Raisins', '50g', FALSE, 'http://example.com/photos/raisins.jpg', 'Photo of raisins.', 6, 46),
-- Ingredients for Australian Lamingtons (Recipe ID 47)
('Butter', '200g', TRUE, 'http://example.com/photos/butter.jpg', 'Photo of butter.', 3, 47),
('Sugar', '200g', FALSE, 'http://example.com/photos/sugar.jpg', 'Photo of sugar.', 8, 47),
('Flour', '250g', FALSE, 'http://example.com/photos/flour.jpg', 'Photo of flour.', 4, 47),
('Desiccated Coconut', '100g', FALSE, 'http://example.com/photos/coconut.jpg', 'Photo of desiccated coconut.', 6, 47),
('Eggs', '4 units', FALSE, 'http://example.com/photos/eggs.jpg', 'Photo of eggs.', 3, 47),
-- Ingredients for Canadian Tourtière (Recipe ID 48)
('Ground Pork', '300g', TRUE, 'http://example.com/photos/ground_pork.jpg', 'Photo of ground pork.', 1, 48),
('Potatoes', '200g', FALSE, 'http://example.com/photos/potatoes.jpg', 'Photo of potatoes.', 2, 48),
('Onions', '100g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 48),
('Beef Broth', '100ml', FALSE, 'http://example.com/photos/beef_broth.jpg', 'Photo of beef broth.', 1, 48),
('Allspice', '1 tsp', FALSE, 'http://example.com/photos/allspice.jpg', 'Photo of allspice.', 5, 48),
-- Ingredients for Argentinian Empanadas (Recipe ID 49)
('Ground Beef', '400g', TRUE, 'http://example.com/photos/ground_beef.jpg', 'Photo of ground beef.', 1, 49),
('Onions', '200g', FALSE, 'http://example.com/photos/onions.jpg', 'Photo of onions.', 2, 49),
('Bell Peppers', '100g', FALSE, 'http://example.com/photos/bell_peppers.jpg', 'Photo of bell peppers.', 2, 49),
('Eggs', '2 units', FALSE, 'http://example.com/photos/eggs.jpg', 'Photo of eggs.', 3, 49),
('Olives', '50g', FALSE, 'http://example.com/photos/olives.jpg', 'Photo of olives.', 2, 49),
-- Ingredients for Belgian Speculoos (Recipe ID 50)
('Flour', '250g', TRUE, 'http://example.com/photos/flour.jpg', 'Photo of flour.', 4, 50),
('Brown Sugar', '200g', FALSE, 'http://example.com/photos/brown_sugar.jpg', 'Photo of brown sugar.', 8, 50),
('Butter', '150g', FALSE, 'http://example.com/photos/butter.jpg', 'Photo of butter.', 3, 50);


# Steps #

-- Italian Pizza
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(1, 1, 'Preheat your oven to the highest setting, typically around 500°F (260°C).'),
(1, 2, 'If using a pizza stone, place it in the oven to preheat as well.'),
(1, 3, 'Roll out the pizza dough on a lightly floured surface into a circle of desired thickness.'),
(1, 4, 'Transfer the rolled-out dough onto a piece of parchment paper.'),
(1, 5, 'Spread tomato sauce evenly over the dough, leaving a small border around the edges.'),
(1, 6, 'Evenly distribute slices of fresh mozzarella cheese over the sauce.'),
(1, 7, 'Arrange fresh basil leaves on top of the cheese.'),
(1, 8, 'Drizzle pizza with olive oil and sprinkle with salt and pepper.'),
(1, 9, 'Slide pizza and parchment paper onto the preheated pizza stone or baking sheet in the oven.'),
(1, 10, 'Bake pizza for 12-15 minutes until crust is golden brown and cheese is bubbly and slightly browned.');

-- Chinese Mooncake
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(2, 1, 'Prepare the mooncake molds by dusting them lightly with flour and tapping out any excess.'),
(2, 2, 'Divide the lotus seed paste into equal portions, depending on the size of your molds.'),
(2, 3, 'Roll each portion of lotus seed paste into a ball and flatten slightly.'),
(2, 4, 'Place a flattened ball of lotus seed paste into each mooncake mold, pressing down gently to fill the mold completely.'),
(2, 5, 'Place a salted egg yolk in the center of each filled mold, if using.'),
(2, 6, 'Divide the remaining lotus seed paste into equal portions and roll each portion into a ball.'),
(2, 7, 'Flatten each ball of lotus seed paste into a thin disc and place over the filled molds, sealing the edges well.'),
(2, 8, 'Carefully unmold each mooncake and place them on a baking sheet lined with parchment paper.'),
(2, 9, 'Bake the mooncakes in a preheated oven at 350°F (180°C) for 15-20 minutes until golden brown and cooked through.'),
(2, 10, 'Allow the mooncakes to cool completely before storing them in an airtight container in a cool, dry place.');

-- Indian Curry
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(3, 1, 'Heat oil in a large pan over medium heat.'),
(3, 2, 'Add diced chicken pieces and cook until browned on all sides, then remove from the pan and set aside.'),
(3, 3, 'In the same pan, add chopped onions and cook until softened and translucent.'),
(3, 4, 'Add minced garlic, ginger, and diced tomatoes to the pan, and cook until tomatoes are soft and pulpy.'),
(3, 5, 'Stir in Indian curry powder or garam masala, ground cumin, ground coriander, turmeric, and chili powder, and cook for 1-2 minutes until fragrant.'),
(3, 6, 'Return the cooked chicken to the pan and stir to coat with the spices.'),
(3, 7, 'Pour in coconut milk and chicken broth, and bring to a simmer. Cook for 20-25 minutes until the sauce has thickened and the chicken is cooked through.'),
(3, 8, 'Season with salt and pepper to taste, and adjust the consistency of the sauce as desired with more broth or coconut milk.'),
(3, 9, 'Garnish with chopped cilantro and serve hot with steamed basmati rice or naan bread.');

-- French Coq au Vin
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(4, 1, 'In a large Dutch oven or heavy-bottomed pot, cook bacon over medium heat until crispy. Remove bacon and set aside, leaving the drippings in the pot.'),
(4, 2, 'Season chicken pieces with salt and pepper, then add them to the pot with the bacon drippings. Cook until browned on all sides, then remove and set aside.'),
(4, 3, 'Add chopped onions, carrots, and celery to the pot, and cook until softened and lightly browned.'),
(4, 4, 'Stir in minced garlic and tomato paste, and cook for 1-2 minutes until fragrant.'),
(4, 5, 'Return the cooked bacon and chicken pieces to the pot, then pour in red wine and chicken broth, enough to cover the chicken.'),
(4, 6, 'Add fresh thyme, bay leaves, and pearl onions to the pot, and bring to a simmer. Cover and cook for 1-1.5 hours until chicken is tender and cooked through.'),
(4, 7, 'In a separate pan, sauté mushrooms in butter until golden brown and cooked through, then add them to the pot with the chicken and vegetables.'),
(4, 8, 'Season the coq au vin with salt and pepper to taste, and garnish with chopped parsley before serving hot.');

-- Mexican Tacos
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(5, 1, 'Prepare the taco fillings by cooking your choice of meat or vegetables with desired seasonings until fully cooked and flavorful.'),
(5, 2, 'Warm corn tortillas in a dry skillet or on a grill until soft and pliable, about 30 seconds per side.'),
(5, 3, 'Assemble tacos by placing a spoonful of cooked filling onto each tortilla, then adding desired toppings such as shredded lettuce, diced tomatoes, chopped onions, cilantro, and cheese.'),
(5, 4, 'Drizzle tacos with salsa, hot sauce, or lime juice, if desired.'),
(5, 5, 'Serve tacos immediately with lime wedges on the side.');

-- Japanese Cheesecake
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(6, 1, 'Preheat oven to 320°F (160°C) and grease and line a round cake pan with parchment paper.'),
(6, 2, 'In a large mixing bowl, beat cream cheese until smooth and creamy, then add sugar and beat until light and fluffy.'),
(6, 3, 'Add egg yolks one at a time, beating well after each addition, then stir in lemon juice and vanilla extract.'),
(6, 4, 'Sift cake flour and cornstarch together, then gently fold into the cream cheese mixture until just combined.'),
(6, 5, 'In a separate bowl, beat egg whites until stiff peaks form.'),
(6, 6, 'Gently fold beaten egg whites into the batter in two additions until no white streaks remain.'),
(6, 7, 'Pour batter into the prepared cake pan and smooth the top with a spatula.'),
(6, 8, 'Place cake pan in a larger baking dish and pour hot water into the larger dish until it reaches halfway up the sides of the cake pan.'),
(6, 9, 'Bake cheesecake in the preheated oven for 70-80 minutes until set and lightly golden on top.'),
(6, 10, 'Turn off the oven and leave the cheesecake to cool in the oven with the door slightly ajar for 1-2 hours.'),
(6, 11, 'Remove cheesecake from the oven and refrigerate for at least 4 hours or overnight before serving.');

-- Thai Green Curry
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(7, 1, 'In a large pan or wok, heat oil over medium heat and add green curry paste. Cook for 1-2 minutes until fragrant.'),
(7, 2, 'Add sliced chicken or tofu to the pan and cook until browned on all sides.'),
(7, 3, 'Stir in coconut milk and bring to a simmer, then add sliced bamboo shoots, bell peppers, and Thai eggplant.'),
(7, 4, 'Simmer curry for 10-15 minutes until vegetables are tender and flavors have melded together.'),
(7, 5, 'Season curry with fish sauce, palm sugar, and lime juice to taste, adjusting the flavors as needed.'),
(7, 6, 'Stir in fresh basil leaves and Thai basil leaves, if available, and remove from heat.'),
(7, 7, 'Serve hot over steamed jasmine rice.');

-- Spanish Paella
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(8, 1, 'Heat olive oil in a large paella pan or skillet over medium heat.'),
(8, 2, 'Add diced onion and bell peppers to the pan and cook until softened and translucent.'),
(8, 3, 'Stir in minced garlic and cook for an additional minute until fragrant.'),
(8, 4, 'Add sliced chorizo sausage and cook until lightly browned and cooked through.'),
(8, 5, 'Pour in short-grain rice (such as Arborio or Bomba rice) and stir to coat in the oil and spices.'),
(8, 6, 'Add saffron threads and smoked paprika to the pan, stirring to evenly distribute the spices.'),
(8, 7, 'Pour in chicken broth and bring to a simmer, then arrange shrimp, mussels, and clams on top of the rice.'),
(8, 8, 'Cover the pan with a lid or aluminum foil and simmer for 15-20 minutes until the rice is cooked and the seafood is cooked through.'),
(8, 9, 'Garnish paella with chopped parsley and lemon wedges before serving hot directly from the pan.');

-- Korean Bibimbap
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(9, 1, 'Cook rice according to package instructions and set aside.'),
(9, 2, 'Prepare assorted vegetables such as carrots, spinach, bean sprouts, and mushrooms by washing, slicing, and sautéing each separately with a bit of oil and salt until tender.'),
(9, 3, 'Season cooked vegetables with soy sauce and sesame oil to taste.'),
(9, 4, 'Cook thinly sliced beef or tofu in a hot skillet until browned and cooked through, then season with soy sauce and sesame oil.'),
(9, 5, 'Fry eggs sunny-side up or over-easy until the whites are set but the yolks are still runny.'),
(9, 6, 'To assemble, divide cooked rice among serving bowls and arrange cooked vegetables and meat on top.'),
(9, 7, 'Place a fried egg on top of each bowl and garnish with sliced green onions and sesame seeds.'),
(9, 8, 'Serve bibimbap hot with gochujang sauce on the side, and instruct diners to stir thoroughly before eating.');

-- Vietnamese Pho
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(10, 1, 'In a large stockpot, combine beef bones, onion, ginger, and spices such as star anise, cloves, and cinnamon.'),
(10, 2, 'Cover with water and bring to a boil, then reduce heat and simmer gently for at least 4 hours, skimming any impurities that rise to the surface.'),
(10, 3, 'Strain the broth through a fine-mesh sieve or cheesecloth and discard solids.'),
(10, 4, 'Return strained broth to the pot and season with fish sauce, sugar, and salt to taste.'),
(10, 5, 'Prepare rice noodles according to package instructions and divide among serving bowls.'),
(10, 6, 'Thinly slice raw beef and arrange on top of the noodles in each bowl.'),
(10, 7, 'Pour hot broth over the beef and noodles, ensuring the beef cooks in the hot broth.'),
(10, 8, 'Serve pho immediately with fresh herbs such as cilantro, Thai basil, and sliced jalapeños on the side.');

-- American Apple Pie
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(11, 1, 'Preheat oven to 375°F (190°C).'),
(11, 2, 'Roll out pie dough and line a 9-inch pie dish, then trim excess dough from the edges.'),
(11, 3, 'In a large bowl, toss sliced apples with sugar, flour, cinnamon, nutmeg, and a pinch of salt until well coated.'),
(11, 4, 'Pour apple mixture into the prepared pie crust, then dot with butter pieces.'),
(11, 5, 'Roll out remaining pie dough and place over the filling, crimping the edges to seal.'),
(11, 6, 'Make several slits in the top crust to allow steam to escape.'),
(11, 7, 'Bake pie in the preheated oven for 45-50 minutes until the crust is golden brown and the filling is bubbly.'),
(11, 8, 'Cool pie on a wire rack for at least 2 hours before serving with vanilla ice cream.');

-- British Fish and Chips
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(12, 1, 'Preheat deep fryer or large pot of oil to 375°F (190°C).'),
(12, 2, 'Cut fish fillets into serving-size pieces and pat dry with paper towels.'),
(12, 3, 'In a shallow dish, whisk together flour, salt, baking powder, and beer until smooth and well combined.'),
(12, 4, 'Dip each piece of fish into the batter, allowing excess batter to drip off, then carefully lower into the hot oil.'),
(12, 5, 'Fry fish in batches for 4-5 minutes until golden brown and cooked through, then drain on paper towels.'),
(12, 6, 'While the fish is frying, parboil potatoes for 5 minutes, then drain and pat dry with paper towels.'),
(12, 7, 'Fry potatoes in the same oil as the fish until golden and crispy, about 5-7 minutes.'),
(12, 8, 'Season fish and chips with salt and serve hot with tartar sauce and lemon wedges.');

-- German Sausage Platter
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(13, 1, 'Preheat grill to medium-high heat.'),
(13, 2, 'Arrange a variety of German sausages such as bratwurst, weisswurst, and bockwurst on the grill.'),
(13, 3, 'Grill sausages, turning occasionally, until they are cooked through and have grill marks, about 10-12 minutes.'),
(13, 4, 'Meanwhile, heat sauerkraut in a saucepan over medium heat until warmed through.'),
(13, 5, 'Serve grilled sausages hot with warmed sauerkraut and mustard, accompanied by German beer.');

-- Turkish Kebab
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(14, 1, 'In a bowl, combine cubed lamb with Turkish spices such as paprika, cumin, coriander, and garlic.'),
(14, 2, 'Cover and marinate lamb in the refrigerator overnight or for at least 4 hours.'),
(14, 3, 'Preheat grill to medium-high heat or prepare charcoal grill for indirect grilling.'),
(14, 4, 'Thread marinated lamb cubes onto skewers, leaving a small space between each piece.'),
(14, 5, 'Grill kebabs over medium-high heat, turning occasionally, until lamb is browned and cooked through, about 10-12 minutes.'),
(14, 6, 'Serve Turkish kebabs hot off the grill, garnished with chopped parsley and accompanied by flatbread and yogurt sauce.');

-- Greek Gyro
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(15, 1, 'Preheat rotisserie or grill to medium-high heat.'),
(15, 2, 'Season meat with salt, pepper, and Greek spices such as oregano, thyme, and garlic powder.'),
(15, 3, 'Thread seasoned meat onto skewers or rotisserie spit, ensuring it is evenly distributed.'),
(15, 4, 'Cook meat on the rotisserie or grill, turning occasionally, until it is browned and cooked through, about 15-20 minutes.'),
(15, 5, 'Slice cooked meat thinly against the grain.'),
(15, 6, 'Warm pita bread on the grill or in the oven for a few minutes.'),
(15, 7, 'Assemble gyro sandwiches by placing sliced meat in warmed pita bread, topping with homemade tzatziki sauce, fresh vegetables, and a squeeze of lemon juice.'),
(15, 8, 'Wrap gyro sandwiches in foil or parchment paper for easy serving and enjoy immediately.');

-- Portuguese Bacalhau
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(16, 1, 'Soak salted cod in cold water for 24-48 hours, changing the water several times to remove excess salt.'),
(16, 2, 'Preheat oven to 375°F (190°C).'),
(16, 3, 'Slice potatoes and onions thinly.'),
(16, 4, 'In a baking dish, layer sliced potatoes, onions, and desalted cod, repeating until all ingredients are used.'),
(16, 5, 'Drizzle olive oil over the layers and season with salt, pepper, and paprika to taste.'),
(16, 6, 'Bake bacalhau in the preheated oven for 45-50 minutes until potatoes are tender and the top is golden brown.');

-- Russian Borsch
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(17, 1, 'In a large pot, heat olive oil over medium heat and sauté diced onions until translucent.'),
(17, 2, 'Add grated beets and diced carrots to the pot and cook until vegetables are softened, about 10 minutes.'),
(17, 3, 'Pour in beef or vegetable broth and bring to a boil, then reduce heat and simmer for 20-30 minutes until vegetables are tender.'),
(17, 4, 'Stir in diced potatoes and chopped cabbage, then simmer for an additional 15-20 minutes until potatoes are cooked through.'),
(17, 5, 'Season borsch with salt, pepper, and vinegar to taste, adding a clove of minced garlic for extra flavor if desired.'),
(17, 6, 'Serve hot borsch with a dollop of sour cream and a slice of rye bread.');

-- Brazilian Feijoada
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(18, 1, 'Rinse black beans and soak them in cold water overnight, then drain and rinse again before cooking.'),
(18, 2, 'In a large pot, combine soaked black beans, pork shoulder, smoked sausage, and bacon with enough water to cover.'),
(18, 3, 'Bring the mixture to a boil, then reduce heat and simmer, partially covered, for 2-3 hours until beans are tender and meat is cooked through.'),
(18, 4, 'Remove pork shoulder from the pot and shred the meat, then return it to the pot with the beans and stir to combine.'),
(18, 5, 'Season feijoada with salt, pepper, and additional spices to taste, then continue to simmer for another 30-60 minutes until flavors are well blended and the stew has thickened slightly.'),
(18, 6, 'Serve hot feijoada accompanied by cooked white rice, orange slices, and hot sauce if desired.');

-- Egyptian Koshari
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(19, 1, 'Rinse lentils and rice under cold water, then cook them separately according to package instructions until tender.'),
(19, 2, 'Cook pasta in boiling salted water until al dente, then drain and set aside.'),
(19, 3, 'In a large bowl, mix together cooked lentils, rice, and pasta.'),
(19, 4, 'Warm tomato sauce in a saucepan over medium heat, then pour it over the lentil, rice, and pasta mixture.'),
(19, 5, 'Gently toss the mixture to combine, ensuring all ingredients are evenly coated with sauce.'),
(19, 6, 'To serve, layer the koshari mixture in bowls, topping each portion with crispy fried onions and a drizzle of garlic vinegar and hot sauce.');

-- South African Bobotie
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(20, 1, 'Preheat oven to 350°F (175°C) and grease a baking dish with butter or oil.'),
(20, 2, 'In a skillet, cook minced meat with diced onions and garlic until meat is browned and onions are softened.'),
(20, 3, 'Stir in curry powder, ground coriander, and apricot jam, cooking for another 2-3 minutes to allow flavors to meld.'),
(20, 4, 'Transfer the meat mixture to the prepared baking dish, spreading it out evenly.'),
(20, 5, 'In a bowl, whisk together eggs, milk, and salt until well combined.'),
(20, 6, 'Pour the egg mixture over the meat in the baking dish, ensuring it is evenly distributed.'),
(20, 7, 'Bake bobotie in the preheated oven for 30-35 minutes until the egg topping is set and lightly golden brown on top.'),
(20, 8, 'Serve hot bobotie slices with yellow rice and chutney or a side salad.');

-- Moroccan Tagine
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(21, 1, 'If using a clay tagine, soak it in water for at least 1 hour before cooking.'),
(21, 2, 'In a large bowl, toss cubed meat with Moroccan spices such as cumin, paprika, cinnamon, and turmeric until evenly coated.'),
(21, 3, 'Heat olive oil in the base of the tagine or a large pot over medium-high heat, then add seasoned meat and brown on all sides.'),
(21, 4, 'Add chopped onions, garlic, and vegetables such as carrots, potatoes, and tomatoes to the tagine or pot, stirring to combine.'),
(21, 5, 'Pour in broth or water until ingredients are just covered, then bring to a simmer.'),
(21, 6, 'Cover tagine or pot with its lid and reduce heat to low, allowing the stew to simmer gently for 1.5 to 2 hours until meat is tender and flavors have melded together.'),
(21, 7, 'Serve Moroccan tagine hot with couscous or crusty bread.');

-- Australian Meat Pie
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(22, 1, 'Preheat oven to 375°F (190°C) and grease individual pie dishes or a pie dish large enough to hold all pies.'),
(22, 2, 'Roll out puff pastry on a lightly floured surface and line the bottom and sides of each pie dish with pastry, trimming any excess.'),
(22, 3, 'In a skillet, cook minced meat with diced onions and garlic until meat is browned and onions are softened.'),
(22, 4, 'Stir in Worcestershire sauce, tomato paste, and beef broth, cooking for another 2-3 minutes to allow flavors to meld.'),
(22, 5, 'Divide the meat mixture evenly among the prepared pie dishes, filling each one nearly to the top.'),
(22, 6, 'Top each pie with another layer of puff pastry, crimping the edges to seal and cutting a few slits in the top to allow steam to escape.'),
(22, 7, 'Bake meat pies in the preheated oven for 25-30 minutes until pastry is golden brown and filling is bubbling hot.'),
(22, 8, 'Serve Australian meat pies hot with tomato sauce on the side.');

-- Canadian Poutine
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(23, 1, 'Prepare homemade gravy by melting butter in a saucepan over medium heat, then whisking in flour to create a roux.'),
(23, 2, 'Gradually pour in beef broth while continuously whisking until the gravy thickens and becomes smooth.'),
(23, 3, 'Season the gravy with salt, pepper, and any additional seasonings to taste, then keep warm until ready to use.'),
(23, 4, 'Cook fries according to package instructions until golden and crispy, then transfer them to serving plates or a dish.'),
(23, 5, 'Top the hot fries with fresh cheese curds, allowing the cheese to slightly melt from the heat of the fries.'),
(23, 6, 'Pour the hot homemade gravy over the cheese curds and fries, ensuring all the cheese and fries are evenly coated.'),
(23, 7, 'Serve Canadian poutine immediately while hot, garnished with chopped green onions if desired.');

-- Argentinian Asado
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(24, 1, 'Prepare the grill or fire pit for cooking by arranging the charcoal or wood in a pyramid shape and lighting it.'),
(24, 2, 'Once the flames die down and the coals are hot, spread them out evenly and allow the grill grates to heat up.'),
(24, 3, 'Season different cuts of meat generously with salt and pepper, then place them on the grill over direct heat.'),
(24, 4, 'Grill the meats to the desired level of doneness, flipping them occasionally to ensure even cooking on all sides.'),
(24, 5, 'As the meats cook, monitor the fire and adjust as needed to maintain a steady cooking temperature.'),
(24, 6, 'Once the meats are cooked to perfection, remove them from the grill and let them rest for a few minutes before slicing or serving.'),
(24, 7, 'Serve Argentinian asado hot off the grill with chimichurri sauce on the side for dipping or drizzling.');

-- Belgian Waffles
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(25, 1, "Preheat the waffle iron according to the manufacturer's instructions."),
(25, 2, 'In a mixing bowl, whisk together flour, sugar, baking powder, and salt until well combined.'),
(25, 3, 'In another bowl, whisk together milk, melted butter, and vanilla extract until smooth.'),
(25, 4, 'Pour the wet ingredients into the dry ingredients and stir until just combined, being careful not to overmix.'),
(25, 5, 'Lightly grease the preheated waffle iron with non-stick cooking spray or melted butter.'),
(25, 6, 'Pour enough batter onto the hot waffle iron to cover the waffle grid, then close the lid and cook until waffles are golden and crisp.'),
(25, 7, 'Carefully remove the cooked waffles from the iron and place them on a wire rack to cool slightly or serve them immediately.'),
(25, 8, 'Serve Belgian waffles hot, dusted with powdered sugar and topped with fresh strawberries or your favorite toppings.');

-- Italian Risotto
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(26, 1, 'In a saucepan, heat chicken or vegetable broth over low heat until hot but not boiling, then keep it warm on the stove.'),
(26, 2, 'In a separate large saucepan or skillet, melt butter over medium heat, then add minced onion and cook until softened and translucent.'),
(26, 3, 'Add Arborio rice to the skillet with the onions and toast the rice for 1-2 minutes, stirring constantly, until the grains are lightly golden and fragrant.'),
(26, 4, 'Begin adding hot broth to the rice, one ladleful at a time, stirring frequently and allowing the rice to absorb the broth before adding more.'),
(26, 5, 'Continue this process of adding broth and stirring until the rice is creamy and tender with a slight bite in the center, which should take about 18-20 minutes.'),
(26, 6, 'Stir in grated Parmesan cheese and butter until melted and incorporated into the risotto, then season with salt and pepper to taste.'),
(26, 7, 'Remove the risotto from heat and let it rest for a few minutes before serving to allow the flavors to meld together.');

-- Chinese Dumplings
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(27, 1, 'Prepare the dumpling filling by combining ground pork, finely chopped vegetables such as cabbage and green onions, minced garlic, ginger, soy sauce, sesame oil, and seasonings in a mixing bowl.'),
(27, 2, 'Place a small spoonful of the filling in the center of a dumpling wrapper, then moisten the edges of the wrapper with water to help seal it.'),
(27, 3, 'Fold the wrapper over the filling to create a half-moon shape, pressing the edges together firmly to seal and crimping them with your fingers or a fork.'),
(27, 4, 'Repeat the process with the remaining wrappers and filling until all dumplings are assembled.'),
(27, 5, 'To cook the dumplings, you can either steam, boil, or pan-fry them according to your preference.'),
(27, 6, 'Serve Chinese dumplings hot, accompanied by soy sauce or your favorite dipping sauce.');

-- Indian Samosa
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(28, 1, 'Prepare the samosa dough by combining all-purpose flour, salt, and ajwain seeds in a mixing bowl, then gradually adding water to form a stiff dough.'),
(28, 2, 'Knead the dough for a few minutes until smooth, then cover it with a damp cloth and let it rest for 30 minutes.'),
(28, 3, 'Meanwhile, prepare the potato filling by boiling peeled and diced potatoes until tender, then mashing them with cooked peas, diced onions, minced green chilies, ginger, and spices like cumin, coriander, and garam masala.'),
(28, 4, 'Divide the rested dough into small portions and roll each portion into a thin circle on a lightly floured surface.'),
(28, 5, 'Cut each circle in half to form two semi-circles, then fold each semi-circle into a cone shape and seal the edges with water.'),
(28, 6, 'Fill each cone with a spoonful of the prepared potato filling, then seal the top edge of the cone tightly to enclose the filling completely.'),
(28, 7, 'Heat oil in a deep fryer or heavy-bottomed pot to 350°F (175°C), then fry the samosas in batches until golden brown and crispy, turning occasionally for even cooking.'),
(28, 8, 'Drain fried samosas on paper towels to remove excess oil, then serve them hot with tamarind chutney or mint chutney for dipping.');

-- French Ratatouille
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(29, 1, 'Preheat the oven to 375°F (190°C) and grease a baking dish with olive oil or cooking spray.'),
(29, 2, 'Slice vegetables such as eggplant, zucchini, bell peppers, and tomatoes into uniform thickness.'),
(29, 3, 'Arrange the sliced vegetables in overlapping layers in the prepared baking dish, seasoning each layer with salt, pepper, minced garlic, and fresh herbs like thyme and basil.'),
(29, 4, 'Drizzle olive oil over the assembled ratatouille, then cover the dish with aluminum foil.'),
(29, 5, 'Bake the ratatouille in the preheated oven for 45-50 minutes, then remove the foil and continue baking for an additional 15-20 minutes until the vegetables are tender and slightly caramelized on the edges.'),
(29, 6, 'Remove the ratatouille from the oven and let it cool for a few minutes before serving as a side dish or main course.');

-- Mexican Enchiladas
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(30, 1, 'Preheat the oven to 350°F (175°C) and grease a baking dish with cooking spray or oil.'),
(30, 2, 'Warm corn tortillas briefly in a dry skillet or microwave to make them pliable and easier to roll without cracking.'),
(30, 3, 'Fill each tortilla with a spoonful of the desired filling, such as shredded cheese, cooked meat, or beans, then roll them up tightly and place them seam-side down in the prepared baking dish.'),
(30, 4, 'Pour authentic enchilada sauce evenly over the rolled enchiladas, making sure they are fully covered in sauce.'),
(30, 5, 'Sprinkle grated cheese over the top of the enchiladas for added flavor and richness.'),
(30, 6, 'Bake the enchiladas in the preheated oven for 20-25 minutes, or until the cheese is melted and bubbly and the enchiladas are heated through.'),
(30, 7, 'Garnish the baked enchiladas with a dollop of sour cream and chopped fresh cilantro before serving.');

-- Japanese Mochi
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(31, 1, 'Rinse and soak sweet rice (mochigome) in water for several hours or overnight to soften the grains.'),
(31, 2, 'Drain the soaked rice and steam it in a steamer basket or rice cooker until fully cooked and very soft.'),
(31, 3, 'Transfer the cooked rice to a large bowl and mash it thoroughly with a wooden spoon or potato masher until it becomes a smooth, sticky dough.'),
(31, 4, 'Divide the mochi dough into small portions and shape each portion into a ball, flattening it slightly to form a disc.'),
(31, 5, 'Place a small spoonful of sweet red bean filling in the center of each mochi disc, then carefully pinch and seal the edges together to enclose the filling completely.'),
(31, 6, 'Serve Japanese mochi immediately while still warm and soft, accompanied by a cup of hot green tea for a traditional treat.');

-- Thai Tom Yum Goong
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(32, 1, 'In a large pot, bring chicken or shrimp broth to a boil over medium heat, then add lemongrass stalks, kaffir lime leaves, and galangal slices.'),
(32, 2, 'Simmer the broth for 10-15 minutes to infuse the flavors of the aromatics into the broth, then remove and discard the lemongrass, lime leaves, and galangal slices.'),
(32, 3, "Add cleaned and deveined shrimp to the broth along with sliced mushrooms, cherry tomatoes, and bird's eye chilies."),
(32, 4, 'Season the soup with fish sauce, lime juice, and a pinch of sugar to balance the flavors, adjusting the seasoning to taste.'),
(32, 5, 'Simmer the tom yum goong soup for another 5-7 minutes, or until the shrimp are cooked through and the flavors have melded together nicely.'),
(32, 6, "Serve Thai tom yum goong hot, garnished with fresh cilantro leaves and thinly sliced Thai bird's eye chilies for extra heat, if desired.");

-- Spanish Churros
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(33, 1, 'In a medium saucepan, combine water, butter, and a pinch of salt, and bring the mixture to a gentle boil over medium heat.'),
(33, 2, 'Reduce the heat to low and add all-purpose flour to the saucepan, stirring vigorously with a wooden spoon until a smooth dough forms and pulls away from the sides of the pan.'),
(33, 3, 'Transfer the churro dough to a piping bag fitted with a star-shaped nozzle, and pipe strips of dough directly into the hot oil, using scissors to cut the dough.'),
(33, 4, 'Fry the churros in batches until golden brown and crispy, then remove them from the oil using a slotted spoon and drain them on paper towels to remove excess oil.'),
(33, 5, 'Toss the fried churros in a mixture of cinnamon and sugar while still warm, ensuring they are evenly coated with the sweet mixture.'),
(33, 6, 'Serve Spanish churros hot with a cup of thick hot chocolate for dipping.');

-- Korean Kimchi Stew
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(34, 1, 'In a large pot, sauté sliced onions, minced garlic, and sliced ginger in a little oil until fragrant and translucent.'),
(34, 2, 'Add chopped kimchi to the pot along with its juices, and cook for a few minutes to allow the flavors to meld together.'),
(34, 3, 'Pour in chicken or vegetable broth, then add cubed tofu, sliced pork belly or shoulder, and any additional vegetables like sliced mushrooms or spinach.'),
(34, 4, 'Simmer the kimchi stew over medium heat for 20-30 minutes, or until the pork is cooked through and the flavors have developed.'),
(34, 5, 'Taste the stew and adjust the seasoning with soy sauce, fish sauce, or a pinch of sugar if needed, to balance the flavors to your liking.'),
(34, 6, 'Serve Korean kimchi stew hot in individual bowls, garnished with chopped green onions and a sprinkle of toasted sesame seeds, if desired.');

-- Vietnamese Banh Mi
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(35, 1, 'Slice a fresh baguette horizontally without cutting all the way through, then gently hollow out some of the bread from the top and bottom halves to create space for the fillings.'),
(35, 2, 'Spread a generous amount of mayonnaise on both sides of the baguette, followed by a layer of thinly sliced cooked pork, pate, and pickled vegetables such as carrots and daikon radish.'),
(35, 3, 'Add fresh cucumber slices, jalapeno peppers, and cilantro leaves on top of the other fillings to add crunch and freshness to the banh mi.'),
(35, 4, 'Close the baguette, pressing gently to compact the fillings together, then slice the banh mi into smaller portions for serving.'),
(35, 5, 'Serve Vietnamese banh mi immediately, either as a handheld street food snack or wrapped in parchment paper for a portable meal.');

-- American Brownies
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(36, 1, 'Preheat the oven to 350°F (175°C) and grease a square baking pan or line it with parchment paper.'),
(36, 2, 'In a large mixing bowl, melt butter and chocolate together in the microwave or over a double boiler until smooth and well combined.'),
(36, 3, 'Whisk granulated sugar and eggs into the melted chocolate mixture until fully incorporated and glossy in appearance.'),
(36, 4, 'Sift cocoa powder, all-purpose flour, and a pinch of salt into the chocolate mixture, then gently fold the dry ingredients into the wet ingredients until just combined.'),
(36, 5, 'Pour the brownie batter into the prepared baking pan and spread it out evenly with a spatula.'),
(36, 6, 'Bake the brownies in the preheated oven for 25-30 minutes, or until the top is set and a toothpick inserted into the center comes out with moist crumbs attached, but not wet.'),
(36, 7, 'Remove the brownies from the oven and let them cool completely in the pan before slicing them into squares and serving.');

-- British Shepherd’s Pie
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(37, 1, 'Preheat the oven to 375°F (190°C) and grease a baking dish with butter or oil.'),
(37, 2, 'In a large skillet or frying pan, cook minced lamb with diced onions, minced garlic, and chopped carrots over medium heat until the meat is browned and the vegetables are softened.'),
(37, 3, 'Season the lamb mixture with salt, black pepper, and Worcestershire sauce, stirring well to combine, then transfer it to the prepared baking dish and spread it out evenly.'),
(37, 4, 'Spread a layer of cooked green peas over the lamb mixture in the baking dish, then top it with a generous layer of creamy mashed potatoes, smoothing the surface with a spatula.'),
(37, 5, 'Sprinkle grated cheese over the mashed potatoes for added flavor and richness, if desired.'),
(37, 6, "Bake the shepherd's pie in the preheated oven for 25-30 minutes, or until the top is golden brown and the filling is bubbling around the edges."),
(37, 7, "Remove the shepherd's pie from the oven and let it cool for a few minutes before serving hot.");

-- German Pretzel
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(38, 1, 'Preheat the oven to 450°F (230°C) and line a baking sheet with parchment paper.'),
(38, 2, 'In a large pot, bring water to a boil and stir in baking soda until dissolved, then reduce the heat to a simmer.'),
(38, 3, 'Roll out the pretzel dough into ropes, then form each rope into a pretzel shape by crossing the ends and twisting them together before pressing them onto the bottom of the U shape.'),
(38, 4, 'Carefully drop each pretzel into the simmering water for about 30 seconds, then remove them with a slotted spoon and place them onto the prepared baking sheet.'),
(38, 5, 'Brush each pretzel with beaten egg wash and sprinkle with coarse salt, then bake in the preheated oven for 12-15 minutes or until golden brown and crisp.'),
(38, 6, 'Remove the pretzels from the oven and let them cool for a few minutes before serving warm with mustard or beer.');

-- Turkish Baklava
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(39, 1, 'Preheat the oven to 350°F (175°C) and grease a baking dish with butter or cooking spray.'),
(39, 2, 'In a bowl, combine chopped nuts, sugar, and spices such as cinnamon and cloves for the filling.'),
(39, 3, 'Layer sheets of fresh filo dough in the prepared baking dish, brushing each layer generously with melted butter.'),
(39, 4, 'Spread a portion of the nut mixture evenly over the filo dough, then continue layering filo and nuts until all ingredients are used.'),
(39, 5, 'Using a sharp knife, cut the baklava into diamond or square shapes, making sure to cut all the way through the layers.'),
(39, 6, 'Bake the baklava in the preheated oven for 40-45 minutes or until golden brown and crispy.'),
(39, 7, 'While the baklava is still hot, pour cooled syrup or honey over the top, allowing it to seep into the cuts and layers of the pastry.'),
(39, 8, 'Let the baklava cool completely in the pan before serving, allowing the flavors to develop.');

-- Greek Salad
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(40, 1, 'In a large mixing bowl, combine diced tomatoes, sliced cucumbers, thinly sliced red onion, pitted Kalamata olives, and crumbled feta cheese.'),
(40, 2, 'Drizzle the salad with extra virgin olive oil and sprinkle with dried oregano, then season with salt and pepper to taste.'),
(40, 3, 'Toss the salad gently to combine all the ingredients and evenly distribute the dressing and seasonings.'),
(40, 4, 'Just before serving, squeeze fresh lemon juice over the salad to add brightness and zestiness to the flavors.'),
(40, 5, 'Serve Greek salad immediately as a refreshing appetizer or side dish, garnished with fresh oregano leaves if desired.');

-- Portuguese Caldo Verde
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(41, 1, 'In a large pot, heat olive oil over medium heat and sauté sliced chorizo until lightly browned and crispy, then remove it from the pot and set aside.'),
(41, 2, 'In the same pot, add diced onions and minced garlic, cooking until softened and fragrant.'),
(41, 3, 'Add diced potatoes to the pot along with chicken or vegetable broth, then bring the mixture to a boil and simmer until the potatoes are tender.'),
(41, 4, 'Using an immersion blender or potato masher, partially blend the soup to create a thick and creamy base with some potato chunks remaining for texture.'),
(41, 5, 'Stir in thinly sliced kale leaves and simmer for an additional 5-10 minutes until the kale is wilted and tender, then season the soup with salt and pepper to taste.'),
(41, 6, 'Serve Portuguese caldo verde hot, topped with the reserved crispy chorizo and accompanied by slices of cornbread for dipping.');

-- Russian Pelmeni
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(42, 1, 'In a mixing bowl, combine ground pork, ground beef, finely chopped onions, salt, pepper, and spices, mixing until well combined.'),
(42, 2, 'Roll out a portion of the pelmeni dough on a lightly floured surface until thin, then cut out circles using a round cookie cutter or drinking glass.'),
(42, 3, 'Place a small spoonful of the meat filling in the center of each dough circle, then fold the dough over the filling to create a half-moon shape, pressing the edges firmly to seal.'),
(42, 4, 'Bring a large pot of salted water to a boil, then add the pelmeni in batches, cooking until they float to the surface, which should take about 5-7 minutes.'),
(42, 5, 'Using a slotted spoon, transfer the cooked pelmeni to a serving dish or bowl, then repeat the cooking process with the remaining batches.'),
(42, 6, 'Serve Russian pelmeni hot, accompanied by a dollop of sour cream or your favorite dipping sauce.');

-- Brazilian Coxinha
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(43, 1, 'In a saucepan, combine shredded chicken, diced onions, minced garlic, chopped parsley, and seasonings such as salt, pepper, and paprika.'),
(43, 2, 'Cook the chicken mixture over medium heat until heated through and well combined, then remove it from the heat and let it cool slightly.'),
(43, 3, 'Take a portion of the chicken mixture and shape it into a cone or drumstick shape with your hands, then place it on a plate or tray lined with parchment paper.'),
(43, 4, 'Continue shaping the remaining chicken mixture into coxinha shapes until all the mixture is used up.'),
(43, 5, 'In a shallow dish, beat eggs with a splash of milk or water to create an egg wash, and place breadcrumbs in another shallow dish.'),
(43, 6, 'Dip each coxinha into the egg wash, ensuring it is coated evenly, then roll it in breadcrumbs to coat the outside completely.'),
(43, 7, 'Heat oil in a deep fryer or heavy-bottomed pot to 350°F (175°C), then fry the coxinhas in batches until golden brown and crispy, turning them occasionally for even cooking.'),
(43, 8, 'Transfer the fried coxinhas to a plate lined with paper towels to drain excess oil, then serve them hot as a delicious snack or appetizer.');

-- Egyptian Ful Medames
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(44, 1, 'Rinse dried fava beans under cold water, then place them in a large bowl and cover with plenty of water.'),
(44, 2, 'Allow the beans to soak overnight or for at least 8 hours to soften and rehydrate them thoroughly.'),
(44, 3, 'Once the beans are soaked, drain and rinse them again, then transfer them to a large pot and cover with fresh water.'),
(44, 4, 'Bring the pot of beans to a boil over medium-high heat, then reduce the heat to low and simmer gently until the beans are tender, which may take about 1 to 2 hours depending on their size and freshness.'),
(44, 5, 'While the beans are cooking, prepare a flavorful seasoning mixture by sautéing minced garlic, chopped onions, cumin, and other desired spices in olive oil until fragrant and softened.'),
(44, 6, 'Once the beans are cooked to your desired tenderness, drain them well and transfer them to a serving bowl or dish.'),
(44, 7, 'Pour the prepared seasoning mixture over the cooked beans and toss gently to coat them evenly with the flavorful spices and aromatics.'),
(44, 8, 'Serve Egyptian ful medames hot, garnished with fresh parsley, chopped tomatoes, sliced boiled eggs, and a drizzle of olive oil for extra richness and flavor.');

-- South African Chakalaka
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(45, 1, 'Heat a little oil in a large skillet or saucepan over medium heat, then add finely chopped onions and sauté until softened and translucent.'),
(45, 2, 'Add diced bell peppers, grated carrots, chopped tomatoes, and any other desired vegetables to the skillet, stirring well to combine.'),
(45, 3, 'Season the vegetable mixture generously with curry powder, ground paprika, salt, pepper, and other desired spices to taste.'),
(45, 4, 'Continue cooking the vegetables, stirring occasionally, until they are tender but still slightly crisp, and the flavors have melded together, which should take about 15-20 minutes.'),
(45, 5, 'Once cooked, remove the skillet from heat and let the chakalaka cool slightly before serving, allowing the flavors to develop further.'),
(45, 6, 'Serve South African chakalaka either hot or cold as a flavorful relish or side dish, alongside bread, pap, or your favorite stews and grilled meats.');

-- Moroccan Couscous
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(46, 1, 'Place dry couscous in a large bowl and drizzle it lightly with olive oil, using your fingers to toss and coat the grains evenly.'),
(46, 2, 'In a separate pot or couscousiere, bring water or broth to a boil over high heat, then pour it over the couscous, ensuring that it is completely submerged.'),
(46, 3, 'Cover the bowl tightly with plastic wrap or a clean kitchen towel and let the couscous steam for about 5-10 minutes, allowing the grains to absorb the liquid and swell.'),
(46, 4, 'Once the couscous has absorbed the liquid, fluff it gently with a fork to separate the grains and remove any clumps, then stir in a knob of butter for added richness and flavor.'),
(46, 5, 'Serve Moroccan couscous hot, accompanied by a flavorful vegetable or meat stew spooned over the top, allowing the couscous to soak up the delicious sauce and flavors.');

-- Australian Lamingtons
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(47, 1, 'Prepare a sponge cake according to your favorite recipe or using a store-bought mix, then bake it in a square or rectangular pan until golden and cooked through.'),
(47, 2, 'Allow the cake to cool completely in the pan before turning it out onto a wire rack to cool further, then refrigerate it for at least 1 hour or until chilled and firm.'),
(47, 3, 'Once chilled, use a sharp knife to cut the cake into evenly sized squares or rectangles, then set them aside on a baking sheet or tray.'),
(47, 4, 'Prepare a chocolate syrup by melting chocolate chips or chopped chocolate with a little butter and milk in a heatproof bowl set over a pot of simmering water, stirring until smooth and glossy.'),
(47, 5, 'Place desiccated coconut in a shallow dish or bowl, then dip each cake square into the chocolate syrup, allowing any excess to drip off before rolling the coated cake in the coconut to cover it completely.'),
(47, 6, 'Repeat the process with the remaining cake squares until all are coated in chocolate and coconut, then transfer them to a clean tray and refrigerate until the chocolate sets and the lamingtons are firm.'),
(47, 7, 'Serve Australian lamingtons at room temperature as a delicious sweet treat, perfect for morning or afternoon tea, accompanied by a cup of coffee or tea.');

-- Canadian Tourtière
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(48, 1, 'In a large skillet or frying pan, cook ground meats over medium heat until browned and cooked through, breaking them apart with a spoon as they cook.'),
(48, 2, 'Once the meats are cooked, drain any excess fat from the pan, then add finely chopped onions, minced garlic, and other desired aromatics and seasonings, stirring well to combine.'),
(48, 3, 'Continue cooking the meat mixture, stirring occasionally, until the onions are softened and translucent, and the flavors have melded together, which should take about 5-7 minutes.'),
(48, 4, 'Transfer the cooked meat filling to a large mixing bowl and let it cool slightly, then cover it and refrigerate it for at least 1 hour or until chilled and firm.'),
(48, 5, 'Once chilled, spoon the meat filling into prepared pie crusts, spreading it evenly and pressing it down gently to compact it and remove any air pockets.'),
(48, 6, 'Cover the filled pie crusts with a second layer of pie crust dough, then crimp and seal the edges together tightly to enclose the filling completely.'),
(48, 7, 'Use a sharp knife to cut a few small slits or vents in the top crust to allow steam to escape during baking, then brush the surface lightly with beaten egg or milk for a golden finish.'),
(48, 8, 'Bake the tourtières in a preheated oven according to your pie crust recipe or package instructions, until the crust is golden and crisp, and the filling is heated through, which should take about 30-40 minutes.'),
(48, 9, 'Remove the baked tourtières from the oven and let them cool for a few minutes before slicing and serving, accompanied by ketchup, chutney, or your favorite condiments.');

-- Argentinian Empanadas
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(49, 1, 'Prepare a simple dough for empanadas by combining flour, salt, and baking powder in a large mixing bowl, then cutting in cold butter or lard until the mixture resembles coarse crumbs.'),
(49, 2, 'Gradually add cold water to the flour mixture, stirring with a fork or your hands until a shaggy dough forms, then knead it gently on a floured surface until smooth and elastic.'),
(49, 3, 'Divide the dough into smaller portions and roll each one out into a thin circle or oval shape, about 5-6 inches in diameter, then place a spoonful of desired filling in the center of each dough round.'),
(49, 4, 'Fold the dough over the filling to enclose it completely, then press the edges together firmly to seal them, using a fork to crimp the edges for a decorative finish.'),
(49, 5, 'Arrange the filled and sealed empanadas on a baking sheet or tray lined with parchment paper, leaving a little space between each one to allow for even baking.'),
(49, 6, 'Brush the tops of the empanadas lightly with beaten egg or milk for a golden finish, then bake them in a preheated oven until golden and crisp, which should take about 20-25 minutes.'),
(49, 7, 'Remove the baked empanadas from the oven and let them cool slightly before serving, allowing the filling to set and the crust to crisp up.');

-- Belgian Speculoos
INSERT INTO Steps (ID_Recipe, Step_Number, Description)
VALUES
(50, 1, 'In a large mixing bowl, combine flour, baking powder, salt, and a blend of spices including cinnamon, nutmeg, cloves, ginger, cardamom, and white pepper, stirring well to blend the dry ingredients evenly.'),
(50, 2, 'In a separate bowl, cream together softened butter or margarine with brown sugar and granulated sugar until light and fluffy, then beat in an egg and vanilla extract until smooth and creamy.'),
(50, 3, 'Gradually add the dry flour mixture to the creamed butter mixture, stirring until a thick dough forms, then knead it gently on a floured surface until smooth and pliable.'),
(50, 4, 'Roll the dough out into a thin sheet or layer, about 1/4 inch thick, then use cookie cutters or a sharp knife to cut out desired shapes, such as hearts, stars, or rectangles.'),
(50, 5, 'Place the cut-out speculoos cookies on a baking sheet or tray lined with parchment paper, leaving a little space between each one to allow for spreading during baking.'),
(50, 6, 'Bake the speculoos cookies in a preheated oven until golden and crisp around the edges, which should take about 10-12 minutes depending on their size and thickness.'),
(50, 7, 'Remove the baked speculoos cookies from the oven and let them cool on the baking sheet for a few minutes before transferring them to a wire rack to cool completely.'),
(50, 8, 'Serve Belgian speculoos cookies at room temperature as a delicious sweet treat, perfect for enjoying with a cup of coffee or tea.');

# User #

INSERT INTO User (username, password, role, ID_Chef) VALUES
('1','1','Admin', 1),
('kemmer.sincere','3ac01899c2730553dbf6aac3b2e1629274ffc836','Chef', 2),
('skling','406628adcccdc6133c035e32d99daba4c671246e','Chef', 3),
('alphonso.leuschke','137c10139f6a8d0bc20809963fa4227690ec287c','Chef', 4),
('fkonopelski','19a22d47e0775060ed3bbe3738521c1e3eb50a50','Chef', 5),
('ferry.stella','e1e0d3b6618cd04f95b5f47826ae2dfc97058cc1','Chef', 6),
('green.marcia','b0373bd3afb8583e0ed6eae9f1b21d56f8cdbd5f','Chef', 7),
('durgan.anissa','e5cb3ffd7f3688642be20d830c2f8a40dcbe8188','Chef', 8),
('qreinger','d667d226ed91680df6c53c06e743b674247e2e09','Chef', 9),
('mazie.stoltenberg','1572efc94d19af0264641650f90ba010be434cad','Chef', 10),
('owalsh','2a4b7e7899c5bc6f50b9a7b59f1241b2e15e1449','Chef', 11),
('bkessler','05d93136aea41110eb2c1facd35f779629f4c664','Chef', 12),
('lincoln84','39943f5f273a42665923ecbffeb125d5cd52a608','Chef', 13),
('coralie.turner','adc73c067a018f22503f65682710f55a3bb7d115','Chef', 14),
('romaguera.etha','4ae8bcaee72781c7c16b01b789bc2e6a7571353a','Chef', 15),
('koepp.karolann','8ddc76c0004d63545e07fedcd4bbfc0acfa42b36','Chef', 16),
('mueller.shyanne','d1674a7a904c23498fce2b7959066bbbc1eee69a','Chef', 17),
('ccremin','994f5aaa18f7268abbe9968f068f3ed2722e7299','Chef', 18),
('zemlak.precious','ec0f7fbd0893a3acfee280bed409d9a1a8aa7d35','Chef', 19),
('modesta.zemlak','2a9b28bf3f41c668f12fad1a2f63ef8106d752b3','Chef', 20),
('hector50','cf486f76aa8322cb485d43a2f8f968bca90e9977','Chef', 21),
('qsatterfield','58c14b35bcd15818c9b371889b9fe47beab1c26a','Chef', 22),
('tyra26','aee5658c657e0cc836b42d83ad78369be0b5752a','Chef', 23),
('collier.vaughn','d9a1dcc60671af674d8c56585c540951a56a0050','Chef', 24),
('zjast','85c703af70158574ef4e679326b2cdf718071811','Chef', 25),
('julien.dickens','38c68e4320f4fc77eb24c5f48be8e82cc1329555','Chef', 26),
('ruecker.adam','e8307c850898f31f8f51c9cd7f76e0dd73686855','Chef', 27),
('ykessler','42103ab9d4735431fd2d9739c92b4880c4765c10','Chef', 28),
('wtremblay','c7a0ba42468f09d30c83ce90ac8d0832c7028a7b','Chef', 29),
('norma12','63e01e59b1d354ee89b512efea732bbb424ae690','Chef', 30),
('darius.zemlak','7499ecba126393dcdb35754348a557d9b30254e0','Chef', 31),
('huel.jeromy','497779b577dd8c1e557bb4948bbef200797d5fc5','Chef', 32),
('hiram.sawayn','f2b6d24afa9affdc083c17467be8db5343eadb8f','Chef', 33),
('rankunding','8135ca47102f911c7c559f5f480fbd21b341f278','Chef', 34),
('rudy58','e30b19ec55ddc83993a2ff68a7b819b3a7fb367f','Chef', 35),
('deckow.gregorio','f33cb84bb59b2ee877140e3f72aadfa49ac95095','Chef', 36),
('oberbrunner.orlando','b51e27f5b2fadf57bc2c42d573a44311d2d3ef8b','Chef', 37),
('amacejkovic','9fa4de441b3bcedd6e2b781ffbcfa829b663b452','Chef', 38),
('kurtis.bahringer','b589f0816245f0595d67bbbf2110dc14e8fafc2f','Chef', 39),
('klein.tess','a6dff0b308ea4dc562188a3914e2a76a36746ea8','Chef', 40),
('mtorphy','5af2bf634a0b91d89025fb5681bcecdfc8d80308','Chef', 41),
('bstanton','070c644ede1bf390513714b7d2088fe8c3ff1152','Chef', 42),
('jebert','673da52f0cdd7c895d870c0eec429098d96e9a78','Chef', 43),
('bosco.wava','e39efc87cc8c9c40db2d3a071f9bbb2a465546ce','Chef', 44),
('jonas.conroy','0430765d4ad0069b0e9943c32e5a882aec6a49e5','Chef', 45),
('margarett.huels','57650d64cabbd69f051a4821b411b6cb3dbf57f9','Chef', 46),
('wpadberg','301ad12196c2de8f4cc579e612225cab9e8204ed','Chef', 47),
('marlen.daniel','bca6df5942bd8261e5b789dde582d3f972a28c14','Chef', 48),
('katarina96','5e4b40f70c625f84c6054441fee02ff8d69b368a','Chef', 49),
('ziemann.anita','28ffdbba338d98430dd67dc490d5144f48e48a3e','Chef', 50),
('xgusikowski','814499379c8925e63489d4ad525f787177fea9bf','Chef', 51);