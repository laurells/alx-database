-- A script that lists all cities contained in the database 

USE hbtn_test_db_9;

SELECT cities.id, cities.name, states.name
FROM cities, states
WHERE states.id = state_id
ORDER BY cities.id;