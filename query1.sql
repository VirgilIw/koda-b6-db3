-- nomor 1
select count("year") 
from movies 
where "year" > 2000 
limit 10;

-- nomor 2
select count("first_name")
from actors 
where "first_name" 
ilike '%s' and "last_name" 
ilike '%s'

-- nomor 3
select count("rankscore")
from movies
where "rankscore" between 5 and 7
and "year" between 2004 and 2006

-- nomor 4
select count("name") 
from movies 
where "rankscore" = 6;