select *
from station_info;

select * 
from citibikerides;

select start_station_id
from citibikerides;

select start_station_id
from citibikerides;

select station_id
from station_info;

--3.3 Module Assignement Q1:
create temp table T1 as
select c.*, s.station_name as start_station_name
from citibikerides c JOIN station_info s
on c.start_station_id = s.station_id;

--sanity check
select * from T1 limit 10;

--Q2:
create temp table T2 as
select B.*, A.station_name as end_station_name
from T1 B JOIN station_info A
on B.end_station_id = A.station_id;

SELECT * FROM T2 LIMIT 10;

--Q3:
select *, count(*)
from T2
group by start_station_name, end_station_name
order by count(*) desc;

--correction
select start_station_name, end_station_name, count(*)
from T2
group by start_station_name, end_station_name
order by count(*) desc
limit 1;

select name from sqlite_temp_master;

drop table T2;

--Module 4.1
create view profile_view as
select profileID, Sex
from profiles;

select * from profile_view;

--masking data using the concatenate operator
create View profile_vw as
select ProfileID, 'Name begins with ' || substr(Name, 1, 1) as Name_Anonymized, Birthday, Sex
from profiles;

select * from profile_vw;

drop view profile_vw;

select *
from Employee;


--Code: Practice Creating Views
--Q1
select EmployeeId, LastName, PostalCode
from Employee;

--Q2
create view cust_view as
select CustomerId, substr(FirstName, 1, 1) || '.' || substr(LastName, 1, 1) || '.' as Initials
from Customer;

select *
from Customer;

--Module 4.1 Assignment
--Q1
create view Cust_reduced as
select CustomerId, City, State, PostalCode
from Customer;

--Q2
create view Employ_reduced as
select EmployeeId, substr(LastName, 1, 1), ReportsTo
from Employee;

--Q3
create view Hires_by_month as
select strftime('%Y-%m', HireDate) as YearMonth, count(*)
from Employee
group by YearMonth;

select HireDate
from Employee;

--4.2

--doing arithmetic

select distinct Name, Milliseconds, Milliseconds / 6000 as Minutes
from Track
where Minutes >= 5
order by Minutes desc;

-- to make it accurate, let's use cast function
select distinct Name, Milliseconds, CAST(Milliseconds as real) / 6000 as Minutes
from Track
where Minutes >= 5
order by Minutes desc;

--let's make it cleaner by rounding to 2 decimal places
select distinct Name, Milliseconds, round(CAST(Milliseconds as real) / 6000, 2) as Minutes
from Track
where Minutes >= 5
order by Minutes desc;

--casting
--pivot table of counts
select RelationshipStatus, count(*)
from RelationshipStatus
group by RelationshipStatus;

--total number of rows
select count(*)
from RelationshipStatus;

--pivot table of percentages
select RelationshipStatus, round(100*CAST(count(*) as real)/ 25784, 2) as Percentage
from RelationshipStatus
group by RelationshipStatus;


--Substring extraction
select substr('Martinez-Davis',
        instr('Martinez-Davis', '-')+1,
        length('Martinez-Davis')) as name_adjusted;
        
select name, substr(name, instr(name, '-')+1, length(name)) as name_modified
from profiles
where instr(name, '-') > 0;

--in MySQL syntax, can be easier:
--SELECT 
  --name,
  --SUBSTRING_INDEX(name, '-', -1) AS name_modified
--FROM 
  --profiles
--WHERE 
  --name LIKE '%-%';

--4.2 Code: Extract and Cast Data
select count(*)
from profiles
where Birthday = '1986';

select count(*)
from profiles;

SELECT 
    ROUND(100 * COUNT(*) / CAST((SELECT COUNT(*) FROM profiles) AS real), 2) AS PercentBD1986
FROM 
    profiles
WHERE 
    Birthday LIKE '1986%';
    
SELECT 
  ROUND(100 * COUNT(*) / CAST(total.total_count AS real(10,2)), 2) AS PercentBD1986
FROM 
  profiles,
  (SELECT COUNT(*) AS total_count FROM profiles) AS total
WHERE 
  Birthday LIKE '1986%';
  
--Q3
select 100 * SUM(case when Birthday = 1986 then 1 else 0 end) / cast(count(*) as decimal) as PercentBD1986
from profiles;

--Module 4.2 Concerting Data for Deeper Analysis
select *
from concentration;

--Q1:
SELECT Concentration, 
       ROUND(100 * COUNT(*) / CAST((SELECT COUNT(*) FROM concentration) AS DECIMAL(10,2)), 2) AS Percentage
FROM concentration
GROUP BY Concentration
ORDER BY Percentage DESC;

--Q2:
Select ROUND(CAST(Avg(select count(*) from concentration))) as numConcentrationsPerProfile
from concentration;

SELECT ROUND(AVG(concentration_count), 2) as numConcentrationsPerProfile
FROM (
        SELECT
            ProfileID,
            COUNT(*) as concentration_count
            FROM
                concentration
            GROUP BY
                ProfileID
        ) AS profile_concentration_counts;


--4.3

select ProfileId, Name
from profiles
where Name like 'A%';

create index names_index on Profiles (Name asc);

Create Table FavoriteLanguage (ProfileID integer, Language string);

select *
from FavoriteLanguage;

Insert into FavoriteLanguage values (800002, 'SQL');
Insert into FavoriteLanguage Values (800001, 'English');
Insert into FavoriteLanguage Values (800004, 'Latin');

Delete from FavoriteLanguage
where ProfileID = 800001;



--4.4
select *
from FavoriteLanguage;

Update FavoriteLanguage
Set Language = 'SQL'
where ProfileID = 800004;

Drop table FavoriteLanguage; 

--Tables are interconnected

--to generate a random number
select RANDOM();

--to randomly sample 10 tracks
select *
from Track
order by random()
limit 10;

--to randomly sample 10 tracks
create temporary table rand_sample as
select *
from track 
order by RANDOM()
limit 10;

-- to get all invoicelines with thta track
select *
from InvoiceLine join rand_sample using (trackID);

--Transactions
select count(*)
from profiles
where Sex = 'Female';

Begin transaction;

Delete from profiles where Sex = 'Female';

select count(*)
from profiles
where Sex = 'Female';

Rollback;

----

Update FavoriteLanguage
Set Language = 'SQL'
where ProfileID = 800004;

Insert into FavoriteLanguage values (800002, 'SQL');


---Module 4.4 Assignment
--Q1
Insert into Artist values (276, 'Abba');

select * from Artist
where ArtistID = '276';

Select *
from Artist;

--Q2
Insert into Album values (348, 'The Best of Abba', 276);

Select * from Album;

--Q3
Update Track
Set Name = 'Rock'
where LOWER(Name) like '%rock%'
    or LOWER(Name) like '%rock & roll%'
    or LOWER(Name) like '%rock and roll%'
    or LOWER(Name) like '%rock ''n'' roll%';
    
--alternatively, it could simply be:
Update Track
Set Name = 'Rock'
where LOWER(Name) like '%rock%';

select *
from Track;

select *
from Track
where name = '%Rock%';

--Q4
Create Table Rating (
AlbumID INT, Rating INT, Check (Rating between 1 and 5)
);

select * from Rating;

--Q5
Insert into Rating values (348, 5);
