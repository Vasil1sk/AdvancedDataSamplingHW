CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Artists (
	id SERIAL PRIMARY KEY,
	artist_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Genres_Artists (
	id SERIAL PRIMARY KEY,
	genre_id INTEGER REFERENCES Genres(id),
	artist_id INTEGER REFERENCES Artists(id)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(100) NOT NULL,
	album_release_date INTEGER CHECK(album_release_date > 999)
);

CREATE TABLE IF NOT EXISTS Artists_Album (
	id SERIAL PRIMARY KEY,
	artist_id INTEGER REFERENCES Artists(id),
	album_id INTEGER REFERENCES Albums(id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES Albums(id),
	track_name VARCHAR(100) NOT NULL,
	track_duration NUMERIC NOT NULL CHECK(track_duration > 0.01)
);

CREATE TABLE IF NOT EXISTS Tracks_collection (
	id SERIAL PRIMARY KEY,
	tc_name VARCHAR(100) NOT NULL,
	tc_release_date INTEGER CHECK(tc_release_date > 999)
);

CREATE TABLE IF NOT EXISTS TracksTracks (
	id SERIAL PRIMARY KEY,
	track_id INTEGER REFERENCES Tracks(id),
	tc_id INTEGER REFERENCES Tracks_Collection(id)
);