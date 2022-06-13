SELECT name, "year" 
FROM albums
WHERE "year" = 2018;

SELECT name, duration
FROM tracks
ORDER BY duration DESC
LIMIT 1;

SELECT name
FROM tracks
WHERE duration >= 210;

SELECT name
FROM collections
WHERE release_date >= 2018 AND release_date <=2020;

SELECT name
FROM artists
WHERE name NOT LIKE '% %';

SELECT name
FROM tracks
WHERE name iLIKE '%my%';