-- Every query I ran against this database in SQLiteStudio, in the order I ran them.
-- All hand-written. Includes the failed attempts and repeats.

-- 1. 2025-06-01 19:39, rows returned: 8715
Select *
from Playlisttrack;

-- 2. 2025-06-01 19:39, rows returned: 0
Select Name, TrackId, Count(*) as freq
from PlaylistTrack P JOIN Track T
where P.TrackId = T.TrackId 
group by T.Track, P.PlaylistTrack
order by freq desc;

-- 3. 2025-06-01 19:49, rows returned: 3503
Select *
from Track;

-- 4. 2025-06-01 19:50, rows returned: 0
Select T.Name, P.TrackId, Count(*) as freq
from PlaylistTrack P JOIN Track T
where P.TrackId = T.TrackId 
group by T.TrackId, P.Name
order by freq desc;

-- 5. 2025-06-01 19:59, rows returned: 3503
Select T.Name, P.TrackId, Count(*) as freq
from PlaylistTrack P JOIN Track T
where P.TrackId = T.TrackId 
group by T.TrackId, T.Name
order by freq desc;

-- 6. 2025-06-01 19:59, rows returned: 0
Select T.Name, P.TrackId, Count(*) as freq
from PlaylistTrack P JOIN Track T
where P.TrackId = T.TrackId 
group by P.Name, T.TrackId
order by freq desc;

-- 7. 2025-06-01 19:59, rows returned: 3503
Select T.Name, P.TrackId, Count(*) as freq
from PlaylistTrack P JOIN Track T
where P.TrackId = T.TrackId 
group by T.Name, T.TrackId
order by freq desc;

-- 8. 2025-06-01 19:59, rows returned: 3503
Select T.Name, P.TrackId, Count(*) as freq
from PlaylistTrack P JOIN Track T
where P.TrackId = T.TrackId 
group by T.Name, P.TrackId
order by freq desc;

-- 9. 2025-06-01 20:05, rows returned: 2240
Select *
from InvoiceLine;

-- 10. 2025-06-01 20:09, rows returned: 0
Select I.InvoiceLine, T.Name, Count(*) as freq
from Track T JOIN InvoiceLine I
where I.TrackId = T.TrackId
group by I.TrackId, T.Name
order by freq desc;

-- 11. 2025-06-01 21:15, rows returned: 1984
Select I.TrackId, T.Name, Count(*) as freq
from Track T JOIN InvoiceLine I
where I.TrackId = T.TrackId
group by I.TrackId, T.Name
order by freq desc;

-- 12. 2025-06-01 21:18, rows returned: 3503
Select *
from Track;

-- 13. 2025-06-01 21:19, rows returned: 2240
Select *
from InvoiceLine;

-- 14. 2025-06-01 21:20, rows returned: 1984
Select I.TrackId, T.Name, Count(*) as freq
from Track T JOIN InvoiceLine I
where I.TrackId = T.TrackId
group by I.TrackId, T.Name
order by freq desc;

-- 15. 2025-06-01 21:20, rows returned: 2240
Select *
from InvoiceLine;

-- 16. 2025-06-01 21:22, rows returned: 103
Select I.TrackId, T.Name, Count(*) as freq
from Track T JOIN InvoiceLine I
where I.TrackId = T.TrackId AND T.MediaTypeId = 3
group by I.TrackId, T.Name
order by freq desc;

-- 17. 2025-06-01 21:28, rows returned: 0
Select T.Name, A.Name, L.ArtistId
from Track, Artist, Album
where Artist.ArtistId = Album.ArtistId AND Artist.Name = Track.Name;

-- 18. 2025-06-01 21:37, rows returned: 0
Select T.Name, A.Name, L.ArtistId
from Track, Artist, Album
where Artist.ArtistId = Album.ArtistId AND Artist.Name = Track.Name;

-- 19. 2025-06-01 21:42, rows returned: 110
Select T.Name, A.Name, L.ArtistId
from Track T, Artist A, Album L
where A.ArtistId = L.ArtistId AND A.Name = T.Name;

-- 20. 2025-06-01 21:44, rows returned: 110
Select T.Name, A.Name
from Track T, Artist A, Album L
where A.ArtistId = L.ArtistId AND A.Name = T.Name;

-- 21. 2025-06-01 21:44, rows returned: 3503
Select *
from Track;

-- 22. 2025-06-01 21:44, rows returned: 110
Select T.Name, A.Name
from Track T, Artist A, Album L
where A.ArtistId = L.ArtistId AND A.Name = T.Name;

-- 23. 2025-06-01 21:45, rows returned: 3503
Select Name
from Track;

-- 24. 2025-06-01 21:45, rows returned: 110
Select T.Name, A.Name
from Track T, Artist A, Album L
where A.ArtistId = L.ArtistId AND A.Name = T.Name;

-- 25. 2025-06-01 21:49, rows returned: 3503
Select T.Name, A.Name
from Track T, Artist A, Album L
where A.ArtistId = L.ArtistId AND T.AlbumId = L.AlbumId;

-- 26. 2025-06-01 21:50, rows returned: 3503
Select A.Name as Artist, T.Name as Track
from Track T, Artist A, Album L
where A.ArtistId = L.ArtistId AND T.AlbumId = L.AlbumId;

-- 27. 2025-06-01 21:56, rows returned: 0
Select Track.TrackId, Track.Name, count(*) as freq
from track, Invoiceline 
where track.trackId = InvoiceLine.TrackIdand Track.MediaTypeId = 3
group by track.TrackId
order by freq desc;

-- 28. 2025-06-01 22:01, rows returned: 103
Select Track.TrackId, Track.Name, count(*) as freq
from Track, Invoiceline 
where Track.trackId = InvoiceLine.TrackId
and Track.MediaTypeId = 3
group by Track.TrackId
order by freq desc;

-- 29. 2025-06-01 22:03, rows returned: 3503
Select Artist.Name, Track.Name
from Artist JOIN Album USING(ArtistId) JOIN Track USING (AlbumId);

-- 30. 2025-06-07 15:27, rows returned: 0
Select *
from InvoiceLine A, InvoiceLine B
where A.InvoiceId = B.InvoiceId
      A.TrackId <> B.TrackId;

-- 31. 2025-06-07 15:28, rows returned: 17698
Select *
from InvoiceLine A, InvoiceLine B
where A.InvoiceId = B.InvoiceId AND
      A.TrackId <> B.TrackId;

-- 32. 2025-06-07 15:29, rows returned: 8849
Select *
from InvoiceLine A, InvoiceLine B
where A.InvoiceId = B.InvoiceId AND
      A.TrackId < B.TrackId;

-- 33. 2025-06-07 15:31, rows returned: 17698
Select *
from InvoiceLine A, InvoiceLine B
where A.InvoiceId = B.InvoiceId AND
      A.TrackId <> B.TrackId;

-- 34. 2025-06-07 15:31, rows returned: 8849
Select *
from InvoiceLine A, InvoiceLine B
where A.InvoiceId = B.InvoiceId AND
      A.TrackId < B.TrackId;

-- 35. 2025-06-07 23:19, rows returned: 179
select A.Name, B.Name, A.InvoiceID, B.InvoiceId
from 
(Artist JOIN Album using(ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLine using (TrackID)) as A,
(Artist JOIN Album using (ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLIne using (TrackID)) as B
where A.InvoiceID = B.InvoiceId
      AND A.Name = 'Miles Davis'
      AND B.Name <> 'Miles Davis';

-- 36. 2025-06-07 23:21, rows returned: 179
select B.Name
from 
(Artist JOIN Album using(ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLine using (TrackID)) as A,
(Artist JOIN Album using (ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLIne using (TrackID)) as B
where A.InvoiceID = B.InvoiceId
      AND A.Name = 'Miles Davis'
      AND B.Name <> 'Miles Davis';

-- 37. 2025-06-07 23:22, rows returned: 179
select B.Name
from 
(Artist JOIN Album using(ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLine using (TrackID)) as A,
(Artist JOIN Album using (ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLIne using (TrackID)) as B
where A.InvoiceID = B.InvoiceId
      AND A.Name = 'Miles Davis'
      AND B.Name <> 'Miles Davis'
      AND A.InvoiceID = B.InvoiceId;

-- 38. 2025-06-07 23:22, rows returned: 19
select B.Name
from 
(Artist JOIN Album using(ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLine using (TrackID)) as A,
(Artist JOIN Album using (ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLIne using (TrackID)) as B
where A.InvoiceID = B.InvoiceId
      AND A.Name = 'Miles Davis'
      AND B.Name <> 'Miles Davis'
      AND A.InvoiceID = B.InvoiceId
group by B.Name;

-- 39. 2025-06-07 23:22, rows returned: 19
select B.Name, count(*)
from 
(Artist JOIN Album using(ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLine using (TrackID)) as A,
(Artist JOIN Album using (ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLIne using (TrackID)) as B
where A.InvoiceID = B.InvoiceId
      AND A.Name = 'Miles Davis'
      AND B.Name <> 'Miles Davis'
      AND A.InvoiceID = B.InvoiceId
group by B.Name;

-- 40. 2025-06-23 21:38, rows returned: 8
select *
from Employee;

-- 41. 2025-06-23 21:40, rows returned: 8
select EmployeeId, LastName, PostalCode
from Employee;

-- 42. 2025-06-24 18:57, rows returned: 8
select *
from Employee;

-- 43. 2025-06-24 18:57, rows returned: 0
select CustomerId, 'Name begins with ' || substr(Name, 1, 1) as Name_Anonymized
from Customer;

-- 44. 2025-06-24 19:04, rows returned: 59
select CustomerId, 'Name begins with ' || substr(FirstName, 1, 1) as Name_Anonymized
from Customer;

-- 45. 2025-06-24 19:05, rows returned: 59
select CustomerId, ' ' || substr(FirstName, 1, 1) as Name_Anonymized
from Customer;

-- 46. 2025-06-24 19:05, rows returned: 59
select CustomerId, ' .' || substr(FirstName, 1, 1) as Name_Anonymized
from Customer;

-- 47. 2025-06-24 19:05, rows returned: 0
select CustomerId, ' ' || substr(FirstName, LastName, 1, 1) as Name_Anonymized
from Customer;

-- 48. 2025-06-24 19:07, rows returned: 0
select CustomerId, substri(FirstName, 1, 1) || '.' || substr(LastName, 1, 1) || '.' as Initials
from Customer;

-- 49. 2025-06-24 19:16, rows returned: 59
select CustomerId, substr(FirstName, 1, 1) || '.' || substr(LastName, 1, 1) || '.' as Initials
from Customer;

-- 50. 2025-06-24 19:34, rows returned: 59
select CustomerId, City, State, PostalCode
from Customer;

-- 51. 2025-06-24 19:34, rows returned: 59
select *
from Customer;

-- 52. 2025-06-24 19:34, rows returned: 59
select CustomerId, City, State, PostalCode
from Customer;

-- 53. 2025-06-24 19:43, rows returned: 8
select EmployeeId, substr(LastName, 1, 1), ReportsTo
from Employee;

-- 54. 2025-06-24 19:46, rows returned: 8
select LastName
from Employee;

-- 55. 2025-06-24 19:46, rows returned: 8
select EmployeeId, substr(LastName, 1, 1), ReportsTo
from Employee;

-- 56. 2025-06-24 19:47, rows returned: 8
select *
from Employee;

-- 57. 2025-06-24 19:48, rows returned: 1
select strftime('%Y-%m', HireDate) as YearMonth, count(*)
from Employee;

-- 58. 2025-06-24 19:49, rows returned: 7
select strftime('%Y-%m', HireDate) as YearMonth, count(*)
from Employee
group by YearMonth;

-- 59. 2025-06-24 19:49, rows returned: 8
select HireDate
from Employee;

-- 60. 2025-06-24 19:49, rows returned: 7
select strftime('%Y-%m', HireDate) as YearMonth, count(*)
from Employee
group by YearMonth;

-- 61. 2025-06-24 19:49, rows returned: 8
select HireDate
from Employee;

-- 62. 2025-06-24 19:49, rows returned: 0
select strftime('%Y-%m', HireDate) as YearMonth, count(*)
from Employee
group by YearMonth desc;

-- 63. 2025-06-24 19:50, rows returned: 7
select strftime('%Y-%m', HireDate) as YearMonth, count(*)
from Employee
group by YearMonth;

-- 64. 2025-06-24 19:50, rows returned: 8
select HireDate
from Employee;

-- 65. 2025-06-24 19:50, rows returned: 0
select disticnt Name, Milliseconds, Milliseconds / 6000 as Minutes
from Track
where Minutes >= 5
order by Minutes desc;

-- 66. 2025-06-24 20:24, rows returned: 3495
select distinct Name, Milliseconds, Milliseconds / 6000 as Minutes
from Track
where Minutes >= 5
order by Minutes desc;

-- 67. 2025-06-24 20:25, rows returned: 3495
select distinct Name, Milliseconds, CAST(Milliseconds as real) / 6000 as Minutes
from Track
where Minutes >= 5
order by Minutes desc;

-- 68. 2025-06-24 20:26, rows returned: 3495
select distinct Name, Milliseconds, round(CAST(Milliseconds as real) / 6000, 2) as Minutes
from Track
where Minutes >= 5
order by Minutes desc;

-- 69. 2025-06-30 15:18, rows returned: 0
SELECT 
    b.name AS business_name,
    r1.review_id,
    r1.stars,
    r1.useful
FROM review r1
JOIN business b ON r1.business_id = b.business_id
JOIN (
    SELECT 
        stars, 
        MAX(useful) AS max_useful
    FROM review
    GROUP BY stars
) r2 ON r1.stars = r2.stars AND r1.useful = r2.max_useful
ORDER BY r1.stars DESC, r1.useful DESC
LIMIT 10;

-- 70. 2025-06-30 15:55, rows returned: 0
create temp table rand)sample as
select *
from track 
order by RANDOM()
limit 10;

-- 71. 2025-06-30 15:59, rows returned: 0
create temp table rand_sample as
select *
from track 
order by RANDOM()
limit 10;

-- 72. 2025-06-30 15:59, rows returned: 7
select *
from InvoiceLine join rand_sample using (trackID);

-- 73. 2025-06-30 16:00, rows returned: 0
select *
from InvoiceLine join rand_sample using (trackID);

-- 74. 2025-06-30 16:00, rows returned: 0
create temporary table rand_sample as
select *
from track 
order by RANDOM()
limit 10;

-- 75. 2025-06-30 16:00, rows returned: 0
select count(*)
from profiles
where Sex = 'Female';

-- 76. 2025-06-30 16:13, rows returned: 0
Update Artist
Set Name = 'Abba'
where ArtistID = '276';

-- 77. 2025-06-30 16:13, rows returned: 0
Update Artist
Set Name = 'Abba', ArtistID = '276';

-- 78. 2025-06-30 16:17, rows returned: 1
Insert into Artist values (276, 'Abba');

-- 79. 2025-06-30 16:17, rows returned: 0
select * from Artist
where ArtistID = '276'

Select *
from Artist;

-- 80. 2025-06-30 16:17, rows returned: 1
select * from Artist
where ArtistID = '276';

-- 81. 2025-06-30 16:18, rows returned: 276
Select *
from Artist;

-- 82. 2025-06-30 16:21, rows returned: 347
Select * from Album;

-- 83. 2025-06-30 16:22, rows returned: 1
Insert into Album values (348, 'The Best of Abba', 276);

-- 84. 2025-06-30 16:22, rows returned: 348
Select * from Album;

-- 85. 2025-06-30 16:24, rows returned: 0
Update Track
Set Name = 'Rock'
where Name '%Rock%;

select *
from Track;

select *
from Track
where name = 'Rock%';

-- 86. 2025-06-30 16:26, rows returned: 3503
select *
from Track;

-- 87. 2025-06-30 16:26, rows returned: 0
select *
from Track
where name = 'Rock%';

-- 88. 2025-06-30 16:27, rows returned: 0
select *
from Track
where name = '%Rock%';

-- 89. 2025-07-01 12:52, rows returned: 0
select *
from Track
where name = '%Rock%';

-- 90. 2025-07-01 12:52, rows returned: 3503
select *
from Track;

-- 91. 2025-07-01 12:52, rows returned: 0
select *
from Track
where name = '%Rock%';

-- 92. 2025-07-01 12:53, rows returned: 3503
select *
from Track;

-- 93. 2025-07-01 12:54, rows returned: 39
select *
from Track
where Name like '%Rock%';

-- 94. 2025-07-01 13:30, rows returned: 0
Create Table Rating (
AlbumID INT, Rating INT, Check (Rating between 1 and 5)
);

-- 95. 2025-07-01 13:30, rows returned: 0
select * from Rating;

-- 96. 2025-07-01 13:32, rows returned: 348
Select * from Album;

-- 97. 2025-07-01 13:33, rows returned: 1
Insert into Rating values (348, 5);

-- 98. 2025-07-01 13:33, rows returned: 1
select * from Rating;

-- 99. 2025-07-01 13:35, rows returned: 348
Select * from Album;

-- 100. 2025-07-02 13:37, rows returned: 1
select count (*)
from Artist left join Album using(ArtistId);

-- 101. 2025-07-02 13:37, rows returned: 1
select count (*)
from Artist join Album using(ArtistId);

-- 102. 2025-07-02 13:37, rows returned: 1
select count (*)
from Artist left join Album using(ArtistId);

-- 103. 2025-07-02 13:38, rows returned: 276
select *
from Artist;

-- 104. 2025-07-02 13:38, rows returned: 0
select Artist
from Artist A left join Album B on A.ArtistID = B.ArtistID
where A.Artist is NULL;

-- 105. 2025-07-02 13:44, rows returned: 0
select B.ArtistID
from Artist A left join Album B on A.ArtistID = B.ArtistID
where A.Artist is NULL;

-- 106. 2025-07-02 13:44, rows returned: 276
select *
from Artist;

-- 107. 2025-07-02 13:45, rows returned: 1
select count (*)
from Artist left join Album using(ArtistId);

-- 108. 2025-07-02 13:45, rows returned: 419
select *
from Artist left join Album using(ArtistId);

-- 109. 2025-07-02 13:46, rows returned: 71
select *
from Artist left join Album using(ArtistId)
where AlbumID is NULL;

-- 110. 2025-07-02 13:47, rows returned: 419
select *
from Artist left join Album using(ArtistId);

-- 111. 2025-07-02 13:47, rows returned: 71
select *
from Artist left join Album using(ArtistId)
where AlbumID is NULL;

-- 112. 2025-07-02 13:56, rows returned: 71
SELECT A.ArtistId, A.Name
FROM Artist A
LEFT JOIN Album B ON A.ArtistId = B.ArtistId
WHERE A.ArtistId NOT IN (
    SELECT ArtistId FROM Album
);

-- 113. 2025-07-03 12:58, rows returned: 5
select *
from Artist
order by random()
limit 5;

-- 114. 2025-07-03 12:59, rows returned: 5
select *
from Artist
order by random()
limit 5;

-- 115. 2025-07-03 13:00, rows returned: 5
select *
from Album
order by random()
limit 5;

-- 116. 2025-07-03 13:00, rows returned: 5
select *
from Album
order by random()
limit 5;

-- 117. 2025-07-03 13:29, rows returned: 0
select *
from Album JOIN T1 using (ProfileID);

-- 118. 2025-07-03 13:30, rows returned: 348
select *
from Album;

-- 119. 2025-07-03 13:30, rows returned: 7
select *
from Album JOIN T1 using (ArtistID);

-- 120. 2025-07-03 13:31, rows returned: 348
select *
from Album left JOIN T1 using (ArtistID);

-- 121. 2025-07-07 14:38, rows returned: 4
With t1 as 
    (select *
    from Artist
    order by random()
    limit 5)
select *
from Album JOIN T1 using (ArtistID);

-- 122. 2025-07-07 14:39, rows returned: 0
create temp table T1 as
select *
from Artist
order by random()
limit 5;

-- 123. 2025-07-07 14:39, rows returned: 7
select *
from Album JOIN T1 using (ArtistID);

-- 124. 2025-07-07 14:52, rows returned: 10
select *
from Customer
order by random()
limit 10;

-- 125. 2025-07-07 14:55, rows returned: 5
select *
from Artist
order by random()
limit 5;

-- 126. 2025-07-07 14:57, rows returned: 0
create temp table T1 as
select *
from Customer
order by random()
limit 10;

-- 127. 2025-07-07 14:59, rows returned: 0
drop table t1;

-- 128. 2025-07-07 14:59, rows returned: 0
create temp table T1 as
select *
from Customer
order by random()
limit 10;

-- 129. 2025-07-07 14:59, rows returned: 70
select *
from Invoice JOIN T1 using (CustomerID);

