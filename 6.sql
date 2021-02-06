-- Query the average rating of all movies from 2012.

-- AVG() function reminder from Google search: averaging sqlite
-- Learned to use the field.value syntax from Tim Buchalka and
-- Jean-Paul Roberts' Learn Python Programming Masterclass
SELECT AVG(rating) FROM ratings, movies
WHERE movies.id = ratings.movie_id AND movies.year = 2012;