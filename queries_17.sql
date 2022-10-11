-- RunCommand EG @C:\CSY1026\queries_17.sql

--Setup Session
ALTER SESSION 
SET NLS_DATE_FORMAT = "DD-MON-YYYY HH24:MI:SS";
SET PAGESIZE 50;
SET LINESIZE 120;
SET WRAP OFF;

-- test queries  --  display all constraints

SELECT constraint_name FROM user_constraints
WHERE constraint_name NOT LIKE 'SYS%';

-- display all sequence
SELECT sequence_name FROM user_sequences;

-- DISPLAY TEAM_NAME 
SELECT team_name
FROM team ;

--RUNTIME PARAMETER QUERIES WITH 2 table join
-- view team_name with their respect game name
SELECT winner_team_name,game_name
FROM statistices, games
WHERE winner_team_name = '&team_name' AND statistices.game_id = games.game_id;

--WHERE clause
SELECT player_id, p_firstname,p_surname
FROM players
WHERE contact_no IS NOT NULL;

SELECT result_id, winner_team_name
FROM statistices
WHERE winner_team_name = 'TERMINATOR';

-- LOGICAL OPERATOR
SELECT round_duration, round_description
FROM rounds
WHERE round_duration < 5 ;

-- where clause with multiple condition
SELECT p_firstname, contact_no FROM players
WHERE p_firstname LIKE '%HA%'
AND contact_no LIKE '%74%';

SELECT game_name
FROM games
WHERE game_name = 'PUBG'
 OR game_name = 'COD';

SELECT genre_name, total_category 
FROM categories
WHERE total_category < 20 AND genre_name = 'FPS';

--2 table join query
SELECT tournament_name, genre_name
FROM categories, tournaments
WHERE categories.genre_id = tournaments.genre_id;

--3 table join query
SELECT genre_name, tournament_name, prize_title
FROM categories JOIN tournaments
ON categories.genre_id = tournaments.genre_id
JOIN prizes
ON tournaments.tournament_id = prizes.tournament_id;

--Additional query descending
SELECT  tournament_name, genre_name, prize_title, start_date
FROM categories, tournaments, prizes
WHERE categories.genre_id = tournaments.genre_id
AND tournaments.tournament_id = prizes.tournament_id
ORDER BY start_date DESC;


--Additional query ascending
SELECT  tournament_name, genre_name, prize_title, start_date
FROM categories, tournaments, prizes
WHERE categories.genre_id = tournaments.genre_id
AND tournaments.tournament_id = prizes.tournament_id
ORDER BY start_date ASC;

--formatting

SELECT p_firstname||','||gender AS player_gender 
FROM players;


