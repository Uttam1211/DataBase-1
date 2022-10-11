-- RunCommand EG @C:\CSY1026\constraint_17.sql


--PRIMARY KEY CONSTRAINTS
ALTER TABLE players
ADD CONSTRAINTS pk_players
PRIMARY KEY (player_id);

ALTER TABLE team
ADD CONSTRAINTS pk_team
PRIMARY KEY (team_id);

ALTER TABLE team_players
ADD CONSTRAINTS pk_team_players
PRIMARY KEY (team_id, player_id);

ALTER TABLE categories
ADD CONSTRAINTS pk_categories
PRIMARY KEY (genre_id);

ALTER TABLE tournaments
ADD CONSTRAINTS pk_tournaments
PRIMARY KEY (tournament_id);

ALTER TABLE sponsors
ADD CONSTRAINTS pk_sponsors
PRIMARY KEY (sponsor_id);

ALTER TABLE prizes
ADD CONSTRAINTS pk_prizes
PRIMARY KEY (tournament_id, sponsor_id);

ALTER TABLE tournament_participants
ADD CONSTRAINTS pk_tournament_participants
PRIMARY KEY (tournament_participant_id);

ALTER TABLE rounds
ADD CONSTRAINTS pk_rounds
PRIMARY KEY (round_id);

ALTER TABLE games
ADD CONSTRAINTS pk_games
PRIMARY KEY (game_id);

ALTER TABLE game_participants
ADD CONSTRAINTS pk_game_participants
PRIMARY KEY (tournament_participant_id, game_id);

ALTER TABLE statistices
ADD CONSTRAINTS pk_statistices
PRIMARY KEY (result_id);

-- FOREIGN KEY CONSTRAINTS
ALTER TABLE team_players
ADD CONSTRAINTS fk_t_team_players
FOREIGN KEY (team_id)
REFERENCES team (team_id);

ALTER TABLE team_players
ADD CONSTRAINTS fk_p_team_players
FOREIGN KEY (player_id)
REFERENCES players (player_id);

ALTER TABLE tournaments
ADD CONSTRAINTS fk_c_tournaments
FOREIGN KEY (genre_id)
REFERENCES categories (genre_id);

ALTER TABLE prizes
ADD CONSTRAINTS fk_t_prizes
FOREIGN KEY (tournament_id)
REFERENCES tournaments (tournament_id);

ALTER TABLE prizes
ADD CONSTRAINTS fk_s_prizes
FOREIGN KEY (sponsor_id)
REFERENCES sponsors (sponsor_id);

ALTER TABLE tournament_participants
ADD CONSTRAINTS fk_to_tournament_participants
FOREIGN KEY (tournament_id)
REFERENCES tournaments (tournament_id);

ALTER TABLE tournament_participants
ADD CONSTRAINTS fk_p_tournament_participants
FOREIGN KEY (player_id)
REFERENCES players (player_id);

ALTER TABLE tournament_participants
ADD CONSTRAINTS fk_t_tournament_participants
FOREIGN KEY (team_id)
REFERENCES team (team_id);

ALTER TABLE game_participants
ADD CONSTRAINTS fk_tp_game_participants
FOREIGN KEY (tournament_participant_id)
REFERENCES tournament_participants (tournament_participant_id);

ALTER TABLE game_participants
ADD CONSTRAINTS fk_g_game_participants
FOREIGN KEY (game_id)
REFERENCES games (game_id);

ALTER TABLE games
ADD CONSTRAINTS fk_r_games
FOREIGN KEY (round_id)
REFERENCES rounds (round_id);

ALTER TABLE statistices
ADD CONSTRAINTS fk_g_statistices
FOREIGN KEY (game_id)
REFERENCES games (game_id);

--CHECK UPPER AND CHECK IN  CONSTRAINTS
ALTER TABLE players
ADD CONSTRAINTS ck_firstname_upper
CHECK (p_firstname = UPPER(p_firstname));

ALTER TABLE players
ADD CONSTRAINTS ck_gender_upper
CHECK (gender = UPPER(gender));

ALTER TABLE players
ADD CONSTRAINTS ck_gender
CHECK (gender IN ('M','F'));

ALTER TABLE players
ADD CONSTRAINTS ck_surname_upper
CHECK (p_surname = UPPER(p_surname));

ALTER TABLE team
ADD CONSTRAINTS ck_team_name_upper
CHECK (team_name = UPPER(team_name));

ALTER TABLE team
ADD CONSTRAINTS ck_team_leader_upper
CHECK (team_leader = UPPER(team_leader));

ALTER TABLE statistices
ADD CONSTRAINTS ck_winner_name_upper
CHECK (winner_team_name = UPPER(winner_team_name));

-- add UNIQUE CONSTRAINTS
ALTER TABLE players
ADD CONSTRAINTS u_players_contact
UNIQUE (contact_no);