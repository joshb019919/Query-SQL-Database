-- Query movie titles and ratings from 2010, only include numeric ratings.
-- Sort by descending rating, then alphabetically.
-- Using JOIN or more FROM's break monotony, while subqueries seem faster.

-- Reminder about COLLATE NOCASE being true alphabetizing:
-- https://stackoverflow.com/questions/973541/how-to-set-
-- sqlite3-to-be-case-insensitive-when-string-comparing

-- Oiriginally learned from Tim Buchalka and Jean-Paul Roberts'
-- on their Udemy tut: Learn Python Programming Masterclass
SELECT rating, title FROM movies
JOIN ratings ON ratings.movie_id = movies.id
WHERE year = 2010 AND 0.1 <= rating <= 10.0
ORDER BY rating DESC, title COLLATE NOCASE ASC;