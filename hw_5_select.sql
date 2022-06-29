SELECT g.id, count(*)
FROM genres g LEFT JOIN genres_artists ga ON g.id = ga.id_genre 
LEFT JOIN artists a ON ga.id_artist = a.id
GROUP BY g.id
ORDER BY g.id;


SELECT COUNT(*)
FROM tracks t LEFT JOIN albums a ON t.id_album = a.id
WHERE a.year BETWEEN 2019 AND 2020;


SELECT a.id, AVG(duration)
FROM albums a LEFT JOIN tracks t ON t.id_album = a.id
GROUP BY a.id
ORDER BY a.id;


SELECT DISTINCT ar.id
FROM artists ar LEFT JOIN artists_albums aa ON ar.id = aa.id_artist 
LEFT JOIN albums al ON aa.id_album = al.id
WHERE ar.id NOT IN (SELECT ar.id
FROM albums al LEFT JOIN artists_albums aa ON aa.id_album = al.id 
LEFT JOIN artists ar ON ar.id = aa.id_artist
WHERE al.year = 2020);


SELECT DISTINCT(c.name)
FROM collections c LEFT JOIN collections_tracks ct ON c.id = ct.id_collection 
LEFT JOIN tracks t ON t.id = ct.id_track 
LEFT JOIN albums al ON t.id_album = al.id 
LEFT JOIN artists_albums aa ON al.id = aa.id_album
LEFT JOIN artists ar ON aa.id_artist = ar.id 
WHERE ar.id = 3


SELECT DISTINCT al.name FROM albums al LEFT JOIN artists_albums aa ON al.id = aa.id_album 
LEFT JOIN artists ar ON aa.id_artist = ar.id
WHERE ar.id IN (SELECT a.id FROM artists a 
LEFT JOIN genres_artists ga ON a.id = ga.id_artist 
LEFT JOIN genres g ON ga.id_genre = g.id
GROUP BY a.id
HAVING COUNT(g.id) > 1);


SELECT t.name FROM tracks t LEFT JOIN collections_tracks ct ON t.id = ct.id_track 
LEFT JOIN collections c ON ct.id_collection = c.id 
WHERE c.id IS NULL


SELECT DISTINCT ar.name FROM tracks t LEFT JOIN albums al ON t.id_album = al.id 
LEFT JOIN artists_albums aa ON al.id = aa.id_album 
LEFT JOIN artists ar ON ar.id = aa.id_artist 
WHERE t.duration = (SELECT MIN(duration) FROM tracks)


SELECT al.name FROM albums al LEFT JOIN tracks t ON t.id_album = al.id
GROUP BY al.id 
HAVING COUNT(t.id) = (SELECT COUNT(t.id) FROM albums al LEFT JOIN tracks t ON t.id_album = al.id 
GROUP BY al.id
ORDER BY COUNT(t.id)
LIMIT 1)
