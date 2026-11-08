select Name
from Profiles
where UPPER("Political.Views") = 'CONSERVATIVE'
limit 10;

select Name
from Profiles
where lower("Political.Views") = 'conservative'
limit 10;

select Name
from Profiles
where "Political.Views" LIKE 'conservative'
limit 10;

select Name, Status, Sex, "Political.Views"
from profiles
where Name like '%Park%';

select FavoriteMovie
from favoritemovies
where FavoriteMovie like '%Harry%';

select Name
from profiles
where Name like 'David%';

select FavoriteMovie
from favoritemovies
where lower(FavoriteMovie) = '%star%';

select *
from favoritemovies
where FavoriteMovie like '%star war%';

select Name, Status, Sex, Birthday, "Political.Views"
from Profiles
where Birthday = 1985 or "Political.Views" = 'Conservative';

select count(distinct FavoriteMusic)
from FavoriteMusic
where FavoriteMusic like 'Met%';

select count(FavoriteMusic)
from FavoriteMusic
where trim(FavoriteMusic) like 'Black Sabbath';

select count(Concentration)
from concentration
where Concentration like 'Computer Science';

select count(ProfileID)
from profiles
where TRIM(Sex) like 'Female' and TRIM(Birthday) like 1985 and TRIM("Political.Views") like 'Conservative';

select count(*)
from profiles
where Sex = 'Female' AND Birthday = 1985 AND "Political.Views" = 'Conservative';

select count(*)
from profiles 
where Sex = 'Male' AND Birthday <> 1985 AND Birthday <> 1986;

select avg(retweet_count)
from Tweets
where user_screen_name = 'BrunoMars' AND text LIKE '%#%';

select AVG(Birthday) as AvgBirthday
from profiles
group by Sex;

SELECT Concentration, count(*) as frequency
FROM Concentration
group by concentration
order by frequency desc;

select Sex, 2021 - Birthday as Age
from Profiles
where Sex = 'Female';

select Sex, avg(2021 - Birthday) as AvgAge
from Profiles
where Sex = 'Female';

select Sex, avg(2021 - Birthday) as AvgAge
from Profiles
group by Sex;

select Sex, avg(Birthday) as AvgBirthday
from profiles
group by Sex;

select Sex, count(*) as frequency
from profiles
group by Sex;

select Artist
From Artists;