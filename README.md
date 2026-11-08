# SQL coursework: Data Architecture (SQLite)

Cornell MSBA, BANA 6550 Data Architecture. 182 queries I wrote by hand in SQLiteStudio against eight course SQLite databases.

> **2025 coursework.** The queries are dated 24 May to 17 September 2025, most of them in June. This is not recent work, and it is published as I wrote it.

## What's here

SQLiteStudio keeps a history of every query you run, and I iterated a lot: the same query edited ten times until it worked. This repository holds the final working version of each one, exported from that history, one file per database in `queries/`. Failed attempts and near-duplicates are dropped. Each query has the date I ran it.

| File | Database | Queries |
|---|---|---|
| `facex.sql` | FaceX: social-network profiles (`profiles`, `favoritemusic`, `favoritebooks`, `interests`, `relationshipstatus`, and others) | 114 |
| `itunes.sql` | iTunes: the music store (`Album`, `Artist`, `Track`, `Customer`, `Invoice`, `InvoiceLine`, `Playlist`, and others) | 36 |
| `nyc_citibikes.sql` | NYC Citibikes | 13 |
| `yelp_reduced.sql` | Yelp, reduced | 7 |
| `stocks.sql` | Stocks (`quotes`) | 6 |
| `movies.sql` | Movies (`MovieGross`, `OscarNoms`) | 3 |
| `purchases.sql` | Purchases (`Invoice`) | 2 |
| `billboard.sql` | Billboard (`Artists`, `Rankings`, `Songs`, `Tweets`) | 1 |

## What the queries cover

Counted across the 182 queries:

- **Joins:** 49 use a join, 6 of them a `LEFT JOIN`.
- **Aggregation:** 70 use `GROUP BY` and 10 use `HAVING`.
- **Subqueries:** 16, plus 3 common table expressions.
- **Conditional logic:** 10 use `CASE`.
- **Set operations:** 7 use `UNION`, `EXCEPT` or `INTERSECT`.
- **Dates:** 16 use date functions such as `strftime`.
- **Temp tables:** 12 create a temporary table.
- **Window functions:** 1.
- **Changing data:** 29 create, insert, update, delete or drop something.

## Running them

The databases are course-provided and are not included here. With a copy of one, open it in SQLiteStudio, or run:

```
sqlite3 FaceX.sqlite < queries/facex.sql
```

Some queries create temp tables or change data, so run them against a copy of the database.
