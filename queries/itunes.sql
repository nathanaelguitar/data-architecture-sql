-- Database: iTunes
-- Queries written in SQLiteStudio (SQLite). Each is the final working version of a query I iterated on.

-- 1. 2025-06-01
Select T.Name, P.TrackId, Count(*) as freq
from PlaylistTrack P JOIN Track T
where P.TrackId = T.TrackId 
group by T.Name, P.TrackId
order by freq desc;

-- 2. 2025-06-01
Select I.TrackId, T.Name, Count(*) as freq
from Track T JOIN InvoiceLine I
where I.TrackId = T.TrackId
group by I.TrackId, T.Name
order by freq desc;

-- 3. 2025-06-01
Select I.TrackId, T.Name, Count(*) as freq
from Track T JOIN InvoiceLine I
where I.TrackId = T.TrackId AND T.MediaTypeId = 3
group by I.TrackId, T.Name
order by freq desc;

-- 4. 2025-06-01
Select T.Name, A.Name
from Track T, Artist A, Album L
where A.ArtistId = L.ArtistId AND A.Name = T.Name;

-- 5. 2025-06-01
Select A.Name as Artist, T.Name as Track
from Track T, Artist A, Album L
where A.ArtistId = L.ArtistId AND T.AlbumId = L.AlbumId;

-- 6. 2025-06-01
Select Track.TrackId, Track.Name, count(*) as freq
from Track, Invoiceline 
where Track.trackId = InvoiceLine.TrackId
and Track.MediaTypeId = 3
group by Track.TrackId
order by freq desc;

-- 7. 2025-06-01
Select Artist.Name, Track.Name
from Artist JOIN Album USING(ArtistId) JOIN Track USING (AlbumId);

-- 8. 2025-06-07
Select *
from InvoiceLine A, InvoiceLine B
where A.InvoiceId = B.InvoiceId AND
      A.TrackId < B.TrackId;

-- 9. 2025-06-07
select B.Name, count(*)
from 
(Artist JOIN Album using(ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLine using (TrackID)) as A,
(Artist JOIN Album using (ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLIne using (TrackID)) as B
where A.InvoiceID = B.InvoiceId
      AND A.Name = 'Miles Davis'
      AND B.Name <> 'Miles Davis'
      AND A.InvoiceID = B.InvoiceId
group by B.Name;

-- 10. 2025-06-23
select EmployeeId, LastName, PostalCode
from Employee;

-- 11. 2025-06-24
select CustomerId, substr(FirstName, 1, 1) || '.' || substr(LastName, 1, 1) || '.' as Initials
from Customer;

-- 12. 2025-06-24
select CustomerId, City, State, PostalCode
from Customer;

-- 13. 2025-06-24
select EmployeeId, substr(LastName, 1, 1), ReportsTo
from Employee;

-- 14. 2025-06-24
select strftime('%Y-%m', HireDate) as YearMonth, count(*)
from Employee
group by YearMonth;

-- 15. 2025-06-24
select distinct Name, Milliseconds, round(CAST(Milliseconds as real) / 6000, 2) as Minutes
from Track
where Minutes >= 5
order by Minutes desc;

-- 16. 2025-06-30
create temp table rand_sample as
select *
from track 
order by RANDOM()
limit 10;

-- 17. 2025-06-30
select *
from InvoiceLine join rand_sample using (trackID);

-- 18. 2025-06-30
create temporary table rand_sample as
select *
from track 
order by RANDOM()
limit 10;

-- 19. 2025-06-30
Update Artist
Set Name = 'Abba', ArtistID = '276';

-- 20. 2025-06-30
Insert into Artist values (276, 'Abba');

-- 21. 2025-06-30
select * from Artist
where ArtistID = '276';

-- 22. 2025-06-30
Insert into Album values (348, 'The Best of Abba', 276);

-- 23. 2025-06-30
Update Track
Set Name = 'Rock'
where Name '%Rock%;

select *
from Track;

select *
from Track
where name = 'Rock%';

-- 24. 2025-07-01
select *
from Track
where Name like '%Rock%';

-- 25. 2025-07-01
Create Table Rating (
AlbumID INT, Rating INT, Check (Rating between 1 and 5)
);

-- 26. 2025-07-01
Insert into Rating values (348, 5);

-- 27. 2025-07-02
select count (*)
from Artist left join Album using(ArtistId);

-- 28. 2025-07-02
select *
from Artist left join Album using(ArtistId)
where AlbumID is NULL;

-- 29. 2025-07-02
SELECT A.ArtistId, A.Name
FROM Artist A
LEFT JOIN Album B ON A.ArtistId = B.ArtistId
WHERE A.ArtistId NOT IN (
    SELECT ArtistId FROM Album
);

-- 30. 2025-07-03
select *
from Album
order by random()
limit 5;

-- 31. 2025-07-03
select *
from Album left JOIN T1 using (ArtistID);

-- 32. 2025-07-07
With t1 as 
    (select *
    from Artist
    order by random()
    limit 5)
select *
from Album JOIN T1 using (ArtistID);

-- 33. 2025-07-07
select *
from Album JOIN T1 using (ArtistID);

-- 34. 2025-07-07
select *
from Artist
order by random()
limit 5;

-- 35. 2025-07-07
create temp table T1 as
select *
from Customer
order by random()
limit 10;

-- 36. 2025-07-07
select *
from Invoice JOIN T1 using (CustomerID);

