INSERT INTO artists 
	VALUES (1, 'Kipelov'),
	(2, 'Rammstein'),
	(3, 'Serdyuchka'),
	(4, 'In Flames'),
	(5, 'Sektor gaza'),
	(6, 'Polyphia'),
	(7, 'Serj Tankjan'),
	(8, 'Neiromonax Feofan')
;

INSERT INTO genres 
	VALUES (1, 'Heavy Metal'), 
	(2, 'Lite Metal'), 
	(3, 'Industrial'),
	(4, 'Techno'),
	(5, 'PunkROCK')
;

INSERT INTO albums 
	VALUES (1,'RekiVremen', 2005), 
	(2, 'Sehnsucht', 1997), 
	(3, 'XA-PA-SHO', 2003),
	(4, 'Colony', 1999),
	(5, 'Kolxoznyj Punk', 1989),
	(6, 'Muse', 2018),
	(7, 'Elect the Dead', 2007),
	(8, 'Akustika', 2020),
	(9, 'Zashibis', 2018)
;

INSERT INTO tracks  
	VALUES (1, 1, 'RekiVremen', 326), 
	(2, 2, 'Bestrafe mich', 237), 
	(3, 2, 'Herzeleid', 197),
	(4, 3, 'My Chiki-riki', 169),
	(5, 4, 'Alias', 241),
	(6, 5, 'Swin', 144),
	(7, 5, 'Bayan', 213),
	(8, 6, 'G.O.A.T.', 178),
	(9, 6, 'B.A.D.', 229),
	(10, 7, 'Honking antilope', 271),
	(11, 7, 'Empty walls', 314),
	(12, 7, 'La-la-la', 555),
	(13, 8, 'Xolodno B Lecy', 153),
	(14, 8, 'LECHbIE 3AbABbI', 139),
	(15, 9, 'Prosto zashibis', 98)
;

INSERT INTO collections  
	VALUES (1, 'The best ROCK', 1968), 
	(2, 'So-So', 2020), 
	(3, 'Platinum Collection', 2004),
	(4, '90s - is your time', 2007),
	(5, 'Do you know that?', 2019),
	(6, 'I can''t standing', 1978),
	(7, 'Why so serious?', 1993),
	(8, 'Oh my god.. Serdyuchka!!!', 2018)
;

INSERT INTO genres_artists  
	VALUES (1, 1), 
	(2, 1),
	(1, 2),
	(2, 3), 
	(5, 3),
	(1, 4),
	(3, 4),
	(4, 4),
	(5, 5),
	(1, 6),
	(4, 6),
	(1, 7),
	(2, 7),
	(3, 8)
;

INSERT INTO artists_albums  
	VALUES (1, 1), 
	(2, 2),
	(3, 3), 
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(2, 9),
	(3, 9)
;

INSERT INTO collections_tracks  
	VALUES (1, 1), 
	(1, 3),
	(1, 4),
	(1, 6),
	(1, 7),
	(1, 8),
	(2, 2),
	(2, 4),
	(2, 5),
	(2, 7),
	(3, 1), 
	(3, 2),
	(3, 3),
	(3, 4),
	(3, 5),
	(3, 6),
	(3, 8),
	(4, 1),
	(4, 4),
	(4, 7),
	(5, 1),
	(5, 2),
	(5, 4),
	(5, 5),
	(5, 6),
	(5, 7),
	(5, 8),
	(6, 2),
	(6, 4),
	(6, 6),
	(6, 7),
	(6, 8),
	(7, 1),
	(7, 7),
	(8, 1),
	(8, 2),
	(8, 3),
	(8, 6),
	(8, 7),
	(8, 8)
;