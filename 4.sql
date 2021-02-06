-- Query the number of movies with a rating of 10.0.
SELECT count(title) FROM movies WHERE id IN (
    SELECT movie_id FROM ratings WHERE rating = 10.0);