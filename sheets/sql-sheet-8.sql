select *
from Track;

select *
from Track
where Name like '%Rock%';


--5.1
select count(distinct ProfileID)
from profiles;

select count(distinct ProfileID)
from concentration;


SELECT distinct profileID
from concentration;

select distinct ProfileID
from favoritebooks;

--regular join
select *
from concentration join favoritebooks using (profileID);

--left join
select *
from concentration left join favoritebooks using (profileID);


--conducting complex joins

--Records in Concentration and Favoritebooks
Select *
from concentration join favoritebooks using (profileID);

--Records in Concentration but not in Favoritebooks
select *
from concentration left join favoritebooks using(ProfileID)
where favoritebooks.ProfileID is NULL;

--Records in Favoritebooks but not in Concentration 
select *
from favoritebooks left join concentration using (profileID)
where concentration.ProfileID is NULL;


--5.1 Module Assignment
select count (*)
from Artist left join Album using(ArtistId);

select count (*)
from Artist join Album using(ArtistId);

select *
from Album;

select *
from Artist;

select B.ArtistID
from Artist A left join Album B on A.ArtistID = B.ArtistID
where A.Artist is NULL;

select *
from Artist left join Album using(ArtistId)
where AlbumID is NULL;

SELECT A.ArtistId, A.Name
FROM Artist A
LEFT JOIN Album B ON A.ArtistId = B.ArtistId
WHERE A.ArtistId NOT IN (
    SELECT ArtistId FROM Album
);




select *
from profiles, FavoriteTVShows
where Birthday >= 1985 and profiles.ProfileID = FavoriteTVShows.ProfileID
order by Birthday desc
limit 10;

select *

from profiles join FavoriteTVShows using(ProfileID)

where Birthday >= 1985

order by Birthday desc

limit 10;


select *
from profiles, FavoriteTVShows
group by ProfileID
having Birthday >= 1985 and profiles.ProfileID = FavoriteTVShows.ProfileID
order by Birthday desc
limit 10;

select *
from profiles join FavoriteTVShows on profiles.ProfileID = FavoriteTVShows.ProfileID
where Birthday >= 1985
order by Birthday desc
limit 10;


---
select Sex, count(*), avg(Birthday)
from profiles
group by Sex;


select count(*), avg(Birthday)
from profiles
where Sex = 'Female';


select count(*), avg(Birthday)
from profiles
where Sex is NULL;


select
case
when Birthday = 1990 then '16'
when Birthday < 1990 and Birthday >= 1988 then '16-18'
when Birthday < 1988 and Birthday > 1981 then '18-25'
else '>25'
end as Age, FavoriteBook, count(*) as freq
from profiles, favoritebooks
where profiles.ProfileID = favoritebooks.ProfileID
group by Age, FavoriteBook
order by freq desc;


select
case
when Birthday is NULL then 'Birthday'
when Birthday = 1990 then '16'
when Birthday < 1990 and Birthday >= 1988 then '16-18'
when Birthday < 1988 and Birthday > 1981 then '18-25'
else '>25'
end as Age, FavoriteBook, count(*) as freq

from profiles, favoritebooks
where profiles.ProfileID = favoritebooks.ProfileID
group by Age, FavoriteBook
order by freq desc;


---5.3

--to extract 10 randomly chosen users from the profiles table
select *
from profiles
order by random()
limit 10;

--Code: extracting a random sample from one table
--Q1
select *
from Artist
order by random()
limit 5;

--Q2
select *
from Album
order by random()
limit 5;


--to extract 10 randomly chosen users from the profiles table
create temp table rand_sample as
    select *
    from profiles
    order by random()
    limit 10;
    
--to extract data on these users from the FavoriteTVShows table
select *
from FavoriteTVShows JOIN rand_sample using (ProfileID);


--Code
create temp table T1 as
select *
from Artist
order by random()
limit 5;

select *
from Album JOIN T1 using (ArtistID);

select *
from Album;


--in the Facex dataset, first join Concentration and Favoritebooks tables
--then count the number of students who like Harry Potter in each concentration

--using temp table
create temp table t1 as 
    select *
    from concentration join favoritebooks using (profileid);
    
select concentration, count(*) as frequency 
from t1
where favoritebook like '%Harry Potter%'
group by concentration 
order by frequency desc;

--Using a common table expression (CTE)
With t1 as 
    (select *
    from concentration join favoritebooks using (profileID))
select concentration, count(*) as frequency
from t1
where favoritebook like "%Harry Potter%"
group by concentration
order by frequency desc;

--
create temp table T1 as
select *
from Artist
order by random()
limit 5;
--

With t1 as 
    (select *
    from Artist
    order by random()
    limit 5)
select *
from Album JOIN T1 using (ArtistID);


--Module 5.3 Module Assignement
--Q1
select *
from Customer
order by random()
limit 10;

drop table t1;

--Q2
create temp table T1 as
select *
from Customer
order by random()
limit 10;

select *
from Invoice JOIN T1 using (CustomerID);

select *
from Invoice;