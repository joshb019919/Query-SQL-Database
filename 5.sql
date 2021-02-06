-- Query year and title of the 10 formal Harry Potter films, sorted by year.
-- For posterity, there are other titles containing "Harry Potter",
-- but they were not in the search criteria.
SELECT year, title FROM movies WHERE title LIKE "Harry Potter%" ORDER BY year;