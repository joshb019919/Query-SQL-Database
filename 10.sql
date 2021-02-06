-- Query directors who's movies rated 9.0 or higher.
SELECT name FROM people WHERE id IN (
    SELECT person_id FROM directors WHERE movie_id IN (
        SELECT id FROM movies WHERE id IN (
            SELECT movie_id FROM ratings WHERE rating >= 9.0)));