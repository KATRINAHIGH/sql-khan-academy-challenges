/*Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want
 store to specialize in. You should have a table for all the items in your store, and at least 5 columns 
 for the kind of data you think you'd need to store. You should sell at least 15 items, and use select 
 statements to order your items by price and show at least one statistic about the items.*/

CREATE TABLE clothing (id INTEGER PRIMARY KEY, item_type TEXT, quantity INTEGER, price INTEGER, size TEXT);

INSERT INTO clothing VALUES (1, "Dress", 10, 54.00, "L");
INSERT INTO clothing VALUES (2, "Skirt", 5, 64.00, "L");
INSERT INTO clothing VALUES (3, "Shorts", 50, 4.00, "L");
INSERT INTO clothing VALUES (4, "Pants", 6, 104.00, "L");
INSERT INTO clothing VALUES (5, "Jeans", 60, 298.00, "L");
INSERT INTO clothing VALUES (6, "Leggings", 7, 33.00, "L");
INSERT INTO clothing VALUES (7, "Socks", 77, 5.00, "L");
INSERT INTO clothing VALUES (8, "Underware", 8, 4.99, "L");
INSERT INTO clothing VALUES (9, "Bras", 80, 75.00, "L");
INSERT INTO clothing VALUES (10, "Bathing Suit", 200, 54.00, "L");
INSERT INTO clothing VALUES (11, "Bikini", 100, 150.00, "L");
INSERT INTO clothing VALUES (12, "Shoes", 1000, 500.00, "L");
INSERT INTO clothing VALUES (13, "Scarf", 66, 99.00, "L");
INSERT INTO clothing VALUES (14, "Shirt", 88, 54.00, "L");
INSERT INTO clothing VALUES (15, "Tank Top", 99, 54.00, "L");

SELECT * FROM clothing 
ORDER BY price;

SELECT SUM(quantity) FROM clothing;