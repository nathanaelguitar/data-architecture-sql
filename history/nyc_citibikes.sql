-- Every query I ran against this database in SQLiteStudio, in the order I ran them.
-- All hand-written. Includes the failed attempts and repeats.

-- 1. 2025-06-19 21:47, rows returned: 49161
select *
from citibikerides;

-- 2. 2025-06-19 21:47, rows returned: 1
SELECT count(*)
from citibikerides;

-- 3. 2025-06-20 14:20, rows returned: 334
select start_station_id, count(*) as ride_count
from citibikerides
where strftime('%w', starttime) = '1'
group by start_station_id
order by count(*) desc;

-- 4. 2025-06-21 16:08, rows returned: 4
select 
    case
        when birth_year < 1960 then 'Older'
        when birth_year >= 1960 AND birth_year <= 1989 then 'Middle'
        when birth_year >= 1990 then 'Younger'
        else 'Other'
    end as AgeGroup
from citibikerides
group by AgeGroup;

-- 5. 2025-06-21 16:08, rows returned: 4
select 
    case
        when birth_year < 1960 then 'Older'
        when birth_year >= 1960 AND birth_year <= 1989 then 'Middle'
        when birth_year >= 1990 then 'Younger'
    end as AgeGroup
from citibikerides
group by AgeGroup;

-- 6. 2025-06-21 16:09, rows returned: 4
select 
    case
        when birth_year <= 1960 then 'Older'
        when birth_year >= 1960 AND birth_year <= 1989 then 'Middle'
        when birth_year >= 1990 then 'Younger'
    end as AgeGroup
from citibikerides
group by AgeGroup;

-- 7. 2025-06-21 16:09, rows returned: 49161
select birth_year
from citibikerides;

-- 8. 2025-06-21 16:10, rows returned: 1
select birth_year, count(*) as freq
from citibikerides
order by freq desc
limit 10;

-- 9. 2025-06-21 16:10, rows returned: 10
select birth_year, count(*) as freq
from citibikerides
group by birth_year
order by freq desc
limit 10;

-- 10. 2025-06-21 16:10, rows returned: 10
select birth_year, count(*) as freq
from citibikerides
group by birth_year
order by birth_year desc
limit 10;

-- 11. 2025-06-21 16:10, rows returned: 71
select birth_year, count(*) as freq
from citibikerides
group by birth_year
order by birth_year desc;

-- 12. 2025-06-21 16:11, rows returned: 71
select birth_year, count(*) as freq
from citibikerides
group by birth_year
order by birth_year asc;

-- 13. 2025-06-21 16:11, rows returned: 0
select 
    case
        when birth_year < 1960 then 'Older'
        when birth_year >= 1960 AND birth_year <= 1989 then 'Middle'
        when birth_year >= 1990 then 'Younger'
    end as AgeGroup
from citibikerides
group by AgeGroup desc;

-- 14. 2025-06-21 16:12, rows returned: 4
select 
    case
        when birth_year < 1960 then 'Older'
        when birth_year >= 1960 AND birth_year <= 1989 then 'Middle'
        when birth_year >= 1990 then 'Younger'
    end as AgeGroup
from citibikerides
group by AgeGroup
order by AgeGroup asc;

-- 15. 2025-06-21 16:12, rows returned: 4
select 
    case
        when birth_year < 1960 then 'Older'
        when birth_year >= 1960 AND birth_year <= 1989 then 'Middle'
        when birth_year >= 1990 then 'Younger'
    end as AgeGroup
from citibikerides
group by AgeGroup
order by AgeGroup desc;

-- 16. 2025-06-21 16:12, rows returned: 4
select 
    case
        when birth_year < 1960 then 'Older'
        when birth_year >= 1960 AND birth_year <= 1989 then 'Middle'
        when birth_year >= 1990 then 'Younger'
    end as AgeGroup
from citibikerides
group by AgeGroup
order by birth_year asc;

-- 17. 2025-06-21 16:12, rows returned: 4
select 
    case
        when birth_year < 1960 then 'Older'
        when birth_year >= 1960 AND birth_year <= 1989 then 'Middle'
        when birth_year >= 1990 then 'Younger'
    end as AgeGroup
from citibikerides
group by AgeGroup
order by birth_year desc;

-- 18. 2025-06-21 16:38, rows returned: 46957
select starttime
from citibikerides
group by starttime
order by starttime asc;

-- 19. 2025-06-21 16:39, rows returned: 49140
select starttime, stoptime
from citibikerides
group by starttime, stoptime
order by starttime asc;

-- 20. 2025-06-21 16:39, rows returned: 49140
select starttime, stoptime
from citibikerides
group by starttime, stoptime
order by starttime asc, stoptime asc;

-- 21. 2025-06-21 16:53, rows returned: 49161
select usertype
from citibikerides;

-- 22. 2025-06-21 16:56, rows returned: 4
select 
    case
        when strftime('%H', starttime) <= '12:00:00' then 'Morning'
        else 'Afternoon'
    end as TimeOfDay, usertype, count(*) as freq
from citibikerides
group by TimeOfDay, usertype
order by freq desc;

-- 23. 2025-06-21 17:09, rows returned: 49140
select starttime, stoptime
from citibikerides
group by starttime, stoptime
order by starttime asc, stoptime asc;

-- 24. 2025-06-21 17:12, rows returned: 1
select
    case
        when strftime('%w', starttime) = '0' then 'Weekend'
        else 'Weekday'
    end as RideType, count(*) as freq
from citibikerides;

-- 25. 2025-06-21 17:13, rows returned: 1
select usertype, starttime,
    case
        when strftime('%w', starttime) = '0' then 'Weekend'
        else 'Weekday'
    end as RideType, count(*) as freq
from citibikerides;

-- 26. 2025-06-21 17:14, rows returned: 1
select usertype, starttime,
    case
        when strftime('%w', starttime) = '0' AND strftime('%w', starttime) = '6' then 'Weekend'
        else 'Weekday'
    end as RideType, count(*) as freq
from citibikerides;

-- 27. 2025-06-21 17:18, rows returned: 1
select usertype, starttime,
    case
        when strftime('%w', starttime) = '0' OR strftime('%w', starttime) = '6' then 'Weekend'
        else 'Weekday'
    end as RideType, count(*) as freq
from citibikerides;

-- 28. 2025-06-21 17:21, rows returned: 49161
SELECT
  usertype,
  starttime,
  CASE
    WHEN strftime('%w', starttime) = '0' OR strftime('%w', starttime) = '6' THEN 'Weekend'
    ELSE 'Weekday'
  END AS RideType
FROM
  citibikerides;

-- 29. 2025-06-21 17:28, rows returned: 2
select usertype,
    case
        when strftime('%w', starttime) = '0' OR strftime('%w', starttime) = '6' then 'Weekend'
        else 'Weekday'
    end as RideType, count(*) as freq
from citibikerides
group by RideType
order by freq desc;

-- 30. 2025-06-21 17:29, rows returned: 2
select usertype,
    case
        when strftime('%w', starttime) = '0' OR strftime('%w', starttime) = '6' then 'Weekend'
        else 'Weekday'
    end as RideType, count(*) as freq
from citibikerides
where usertype = 'Customer'
group by RideType
order by freq desc;

-- 31. 2025-06-21 17:30, rows returned: 0
create temporary table T1 as
    select Sex, "Political.Views", count(*) as frequency
    from profiles
    group by Sex, "Political.Views";

-- 32. 2025-06-21 21:33, rows returned: 393
select *
from station_info;

-- 33. 2025-06-21 21:34, rows returned: 49161
select start_station_id
from citibikerides;

-- 34. 2025-06-21 21:40, rows returned: 49161
select c.*, s.station_name as start_station_name
from citibikerides c JOIN station_info s
on c.start_station_id = s.station_id;

-- 35. 2025-06-21 21:43, rows returned: 49161
select start_station_id
from citibikerides;

-- 36. 2025-06-21 21:43, rows returned: 393
select station_id
from station_info;

-- 37. 2025-06-21 21:43, rows returned: 49161
select start_station_id
from citibikerides;

-- 38. 2025-06-21 21:43, rows returned: 393
select station_id
from station_info;

-- 39. 2025-06-21 21:46, rows returned: 0
create temp table T1 as
select c.*, s.station_name as start_station_name
from citibikerides c JOIN station_info s
on c.start_station_id = s.station_id;

-- 40. 2025-06-21 21:47, rows returned: 10
select * from T1 limit 10;

-- 41. 2025-06-22 19:09, rows returned: 393
select station_id
from station_info;

-- 42. 2025-06-22 19:09, rows returned: 49161
select start_station_id
from citibikerides;

-- 43. 2025-06-22 19:09, rows returned: 49161
select start_station_id
from citibikerides;

-- 44. 2025-06-22 19:09, rows returned: 0
select B.*, A.end_station_id as end_station_name
from T1 B JOIN station_info A
on B.end_station_id = A.station_id;

-- 45. 2025-06-22 19:17, rows returned: 0
select B.*, A.station_name as end_station_name
from T1 B JOIN station_info A
on B.end_station_id = A.station_id;

-- 46. 2025-06-22 19:17, rows returned: 49161
select * 
from citibikerides;

-- 47. 2025-06-22 19:17, rows returned: 393
select *
from station_info;

-- 48. 2025-06-22 19:21, rows returned: 0
create temp table T2 as
select B.*, A.station_name as end_station_name
from T1 B JOIN station_info A
on B.end_station_id = A.station_id;

-- 49. 2025-06-22 19:21, rows returned: 10
SELECT * FROM T2 LIMIT 10;

-- 50. 2025-06-22 19:22, rows returned: 0
select *, count(*)
from T2
group by start_station_name, end_station_name
order by count(*) desc;

-- 51. 2025-06-22 19:23, rows returned: 2
select name from sqlite_temp_master;

-- 52. 2025-06-22 19:23, rows returned: 10
SELECT * FROM T2 LIMIT 10;

-- 53. 2025-06-22 19:23, rows returned: 0
select *, count(*)
from T2
group by start_station_name, end_station_name
order by count(*) desc;

-- 54. 2025-06-22 19:25, rows returned: 0
select start_station_name, end_station_name, count(*)
from T2
group by start_station_name, end_station_name
order by count(*) desc;

-- 55. 2025-06-22 19:26, rows returned: 5
select start_station_name, end_station_name, count(*)
from T2
group by start_station_name, end_station_name
order by count(*) desc
limit 5;

-- 56. 2025-06-22 19:26, rows returned: 1
select start_station_name, end_station_name, count(*)
from T2
group by start_station_name, end_station_name
order by count(*) desc
limit 1;

-- 57. 2025-06-22 19:28, rows returned: 0
drop table T1;

-- 58. 2025-06-22 19:28, rows returned: 1
select name from sqlite_temp_master;

-- 59. 2025-06-22 19:28, rows returned: 0
drop table T2;

-- 60. 2025-06-22 19:28, rows returned: 0
select name from sqlite_temp_master;

