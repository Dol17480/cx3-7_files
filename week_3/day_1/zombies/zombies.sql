DROP TABLE bitings;
DROP TABLE zombies;
DROP TABLE victims;


CREATE TABLE zombies
(
name VARCHAR(255) not null, type VARCHAR(255), id SERIAL8 PRIMARY KEY
);

CREATE TABLE victims
(
name VARCHAR(255) not null, run_speed INT2, id SERIAL8 primary key
);

CREATE TABLE bitings
(
  id SERIAL8 primary key, infected_on DATE, zombie_id INT8 REFERENCES zombies(id), victim_id INT8 REFERENCES victims(id)
);

INSERT INTO victims (name, run_speed) VALUES ('Bertie', 120);
INSERT INTO victims (name, run_speed) VALUES ('Claudia', 85);
INSERT INTO victims (name, run_speed) VALUES ('Jo', 703);
INSERT INTO victims (name, run_speed) VALUES ('Cyrus', 10);

INSERT INTO zombies (name,type) VALUES ('Craig', 'Crawler');
INSERT INTO zombies (name,type) VALUES ('Keith', 'Runner');
INSERT INTO zombies (name,type) VALUES ('Sandy', 'Feral');
INSERT INTO zombies (name,type) VALUES ('Zsolt', 'Tank');

INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (1,1, 'Jan 12 2016');
INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (2,2, 'Jan 14 2016');
INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (3,3, 'Jan 24 2016');
INSERT INTO bitings (zombie_id, victim_id, infected_on) VALUES (1,2, 'Jan 26 2016');

-- SELECT * FROM zombies WHERE name = 'Craig';

-- SELECT victim_id FROM bitings WHERE zombie_id = 1;
-- SELECT name FROM victims WHERE id IN (1,2);

SELECT victims.name FROM victims INNER JOIN bitings ON bitings.victim_id = victims.id WHERE bitings.zombie_id = 1;
-- this is main syntax to use

SELECT victims.name FROM victims INNER JOIN bitings ON victims.id = bitings.victim_id INNER JOIN zombies ON bitings.zombie_id = zombies.id WHERE zombies.name = 'Craig';
-- don't know zombies.id therefore need to get to name
SELECT  COUNT(bitings.victim_id) FROM bitings INNER JOIN zombies ON bitings.zombie_id = zombies.id WHERE zombies.name = 'Craig';







