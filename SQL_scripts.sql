CREATE DATABASE birds_db;
USE birds_db;

# RUN Jupyter notebook to clean data and write tables

#ADD GENERIC NAME COLUMNS TO bird_strikes
ALTER TABLE bird_strikes ADD Generic_Category VARCHAR(50);

#TURN OFF SAFE MODE
SET SQL_SAFE_UPDATES = 0;

#Clean Up nulls in species key
UPDATE species_key
SET Generic_Category = `English Name`
WHERE Generic_Category is null;

#QUERY & EXPORT TO CSV GENERIC NAME LIST TO GENERATE LIST OF UPDATE QUERIES (see Data/Generic_Category.xlsx)
SELECT distinct Generic_Category FROM Species_key;

#RUN UPDATE QUERIES to Fill in Generic Category Field in bird_stikes table
UPDATE bird_strikes SET Generic_Category = 'Bobwhite' WHERE SPECIES LIKE '%Bobwhite%';
UPDATE bird_strikes SET Generic_Category = 'Partridge' WHERE SPECIES LIKE '%Partridge%';
UPDATE bird_strikes SET Generic_Category = 'Pheasant' WHERE SPECIES LIKE '%Pheasant%';
UPDATE bird_strikes SET Generic_Category = 'Turkey' WHERE SPECIES LIKE '%Turkey%';
UPDATE bird_strikes SET Generic_Category = 'Pigeon' WHERE SPECIES LIKE '%Pigeon%';
UPDATE bird_strikes SET Generic_Category = 'Collared-Dove' WHERE SPECIES LIKE '%Collared-Dove%';
UPDATE bird_strikes SET Generic_Category = 'Dove' WHERE SPECIES LIKE '%Dove%';
UPDATE bird_strikes SET Generic_Category = 'Cuckoo' WHERE SPECIES LIKE '%Cuckoo%';
UPDATE bird_strikes SET Generic_Category = 'Nighthawk' WHERE SPECIES LIKE '%Nighthawk%';
UPDATE bird_strikes SET Generic_Category = 'Whip-poor-will' WHERE SPECIES LIKE '%Whip-poor-will%';
UPDATE bird_strikes SET Generic_Category = 'Swift' WHERE SPECIES LIKE '%Swift%';
UPDATE bird_strikes SET Generic_Category = 'Hummingbird' WHERE SPECIES LIKE '%Hummingbird%';
UPDATE bird_strikes SET Generic_Category = 'Vulture' WHERE SPECIES LIKE '%Vulture%';
UPDATE bird_strikes SET Generic_Category = 'Osprey' WHERE SPECIES LIKE '%Osprey%';
UPDATE bird_strikes SET Generic_Category = 'Harrier' WHERE SPECIES LIKE '%Harrier%';
UPDATE bird_strikes SET Generic_Category = 'Hawk' WHERE SPECIES LIKE '%Hawk%';
UPDATE bird_strikes SET Generic_Category = 'Eagle' WHERE SPECIES LIKE '%Eagle%';
UPDATE bird_strikes SET Generic_Category = 'Kite' WHERE SPECIES LIKE '%Kite%';
UPDATE bird_strikes SET Generic_Category = 'Screech-Owl' WHERE SPECIES LIKE '%Screech-Owl%';
UPDATE bird_strikes SET Generic_Category = 'Horned' WHERE SPECIES LIKE '%Horned%';
UPDATE bird_strikes SET Generic_Category = 'Owl' WHERE SPECIES LIKE '%Owl%';
UPDATE bird_strikes SET Generic_Category = 'Kingfisher' WHERE SPECIES LIKE '%Kingfisher%';
UPDATE bird_strikes SET Generic_Category = 'Woodpecker' WHERE SPECIES LIKE '%Woodpecker%';
UPDATE bird_strikes SET Generic_Category = 'Sapsucker' WHERE SPECIES LIKE '%Sapsucker%';
UPDATE bird_strikes SET Generic_Category = 'Flicker' WHERE SPECIES LIKE '%Flicker%';
UPDATE bird_strikes SET Generic_Category = 'Kestrel' WHERE SPECIES LIKE '%Kestrel%';
UPDATE bird_strikes SET Generic_Category = 'Crested' WHERE SPECIES LIKE '%Crested%';
UPDATE bird_strikes SET Generic_Category = 'Kingbird' WHERE SPECIES LIKE '%Kingbird%';
UPDATE bird_strikes SET Generic_Category = 'Wood-Pewee' WHERE SPECIES LIKE '%Wood-Pewee%';
UPDATE bird_strikes SET Generic_Category = 'Flycatcher' WHERE SPECIES LIKE '%Flycatcher%';
UPDATE bird_strikes SET Generic_Category = 'Phoebe' WHERE SPECIES LIKE '%Phoebe%';
UPDATE bird_strikes SET Generic_Category = 'Shrike' WHERE SPECIES LIKE '%Shrike%';
UPDATE bird_strikes SET Generic_Category = 'Vireo' WHERE SPECIES LIKE '%Vireo%';
UPDATE bird_strikes SET Generic_Category = 'Jay' WHERE SPECIES LIKE '%Jay%';
UPDATE bird_strikes SET Generic_Category = 'Crow' WHERE SPECIES LIKE '%Crow%';
UPDATE bird_strikes SET Generic_Category = 'Lark' WHERE SPECIES LIKE '%Lark%';
UPDATE bird_strikes SET Generic_Category = 'Martin' WHERE SPECIES LIKE '%Martin%';
UPDATE bird_strikes SET Generic_Category = 'Swallow' WHERE SPECIES LIKE '%Swallow%';
UPDATE bird_strikes SET Generic_Category = 'Rough-winged' WHERE SPECIES LIKE '%Rough-winged%';
UPDATE bird_strikes SET Generic_Category = 'Chickadee' WHERE SPECIES LIKE '%Chickadee%';
UPDATE bird_strikes SET Generic_Category = 'Titmouse' WHERE SPECIES LIKE '%Titmouse%';
UPDATE bird_strikes SET Generic_Category = 'Nuthatch' WHERE SPECIES LIKE '%Nuthatch%';
UPDATE bird_strikes SET Generic_Category = 'Wren' WHERE SPECIES LIKE '%Wren%';
UPDATE bird_strikes SET Generic_Category = 'Gnatcatcher' WHERE SPECIES LIKE '%Gnatcatcher%';
UPDATE bird_strikes SET Generic_Category = 'Bluebird' WHERE SPECIES LIKE '%Bluebird%';
UPDATE bird_strikes SET Generic_Category = 'Thrush' WHERE SPECIES LIKE '%Thrush%';
UPDATE bird_strikes SET Generic_Category = 'Robin' WHERE SPECIES LIKE '%Robin%';
UPDATE bird_strikes SET Generic_Category = 'Catbird' WHERE SPECIES LIKE '%Catbird%';
UPDATE bird_strikes SET Generic_Category = 'Thrasher' WHERE SPECIES LIKE '%Thrasher%';
UPDATE bird_strikes SET Generic_Category = 'Mockingbird' WHERE SPECIES LIKE '%Mockingbird%';
UPDATE bird_strikes SET Generic_Category = 'Starling' WHERE SPECIES LIKE '%Starling%';
UPDATE bird_strikes SET Generic_Category = 'Waxwing' WHERE SPECIES LIKE '%Waxwing%';
UPDATE bird_strikes SET Generic_Category = 'Sparrow' WHERE SPECIES LIKE '%Sparrow%';
UPDATE bird_strikes SET Generic_Category = 'Tree' WHERE SPECIES LIKE '%Tree%';
UPDATE bird_strikes SET Generic_Category = 'Finch' WHERE SPECIES LIKE '%Finch%';
UPDATE bird_strikes SET Generic_Category = 'Goldfinch' WHERE SPECIES LIKE '%Goldfinch%';
UPDATE bird_strikes SET Generic_Category = 'Towhee' WHERE SPECIES LIKE '%Towhee%';
UPDATE bird_strikes SET Generic_Category = 'Chat' WHERE SPECIES LIKE '%Chat%';
UPDATE bird_strikes SET Generic_Category = 'Bobolink' WHERE SPECIES LIKE '%Bobolink%';
UPDATE bird_strikes SET Generic_Category = 'Meadowlark' WHERE SPECIES LIKE '%Meadowlark%';
UPDATE bird_strikes SET Generic_Category = 'Oriole' WHERE SPECIES LIKE '%Oriole%';
UPDATE bird_strikes SET Generic_Category = 'Blackbird' WHERE SPECIES LIKE '%Blackbird%';
UPDATE bird_strikes SET Generic_Category = 'Cowbird' WHERE SPECIES LIKE '%Cowbird%';
UPDATE bird_strikes SET Generic_Category = 'Grackle' WHERE SPECIES LIKE '%Grackle%';
UPDATE bird_strikes SET Generic_Category = 'Ovenbird' WHERE SPECIES LIKE '%Ovenbird%';
UPDATE bird_strikes SET Generic_Category = 'Warbler' WHERE SPECIES LIKE '%Warbler%';
UPDATE bird_strikes SET Generic_Category = 'Waterthrush' WHERE SPECIES LIKE '%Waterthrush%';
UPDATE bird_strikes SET Generic_Category = 'Yellowthroat' WHERE SPECIES LIKE '%Yellowthroat%';
UPDATE bird_strikes SET Generic_Category = 'Redstart' WHERE SPECIES LIKE '%Redstart%';
UPDATE bird_strikes SET Generic_Category = 'Parula' WHERE SPECIES LIKE '%Parula%';
UPDATE bird_strikes SET Generic_Category = 'Tanager' WHERE SPECIES LIKE '%Tanager%';
UPDATE bird_strikes SET Generic_Category = 'Cardinal' WHERE SPECIES LIKE '%Cardinal%';
UPDATE bird_strikes SET Generic_Category = 'Grosbeak' WHERE SPECIES LIKE '%Grosbeak%';
UPDATE bird_strikes SET Generic_Category = 'Bunting' WHERE SPECIES LIKE '%Bunting%';
UPDATE bird_strikes SET Generic_Category = 'Dickcissel' WHERE SPECIES LIKE '%Dickcissel%';

#SEARCH FOR NULL ROWS 
SELECT DISTINCT SPECIES FROM bird_strikes WHERE Generic_Category is null;

#UPDATE AIRPORT CODES IN bird_strikes table to match chicago flight id's
UPDATE bird_strikes
SET AIRPORT_ID = 'MDW'
WHERE AIRPORT_ID = 'KMDW';

UPDATE bird_strikes
SET AIRPORT_ID = 'ORD'
WHERE AIRPORT_ID = 'KORD';

#SET MISSING PRIMARY KEYS
ALTER TABLE bird_strikes ADD strike_id INT AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE bld_strikes ADD strike_id INT AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE chicago_flights ADD id INT AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE bird_populations ADD PRIMARY KEY (SPECIES_ID);
ALTER TABLE species_key ADD PRIMARY KEY (SPECIES_ID);

#INDEX COLUMNS FOR FASTER QUERIES
ALTER TABLE bird_strikes ADD INDEX INCIDENT_YEAR (INCIDENT_YEAR);
ALTER TABLE chicago_flights ADD INDEX INCIDENT_YEAR (year);

# PERFORM JOINS
#Total flights and total bird strikes per year per aiport  (takes 49.8 seconds had to edit time out settings)
SELECT cf.year as Year
,cf.airport as Airport
,SUM(cf.total_flights) as Total_FLights
,COUNT(bs.strike_id) as Total_Bird_Strikes
,ROUND(COUNT(bs.strike_id) / SUM(cf.total_flights),4)*100 as Perc_of_Flights_resulting_in_bird_strike
FROM chicago_flights cf
LEFT JOIN bird_strikes bs ON cf.airport = bs.AIRPORT_ID AND cf.year = bs.INCIDENT_YEAR
GROUP BY
cf.year, cf.airport; 

# Compare species as a % of population and % of strikes (obviously naming conventions are a problem that needs further cleanup
# & INNER JOIN will exclude species that exisit in one table but not the other)
CREATE VIEW grouped_bird_pop AS (
SELECT 
sk.Generic_Category 
,ROUND(SUM(bp.`Estimated % of State Population`),2) as Bird_Population_Percent
FROM bird_populations bp
INNER JOIN species_key sk ON bp.SPECIES_ID = sk.SPECIES_ID
GROUP BY sk.Generic_Category 
ORDER BY 2 DESC)
;
CREATE VIEW grouped_bird_strikes AS (
SELECT 
Generic_Category 
,ROUND(COUNT(strike_id) / (select count(*) FROM bird_strikes),2)*100 as Bird_Strikes_Percent
FROM bird_strikes 
GROUP BY Generic_Category
);
# INNER JOIN will exclude species groups that exisit in one table but not the other
SELECT gbs.Generic_Category
,gbs.Bird_Strikes_Percent
,gbp.Bird_Population_Percent
FROM grouped_bird_strikes gbs
INNER JOIN grouped_bird_pop gbp
ON gbs.Generic_Category = gbp.Generic_Category;

# LEFT JOIN shows about 56% of birdstrikes are still un accounted for 
SELECT gbs.Generic_Category
,gbs.Bird_Strikes_Percent
,gbp.Bird_Population_Percent
FROM grouped_bird_strikes gbs
LEFT JOIN grouped_bird_pop gbp
ON gbs.Generic_Category = gbp.Generic_Category
ORDER by 2 DESC;










