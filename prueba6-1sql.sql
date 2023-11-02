-- titulo year urlImg certificate runetime rankin description metaranking votes moneyWin
INSERT INTO newbbdd.movies (`title`,`year`,`image_url`,`certificate`,`runtime`,`imdb_rating`,`description`,`metascore`,`votes`,`gross`) VALUES 
  ('Cadena Perpetua', 1994, 'https://www.imdb.com/title/tt0111161/mediaviewer/rm3479887360/?ref_=tt_ov_i', '13', 142, 9.3,
  'Andy Dufresne es encarcelado por matar a su esposa y al amante de esta. Tras una dura adaptación, intenta mejorar las condiciones 
  de la prisión y dar esperanza a sus compañeros.', 82,2800000, 28884716),
  ('El Padrino', 1972, 'https://www.imdb.com/title/tt0068646/mediaviewer/rm1206482688/?ref_=tt_ov_i', '18', 175, 9.2,
  'El envejecido patriarca de una dinastía del crimen organizado en la ciudad de Nueva York de la posguerra transfiere
  el control de su imperio clandestino a su reacio hijo menor.', 100, 2000000, 250341816),
  ('El Caballero Oscuro', 2008, 'https://www.imdb.com/title/tt0468569/mediaviewer/rm4023877632/?ref_=tt_ov_i', '12' ,152, 9.0,
  'Cuando la amenaza conocida como el Joker causa estragos y el caos en Gotham City, Batman debe aceptar una de las mayores pruebas 
  psicológicas y físicas para luchar contra la injusticia.', 84, 2800000, 1007257536),
  ('El padrino (parte II)', 1974, 'https://www.imdb.com/title/tt0071562/mediaviewer/rm2697235201/?ref_=tt_ov_i', '18', 202, 9.0,
  'Se retratan los inicios de la vida y la carrera de Vito Corleone en el Nueva York de los años 20, mientras su hijo, Michael, amplía 
  y refuerza su control sobre el sindicato del crimen familiar.', 90, 1300000, 47961919),
  ('La lista de Schindler', 1993,'https://www.imdb.com/title/tt0108052/mediaviewer/rm1609135872/?ref_=tt_ov_i', '12', 195, 9.0, 
  'En la Polonia ocupada por los alemanes durante la Segunda Guerra Mundial, el industrial Oskar Schindler se preocupa por sus trabajadores 
  judíos tras presenciar su persecución por los nazis.',95,1400000, 322161245),
  ('El señor de los anillos: El retorno del rey', 2003,'https://www.imdb.com/title/tt0167260/mediaviewer/rm622753536/?ref_=tt_ov_i','12', 201, 9.0,
  'Gandalf y Aragorn lideran el mundo de los hombres contra la armada de Sauron para distraer su atención de Frodo y Sam, quienes se aproximan al 
  Monte del Destino con el Anillo Único.',94,1900000,1147997407),
  ('Pulp Fiction', 1994,'https://www.imdb.com/title/tt0110912/mediaviewer/rm4283528192/?ref_=tt_ov_i','18', 154, 8.9,
  'Las vidas de dos mafiosos, un boxeador, la esposa de un gánster y un par de bandidos se entrelazan en cuatro historias 
  de violencia y redención.',95,2200000,213928762),
  ('El señor de los anillos: La comunidad del anillo', 2001,'https://www.imdb.com/title/tt0120737/mediaviewer/rm3578885120/?ref_=tt_ov_i','12', 178, 8.8,
  'Un hobbit de la Comarca y ocho compañeros emprenden un viaje para destruir el poderoso Anillo Único y salvar la Tierra Media del Señor Oscuro Sauron.',
  92,2000000,898501819),
  ('El club de la lucha', 1999,'https://www.imdb.com/title/tt0137523/mediaviewer/rm136483841/?ref_=tt_ov_i','18', 139, 8.8,
  'Un oficinista insomne y un desentendido fabricante de jabones forman un club de lucha clandestino que se convierte en 
  mucho más.',67,2200000,101209702),
  ('El señor de los anillos: Las dos torres', 2002,'https://www.imdb.com/title/tt0167261/mediaviewer/rm3993466624/?ref_=tt_ov_i','12', 179, 8.8,
  'Mientras Frodo y Sam se acercan a Mordor con la ayuda del astuto Gollum, la comunidad dividida se enfrenta al nuevo aliado de Sauron, Saruman, 
  y a sus hordas de Isengard.',87,1700000,948734205);
  
  
  INSERT INTO newbbdd.directors (`director_name`,`about`) VALUES
  ('Peter Jackson','Peter Jackson nació el 31 de octubre de 1961 en Nueva Zelanda. Es un productor y director, conocido por El señor de los anillos: 
  La comunidad del anillo (2001), Mal gusto (1987) y King Kong (2005). Está casado con Fran Walsh. Tienen dos niños.'),
  ('Frank Darabont','Frank Darabont nació el 28 de enero de 1959 en Francia. Es un escritor y productor, conocido por Cadena perpetua (1994), 
  La milla verde (1999) y La niebla (2007).'),
  ('Francis Ford Coppola','Francis Ford Coppola nació el 7 de abril de 1939 en Detroit, Michigan, Estados Unidos. Es un productor y director, conocido por Apocalypse Now (1979), 
  La conversación (1974) y El padrino (1972). Está casado con Eleanor Coppola desde el 2 de febrero de 1963. Tienen tres niños.'),
  ('Christopher Nolan','Christopher Nolan nació el 30 de julio de 1970 en Londres, Inglaterra. Es un escritor y productor, conocido por Tenet (2020), Interstellar (2014) y Origen (2010). 
  Está casado con Emma Thomas. Tienen cuatro niños.'),
  ('Steven Spielberg','Steven Spielberg nació el 18 de diciembre de 1946 en Cincinnati, Ohio, Estados Unidos. Es un productor y escritor, conocido por La lista de Schindler (1993), E.T. 
  El extraterrestre (1982) y Salvar al soldado Ryan (1998). Está casado con Kate Capshaw desde el 12 de octubre de 1991. Tienen cinco niños. Ha estado casado con Amy Irving.'),
  ('Quentin Tarantino','Quentin Tarantino nació el 27 de marzo de 1963 en Knoxville, Tennessee, Estados Unidos. Es un escritor y actor, conocido por Reservoir Dogs (1992), Pulp Fiction (1994) y 
  Érase una vez en... Hollywood (2019). Está casado con Daniella Pick desde el 28 de noviembre de 2018. Tienen dos niños.'),
  ('Lana Wachowski','Lana Wachowski nació el 21 de junio de 1965 en Chicago, Illinois, Estados Unidos. Es una escritora y productora, conocida por Matrix (1999), Lazos ardientes (1996) y El atlas de las nubes (2012). 
  Ha estado casada con Thea Bloom.'),
  ('Lilly Wachowski','Lilly Wachowski nació el 29 de diciembre de 1967 en Chicago, Illinois, Estados Unidos. Es una escritora y productora, conocida por Matrix (1999), Lazos ardientes (1996) y El atlas de las nubes (2012). 
  Está casada con Alisa Blasingame.'),
  ('David Fincher','David Fincher nació el 28 de agosto de 1962 en Denver, Colorado, Estados Unidos. Es un productor y director, conocido por Seven (1995), Perdida (2014) y Zodiac (2007). Ha estado casado con Donya Fiorentino.'),
  ('Hayao Miyazaki','Hayao Miyazaki nació el 5 de enero de 1941 en Tokio, Japón. Es un escritor, conocido por El viaje de Chihiro (2001), Mi vecino Totoro (1988) y El castillo ambulante (2004). Está casado con Akemi Ôta desde octubre de 1965. Tienen dos niños.');
  
  INSERT INTO newbbdd.genres (`genres_name`) VALUES 
  ('Drama'),('Crimen'),('Acción'),('Suspense'),('Biografía'),('Historia'),('Aventura'),('Fantasía'),('Ciencia ficción'),('Animación');
  
  INSERT INTO newbbdd.stars (`stars_name`,`about`) VALUES 
  ('Elijah Wood','Elijah Wood nació el 28 de enero de 1981 en Cedar Rapids, Iowa, Estados Unidos. Es un actor y productor, conocido por El señor de los anillos: La comunidad del anillo (2001), El señor de los anillos: Las dos torres (2002) y El señor de los anillos: El retorno del rey (2003).'),
  ('Ian McKellen','Ian McKellen nació el 25 de mayo de 1939 en Lancashire, Inglaterra. Es un actor y escritor, conocido por El señor de los anillos: La comunidad del anillo (2001), El señor de los anillos: El retorno del rey (2003) y Dioses y monstruos (1998).'),
  ('Viggo Mortensen','Viggo Mortensen nació el 20 de octubre de 1958 en Manhattan, Nueva York, Nueva York, Estados Unidos. Es un actor y productor, conocido por El señor de los anillos: El retorno del rey (2003), Captain Fantastic (2016) y El señor de los anillos: Las dos torres (2002). Ha estado casado con Exene Cervenka.'),
  ('Brad Pitt','Brad Pitt nació el 18 de diciembre de 1963 en Oklahoma, Estados Unidos. Es un productor y actor, conocido por El club de la lucha (1999), Sr. y Sra. Smith (2005) y 12 monos (1995). Ha estado casado con Angelina Jolie y Jennifer Aniston.'),
  ('Edward Norton','Edward Norton nació el 18 de agosto de 1969 en Boston, Massachusetts, Estados Unidos. Es un actor y productor, conocido por El club de la lucha (1999), American History X (1998) y Las dos caras de la verdad (1996). Está casado con Shauna Robertson desde el 29 de noviembre de 2012. Tienen un niño.'),
  ('Meat Loaf','Meat Loaf nació el 27 de septiembre de 1947 en Dallas, Texas, Estados Unidos. Fue un artista musical y actor, conocido por The Rocky Horror Picture Show (1975), El club de la lucha (1999) y Negocios sucios (2001). Estuvo casado con Deborah Gillespie y Leslie Aday. Murió el 20 de enero de 2022 en Austin, Texas, Estados Unidos.'),
  ('Orlando Bloom','Orlando Bloom nació el 13 de enero de 1977 en Canterbury, Kent, Inglaterra. Es un actor y productor, conocido por El señor de los anillos: La comunidad del anillo (2001), Piratas del Caribe: La maldición de la Perla Negra (2003) y El señor de los anillos: Las dos torres (2002). Ha estado casado con Miranda Kerr.'),
  ('John Travolta','John Travolta nació el 18 de febrero de 1954 en Englewood, Nueva Jersey, EE.UU.. Es un actor y productor, conocido por Pulp Fiction (1994), Cómo conquistar Hollywood (1995) y Grease (1978). Ha estado casado con Kelly Preston.'),
  ('Uma Thurman','Uma Thurman nació el 29 de abril de 1970 en Boston, Massachusetts, Estados Unidos. Es una actriz y productora, conocida por Kill Bill: Volumen 1 (2003), Kill Bill: Volumen 2 (2004) y Batman y Robin (1997). Ha estado casada con Ethan Hawke y Gary Oldman.'),
  ('Samuel L. Jackson','Samuel L. Jackson nació el 21 de diciembre de 1948 en Estados Unidos. Es un actor y productor, conocido por Pulp Fiction (1994), Los odiosos ocho (2015) y Capitana Marvel (2019). Está casado con LaTanya Richardson Jackson desde el 18 de agosto de 1980. Tienen un niño.'),
  ('Liam Neeson','Liam Neeson nació el 7 de junio de 1952 en Reino Unido. Es un actor y productor, conocido por Kinsey (2004), La lista de Schindler (1993) y Infierno blanco (2011). Ha estado casado con Natasha Richardson.'),
  ('Ralph Fiennes','Ralph Fiennes nació el 22 de diciembre de 1962 en Ipswich, Suffolk, Inglaterra. Es un actor y director, conocido por El gran hotel Budapest (2014), El jardinero fiel (2005) y La lista de Schindler (1993). Ha estado casado con Alex Kingston.'),
  ('Ben Kingsley','Ben Kingsley nació el 31 de diciembre de 1943 en Yorkshire, Inglaterra. Es un actor y productor, conocido por Sexy Beast (2000), Gandhi (1982) y Iron Man 3 (2013). Está casado con Daniela Lavender desde el 3 de septiembre de 2007. Ha estado casado con Alexandra Christmann, Alison Sutcliffe y Angela Morant.'),
  ('Al Pacino','Al Pacino nació el 25 de abril de 1940 en Manhattan, Nueva York, Nueva York, Estados Unidos. Es un actor y director, conocido por Serpico (1973), Tarde de perros (1975) y El padrino (1972).'),
  ('Robert De Niro','Robert De Niro nació el 17 de agosto de 1943 en Nueva York, Nueva York, EE.UU.. Es un actor y productor, conocido por El cabo del miedo (1991), Toro salvaje (1980) y Taxi Driver (1976). Está casado con Grace Hightower desde el 17 de junio de 1997. Tienen dos niños. Ha estado casado con Diahnne Abbott.'),
  ('Robert Duvall','Robert Duvall nació el 5 de enero de 1931 en San Diego, California, Estados Unidos. Es un actor y productor, conocido por Camino al cielo (1997), Gracias y favores (1983) y El padrino (1972). Está casado con Luciana Pedraza desde el 6 de octubre de 2004. Ha estado casado con Sharon Brophy, Gail Youngs y Barbara Benjamin.'),
  ('Aaron Eckhart','Aaron Eckhart nació el 12 de marzo de 1968 en California, Estados Unidos. Es un actor y productor, conocido por El caballero oscuro (2008), Gracias por fumar (2005) y Los secretos del corazón (2010).'),
  ('Heath Ledger','Heath Ledger nació el 4 de abril de 1979 en Perth, Australia Occidental, Australia. Fue un actor y director, conocido por Brokeback Mountain. En terreno vedado (2005), El caballero oscuro (2008) y Destino de caballero (2001). Murió el 22 de enero de 2008 en Manhattan, Nueva York, Nueva York, Estados Unidos.'),
  ('Christian Bale','Christian Bale nació el 30 de enero de 1974 en Reino Unido. Es un actor y productor, conocido por El caballero oscuro (2008), Batman Begins (2005) y La gran estafa americana (2013). Está casado con Sibi Blazic desde el 29 de enero de 2000. Tienen dos niños.'),
  ('Marlon Brando','Marlon Brando nació el 3 de abril de 1924 en Omaha, Nebraska, Estados Unidos. Fue un actor y director, conocido por Apocalypse Now (1979), El padrino (1972) y La ley del silencio (1954). Estuvo casado con Tarita, Movita y Anna Kashfi. Murió el 1 de julio de 2004 en Los Ángeles, California, EE.UU..'),
  ('James Caan','James Caan nació el 26 de marzo de 1940 en El Bronx, Nueva York, EE.UU.. Fue un actor y director, conocido por Ladrón (1981), Rollerball, ¿un futuro próximo? (1975) y El padrino (1972). Estuvo casado con Linda Stokes, Ingrid Hajek, Sheila Ryan y Dee Jay Mattis. Murió el 6 de julio de 2022 en Los Ángeles, California, EE.UU..'),
  ('Bob Gunton','Bob Gunton nació el 15 de noviembre de 1945 en Santa Mónica, California, EE.UU.. Es un actor, conocido por Cadena perpetua (1994), Cazafantasmas: Más allá (2021) y Patch Adams (1998). Está casado con Carey Pitts desde el 26 de agosto de 2006. Ha estado casado con Annie McGreevey.'),
  ('Morgan Freeman','Morgan Freeman nació el 1 de junio de 1937 en Memphis, Tennessee, Estados Unidos. Es un actor y productor, conocido por Paseando a Miss Daisy (1989), Seven (1995) y Million Dollar Baby (2004). Ha estado casado con Myrna Colley-Lee y Jeanette Adair Bradshaw.'),
  ('Tim Robbins','Tim Robbins nació el 16 de octubre de 1958 en West Covina, California, Estados Unidos. Es un actor y productor, conocido por Mystic River (2003), El juego de Hollywood (The Player) (1992) y Howard... un nuevo héroe (1986). Ha estado casado con Gratiela Brancusi.');
  
  INSERT INTO newbbdd.movies_directors VALUES 
  (1,2),
  (2,3),
  (3,4),
  (4,3),
  (5,5),
  (6,1),
  (7,6),
  (8,1),
  (9,9),
  (10,1);
  
  INSERT INTO newbbdd.movies_genres VALUES 
  (1,1),
  (2,1),
  (2,2),
  (3,1),
  (3,2),
  (3,3),
  (3,4),
  (4,1),
  (4,2),
  (5,1),
  (5,5),
  (5,6),
  (6,1),
  (6,3),
  (6,7),
  (6,8),
  (7,1),
  (7,2),
  (8,1),
  (8,3),
  (8,7),
  (8,8),
  (9,1),
  (10,1),
  (10,3),
  (10,7),
  (10,8);
  
  INSERT INTO newbbdd.movies_stars VALUES 
  (1,22),(1,23),(1,24),
  (2,14),(2,20),(2,21),
  (3,17),(3,18),(3,19),
  (4,14),(4,15),(4,16),
  (5,11),(5,12),(5,13),
  (6,1),(6,2),(6,3),
  (7,8),(7,9),(7,10),
  (8,1),(8,2),(8,7),
  (9,4),(9,5),(9,6),
  (10,1),(10,2),(10,3);
  
  
  -- no hay repes
SELECT COUNT(stars_id), stars_name FROM newbbdd.stars GROUP BY stars_name;
SELECT distinct stars_name, stars_id FROM newbbdd.stars ORDER BY stars_name;

-- elimina todos los registros
DELETE FROM `newbbdd`.`movies`;
DELETE FROM `newbbdd`.`directors`;
DELETE FROM `newbbdd`.`stars`;
DELETE FROM `newbbdd`.`genres`;

