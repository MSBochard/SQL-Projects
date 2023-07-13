/* This code will be using a dataset of Spotify data for the Top 50 Songs of 2021.
The data is in .csv format and will need to be imported. Following making a table,
I will analyze the data using SQL queries. */

-- Create the table for the Spotify data to be imported into.

CREATE TABLE BIT_DB.Spotifydata (
  id integer PRIMARY KEY,
  artist_name varchar NOT NULL,
  track_name varchar NOT NULL,
  track_id varchar NOT NULL,
  popularity integer NOT NULL,
  danceability decimal(4,3) NOT NULL,
  energy decimal(4,3) NOT NULL,
  song_key integer NOT NULL,
  loudness decimal(5,3) NOT NULL,
  song_mode integer NOT NULL,
  speechiness decimal(5,4) NOT NULL,
  acousticness decimal(6,5) NOT NULL,
  instrumentalness text NOT NULL,
  liveness decimal(5,4) NOT NULL,
  valence decimal(4,3) NOT NULL,
  tempo decimal(6,3) NOT NULL,
  duration_ms integer NOT NULL,
  time_signature integer NOT NULL
);

-- What songs have a duration longer than three and a half minutes?

SELECT track_name AS song, artist_name AS artist, duration_ms
FROM BIT_DB.Spotifydata
WHERE duration_ms > 3.5 * 60 * 1000
ORDER BY duration_ms DESC;

-- What songs have a popularity of at least 90?

SELECT track_name AS song, artist_name AS artist, popularity
FROM BIT_DB.Spotifydata
WHERE popularity >= 90
ORDER BY popularity DESC;

-- Which artists have multiple songs in the Top 50? How many songs did they have?

SELECT artist_name AS artist, COUNT(track_name) AS total_songs
FROM BIT_DB.Spotifydata
GROUP BY artist
HAVING total_songs > 1
ORDER BY total_songs DESC;

-- What's the average danceability for the 10 most popular songs?

SELECT AVG(danceability)
FROM BIT_DB.Spotifydata
WHERE track_name 
IN (SELECT track_name
    FROM BIT_DB.Spotifydata
    ORDER BY popularity DESC
    LIMIT 10);

/* Calculate the average popularity for the artists in the Spotify data table. Then, for every artist
with an average popularity of 90 or above, show their name, their average popularity, and label them as a “Top Star” */

WITH tablePopularity AS (
    SELECT artist_name, AVG(popularity) AS avg_popularity
    FROM Spotifydata
    GROUP BY artist_name
)
SELECT artist_name, avg_popularity, 'Top Star' AS tag
FROM tablePopularity
WHERE avg_popularity >= 90
ORDER BY avg_popularity DESC;

