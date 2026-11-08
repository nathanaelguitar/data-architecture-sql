-- Database: stocks
-- Queries written in SQLiteStudio (SQLite). Each is the final working version of a query I iterated on.

-- 1. 2025-06-19
Select Symbol, strftime('%Y',Date) as Year, strftime('%m',Date) as Month, Sum(Volume)
from quotes
where Symbol = 'MSFT' and strftime('%m',Date) = '01'
group by Symbol, Year, Month;

-- 2. 2025-06-19
Select Symbol, Max(Close) as MaxClosePrice
from quotes
where Date <= '2018-01-01' AND Date <= '2018-02-11'
group by Symbol;

-- 3. 2025-06-19
Select Symbol, Date, Max(Close) as MaxClosePrice
from quotes
where Date <= '2018-01-01' AND Date <= '2018-02-11'
group by Symbol;

-- 4. 2025-06-19
select Symbol, strftime('%w',Date) as DayOfWeek, avg(Volume) as AvgVolume
from quotes
group by Symbol, DayOfWeek;

-- 5. 2025-06-19
Select Symbol, Max(Close) as MaxClosePrice
from quotes
where Date >= '2018-01-01' AND Date <= '2018-02-11'
group by Symbol;

-- 6. 2025-06-19
select Symbol, strftime('%Y-%m',Date) as YearMonth, avg(Close) as AverageClosingPrice
from quotes
group by Symbol, YearMonth;

