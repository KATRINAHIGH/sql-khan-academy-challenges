/*Think about your favorite apps, and pick one that stores your data- like a game 
that stores scores, an app that lets you post updates, etc. 
Now in this project, you're going to imagine that the app stores your data 
in a SQL database (which is pretty likely!), and write SQL statements 
that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app.*/

CREATE TABLE fitness_pal (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    workout_type TEXT,
    minutes INTEGER);

INSERT INTO fitness_pal (name, workout_type, minutes) VALUES ("Katrina", "running", 50);
INSERT INTO fitness_pal (name, workout_type, minutes) VALUES ("Mel", "jumping", 15);
INSERT INTO fitness_pal (name, workout_type, minutes) VALUES ("Don", "running", 30);
INSERT INTO fitness_pal (name, workout_type, minutes) VALUES ("Deb", "swimming", 60);

UPDATE fitness_pal set name = "Donny"
WHERE id = 3;

DELETE FROM fitness_pal 
WHERE id = 4;