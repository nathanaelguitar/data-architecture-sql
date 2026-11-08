-- Database: Movies
-- Queries written in SQLiteStudio (SQLite). Each is the final working version of a query I iterated on.

-- 1. 2025-05-27
select person, count(distinct category)
from OscarNoms
where movie = 'Boyhood'
group by person;

-- 2. 2025-05-27
select distinct person, count(*) as freq
from OscarNoms
group by person
having freq ==2;

-- 3. 2025-05-27
select distinct Studio, sum(Worldwide) as freq
from MovieGross
group by studio
order by freq desc;

