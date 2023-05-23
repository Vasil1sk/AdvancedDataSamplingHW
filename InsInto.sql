INSERT INTO artists(artist_name)
	VALUES
		('Lady Gaga'),
		('Johann Sebastian Bach'),
		('Skillet'),
		('Eminem'),
		('Alan Walker'),
		('Zivert'),
		('Thousand Foot Krutch'),
		('CHVRCHES'),
		('One Direction');

INSERT INTO genres(genre_name)
	VALUES
		('Pop'),
		('Classic'),
		('Rock'),
		('Rap'),
		('EDM');

INSERT INTO genres_artists(genre_id, artist_id)
	VALUES
		(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),
		(1, 6),
		(3, 7),
		(1, 8),
		(1, 9),
		(1, 5);

INSERT INTO albums(album_name, album_release_date)
	VALUES
		('The Fame', '2008'),
		('Awake', '2009'),
		('Welcome To The Masquerade(Fan Edition)', '2009'),
		('Different World', '2018'),
		('Bach: Greatest Hits', '1959'),
		('The Marshall Mathers LP', '2001'),
		('Love Is Dead', '2018'),
		('Vinyl #1', '2019'),
		('Midnight Memories(Deluxe)', '2013');

INSERT INTO artists_album(artist_id, album_id)
	VALUES
		(1, 1),
		(2, 5),
		(3, 2),
		(4, 6),
		(5, 4),
		(7, 3),
		(8, 7),
		(9, 9);

INSERT INTO tracks(album_id, track_name, track_duration)
	VALUES
		(1, 'Just Dance', '00:04:01'),
		(1, 'Love Game', '00:03:36'),
		(2, 'Hero', '00:03:06'),
		(2, 'Monster', '00:02:58'),
		(2, 'Awake and Alive', '00:03:29'),
		(3, 'Take It Out On Me', '00:03:17'),
		(4, 'Sing Me to Sleep', '00:03:07'),
		(4, 'Faded', '00:03:32'),
		(5, 'Toccata and Fugue in D Minor', '00:09:20'),
		(6, 'The Real Slim Shady', '00:04:44'),
		(7, 'Miracle', '00:03:08'),
		(7, 'Never Say Die', '00:04:23'),
		(8, 'Credo', '00:03:04'),
		(9, 'Story of My Life', '00:04:05'),
		(9, 'You & I', '00:03:57'),
		(3, 'Look Away', '00:04:01');

INSERT INTO tracks_collection(tc_name, tc_release_date)
	VALUES
		('Lady Gaga favorites', 2008),
		('SomeRock', 2009),
		('Pop Collection', 2019),
		('Pop & Rock', 2009),
		('Rap & Pop', 2008),
		('New Pop', 2019),
		('Alan Walker favorites', 2018),
		('Such different classics', 2019);
	
INSERT INTO trackstracks(track_id, tc_id)
	VALUES
		(1, 1),
		(2, 1),
		(3, 2),
		(4, 2),
		(5, 2),
		(6, 2),
		(1, 3),
		(2, 3),
		(11, 3),
		(12, 3),
		(13, 3),
		(14, 3),
		(15, 3),
		(1, 4),
		(2, 4),
		(3, 4),
		(4, 4),
		(5, 4),
		(6, 4),
		(1, 5),
		(2, 5),
		(10, 5),
		(11, 6),
		(12, 6),
		(13, 6),
		(7, 7),
		(8, 7),
		(9, 8),
		(10, 8);
