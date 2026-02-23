-- nomor 1
select "id", "name", "year" 
from movies 
where "year" > 2000 
limit 10;

-- nomor 2
select "first_name", "last_name" 
from actors 
where "first_name" 
ilike '%s' and "last_name" 
ilike '%s' limit 10

-- nomor 3
SELECT "id", "name", "rankscore"
FROM movies
WHERE "rankscore" BETWEEN 5 AND 7
AND "year" = 2004
ORDER BY "rankscore" limit 10;

-- nomor 4
select count("name") 
from movies 
where "rankscore" = 6;