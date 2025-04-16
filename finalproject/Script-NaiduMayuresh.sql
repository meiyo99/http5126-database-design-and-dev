-- HTTP-5126 Final Project: cookbook_db

-- ============================================================================
--                              Create Database
-- ============================================================================

CREATE DATABASE cookbook_db;

-- Use the database for the following commands
USE cookbook_db;

-- ============================================================================
--                              Create Tables
-- ============================================================================

-- recipes Table: Stores the information for all recipes
CREATE TABLE recipes (
    recipe_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    description TEXT NOT NULL,
    cuisine VARCHAR(255) NOT NULL,
    cook_time_mins INT NOT NULL,
    rating INT,
    last_updated DATETIME NOT NULL,
    CONSTRAINT chk_rating CHECK (rating IS NULL OR rating BETWEEN 1 AND 5)
);

-- ingredients Table: Stores all the ingredients
CREATE TABLE ingredients (
    ingredient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

-- categories Table: Stores all recipe categories
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

-- recipe_ingredients Table: Bridge table linking recipes and ingredients (Many-to-Many)
CREATE TABLE recipe_ingredients (
    recipe_ingredient_id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_id INT NOT NULL,
    ingredient_id INT NOT NULL,
    quantity INT NOT NULL,

    FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(ingredient_id)
);

-- recipe_categories Table: Bridge table linking recipes and categories (Many-to-Many)
CREATE TABLE recipe_categories (
    recipe_category_id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_id INT NOT NULL,
    category_id INT NOT NULL,

    FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- ============================================================================
--                              Insert Data
-- ============================================================================

-- Insert recipes
INSERT INTO recipes (name, description, cuisine, cook_time_mins, rating, last_updated) VALUES
('Spaghetti Bolognese', 'Classic Italian meat sauce pasta.', 'Italian', 45, 5, NOW()),
('Chicken Alfredo', 'Creamy Alfredo pasta with chicken.', 'Italian', 30, 4, NOW()),
('Sunny Side Up', 'Quick breakfast omelette.', 'Breakfast', 10, 3, NOW()),
('Pancakes', 'Fluffy pancakes from scratch.', 'Breakfast', 20, 4, NOW()),
('Garlic Bread', 'Toasted bread with garlic butter.', 'Side Dish', 15, 2, NOW());

-- Insert Ingredients
INSERT INTO ingredients (name) VALUES
('Chicken Breast'), ('Pasta'), ('Tomato Sauce'), ('Garlic'), ('Olive Oil'),
('Onion'), ('Cheese'), ('Flour'), ('Eggs'), ('Milk'), ('Sugar');

-- Insert Categories
INSERT INTO categories (name) VALUES
('Italian'), ('Dinner'), ('Quick Meal'), ('Dessert'), ('Breakfast');

-- Link Recipes to Ingredients (Spaghetti Bolognese)
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(1, (SELECT ingredient_id FROM ingredients WHERE name = 'Pasta'), 250),
(1, (SELECT ingredient_id FROM ingredients WHERE name = 'Tomato Sauce'), 500),
(1, (SELECT ingredient_id FROM ingredients WHERE name = 'Garlic'), 2),
(1, (SELECT ingredient_id FROM ingredients WHERE name = 'Onion'), 1),
(1, (SELECT ingredient_id FROM ingredients WHERE name = 'Olive Oil'), 2);

-- Link Recipes to Ingredients (Chicken Alfredo)
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(2, (SELECT ingredient_id FROM ingredients WHERE name = 'Chicken Breast'), 2),
(2, (SELECT ingredient_id FROM ingredients WHERE name = 'Pasta'), 200),
(2, (SELECT ingredient_id FROM ingredients WHERE name = 'Garlic'), 4),
(2, (SELECT ingredient_id FROM ingredients WHERE name = 'Cheese'), 100);

-- Link Recipes to Ingredients (Sunny Side Up)
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(3, (SELECT ingredient_id FROM ingredients WHERE name = 'Eggs'), 3),
(3, (SELECT ingredient_id FROM ingredients WHERE name = 'Cheese'), 30);

-- Link Recipes to Categories
INSERT INTO recipe_categories (recipe_id, category_id) VALUES
(1, (SELECT category_id FROM categories WHERE name = 'Italian')),
(1, (SELECT category_id FROM categories WHERE name = 'Dinner')),
(2, (SELECT category_id FROM categories WHERE name = 'Italian')),
(2, (SELECT category_id FROM categories WHERE name = 'Dinner')),
(3, (SELECT category_id FROM categories WHERE name = 'Breakfast')),
(3, (SELECT category_id FROM categories WHERE name = 'Quick Meal')),
(4, (SELECT category_id FROM categories WHERE name = 'Breakfast')),
(5, (SELECT category_id FROM categories WHERE name = 'Quick Meal'));

-- ============================================================================
--                              Create Database Tools
-- ============================================================================

-- [View] top_rated_recipes: Displays recipe_id, name, rating, and cuisine, ordered by rating descending
CREATE VIEW top_rated_recipes AS
SELECT
    recipe_id,
    name,
    rating,
    cuisine
FROM
    recipes
WHERE
    rating IS NOT NULL
ORDER BY
    rating DESC;

    -- [Trigger] update_recipe_timestamp: Executes BEFORE an UPDATE on the recipes table and sets the last_updated column to the current timestamp
DELIMITER $$
CREATE TRIGGER update_recipe_timestamp
BEFORE UPDATE ON recipes
FOR EACH ROW
BEGIN
    SET NEW.last_updated = NOW();
END$$
DELIMITER ;

-- [Procedure] find_recipes: Accepts search inpuit for ingredients, cuisine, or recipe name/description. Queries relevant tables and returns matching details.
-- DELIMITER $$
-- CREATE PROCEDURE usp_find_recipes (
--     IN p_ingredient_name VARCHAR(255),
--     IN p_cuisine VARCHAR(255),
--     IN p_search_term VARCHAR(255)
-- )
-- BEGIN
--     SELECT
--         r.recipe_id,
--         r.name,
--         r.cuisine,
--         r.description,
--         r.cook_time_mins,
--         r.rating,
--         r.last_updated
--     FROM
--         recipes r
--     LEFT JOIN recipe_ingredients ri ON r.recipe_id = ri.recipe_id
--     LEFT JOIN ingredients i ON ri.ingredient_id = i.ingredient_id 
--     WHERE
--         (p_ingredient_name IS NULL OR i.name LIKE CONCAT('%', p_ingredient_name, '%'))
--     AND
--         (p_cuisine IS NULL OR r.cuisine LIKE CONCAT('%', p_cuisine, '%'))
--     AND
--         (p_search_term IS NULL OR r.name LIKE CONCAT('%', p_search_term, '%') OR r.description LIKE CONCAT('%', p_search_term, '%'));

-- END$$
-- DELIMITER ;
