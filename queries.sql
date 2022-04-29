-- This is Query 1 --
SELECT * FROM owners 
LEFT JOIN vehicles
ON owners.id = vehicles.owner_id;

-- This is Query 2 -- 
SELECT first_name, last_name, COUNT(owners.id) FROM owners 
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name
ORDER BY first_name;

-- This is Query 3 --
SELECT first_name, last_name, COUNT(owners.id), AVG(vehicles.price) FROM owners 
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name 
HAVING AVG(vehicles.price) > 10000 AND COUNT(owners.id) > 1
ORDER BY COUNT(owners.id) DESC;