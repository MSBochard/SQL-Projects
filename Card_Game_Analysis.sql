/*  Friendly Card Game Results:
During this past winter, a few friends got together every Wednesday night for a friendly game of cards. On some nights they'd play two games,
but never the same game twice on the same night. The usual players were Spunky Sam, Marcimus, Winston, and Hopper. Sometimes, one of the
friends couldn't make it, so there were only three players. But sometimes they'd call another friend to fill-in. In every game they played,
the one with the hightest score was declared the winner. These are their results:
Created by: https://www.khanacademy.org/profile/brianduckworth
*/

CREATE TABLE card_games(id INTEGER PRIMARY KEY AUTOINCREMENT,
    date_played TEXT,
    game_name TEXT,
    player_name TEXT,
    score INTEGER);
    
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/07','Rummy','Spunky Sam',226);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/07','Rummy','Marcimus',418);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/07','Rummy','Winston',523);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/07','Rummy','Hopper',311);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/14','Go Fish','Spunky Sam',7);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/14','Go Fish','Marcimus',5);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/14','Go Fish','Winston',4);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/14','Go Fish','Hopper',10);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/14','Crazy Eights','Spunky Sam',215);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/14','Crazy Eights','Marcimus',167);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/14','Crazy Eights','Winston',109);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/14','Crazy Eights','Hopper',192);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/21','Rummy','Spunky Sam',473);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/21','Rummy','Marcimus',324);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/21','Rummy','Hopper',516);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/28','Crazy Eights','Spunky Sam',119);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/28','Crazy Eights','Marcimus',212);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/28','Crazy Eights','Purple Pi',314);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/01/28','Crazy Eights','Hopper',252);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/04','Go Fish','Spunky Sam',3);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/04','Go Fish','Marcimus',11);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/04','Go Fish','Winston',12);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/04','Go Fish','Hopper',0);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/04','Pitch','Spunky Sam',17);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/04','Pitch','Marcimus',22);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/04','Pitch','Winston',-3);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/04','Pitch','Hopper',9);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/11','Rummy','Amelia',525);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/11','Rummy','Marcimus',419);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/11','Rummy','Winston',316);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/11','Rummy','Hopper',398);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/18','Crazy Eights','Spunky Sam',119);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/18','Crazy Eights','Marcimus',231);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/18','Crazy Eights','Winston',153);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/18','Crazy Eights','Hopper',175);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/25','Pitch','Spunky Sam',12);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/25','Pitch','Marcimus',6);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/25','Pitch','Winston',21);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/25','Go Fish','Spunky Sam',6);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/25','Go Fish','Marcimus',7);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/02/25','Go Fish','Winston',13);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/04','Rummy','Spunky Sam',378);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/04','Rummy','Marcimus',327);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/04','Rummy','Winston',413);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/04','Rummy','Hopper',517);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/11','Pitch','Spunky Sam',-1);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/11','Pitch','Marcimus',-5);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/11','Pitch','Winston',7);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/11','Pitch','Hopper',22);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/18','Crazy Eights','Spunky Sam',91);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/18','Crazy Eights','Marcimus',153);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/18','Crazy Eights','Amelia',174);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/18','Crazy Eights','Mr. Pink',216);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/25','Rummy','Spunky Sam',416);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/25','Rummy','Marcimus',505);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/25','Rummy','Winston',397);
INSERT INTO card_games(date_played,game_name,player_name,score) VALUES ('2015/03/25','Rummy','Hopper',443);


/* The code above is a data set created by https://www.khanacademy.org/profile/brianduckworth.
   Below is SQL code I did to explore different information and statistics from the data set. */


SELECT * FROM card_games;

-- Find the average, minimum, and maximum score for each one of the card games
SELECT game_name, avg(score), min(score), max(score)
FROM card_games
GROUP BY game_name;

-- Find the players that have a total score across all games of 2500 or more
SELECT player_name AS top_players, sum(score) AS total_score
FROM card_games
GROUP BY top_players
HAVING total_score >= 2500;

-- Find the winner for each game each time it was played
SELECT date_played, game_name, player_name AS winner, max(score)
FROM card_games
GROUP BY date_played, game_name;

-- Find how many games were played for each game and who was the best player based on their highest score
SELECT count(DISTINCT date_played) AS num_of_games, game_name,
CASE
    WHEN game_name = 'Crazy Eights' AND score = max(score) 
        THEN (SELECT player_name
                FROM card_games
                GROUP BY game_name
                HAVING game_name = 'Crazy Eights'
                    AND score = max(score))
    WHEN game_name = 'Go Fish' AND score = max(score) 
        THEN (SELECT player_name
                FROM card_games
                GROUP BY game_name
                HAVING game_name = 'Go Fish'
                    AND score = max(score))
    WHEN game_name = 'Rummy' AND score = max(score) 
        THEN (SELECT player_name
                FROM card_games
                GROUP BY game_name
                HAVING game_name = 'Rummy'
                    AND score = max(score))
    WHEN game_name = 'Pitch' AND score = max(score) 
        THEN (SELECT player_name
                FROM card_games
                GROUP BY game_name
                HAVING game_name = 'Pitch'
                    AND score = max(score))
    ELSE NULL
END AS best_player
FROM card_games
GROUP BY game_name;

-- Find each player's highest score and what game that score was from
SELECT player_name, game_name, score
FROM card_games
GROUP BY player_name
HAVING score = max(score);

-- Find the dates where either Mr. Pink or Purple Pi played and what game(s) they played that day
SELECT player_name, date_played, game_name
FROM card_games
WHERE player_name = "Mr. Pink" OR player_name = "Purple Pi";
