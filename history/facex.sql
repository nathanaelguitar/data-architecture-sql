-- Every query I ran against this database in SQLiteStudio, in the order I ran them.
-- All hand-written. Includes the failed attempts and repeats.

-- 1. 2025-05-24 17:53 [sqlite_facex_msba], rows returned: 25786
select * from profiles;

-- 2. 2025-05-24 19:09 [sqlite_facex_msba], rows returned: 365
select Name, 2020 - Birthday as Age
from profiles
where Sex = 'Male' and 2020 - Birthday > 40;

-- 3. 2025-05-25 14:26 [sqlite_facex_msba], rows returned: 0
select ProfileID, FavoriteBook
from favoritebooks
where FavoriteBook = Harry Potter;

-- 4. 2025-05-25 15:17 [sqlite_facex_msba], rows returned: 1025
select ProfileID, FavoriteBook
from favoritebooks
where FavoriteBook = "Harry Potter";

-- 5. 2025-05-25 15:34 [sqlite_facex_msba], rows returned: 176
select Name, Status, Sex
from profiles
where Name LIKE 'Eric%';

-- 6. 2025-05-25 15:36 [sqlite_facex_msba], rows returned: 176
select Name, Status, Sex
from profiles
where Name LIKE 'Eric%';

-- 7. 2025-05-25 15:36 [sqlite_facex_msba], rows returned: 176
select Name, Status, Sex
from profiles
where Name LIKE 'Eric%';

-- 8. 2025-05-25 15:39 [sqlite_facex_msba], rows returned: 63
select Name, Status, Sex
from profiles
where Name LIKE 'Eric_ %';

-- 9. 2025-05-25 15:56 [sqlite_facex_msba], rows returned: 0
select Name
from profiles
where lower("Political.Views") = 'convervative'
limit 10;

-- 10. 2025-05-25 15:56 [sqlite_facex_msba], rows returned: 0
select Name
from profiles
where lower("Political.Views") = 'convervative'
limit 10;

-- 11. 2025-05-25 15:56 [sqlite_facex_msba], rows returned: 0
select Name
from Profiles
where lower(PoliticalViews) = 'convervative'
limit 10;

-- 12. 2025-05-25 15:57 [sqlite_facex_msba], rows returned: 0
select Name
from Profiles
where lower("Political.Views") = 'convervative'
limit 10;

-- 13. 2025-05-25 15:57 [sqlite_facex_msba], rows returned: 0
select Name
from Profiles
where lower("Political.Views") = 'convervative';

-- 14. 2025-05-25 15:57 [sqlite_facex_msba], rows returned: 10
select Name
from Profiles
limit 10;

-- 15. 2025-05-25 16:07 [sqlite_facex_msba], rows returned: 10
select Name
from Profiles
where UPPER("Political.Views") = 'CONSERVATIVE'
limit 10;

-- 16. 2025-05-25 16:07 [sqlite_facex_msba], rows returned: 10
select Name
from Profiles
where UPPER("Political.Views") = 'CONSERVATIVE'
limit 10;

-- 17. 2025-05-25 16:09 [sqlite_facex_msba], rows returned: 10
select Name
from Profiles
where lower("Political.Views") = 'conservative'
limit 10;

-- 18. 2025-05-25 17:01 [sqlite_facex_msba], rows returned: 10
select Name
from Profiles
where lower("Political.Views") LIKE 'conservative'
limit 10;

-- 19. 2025-05-25 17:02 [sqlite_facex_msba], rows returned: 10
select Name
from Profiles
where "Political.Views" LIKE 'conservative'
limit 10;

-- 20. 2025-05-25 17:22 [sqlite_facex_msba], rows returned: 0
select Name, Status, Sex, "Political.Views"
from profiles
where TRIM(Name) like '%Park'

select Name, Status, Sex, "Political.Views"
from profiles
where Name like '%Park%';

-- 21. 2025-05-25 17:25 [sqlite_facex_msba], rows returned: 52
select Name, Status, Sex, "Political.Views"
from profiles
where TRIM(Name) like '%Park';

-- 22. 2025-05-25 17:25 [sqlite_facex_msba], rows returned: 81
select Name, Status, Sex, "Political.Views"
from profiles
where Name like '%Park%';

-- 23. 2025-05-25 17:39 [sqlite_facex_msba], rows returned: 0
select FavoriteMovie
from favoritemovies
where FavoriteMovie = '%Harry%';

-- 24. 2025-05-25 17:39 [sqlite_facex_msba], rows returned: 0
select FavoriteMovie
from favoritemovies
where FavoriteMovie = '%Harry%';

-- 25. 2025-05-25 17:39 [sqlite_facex_msba], rows returned: 0
select FavoriteMovie
from favoritemovies
where TRIM(FavoriteMovie) = '%Harry%';

-- 26. 2025-05-25 17:39 [sqlite_facex_msba], rows returned: 342
select FavoriteMovie
from favoritemovies
where FavoriteMovie like '%Harry%';

-- 27. 2025-05-25 17:43 [sqlite_facex_msba], rows returned: 257
select Name
from profiles
where Name like 'David%';

-- 28. 2025-05-25 17:45 [sqlite_facex_msba], rows returned: 0
select FavoriteMovie
from favoritemovies
where FavoriteMovie like '%star war&';

-- 29. 2025-05-25 17:45 [sqlite_facex_msba], rows returned: 0
select FavoriteMovie
from favoritemovies
where FavoriteMovie like '%star.war&';

-- 30. 2025-05-25 17:45 [sqlite_facex_msba], rows returned: 0
select FavoriteMovie
from favoritemovies
where FavoriteMovie like '%star war&';

-- 31. 2025-05-25 17:46 [sqlite_facex_msba], rows returned: 0
select FavoriteMovie
from favoritemovies
where FavoriteMovie = '%star war&';

-- 32. 2025-05-25 17:46 [sqlite_facex_msba], rows returned: 0
select FavoriteMovie
from favoritemovies
where TRIM(FavoriteMovie) = '%star war&';

-- 33. 2025-05-25 17:48 [sqlite_facex_msba], rows returned: 0
select FavoriteMovie
from favoritemovies
where TRIM(FavoriteMovie) = '%star war%';

-- 34. 2025-05-25 17:48 [sqlite_facex_msba], rows returned: 0
select FavoriteMovie
from favoritemovies
where TRIM(FavoriteMovie) = '%star%';

-- 35. 2025-05-25 17:48 [sqlite_facex_msba], rows returned: 0
select FavoriteMovie
from favoritemovies
where lower(FavoriteMovie) = '%star%';

-- 36. 2025-05-25 17:55 [sqlite_facex_msba], rows returned: 213
select *
from favoritemovies
where FavoriteMovie like '%star war%';

-- 37. 2025-05-25 18:02 [sqlite_facex_msba], rows returned: 178
select Name, Status, Sex, Birthday, "Political.Views"
from Profiles
where Birthday = 1985 AND "Political.Views" = 'Conservative';

-- 38. 2025-05-25 18:03 [sqlite_facex_msba], rows returned: 4285
select Name, Status, Sex, Birthday, "Political.Views"
from Profiles
where Birthday = 1985 or "Political.Views" = 'Conservative';

-- 39. 2025-05-25 18:07 [sqlite_facex_msba], rows returned: 1
select count(distinct FavoriteMusic)
from FavoriteMusic
where FavoriteMusic like 'Met%';

-- 40. 2025-05-25 18:09 [sqlite_facex_msba], rows returned: 0
select count(FavoriteMusic)
from FavoriteMusic
where trime(FavoriteMusic) like 'Black Sabbath';

-- 41. 2025-05-25 18:11 [sqlite_facex_msba], rows returned: 1
select count(FavoriteMusic)
from FavoriteMusic
where trim(FavoriteMusic) like 'Black Sabbath';

-- 42. 2025-05-25 18:18 [sqlite_facex_msba], rows returned: 1
select count(Concentration)
from concentration
where Concentration like 'Computer Science';

-- 43. 2025-05-25 18:24 [sqlite_facex_msba], rows returned: 1
select count(Sex)
from profiles
where Sex = 'Female' and Birthday = 1985 and "Political.Views" = 'Conserative';

-- 44. 2025-05-25 18:24 [sqlite_facex_msba], rows returned: 1
select count(Sex)
from profiles
where Sex like 'Female' and Birthday like 1985 and "Political.Views" like 'Conserative';

-- 45. 2025-05-25 18:25 [sqlite_facex_msba], rows returned: 1
select count(Sex)
from profiles
where TRIM(Sex) like 'Female' and TRIM(Birthday) like 1985 and TRIM("Political.Views") like 'Conserative';

-- 46. 2025-05-25 18:26 [sqlite_facex_msba], rows returned: 0
select count(Sex, Birthday, Political.Views)
from profiles
where TRIM(Sex) like 'Female' and TRIM(Birthday) like 1985 and TRIM("Political.Views") like 'Conserative';

-- 47. 2025-05-25 18:27 [sqlite_facex_msba], rows returned: 1
select count(*)
from profiles
where TRIM(Sex) like 'Female' and TRIM(Birthday) like 1985 and TRIM("Political.Views") like 'Conserative';

-- 48. 2025-05-25 18:30 [sqlite_facex_msba], rows returned: 1
select count("Political.Views")
from profiles
where TRIM(Sex) like 'Female' and TRIM(Birthday) like 1985 and TRIM("Political.Views") like 'Conserative';

-- 49. 2025-05-25 18:31 [sqlite_facex_msba], rows returned: 1
select count(ProfileID)
from profiles
where TRIM(Sex) like 'Female' and TRIM(Birthday) like 1985 and TRIM("Political.Views") like 'Conserative';

-- 50. 2025-05-25 18:32 [sqlite_facex_msba], rows returned: 1
select count(ProfileID)
from profiles
where TRIM(Sex) like 'Female' and TRIM(Birthday) like 1985 and TRIM("Political.Views") like 'Conservative';

-- 51. 2025-05-25 18:41 [sqlite_facex_msba], rows returned: 12311
select ProfileID
from profiles
where Sex = 'Female';

-- 52. 2025-05-25 18:41 [sqlite_facex_msba], rows returned: 12311
select Sex
from profiles
where Sex = 'Female';

-- 53. 2025-05-25 18:41 [sqlite_facex_msba], rows returned: 12311
select *
from profiles
where Sex = 'Female';

-- 54. 2025-05-25 18:42 [sqlite_facex_msba], rows returned: 2055
select *
from profiles
where Sex = 'Female' AND Birthday = 1985;

-- 55. 2025-05-25 18:42 [sqlite_facex_msba], rows returned: 2055
select Sex, Birthday, "Political.Views"
from profiles
where Sex = 'Female' AND Birthday = 1985;

-- 56. 2025-05-25 18:43 [sqlite_facex_msba], rows returned: 0
select Sex, Birthday, "Political.Views"
from profiles
where Sex = 'Female' AND Birthday = 1985 AND "Political.Views" = 'Conversvative';

-- 57. 2025-05-25 18:43 [sqlite_facex_msba], rows returned: 0
select Sex, Birthday, "Political.Views"
from profiles
where Sex = 'Female' AND Birthday = 1985 AND "Political.Views" = 'Convervative';

-- 58. 2025-05-25 18:43 [sqlite_facex_msba], rows returned: 0
select Sex, Birthday, "Political.Views"
from profiles
where Sex = 'Female' AND Birthday = 1985 AND "Political.Views" = 'Convervative';

-- 59. 2025-05-25 18:43 [sqlite_facex_msba], rows returned: 2055
select Sex, Birthday, "Political.Views"
from profiles
where Sex = 'Female' AND Birthday = 1985;

-- 60. 2025-05-25 18:44 [sqlite_facex_msba], rows returned: 0
select count([Sex, Birthday, "Political.Views"])
from profiles
where Sex = 'Female' AND Birthday = 1985 AND "Political.Views" = 'Conservative';

-- 61. 2025-05-25 18:45 [sqlite_facex_msba], rows returned: 1
select count(Sex), count(Birthday), count("Political.Views")
from profiles
where Sex = 'Female' AND Birthday = 1985 AND "Political.Views" = 'Conservative';

-- 62. 2025-05-25 18:45 [sqlite_facex_msba], rows returned: 1
select count(Sex)
from profiles
where Sex = 'Female' AND Birthday = 1985 AND "Political.Views" = 'Conservative';

-- 63. 2025-05-25 18:46 [sqlite_facex_msba], rows returned: 1
select count(ProfileID)
from profiles
where Sex = 'Female' AND Birthday = 1985 AND "Political.Views" = 'Conservative';

-- 64. 2025-05-25 18:47 [sqlite_facex_msba], rows returned: 1
select count(*)
from profiles
where Sex = 'Female' AND Birthday = 1985 AND "Political.Views" = 'Conservative';

-- 65. 2025-05-25 18:59 [sqlite_facex_msba], rows returned: 1
select count(*)
from profiles 
where Sex = 'Male' AND Birthday <> 1985 OR 1986;

-- 66. 2025-05-25 19:00 [sqlite_facex_msba], rows returned: 0
Use Billboard;

-- 67. 2025-05-26 14:28 [sqlite_facex_msba], rows returned: 3
select AVG(Birthday) as AvgBirthday
from profiles
group by Sex;

-- 68. 2025-05-26 14:29 [sqlite_facex_msba], rows returned: 31337
SELECT Concentration
FROM Concentration;

-- 69. 2025-05-26 14:30 [sqlite_facex_msba], rows returned: 139
SELECT Concentration, count(*) as frequency
FROM Concentration
group by concentration;

-- 70. 2025-05-26 14:31 [sqlite_facex_msba], rows returned: 139
SELECT Concentration, count(*) as frequency
FROM Concentration
group by concentration
order by frequency desc;

-- 71. 2025-05-26 14:34 [sqlite_facex_msba], rows returned: 12311
select Sex, 2021 - Birthday as Age
from Profiles
where Sex = 'Female';

-- 72. 2025-05-26 14:35 [sqlite_facex_msba], rows returned: 1
select Sex, avg(2021 - Birthday) as AvgAge
from Profiles
where Sex = 'Female';

-- 73. 2025-05-26 14:35 [sqlite_facex_msba], rows returned: 3
select Sex, avg(2021 - Birthday) as AvgAge
from Profiles
group by Sex;

-- 74. 2025-05-26 14:38 [sqlite_facex_msba], rows returned: 3
select Sex, avg(Birthday)
from profiles
group by Sex;

-- 75. 2025-05-26 14:39 [sqlite_facex_msba], rows returned: 3
select Sex, avg(Birthday) as AvgBirthday
from profiles
group by Sex;

-- 76. 2025-05-27 19:05, rows returned: 7071
select Interests, Count(*) as Freq
from Interests
Group by Interests
Order by Freq desc;

-- 77. 2025-05-27 19:13, rows returned: 0
select count(distinct person)
from OscarNoms
where movie = 'Boyhood';

-- 78. 2025-05-28 19:17, rows returned: 1
select Sex, count(*) as frequency
from profiles;

-- 79. 2025-05-28 19:17, rows returned: 1
select Sex, count(*) as quesofresco
from profiles;

-- 80. 2025-05-28 19:18, rows returned: 1
select Sex, count(*) as frequency
from profiles;

-- 81. 2025-05-28 19:18, rows returned: 3
select Sex, count(*) as frequency
from profiles
group by Sex;

-- 82. 2025-05-28 19:19, rows returned: 3
select Sex, count(*) as frequency
from profiles
group by Sex;

-- 83. 2025-05-28 19:22, rows returned: 2
select Sex, count(*) as frequency
from profiles 
where Sex is not NULL
group by Sex;

-- 84. 2025-05-28 19:23, rows returned: 2
select Sex, count(*) 
from profiles 
where Sex is not NULL
group by Sex;

-- 85. 2025-05-28 19:23, rows returned: 2
select Sex, count(*) as frequency
from profiles 
where Sex is not NULL
group by Sex;

-- 86. 2025-05-28 19:26, rows returned: 3
select Sex, count(distinct name) as frequency
from profiles
group by Sex;

-- 87. 2025-05-28 19:27, rows returned: 3
select Sex, count(distinct name) as frequency, count(*) as freq2
from profiles
group by Sex;

-- 88. 2025-05-28 19:39, rows returned: 7071
Select Interests, Count(*) as FREQ
from Interests
group by Interests
Order by Freq desc;

-- 89. 2025-05-28 19:44, rows returned: 21
Select Interests, Count(*) as FREQ
from Interests
group by Interests
having freq >= 200
Order by Freq desc;

-- 90. 2025-05-28 19:50, rows returned: 4
Select Interests, Count(*) as FREQ
from Interests
where Interests like 'T%'
group by Interests
having freq >= 200
Order by Freq desc;

-- 91. 2025-05-28 19:52, rows returned: 4
Select Interests, Count(*) as FREQ
from Interests
group by Interests
having freq >= 200 and Interests like 'T%'
Order by Freq desc;

-- 92. 2025-05-28 19:55, rows returned: 25786
select Sex, Birthday
from profiles;

-- 93. 2025-05-28 19:56, rows returned: 1
select Sex, Avg(Birthday)
from profiles;

-- 94. 2025-05-28 19:57, rows returned: 3
select Sex, Avg(Birthday)
from profiles
group by sex;

-- 95. 2025-05-28 19:58, rows returned: 3
select Status, Sex, Avg(Birthday)
from profiles
group by sex;

-- 96. 2025-05-28 19:59, rows returned: 20
select Status, Sex, Avg(Birthday)
from profiles
group by Status, sex;

-- 97. 2025-05-28 20:01, rows returned: 10
select "Political.Views", Sex, avg(Birthday) as AvgBirthday
from Profiles
group by "Political.Views";

-- 98. 2025-05-28 20:11, rows returned: 0
select "Political.Views", Sex, avg(Birthday) as AvgBirthday
from Profiles
group by "Political.Views", Sex, avg(Birthday);

-- 99. 2025-05-28 20:14, rows returned: 0
select "Political.Views" avg(Birthday) as AvgBirthday
from Profiles
group by "Political.Views";

-- 100. 2025-05-28 20:17, rows returned: 10
select "Political.Views", avg(Birthday) as AvgBirthday
from Profiles
group by "Political.Views";

-- 101. 2025-05-28 20:17, rows returned: 10
select "Political.Views", avg(Birthday) as AvgBirthday
from Profiles
group by "Political.Views";

-- 102. 2025-05-28 20:20, rows returned: 31337
select *
from concentration;

-- 103. 2025-05-28 20:21, rows returned: 19252
select count(distinct concentration)
from concentration
group by ProfileID;

-- 104. 2025-05-28 20:22, rows returned: 0
select count(distinct concentration) as cheeto
from concentration
order by count desc;

-- 105. 2025-05-28 20:23, rows returned: 1
select count(distinct concentration)
from concentration
order by concentration desc;

-- 106. 2025-05-28 20:25, rows returned: 31337
select *
from concentration;

-- 107. 2025-05-28 20:25, rows returned: 0
select Concentration, count(*) as freq
from concentration
group by Concentration desc;

-- 108. 2025-05-28 20:27, rows returned: 139
select Concentration, count(*) as freq
from concentration
group by Concentration
order by Concentration desc;

-- 109. 2025-05-28 20:27, rows returned: 139
select Concentration, count(*) as freq
from concentration
group by Concentration
order by freq desc;

-- 110. 2025-05-28 20:29, rows returned: 6
select Concentration, count(*) as freq
from concentration
group by Concentration
having Concentration like '%science%'
order by freq desc;

-- 111. 2025-05-28 20:30, rows returned: 0
select user_screen_name, Avg(retweet_count) as Avg_Retweet_Count
from Tweets
group by user_screen_name
order by Avg_Retweet_Count desc;

-- 112. 2025-05-29 22:26, rows returned: 0
Select *
from Concentration L JOIN FavoriteBooks R ON L.ProfileID = R.ProfileID

--same thing, but shortest syntax
Select *
From Concentration JOIN FavoriteBooks using ("Profile.ID");

-- 113. 2025-05-29 22:35, rows returned: 0
Select *
from Concentration L JOIN FavoriteBooks R ON L.ProfileID = R.ProfileID

--same thing, but shortest syntax

Select *
From concentration JOIN favoritebooks using (ProfileID);

-- 114. 2025-05-29 22:36, rows returned: 73041
Select *
From concentration JOIN favoritebooks using (ProfileID);

-- 115. 2025-05-29 22:42, rows returned: 0
Select *
From relationshipstatus R JOIN favoritetvshows F ON R.Profile = F.Profile
where profiles like 'single';

-- 116. 2025-05-29 23:10, rows returned: 0
Select *
From favoritetvshow;

-- 117. 2025-05-29 23:11, rows returned: 0
Select *
From FavoriteTVShows, RelationshipStatus
where A.FavoriteTVShows = B.Relationshipstatus;

-- 118. 2025-05-30 21:29, rows returned: 0
Select *
from RelationshipStatus as R, FavoriteTVShows as F
where R.ProfileID = F.ProfileID
group by FavoriteTVShows
having FavoriteTVShows like '%single%';

-- 119. 2025-05-30 21:53, rows returned: 0
where distinct FavortieTVShows like '%single%';

-- 120. 2025-05-31 18:23, rows returned: 0
Select DISTINCT F.FavoriteTVShow
from RelationshipStatus AS R
JOIN FavoriteTVShows as F using (ProfileID)
where R.RelationshipStatus = 'single';

-- 121. 2025-05-31 19:00, rows returned: 0
Select distinct R.RelationshipStatus, F.FavoriteTVShow, count(*) as freq
from FavoriteTVShows F 
JOIN RelationshipStatus R on R.ProfileID = F.ProfileID
where distinct R.RelationshipStatus = 'Single'
group by R.RelationshipStatus, F.FavoriteTVShow
order by freq desc;

-- 122. 2025-05-31 19:03, rows returned: 3277
Select distinct R.RelationshipStatus, F.FavoriteTVShow, count(*) as freq
from FavoriteTVShows F 
JOIN RelationshipStatus R on R.ProfileID = F.ProfileID
where R.RelationshipStatus = 'Single'
group by R.RelationshipStatus, F.FavoriteTVShow
order by freq desc;

-- 123. 2025-05-31 19:03, rows returned: 3277
Select R.RelationshipStatus, F.FavoriteTVShow, count(*) as freq
from FavoriteTVShows F 
JOIN RelationshipStatus R on R.ProfileID = F.ProfileID
where R.RelationshipStatus = 'Single'
group by R.RelationshipStatus, F.FavoriteTVShow
order by freq desc;

-- 124. 2025-05-31 19:05, rows returned: 0
Select distinct R.RelationshipStatus, F.FavoriteTVShow, count(*) as freq
from FavoriteTVShows F 
JOIN RelationshipStatus R on R.ProfileID = F.ProfileID
where R.RelationshipStatus = 'Single'
group by distinct R.RelationshipStatus, F.FavoriteTVShow
order by freq desc;

-- 125. 2025-05-31 19:07, rows returned: 0
SELECT DISTINCT f.FavoriteTVShow
FROM relationshipstatus AS r
JOIN FavoriteTVShows AS f ON r.ProfileID = f.ProfileID
WHERE r.RelationshipStatus = 'Single’;

SELECT DISTINCT F.FavoriteTVShow
FROM FavoriteTVShows as F
JOIN relationshipstatus as R
ON F.ProfileID = R.ProfileID
WHERE R.RelationshipStatus = 'Single’;

-- 126. 2025-05-31 19:27, rows returned: 3277
select distinct (FavoriteTVShow)
from FavoriteTVShows F join relationshipstatus R
where F.ProfileID = R.ProfileID and relationshipstatus = 'Single';

-- 127. 2025-05-31 19:28, rows returned: 3277
Select distinct R.RelationshipStatus, F.FavoriteTVShow, count(*) as freq
from FavoriteTVShows F 
JOIN RelationshipStatus R on R.ProfileID = F.ProfileID
where R.RelationshipStatus = 'Single'
group by R.RelationshipStatus, F.FavoriteTVShow
order by freq desc;

-- 128. 2025-05-31 19:33, rows returned: 0
select distinct (FavoriteTVShow)
from FavoriteTVShows F join relationshipstatus R
where F.ProfileID = R.ProfileID and relationshipstatus = 'Single'

---

Select *
from favoritebooks;

-- 129. 2025-05-31 19:36, rows returned: 48456
Select *
from favoritebooks;

-- 130. 2025-05-31 19:37, rows returned: 0
Select distinct (favoritebooks)
from favoritebooks F JOIN concentration C
where F.ProfileID = C.ProfileID and concentration = 'Computer Science';

-- 131. 2025-05-31 19:41, rows returned: 387
Select distinct (favoritebook)
from favoritebooks F JOIN concentration C
where F.ProfileID = C.ProfileID and concentration = 'Computer Science';

-- 132. 2025-05-31 19:41, rows returned: 387
Select distinct favoritebook
from favoritebooks F JOIN concentration C
where F.ProfileID = C.ProfileID and concentration = 'Computer Science';

-- 133. 2025-05-31 21:11, rows returned: 27772
Select *
from favoritetvshows;

-- 134. 2025-05-31 21:12, rows returned: 0
Select RelationshipStatus, FavoriteTVShow
from relationshipstatus R JOIN FavoriteTVShows F
where R.ProfileID = C.ProfileID AND relationshipstatus = 'Single';

-- 135. 2025-05-31 21:34, rows returned: 12533
Select RelationshipStatus, FavoriteTVShow
from relationshipstatus R JOIN FavoriteTVShows F
where R.ProfileID = F.ProfileID AND relationshipstatus = 'Single';

-- 136. 2025-05-31 21:37, rows returned: 3277
Select RelationshipStatus, FavoriteTVShow, count(*) as freq
from relationshipstatus R JOIN FavoriteTVShows F
where R.ProfileID = F.ProfileID AND relationshipstatus = 'Single'
group by R.RelationshipStatus, F.FavoriteTVShow
order by freq desc;

-- 137. 2025-05-31 21:47, rows returned: 48456
Select *
from favoritebooks;

-- 138. 2025-05-31 21:47, rows returned: 48456
Select *
from favoritebooks;

-- 139. 2025-05-31 21:48, rows returned: 31337
Select *
from concentration;

-- 140. 2025-05-31 21:48, rows returned: 0
Select Concentration, FavoriteBook, Count(*) as freq
from concentration C JOIN favoritebooks F
where C.concentration = F.favoritebooks
group by C.Concentration, F.FavoriteBook
order by freq desc;

-- 141. 2025-05-31 21:56, rows returned: 0
Select Concentration, FavoriteBook, Count(*) as freq
from concentration C JOIN favoritebooks F
where C.concentration = F.favoritebook
group by C.Concentration, F.FavoriteBooks
order by freq desc;

-- 142. 2025-05-31 21:57, rows returned: 3
Select Concentration, FavoriteBook, Count(*) as freq
from concentration C JOIN favoritebooks F
where C.concentration = F.favoritebook
group by C.Concentration, F.FavoriteBook
order by freq desc;

-- 143. 2025-05-31 21:58, rows returned: 48456
Select *
from favoritebooks;

-- 144. 2025-05-31 21:58, rows returned: 40092
Select Concentration, FavoriteBook, Count(*) as freq
from concentration C JOIN favoritebooks F
where C.ProfileID = F.ProfileID
group by C.Concentration, F.FavoriteBook
order by freq desc;

-- 145. 2025-05-31 21:59, rows returned: 1436
Select Concentration, FavoriteBook, Count(*) as freq
from concentration C JOIN favoritebooks F
where C.ProfileID = F.ProfileID AND Concentration = 'Psychology'
group by C.Concentration, F.FavoriteBook
order by freq desc;

-- 146. 2025-06-01 15:18, rows returned: 0
Select *
from (RelationshipStatus R JOIN LookinFor L on L.ProfileID = R.ProfileID)
                            JOIN Concentration C on C.ProfileID = R.ProfileID;

-- 147. 2025-06-01 15:20, rows returned: 24699
Select *
from (RelationshipStatus R JOIN LookingFor L on L.ProfileID = R.ProfileID)
                            JOIN Concentration C on C.ProfileID = R.ProfileID;

-- 148. 2025-06-01 15:25, rows returned: 24699
Select *
from (Concentration C JOIN LookingFor L on C.ProfileID = L.ProfileID)
                    JOIN RelationshipStatus R on R.ProfileID = C.ProfileID;

-- 149. 2025-06-01 15:25, rows returned: 24699
Select *
from (Concentration C JOIN LookingFor L on C.ProfileID = L.ProfileID)
                    JOIN RelationshipStatus R on R.ProfileID = C.ProfileID;

-- 150. 2025-06-01 22:07, rows returned: 25786
Select *
from profiles;

-- 151. 2025-06-01 22:09, rows returned: 25786
Select ProfileId
from profiles;

-- 152. 2025-06-01 22:11, rows returned: 0
Select count(*), distinct ProfileId
from profiles;

-- 153. 2025-06-01 22:16, rows returned: 1
Select count(*)
from profiles;

-- 154. 2025-06-01 22:16, rows returned: 1
Select count(*), count(distinct ProfileId)
from profiles;

-- 155. 2025-06-01 22:23, rows returned: 0
Select count(*) as Total, count(distinct ProfileId) as Distinct
from profiles;

-- 156. 2025-06-01 22:24, rows returned: 0
Select count(*) as Total, count(distinct ProfileId) as (distinct)
from profiles;

-- 157. 2025-06-01 22:25, rows returned: 1
Select count(*) as Total, count(distinct ProfileId) as 'Distinct'
from FavoriteMusic;

-- 158. 2025-06-01 22:26, rows returned: 0
Select P.ProfileID, F.ProfileID
from profiles P JOIN FavoriteMusic F
where P.ProfileID = F.ProfileID AND Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

-- 159. 2025-06-01 22:40, rows returned: 0
Select profiles.ProfileID
from profiles P JOIN FavoriteMusic F
where P.ProfileID = F.ProfileID
group by ProfileId;

-- 160. 2025-06-01 22:43, rows returned: 47881
Select profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID);

-- 161. 2025-06-01 22:43, rows returned: 437
Select profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

-- 162. 2025-06-01 22:44, rows returned: 437
Select profiles.ProfileID, profiles.status, favoritemusic.FavoriteMusic
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

-- 163. 2025-06-01 22:45, rows returned: 437
Select profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

-- 164. 2025-06-01 22:46, rows returned: 437
Select distinct profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

-- 165. 2025-06-01 22:46, rows returned: 437
Select distinct profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

-- 166. 2025-06-01 22:46, rows returned: 0
Select profiles.ProfileID
from profiles P JOIN FavoriteMusic F
where P.ProfileID = F.ProfileID
group by ProfileId;

-- 167. 2025-06-01 22:47, rows returned: 47881
Select profiles.ProfileID, profiles.status, favoritemusic.FavoriteMusic
from profiles JOIN FavoriteMusic using (ProfileID);

-- 168. 2025-06-01 22:47, rows returned: 437
Select distinct profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

-- 169. 2025-06-01 22:47, rows returned: 47881
Select profiles.ProfileID, profiles.status, favoritemusic.FavoriteMusic
from profiles JOIN FavoriteMusic using (ProfileID);

-- 170. 2025-06-01 22:47, rows returned: 437
Select profiles.ProfileID, profiles.status, favoritemusic.FavoriteMusic
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

-- 171. 2025-06-01 22:47, rows returned: 0
Select distinct profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by distinct ProfileId;

-- 172. 2025-06-01 22:48, rows returned: 437
Select distinct profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

-- 173. 2025-06-02 13:50, rows returned: 3
Select Interests, count(*) as Freq
from Interests JOIN Concentration using (ProfileId)
where Concentration like '%Math%' and Interests like 'M%'
Group by Interests 
Having Freq > 10 
Order by Freq desc;

-- 174. 2025-06-02 14:30, rows returned: 437
Select distinct profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

-- 175. 2025-06-02 14:30, rows returned: 437
Select distinct profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay';

-- 176. 2025-06-02 14:30, rows returned: 437
Select distinct profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'
group by ProfileId;

-- 177. 2025-06-02 14:30, rows returned: 0
Select distinct profiles.ProfileID
from profiles JOIN FavoriteMusic using (ProfileID)
where Status = 'Undergrad' AND FavoriteMusic = 'Coldplay'

Select *
from profiles JOIN Interests using (ProfileId)
limit 10;

-- 178. 2025-06-02 14:56, rows returned: 0
Select Interests, count(*)
from profiles JOIN Interests using (profileId0
Where "Political.Views" = 'Very LIberal'
group by Interests
order by count(*) desc
limit 3;

-- 179. 2025-06-02 14:58, rows returned: 0
Select Interests, count(*)
from profiles JOIN Interests using (profileId)
Where "Political.Views" = 'Very LIberal'
group by Interests
order by count(*) desc
limit 3;

-- 180. 2025-06-02 14:58, rows returned: 0
Select Interests, count(*)
from profiles JOIN Interests using (profileId)
Where PoliticalViews = 'Very LIberal'
group by Interests
order by count(*) desc
limit 3;

-- 181. 2025-06-02 14:59, rows returned: 0
Select Interests, count(*)
from profiles JOIN Interests using (profileId)
Where "Political.Views" = 'Very LIberal'
group by Interests
order by count(*) desc
limit 3;

-- 182. 2025-06-02 15:00, rows returned: 3
Select Interests, count(*)
from profiles JOIN Interests using (profileId)
Where "Political.Views" = 'Very Liberal'
group by Interests
order by count(*) desc
limit 3;

-- 183. 2025-06-02 15:01, rows returned: 0
Select Interests, count(*)
from profiles JOIN Interests using (ProfileID)
where "Political.Views" = 'Very Conserative'
group by Interests
order by count(*) desc 
limit 3;

-- 184. 2025-06-02 15:01, rows returned: 3
Select Interests, count(*)
from profiles JOIN Interests using (ProfileID)
where "Political.Views" = 'Very Conservative'
group by Interests
order by count(*) desc 
limit 3;

-- 185. 2025-06-02 15:20, rows returned: 3
Select Sex, count(*)
from profiles P JOIN favoritemovies using (ProfileID)
where FavoriteMovie = 'Titanic'
group by Sex;

-- 186. 2025-06-02 15:20, rows returned: 2
Select Sex, count(*)
from profiles P JOIN favoritemovies using (ProfileID)
where FavoriteMovie = 'Titanic' and Sex is not NULL
group by Sex;

-- 187. 2025-06-02 15:22, rows returned: 2
Select Sex, count(*) as Freq
from profiles P JOIN favoritemovies using (ProfileID)
where FavoriteMovie = 'Titanic' and Sex is not NULL
group by Sex
order by Freq desc;

-- 188. 2025-06-02 15:34, rows returned: 0
Select Intesrests, count(*)
from Interests;

-- 189. 2025-06-02 15:35, rows returned: 1
Select Interests, count(*)
from Interests;

-- 190. 2025-06-02 15:36, rows returned: 1
Select Interests, count(*) as freq
from Interests
order by freq desc;

-- 191. 2025-06-02 15:36, rows returned: 0
Select Interests, count(*) as freq
from Interests
group by ProfileID
order by freq desc
limit freq > 100;

-- 192. 2025-06-02 15:38, rows returned: 1
Select Interests, count(*) as freq
from Interests
group by ProfileID
having freq >= 100
order by freq desc;

-- 193. 2025-06-02 20:02, rows returned: 1
Select Interests, count(*) as freq
from Interests
group by ProfileID
having freq >= 100
order by freq desc;

-- 194. 2025-06-02 20:04, rows returned: 52
Select Interests, count(*) as freq
from Interests
group by Interests
having freq >= 100
order by freq desc;

-- 195. 2025-06-02 20:27, rows returned: 2
Select Sex, count(*) as Freq
from profiles P JOIN favoritemovies using (ProfileID)
where FavoriteMovie = 'Titanic' and Sex is not NULL
group by Sex
order by Freq desc;

-- 196. 2025-06-02 20:27, rows returned: 2
Select Sex, count(*) as Freq
from profiles JOIN favoritemovies using (ProfileID)
where FavoriteMovie = 'Titanic' and Sex is not NULL
group by Sex
order by Freq desc;

-- 197. 2025-06-02 20:28, rows returned: 1
Select count(*) as freq
from relationshipstatus JOIN lookingfor using (ProfileID);

-- 198. 2025-06-02 20:28, rows returned: 1
Select count(*) as freq
from relationshipstatus JOIN lookingfor using (ProfileID)
where LookingFor = 'Whatever I can get';

-- 199. 2025-06-02 20:29, rows returned: 1
Select count(*)
from relationshipstatus JOIN lookingfor using (ProfileID)
where LookingFor = 'Whatever I can get';

-- 200. 2025-06-02 20:30, rows returned: 2225
Select *
from relationshipstatus JOIN lookingfor using (ProfileID)
where LookingFor = 'Whatever I can get';

-- 201. 2025-06-02 20:30, rows returned: 248
Select *
from relationshipstatus JOIN lookingfor using (ProfileID)
where RelationshipStatus = 'Married' AND LookingFor = 'Whatever I can get';

-- 202. 2025-06-02 20:39, rows returned: 3
Select Sex, *
from relationshipstatus JOIN lookingfor JOIN profiles using (ProfileID)
where RelationshipStatus = 'Married' AND LookingFor = 'Whatever I can get'
group by Sex;

-- 203. 2025-06-02 20:40, rows returned: 0
Select Sex, count(*), Age
from relationshipstatus JOIN lookingfor using (ProfileID)
                        JOIN profiles using (ProfileID)
where RelationshipStatus = 'Married' AND LookingFor = 'Whatever I can get'
group by Sex;

-- 204. 2025-06-02 20:41, rows returned: 3
Select Sex, count(*), 2020 - Birthday as Age
from relationshipstatus JOIN lookingfor using (ProfileID)
                        JOIN profiles using (ProfileID)
where RelationshipStatus = 'Married' AND LookingFor = 'Whatever I can get'
group by Sex;

-- 205. 2025-06-02 20:42, rows returned: 3
Select Sex, count(*), 2006 - Birthday as Age
from relationshipstatus JOIN lookingfor using (ProfileID)
                        JOIN profiles using (ProfileID)
where RelationshipStatus = 'Married' AND LookingFor = 'Whatever I can get'
group by Sex;

-- 206. 2025-06-02 20:43, rows returned: 3
Select Sex, count(*), 2006 - Birthday as Age, Relationshipstatus, LookingFor
from relationshipstatus JOIN lookingfor using (ProfileID)
                        JOIN profiles using (ProfileID)
where RelationshipStatus = 'Married' AND LookingFor = 'Whatever I can get'
group by Sex;

-- 207. 2025-06-02 20:44, rows returned: 248
Select *
from relationshipstatus JOIN lookingfor using (ProfileID)
where RelationshipStatus = 'Married' AND LookingFor = 'Whatever I can get';

-- 208. 2025-06-02 20:44, rows returned: 3
Select Sex, count(*), 2006 - Birthday as Age, Relationshipstatus, LookingFor
from relationshipstatus JOIN lookingfor using (ProfileID)
                        JOIN profiles using (ProfileID)
where RelationshipStatus = 'Married' AND LookingFor = 'Whatever I can get'
group by Sex;

-- 209. 2025-06-02 20:53, rows returned: 3
Select Sex, count(*) as freq, Avg(2006 - Birthday) as Age
from relationshipstatus JOIN lookingfor using (ProfileID)
                        JOIN profiles using (ProfileID)
where RelationshipStatus = 'Married' 
AND LookingFor = 'Whatever I can get'
group by Sex;

-- 210. 2025-06-02 21:16, rows returned: 52
Select Interests, count(*) as freq
from Interests
group by Interests
having freq >= 100
order by freq desc;

-- 211. 2025-06-02 21:17, rows returned: 0
Select Interests, count(*) 
from Interests
group by Interests
having count(*) >= 50
order by freq desc;

-- 212. 2025-06-02 21:34, rows returned: 97
Select Interests, count(*) 
from Interests
group by Interests
having count(*) >= 50
order by count(*) desc;

-- 213. 2025-06-02 21:38, rows returned: 3
Select Concentration, Interests, count(*)
from interests JOIN concentration using (ProfileID)
where Concentration = 'Psychology'
group by Interests
having count(*) >= 50
order by count(*) desc;

-- 214. 2025-06-02 21:39, rows returned: 3
Select Concentration, Interests, count(*)
from interests JOIN concentration using (ProfileID)
where Concentration = 'Psychology'
group by Concentration, Interests
having count(*) >= 50
order by count(*) desc;

-- 215. 2025-06-02 21:39, rows returned: 3
Select Interests, count(*)
from interests JOIN concentration using (ProfileID)
where Concentration = 'Psychology'
group by Concentration, Interests
having count(*) >= 50
order by count(*) desc;

-- 216. 2025-06-02 21:45, rows returned: 0
Select Avg(Birthday), count(*)
from profiles JOIN concentration using (ProfileID)
    JOIN interests using (ProfileID)
where Concentration = 'Psychology' AND Interests = 'Music'
group by Avg(Birthday)
order by count(*) desc;

-- 217. 2025-06-02 21:50, rows returned: 1
Select Avg(Birthday), count(*)
from profiles JOIN concentration using (ProfileID)
    JOIN interests using (ProfileID)
where Concentration = 'Psychology' AND Interests = 'Music';

-- 218. 2025-06-02 21:52, rows returned: 97
Select Interests, count(*) 
from Interests
group by Interests
having count(*) >= 50
order by count(*) desc;

-- 219. 2025-06-02 21:56, rows returned: 1
Select Avg(Birthday), count(*)
from profiles JOIN concentration using (ProfileID)
    JOIN interests using (ProfileID)
where Concentration = 'Psychology' AND Interests = 'Music';

-- 220. 2025-06-02 21:58, rows returned: 1
Select Avg(Birthday), count(*), Concentration, Interests
from profiles JOIN concentration using (ProfileID)
    JOIN interests using (ProfileID)
where Concentration = 'Psychology' AND Interests = 'Music';

-- 221. 2025-06-02 22:00, rows returned: 38483
Select *
from interests;

-- 222. 2025-06-02 22:01, rows returned: 1173
Select *
from interests
where LOWER(Interests) = 'music';

-- 223. 2025-06-02 22:07, rows returned: 1
Select Avg(Birthday), count(*)
from profiles JOIN concentration using (ProfileID)
    JOIN interests using (ProfileID)
where Concentration = 'Psychology' AND Interests like '%Music%';

-- 224. 2025-06-07 20:07, rows returned: 38483
Select *
from interests;

-- 225. 2025-06-07 20:15, rows returned: 0
Select ProfileId, A.interests as Interest1, B.interests as Interest2
from Interests A, Interests B
where A.interests = B.interests AND
      A.ProfileId >= 2;

-- 226. 2025-06-07 20:17, rows returned: 5416819
Select A.ProfileId, A.interests as Interest1, B.interests as Interest2
from Interests A, Interests B
where A.interests = B.interests AND
      A.ProfileId >= 2;

-- 227. 2025-06-07 20:18, rows returned: 0
Select A.ProfileId, distinct A.interests as Interest1, distinct B.interests as Interest2
from Interests A, Interests B
where A.interests = B.interests AND
      A.ProfileId > 2;

-- 228. 2025-06-07 20:21, rows returned: 38483
Select *
from interests;

-- 229. 2025-06-07 20:22, rows returned: 5377720
Select A.ProfileId, A.interests as Interest1, B.interests as Interest2
from Interests A, Interests B
where A.interests = B.interests AND
      A.ProfileId <> B.ProfileId AND
      A.ProfileId > 2;

-- 230. 2025-06-07 20:24, rows returned: 5377720
Select *
from Interests A, Interests B
where A.interests = B.interests AND
      A.ProfileId <> B.ProfileId AND
      A.ProfileId > 2;

-- 231. 2025-06-07 20:24, rows returned: 422600
Select *
from Interests A, Interests B
where A.ProfileId = B.ProfileId AND
      A.interests <> B.interests AND
      A.ProfileId > 2;

-- 232. 2025-06-07 20:25, rows returned: 422531
Select *
from Interests A, Interests B
where A.ProfileId = B.ProfileId AND
      A.interests <> B.interests AND
      A.interests > 2;

-- 233. 2025-06-07 20:25, rows returned: 422531
Select *
from Interests A, Interests B
where A.ProfileId = B.ProfileId AND
      A.interests <> B.interests AND
      A.interests > 2;

-- 234. 2025-06-07 20:28, rows returned: 211231
Select *
from Interests A, Interests B
where A.ProfileId = B.ProfileId AND
      A.interests < B.interests AND
      A.interests > 2;

-- 235. 2025-06-07 20:29, rows returned: 211300
Select *
from Interests A, Interests B
where A.ProfileId = B.ProfileId AND
      A.interests < B.interests;

-- 236. 2025-06-07 21:13, rows returned: 38483
Select *
from interests;

-- 237. 2025-06-07 21:14, rows returned: 0
Select Running, Other, Count(*) as freq
from interests A, interests B
where A.ProfileId = B.ProfileId AND
      A.interests > B.interests AND
      A.interests like "%Running%";

-- 238. 2025-06-07 21:14, rows returned: 1688
Select *
from interests A, interests B
where A.ProfileId = B.ProfileId AND
      A.interests > B.interests AND
      A.interests like "%Running%";

-- 239. 2025-06-07 21:15, rows returned: 1
Select A.interests as Running, B.interests as Other, Count(*) as freq
from interests A, interests B
where A.ProfileId = B.ProfileId AND
      A.interests > B.interests AND
      A.interests like "%Running%";

-- 240. 2025-06-07 21:16, rows returned: 1688
Select A.interests as Running, B.interests as Other
from interests A, interests B
where A.ProfileId = B.ProfileId AND
      A.interests > B.interests AND
      A.interests like "%Running%";

-- 241. 2025-06-07 21:17, rows returned: 949
Select A.interests as Running, B.interests as Other, count(*) as freq
from interests A, interests B
where A.ProfileId = B.ProfileId AND
      A.interests > B.interests AND
      A.interests like "%Running%"
group by Running, Other
order by freq desc;

-- 242. 2025-06-07 21:18, rows returned: 1327
Select A.interests as Running, B.interests as Other, count(*) as freq
from interests A, interests B
where A.ProfileId = B.ProfileId AND
      A.interests <> B.interests AND
      A.interests like "%Running%"
group by Running, Other
order by freq desc;

-- 243. 2025-06-07 21:59, rows returned: 0
Select *
from favoritebooks A, profiles B
where A.ProfileId = B.ProfileId AND
      A.favoritebook <> B.favoritebook AND
      A.favoritebook >= 10;

-- 244. 2025-06-07 22:08, rows returned: 48449
Select *
from favoritebooks A, profiles B
where A.ProfileId = B.ProfileId AND
      A.favoritebook >= 10;

-- 245. 2025-06-07 22:09, rows returned: 48456
Select *
from favoritebooks A, profiles B
where A.ProfileId = B.ProfileId AND
      A.ProfileId >= 10;

-- 246. 2025-06-07 22:09, rows returned: 0
Select *
from favoritebooks A, profiles B
where A.ProfileId = B.ProfileId AND
      B.favoritebook >= 10;

-- 247. 2025-06-07 22:10, rows returned: 0
Select *
from favoritebooks A, profiles B
where A.ProfileId = B.ProfileId AND
      B.ProfileId > 10 A.FavoriteBook;

-- 248. 2025-06-07 22:11, rows returned: 48456
Select *
from favoritebooks A, profiles B
where A.ProfileId = B.ProfileId AND
      B.ProfileId >= 10;

-- 249. 2025-06-07 22:11, rows returned: 48456
Select FavoriteBook
from favoritebooks;

-- 250. 2025-06-07 22:12, rows returned: 0
select ProfileId
from favoritebooks A JOIN profiles B on A.ProfileId = B.ProfileId
where Status = 'Undergrad'
group by A.ProfileId
having count(*) >= 10;

-- 251. 2025-06-07 22:19, rows returned: 850
select A.ProfileId
from favoritebooks A JOIN profiles B on A.ProfileId = B.ProfileId
where Status = 'Undergrad'
group by A.ProfileId
having count(*) >= 10;

-- 252. 2025-06-07 22:22, rows returned: 850
Select ProfileId
from favoritebooks JOIN profiles using(ProfileId)
where Status = 'Undergrad'
group by ProfileId
having count(*) >= 10;

-- 253. 2025-06-07 22:23, rows returned: 2919
Select FavoriteBook, count(*) as freq from favoritebooks where ProfileId in 
(Select ProfileId
from favoritebooks JOIN profiles using(ProfileId)
where Status = 'Undergrad'
group by ProfileId
having count(*) >= 10)
group by FavoriteBook
order by freq desc;

-- 254. 2025-06-07 22:24, rows returned: 2919
Select FavoriteBook, count(*) from favoritebooks where ProfileId in 
(Select ProfileId
from favoritebooks JOIN profiles using(ProfileId)
where Status = 'Undergrad'
group by ProfileId
having count(*) >= 10)
group by FavoriteBook
order by count(*) desc;

-- 255. 2025-06-07 22:30, rows returned: 2919
Select FavoriteBook, count(*) from favoritebooks where ProfileId in 
(Select ProfileId
from favoritebooks JOIN profiles using(ProfileId)
where Status = 'Undergrad'
group by ProfileId
having count(*) >= 10)
group by FavoriteBook
order by count(*) desc;

-- 256. 2025-06-07 22:31, rows returned: 3
Select FavoriteBook, count(*) from favoritebooks where ProfileId in 
(Select ProfileId
from favoritebooks JOIN profiles using(ProfileId)
where Status = 'Undergrad'
group by ProfileId
having count(*) >= 10)
group by FavoriteBook
order by count(*) desc
limit 3;

-- 257. 2025-06-07 22:40, rows returned: 47881
Select *
from favoritemusic;

-- 258. 2025-06-07 22:43, rows returned: 199
Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%'
group by ProfileId
order by count(*) desc;

-- 259. 2025-06-07 22:43, rows returned: 199
Select ProfileId, *
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%'
group by ProfileId
order by count(*) desc;

-- 260. 2025-06-07 22:45, rows returned: 0
Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%'
group by ProfileId
having FavoriteMusic
order by count(*) desc;

-- 261. 2025-06-07 22:45, rows returned: 199
Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%'
group by ProfileId, FavoriteMusic
order by count(*) desc;

-- 262. 2025-06-07 22:45, rows returned: 199
Select ProfileId, *
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%'
group by ProfileId, FavoriteMusic
order by count(*) desc;

-- 263. 2025-06-07 22:45, rows returned: 0
Select ProfileId, FavoriteMusic
from favoritemusic A JOIN profiles B using (ProfileId)
where FavoriteMusic A like '%Jay Z%' AND FavoriteMusic B like '%'
group by ProfileId, FavoriteMusic
order by count(*) desc;

-- 264. 2025-06-07 22:47, rows returned: 199
Select ProfileId, FavoriteMusic
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%'
group by ProfileId, FavoriteMusic
order by count(*) desc;

-- 265. 2025-06-07 22:47, rows returned: 0
Select FavoriteMusic, count(*)
from favoritemusic 
where ProfileId in
(Select ProfileId, FavoriteMusic
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%')
group by FavoriteMusic
order by count(*) desc;

-- 266. 2025-06-07 22:50, rows returned: 200
Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%';

-- 267. 2025-06-07 22:50, rows returned: 1753
Select FavoriteMusic, count(*)
from favoritemusic 
where ProfileId in
(Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%')
group by FavoriteMusic
order by count(*) desc;

-- 268. 2025-06-07 22:56, rows returned: 0
Select FavoriteMusic, count(*)
from FavoirteMusic
where profileID IN
(Select ProfileID
from FavoriteMusic
where FavoriteMusic like '%Jay Z%')
group by FavoriteMusic
order by count(*) desc;

-- 269. 2025-06-07 23:01, rows returned: 1753
Select FavoriteMusic, count(*)
from FavoriteMusic
where profileID IN
(Select ProfileID
from FavoriteMusic
where FavoriteMusic like '%Jay Z%')
group by FavoriteMusic
order by count(*) desc;

-- 270. 2025-06-07 23:01, rows returned: 1753
Select ProfileId, FavoriteMusic, count(*)
from favoritemusic 
where ProfileId in
(Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%')
group by FavoriteMusic
order by count(*) desc;

-- 271. 2025-06-07 23:01, rows returned: 1753
Select FavoriteMusic, count(*)
from FavoriteMusic
where profileID IN
(Select ProfileID
from FavoriteMusic
where FavoriteMusic like '%Jay Z%')
group by FavoriteMusic
order by count(*) desc;

-- 272. 2025-06-07 23:04, rows returned: 1752
Select FavoriteMusic, count(*)
from FavoriteMusic
where profileID IN
(Select ProfileID
from FavoriteMusic
where FavoriteMusic like '%Jay Z%')
AND FavoriteMusic NOT LIKE '%Jay Z%'
group by FavoriteMusic
order by count(*) desc;

-- 273. 2025-06-07 23:06, rows returned: 1753
Select ProfileId, FavoriteMusic, count(*)
from favoritemusic 
where ProfileId in
(Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%')
group by FavoriteMusic
order by count(*) desc;

-- 274. 2025-06-07 23:06, rows returned: 1753
Select FavoriteMusic, count(*)
from favoritemusic 
where ProfileId in
(Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%')
group by FavoriteMusic
order by count(*) desc;

-- 275. 2025-06-07 23:06, rows returned: 1752
Select FavoriteMusic, count(*)
from favoritemusic 
where ProfileId in
(Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%')
AND FavoriteMusic NOT LIKE '%Jay Z%'
group by FavoriteMusic
order by count(*) desc;

-- 276. 2025-06-07 23:06, rows returned: 1752
Select FavoriteMusic, count(*)
from FavoriteMusic
where profileID IN
(Select ProfileID
from FavoriteMusic
where FavoriteMusic like '%Jay Z%')
AND FavoriteMusic NOT LIKE '%Jay Z%'
group by FavoriteMusic
order by count(*) desc;

-- 277. 2025-06-07 23:06, rows returned: 1752
Select FavoriteMusic, count(*)
from favoritemusic 
where ProfileId in
(Select ProfileId
from favoritemusic JOIN profiles using (ProfileId)
where FavoriteMusic like '%Jay Z%')
AND FavoriteMusic NOT LIKE '%Jay Z%'
group by FavoriteMusic
order by count(*) desc;

-- 278. 2025-06-07 23:23, rows returned: 0
Select FavoriteBook, count(*)
from FavoriteBooks
where ProfileID in
(Select ProfileID
from FavoriteBooks JOIN profiles using (ProfileID)
where FavoriteBooks like '%Harry Potter%')
AND FavoriteBooks NOT LIKE '%Harry Potter%'
group by FavoriteBook
order by count(*) desc;

-- 279. 2025-06-07 23:32, rows returned: 2111
Select FavoriteBook, count(*)
from FavoriteBooks
where ProfileID in
(Select ProfileID
from FavoriteBooks JOIN profiles using (ProfileID)
where FavoriteBook like '%Harry Potter%')
AND FavoriteBook NOT LIKE '%Harry Potter%'
group by FavoriteBook
order by count(*) desc;

-- 280. 2025-06-08 11:55, rows returned: 0
Select ProfileID, Concentration
from concentration JOIN profiles using (ProfilesID)
where concentration >= 1;

-- 281. 2025-06-08 11:59, rows returned: 31337
Select *
from concentration;

-- 282. 2025-06-08 11:59, rows returned: 31337
Select ProfileID, Concentration
from concentration;

-- 283. 2025-06-08 11:59, rows returned: 0
Select ProfileID, A.Concentration, B.Concentration
from concentration A, concentration B
where A.Concentration >= 1;

-- 284. 2025-06-08 12:01, rows returned: 982007569
Select A.ProfileID, A.Concentration, B.Concentration
from concentration A, concentration B
where A.Concentration >= 1;

-- 285. 2025-06-08 12:01, rows returned: 0
Select B.ProfileID, A.Concentration, B.Concentration
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration
      A.Concentration >= 1;

-- 286. 2025-06-08 12:03, rows returned: 24168
Select B.ProfileID, A.Concentration, B.Concentration
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration >= 1;

-- 287. 2025-06-08 12:05, rows returned: 24168
Select B.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration >= 1;

-- 288. 2025-06-08 12:07, rows returned: 0
Select *, Finance
from concentration;

-- 289. 2025-06-08 12:07, rows returned: 31337
Select *
from concentration;

-- 290. 2025-06-08 12:07, rows returned: 0
Select A.Concentration, B.Concentration, count(*)
from concentration A, concentration B
where A.ProfileID in
(Select *
from concentration A
where A.Concentration like '%Finance%')
AND B.Concentration NOT LIKE '%Finance%'
group by A.Concentration
order by count(*) desc;

-- 291. 2025-06-08 12:11, rows returned: 0
Select A.Concentration, B.Concentration, count(*)
from concentration A, concentration B
where A.ProfileID in
(Select A.Concentration
from concentration A
where A.Concentration like '%Finance%')
AND B.Concentration NOT LIKE '%Finance%'
group by A.Concentration
order by count(*) desc;

-- 292. 2025-06-08 12:13, rows returned: 1
Select A.Concentration, B.Concentration, count(*)
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration like '%Finance%';

-- 293. 2025-06-08 12:14, rows returned: 1
Select A.Concentration, B.Concentration, count(*)
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration like '%Finance%' AND
      B.Concentration not like '%Finance%';

-- 294. 2025-06-08 12:14, rows returned: 1551
Select A.Concentration, B.Concentration
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration like '%Finance%' AND
      B.Concentration not like '%Finance%';

-- 295. 2025-06-08 12:15, rows returned: 62
Select A.Concentration, B.Concentration, count(*) as Frequency
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration like '%Finance%' AND
      B.Concentration not like '%Finance%'
group by A.Concentration, B.Concentration
order by Frequency desc;

-- 296. 2025-06-08 12:19, rows returned: 2111
Select FavoriteBook, count(*)
from FavoriteBooks
where ProfileID in
(Select ProfileID
from FavoriteBooks JOIN profiles using (ProfileID)
where FavoriteBook like '%Harry Potter%')
AND FavoriteBook NOT LIKE '%Harry Potter%'
group by FavoriteBook
order by count(*) desc;

-- 297. 2025-06-08 12:35, rows returned: 12084
Select A.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A JOIN concentration B ON A.ProfileID = B.ProfileID
where A.concentration < B.concentration;

-- 298. 2025-06-08 12:36, rows returned: 24168
Select B.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration >= 1;

-- 299. 2025-06-08 12:36, rows returned: 24168
Select B.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration >= 1;

-- 300. 2025-06-08 12:36, rows returned: 12084
Select A.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A JOIN concentration B ON A.ProfileID = B.ProfileID
where A.concentration < B.concentration;

-- 301. 2025-06-08 12:36, rows returned: 62
Select A.Concentration, B.Concentration, count(*) as Frequency
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration like '%Finance%' AND
      B.Concentration not like '%Finance%'
group by A.Concentration, B.Concentration
order by Frequency desc;

-- 302. 2025-06-08 12:45, rows returned: 12084
Select A.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A JOIN concentration B ON A.ProfileID = B.ProfileID
AND A.concentration < B.concentration
where A.ProfileID IN
(select ProfileID
from concentration
group by ProfileID
having count(distinct Concentration) > 1);

-- 303. 2025-06-08 12:45, rows returned: 12084
Select A.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A JOIN concentration B ON A.ProfileID = B.ProfileID
where A.concentration < B.concentration;

-- 304. 2025-06-08 12:45, rows returned: 12084
Select A.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A JOIN concentration B ON A.ProfileID = B.ProfileID
AND A.concentration < B.concentration
where A.ProfileID IN
(select ProfileID
from concentration
group by ProfileID
having count(distinct Concentration) > 1);

-- 305. 2025-06-08 12:48, rows returned: 24168
Select B.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration >= 1;

-- 306. 2025-06-08 12:49, rows returned: 0
AND
      A.Concentration >= 1;

-- 307. 2025-06-08 12:53, rows returned: 12084
Select B.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration < B.concentration AND
      A.Concentration >= 1;

-- 308. 2025-06-08 12:53, rows returned: 12084
Select B.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration < B.concentration;

-- 309. 2025-06-16 14:13, rows returned: 12084
Select A.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A JOIN concentration B ON A.ProfileID = B.ProfileID
AND A.concentration < B.concentration
where A.ProfileID IN
(select ProfileID
from concentration
group by ProfileID
having count(distinct Concentration) > 1);

-- 310. 2025-06-16 14:14, rows returned: 12084
Select A.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A JOIN concentration B ON A.ProfileID = B.ProfileID
where A.concentration < B.concentration;

-- 311. 2025-06-16 14:14, rows returned: 12084
Select A.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A JOIN concentration B ON A.ProfileID = B.ProfileID
AND A.concentration < B.concentration
where A.ProfileID IN
(select ProfileID
from concentration
group by ProfileID
having count(distinct Concentration) > 1);

-- 312. 2025-06-16 14:14, rows returned: 12084
Select A.ProfileID, A.Concentration as Concentration1, B.Concentration as Concentration2
from concentration A JOIN concentration B ON A.ProfileID = B.ProfileID
where A.concentration < B.concentration;

-- 313. 2025-06-16 19:17, rows returned: 47881
Select *,
case when FavoriteMusic ='Nickleback' then 'Nickelback'
    else FavoriteMusic end as FavoriteMusic_fixed
from favoritemusic;

-- 314. 2025-06-16 19:19, rows returned: 0
Select *,
case when FavoriteMusic ='Nickleback' then 'Nickelback'
    else FavoriteMusic end as FavoriteMusic_fixed
from favoritemusic
where FavoriteMusic = '%Nickleback%';

-- 315. 2025-06-16 19:19, rows returned: 4
Select *,
case when FavoriteMusic ='Nickleback' then 'Nickelback'
    else FavoriteMusic end as FavoriteMusic_fixed
from favoritemusic
where FavoriteMusic = 'Nickleback';

-- 316. 2025-06-16 19:21, rows returned: 26
Select *,
case when FavoriteMusic ='Nickleback' then 'Nickelback'
    else FavoriteMusic end as FavoriteMusic_fixed
from favoritemusic
where FavoriteMusic_fixed = 'Nickelback';

-- 317. 2025-06-16 19:30, rows returned: 31337
select *,
case     when Concentration = 'Finance' then 1
        when Concentration = 'Economics' then 1
        when Concentration = 'Pre-Medeicine' then 1
    else 0
end as STEM_POP
from concentration;

-- 318. 2025-06-16 19:36, rows returned: 0
select * from concetration 
where Concentration in (select Concentration
from concentration
group by Concentration 
order by count(*) desc
limit 10);

-- 319. 2025-06-16 19:43, rows returned: 12050
select * from concentration 
where Concentration in (select Concentration
from concentration
group by Concentration 
order by count(*) desc
limit 10);

-- 320. 2025-06-16 19:46, rows returned: 12050
select *, case when Concentration in ('Finance', 'Economics', 'Pre-Medicine') then 1
else 0
end as STEM_POP
from concentration
where Concentration in (select Concentration
from concentration
group by Concentration 
order by count(*) desc
limit 10);

-- 321. 2025-06-16 19:46, rows returned: 31337
select *,
case when Concentration in ('Finance', 'Economics', 'Pre-Medicine') then 1
else 0
end as STEM_POP
from concentration;

-- 322. 2025-06-16 19:46, rows returned: 12050
select *, case when Concentration in ('Finance', 'Economics', 'Pre-Medicine') then 1
else 0
end as STEM_POP
from concentration
where Concentration in (select Concentration
from concentration
group by Concentration 
order by count(*) desc
limit 10);

-- 323. 2025-06-16 19:51, rows returned: 12050
select *, case when Concentration in ('Finance', 'Economics', 'Pre-Medicine') then 1
end as STEM_POP
from concentration
where Concentration in (select Concentration
from concentration
group by Concentration 
order by count(*) desc
limit 10);

-- 324. 2025-06-16 19:52, rows returned: 12050
select *, case when Concentration in ('Finance', 'Economics', 'Pre-Medicine') then 1
else 0
end as STEM_POP
from concentration
where Concentration in (select Concentration
from concentration
group by Concentration 
order by count(*) desc
limit 10)
having STEM_POP <> 0;

-- 325. 2025-06-16 19:52, rows returned: 12050
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

-- 326. 2025-06-16 19:54, rows returned: 4221
select * from concentration 
where concentration in ('Finance', 'Economics', 'Pre-Medicine');

-- 327. 2025-06-16 19:54, rows returned: 4221
select *, 1 as flag from concentration 
where concentration in ('Finance', 'Economics', 'Pre-Medicine');

-- 328. 2025-06-16 19:55, rows returned: 4221
select * from concentration 
where concentration in ('Finance', 'Economics', 'Pre-Medicine');

-- 329. 2025-06-17 18:57, rows returned: 117
select distinct A.ProfileId
from FavoriteBooks A, FavoriteBooks B
where A.FavoriteBook like '%Lord of the Rings%' AND
      B.FavoriteBook like '%Harry Potter%' AND
      A.ProfileId = B.ProfileId;

-- 330. 2025-06-17 19:00, rows returned: 1638
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Lord of the Rings%'
union
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Harry Potter%';

-- 331. 2025-06-17 19:00, rows returned: 117
select distinct A.ProfileId
from FavoriteBooks A, FavoriteBooks B
where A.FavoriteBook like '%Lord of the Rings%' AND
      B.FavoriteBook like '%Harry Potter%' AND
      A.ProfileId = B.ProfileId;

-- 332. 2025-06-17 19:00, rows returned: 117
select distinct A.ProfileId
from FavoriteBooks A, FavoriteBooks B
where A.FavoriteBook like '%Lord of the Rings%' AND
      B.FavoriteBook like '%Harry Potter%' AND
      A.ProfileId = B.ProfileId;

-- 333. 2025-06-17 19:00, rows returned: 1638
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Lord of the Rings%'
union
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Harry Potter%';

-- 334. 2025-06-17 19:01, rows returned: 117
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Lord of the Rings%'
intersect
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Harry Potter%';

-- 335. 2025-06-17 19:57, rows returned: 49
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

-- 336. 2025-06-18 17:49, rows returned: 0
Select *
from FavoriteBooks JOIN Concentration on (ProfileID)
where FavoriteBook like '%Harry Potter%' AND Concentration like '%Psychology%';

-- 337. 2025-06-18 17:51, rows returned: 2343932
Select *
from FavoriteBooks F JOIN Concentration C on (F.ProfileID)
where FavoriteBook like '%Harry Potter%' AND Concentration like '%Psychology%';

-- 338. 2025-06-18 17:52, rows returned: 2343932
Select *
from FavoriteBooks F JOIN Concentration C on (C.ProfileID)
where FavoriteBook like '%Harry Potter%' AND Concentration like '%Psychology%';

-- 339. 2025-06-18 17:53, rows returned: 2343932
Select C.ProfileID
from FavoriteBooks F JOIN Concentration C on (C.ProfileID)
where FavoriteBook like '%Harry Potter%' AND Concentration like '%Psychology%';

-- 340. 2025-06-18 18:05, rows returned: 99
Select ProfileID
from FavoriteBooks
where FavoriteBook like '%Harry Potter%'
intersect 
Select ProfileID from Concentration
where Concentration like '%Psychology%';

-- 341. 2025-06-18 18:05, rows returned: 0
Select C.ProfileID
from FavoriteBooks JOIN Concentration using(ProfileID)
where FavoriteBook like '%Harry Potter%' AND Concentration like '%Psychology%';

-- 342. 2025-06-18 18:07, rows returned: 99
Select ProfileID
from FavoriteBooks JOIN Concentration using(ProfileID)
where FavoriteBook like '%Harry Potter%' AND Concentration like '%Psychology%';

-- 343. 2025-06-18 18:08, rows returned: 99
Select ProfileID
from FavoriteBooks
where FavoriteBook like '%Harry Potter%'
intersect 
Select ProfileID from Concentration
where Concentration like '%Psychology%';

-- 344. 2025-06-18 18:10, rows returned: 48456
Select *
from FavoriteBooks;

-- 345. 2025-06-18 18:11, rows returned: 48456
Select ProfileID
from FavoriteBooks;

-- 346. 2025-06-18 18:11, rows returned: 48456
Select *
from FavoriteBooks;

-- 347. 2025-06-18 18:11, rows returned: 6512
Select ProfileID
from FavoriteBooks
except
select ProfileID
from FavoriteTVShows;

-- 348. 2025-06-18 18:11, rows returned: 27772
select ProfileID
from FavoriteTVShows;

-- 349. 2025-06-18 18:12, rows returned: 48456
Select *
from FavoriteBooks;

-- 350. 2025-06-18 18:12, rows returned: 6512
Select ProfileID
from FavoriteBooks
except
select ProfileID
from FavoriteTVShows;

-- 351. 2025-06-18 18:15, rows returned: 2419
Select ProfileID
from FavoriteTVShows
except
select ProfileID
from FavoriteBooks;

-- 352. 2025-06-18 18:51, rows returned: 1
Select datetime('now');

-- 353. 2025-06-18 18:56, rows returned: 1
Select datetime('now', 'localtime');

-- 354. 2025-06-18 19:20, rows returned: 1
select strftime('%Y-%m-%d', date('now', 'localtime'));

-- 355. 2025-06-18 19:39, rows returned: 1
select strftime('%w', date('now', 'localtime'));

-- 356. 2025-06-18 19:39, rows returned: 1
select strftime('%W', date('now', 'localtime'));

-- 357. 2025-06-18 19:40, rows returned: 24
select strftime('%Y-%m', MemberSince) as Year_Month, count(*)
from Profiles
Group by Year_Month;

-- 358. 2025-06-18 19:42, rows returned: 8
select strftime('%w', MemberSince) as Year_Month, count(*)
from Profiles
Group by Year_Month;

-- 359. 2025-06-18 19:43, rows returned: 24
select strftime('%Y-%m', MemberSince) as Year_Month, count(*)
from Profiles
Group by Year_Month;

-- 360. 2025-06-18 19:45, rows returned: 0
select strftime('%Y-%m', MemberSince) as Year_Month, count(*)
from Profiles
where strftime('2025-01','2025-06')
Group by Year_Month;

-- 361. 2025-06-18 19:46, rows returned: 1
select count(*)
from profiles
where strftime('%Y-%m-%d',LastUpdate) <= '2005-06-30' and strftime('%Y-%m-%d',LastUpdate) >= '2005-01-01';

-- 362. 2025-06-18 19:49, rows returned: 1
select count(*)
from profiles
where strftime('%Y-%m',LastUpdate) = '2006-01';

-- 363. 2025-06-18 21:04, rows returned: 1
select strftime('%J', date('2000-01-01')) + 10;

-- 364. 2025-06-18 21:06, rows returned: 1
select date(strftime('J',date('2000-01-01')) +10);

-- 365. 2025-06-18 21:06, rows returned: 1
select date(strftime('J',date('2000-01-01')) + 10);

-- 366. 2025-06-18 21:07, rows returned: 1
select date(strftime('%J',date('2000-01-01')) + 10);

-- 367. 2025-06-19 17:52, rows returned: 25786
Select MemberSince
from profiles;

-- 368. 2025-06-19 17:54, rows returned: 0
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles join FavoriteMusic on profiles.ProfileID = FavoriteMusic.ProfileID
where FavoriteMusic like '%Nickelback%'
AND
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles join FavoriteMusic on profiles.ProfileID = FavoriteMusic.ProfileID
where FavoriteMusic not like '%Nickelback%';

-- 369. 2025-06-19 17:57, rows returned: 2
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles join FavoriteMusic on profiles.ProfileID = FavoriteMusic.ProfileID
where FavoriteMusic like '%Nickelback%'
union
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles join FavoriteMusic on profiles.ProfileID = FavoriteMusic.ProfileID
where FavoriteMusic not like '%Nickelback%';

-- 370. 2025-06-19 17:57, rows returned: 1
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles join FavoriteMusic on profiles.ProfileID = FavoriteMusic.ProfileID
where FavoriteMusic like '%Nickelback%'
except
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles join FavoriteMusic on profiles.ProfileID = FavoriteMusic.ProfileID
where FavoriteMusic not like '%Nickelback%';

-- 371. 2025-06-19 17:58, rows returned: 1
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles join FavoriteMusic on profiles.ProfileID = FavoriteMusic.ProfileID
where FavoriteMusic like '%Nickelback%';

-- 372. 2025-06-19 17:58, rows returned: 1
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles join FavoriteMusic on profiles.ProfileID = FavoriteMusic.ProfileID
where FavoriteMusic not like '%Nickelback%';

-- 373. 2025-06-19 18:06, rows returned: 1
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles join FavoriteMusic on profiles.ProfileID = FavoriteMusic.ProfileID
where FavoriteMusic not like '%Nickelback%';

-- 374. 2025-06-19 18:06, rows returned: 1
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles join FavoriteMusic on profiles.ProfileID = FavoriteMusic.ProfileID
where FavoriteMusic like '%Nickelback%';

-- 375. 2025-06-19 18:07, rows returned: 25786
Select LastUpdate
from profiles;

-- 376. 2025-06-19 18:08, rows returned: 25786
Select *
from profiles;

-- 377. 2025-06-19 18:08, rows returned: 25786
Select Name, LastUpdate
from profiles;

-- 378. 2025-06-19 18:15, rows returned: 1
select Name, avg(strftime('%J', 'now') - strftime('%J',LastUpdate)) as numDays
from profiles;

-- 379. 2025-06-19 18:16, rows returned: 25786
select Name, strftime('%J', 'now') - strftime('%J',LastUpdate) as numDays
from profiles;

-- 380. 2025-06-19 18:18, rows returned: 0
Select Political.Views
from profiles;

-- 381. 2025-06-19 18:21, rows returned: 25786
Select *
from profiles;

-- 382. 2025-06-19 18:22, rows returned: 25786
Select "Political.Views"
from profiles;

-- 383. 2025-06-19 18:22, rows returned: 25786
Select "Political.Views", MemberSince
from profiles;

-- 384. 2025-06-19 18:24, rows returned: 1
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays
from profiles
where "Political.Views" like '%liberal%';

-- 385. 2025-06-19 18:24, rows returned: 1
select avg(strftime('%J', 'now') - strftime('%J',MemberSince)) as numDays, "Politcal.Views"
from profiles
where "Political.Views" like '%liberal%';

-- 386. 2025-06-19 18:24, rows returned: 0
select avg(strftime('%J', 'now') - strftime('%J', profiles.MemberSince)) as numDays, "profiles.Politcal.Views"
from profiles A, profiles B
where "Political.Views" like 'liberal';

-- 387. 2025-06-19 18:31, rows returned: 10
select "Political Views", avg(strftime('%J', '2006-01-19') - strftime('%J', MemberSince)) as avg_days_since_joined
from profiles
group by "Political.Views"
order by avg_days_since_joined;

-- 388. 2025-06-19 18:37, rows returned: 10
select "Political Views", avg(strftime('%J', '2006-01-19') - strftime('%J', MemberSince)) as avg_days_since_joined
from profiles
group by "Political.Views"
order by avg_days_since_joined;

-- 389. 2025-06-19 18:38, rows returned: 25786
Select "Political.Views", MemberSince
from profiles;

-- 390. 2025-06-19 18:38, rows returned: 10
select "Political.Views", avg(strftime('%J', '2006-01-19') - strftime('%J', MemberSince)) as avg_days_since_joined
from profiles
group by "Political.Views"
order by avg_days_since_joined;

-- 391. 2025-06-19 18:55, rows returned: 1
select avg(strftime('%J', 'now') - strftime('%J',LastUpdate)) as numDays
from profiles;

-- 392. 2025-06-19 18:55, rows returned: 1
select ProfileID, avg(strftime('%J', 'now') - strftime('%J',LastUpdate)) as numDays
from profiles;

-- 393. 2025-06-19 18:55, rows returned: 1
select count(ProfileID), avg(strftime('%J', 'now') - strftime('%J',LastUpdate)) as numDays
from profiles;

-- 394. 2025-06-19 18:56, rows returned: 1
select count(ProfileID), avg(strftime('%J', '2006-01-17') - strftime('%J',LastUpdate)) as numDays
from profiles;

-- 395. 2025-06-19 18:59, rows returned: 1
select count(*)
from profiles
where strftime('%J', '2006-01-18') - strftime('%J', LastUpdate) <= 1;

-- 396. 2025-06-19 18:59, rows returned: 1
select count(*)
from profiles
where LastUpdate >= '2006-01-17';

-- 397. 2025-06-19 18:59, rows returned: 1
select count(*)
from profiles
where strftime('%J', '2006-01-18') - strftime('%J', LastUpdate) <= 1;

-- 398. 2025-06-21 14:51, rows returned: 47881
SELECT ProfileID, FavoriteMusic,
    CASE 
    WHEN FavoriteMusic = 'Nickleback' then 'Nickelback'
        ELSE FavoriteMusic
    END AS FavoriteMusic_Fixed
FROM FavoriteMusic;

-- 399. 2025-06-21 15:08, rows returned: 16503
SELECT Birthday,
    FavoriteBook, count(*) AS freq
from Profiles, FavoriteBooks
where profiles.profileID = favoritebooks.ProfileID
group by Birthday, FavoriteBook
order by freq desc;

-- 400. 2025-06-21 15:13, rows returned: 8524
select
    case
        when Birthday <= 1990 and Birthday >= 1988 then '16-18'
        when Birthday < 1988 and Birthday >= 1986 then '18-20'
    end as Age,
    FavoriteBook, count(*) as freq
from profiles, favoritebooks
where profiles.ProfileID = favoritebooks.ProfileID
group by Age, FavoriteBook
order by freq desc;

-- 401. 2025-06-21 15:21, rows returned: 8249
select
    case
        when Birthday <= 1990 and Birthday >= 1988 then '16-18'
        when Birthday < 1988 and Birthday >= 1986 then '18-20'
    end as Age,
    FavoriteBook, count(*) as freq
from profiles, favoritebooks
where profiles.ProfileID = favoritebooks.ProfileID
        and birthday is not null
group by Age, FavoriteBook
order by freq desc;

-- 402. 2025-06-21 15:21, rows returned: 3677
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

-- 403. 2025-06-21 15:52, rows returned: 10
select distinct Birthday
from profiles
limit 10;

-- 404. 2025-06-21 18:53, rows returned: 0
create temporary table T1 as
    select Sex, "Political.Views", count(*) as frequency
    from profiles
    group by Sex, "Political.Views";

-- 405. 2025-06-21 18:53, rows returned: 28
select * from T1;

-- 406. 2025-06-21 18:54, rows returned: 1
select name from sqlite_temp_master;

-- 407. 2025-06-21 18:54, rows returned: 0
select * from T1;

-- 408. 2025-06-21 18:54, rows returned: 0
select name from sqlite_temp_master;

-- 409. 2025-06-21 20:25, rows returned: 0
select T1.FavoriteTVShow, T1.singlecount, T2.marriedcount, T3.totalcount
from T1, T2, T3
where T1.FavortieTVShow = T2.FavoriteTVShow AND T1.FavoriteTVShow = T3.FavoriteTVShow
order by T3.totalcount desc;

-- 410. 2025-06-21 20:29, rows returned: 0
create temporary table T1 as
    select FavoriteTVShow, count(*) as singlecount
    from FavoriteTVShows JOIN RelationshipStatus using(ProfileID)
    where RelationshipStatus = 'Single'
    group by FavoriteTVShow;

-- 411. 2025-06-21 20:29, rows returned: 0
create temporary table T2 as
    select FavoriteTVShow, count(*) as marriedcount
    from FavoriteTVShows JOIN RelationshipStatus using(ProfileID)
    where RelationshipStatus = 'Married'
    group by FavoriteTVShow;

-- 412. 2025-06-21 20:29, rows returned: 0
select T1.FavoriteTVShow, T1.singlecount, T2.marriedcount, T3.totalcount
from T1, T2, T3
where T1.FavortieTVShow = T2.FavoriteTVShow AND T1.FavoriteTVShow = T3.FavoriteTVShow
order by T3.totalcount desc;

-- 413. 2025-06-21 20:29, rows returned: 516
select T1.FavoriteTVShow, T1.singlecount, T2.marriedcount, T3.totalcount
from T1, T2, T3
where T1.FavoriteTVShow = T2.FavoriteTVShow AND T1.FavoriteTVShow = T3.FavoriteTVShow
order by T3.totalcount desc;

-- 414. 2025-06-21 20:32, rows returned: 48456
select *
from favoritebooks;

-- 415. 2025-06-21 20:32, rows returned: 1
select FavoriteBook, count(*)
from favoritebooks;

-- 416. 2025-06-21 20:33, rows returned: 5400
select FavoriteBook, count(*)
from favoritebooks
group by FavoriteBook;

-- 417. 2025-06-21 20:33, rows returned: 5400
select FavoriteBook, count(*) as totcount
from favoritebooks
group by FavoriteBook
order by totcount desc;

-- 418. 2025-06-21 20:36, rows returned: 1
select Concentration, count(*) as freq
from concentration
where Concentration = 'Finance' OR 'Psychology'
group by Concentration
order by freq desc;

-- 419. 2025-06-21 20:36, rows returned: 2
select Concentration, count(*) as freq
from concentration
where Concentration = 'Finance' OR Concentration = 'Psychology'
group by Concentration
order by freq desc;

-- 420. 2025-06-21 20:37, rows returned: 0
drop table T1;

-- 421. 2025-06-21 20:37, rows returned: 0
drop table T2;

-- 422. 2025-06-21 20:37, rows returned: 0
drop table T3;

-- 423. 2025-06-21 20:38, rows returned: 0
select name from sqlite_temp_master;

-- 424. 2025-06-21 20:41, rows returned: 1122
Select Concentration, FavoriteBook, count(*) as freq
from concentration join favoritebooks using(ProfileID)
where Concentration = 'Finance'
group by Concentration, FavoriteBook
order by freq desc;

-- 425. 2025-06-21 20:41, rows returned: 1436
Select Concentration, FavoriteBook, count(*) as freq
from concentration join favoritebooks using(ProfileID)
where Concentration = 'Psychology'
group by Concentration, FavoriteBook
order by freq desc;

-- 426. 2025-06-21 20:42, rows returned: 1122
Select Concentration, FavoriteBook, count(*) as freq
from concentration join favoritebooks using(ProfileID)
where Concentration = 'Finance'
group by Concentration, FavoriteBook
order by freq desc;

-- 427. 2025-06-21 20:42, rows returned: 1436
Select Concentration, FavoriteBook, count(*) as freq
from concentration join favoritebooks using(ProfileID)
where Concentration = 'Psychology'
group by Concentration, FavoriteBook
order by freq desc;

-- 428. 2025-06-21 20:45, rows returned: 2558
Select Concentration, FavoriteBook, count(*) as freq
from concentration join favoritebooks using(ProfileID)
where Concentration = 'Finance' or Concentration = 'Psychology'
group by Concentration, FavoriteBook
order by freq desc;

-- 429. 2025-06-21 20:56, rows returned: 0
create temporary table T1 as
    select FavoriteBook, count(*) as totcount
    from favoritebooks
    group by FavoriteBook
    order by totcount desc;

-- 430. 2025-06-21 20:56, rows returned: 0
select T1.FavoriteBook, T1.totcount, T2.Concentration, T2.freq
from T1, T2
where T1.FavoriteBook = T2.FavoriteBook
order by T2.totcount desc;

-- 431. 2025-06-21 20:57, rows returned: 0
SELECT 
    T1.FavoriteBook, 
    T1.totcount, 
    T2.Concentration, 
    T2.freq
FROM T1
JOIN T2 ON T1.FavoriteBook = T2.FavoriteBook
ORDER BY T1.totcount DESC;

-- 432. 2025-06-21 20:59, rows returned: 0
select 
    T1.FavoriteBook, 
    T1.totcount, 
    T2.Concentration, 
    T2.freq
from T1
JOIN T2 ON T1.FavoriteBook = T2.FavoriteBook
order by T1.totcount desc;

-- 433. 2025-06-21 21:01, rows returned: 0
drop table T1;

-- 434. 2025-06-21 21:01, rows returned: 0
drop table T2;

-- 435. 2025-06-21 21:02, rows returned: 0
select name from sqlite_temp_master;

-- 436. 2025-06-21 21:12, rows returned: 1462
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

-- 437. 2025-06-21 21:18, rows returned: 0
create temporary table T1 as
    select ProfileId
    from FavoriteBooks
    where FavoriteBook like '%Lord of the Rings%';

-- 438. 2025-06-21 21:18, rows returned: 0
create temporary table T2 as
    select ProfileId
    from FavoriteBooks
    where FavoriteBook not like '%Harry Potter%';

-- 439. 2025-06-21 21:18, rows returned: 0
create temporary table T3 as
    select ProfileId
    from FavoriteBooks
    where FavoriteBook not like '%Lord of the Rings%';

-- 440. 2025-06-21 21:18, rows returned: 0
create temporary table T4 as
    select ProfileId
    from FavoriteBooks
    where FavoriteBook like '%Harry Potter%';

-- 441. 2025-06-21 21:18, rows returned: 0
create temporary table TLR as
    select * from T1
    INTERSECT
    select * from T2;

-- 442. 2025-06-21 21:18, rows returned: 0
create temporary table THP as
    select * from T3
    INTERSECT
    select * from T4;

-- 443. 2025-06-21 21:18, rows returned: 0
select * from TLR
UNION
select * from THP;

-- 444. 2025-06-21 21:19, rows returned: 0
select * from TLR
UNION
select * from THP;

-- 445. 2025-06-21 21:20, rows returned: 0
create temporary table THP as
    select * from T3
    INTERSECT
    select * from T4;

-- 446. 2025-06-21 21:21, rows returned: 0
select * from TLR
UNION
select * from THP;

-- 447. 2025-06-21 21:21, rows returned: 0
drop table T1, T2;

-- 448. 2025-06-21 21:22, rows returned: 6
select name from sqlite_temp_master;

-- 449. 2025-06-21 21:22, rows returned: 0
drop table T1;

-- 450. 2025-06-21 21:22, rows returned: 5
select name from sqlite_temp_master;

-- 451. 2025-06-21 21:22, rows returned: 0
drop table T2;

-- 452. 2025-06-21 21:22, rows returned: 4
select name from sqlite_temp_master;

-- 453. 2025-06-21 21:22, rows returned: 0
drop table T3;

-- 454. 2025-06-21 21:22, rows returned: 3
select name from sqlite_temp_master;

-- 455. 2025-06-21 21:23, rows returned: 0
drop table T4;

-- 456. 2025-06-21 21:23, rows returned: 0
drop table TLR;

-- 457. 2025-06-21 21:23, rows returned: 0
drop table THP;

-- 458. 2025-06-21 21:23, rows returned: 0
select name from sqlite_temp_master;

-- 459. 2025-06-23 20:28, rows returned: 0
create view profile_view as
select profileID, Sex
from profiles;

-- 460. 2025-06-23 20:28, rows returned: 25786
select * from profile_view;

-- 461. 2025-06-23 21:29, rows returned: 25786
select ProfileID, 'Name begins with ' || substr(Name, 1, 1) as Name_Anonymized, Birthday, Sex
from profiles;

-- 462. 2025-06-23 21:30, rows returned: 0
create View profile_vw as
select ProfileID, 'Name begins with ' || substr(Name, 1, 1) as Name_Anonymized, Birthday, Sex
from profiles;

-- 463. 2025-06-23 21:30, rows returned: 25786
select * from profile_vw;

-- 464. 2025-06-23 21:37, rows returned: 0
drop view profile_view;

-- 465. 2025-06-23 21:38, rows returned: 0
drop view profile_vw;

-- 466. 2025-06-24 21:19, rows returned: 7
select RelationshipStatus, count(*)/ 25784 as Percentage
from RelationshipStatus
group by RelationshipStatus;

-- 467. 2025-06-24 21:19, rows returned: 7
select RelationshipStatus, CAST(count(*) as real)/ 25784 as Percentage
from RelationshipStatus
group by RelationshipStatus;

-- 468. 2025-06-24 21:20, rows returned: 7
select RelationshipStatus, round(100*CAST(count(*) as real)/ 25784, 2) as Percentage
from RelationshipStatus
group by RelationshipStatus;

-- 469. 2025-06-24 21:20, rows returned: 7
select RelationshipStatus, round(100*CAST(count(*) as real)/ 25784, 2) as Percentage
from RelationshipStatus
group by RelationshipStatus;

-- 470. 2025-06-25 20:07, rows returned: 1
select substr('Martinez-Davis',
        instr('Martinez-Davis', '-')+1,
        length('Martinez-Davis')) as name_adjusted;

-- 471. 2025-06-25 20:08, rows returned: 1
select substr('Martinez-Davis',
        instr('Martinez-Davis', '-'),
        length('Martinez-Davis')) as name_adjusted;

-- 472. 2025-06-25 20:08, rows returned: 1
select substr('Martinez-Davis',
        instr('Martinez-Davis', '-')-1,
        length('Martinez-Davis')) as name_adjusted;

-- 473. 2025-06-25 20:09, rows returned: 1
select substr('Martinez-Davis',
        instr('Martinez-Davis', '-')+2,
        length('Martinez-Davis')) as name_adjusted;

-- 474. 2025-06-25 20:09, rows returned: 1
select substr('Martinez-Davis',
        instr('Martinez-Davis', '-')+1,
        length('Martinez-Davis')) as name_adjusted;

-- 475. 2025-06-25 20:09, rows returned: 1
select substr('Martinez-Davis',
        instr('Martinez-Davis', '-')+1,
        length('Martinez-Davis')) as name_adjusted;

-- 476. 2025-06-25 20:09, rows returned: 25786
select name, substr(name, instr(name, '-')+1, length(name)) as name_modified
from profiles;

-- 477. 2025-06-25 20:11, rows returned: 347
select name, substr(name, instr(name, '-')+1, length(name)) as name_modified
from profiles
where instr(name, '-') > 0;

-- 478. 2025-06-25 20:49, rows returned: 25786
select *
from profiles;

-- 479. 2025-06-25 20:49, rows returned: 25786
select Birthday
from profiles;

-- 480. 2025-06-25 21:10, rows returned: 3735
select Birthday
from profiles
where Birthday = '1986';

-- 481. 2025-06-25 21:11, rows returned: 1
select count(*)
from profiles
where Birthday = '1986';

-- 482. 2025-06-25 21:19, rows returned: 1
select count(*)
from profiles
where Birthday = '1986';

-- 483. 2025-06-25 21:19, rows returned: 1
select count(*)
from profiles;

-- 484. 2025-06-25 21:21, rows returned: 1
select count(*)
from profiles
where Birthday = '1986';

-- 485. 2025-06-25 21:22, rows returned: 1
select count(*)
from profiles;

-- 486. 2025-06-25 21:32, rows returned: 1
SELECT 
    ROUND(100 * COUNT(*) / CAST((SELECT COUNT(*) FROM profiles) AS DECIMAL), 2) AS PercentBD1986
FROM 
    profiles
WHERE 
    Birthday LIKE '1986%';

-- 487. 2025-06-25 21:33, rows returned: 1
select count(*)
from profiles
where Birthday = '1986';

-- 488. 2025-06-25 21:33, rows returned: 1
select count(*)
from profiles;

-- 489. 2025-06-25 21:33, rows returned: 1
SELECT 
    ROUND(100 * COUNT(*) / CAST((SELECT COUNT(*) FROM profiles) AS DECIMAL), 2) AS PercentBD1986
FROM 
    profiles
WHERE 
    Birthday LIKE '1986%';

-- 490. 2025-06-25 21:34, rows returned: 1
SELECT 
  ROUND(100 * COUNT(*) / CAST(total.total_count AS DECIMAL(10,2)), 2) AS PercentBD1986
FROM 
  profiles,
  (SELECT COUNT(*) AS total_count FROM profiles) AS total
WHERE 
  Birthday LIKE '1986%';

-- 491. 2025-06-25 21:34, rows returned: 1
SELECT 
    ROUND(100 * COUNT(*) / CAST((SELECT COUNT(*) FROM profiles) AS real), 2) AS PercentBD1986
FROM 
    profiles
WHERE 
    Birthday LIKE '1986%';

-- 492. 2025-06-25 21:34, rows returned: 1
SELECT 
  ROUND(100 * COUNT(*) / CAST(total.total_count AS real(10,2)), 2) AS PercentBD1986
FROM 
  profiles,
  (SELECT COUNT(*) AS total_count FROM profiles) AS total
WHERE 
  Birthday LIKE '1986%';

-- 493. 2025-06-25 21:55, rows returned: 0
Select ROUND(Avg(*)) as numConcentrationsPerProfile
from concentration;

-- 494. 2025-06-27 18:41, rows returned: 1
Select ROUND(Avg(ProfileID)) as numConcentrationsPerProfile
from concentration;

-- 495. 2025-06-27 18:47, rows returned: 1
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

-- 496. 2025-06-27 19:34, rows returned: 0
create index names_index on Profiles (Name asc);

-- 497. 2025-06-27 19:34, rows returned: 139
SELECT Concentration, 
       ROUND(100 * COUNT(*) / CAST((SELECT COUNT(*) FROM concentration) AS DECIMAL(10,2)), 2) AS Percentage
FROM concentration
GROUP BY Concentration
ORDER BY Percentage DESC;

-- 498. 2025-06-27 19:35, rows returned: 2978
select ProfileId, Name
from profiles
where Name like 'A%';

-- 499. 2025-06-27 19:48, rows returned: 0
Create Table FavoriteLanguage (ProfileID integer, Language string);

-- 500. 2025-06-27 19:49, rows returned: 0
select *
from FavoriteLanguage;

-- 501. 2025-06-27 19:49, rows returned: 1
Insert into FavoriteLanguage values (800002, 'SQL');

-- 502. 2025-06-27 19:49, rows returned: 1
Insert into FavoriteLanguage Values (800001, 'English');

-- 503. 2025-06-27 19:49, rows returned: 1
Insert into FavoriteLanguage Values (800004, 'Latin');

-- 504. 2025-06-27 19:49, rows returned: 3
select *
from FavoriteLanguage;

-- 505. 2025-06-27 19:50, rows returned: 1
Delete from FavoriteLanguage
where ProfileID = 800001;

-- 506. 2025-06-27 19:50, rows returned: 2
select *
from FavoriteLanguage;

-- 507. 2025-06-30 15:54, rows returned: 1
select RANDOM();

-- 508. 2025-06-30 15:54, rows returned: 1
select RANDOM();

-- 509. 2025-06-30 15:54, rows returned: 1
select RANDOM();

-- 510. 2025-06-30 15:54, rows returned: 0
Drop table FavoriteLanguage;

-- 511. 2025-06-30 16:06, rows returned: 1
select count(*)
from profiles
where Sex = 'Female';

-- 512. 2025-06-30 16:07, rows returned: 0
Begin transaction;

-- 513. 2025-06-30 16:07, rows returned: 12311
Delete from profiles where Sex = 'Female';

-- 514. 2025-06-30 16:07, rows returned: 1
select count(*)
from profiles
where Sex = 'Female';

-- 515. 2025-06-30 16:08, rows returned: 0
Rollback;

-- 516. 2025-06-30 16:08, rows returned: 1
select count(*)
from profiles
where Sex = 'Female';

-- 517. 2025-07-01 14:23, rows returned: 1
select count(distinct ProfileID)
from profiles;

-- 518. 2025-07-01 14:23, rows returned: 1
select count(distinct ProfileID)
from concentration;

-- 519. 2025-07-01 14:29, rows returned: 10000
select distinct ProfileID
from favoritebooks;

-- 520. 2025-07-01 14:30, rows returned: 19252
SELECT distinct profileID
from concentration;

-- 521. 2025-07-01 14:30, rows returned: 89635
select *
from concentration left join favoritebooks using (profileID);

-- 522. 2025-07-01 14:31, rows returned: 73041
select *
from concentration join favoritebooks using (profileID);

-- 523. 2025-07-01 14:31, rows returned: 89635
select *
from concentration left join favoritebooks using (profileID);

-- 524. 2025-07-01 14:57, rows returned: 73041
Select *
from concentration join favoritebooks using (profileID);

-- 525. 2025-07-01 14:58, rows returned: 73041
Select *
from concentration join favoritebooks using (profileID);

-- 526. 2025-07-01 14:58, rows returned: 0
select *
from favoritebooks left join concentration using (profileID)
where concetnration.ProfileID is NULL;

-- 527. 2025-07-01 15:00, rows returned: 4871
select *
from favoritebooks left join concentration using (profileID)
where concentration.ProfileID is NULL;

-- 528. 2025-07-01 15:00, rows returned: 16594
select *
from concentration left join favoritebooks using (profileID)
where favoritebooks.ProfileID is NULL;

-- 529. 2025-07-01 15:00, rows returned: 4871
select *
from favoritebooks left join concentration using (profileID)
where concentration.ProfileID is NULL;

-- 530. 2025-07-01 15:00, rows returned: 73041
Select *
from concentration join favoritebooks using (profileID);

-- 531. 2025-07-01 15:01, rows returned: 16594
select *
from concentration left join favoritebooks using (profileID)
where favoritebooks.ProfileID is NULL;

-- 532. 2025-07-01 15:02, rows returned: 16594
select *
from concentration left join favoritebooks using (ProfileID)
where favoritebooks.ProfileID is NULL;

-- 533. 2025-07-01 15:02, rows returned: 73041
Select *
from concentration join favoritebooks using (profileID);

-- 534. 2025-07-01 15:02, rows returned: 16594
select *
from concentration left join favoritebooks using (ProfileID)
where favoritebooks.ProfileID is NULL;

-- 535. 2025-07-01 15:02, rows returned: 4871
select *
from favoritebooks left join concentration using (profileID)
where concentration.ProfileID is NULL;

-- 536. 2025-07-01 15:02, rows returned: 16594
select *
from concentration left join favoritebooks using(ProfileID)
where favoritebooks.ProfileID is NULL;

-- 537. 2025-07-02 15:30, rows returned: 10
select *
from profiles, FavoriteTVShows
where Birthday >= 1985 and profiles.ProfileID = FavoriteTVShows.ProfileID
order by Birthday desc
limit 10;

-- 538. 2025-07-02 15:31, rows returned: 0
select *
from profiles, FavoriteTVShows
group by ProfileID
having Birthday >= 1985 and profiles.ProfileID = FavoriteTVShows.ProfileID
order by Birthday desc
limit 10;

-- 539. 2025-07-02 15:32, rows returned: 10
select *

from profiles join FavoriteTVShows on profiles.ProfileID = FavoriteTVShows.ProfileID

where Birthday >= 1985

order by Birthday desc

limit 10;

-- 540. 2025-07-02 15:33, rows returned: 3
select Sex, count(*), avg(Birthday)

from profiles

group by Sex;

-- 541. 2025-07-02 15:33, rows returned: 1
select count(*), avg(Birthday)

from profiles

where Sex = 'Female';

-- 542. 2025-07-02 15:34, rows returned: 3
select Sex, count(*), avg(Birthday)

from profiles

group by Sex;

-- 543. 2025-07-02 15:34, rows returned: 1
select count(*), avg(Birthday)

from profiles

where Sex is NULL;

-- 544. 2025-07-02 15:34, rows returned: 3
select Sex, count(*), avg(Birthday)

from profiles

group by Sex;

-- 545. 2025-07-02 15:34, rows returned: 7664
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

-- 546. 2025-07-02 15:35, rows returned: 8185
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

-- 547. 2025-07-03 12:50, rows returned: 10
select *
from profiles
order by random()
limit 10;

-- 548. 2025-07-03 13:04, rows returned: 0
create temp table rand_sample as
    select *
    from profiles
    order by random()
    limit 10;

-- 549. 2025-07-03 13:04, rows returned: 4
select *
from FavoriteTVShows JOIN rand_sample using (ProfileID);

-- 550. 2025-07-03 13:05, rows returned: 4
select *
from FavoriteTVShows JOIN rand_sample using (ProfileID);

-- 551. 2025-07-03 13:05, rows returned: 4
select *
from FavoriteTVShows JOIN rand_sample using (ProfileID);

-- 552. 2025-07-03 13:31, rows returned: 0
select concentration, count(*) as frequency 
from t1
where favoritebook like '%Harry Potter%'
group by concentration 
order by frequency desc;

-- 553. 2025-07-07 14:30, rows returned: 0
create temp table t1 as 
    select *
    from concentration join favoritebooks using (profileid);

-- 554. 2025-07-07 14:30, rows returned: 0
With t1 as 
    (select *
    from concentration join favoritebooks using (profileID))
select concentration, count(*) as frequency
from t1
where favoritebook like "%Harry Potter%"
group by cocentration
order by frequency desc;

-- 555. 2025-07-07 14:32, rows returned: 0
With t1 as 
    (select *
    from Artist
    order by random()
    limit 5)
select *
from Album JOIN T1 using (ArtistID);

-- 556. 2025-09-16 13:52, rows returned: 117
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Lord of the Rings%'
intersect
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Harry Potter%';

-- 557. 2025-09-16 13:52, rows returned: 1638
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Lord of the Rings%'
union
select ProfileId
from FavoriteBooks
where FavoriteBook like '%Harry Potter%';

-- 558. 2025-09-16 13:52, rows returned: 62
Select A.Concentration, B.Concentration, count(*) as Frequency
from concentration A, concentration B
where A.ProfileID = B.ProfileID AND
      A.concentration <> B.concentration AND
      A.Concentration like '%Finance%' AND
      B.Concentration not like '%Finance%'
group by A.Concentration, B.Concentration
order by Frequency desc;

-- 559. 2025-09-17 14:00, rows returned: 1
select sqlite_version();

-- 560. 2025-09-17 14:01, rows returned: 25786
SELECT 
    ProfileID,
    Name,
    LastUpdate,
    ROW_NUMBER() OVER (
        PARTITION BY ProfileID
        ORDER BY LastUpdate DESC
    ) AS update_rank
FROM profiles;

-- 561. 2025-09-17 14:02, rows returned: 25785
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

