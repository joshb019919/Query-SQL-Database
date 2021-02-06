-- Query the voice actors/actresses from Toy Story.
SELECT
    name
FROM
    people,
    stars,
    movies
WHERE
    people.id = stars.person_id AND
    stars.movie_id = movies.id AND
    movies.title = "Toy Story";

-- I've found it difficult to develop a single organizational method for
-- SQLite query structures.  A single line can be easier to follow, but
-- although too long a line needs broken, a single query with single
-- values for each statement is too sparse.