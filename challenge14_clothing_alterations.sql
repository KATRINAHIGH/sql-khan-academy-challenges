/*We've created a database of clothes, and decided we need a price column. 
Use ALTER to add a 'price' column to the table. 
Then select all the columns in each row to see what your table looks like now.*/

CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");

ALTER TABLE clothes ADD price Integer;
SELECT * FROM clothes;

/*Now assign each item a price, using UPDATE - item 1 should be 10 dollars, item 2 
should be 20 dollars, item 3 should be 30 dollars. When you're done, do another 
SELECT of all the rows to check that it worked as expected.*/

UPDATE clothes SET price = 10
WHERE id = 1;

UPDATE clothes SET price = 20
WHERE id = 2;

UPDATE clothes SET price = 30
WHERE id = 3;

SELECT * FROM clothes;

/*Now insert a new item into the table that has all three attributes filled in, 
including 'price'. Do one final SELECT of all the rows to check it worked.*/

INSERT INTO clothes (type, design, price)
VALUES ("skirt", "striped", 56);

SELECT * FROM clothes;