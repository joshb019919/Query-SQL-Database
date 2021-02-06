-- Query movie titles starring both Johnny Depp and Helena Bonham Carter.
-- INTERSECT idea came from https://www.sqlitetutorial.net/sqlite-intersect/
SELECT title FROM movies WHERE id IN (
    SELECT movie_id FROM stars WHERE person_id IN (
        SELECT id FROM people WHERE name = "Johnny Depp")
    INTERSECT
    SELECT movie_id FROM stars WHERE person_id IN (
        SELECT id FROM people WHERE name = "Helena Bonham Carter"));