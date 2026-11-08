select Interests, Count(*) as Freq
from Interests
Group by Interests
Order by Freq desc;

select interests, count(*) as Freq
from interests
Group by interests
having freq >= 200
Order by Freq desc;

select count(distinct person)
from OscarNoms
where movie = 'Boyhood';

select person, count(distinct category)
from OscarNoms
group by person;

select distinct person, count(*) as freq
from OscarNoms
group by person
having freq == 2;

select *
from MovieGross;

select distinct Studio, sum(Worldwide) as freq
from MovieGross
group by studio
order by freq desc;


--Count of number of FaceX users by gender
select Sex, count(*) as frequency
from profiles
group by Sex;

--Count of number of users by gender excluding NULL
select Sex, count(*) as frequency
from profiles 
where Sex is not NULL
group by Sex;

--Count of number of distinct names by gender
select Sex, count(distinct name) as frequency, count(*) as freq2
from profiles
group by Sex;

--list all Interests in the FaceX database along with the number of times they occur. 
Select Interests, Count(*) as FREQ
from Interests
group by Interests
Order by Freq desc;

--Modify this query to view only those Interests that are listed at least 200 times (to avoid having to deal w/ enormous table
Select Interests, Count(*) as FREQ
from Interests
group by Interests
having freq >= 200
Order by Freq desc;
--cannot use a where statment for freq since it's an aggregation

--Modify to start with the letter 'T'
Select Interests, Count(*) as FREQ
from Interests
where Interests like 'T%'
group by Interests
having freq >= 200
Order by Freq desc;

--can get same results by doing:
Select Interests, Count(*) as FREQ
from Interests
group by Interests
having freq >= 200 and Interests like 'T%'
Order by Freq desc;

--alignment of columns between SELECT statement and GROUP BY 
--Suppose we wish to compute average year or birth by Sex

select Sex, Avg(Birthday)
from profiles
group by sex;

select Status, Sex, Avg(Birthday)
from profiles
group by Status, sex;
-- must have status in group by statement as well as select statement

select "Political.Views", avg(Birthday) as AvgBirthday
from Profiles
group by "Political.Views";

select Concentration, count(*) as freq
from concentration
group by Concentration
order by freq desc;

--Modify to include the word 'science'
select Concentration, count(*) as freq
from concentration
group by Concentration
having Concentration like '%science%' and freq >=52
order by freq desc;

--Module 1.3 Assignment Q1:
select user_screen_name, Avg(retweet_count) as Avg_Retweet_Count
from Tweets
group by user_screen_name
order by Avg_Retweet_Count desc;

--Q2
select user_screen_name, Avg(retweet_count) as Avg_Retweet_Count
from Tweets
group by user_screen_name
having text like '%#%'
order by Avg_Retweet_Count desc;

--Apparently the correct answer for Q2 was: 
select user_screen_name, Avg(retweet_count) as Avg_Retweet_Count
from Tweets
where text like '%#%'
group by user_screen_name
order by Avg_Retweet_Count desc;

--Q3
select user_screen_name, Avg(Favorite_Count) as Avg_Favorite_Count
from Tweets
group by user_screen_name
order by Avg_Favorite_Count desc;

--Q4
select user_screen_name, Avg(Favorite_Count) as Avg_Favorite_Count
from Tweets
group by user_screen_name
having Avg_Favorite_Count >= 1000
order by Avg_Favorite_Count desc;

--Q5
select user_screen_name, Avg(Favorite_Count) as Avg_Favorite_Count
from Tweets
group by user_screen_name
having text like '%love%'
order by Avg_Favorite_Count desc;

-- or possibly
select user_screen_name, Avg(Favorite_Count) as Avg_Favorite_Count
from Tweets
where text like '%love%'
group by user_screen_name
order by Avg_Favorite_Count desc;

--Module 2.1
Select *
from Concentration as L, FavoriteBooks R
where L.ProfileId = R.ProfileId;

--another way to get the same result
Select *
from Concentration L JOIN FavoriteBooks R ON L.ProfileID = R.ProfileID

--same thing, but shortest syntax

Select *
From concentration JOIN favoritebooks using (ProfileID);
--no clue why it didnt run the first time
Select *
From concentration JOIN favoritebooks using (ProfileID);


select P.ProfileID as PID, concentration as Major
from profiles as P, concentration as C
where P.ProfileID = C.ProfileID;

--Activity Questions
Select *
from RelationshipStatus as R, FavoriteTVShows as F
where R.ProfileID = F.ProfileID;

Select distinct FavoriteTVShows, *
from RelationshipStatus JOIN FavoriteTVShows using (ProfileID)
where RelationshipStatus = 'single';

Select DISTINCT F.FavoriteTVShow
from RelationshipStatus AS R
JOIN FavoriteTVShows as F using (ProfileID)
where R.RelationshipStatus = 'single';

Select R.RelationshipStatus, F.FavoriteTVShow, count(*) as freq
from FavoriteTVShows F 
JOIN RelationshipStatus R on R.ProfileID = F.ProfileID
where R.RelationshipStatus = 'Single'
group by R.RelationshipStatus, F.FavoriteTVShow
order by freq desc;

Select distinct R.RelationshipStatus, F.FavoriteTVShow, count(*) as freq
from FavoriteTVShows F 
JOIN RelationshipStatus R on R.ProfileID = F.ProfileID
where R.RelationshipStatus = 'Single'
group by R.RelationshipStatus, F.FavoriteTVShow
order by freq desc;

SELECT DISTINCT f.FavoriteTVShow
FROM relationshipstatus AS r
JOIN FavoriteTVShows AS f ON r.ProfileID = f.ProfileID
WHERE r.RelationshipStatus = 'Single’;

SELECT DISTINCT F.FavoriteTVShow
FROM FavoriteTVShows as F
JOIN relationshipstatus as R
ON F.ProfileID = R.ProfileID
WHERE R.RelationshipStatus = 'Single’;

select distinct (FavoriteTVShow)
from FavoriteTVShows F join relationshipstatus R
where F.ProfileID = R.ProfileID and relationshipstatus = 'Single'


Select *
from favoritebooks;

Select distinct favoritebook
from favoritebooks F JOIN concentration C
where F.ProfileID = C.ProfileID and concentration = 'Computer Science';

--Top TV Shows for 'Single' Facebook users--
Select *
from favoritetvshows;

Select *
from relationshipstatus;

Select relationshipstatus, FavoriteTVShows
from relationshipstatus R JOIN FavoriteTVShows F
where R.ProfileID = C.ProfileID AND relationshipstatus = 'Single';

Select RelationshipStatus, FavoriteTVShow, count(*) as freq
from relationshipstatus R JOIN FavoriteTVShows F
where R.ProfileID = F.ProfileID AND relationshipstatus = 'Single'
group by R.RelationshipStatus, F.FavoriteTVShow
order by freq desc;

--Fave book for psych students

Select *
from favoritebooks;

Select *
from concentration
where Concentration = 'Psychology';

Select Concentration, FavoriteBook, Count(*) as freq
from concentration C JOIN favoritebooks F
where C.ProfileID = F.ProfileID AND Concentration = 'Psychology'
group by C.Concentration, F.FavoriteBook
order by freq desc;

-- JOining more than 2 tables

Select *
from (LookingFor L JOIN RelationshipStatus R on L.ProfileID = R.ProfileID)
                    JOIN Concentration C on C.ProfileID = L.ProfileID;
                    
-- Order of the tables does not matter

Select *
from (RelationshipStatus R JOIN LookingFor L on L.ProfileID = R.ProfileID)
                            JOIN Concentration C on C.ProfileID = R.ProfileID;
                            
Select *
from (Concentration C JOIN LookingFor L on C.ProfileID = L.ProfileID)
                    JOIN RelationshipStatus R on R.ProfileID = C.ProfileID;
                    
--Ocurrence freq of songs in playlists

Select *
from Playlisttrack;

Select *
from Playlist;

Select *
from Track;

Select T.Name, P.TrackId, Count(*) as freq
from PlaylistTrack P JOIN Track T
where P.TrackId = T.TrackId 
group by T.Name, P.TrackId
order by freq desc;

-- popular vid

Select *
from InvoiceLine;

Select Name
from Track;

Select I.TrackId, T.Name, Count(*) as freq
from Track T JOIN InvoiceLine I
where I.TrackId = T.TrackId AND T.MediaTypeId = 3
group by I.TrackId, T.Name
order by freq desc;

-- Artist/track name

Select *
from Album; 

Select A.Name as Artist, T.Name as Track
from Track T, Artist A, Album L
where A.ArtistId = L.ArtistId AND T.AlbumId = L.AlbumId;

Select Track.Name, Track.TrackId, count(*) as freq
from PlaylistTrack, Track 
where PlaylistTrack.TrackId =Track.TrackId
Group by Track.TrackId
Order by freq desc;

Select Track.TrackId, Track.Name, count(*) as freq
from Track, Invoiceline 
where Track.trackId = InvoiceLine.TrackId
and Track.MediaTypeId = 3
group by Track.TrackId
order by freq desc;

Select Artist.Name, Track.Name
from Artist JOIN Album USING(ArtistId) JOIN Track USING (AlbumId);

--Module 2.1 Assignment: Building a Query Using JOIN

Select *
from profiles;

Select ProfileId
from profiles;

Select count(*) as Total, count(distinct ProfileId) as 'Distinct'
from profiles;

Select count(*) as Total, count(distinct ProfileId) as 'Distinct'
from FavoriteMusic;

--Undergrad like Coldplay

Select P.ProfileID, F.ProfileID
from profiles P JOIN FavoriteMusic F
where P.ProfileID = F.ProfileID AND Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

Select profiles.ProfileID
from profiles P JOIN FavoriteMusic F
where P.ProfileID = F.ProfileID
group by ProfileId;

Select profiles.ProfileID, profiles.status, favoritemusic.FavoriteMusic
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

--correct answer for query 3
Select distinct profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

Select profiles.ProfileID, profiles.status, favoritemusic.FavoriteMusic
from profiles JOIN FavoriteMusic using (ProfileID);

-- Module 2.2
Select Interests, count(*) as Freq
from Interests JOIN Concentration using (ProfileId)
where Concentration like '%Math%' and Interests like 'M%'
Group by Interests 
Having Freq > 10 
Order by Freq desc;

-- group by not necessary sometimes, since using distinct
Select distinct profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'

Select *
from profiles JOIN Interests using (ProfileId)
limit 10;

Select *
from profiles JOIN Interests using (ProfileId)
limit 10;

Select Interests, count(*)
from profiles JOIN Interests using (profileId)
Where "Political.Views" = 'Very Liberal'
group by Interests
order by count(*) desc
limit 3;

Select Interests, count(*)
from profiles JOIN Interests using (ProfileID)
where "Political.Views" = 'Very Conservative'
group by Interests
order by count(*) desc 
limit 3;

Select Sex, count(*) as Freq
from profiles JOIN favoritemovies using (ProfileID)
where FavoriteMovie = 'Titanic' and Sex is not NULL
group by Sex
order by Freq desc;

Select Interests, count(*) as freq
from Interests
group by ProfileID
having freq >= 100
order by freq desc;

--Correct answer: (you dont use profile ID because you're not joining anything lol)

Select Interests, count(*) as freq
from Interests
group by Interests
having freq >= 100
order by freq desc;

Select *
from relationshipstatus JOIN lookingfor using (ProfileID)
where RelationshipStatus = 'Married' AND LookingFor = 'Whatever I can get';

Select Sex, count(*), 2006 - Birthday as Age, Relationshipstatus, LookingFor
from relationshipstatus JOIN lookingfor using (ProfileID)
                        JOIN profiles using (ProfileID)
where RelationshipStatus = 'Married' AND LookingFor = 'Whatever I can get'
group by Sex;

--Correct query (had to get average age, not just age)
Select Sex, count(*) as freq, Avg(2006 - Birthday) as Age
from relationshipstatus JOIN lookingfor using (ProfileID)
                        JOIN profiles using (ProfileID)
where RelationshipStatus = 'Married' 
AND LookingFor = 'Whatever I can get'
group by Sex;

--2.2 Quiz Q1
Select Interests, count(*) 
from Interests
group by Interests
having count(*) >= 50
order by count(*) desc;

--Q2
Select Interests, count(*)
from interests JOIN concentration using (ProfileID)
where Concentration = 'Psychology'
group by Concentration, Interests
having count(*) >= 50
order by count(*) desc;

--Q3
Select Avg(Birthday)
from profiles JOIN concentration using (ProfileID)
where Concentration = 'Psychology';

--Q4
Select Avg(Birthday), count(*), Concentration, Interests
from profiles JOIN concentration using (ProfileID)
    JOIN interests using (ProfileID)
where Concentration = 'Psychology' AND Interests = 'Music';

--Correct query for Q4 (it was because instructions said there were diff ways to write music)
Select Avg(Birthday), count(*)
from profiles JOIN concentration using (ProfileID)
    JOIN interests using (ProfileID)
where Concentration = 'Psychology' AND Interests like '%Music%';
