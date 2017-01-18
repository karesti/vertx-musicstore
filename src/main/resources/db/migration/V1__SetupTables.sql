CREATE TABLE genres (
  id   BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(100) UNIQUE
);

CREATE TABLE artists (
  id   BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(500) UNIQUE
);

CREATE TABLE albums (
  id    BIGSERIAL NOT NULL PRIMARY KEY,
  title VARCHAR(500) UNIQUE
);

CREATE TABLE tracks (
  id          BIGSERIAL    NOT NULL PRIMARY KEY,
  genre_id    BIGINT       NOT NULL REFERENCES genres,
  album_id    BIGINT       NOT NULL REFERENCES albums,
  artist_id   BIGINT       NOT NULL REFERENCES artists,
  title       VARCHAR(500) NOT NULL,
  mb_track_id VARCHAR(100)
);