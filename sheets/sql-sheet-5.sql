--Question: to study the historical pattern, find the daily trading volume
--for MSFT in Jan of every year

Select Symbol, Date, Volume
from quotes
where Symbol = 'MSFT' and strftime('%m',Date) = '01';

--now calculate the total monthly trading volume for MSFT in January of every year
Select Symbol, strftime('%Y',Date) as Year, strftime('%m',Date) as Month, Sum(Volume)
from quotes
where Symbol = 'MSFT' and strftime('%m',Date) = '01'
group by Symbol, Year, Month;

Select Symbol, Max(Close) as MaxClosePrice
from quotes;

--3.1 Code Financial Data
--Q1:
Select Symbol, Max(Close) as MaxClosePrice
from quotes
where Date >= '2018-01-01' AND Date <= '2018-02-11'
group by Symbol;

select *
from quotes;

Select Symbol, Date, MAX(Close) as MaxClosePrice, SUM(Volume)
from quotes
group by Symbol;

--Q2:
select Symbol, strftime('%w',Date) as DayOfWeek, avg(Volume) as AvgVolume
from quotes
group by Symbol, DayOfWeek
order by DayOfWeek asc;

--Q3:
select Symbol, strftime('%Y-03',Date) as YearMonth, avg(Close) as AverageClosingPrice
from quotes
group by Symbol, YearMonth;

--3.1 Module Assignement 

--Q1:
SELECT strftimecount(*)
from citibikerides;

select *
from citibikerides;

--Module 3.1 Assignment in SQLite syntax
--Q2:
select start_station_id, count(*) as ride_count
from citibikerides
where strftime('%w', starttime) = '1'
group by start_station_id
order by count(*) desc;

SELECT ProfileID, FavoriteMusic,
    CASE 
    WHEN FavoriteMusic = 'Nickleback' then 'Nickelback'
        ELSE FavoriteMusic
    END AS FavoriteMusic_Fixed
FROM FavoriteMusic;

--3.2

--Find the count of top favorite books for two different age brackets
--(16-18 and 18-20) in the FaceX database
--by using Profiles and FavoriteBooks tables
--calculate age with reference to year 2006
--for example, in 2006, someone born in 1990 is 16 years old

SELECT Birthday,
    FavoriteBook, count(*) AS freq
from Profiles, FavoriteBooks
where profiles.profileID = favoritebooks.ProfileID
group by Birthday, FavoriteBook
order by freq desc;

select
    case
        when Birthday <= 1990 and Birthday >= 1988 then '16-18'
        when Birthday < 1988 and Birthday >= 1986 then '18-20'
    end as Age,
    FavoriteBook, count(*) as freq
from profiles, favoritebooks
where profiles.ProfileID = favoritebooks.ProfileID
        and Age is not null
group by Age, FavoriteBook
order by freq desc;

select distinct Birthday
from profiles
limit 10;

--3.2 Moldule Assignment
--Q1:
select 
    case
        when birth_year < 1960 then 'Older'
        when birth_year >= 1960 AND birth_year <= 1989 then 'Middle'
        when birth_year >= 1990 then 'Younger'
    end as AgeGroup
from citibikerides
group by AgeGroup
order by birth_year desc;

select birth_year, count(*) as freq
from citibikerides
group by birth_year
order by birth_year asc;

select starttime, stoptime
from citibikerides
group by starttime, stoptime
order by starttime asc, stoptime asc;

select usertype
from citibikerides;

--Q3
select 
    case
        when strftime('%H', starttime) <= '12:00:00' then 'Morning'
        else 'Afternoon'
    end as TimeOfDay, usertype, count(*) as freq
from citibikerides
group by TimeOfDay, usertype
order by freq desc;

--Q4
select usertype, starttime,
    case
        when strftime('%w', starttime) = '0' OR strftime('%w', starttime) = '6' then 'Weekend'
        else 'Weekday'
    end as RideType, count(*) as freq
from citibikerides;

--actually
SELECT
  usertype,
  starttime,
  CASE
    WHEN strftime('%w', starttime) = '0' OR strftime('%w', starttime) = '6' THEN 'Weekend'
    ELSE 'Weekday'
  END AS RideType
FROM
  citibikerides;
  
--Q5
select usertype,
    case
        when strftime('%w', starttime) = '0' OR strftime('%w', starttime) = '6' then 'Weekend'
        else 'Weekday'
    end as RideType, count(*) as freq
from citibikerides
where usertype = 'Customer'
group by usertype, RideType
order by freq desc;

--3.3 temp tables
create temporary table T1 as
    select Sex, "Political.Views", count(*) as frequency
    from profiles
    group by Sex, "Political.Views";
    
select * from T1;

select name from sqlite_temp_master;

drop table T1;

--how to build multi-step query using temp tables

--first, let's do it using subqueries
select T1.FavoriteTVShow, T1.singlecount, T2.marriedcount, T3.totalcount

from 
    (select FavoriteTVShow, count(*) as singlecount
    from FavoriteTVShows JOIN RelationshipStatus using(ProfileID)
    where RelationshipStatus = 'Single'
    group by FavoriteTVShow
    ) as T1,
    
    (select FavoriteTVShow, count(*) as marriedcount
    from FavoriteTVShows JOIN RelationshipStatus using(ProfileID)
    where RelationshipStatus = 'Married'
    group by FavoriteTVShow 
    ) as T2,
    
    (select FavoriteTVShow, count(*) as totalcount
    from FavoriteTVShows
    group by FavoriteTVShow
    ) as T3
where T1.FavoriteTVShow = T2.FavoriteTVShow
    AND T1.FavoriteTVShow = T3.FavoriteTVShow
order by T3.totalcount desc;

--USING TEMPORARY TABLES
create temporary table T1 as
    select FavoriteTVShow, count(*) as singlecount
    from FavoriteTVShows JOIN RelationshipStatus using(ProfileID)
    where RelationshipStatus = 'Single'
    group by FavoriteTVShow;
    
create temporary table T2 as
    select FavoriteTVShow, count(*) as marriedcount
    from FavoriteTVShows JOIN RelationshipStatus using(ProfileID)
    where RelationshipStatus = 'Married'
    group by FavoriteTVShow;
    
create temporary table T3 as
    select FavoriteTVShow, count(*) as totalcount
    from FavoriteTVShows
    group by FavoriteTVShow;
    
select T1.FavoriteTVShow, T1.singlecount, T2.marriedcount, T3.totalcount
from T1, T2, T3
where T1.FavoriteTVShow = T2.FavoriteTVShow AND T1.FavoriteTVShow = T3.FavoriteTVShow
order by T3.totalcount desc;

drop table T3;

--- Code: Practice using temp tables
--Q1:
select FavoriteBook, count(*) as totcount
from favoritebooks
group by FavoriteBook
order by totcount desc;


select Concentration, count(*) as freq
from concentration
where Concentration = 'Finance' OR Concentration = 'Psychology'
group by Concentration
order by freq desc;
    
Select Concentration, FavoriteBook, count(*) as freq
from concentration join favoritebooks using(ProfileID)
where Concentration = 'Finance'
group by Concentration, FavoriteBook
order by freq desc;

Select Concentration, FavoriteBook, count(*) as freq
from concentration join favoritebooks using(ProfileID)
where Concentration = 'Psychology'
group by Concentration, FavoriteBook
order by freq desc;


--Q2:
Select Concentration, FavoriteBook, count(*) as freq
from concentration join favoritebooks using(ProfileID)
where Concentration = 'Finance' or Concentration = 'Psychology'
group by Concentration, FavoriteBook
order by freq desc;

--Q3:
create temporary table T1 as
    select FavoriteBook, count(*) as totcount
    from favoritebooks
    group by FavoriteBook
    order by totcount desc;
    
create temporary table T2 as
    Select Concentration, FavoriteBook, count(*) as freq
    from concentration join favoritebooks using(ProfileID)
    where Concentration = 'Finance' or Concentration = 'Psychology'
    group by Concentration, FavoriteBook
    order by freq desc;

select 
    T1.FavoriteBook, 
    T1.totcount, 
    T2.Concentration, 
    T2.freq
from T1
JOIN T2 ON T1.FavoriteBook = T2.FavoriteBook
order by T1.totcount desc;

drop table T2;

select name from sqlite_temp_master;

--Combine set operations with temporary tables
--first with set operations
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Lord of the Rings%'
intersect
select ProfileId
from FavoriteBooks
where FavoriteBook not like '%Harry Potter%'
UNION
select ProfileId
from FavoriteBooks
where FavoriteBook not like '%Lord of the Rings%'
intersect
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Harry Potter%';

--now let's whip out those temp tables
create temporary table T1 as
    select ProfileId
    from FavoriteBooks
    where FavoriteBook like '%Lord of the Rings%';
create temporary table T2 as
    select ProfileId
    from FavoriteBooks
    where FavoriteBook not like '%Harry Potter%';
create temporary table T3 as
    select ProfileId
    from FavoriteBooks
    where FavoriteBook not like '%Lord of the Rings%';
create temporary table T4 as
    select ProfileId
    from FavoriteBooks
    where FavoriteBook like '%Harry Potter%';
    
--nested queries
create temporary table TLR as
    select * from T1
    INTERSECT
    select * from T2;

create temporary table THP as
    select * from T3
    INTERSECT
    select * from T4;
    
select * from TLR
UNION
select * from THP;

drop table THP;

select name from sqlite_temp_master;

