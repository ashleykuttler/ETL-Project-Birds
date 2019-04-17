#CREATE DATABASE
CREATE DATABASE birds_db;
USE birds_db;

# RUN Jupyter notebook to clean data and write tables

#ADD GENERIC NAME COLUMNS TO bird_strikes
ALTER TABLE bird_strikes ADD Generic_Category VARCHAR(50);

#QUERY & EXPORT TO CSV GENERIC NAME LIST TO GENERATE LIST OF UPDATE QUERIES (see Data/Generic_Category.csv)
SELECT distinct Generic_Category FROM Species_key;

#TURN OFF SAFE MODE
SET SQL_SAFE_UPDATES = 0;

#RUN UPDATE QUERIES TO FILL IN GENERIC NAMES USING WILDCARDS
UPDATE bird_strikes SET Generic_Category = 'Chachalaca' WHERE SPECIES LIKE '%Chachalaca%';
UPDATE bird_strikes SET Generic_Category = 'Quail' WHERE SPECIES LIKE '%Quail%';
UPDATE bird_strikes SET Generic_Category = 'Bobwhite' WHERE SPECIES LIKE '%Bobwhite%';
UPDATE bird_strikes SET Generic_Category = 'Partridge' WHERE SPECIES LIKE '%Partridge%';
UPDATE bird_strikes SET Generic_Category = 'Pheasant' WHERE SPECIES LIKE '%Pheasant%';
UPDATE bird_strikes SET Generic_Category = 'Grouse' WHERE SPECIES LIKE '%Grouse%';
UPDATE bird_strikes SET Generic_Category = 'Sage-Grouse' WHERE SPECIES LIKE '%Sage-Grouse%';
UPDATE bird_strikes SET Generic_Category = 'Ptarmigan' WHERE SPECIES LIKE '%Ptarmigan%';
UPDATE bird_strikes SET Generic_Category = 'Prairie-Chicken' WHERE SPECIES LIKE '%Prairie-Chicken%';
UPDATE bird_strikes SET Generic_Category = 'Turkey' WHERE SPECIES LIKE '%Turkey%';
UPDATE bird_strikes SET Generic_Category = 'Pigeon' WHERE SPECIES LIKE '%Pigeon%';
UPDATE bird_strikes SET Generic_Category = 'Collared-Dove' WHERE SPECIES LIKE '%Collared-Dove%';
UPDATE bird_strikes SET Generic_Category = 'Dove' WHERE SPECIES LIKE '%Dove%';
UPDATE bird_strikes SET Generic_Category = 'Ground-Dove' WHERE SPECIES LIKE '%Ground-Dove%';
UPDATE bird_strikes SET Generic_Category = 'Cuckoo' WHERE SPECIES LIKE '%Cuckoo%';
UPDATE bird_strikes SET Generic_Category = 'Roadrunner' WHERE SPECIES LIKE '%Roadrunner%';
UPDATE bird_strikes SET Generic_Category = 'Ani' WHERE SPECIES LIKE '%Ani%';
UPDATE bird_strikes SET Generic_Category = 'Nighthawk' WHERE SPECIES LIKE '%Nighthawk%';
UPDATE bird_strikes SET Generic_Category = 'Poorwill' WHERE SPECIES LIKE '%Poorwill%';
UPDATE bird_strikes SET Generic_Category = 'Whip-poor-will' WHERE SPECIES LIKE '%Whip-poor-will%';
UPDATE bird_strikes SET Generic_Category = 'Swift' WHERE SPECIES LIKE '%Swift%';
UPDATE bird_strikes SET Generic_Category = 'Hummingbird' WHERE SPECIES LIKE '%Hummingbird%';
UPDATE bird_strikes SET Generic_Category = 'Vulture' WHERE SPECIES LIKE '%Vulture%';
UPDATE bird_strikes SET Generic_Category = 'Condor' WHERE SPECIES LIKE '%Condor%';
UPDATE bird_strikes SET Generic_Category = 'Kite' WHERE SPECIES LIKE '%Kite%';
UPDATE bird_strikes SET Generic_Category = 'Eagle' WHERE SPECIES LIKE '%Eagle%';
UPDATE bird_strikes SET Generic_Category = 'Harrier' WHERE SPECIES LIKE '%Harrier%';
UPDATE bird_strikes SET Generic_Category = 'Hawk' WHERE SPECIES LIKE '%Hawk%';
UPDATE bird_strikes SET Generic_Category = 'Goshawk' WHERE SPECIES LIKE '%Goshawk%';
UPDATE bird_strikes SET Generic_Category = 'Black' WHERE SPECIES LIKE '%Black%';
UPDATE bird_strikes SET Generic_Category = 'Owl' WHERE SPECIES LIKE '%Owl%';
UPDATE bird_strikes SET Generic_Category = 'Screech-Owl' WHERE SPECIES LIKE '%Screech-Owl%';
UPDATE bird_strikes SET Generic_Category = 'Horned' WHERE SPECIES LIKE '%Horned%';
UPDATE bird_strikes SET Generic_Category = 'Pygmy-Owl' WHERE SPECIES LIKE '%Pygmy-Owl%';
UPDATE bird_strikes SET Generic_Category = 'Gray' WHERE SPECIES LIKE '%Gray%';
UPDATE bird_strikes SET Generic_Category = 'Saw-whet' WHERE SPECIES LIKE '%Saw-whet%';
UPDATE bird_strikes SET Generic_Category = 'Trogon' WHERE SPECIES LIKE '%Trogon%';
UPDATE bird_strikes SET Generic_Category = 'Kingfisher' WHERE SPECIES LIKE '%Kingfisher%';
UPDATE bird_strikes SET Generic_Category = 'Woodpecker' WHERE SPECIES LIKE '%Woodpecker%';
UPDATE bird_strikes SET Generic_Category = 'Sapsucker' WHERE SPECIES LIKE '%Sapsucker%';
UPDATE bird_strikes SET Generic_Category = 'Three-toed' WHERE SPECIES LIKE '%Three-toed%';
UPDATE bird_strikes SET Generic_Category = 'Flicker' WHERE SPECIES LIKE '%Flicker%';
UPDATE bird_strikes SET Generic_Category = 'Caracara' WHERE SPECIES LIKE '%Caracara%';
UPDATE bird_strikes SET Generic_Category = 'Kestrel' WHERE SPECIES LIKE '%Kestrel%';
UPDATE bird_strikes SET Generic_Category = 'Falcon' WHERE SPECIES LIKE '%Falcon%';
UPDATE bird_strikes SET Generic_Category = 'Parakeet' WHERE SPECIES LIKE '%Parakeet%';
UPDATE bird_strikes SET Generic_Category = 'Beardless-Tyrannulet' WHERE SPECIES LIKE '%Beardless-Tyrannulet%';
UPDATE bird_strikes SET Generic_Category = 'Flycatcher' WHERE SPECIES LIKE '%Flycatcher%';
UPDATE bird_strikes SET Generic_Category = 'Crested' WHERE SPECIES LIKE '%Crested%';
UPDATE bird_strikes SET Generic_Category = 'Kingbird' WHERE SPECIES LIKE '%Kingbird%';
UPDATE bird_strikes SET Generic_Category = 'Pewee' WHERE SPECIES LIKE '%Pewee%';
UPDATE bird_strikes SET Generic_Category = 'Wood-Pewee' WHERE SPECIES LIKE '%Wood-Pewee%';
UPDATE bird_strikes SET Generic_Category = 'Phoebe' WHERE SPECIES LIKE '%Phoebe%';
UPDATE bird_strikes SET Generic_Category = 'Shrike' WHERE SPECIES LIKE '%Shrike%';
UPDATE bird_strikes SET Generic_Category = 'Vireo' WHERE SPECIES LIKE '%Vireo%';
UPDATE bird_strikes SET Generic_Category = 'Jay' WHERE SPECIES LIKE '%Jay%';
UPDATE bird_strikes SET Generic_Category = 'Scrub-Jay' WHERE SPECIES LIKE '%Scrub-Jay%';
UPDATE bird_strikes SET Generic_Category = 'Nutcracker' WHERE SPECIES LIKE '%Nutcracker%';
UPDATE bird_strikes SET Generic_Category = 'Magpie' WHERE SPECIES LIKE '%Magpie%';
UPDATE bird_strikes SET Generic_Category = 'Crow' WHERE SPECIES LIKE '%Crow%';
UPDATE bird_strikes SET Generic_Category = 'Raven' WHERE SPECIES LIKE '%Raven%';
UPDATE bird_strikes SET Generic_Category = 'Lark' WHERE SPECIES LIKE '%Lark%';
UPDATE bird_strikes SET Generic_Category = 'Martin' WHERE SPECIES LIKE '%Martin%';
UPDATE bird_strikes SET Generic_Category = 'Swallow' WHERE SPECIES LIKE '%Swallow%';
UPDATE bird_strikes SET Generic_Category = 'Rough-winged' WHERE SPECIES LIKE '%Rough-winged%';
UPDATE bird_strikes SET Generic_Category = 'Chickadee' WHERE SPECIES LIKE '%Chickadee%';
UPDATE bird_strikes SET Generic_Category = 'Titmouse' WHERE SPECIES LIKE '%Titmouse%';
UPDATE bird_strikes SET Generic_Category = 'Nuthatch' WHERE SPECIES LIKE '%Nuthatch%';
UPDATE bird_strikes SET Generic_Category = 'Creeper' WHERE SPECIES LIKE '%Creeper%';
UPDATE bird_strikes SET Generic_Category = 'Wren' WHERE SPECIES LIKE '%Wren%';
UPDATE bird_strikes SET Generic_Category = 'Gnatcatcher' WHERE SPECIES LIKE '%Gnatcatcher%';
UPDATE bird_strikes SET Generic_Category = 'Dipper' WHERE SPECIES LIKE '%Dipper%';
UPDATE bird_strikes SET Generic_Category = 'Kinglet' WHERE SPECIES LIKE '%Kinglet%';
UPDATE bird_strikes SET Generic_Category = 'Warbler' WHERE SPECIES LIKE '%Warbler%';
UPDATE bird_strikes SET Generic_Category = 'Wheatear' WHERE SPECIES LIKE '%Wheatear%';
UPDATE bird_strikes SET Generic_Category = 'Bluebird' WHERE SPECIES LIKE '%Bluebird%';
UPDATE bird_strikes SET Generic_Category = 'Solitaire' WHERE SPECIES LIKE '%Solitaire%';
UPDATE bird_strikes SET Generic_Category = 'Thrush' WHERE SPECIES LIKE '%Thrush%';
UPDATE bird_strikes SET Generic_Category = 'Robin' WHERE SPECIES LIKE '%Robin%';
UPDATE bird_strikes SET Generic_Category = 'Catbird' WHERE SPECIES LIKE '%Catbird%';
UPDATE bird_strikes SET Generic_Category = 'Thrasher' WHERE SPECIES LIKE '%Thrasher%';
UPDATE bird_strikes SET Generic_Category = 'Mockingbird' WHERE SPECIES LIKE '%Mockingbird%';
UPDATE bird_strikes SET Generic_Category = 'Starling' WHERE SPECIES LIKE '%Starling%';
UPDATE bird_strikes SET Generic_Category = 'Waxwing' WHERE SPECIES LIKE '%Waxwing%';
UPDATE bird_strikes SET Generic_Category = 'Sparrow' WHERE SPECIES LIKE '%Sparrow%';
UPDATE bird_strikes SET Generic_Category = 'Tree' WHERE SPECIES LIKE '%Tree%';
UPDATE bird_strikes SET Generic_Category = 'Pipit' WHERE SPECIES LIKE '%Pipit%';
UPDATE bird_strikes SET Generic_Category = 'Grosbeak' WHERE SPECIES LIKE '%Grosbeak%';
UPDATE bird_strikes SET Generic_Category = 'Rosy-Finch' WHERE SPECIES LIKE '%Rosy-Finch%';
UPDATE bird_strikes SET Generic_Category = 'Finch' WHERE SPECIES LIKE '%Finch%';
UPDATE bird_strikes SET Generic_Category = 'Redpoll' WHERE SPECIES LIKE '%Redpoll%';
UPDATE bird_strikes SET Generic_Category = 'Crossbill' WHERE SPECIES LIKE '%Crossbill%';
UPDATE bird_strikes SET Generic_Category = 'Siskin' WHERE SPECIES LIKE '%Siskin%';
UPDATE bird_strikes SET Generic_Category = 'Goldfinch' WHERE SPECIES LIKE '%Goldfinch%';
UPDATE bird_strikes SET Generic_Category = 'Longspur' WHERE SPECIES LIKE '%Longspur%';
UPDATE bird_strikes SET Generic_Category = 'Bunting' WHERE SPECIES LIKE '%Bunting%';
UPDATE bird_strikes SET Generic_Category = 'Towhee' WHERE SPECIES LIKE '%Towhee%';
UPDATE bird_strikes SET Generic_Category = 'Junco' WHERE SPECIES LIKE '%Junco%';
UPDATE bird_strikes SET Generic_Category = 'Chat' WHERE SPECIES LIKE '%Chat%';
UPDATE bird_strikes SET Generic_Category = 'Blackbird' WHERE SPECIES LIKE '%Blackbird%';
UPDATE bird_strikes SET Generic_Category = 'Meadowlark' WHERE SPECIES LIKE '%Meadowlark%';
UPDATE bird_strikes SET Generic_Category = 'Oriole' WHERE SPECIES LIKE '%Oriole%';
UPDATE bird_strikes SET Generic_Category = 'Cowbird' WHERE SPECIES LIKE '%Cowbird%';
UPDATE bird_strikes SET Generic_Category = 'Grackle' WHERE SPECIES LIKE '%Grackle%';
UPDATE bird_strikes SET Generic_Category = 'Waterthrush' WHERE SPECIES LIKE '%Waterthrush%';
UPDATE bird_strikes SET Generic_Category = 'Yellowthroat' WHERE SPECIES LIKE '%Yellowthroat%';
UPDATE bird_strikes SET Generic_Category = 'Redstart' WHERE SPECIES LIKE '%Redstart%';
UPDATE bird_strikes SET Generic_Category = 'May' WHERE SPECIES LIKE '%May%';
UPDATE bird_strikes SET Generic_Category = 'Parula' WHERE SPECIES LIKE '%Parula%';
UPDATE bird_strikes SET Generic_Category = 'Blue' WHERE SPECIES LIKE '%Blue%';
UPDATE bird_strikes SET Generic_Category = 'Green' WHERE SPECIES LIKE '%Green%';
UPDATE bird_strikes SET Generic_Category = 'Tanager' WHERE SPECIES LIKE '%Tanager%';
UPDATE bird_strikes SET Generic_Category = 'Cardinal' WHERE SPECIES LIKE '%Cardinal%';

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

# PERFORM JOIN
#Total flights and total bird strikes per year per aiport (takes 49.8 seconds had to edit time out settings)
SELECT cf.year as Year
,cf.airport as Airport
,SUM(cf.total_flights) as Total_FLights
,COUNT(bs.strike_id) as Total_Bird_Strikes
FROM chicago_flights cf
LEFT JOIN bird_strikes bs ON cf.airport = bs.AIRPORT_ID AND cf.year = bs.INCIDENT_YEAR
GROUP BY
cf.year, cf.airport; 

# Compare species as a % of population and % of strikes (obviously naming conventions are a problem that needs further cleanup
# & INNER JOIN will exclude species that exisit in one table but not the other)
SELECT 
bs.Generic_Category as Species_Type
,ROUND(COUNT(bs.strike_id) / (select count(*) FROM bird_strikes),2)*100 as Bird_Strikes_Percent
,ROUND(AVG(bp.`Estimated % of State Population`),2) as Bird_Population_Percent
FROM bird_strikes bs
INNER JOIN species_key sk ON bs.Generic_Category = sk.Generic_Category
INNER JOIN bird_populations bp ON SK.SPECIES_ID = bp.SPECIES_ID
GROUP BY bs.Generic_Category 
ORDER BY 2 DESC;










