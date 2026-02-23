--  nomor 1

select
    "directors"."first_name" as "director_name",
    count(distinct "movies_genres"."genre") as "total_genres"
from "directors"
join "movies_directors"
    on "movies_directors"."director_id" = "directors"."id"
join "movies"
    on "movies"."id" = "movies_directors"."movie_id"
join "movies_genres"
    on "movies_genres"."movie_id" = "movies"."id"
group by "directors"."first_name"
order by "total_genres" desc
limit 50;

-- nomor 2

select
    "actors"."id",
    "actors"."first_name",
    string_agg("roles"."role", ', ') as "roles"
from "actors"
join "roles"
    on "roles"."actor_id" = "actors"."id"
group by
    "actors"."id",
    "actors"."first_name"
having count("roles"."role") = 5
limit 50 offset 50;

-- nomor 3

select "directors"."id",
       "directors"."first_name" as "director_name",
       count(distinct "movies"."id") AS "total_movies"
from "directors"
join "directors_genres" on "directors_genres"."director_id" = "directors"."id"
join "movies_directors" on "movies_directors"."director_id" = "directors_genres"."director_id"
join "movies" on "movies"."id" = "movies_directors"."movie_id"
group by "directors"."id",
         "directors"."first_name"
order by "total_movies" desc
limit 10; 

-- nomor 4

select "year",
       count("id") AS "total_movies"
from "movies"
group by "year"
order by "total_movies" desc
limit 5;

-- nomor 5

select "movies"."id",
       "movies"."name",
       string_agg("movies_genres"."genre", ', ') as "genres"
from "movies"
join "movies_genres" on "movies_genres"."movie_id" = "movies"."id"
group by "movies"."id",
         "movies"."name"
limit 50;