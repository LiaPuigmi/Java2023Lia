USE mydb;
show tables;

insert into album VALUES (1, 'Agua de luna','2002-02-20'),
(2, 'Agua de fuego','2004-03-20'),
(3, 'Agua de miel','2000-12-25'),
(4, 'Miel de luna','2001-12-20'),
(5, 'Fuego de agua','2014-03-10'),
(6, 'Luna de miel','2020-12-25'),
(7, 'Fuego de miel','2007-06-20'),
(8, 'Aire de fuego','2008-10-14'),
(9, 'Aire de miel','2003-11-21'),
(10, 'Aire de luna','2012-08-29');

insert into artist VALUES (1, 'Los caños'),
(2, 'Alejandro Sanz'),
(3, 'Malú'),
(4, 'Alex Ubago'),
(5, 'La Oreja de Van Gogh'),
(6, 'Amaral'),
(7, 'Marea'),
(8, 'Eskorbuto'),
(9, 'Reincidentes'),
(10, 'Lendakaris Muertos');

insert into genre VALUES (1, 'Regge'),
(2, 'Reggueton'),
(3, 'Hip-Hop'),
(4, 'Metal'),
(5, 'Pop'),
(6, 'Rock'),
(7, 'Punk'),
(8, 'Punk-Rock'),
(9, 'Post-punk'),
(10, 'Flamenco');

SELECT * FROM album;
SELECT * FROM artist;
SELECT * FROM genre;