--lol
SELECT b.name, h.day, h.open, h.close
FROM business b
JOIN hours h ON
b.business_id = h.business_id
ORDER by b.name, h.day;

SELECT r1.review_id, r1.business_id, r1.stars, r1.useful
FROM review1
WHERE (r1.stars, r1.useful) IN (SELECT r2.stars, MAX(r2.useful)
FROM review r2
GROUP BY r2.stars)
ORDER BY r1.stars 
DESC, r1.useful DESC
LIMIT 10;

--correct query -- If you're looking for the best reviews, I believe you can 
--self-join the useful INT with stars INT columns in the review table.  
SELECT r1.review_id, r1.business_id, r1.stars, r1.useful
FROM review r1
JOIN (
    SELECT stars, MAX(useful) AS max_useful
    FROM review
    GROUP BY stars
) r2 ON r1.stars = r2.stars AND r1.useful = r2.max_useful
ORDER BY r1.stars DESC, r1.useful DESC
LIMIT 10;

select name, business_id
from review;


--best reviews
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


--you could use subquery to find the top 5 businesses by average rating:
SELECT name, avg_rating
FROM (
SELECT b.name, AVG(r.stars) AS avg_rating
FROM business b
JOIN review r ON b.business_id = r.business_id
GROUP by b.business_id, b.name
) AS business_avg
ORDER by avg_rating DESC
LIMIT 5;


