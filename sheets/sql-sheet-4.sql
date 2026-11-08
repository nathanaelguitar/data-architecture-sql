Select *
from Invoice;

Select *
from Invoice A, Invoice B
where A.InvoiceId = B.InvoiceID AND
      A.ProductId <> B.ProductId AND
      A.ProductID = 17;
      
Select B.ProductId as bought_with_PId_17
from Invoice A, Invoice B
where A.InvoiceId = B.InvoiceID AND
      A.ProductId <> B.ProductId AND
      A.ProductID = 17;
      
Select *
from InvoiceLine A, InvoiceLine B
where A.InvoiceId = B.InvoiceId AND
      A.TrackId < B.TrackId;
      
Select *
from interests;

Select *
from Interests A, Interests B
where A.ProfileId = B.ProfileId AND
      A.interests < B.interests AND
      A.interests > 2;
      
Select A.ProfileId, A.interests as Interest1, B.interests as Interest2
from Interests A, Interests B
where A.interests = B.interests AND
      A.ProfileId <> B.ProfileId AND
      A.ProfileId > 2;
      
Select *
from Interests A, Interests B
where A.ProfileId = B.ProfileId AND
      A.interests < B.interests;
      
Select *
from interests A, interests B
where A.ProfileId = B.ProfileId AND
      A.interests > B.interests AND
      A.interests like "%Running%";
      
Select A.interests as Running, B.interests as Other, count(*) as freq
from interests A, interests B
where A.ProfileId = B.ProfileId AND
      A.interests <> B.interests AND
      A.interests like "%Running%"
group by Running, Other
order by freq desc;

Select InvoiceId
from Invoice
where ProductId = 17;
      
Select ProductId
from Invoice
where InvoiceId IN
    (
    396, 303, 164, 411, 235, 227, 294, 756
    ) AND
    ProductId <> 17;     
    
Select ProductId
from Invoice
where InvoiceId IN
    (
    Select InvoiceId
    from Invoice
    where ProductId = 17
    ) AND
    ProductId <> 17;    
    
Select *
from favoritebooks A, profiles B
where A.ProfileId = B.ProfileId AND
      B.ProfileId >= 10;
      
Select *
from favoritebooks;

select A.ProfileId
from favoritebooks A JOIN profiles B on A.ProfileId = B.ProfileId
where Status = 'Undergrad'
group by A.ProfileId
having count(*) >= 10

--other way to write it

Select ProfileId 
from favoritebooks JOIN profiles using(ProfileId);

Select ProfileId
from favoritebooks JOIN profiles using(ProfileId)
where Status = 'Undergrad'
group by ProfileId
having count(*) >= 10;

Select FavoriteBook, count(*) from favoritebooks where ProfileId in 
(Select ProfileId
from favoritebooks JOIN profiles using(ProfileId)
where Status = 'Undergrad'
group by ProfileId
having count(*) >= 10)
group by FavoriteBook
order by count(*) desc
limit 3;

Select *
from favoritemusic;

Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%';

Select ProfileId, FavoriteMusic, count(*)
from favoritemusic 
where ProfileId in
(Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%')
group by FavoriteMusic
order by count(*) desc;

--Correct answer for Code: Practice Subqueries Q2

Select FavoriteMusic, count(*)
from FavoriteMusic
where profileID IN
(Select ProfileID
from FavoriteMusic
where FavoriteMusic like '%Jay Z%')
AND FavoriteMusic NOT LIKE '%Jay Z%'
group by FavoriteMusic
order by count(*) desc;

--Should also work:

Select FavoriteMusic, count(*)
from favoritemusic 
where ProfileId in
(Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%')
AND FavoriteMusic NOT LIKE '%Jay Z%'
group by FavoriteMusic
order by count(*) desc;

select A.Name, B.Name, A.InvoiceID, B.InvoiceId
from 
(Artist JOIN Album using(ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLine using (TrackID)) as A,
(Artist JOIN Album using (ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLIne using (TrackID)) as B
where A.InvoiceID = B.InvoiceId
      AND A.Name = 'Miles Davis'
      AND B.Name <> 'Miles Davis';
      
select B.Name, count(*)
from 
(Artist JOIN Album using(ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLine using (TrackID)) as A,
(Artist JOIN Album using (ArtistID) JOIN Track using (AlbumID) JOIN InvoiceLIne using (TrackID)) as B
where A.InvoiceID = B.InvoiceId
      AND A.Name = 'Miles Davis'
      AND B.Name <> 'Miles Davis'
      AND A.InvoiceID = B.InvoiceId
group by B.Name
order by count(*) desc;

Select FavoriteMusic, count(*)
from favoritemusic 
where ProfileId in
(Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%')
AND FavoriteMusic NOT LIKE '%Jay Z%'
group by FavoriteMusic
order by count(*) desc;

--Module 2.3 Quiz: Using Self Joins and Subqueries, Q1:

Select FavoriteBook, count(*)
from FavoriteBooks
where ProfileID in
(Select ProfileID
from FavoriteBooks JOIN profiles using (ProfileID)
where FavoriteBook like '%Harry Potter%')
AND FavoriteBook NOT LIKE '%Harry Potter%'
group by FavoriteBook
order by count(*) desc;

-- CORRECT answer for Q1
Select FavoriteBook, count(*)
from favoritebooks
where ProfileID in
(Select DISTINCT ProfileID
from favoritebooks
where FavoriteBook like '%Harry Potter%')
AND FavoriteBook NOT LIKE '%Harry Potter%'
group by FavoriteBook
order by count(*) desc;

--Q2:

Select *
from concentration;

Select B.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration < B.concentration AND
      A.Concentration >= 1;
      
Select B.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration < B.concentration;
      
Select A.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A JOIN concentration B ON A.ProfileID = B.ProfileID
where A.concentration < B.concentration;

Select A.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A JOIN concentration B ON A.ProfileID = B.ProfileID
AND A.concentration < B.concentration
where A.ProfileID IN
(select ProfileID
from concentration
group by ProfileID
having count(distinct Concentration) > 1);
      
--Q3

Select *
from concentration
where Concentration like '%Finance%';

Select A.Concentration, B.Concentration, count(*) as Frequency
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration like '%Finance%' AND
      B.Concentration not like '%Finance%'
group by A.Concentration, B.Concentration
order by Frequency desc;

--from zoom

Select *,
case when FavoriteMusic ='Nickleback' then 'Nickelback'
    else FavoriteMusic end as FavoriteMusic_fixed
from favoritemusic
where FavoriteMusic = 'Nickleback';
      
Select *,
case when FavoriteMusic ='Nickleback' then 'Nickelback'
    else FavoriteMusic end as FavoriteMusic_fixed
from favoritemusic
where FavoriteMusic_fixed = 'Nickelback';

select *,
case     when Concentration = 'Finance' then 1
        when Concentration = 'Economics' then 1
        when Concentration = 'Pre-Medeicine' then 1
    else 0
end as STEM_POP
from concentration;

--make more efficient

select *,
case when Concentration in ('Finance', 'Economics', 'Pre-Medicine') then 1
else 0
end as STEM_POP
from concentration;

--filter out the concetration table including only the popular concetrations and flag the STEM concentrations.

select *, case when Concentration in ('Finance', 'Economics', 'Pre-Medicine') then 1
else 0
end as STEM_POP
from concentration
where Concentration in (select Concentration
from concentration
group by Concentration 
order by count(*) desc
limit 10);

--Filter out the concentration table including only the three popular STEM concentrations.

select * from concentration 
where concentration in ('Finance', 'Economics', 'Pre-Medicine')

--2.4

select distinct A.ProfileId
from FavoriteBooks A, FavoriteBooks B
where A.FavoriteBook like '%Lord of the Rings%' AND
      B.FavoriteBook like '%Harry Potter%' AND
      A.ProfileId = B.ProfileId;

select distinct A.ProfileId
from FavoriteBooks A, FavoriteBooks B
where A.FavoriteBook like '%Lord of the Rings%' AND
      B.FavoriteBook like '%Harry Potter%' AND
      A.ProfileId = B.ProfileId;
      
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Lord of the Rings%'
union
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Harry Potter%';

select ProfileId
from FavoriteBooks
where FavoriteBook like '%Lord of the Rings%'
intersect
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Harry Potter%';

select ProfileId
from FavoriteBooks
where FavoriteBook like '%Lord of the Rings%'

select ProfileId
from FavoriteBooks
where FavoriteBook like '%Harry Potter%'
intersect
select ProfileId
from FavoriteMovies
where FavoriteMovie like '%Star Wars%';

select *
from FavoriteBooks;

--2.4--
--Q1--
Select ProfileID
from FavoriteBooks JOIN Concentration using(ProfileID)
where FavoriteBook like '%Harry Potter%' AND Concentration like '%Psychology%';
--Q2--
Select ProfileID
from FavoriteBooks
where FavoriteBook like '%Harry Potter%'
intersect 
Select ProfileID
from Concentration
where Concentration like '%Psychology%';
--Q3--
Select ProfileID
from FavoriteBooks
except
select ProfileID
from FavoriteTVShows;
--Q4--
Select ProfileID
from FavoriteTVShows
except
select ProfileID
from FavoriteBooks;

--3.1--
--time in UTC--
Select datetime('now');
--local time--
Select datetime('now', 'localtime');

--working with dates
--%Y: year, %m: month, %d: day of the month, %j: day of the year, %w: day of the week 0-6 with Sunday = 0

select strftime('%Y-%m-%d', date('now', 'localtime'));

select strftime('%W', date('now', 'localtime'));

--Number of signups per year-month:
select strftime('%Y-%m', MemberSince) as Year_Month, count(*)
from Profiles
Group by Year_Month;

--Number of signups per day of the week: 
select strftime('%w', MemberSince) as Year_Month, count(*)
from Profiles
Group by Year_Month;

--How many users did the last update of their profile in the first 6 months of 2005?--
select count(*)
from profiles
where strftime('%Y-%m-%d',LastUpdate) <= '2005-06-30' and strftime('%Y-%m-%d',LastUpdate) >= '2005-01-01';

--How many users did the last update of their profile in January of 2006?--
select count(*)
from profiles
where strftime('%Y-%m',LastUpdate) = '2006-01';

select strftime('%J', date('2000-01-01')) + 10;

--Step 1: convert to Julian Day
select strftime('%J',date('2000-01-01'));
--step 2: add the given number of days (or subtract)
select strftime('%J',date('2000-01-01')) + 10;
--step 3: convert back to a date
select date(strftime('%J',date('2000-01-01')) + 10);

Select MemberSince
from profiles;

Select ProfileID, MemberSince
from favoritemusic join profiles using(ProfileID)
where FavoriteMusic like '%Nickelback%';

--How would you find the average tenure of users or customers on the FaceX platform on the basis of their preference for Nickelback?--
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles join FavoriteMusic on profiles.ProfileID = FavoriteMusic.ProfileID
where FavoriteMusic like '%Nickelback%';

select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles join FavoriteMusic on profiles.ProfileID = FavoriteMusic.ProfileID
where FavoriteMusic not like '%Nickelback%';

Select Name, LastUpdate
from profiles;

--How would you analyze recent user activity using the LastUpdate column in the FaceX dataset?--
select Name, strftime('%J', 'now') - strftime('%J',LastUpdate) as numDays
from profiles;

Select "Political.Views", MemberSince
from profiles;

Select "Political.Views"
from profiles;

--How would you find the average tenure of a specific type of user on the FaceX platform?
select "Political.Views", avg(strftime('%J', '2006-01-19') - strftime('%J', MemberSince)) as avg_days_since_joined
from profiles
group by "Political.Views"
order by avg_days_since_joined;

--Write a query to calculate the number of profiles updated within the last day (i.e., on Jan 17, 2006 or later).
select count(*)
from profiles
where strftime('%J', '2006-01-18') - strftime('%J', LastUpdate) <= 1;

--or
select count(*)
from profiles
where LastUpdate >= '2006-01-17';
