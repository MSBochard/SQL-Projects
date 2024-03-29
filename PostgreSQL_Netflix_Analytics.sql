-- I am using PostgreSQL to query a databse containing Netflix data in order to answer questions about the data.

-- How many movie titles are there in the database?

SELECT COUNT(title)
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'Movie';

-- When was the most recent batch of tv shows and/or movies added to the database?

SELECT MAX(DATE(date_added))
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info";

-- List all the movies and tv shows in alphabetical order.

SELECT title, type
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
ORDER BY title;

-- Who was the Director for the movie Bright Star?

SELECT p."director"
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info" AS t
JOIN "CharlotteChaze/BreakIntoTech"."netflix_people" AS p
ON t."show_id" = p."show_id"
WHERE t."type" = 'Movie' AND t."title" = 'Bright Star';

-- What is the oldest movie in the database and what year was it made?

SELECT title, release_year
FROM "CharlotteChaze/BreakIntoTech"."netflix_titles_info"
WHERE type = 'Movie'
ORDER BY release_year
LIMIT 1;
