INSERT INTO auto.engine VALUES (3,'1KZ',1.6,10);
INSERT INTO auto.engine VALUES (4,'1KD-FTV',3.6,9);
INSERT INTO auto.engine VALUES (5,'1HZ',1.6,8);
INSERT INTO auto.engine VALUES (6,'1HD',2.0,10);
INSERT INTO auto.engine VALUES (7,'7A-FE',2.0,13);
INSERT INTO auto.engine VALUES (8,'5A-F/FE/FHE',1.8,6);
INSERT INTO auto.engine VALUES (9,'4ZZ-FE',1.8,8);
INSERT INTO auto.engine VALUES (10,'4A',1.6,15);
INSERT INTO auto.engine VALUES (11,'3ZZ-FE',3.6,9);
INSERT INTO auto.engine VALUES (12,'1ZZ',3.6,6);
INSERT INTO auto.engine VALUES (13,'2JZ',2.0,12);
INSERT INTO auto.engine VALUES (14,'2GR',1.6,8);
INSERT INTO auto.engine VALUES (15,'2AZ',1.8,7);

SELECT name_engine FROM auto.engine;

SELECT name_engine FROM auto.engine WHERE volume_engine > '1.8';

SELECT name_mark,name_engine FROM auto.mark,auto.engine where mark.country = “Germany” AND mark.id_mark = engine.idengine

select name_transmission as ENGINE_AND_TRANSMISSION
From auto.transmission
Union
Select name_engine
From auto.engine;


SELECT name_engine
   FROM auto.engine
   WHERE  EXISTS (SELECT
   name_transmisssion FROM auto.transmission WHERE
   transmission.country_maker =engine.country_maker)

SELECT name_engine
   FROM auto.engine
   WHERE  NOT EXISTS (SELECT
   name_transmisssion FROM auto.transmission WHERE
   transmission.country_maker =engine.country_maker)

SELECT country_mark, count(*) as kolvo
from auto.mark
GROUP BY country_mark

SELECT country_mark, count(*) as kolvo
from auto.mark
GROUP BY country_mark kolvo;

