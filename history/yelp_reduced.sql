-- Every query I ran against this database in SQLiteStudio, in the order I ran them.
-- All hand-written. Includes the failed attempts and repeats.

-- 1. 2025-06-30 14:54, rows returned: 0
SELECT r1.review_id, r1.business_id, r1.stars, r1.useful
FROM review1
WHERE (r1.stars, r1.useful) IN (SELECT r2.stars, MAX(r2.useful)
FROM review r2
GROUP BY r2.stars)
ORDER BY r1.stars 
DESC, r1.useful DESC
LIMIT 10;

-- 2. 2025-06-30 15:07, rows returned: 5
SELECT r1.review_id, r1.business_id, r1.stars, r1.useful
FROM review r1
JOIN (
    SELECT stars, MAX(useful) AS max_useful
    FROM review
    GROUP BY stars
) r2 ON r1.stars = r2.stars AND r1.useful = r2.max_useful
ORDER BY r1.stars DESC, r1.useful DESC
LIMIT 10;

-- 3. 2025-06-30 15:08, rows returned: 28450
select business_id
from business;

-- 4. 2025-06-30 15:08, rows returned: 5
SELECT r1.review_id, r1.business_id, r1.stars, r1.useful
FROM review r1
JOIN (
    SELECT stars, MAX(useful) AS max_useful
    FROM review
    GROUP BY stars
) r2 ON r1.stars = r2.stars AND r1.useful = r2.max_useful
ORDER BY r1.stars DESC, r1.useful DESC
LIMIT 10;

-- 5. 2025-06-30 15:13, rows returned: 0
select name, business_id
from review;

-- 6. 2025-06-30 15:49, rows returned: 0
Create Table FavoriteLanguage (ProfileID integer, Language string);

-- 7. 2025-06-30 15:49, rows returned: 1
Insert into FavoriteLanguage values (800002, 'SQL');

-- 8. 2025-06-30 15:49, rows returned: 1
Insert into FavoriteLanguage Values (800001, 'English');

-- 9. 2025-06-30 15:49, rows returned: 1
Insert into FavoriteLanguage Values (800004, 'Latin');

-- 10. 2025-06-30 15:49, rows returned: 3
select *
from FavoriteLanguage;

-- 11. 2025-06-30 15:51, rows returned: 1
Update FavoriteLanguage
Set Language = 'SQL'
where ProfileID = 800004;

-- 12. 2025-06-30 15:51, rows returned: 3
select *
from FavoriteLanguage;

-- 13. 2025-06-30 15:52, rows returned: 0
Drop table FavoriteLanguage;

-- 14. 2025-07-08 15:13, rows returned: 5
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

-- 15. 2025-07-08 15:13, rows returned: 5
SELECT name, avg_rating
FROM (
SELECT b.name, AVG(r.stars) AS avg_rating
FROM business b
JOIN review r ON b.business_id = r.business_id
GROUP by b.business_id, b.name
) AS business_avg
ORDER by avg_rating DESC
LIMIT 5;

