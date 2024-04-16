-- This migrates the old database to support pretendo. Don't forget to backup the database first.
ALTER TABLE discordFriends
ADD network tinyint; 
UPDATE discordFriends set network=0

Create Table pretendo_friends(
  friendCode text NOT NULL UNIQUE,
  online boolean NOT NULL,
  titleID text NOT NULL,
  updID text NOT NULL,
  lastAccessed bigint NOT NULL,
  accountCreation bigint NOT NULL,
  username text,
  message text,
  mii text,
  joinable boolean,
  gameDescription text,
  lastOnline bigint NOT NULL,
  jeuFavori bigint NOT NULL,
);