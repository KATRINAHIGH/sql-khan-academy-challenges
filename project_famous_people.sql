/**In this project, you’re going to make your own table with some small 
set of “famous people”, then make more tables about things they do and join 
those to create nice human readable lists. Contains at least two tables with at 
least 15 rows total. One of the tables contains a column that relates to the primary key of another table.
Has at least one query that does a JOIN.*/

CREATE TABLE billionares (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER,
    nationality TEXT);
    
INSERT INTO billionares (fullname, age, nationality) VALUES ("Jeff Bezos", 54, "US");
INSERT INTO billionares (fullname, age, nationality) VALUES ("Bill Gates", 62, "US");
INSERT INTO billionares (fullname, age, nationality) VALUES ("Warren Buffet", 87, "US");
INSERT INTO billionares (fullname, age, nationality) VALUES ("Bernard Arnault", 69, "France");
INSERT INTO billionares (fullname, age, nationality) VALUES ("Mark Zucherberg", 33, "US");

CREATE table wealth (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    billionare_id INTEGER,
    net_worth TEXT,
    source_wealth TEXT);
    
INSERT INTO wealth (billionare_id, net_worth, source_wealth) VALUES (1, "112 billion", "Amazon");
INSERT INTO wealth (billionare_id, net_worth, source_wealth) VALUES (2, "90 billion", "Microsoft");
INSERT INTO wealth (billionare_id, net_worth, source_wealth) VALUES (3, "84 billion", "Berkshire Hathaway");
INSERT INTO wealth (billionare_id, net_worth, source_wealth) VALUES (4, "72 billion", "LVMH");
INSERT INTO wealth (billionare_id, net_worth, source_wealth) VALUES (5, "71 billion", "Facebook");


/*Return total net worth for each billionare*/
SELECT billionares.fullname, wealth.net_worth
FROM billionares
JOIN wealth
ON billionares.id = wealth.billionare_id;