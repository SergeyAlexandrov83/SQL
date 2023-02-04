insert into genre ("name") values
	('Rock'),
	('Metall'),
	('Pop'),
	('Rap'),
	('Jazz');
insert into artist ("name") values
	('Ария'),
	('Metallica'),
	('Алла Пугачева'),
	('Eminem'),
	('Luis Armstrong');
insert into genre_artist (genre_id, artist_id) values
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5);
insert into album ("name", "year") values
	('Игра с огнем', 2019),
	('Black album', 1995),
	('Unforgiven', 1998),
	('Unforgiven II', 2000),
	('Арлекино', 1936),
	('White Nigger', 1999),
	('Slim Shaggy', 2001),
	('Music for love', 1965);
insert into artist_album (artist_id, album_id) values
	(1, 1),
	(2, 2),
	(2, 3),
	(2, 4),
	(3, 5),
	(4, 6),
	(4, 7),
	(5, 8);
insert into track (album_id, "name", lenght) values
	(1, 'Здесь куют металл', 259),
	(1, 'Кровь за кровь', 311),
	(2, 'Nothing else matters', 423),
	(3, 'Unforgiven I', 253),
	(4, 'Unforgiven II', 287),
	(4, 'Unforgiven III', 291),
	(4, 'Fuel', 221),
	(5, 'Арлекино', 64),
	(6, 'I', 180),
	(6, 'dont', 185),
	(7, 'know', 244),
	(7, 'no more', 242),
	(8, 'I love music', 159),
	(8, 'Music for love', 329),
	(8, 'Music is love', 214);
insert into compilation ("name", "year") values
	('Best', 2020),
	('Metall legend', 2000),
	('Just compilation', 2000),
	('just compilation 2', 2005),
	('Old school', 1945),
	('Rap star', 2003),
	('Rap star remastered', 2006),
	('Best of Jazz', 1985);
insert into compilation_track (compilation_id, track_id) values
	(1, 1),
	(1, 3),
	(1, 5),
	(1, 7),
	(2, 3),
	(2, 8),
	(3, 9),
	(3, 11),
	(4, 15),
	(4, 14),
	(5, 8),
	(5, 9),
	(6, 10),
	(6, 11),
	(6, 1),
	(7, 2),
	(7, 4),
	(8, 6),
	(8, 12),
	(8, 13),
	(8, 1);