USE sakila;

SELECT * FROM actor;

-- SELECT first_name, last_name FROM actor;

ALTER TABLE actor
ADD COLUMN actor_name VARCHAR(45);

SET SQL_SAFE_UPDATES = 0;
UPDATE actor SET actor_name = CONCAT(first_name, ' ', last_name);
SET SQL_SAFE_UPDATES = 1;
#

-- SELECT * FROM actor WHERE first_name = "Joe"; 
-- 
-- SELECT * FROM actor WHERE last_name LIKE '%GEN%'
#

-- SELECT * FROM actor WHERE last_name LIKE '%LI%'
-- ORDER BY last_name, first_name;
#

-- SELECT country_id, country
-- FROM country
-- WHERE country IN ('Afghanistan', 'Bangladesh', 'China');
#

-- ALTER TABLE actor
-- ADD COLUMN middle_name VARCHAR(45)
-- AFTER first_name;
-- 
-- UPDATE middle_name set type = BLOBS;
-- 
-- ALTER TABLE actor
-- DROP middle_name;
#
-- 
-- SELECT last_name, COUNT(*) FROM actor GROUP BY last_name;
-- #
-- SELECT last_name, COUNT(*) AS count FROM actor 
-- 	GROUP BY last_name
-- 	HAVING count >= 2;
#
-- SET SQL_SAFE_UPDATES = 0;
-- UPDATE actor
-- SET first_name = 'HARPO'
-- WHERE actor_name = 'GROUCHO WILLIAMS';
-- SET SQL_SAFE_UPDATES = 1;
#

UPDATE actor
SET first_name = 'HARPO'
WHERE Anything IN ( 
    SELECT
        Anything 
    FROM
        TblName
    GROUP BY
        Anything
    HAVING 
        COUNT(*) =1
)




