-- join director dan genre ke table movies

select "movies"."id", replace("movies"."name", '$', ''), "directors"."first_name" as "director_name", "movies_genres"."genre" from "movies"
join "movies_directors" on "movies_directors"."movie_id" = "movies"."id"
join "directors" on "directors"."id" = "movies_directors"."director_id"
join "movies_genres" on "movies_genres"."movie_id" = "movies_directors"."director_id" limit 50 offset 20;

-- join movies dan roles berdasarkan actors
select "actors"."id", "actors"."first_name", "roles"."role", "movies"."name" from "actors"
join "roles" on "roles"."actor_id" = "actors"."id"
join "movies" on "movies"."id" = "roles"."movie_id"
limit 50 offset 100;