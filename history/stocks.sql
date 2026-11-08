-- Every query I ran against this database in SQLiteStudio, in the order I ran them.
-- All hand-written. Includes the failed attempts and repeats.

-- 1. 2025-06-19 19:09, rows returned: 242
Select Symbol, Date, Volume
from quotes
where Symbol = 'MSFT' and strftime('%m',Date) = '01';

-- 2. 2025-06-19 19:15, rows returned: 12
Select Symbol, strftime('%Y',Date) as Year, strftime('%m',Date) as Month, Sum(Volume)
from quotes
where Symbol = 'MSFT' and strftime('%m',Date) = '01'
group by Symbol, Year, Month;

-- 3. 2025-06-19 19:19, rows returned: 1
Select Symbol, Max(Close)
from quotes;

-- 4. 2025-06-19 19:22, rows returned: 1
Select Symbol, Max(Close) as MaxClosePrice
from quotes
where Date <= '2018-01-01' AND Date <= '2018-02-11';

-- 5. 2025-06-19 19:22, rows returned: 1
Select *, Symbol, Max(Close) as MaxClosePrice
from quotes
where Date <= '2018-01-01' AND Date <= '2018-02-11';

-- 6. 2025-06-19 19:22, rows returned: 0
Select Symbol, Max(Close) as MaxClosePrice
from quotes
where Date <= '2018-01-01' AND Date <= '2018-02-11'
group by Symbol, MaxClosePrice;

-- 7. 2025-06-19 19:23, rows returned: 7
Select Symbol, Max(Close) as MaxClosePrice
from quotes
where Date <= '2018-01-01' AND Date <= '2018-02-11'
group by Symbol;

-- 8. 2025-06-19 19:31, rows returned: 17021
select *
from quotes;

-- 9. 2025-06-19 19:32, rows returned: 7
Select Symbol, Max(Close) as MaxClosePrice
from quotes
where Date <= '2018-01-01' AND Date <= '2018-02-11'
group by Symbol;

-- 10. 2025-06-19 19:32, rows returned: 7
Select Symbol, Max(Close) as MaxClosePrice
from quotes
group by Symbol;

-- 11. 2025-06-19 19:32, rows returned: 7
Select Symbol, Max(Close) as MaxClosePrice
from quotes
group by Symbol;

-- 12. 2025-06-19 19:32, rows returned: 7
Select Symbol, Max(Close) as MaxClosePrice
from quotes
where Date <= '2018-01-01' AND Date <= '2018-02-11'
group by Symbol;

-- 13. 2025-06-19 19:33, rows returned: 7
Select Symbol, MAX(Close) as MaxClosePrice
from quotes
group by Symbol;

-- 14. 2025-06-19 19:34, rows returned: 7
Select Symbol, MAX(Close) as MaxClosePrice, Volume
from quotes
group by Symbol;

-- 15. 2025-06-19 19:34, rows returned: 7
Select Symbol, MAX(Close) as MaxClosePrice, SUM(Volume)
from quotes
group by Symbol;

-- 16. 2025-06-19 19:34, rows returned: 7
Select Symbol, Date, MAX(Close) as MaxClosePrice, SUM(Volume)
from quotes
group by Symbol;

-- 17. 2025-06-19 19:34, rows returned: 7
Select Symbol, Date, Max(Close) as MaxClosePrice
from quotes
where Date <= '2018-01-01' AND Date <= '2018-02-11'
group by Symbol;

-- 18. 2025-06-19 19:38, rows returned: 0
select Symbol, strf('%w',Date) as DayOfWeek, avg(Volume) as AvgVolume
from quotes
group by Symbol;

-- 19. 2025-06-19 20:35, rows returned: 7
select Symbol, strftime('%w',Date) as DayOfWeek, avg(Volume) as AvgVolume
from quotes
group by Symbol;

-- 20. 2025-06-19 20:39, rows returned: 35
select Symbol, strftime('%w',Date) as DayOfWeek, avg(Volume) as AvgVolume
from quotes
group by Symbol, DayOfWeek;

-- 21. 2025-06-19 20:39, rows returned: 7
Select Symbol, Max(Close) as MaxClosePrice
from quotes
where Date >= '2018-01-01' AND Date <= '2018-02-11'
group by Symbol
order by MaxClosePrice;

-- 22. 2025-06-19 20:39, rows returned: 7
Select Symbol, Max(Close) as MaxClosePrice
from quotes
where Date >= '2018-01-01' AND Date <= '2018-02-11'
group by Symbol;

-- 23. 2025-06-19 20:39, rows returned: 35
select Symbol, strftime('%w',Date) as DayOfWeek, avg(Volume) as AvgVolume
from quotes
group by Symbol, DayOfWeek;

-- 24. 2025-06-19 20:40, rows returned: 35
select Symbol, strftime('%w',Date) as DayOfWeek, avg(Volume) as AvgVolume
from quotes
group by Symbol, DayOfWeek
order by Symbol, DayofWeek;

-- 25. 2025-06-19 20:43, rows returned: 35
select Symbol, strftime('%w',Date) as DayOfWeek, avg(Volume) as AvgVolume
from quotes
group by Symbol, DayOfWeek;

-- 26. 2025-06-19 20:43, rows returned: 7
select Symbol, strftime('%w',Date) as DayOfWeek, avg(Volume) as AvgVolume
from quotes
group by Symbol;

-- 27. 2025-06-19 20:43, rows returned: 35
select Symbol, strftime('%w',Date) as DayOfWeek, avg(Volume) as AvgVolume
from quotes
group by Symbol, DayOfWeek
order by Symbol, DayOfWeek desc;

-- 28. 2025-06-19 20:44, rows returned: 35
select Symbol, strftime('%w',Date) as DayOfWeek, avg(Volume) as AvgVolume
from quotes
group by Symbol, DayOfWeek
order by DayOfWeek desc;

-- 29. 2025-06-19 20:44, rows returned: 35
select Symbol, strftime('%w',Date) as DayOfWeek, avg(Volume) as AvgVolume
from quotes
group by Symbol, DayOfWeek
order by DayOfWeek asc;

-- 30. 2025-06-19 21:15, rows returned: 816
select Symbol, strftime('%Y, %m',Date) as YearMonth, avg(Close) as AverageClosingPrice
from quotes
group by Symbol, YearMonth;

-- 31. 2025-06-19 21:16, rows returned: 816
select Symbol, strftime('%Y-%m',Date) as YearMonth, avg(Close) as AverageClosingPrice
from quotes
group by Symbol, YearMonth;

-- 32. 2025-06-19 21:16, rows returned: 7
select Symbol, strftime('%Y-%3',Date) as YearMonth, avg(Close) as AverageClosingPrice
from quotes
group by Symbol, YearMonth;

-- 33. 2025-06-19 21:17, rows returned: 816
select Symbol, strftime('%Y-%m',Date) as YearMonth, avg(Close) as AverageClosingPrice
from quotes
group by Symbol, YearMonth;

-- 34. 2025-06-19 21:17, rows returned: 0
select *
from citibikerides;

