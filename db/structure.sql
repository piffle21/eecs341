CREATE TABLE "competitions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "game_sets" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "winner_id" integer, "loser_id" integer, "match_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "games" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "game_set_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "hangouts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "league_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "hangouts_teams" ("hangout_id" integer, "team_id" integer);
CREATE TABLE "leagues" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "league_type" varchar(255), "games_per_set" integer, "sets_per_match" integer, "competition_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "matches" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "winner_id" integer, "loser_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "hangout_id" integer);
CREATE TABLE "players" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "username" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "players_teams" ("team_id" integer, "player_id" integer);
CREATE TABLE "plays_ins" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "game_id" integer, "team_id" integer, "won" boolean, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "registrations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "league_id" integer, "team_id" integer, "rating" decimal);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "teams" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20130308013513');

INSERT INTO schema_migrations (version) VALUES ('20130308014225');

INSERT INTO schema_migrations (version) VALUES ('20130308015536');

INSERT INTO schema_migrations (version) VALUES ('20130312193441');

INSERT INTO schema_migrations (version) VALUES ('20130312193559');

INSERT INTO schema_migrations (version) VALUES ('20130312194119');

INSERT INTO schema_migrations (version) VALUES ('20130312194209');

INSERT INTO schema_migrations (version) VALUES ('20130312194340');

INSERT INTO schema_migrations (version) VALUES ('20130312194410');

INSERT INTO schema_migrations (version) VALUES ('20130312194515');

INSERT INTO schema_migrations (version) VALUES ('20130312194730');

INSERT INTO schema_migrations (version) VALUES ('20130312194823');

INSERT INTO schema_migrations (version) VALUES ('20130312194835');

INSERT INTO schema_migrations (version) VALUES ('20130410002051');

INSERT INTO schema_migrations (version) VALUES ('20130410004126');

INSERT INTO schema_migrations (version) VALUES ('20130410005013');

INSERT INTO schema_migrations (version) VALUES ('20130410170621');

INSERT INTO schema_migrations (version) VALUES ('20130410182913');

INSERT INTO schema_migrations (version) VALUES ('20130411032100');

INSERT INTO schema_migrations (version) VALUES ('20130416024901');

INSERT INTO schema_migrations (version) VALUES ('20130417005129');

INSERT INTO schema_migrations (version) VALUES ('20130417021804');

INSERT INTO schema_migrations (version) VALUES ('20130417023530');

INSERT INTO schema_migrations (version) VALUES ('20130418011152');
