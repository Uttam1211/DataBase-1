-- RunCommand EG @C:\CSY1026\create_17.sql

--CREATE TABLES
CREATE TABLE players (
player_id		NUMBER(8),
p_firstname		VARCHAR2(15),
p_surname		VARCHAR2(15),
gender			CHAR(2),
contact_no		VARCHAR2(10) NOT NULL);

CREATE TABLE team (
team_id			NUMBER(8),
team_name		VARCHAR2(15),
team_leader		VARCHAR2(10));

CREATE TABLE team_players (
team_id			NUMBER(8) NOT NULL,
player_id		NUMBER(8) NOT NULL,
total_player	NUMBER(5));

CREATE TABLE categories (
genre_name			VARCHAR2(15),
genre_id			NUMBER(8),
total_category		NUMBER(5),
genre_description	VARCHAR2(35));

CREATE TABLE tournaments (
tournament_id		NUMBER(8),
genre_id			NUMBER(8) NOT NULL,
start_date			DATE DEFAULT SYSDATE,
tournament_name		VARCHAR2(25));

CREATE TABLE sponsors (
sponsor_id			NUMBER(8),
sponsor_name		VARCHAR2(25),
adv_type			CHAR(10));

CREATE TABLE prizes (
tournament_id		NUMBER(8) NOT NULL,
sponsor_id			NUMBER(8) NOT NULL,
prize_title			VARCHAR2(30) DEFAULT 'Winner');

CREATE TABLE tournament_participants (
tournament_participant_id		NUMBER(8),
tournament_id					NUMBER(8) NOT NULL,
player_id						NUMBER(8),
team_id							NUMBER(8));

CREATE TABLE rounds (
round_id				NUMBER(8),
round_duration			NUMBER(4,2),
round_description		VARCHAR2(35));

CREATE TABLE games (
game_id				NUMBER(8),
game_name			VARCHAR2(15),
round_id			NUMBER(8) NOT NULL);

CREATE TABLE game_participants (
tournament_participant_id		NUMBER(8) NOT NULL,
game_id							NUMBER(8) NOT NULL);

CREATE TABLE statistices (
result_id			NUMBER(8),
game_id				NUMBER(8) NOT NULL,
winner_team_name	VARCHAR2(15) );

-- CREATE SEQUENCES

CREATE SEQUENCE seq_players
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_team
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_team_players 
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_categories
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_tournaments
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_sponsors
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_prizes
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_tournament_participants
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_game_participants
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_games
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_rounds
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_statistices
INCREMENT BY 1
START WITH 1;



