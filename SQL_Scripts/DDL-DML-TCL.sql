--this IS a SQL COMMENT

--DDL commands

CREATE TABLE avengers ( 
	superhero_name varchar(30),
	superhero_power varchar(30),
	real_name varchar(30),
	power_level integer
);

ALTER TABLE avengers ADD COLUMN active boolean;

TRUNCATE TABLE avengers;

--DML commands

INSERT INTO avengers (superhero_name, superhero_power, real_name, power_level)
	VALUES ('Capt. America','Super Strong Frisbee', 'Steve Rogers', 20), 
	('Hawkeye', 'tug at heartstrings', 'Clint Barton', 55);
	
UPDATE avengers SET active = TRUE WHERE superhero_name = 'Hawkeye';

--DQL

DELETE  FROM avengers WHERE real_name ='Steve Rogers';

SELECT * FROM avengers WHERE superhero_name = 'Hawkeye';

--Transaction

BEGIN;
INSERT INTO avengers (superhero_name, superhero_power, real_name, power_level)
	VALUES ('Capt. America','Super Strong Frisbee', 'Steve Rogers', 20), 
	('Hawkeye', 'tug at heartstrings', 'Clint Barton', 55);
	
UPDATE avengers SET active = false WHERE superhero_name = 'Capt. America';
UPDATE avengers SET active = TRUE WHERE superhero_name = 'Hawkeye';
COMMIT;

ROLLBACK;


