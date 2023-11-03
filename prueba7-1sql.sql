USE db_movies;
SHOW tables;
# 1.Selecciona todos los campos de la tabla directores.
SELECT * FROM db_movies.directors;
# 2. Selecciona solamente el campo name de la tabla directores y añade un alias al campo llamado nombre_del_director
SELECT name AS nombre_del_director FROM db_movies.directors;
# 3. Ordena la tabla directors alfabéticamente de tal forma que aparezcan primeramente los que empiezan por a, luego los de b…
SELECT * FROM db_movies.directors ORDER BY name;
# 4. Selecciona todas las películas que contengan dentro del title dos puntos (:):
SELECT * FROM db_movies.movies WHERE title LIKE '%:%';
# 5. Selecciona todas las estrellas cuyo nombre empiecen por UNA m:
SELECT * FROM db_movies.stars WHERE name LIKE 'm%';
# 6. Selecciona todas las estrellas de cine cuyo nombre acabe por una e y posteriormente otro carácter (el que sea). Es decir, por ejemplo: en, ez, ei, eo, en...
SELECT * FROM db_movies.stars WHERE name LIKE '%e_';
# 7. Selecciona todos los años de los cuales tenemos introducida una película sin que se repitan.
SELECT DISTINCT year FROM db_movies.movies;
# 8. En la query anterior hemos sacado los distintos años, ahora deberemos de contar el total de distintos años (sin que se repitan). Además, el nombre del campo deberá de mostrar TOTAL como alias.
SELECT COUNT(distinct year) AS total FROM db_movies.movies;
# 9. Muestra la película 'Pulp Fiction'
SELECT * FROM db_movies.movies WHERE title='Pulp Fiction';
# 10. Selecciona la pelicula que tenga un id 6.
SELECT * FROM db_movies.movies WHERE id=6;
# 11. Selecciona todas las películas que tengan un id superior a 3
SELECT * FROM db_movies.movies WHERE id>3;
# 12. Selecciona todas películas que tengan un id inferior o igual a 5
SELECT * FROM db_movies.movies WHERE id<=5;
# 13. Selecciona todas las películas que tengan un id entre 3 y 6 (ambos incluidos).
-- a. Realiza la consulta con operadores aritméticos <,>, =.
SELECT * FROM db_movies.movies WHERE id>=3 and id <= 6;
-- b. Realiza la consulta con operadores aritméticos BETWEEN
SELECT * FROM db_movies.movies WHERE id BETWEEN 3 and 6;
# 14. Selecciona todas las películas que no sean de 2013 (hazlo de 2 maneras diferentes)
SELECT * FROM db_movies.movies WHERE year!= 2013;
SELECT * FROM db_movies.movies WHERE year <> 2013;
SELECT * FROM db_movies.movies WHERE year NOT LIKE 2013;
# 15. Selecciona todas las películas que tengan como año de grabación 1895, 1994, 1997
SELECT * FROM db_movies.movies WHERE year IN (1895,1994,1997);
# 16. Selecciona todas las películas que no sean de los años 2013, 2014 ni 1994
SELECT * FROM db_movies.movies WHERE year NOT IN (2013,2014,1994);
# 17. Selecciona todas las películas que hayan sido grabadas en el año 2000 o posteriori y que tengan una valoración (campo imdb rating) superior o igual a 8,5.
SELECT * FROM db_movies.movies WHERE year>=2000 and imdb_rating>=8.5;
# 18. Selecciona todas las películas cuyo año de grabación sea menor que 2005 o que tengan una valoración (campo imdb_rating) superior a 8.5.
SELECT * FROM db_movies.movies WHERE year<=2005 or imdb_rating>8.5;
# 19. Ordena las películas por año de tal manera que salgan primero las películas más antiguas. Y, además, aplica otro segundo criterio/condición para el orden en el que el imdb_rating de tal forma si dos películas han sido gravadas el mismo año primero aparezcan las que tengan la mejor valoración.
-- a. Realizalo mediante haciendo referencia a los nombres de las columnas
SELECT * FROM db_movies.movies ORDER BY year, imdb_rating DESC;
-- b. Realízalo mediante haciendo referencia al número de las columnas
SELECT * FROM db_movies.movies ORDER BY 3, 7 DESC;
# 20. Haz una consulta que muestre solamente 3 estrellas de cine:
SELECT * FROM db_movies.stars LIMIT 3;
# 21. Haz una consulta que muestre un ranking con solamente el top 5 películas en función de su valoración (las más altas).
SELECT * FROM db_movies.movies ORDER BY imdb_rating DESC LIMIT 5;
# 22. Saca el valor mínimo y máximo de imdb_rating y modifica el nombre a los campos (alías) respectivamente a MIN_RATING y MAX _RATING.
SELECT MIN(imdb_rating) AS MIN_RATING, MAX(imdb_rating) AS MAX_RATING FROM db_movies.movies;
# 23. Realiza una consulta que saque la valoración media de las películas. Además, dicho campo deberá de tener como nombre (alías) RATING _AVG.
SELECT AVG(imdb_rating) AS RATING_AVG FROM db_movies.movies;
# 24. Realiza la misma consulta que hemos realizado anteriormente en el apartado 23 pero de tal forma en que aparezcan solamente 2 decimales.
SELECT FORMAT(AVG(imdb_rating),2) AS RATING_AVG FROM db_movies.movies;
# 25. ¿Cuántos directores tenemos en la BBDD? Haz una query que muestre el total de directores
SELECT COUNT(*) FROM db_movies.directors;
# 26. Suma todas las valoraciones para saber los puntos totales que tienen todas las películas en total. El valor deberá de estar redondeado a 2 decimales y utilizaremos RATING _POINTS como nombre a mostrar en el campo.
SELECT FORMAT(SUM(imdb_rating),2) AS RATING_POINTS FROM db_movies.movies;
# 27. Haz una query que saqué todas las películas cuya valoración sea superior a la media de todas las películas
SELECT * FROM db_movies.movies WHERE imdb_rating > (SELECT AVG(imdb_rating) AS RATING_AVG FROM db_movies.movies);
# 28. Selecciona todas las películas que no estén entre el id 2 y el 4 si utilizar <, > y =
SELECT * FROM db_movies.movies WHERE id NOT BETWEEN 2 and 4;
# 29. Muestra el director de todas las películas y ordénalos por el id el director.
SELECT t1.title, t3.name FROM db_movies.movies t1 JOIN db_movies.movies_directors t2 ON t1.id=t2.movies_id JOIN db_movies.directors t3 ON t2.directors_id=t3.id;
# 30. Muestra todas las estrellas que han formado parte de la película Pulp Fiction. La query no deberá de mostrar todos los campos, solamente deberá de mostrar title y name.
SELECT t1.title, t3.name FROM db_movies.movies t1 JOIN db_movies.movies_stars t2 ON t1.id=t2.movies_id JOIN db_movies.stars t3 ON t2.stars_id=t3.id WHERE t1.title='Pulp Fiction';
# 31. Muestra de todas las películas los géneros a los que pertenecen
SELECT t1.title, t3.name FROM db_movies.movies t1 JOIN db_movies.movies_genres t2 ON t1.id=t2.movies_id JOIN db_movies.genres t3 ON t2.genres_id=t3.id;
# 32. Muestra el título de la película, el director y los géneros a los que pertenecen las películas.
SELECT t1.title AS TITULO, t7.name AS GENRE, t5.name AS ACTOR, t3.name AS DIRECTOR FROM db_movies.movies t1 JOIN db_movies.movies_directors t2 ON t1.id=t2.movies_id JOIN db_movies.directors t3 ON t2.directors_id=t3.id
JOIN db_movies.movies_stars t4 ON t1.id=t4.movies_id JOIN db_movies.stars t5 ON t4.stars_id=t5.id 
JOIN db_movies.movies_genres t6 ON t1.id=t6.movies_id JOIN db_movies.genres t7 ON t6.genres_id=t7.id;
# 33. Muestra un listado con todas las películas junto a la suma de los géneros que tiene dicha película.
SELECT t1.title, t3.name FROM db_movies.movies t1 JOIN db_movies.movies_genres t2 ON t1.id=t2.movies_id JOIN db_movies.genres t3 ON t2.genres_id=t3.id;
SELECT COUNT(name) FROM db_movies.movies_genres GROUP BY movies_id IN( SELECT id FROM db_movies.movies);
# 34. Muestra el nombre del director y la cantidad de películas tiene grabadas cada director.
# 35. Muestra la película junto a la valoración en nota (menos de 5 insuficiente, de 5 a 6 bien, etc). Además, si la nota no va del 0
# 36. En nuestras situaciones no tenemos casos de películas que tengan una nota entre 0 y 5, una nota de 12 para testear el ELSE, etc. Asi que actualiza algún caso y añade algún otro