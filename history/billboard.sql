-- Every query I ran against this database in SQLiteStudio, in the order I ran them.
-- All hand-written. Includes the failed attempts and repeats.

-- 1. 2025-05-26 15:17, rows returned: 0
select Artist
From Billboard;

-- 2. 2025-05-27 18:57, rows returned: 20
select Artist
From Artists;

-- 3. 2025-05-28 21:04, rows returned: 20
select user_screen_name, Avg(retweet_count) as Avg_Retweet_Count
from Tweets
group by user_screen_name
order by Avg_Retweet_Count desc;

-- 4. 2025-05-28 21:08, rows returned: 5
select user_screen_name, Avg(retweet_count) as Avg_Retweet_Count
from Tweets
group by user_screen_name
having text like '%#%'
order by Avg_Retweet_Count desc;

-- 5. 2025-05-28 21:08, rows returned: 5
select user_screen_name
from Tweets
group by user_screen_name
having text like '%#%';

-- 6. 2025-05-28 21:09, rows returned: 620
select text, user_screen_name, Avg(retweet_count) as Avg_Retweet_Count
from Tweets
group by text, user_screen_name
having text like '%#%'
order by Avg_Retweet_Count desc;

-- 7. 2025-05-28 21:14, rows returned: 20
select user_screen_name, Avg(Favorite_Count) as Avg_Favorite_Count
from Tweets
group by user_screen_name
order by Avg_Favorite_Count desc;

-- 8. 2025-05-28 21:17, rows returned: 11
select user_screen_name, Avg(Favorite_Count) as Avg_Favorite_Count
from Tweets
group by user_screen_name
having Avg_Favorite_Count >= 1000
order by Avg_Favorite_Count desc;

-- 9. 2025-05-28 21:28, rows returned: 2
select user_screen_name, Avg(Favorite_Count) as Avg_Favorite_Count
from Tweets
group by user_screen_name
having text like '%love%'
order by Avg_Favorite_Count desc;

-- 10. 2025-05-28 21:29, rows returned: 154
select text, user_screen_name, Avg(Favorite_Count) as Avg_Favorite_Count
from Tweets
group by text, user_screen_name
having text like '%love%'
order by Avg_Favorite_Count desc;

-- 11. 2025-05-28 21:31, rows returned: 2
select user_screen_name, Avg(Favorite_Count) as Avg_Favorite_Count
from Tweets
group by user_screen_name
having text like '%love%'
order by Avg_Favorite_Count desc;

-- 12. 2025-05-28 21:34, rows returned: 0
Select *
from Concentration as L, FavoriteBooks R
where L.ProfileId = R.ProfileId;

-- 13. 2025-06-01 15:25, rows returned: 0
Select *
from Song;

-- 14. 2025-06-01 19:38, rows returned: 21
Select *
from Songs;

