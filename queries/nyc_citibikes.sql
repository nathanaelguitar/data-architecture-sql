-- Database: NYC_Citibikes
-- Queries written in SQLiteStudio (SQLite). Each is the final working version of a query I iterated on.

-- 1. 2025-06-20
select start_station_id, count(*) as ride_count
from citibikerides
where strftime('%w', starttime) = '1'
group by start_station_id
order by count(*) desc;

-- 2. 2025-06-21
select 
    case
        when birth_year <= 1960 then 'Older'
        when birth_year >= 1960 AND birth_year <= 1989 then 'Middle'
        when birth_year >= 1990 then 'Younger'
    end as AgeGroup
from citibikerides
group by AgeGroup;

-- 3. 2025-06-21
select birth_year, count(*) as freq
from citibikerides
group by birth_year
order by birth_year asc;

-- 4. 2025-06-21
select 
    case
        when birth_year < 1960 then 'Older'
        when birth_year >= 1960 AND birth_year <= 1989 then 'Middle'
        when birth_year >= 1990 then 'Younger'
    end as AgeGroup
from citibikerides
group by AgeGroup
order by birth_year desc;

-- 5. 2025-06-21
select starttime, stoptime
from citibikerides
group by starttime, stoptime
order by starttime asc, stoptime asc;

-- 6. 2025-06-21
select 
    case
        when strftime('%H', starttime) <= '12:00:00' then 'Morning'
        else 'Afternoon'
    end as TimeOfDay, usertype, count(*) as freq
from citibikerides
group by TimeOfDay, usertype
order by freq desc;

-- 7. 2025-06-21
select usertype,
    case
        when strftime('%w', starttime) = '0' OR strftime('%w', starttime) = '6' then 'Weekend'
        else 'Weekday'
    end as RideType, count(*) as freq
from citibikerides
where usertype = 'Customer'
group by RideType
order by freq desc;

-- 8. 2025-06-21
create temporary table T1 as
    select Sex, "Political.Views", count(*) as frequency
    from profiles
    group by Sex, "Political.Views";

-- 9. 2025-06-21
select start_station_id
from citibikerides;

-- 10. 2025-06-21
select c.*, s.station_name as start_station_name
from citibikerides c JOIN station_info s
on c.start_station_id = s.station_id;

-- 11. 2025-06-21
create temp table T1 as
select c.*, s.station_name as start_station_name
from citibikerides c JOIN station_info s
on c.start_station_id = s.station_id;

-- 12. 2025-06-22
create temp table T2 as
select B.*, A.station_name as end_station_name
from T1 B JOIN station_info A
on B.end_station_id = A.station_id;

-- 13. 2025-06-22
select start_station_name, end_station_name, count(*)
from T2
group by start_station_name, end_station_name
order by count(*) desc
limit 1;

