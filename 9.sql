-- Query the stars of all movies from 2004, sorted by birth year.
SELECT name FROM people WHERE id IN (
    SELECT person_id FROM stars WHERE movie_id IN (
        SELECT id FROM movies WHERE year = 2004))
ORDER BY birth;