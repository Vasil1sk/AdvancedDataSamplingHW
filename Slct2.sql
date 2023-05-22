SELECT g.genre_name, COUNT(a.artist_name) FROM genres g 
	LEFT JOIN genres_artists ga ON g.id = ga.genre_id
	LEFT JOIN artists a ON ga.artist_id = a.id
	GROUP BY g.genre_name
	ORDER BY COUNT(a.id) DESC;
	
SELECT COUNT(t.track_name) FROM tracks t
	LEFT JOIN albums a ON t.album_id = a.id
	WHERE a.album_release_date >= 2019 AND a.album_release_date <= 2020
	GROUP BY t.track_name;
	
SELECT a.album_name, AVG(t.track_duration) FROM albums a
	LEFT JOIN tracks t ON t.album_id = a.id
	GROUP BY a.album_name
	ORDER BY AVG(t.track_duration) DESC;
	
SELECT a.artist_name FROM artists a
	LEFT JOIN artists_album aa ON aa.artist_id = a.id
	LEFT JOIN albums alb ON aa.album_id = alb.id
	WHERE alb.album_release_date != 2020;
	
SELECT DISTINCT tc.tc_name FROM tracks_collection tc
	LEFT JOIN trackstracks tt ON tc.id = tt.tc_id
	LEFT JOIN tracks t ON t.id = tt.track_id
	LEFT JOIN albums alb ON t.album_id = alb.id
	LEFT JOIN artists_album aa ON aa.album_id = alb.id
	LEFT JOIN artists a ON aa.artist_id = a.id
	WHERE a.artist_name ILIKE 'Lady Gaga';

SELECT alb.album_name FROM albums alb
	LEFT JOIN artists_album aa ON alb.id = aa.album_id
	LEFT JOIN artists a ON aa.artist_id = a.id
	LEFT JOIN genres_artists ga ON ga.artist_id = a.id
	LEFT JOIN genres g ON ga.genre_id = g.id
	GROUP BY alb.album_name
	HAVING COUNT(DISTINCT g.genre_name) > 1;

SELECT t.track_name FROM tracks t
	LEFT JOIN trackstracks tt ON t.id = tt.track_id 
	WHERE tt.track_id IS NULL;
	
SELECT DISTINCT a.artist_name, t.track_duration FROM artists a
	LEFT JOIN artists_album aa ON aa.artist_id = a.id
	LEFT JOIN albums alb ON aa.album_id = alb.id
	LEFT JOIN tracks t ON t.album_id = alb.id
	GROUP BY a.artist_name, t.track_duration
	HAVING t.track_duration = (SELECT MIN(track_duration) FROM tracks)
	ORDER BY a.artist_name;
	
SELECT DISTINCT alb.album_name FROM albums alb
	LEFT JOIN tracks t ON t.album_id = alb.id
	WHERE t.album_id IN (
		SELECT album_id FROM tracks
		GROUP BY album_id
		HAVING COUNT(id) = (
			SELECT COUNT(id) FROM tracks
			GROUP BY album_id
			ORDER BY count
			LIMIT 1)
		)
	ORDER BY alb.album_name;