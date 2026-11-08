-- Database: FaceX
-- Queries written in SQLiteStudio (SQLite). Each is the final working version of a query I iterated on.

-- 1. 2025-05-24
select Name, 2020 - Birthday as Age
from profiles
where Sex = 'Male' and 2020 - Birthday > 40;

-- 2. 2025-05-25
select ProfileID, FavoriteBook
from favoritebooks
where FavoriteBook = "Harry Potter";

-- 3. 2025-05-25
select Name, Status, Sex
from profiles
where Name LIKE 'Eric_ %';

-- 4. 2025-05-25
select Name
from Profiles
where "Political.Views" LIKE 'conservative'
limit 10;

-- 5. 2025-05-25
select Name, Status, Sex, "Political.Views"
from profiles
where Name like '%Park%';

-- 6. 2025-05-25
select *
from favoritemovies
where FavoriteMovie like '%star war%';

-- 7. 2025-05-25
select Name, Status, Sex, Birthday, "Political.Views"
from Profiles
where Birthday = 1985 or "Political.Views" = 'Conservative';

-- 8. 2025-05-25
select count(FavoriteMusic)
from FavoriteMusic
where trim(FavoriteMusic) like 'Black Sabbath';

-- 9. 2025-05-25
select count(Concentration)
from concentration
where Concentration like 'Computer Science';

-- 10. 2025-05-25
select count(ProfileID)
from profiles
where TRIM(Sex) like 'Female' and TRIM(Birthday) like 1985 and TRIM("Political.Views") like 'Conservative';

-- 11. 2025-05-25
select count(*)
from profiles 
where Sex = 'Male' AND Birthday <> 1985 OR 1986;

-- 12. 2025-05-26
select AVG(Birthday) as AvgBirthday
from profiles
group by Sex;

-- 13. 2025-05-26
SELECT Concentration, count(*) as frequency
FROM Concentration
group by concentration
order by frequency desc;

-- 14. 2025-05-26
select Sex, avg(Birthday) as AvgBirthday
from profiles
group by Sex;

-- 15. 2025-05-27
select Interests, Count(*) as Freq
from Interests
Group by Interests
Order by Freq desc;

-- 16. 2025-05-28
select Sex, count(distinct name) as frequency, count(*) as freq2
from profiles
group by Sex;

-- 17. 2025-05-28
Select Interests, Count(*) as FREQ
from Interests
group by Interests
having freq >= 200 and Interests like 'T%'
Order by Freq desc;

-- 18. 2025-05-28
select "Political.Views", avg(Birthday) as AvgBirthday
from Profiles
group by "Political.Views";

-- 19. 2025-05-28
select count(distinct concentration)
from concentration
order by concentration desc;

-- 20. 2025-05-28
select Concentration, count(*) as freq
from concentration
group by Concentration
having Concentration like '%science%'
order by freq desc;

-- 21. 2025-05-29
Select *
From concentration JOIN favoritebooks using (ProfileID);

-- 22. 2025-05-31
Select R.RelationshipStatus, F.FavoriteTVShow, count(*) as freq
from FavoriteTVShows F 
JOIN RelationshipStatus R on R.ProfileID = F.ProfileID
where R.RelationshipStatus = 'Single'
group by R.RelationshipStatus, F.FavoriteTVShow
order by freq desc;

-- 23. 2025-05-31
Select distinct R.RelationshipStatus, F.FavoriteTVShow, count(*) as freq
from FavoriteTVShows F 
JOIN RelationshipStatus R on R.ProfileID = F.ProfileID
where R.RelationshipStatus = 'Single'
group by R.RelationshipStatus, F.FavoriteTVShow
order by freq desc;

-- 24. 2025-05-31
Select distinct favoritebook
from favoritebooks F JOIN concentration C
where F.ProfileID = C.ProfileID and concentration = 'Computer Science';

-- 25. 2025-05-31
Select RelationshipStatus, FavoriteTVShow, count(*) as freq
from relationshipstatus R JOIN FavoriteTVShows F
where R.ProfileID = F.ProfileID AND relationshipstatus = 'Single'
group by R.RelationshipStatus, F.FavoriteTVShow
order by freq desc;

-- 26. 2025-05-31
Select Concentration, FavoriteBook, Count(*) as freq
from concentration C JOIN favoritebooks F
where C.concentration = F.favoritebook
group by C.Concentration, F.FavoriteBook
order by freq desc;

-- 27. 2025-05-31
Select Concentration, FavoriteBook, Count(*) as freq
from concentration C JOIN favoritebooks F
where C.ProfileID = F.ProfileID AND Concentration = 'Psychology'
group by C.Concentration, F.FavoriteBook
order by freq desc;

-- 28. 2025-06-01
Select *
from (Concentration C JOIN LookingFor L on C.ProfileID = L.ProfileID)
                    JOIN RelationshipStatus R on R.ProfileID = C.ProfileID;

-- 29. 2025-06-01
Select count(*) as Total, count(distinct ProfileId) as 'Distinct'
from FavoriteMusic;

-- 30. 2025-06-01
Select distinct profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

-- 31. 2025-06-01
Select profiles.ProfileID, profiles.status, favoritemusic.FavoriteMusic
from profiles JOIN FavoriteMusic using (ProfileID);

-- 32. 2025-06-02
Select Interests, count(*) as Freq
from Interests JOIN Concentration using (ProfileId)
where Concentration like '%Math%' and Interests like 'M%'
Group by Interests 
Having Freq > 10 
Order by Freq desc;

-- 33. 2025-06-02
Select Sex, count(*) as Freq
from profiles P JOIN favoritemovies using (ProfileID)
where FavoriteMovie = 'Titanic' and Sex is not NULL
group by Sex
order by Freq desc;

-- 34. 2025-06-02
Select Interests, count(*) as freq
from Interests
group by ProfileID
having freq >= 100
order by freq desc;

-- 35. 2025-06-02
Select Interests, count(*) as freq
from Interests
group by Interests
having freq >= 100
order by freq desc;

-- 36. 2025-06-02
Select Sex, count(*) as Freq
from profiles JOIN favoritemovies using (ProfileID)
where FavoriteMovie = 'Titanic' and Sex is not NULL
group by Sex
order by Freq desc;

-- 37. 2025-06-02
Select Sex, count(*) as freq, Avg(2006 - Birthday) as Age
from relationshipstatus JOIN lookingfor using (ProfileID)
                        JOIN profiles using (ProfileID)
where RelationshipStatus = 'Married' 
AND LookingFor = 'Whatever I can get'
group by Sex;

-- 38. 2025-06-02
Select Avg(Birthday), count(*)
from profiles JOIN concentration using (ProfileID)
    JOIN interests using (ProfileID)
where Concentration = 'Psychology' AND Interests = 'Music';

-- 39. 2025-06-02
Select Interests, count(*) 
from Interests
group by Interests
having count(*) >= 50
order by count(*) desc;

-- 40. 2025-06-02
Select Avg(Birthday), count(*), Concentration, Interests
from profiles JOIN concentration using (ProfileID)
    JOIN interests using (ProfileID)
where Concentration = 'Psychology' AND Interests = 'Music';

-- 41. 2025-06-02
Select *
from interests
where LOWER(Interests) = 'music';

-- 42. 2025-06-02
Select Avg(Birthday), count(*)
from profiles JOIN concentration using (ProfileID)
    JOIN interests using (ProfileID)
where Concentration = 'Psychology' AND Interests like '%Music%';

-- 43. 2025-06-07
Select A.ProfileId, A.interests as Interest1, B.interests as Interest2
from Interests A, Interests B
where A.interests = B.interests AND
      A.ProfileId >= 2;

-- 44. 2025-06-07
Select *
from Interests A, Interests B
where A.ProfileId = B.ProfileId AND
      A.interests < B.interests;

-- 45. 2025-06-07
Select A.interests as Running, B.interests as Other, count(*) as freq
from interests A, interests B
where A.ProfileId = B.ProfileId AND
      A.interests <> B.interests AND
      A.interests like "%Running%"
group by Running, Other
order by freq desc;

-- 46. 2025-06-07
Select *
from favoritebooks A, profiles B
where A.ProfileId = B.ProfileId AND
      B.ProfileId >= 10;

-- 47. 2025-06-07
Select FavoriteBook, count(*) from favoritebooks where ProfileId in 
(Select ProfileId
from favoritebooks JOIN profiles using(ProfileId)
where Status = 'Undergrad'
group by ProfileId
having count(*) >= 10)
group by FavoriteBook
order by count(*) desc
limit 3;

-- 48. 2025-06-07
Select FavoriteBook, count(*)
from FavoriteBooks
where ProfileID in
(Select ProfileID
from FavoriteBooks JOIN profiles using (ProfileID)
where FavoriteBook like '%Harry Potter%')
AND FavoriteBook NOT LIKE '%Harry Potter%'
group by FavoriteBook
order by count(*) desc;

-- 49. 2025-06-08
Select B.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration >= 1;

-- 50. 2025-06-08
Select A.Concentration, B.Concentration, count(*) as Frequency
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration like '%Finance%' AND
      B.Concentration not like '%Finance%'
group by A.Concentration, B.Concentration
order by Frequency desc;

-- 51. 2025-06-08
Select A.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A JOIN concentration B ON A.ProfileID = B.ProfileID
where A.concentration < B.concentration;

-- 52. 2025-06-08
Select B.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration < B.concentration;

-- 53. 2025-06-16
Select *,
case when FavoriteMusic ='Nickleback' then 'Nickelback'
    else FavoriteMusic end as FavoriteMusic_fixed
from favoritemusic
where FavoriteMusic_fixed = 'Nickelback';

-- 54. 2025-06-16
select *,
case     when Concentration = 'Finance' then 1
        when Concentration = 'Economics' then 1
        when Concentration = 'Pre-Medeicine' then 1
    else 0
end as STEM_POP
from concentration;

-- 55. 2025-06-16
select *, case when Concentration in ('Finance', 'Economics', 'Pre-Medicine') then 1
else 0
end as STEM_POP
from concentration
where Concentration in (select Concentration
from concentration
group by Concentration 
order by count(*) desc
limit 10)
having STEM_POP = 1;

-- 56. 2025-06-16
select * from concentration 
where concentration in ('Finance', 'Economics', 'Pre-Medicine');

-- 57. 2025-06-17
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Lord of the Rings%'
union
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Harry Potter%'
intersect
select ProfileId
from FavoriteMovies
where FavoriteMovie like '%Star Wars%';

-- 58. 2025-06-18
Select ProfileID
from FavoriteBooks
where FavoriteBook like '%Harry Potter%'
intersect 
Select ProfileID from Concentration
where Concentration like '%Psychology%';

-- 59. 2025-06-18
Select ProfileID
from FavoriteBooks
except
select ProfileID
from FavoriteTVShows;

-- 60. 2025-06-18
Select ProfileID
from FavoriteTVShows
except
select ProfileID
from FavoriteBooks;

-- 61. 2025-06-18
select strftime('%W', date('now', 'localtime'));

-- 62. 2025-06-18
select strftime('%Y-%m', MemberSince) as Year_Month, count(*)
from Profiles
Group by Year_Month;

-- 63. 2025-06-18
select count(*)
from profiles
where strftime('%Y-%m',LastUpdate) = '2006-01';

-- 64. 2025-06-18
select date(strftime('%J',date('2000-01-01')) + 10);

-- 65. 2025-06-19
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles join FavoriteMusic on profiles.ProfileID = FavoriteMusic.ProfileID
where FavoriteMusic like '%Nickelback%';

-- 66. 2025-06-19
select Name, strftime('%J', 'now') - strftime('%J',LastUpdate) as numDays
from profiles;

-- 67. 2025-06-19
Select "Political.Views", MemberSince
from profiles;

-- 68. 2025-06-19
select "Political Views", avg(strftime('%J', '2006-01-19') - strftime('%J', MemberSince)) as avg_days_since_joined
from profiles
group by "Political.Views"
order by avg_days_since_joined;

-- 69. 2025-06-19
select "Political.Views", avg(strftime('%J', '2006-01-19') - strftime('%J', MemberSince)) as avg_days_since_joined
from profiles
group by "Political.Views"
order by avg_days_since_joined;

-- 70. 2025-06-19
select count(*)
from profiles
where strftime('%J', '2006-01-18') - strftime('%J', LastUpdate) <= 1;

-- 71. 2025-06-21
SELECT ProfileID, FavoriteMusic,
    CASE 
    WHEN FavoriteMusic = 'Nickleback' then 'Nickelback'
        ELSE FavoriteMusic
    END AS FavoriteMusic_Fixed
FROM FavoriteMusic;

-- 72. 2025-06-21
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

-- 73. 2025-06-21
select distinct Birthday
from profiles
limit 10;

-- 74. 2025-06-21
create temporary table T1 as
    select Sex, "Political.Views", count(*) as frequency
    from profiles
    group by Sex, "Political.Views";

-- 75. 2025-06-21
create temporary table T2 as
    select FavoriteTVShow, count(*) as marriedcount
    from FavoriteTVShows JOIN RelationshipStatus using(ProfileID)
    where RelationshipStatus = 'Married'
    group by FavoriteTVShow;

-- 76. 2025-06-21
select T1.FavoriteTVShow, T1.singlecount, T2.marriedcount, T3.totalcount
from T1, T2, T3
where T1.FavoriteTVShow = T2.FavoriteTVShow AND T1.FavoriteTVShow = T3.FavoriteTVShow
order by T3.totalcount desc;

-- 77. 2025-06-21
select FavoriteBook, count(*) as totcount
from favoritebooks
group by FavoriteBook
order by totcount desc;

-- 78. 2025-06-21
select Concentration, count(*) as freq
from concentration
where Concentration = 'Finance' OR Concentration = 'Psychology'
group by Concentration
order by freq desc;

-- 79. 2025-06-21
Select Concentration, FavoriteBook, count(*) as freq
from concentration join favoritebooks using(ProfileID)
where Concentration = 'Finance' or Concentration = 'Psychology'
group by Concentration, FavoriteBook
order by freq desc;

-- 80. 2025-06-21
create temporary table T1 as
    select FavoriteBook, count(*) as totcount
    from favoritebooks
    group by FavoriteBook
    order by totcount desc;

-- 81. 2025-06-21
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

-- 82. 2025-06-21
create temporary table T4 as
    select ProfileId
    from FavoriteBooks
    where FavoriteBook like '%Harry Potter%';

-- 83. 2025-06-21
create temporary table THP as
    select * from T3
    INTERSECT
    select * from T4;

-- 84. 2025-06-23
create view profile_view as
select profileID, Sex
from profiles;

-- 85. 2025-06-23
select ProfileID, 'Name begins with ' || substr(Name, 1, 1) as Name_Anonymized, Birthday, Sex
from profiles;

-- 86. 2025-06-23
drop view profile_vw;

-- 87. 2025-06-24
select RelationshipStatus, round(100*CAST(count(*) as real)/ 25784, 2) as Percentage
from RelationshipStatus
group by RelationshipStatus;

-- 88. 2025-06-25
select name, substr(name, instr(name, '-')+1, length(name)) as name_modified
from profiles
where instr(name, '-') > 0;

-- 89. 2025-06-25
select count(*)
from profiles
where Birthday = '1986';

-- 90. 2025-06-25
SELECT 
    ROUND(100 * COUNT(*) / CAST((SELECT COUNT(*) FROM profiles) AS DECIMAL), 2) AS PercentBD1986
FROM 
    profiles
WHERE 
    Birthday LIKE '1986%';

-- 91. 2025-06-25
SELECT 
  ROUND(100 * COUNT(*) / CAST(total.total_count AS real(10,2)), 2) AS PercentBD1986
FROM 
  profiles,
  (SELECT COUNT(*) AS total_count FROM profiles) AS total
WHERE 
  Birthday LIKE '1986%';

-- 92. 2025-06-27
Select ROUND(Avg(ProfileID)) as numConcentrationsPerProfile
from concentration;

-- 93. 2025-06-27
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

-- 94. 2025-06-27
create index names_index on Profiles (Name asc);

-- 95. 2025-06-27
SELECT Concentration, 
       ROUND(100 * COUNT(*) / CAST((SELECT COUNT(*) FROM concentration) AS DECIMAL(10,2)), 2) AS Percentage
FROM concentration
GROUP BY Concentration
ORDER BY Percentage DESC;

-- 96. 2025-06-27
select ProfileId, Name
from profiles
where Name like 'A%';

-- 97. 2025-06-27
Create Table FavoriteLanguage (ProfileID integer, Language string);

-- 98. 2025-06-27
Insert into FavoriteLanguage Values (800004, 'Latin');

-- 99. 2025-06-27
Delete from FavoriteLanguage
where ProfileID = 800001;

-- 100. 2025-06-30
Drop table FavoriteLanguage;

-- 101. 2025-06-30
select count(*)
from profiles
where Sex = 'Female';

-- 102. 2025-07-01
SELECT distinct profileID
from concentration;

-- 103. 2025-07-01
select *
from favoritebooks left join concentration using (profileID)
where concentration.ProfileID is NULL;

-- 104. 2025-07-01
select *
from concentration left join favoritebooks using(ProfileID)
where favoritebooks.ProfileID is NULL;

-- 105. 2025-07-02
select *

from profiles join FavoriteTVShows on profiles.ProfileID = FavoriteTVShows.ProfileID

where Birthday >= 1985

order by Birthday desc

limit 10;

-- 106. 2025-07-02
select Sex, count(*), avg(Birthday)

from profiles

group by Sex;

-- 107. 2025-07-02
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

-- 108. 2025-07-03
select *
from profiles
order by random()
limit 10;

-- 109. 2025-07-03
select *
from FavoriteTVShows JOIN rand_sample using (ProfileID);

-- 110. 2025-07-07
create temp table t1 as 
    select *
    from concentration join favoritebooks using (profileid);

-- 111. 2025-07-07
With t1 as 
    (select *
    from concentration join favoritebooks using (profileID))
select concentration, count(*) as frequency
from t1
where favoritebook like "%Harry Potter%"
group by cocentration
order by frequency desc;

-- 112. 2025-07-07
With t1 as 
    (select *
    from Artist
    order by random()
    limit 5)
select *
from Album JOIN T1 using (ArtistID);

-- 113. 2025-09-16
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Lord of the Rings%'
union
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Harry Potter%';

-- 114. 2025-09-17
SELECT ProfileID, Name, LastUpdate
FROM (
    SELECT 
        ProfileID,
        Name,
        LastUpdate,
        ROW_NUMBER() OVER (
            PARTITION BY ProfileID
            ORDER BY LastUpdate DESC
        ) AS update_rank
    FROM profiles
) t
WHERE update_rank = 1;

