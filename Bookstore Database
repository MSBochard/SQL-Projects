-- Creating a database for a Bookstore

CREATE TABLE inventory (itemID INTEGER PRIMARY KEY, bookType TEXT, price REAL, inStock INTEGER, quantityNeeded INTEGER); 

INSERT INTO inventory VALUES (1, "Fantasy", 15.99, 155, 35);
INSERT INTO inventory VALUES (2, "For Kids", 5.99, 55, 0);
INSERT INTO inventory VALUES (3, "Young Adult", 20.99, 100, 15);
INSERT INTO inventory VALUES (4, "Mystery", 10.99, 35, 35);
INSERT INTO inventory VALUES (5, "Non-Fiction", 7.99, 125, 15);
INSERT INTO inventory VALUES (6, "Manga", 10.99, 55, 55);
INSERT INTO inventory VALUES (7, "Sci-Fi", 10.99, 75, 0);
INSERT INTO inventory VALUES (8, "Thriller", 13.99, 30, 10);
INSERT INTO inventory VALUES (9, "Romance", 20.99, 105, 45);
INSERT INTO inventory VALUES (10, "Horror", 10.99, 35, 35);
INSERT INTO inventory VALUES (11, "Action/Adventure", 15.99, 155, 0);
INSERT INTO inventory VALUES (12, "History", 7.99, 55, 0);
INSERT INTO inventory VALUES (13, "How-To Books", 5.99, 60, 10);
INSERT INTO inventory VALUES (14, "Dystopian", 15.99, 75, 35);
INSERT INTO inventory VALUES (15, "Comics", 10.99, 55, 65);

-- Display and sort inventory by price

SELECT * FROM inventory ORDER BY price DESC;

-- Find how much stock needs to be ordered, and how many books are in stock

SELECT SUM(quantityNeeded) as "Quanity Needed", SUM(inStock) as "Quantity in Stock" FROM inventory;
