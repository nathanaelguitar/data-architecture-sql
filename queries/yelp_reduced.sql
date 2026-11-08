-- Database: yelp_reduced
-- Queries written in SQLiteStudio (SQLite). Each is the final working version of a query I iterated on.

-- 1. 2025-06-30
SELECT r1.review_id, r1.business_id, r1.stars, r1.useful
FROM review r1
JOIN (
    SELECT stars, MAX(useful) AS max_useful
    FROM review
    GROUP BY stars
) r2 ON r1.stars = r2.stars AND r1.useful = r2.max_useful
ORDER BY r1.stars DESC, r1.useful DESC
LIMIT 10;

-- 2. 2025-06-30
Create Table FavoriteLanguage (ProfileID integer, Language string);

-- 3. 2025-06-30
Insert into FavoriteLanguage Values (800004, 'Latin');

-- 4. 2025-06-30
Update FavoriteLanguage
Set Language = 'SQL'
where ProfileID = 800004;

-- 5. 2025-06-30
Drop table FavoriteLanguage;

-- 6. 2025-07-08
SELECT 
    b.name AS business_name,
    r1.review_id,
    r1.stars,
    r1.useful
FROM review r1
JOIN business b ON r1.business_id = b.business_id
JOIN (
    SELECT 
        stars, 
        MAX(useful) AS max_useful
    FROM review
    GROUP BY stars
) r2 ON r1.stars = r2.stars AND r1.useful = r2.max_useful
ORDER BY r1.stars DESC, r1.useful DESC
LIMIT 10;

-- 7. 2025-07-08
SELECT name, avg_rating
FROM (
SELECT b.name, AVG(r.stars) AS avg_rating
FROM business b
JOIN review r ON b.business_id = r.business_id
GROUP by b.business_id, b.name
) AS business_avg
ORDER by avg_rating DESC
LIMIT 5;

