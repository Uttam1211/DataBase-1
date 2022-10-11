-- RunCommand EG @C:\CSY1026\drop_17.sql
-- DESC table_name;
-- SELECT TNAME FROM TAB;
--SELECT * from table_name;

-- DROP FOREIGN key CONSTRAINTS
ALTER TABLE team_players
DROP CONSTRAINTS fk_t_team_players;

ALTER TABLE team_players
DROP CONSTRAINTS fk_p_team_players;

ALTER TABLE tournaments
DROP CONSTRAINTS fk_c_tournaments;

ALTER TABLE prizes
DROP CONSTRAINTS fk_t_prizes;

ALTER TABLE prizes
DROP CONSTRAINTS fk_s_prizes;

ALTER TABLE tournament_participants
DROP CONSTRAINTS fk_to_tournament_participants;

ALTER TABLE tournament_participants
DROP CONSTRAINTS fk_p_tournament_participants;

ALTER TABLE tournament_participants
DROP CONSTRAINTS fk_t_tournament_participants;

ALTER TABLE game_participants
DROP CONSTRAINTS fk_tp_game_participants;

ALTER TABLE game_participants
DROP CONSTRAINTS fk_g_game_participants;

ALTER TABLE games
DROP CONSTRAINTS fk_r_games;

ALTER TABLE statistices
DROP CONSTRAINTS fk_g_statistices;

--DROP primary KEY CONSTRAINTS 
ALTER TABLE players
DROP CONSTRAINTS pk_players;

ALTER TABLE team
DROP CONSTRAINTS pk_team;

ALTER TABLE team_players
DROP CONSTRAINTS pk_team_players;

ALTER TABLE categories
DROP CONSTRAINTS pk_categories;

ALTER TABLE tournaments
DROP CONSTRAINTS pk_tournaments;

ALTER TABLE sponsors
DROP CONSTRAINTS pk_sponsors;

ALTER TABLE prizes
DROP CONSTRAINTS pk_prizes;

ALTER TABLE tournament_participants
DROP CONSTRAINTS pk_tournament_participants;

ALTER TABLE rounds
DROP CONSTRAINTS pk_rounds;

ALTER TABLE games
DROP CONSTRAINTS pk_games;

ALTER TABLE game_participants
DROP CONSTRAINTS pk_game_participants;

ALTER TABLE statistices
DROP CONSTRAINTS pk_statistices;

--DROP CHECK CONSTRAINTS
ALTER TABLE players
DROP CONSTRAINTS ck_firstname_upper;

ALTER TABLE players
DROP CONSTRAINTS ck_surname_upper;

ALTER TABLE players
DROP CONSTRAINTS ck_gender_upper;

ALTER TABLE players
DROP CONSTRAINTS ck_gender;

ALTER TABLE team
DROP CONSTRAINTS ck_team_name_upper;

ALTER TABLE team
DROP CONSTRAINTS ck_team_leader_upper;

ALTER TABLE statistices
DROP CONSTRAINTS ck_winner_name_upper;

-- DROP unique CONSTRAINTS
ALTER TABLE players
DROP CONSTRAINTS u_players_contact;


--DROP TABLES
DROP TABLE players;
DROP TABLE team;
DROP TABLE team_players;
DROP TABLE categories;
DROP TABLE tournaments;
DROP TABLE sponsors;
DROP TABLE prizes;
DROP TABLE tournament_participants;
DROP TABLE rounds;
DROP TABLE games;
DROP TABLE game_participants;
DROP TABLE statistices;

--DROP SEQUENCES
DROP SEQUENCE seq_players;
DROP SEQUENCE seq_team;
DROP SEQUENCE seq_team_players;
DROP SEQUENCE seq_categories;
DROP SEQUENCE seq_tournaments;
DROP SEQUENCE seq_sponsors;
DROP SEQUENCE seq_prizes;
DROP SEQUENCE seq_tournament_participants;
DROP SEQUENCE seq_game_participants;
DROP SEQUENCE seq_games;
DROP SEQUENCE seq_rounds;
DROP SEQUENCE seq_statistices;

--remove TABLE from Recyclebin
PURGE RECYCLEBIN;

