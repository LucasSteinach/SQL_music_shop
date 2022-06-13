CREATE TABLE IF NOT EXISTS genres(
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS artists (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	year INTEGER CHECK(year > 1900)
);

CREATE TABLE IF NOT EXISTS tracks (
	id SERIAL PRIMARY KEY,
	id_album INTEGER REFERENCES albums(id),
	name VARCHAR(80) NOT NULL,
	duration INTEGER CHECK(duration > 0)
);

CREATE TABLE IF NOT EXISTS collections (
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	release_date INTEGER CHECK(release_date > 1900)
);

CREATE TABLE IF NOT EXISTS genres_artists (
	id_genre INTEGER NOT NULL REFERENCES genres(id),
	id_artist INTEGER NOT NULL REFERENCES artists(id),
	CONSTRAINT gen_art PRIMARY KEY (id_genre, id_artist)
);

CREATE TABLE IF NOT EXISTS collections_tracks (
	id_collection INTEGER NOT NULL REFERENCES collections(id),
	id_track INTEGER NOT NULL REFERENCES tracks(id),
	CONSTRAINT col_trk PRIMARY KEY (id_collection, id_track)
);

CREATE TABLE IF NOT EXISTS artists_albums (
	id_artist INTEGER NOT NULL REFERENCES artists(id),
	id_album INTEGER NOT NULL REFERENCES albums(id),
	CONSTRAINT art_alb PRIMARY KEY (id_artist, id_album)
);
