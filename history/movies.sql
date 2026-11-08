-- Every query I ran against this database in SQLiteStudio, in the order I ran them.
-- All hand-written. Includes the failed attempts and repeats.

-- 1. 2025-05-24 17:51, rows returned: 30
select * from MovieGross;

-- 2. 2025-05-27 19:25, rows returned: 1
select count(distinct person)
from OscarNoms
where movie = 'Boyhood';

-- 3. 2025-05-27 19:28, rows returned: 5
select count(distinct category)
from OscarNoms
where movie = 'Boyhood'
group by person;

-- 4. 2025-05-27 19:28, rows returned: 5
select count(distinct category), person
from OscarNoms
where movie = 'Boyhood'
group by person;

-- 5. 2025-05-27 19:29, rows returned: 5
select person, count(distinct category)
from OscarNoms
where movie = 'Boyhood'
group by person;

-- 6. 2025-05-27 19:30, rows returned: 166
select *
from OscarNoms;

-- 7. 2025-05-27 19:30, rows returned: 5
select person, count(distinct category)
from OscarNoms
where movie = 'Boyhood'
group by person;

-- 8. 2025-05-27 19:30, rows returned: 5
select person, count(distinct category)
from OscarNoms
where movie = 'Boyhood'
group by person;

-- 9. 2025-05-27 19:31, rows returned: 166
select *
from OscarNoms;

-- 10. 2025-05-27 19:32, rows returned: 0
select person, count(distinct *)
from OscarNoms
where movie = 'Boyhood'
group by person;

-- 11. 2025-05-27 19:34, rows returned: 5
select person, count(distinct category)
from OscarNoms
where movie = 'Boyhood'
group by person;

-- 12. 2025-05-27 19:35, rows returned: 117
select person, count(distinct category)
from OscarNoms
group by person;

-- 13. 2025-05-27 19:38, rows returned: 0
select distinct person, count(*) as freq
from OscarNoms
group by person
having category = 2
order desc;

-- 14. 2025-05-27 19:38, rows returned: 0
select distinct person, count(*) as freq
from OscarNoms
group by person
having category = 2;

-- 15. 2025-05-27 19:38, rows returned: 117
select distinct person, count(*) as freq
from OscarNoms
group by person
having 2;

-- 16. 2025-05-27 19:39, rows returned: 8
select distinct person, count(*) as freq
from OscarNoms
group by person
having freq >=2;

-- 17. 2025-05-27 19:39, rows returned: 7
select distinct person, count(*) as freq
from OscarNoms
group by person
having freq ==2;

-- 18. 2025-05-27 19:41, rows returned: 30
select *
from MovieGross;

-- 19. 2025-05-27 19:43, rows returned: 0
select Studio, Worldwide
from MovieGross
order by desc;

-- 20. 2025-05-27 19:46, rows returned: 30
select Studio, Worldwide as freq
from MovieGross
order by freq desc;

-- 21. 2025-05-27 19:47, rows returned: 30
select distinct Studio, Worldwide as freq
from MovieGross
order by freq desc;

-- 22. 2025-05-27 19:48, rows returned: 9
select distinct Studio
from MovieGross;

-- 23. 2025-05-27 19:49, rows returned: 1
select distinct Studio, sum(Worldwide)
from MovieGross;

-- 24. 2025-05-27 19:50, rows returned: 0
select distinct Studio, sum(Worldwide) as freq
from MovieGross
group by freq;

-- 25. 2025-05-27 19:51, rows returned: 9
select distinct Studio, sum(Worldwide) as freq
from MovieGross
group by studio
order by freq;

-- 26. 2025-05-27 19:51, rows returned: 9
select distinct Studio, sum(Worldwide) as freq
from MovieGross
group by studio
order by freq desc;

