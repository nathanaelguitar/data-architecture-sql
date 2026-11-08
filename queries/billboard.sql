-- Database: Billboard
-- Queries written in SQLiteStudio (SQLite). Each is the final working version of a query I iterated on.

-- 1. 2025-05-28
select user_screen_name, Avg(Favorite_Count) as Avg_Favorite_Count
from Tweets
group by user_screen_name
having text like '%love%'
order by Avg_Favorite_Count desc;

