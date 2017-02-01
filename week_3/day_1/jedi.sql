DROP TABLE lightsabers;
DROP TABLE jedi; 

CREATE TABLE jedi (
  id SERIAL8 PRIMARY KEY,
name VARCHAR(255),
darkside BOOLEAN,
age INT2
);

CREATE TABLE lightsabers(
  id SERIAL8 PRIMARY KEY, 
  hilt_metal VARCHAR(255) NOT NULL, 
  color VARCHAR(255) NOT NULL, 
  owner_id INT8 REFERENCES jedi(id)                  
);

INSERT INTO jedi(name, darkside, age) VALUES ('Luke', false, 21);

INSERT INTO jedi(name, age, darkside) VALUES ('Vader', 100, true);

INSERT INTO jedi(name, age, darkside) VALUES ('Anakin', 12, false);

INSERT INTO jedi(name, darkside, age) VALUES ('Rey', false, 25);

INSERT INTO jedi(name, age) VALUES ('Obiwan', 33);

UPDATE jedi SET age = 22 WHERE name = 'Anakin';

UPDATE jedi SET darkside = true WHERE name = 'Anakin';

-- DELETE from jedi where name = 'Luke';

-- UPDATE jedi SET age = 22, darkside = true WHERE name = 'Anakin';

-- -- SELECT name FROM jedi;

-- -- SELECT COUNT(*) FROM jedi;

-- UPDATE jedi SET darkside = true;

-- UPDATE jedi SET darkside = false WHERE name = 'Luke';

-- UPDATE jedi SET darkside = false WHERE name = 'Obiwan' and age = 33;

SELECT * FROM jedi;

INSERT INTO lightsabers(color, owner_id, hilt_metal) VALUES ('green', 1, 'palladium');


INSERT INTO lightsabers(color, owner_id, hilt_metal) VALUES ('green', 2, 'gold');

-- INSERT INTO lightsabers(color) VALUES ('red');

-- UPDATE lightsabers set id = 1;

SELECT * FROM lightsabers; 
--star means everything. only use single quote marks 

SELECT * FROM jedi, lightsabers;

-- SELECT * FROM jedi INNER JOIN lightsabers ON jedi.id = lightsabers.owner_id WHERE name = 'Luke'; 

SELECT * FROM jedi LEFT OUTER JOIN lightsabers ON jedi.id = lightsabers.owner_id;




