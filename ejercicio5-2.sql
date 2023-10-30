USE db_autogenerated;
SHOW tables;
SELECT * FROM db_autogenerated.mytable;
-- 1. Selecciona los campos postalZip, region, country de my Table . 
-- La consulta deberá de mostrar los nombres de los campos en castellano
SELECT postalZip AS 'Codigo Postal', region 'Region', country AS 'Pais' FROM db_autogenerated.mytable;
-- 2. Selecciona todos los campos de los números de teléfono que empiecen por (811)
SELECT * FROM db_autogenerated.mytable WHERE phone LIKE '(811)%';
-- 3. Selecciona todos los registros que tengan como de Italy o Spain
SELECT * FROM db_autogenerated.mytable WHERE country IN ('Italy','Spain');
-- 4. Cuenta cuanto registros tenemos en la BBDD
SELECT COUNT(*) FROM db_autogenerated.mytable;
-- 5. Haz una subquery que saque los Ids de los registros que sean de Alemania y Turquía y posteriormente
-- utilizala dentro de la query principal para mostrar ciudad, país y código postal.
SELECT region, country, postalZip FROM db_autogenerated.mytable WHERE id IN (SELECT id FROM db_autogenerated.mytable WHERE country IN ('Germany','Turkey'));
-- 6. Saca el mayor ID y el menor.
SELECT MAX(id) AS 'Maximo', MIN(id) AS 'Minimo' FROM db_autogenerated.mytable;
-- 7. Agrupa los registros por país, y muestra cuantos hay en total por país mostrarlo en total y el país.
SELECT country, COUNT(*) AS 'Total' FROM db_autogenerated.mytable GROUP BY country; 
-- 8. Haz una query que sea ordenada por código postal y limita la salida a 10 registros.
SELECT * FROM db_autogenerated.mytable ORDER BY postalZip LIMIT 10;
-- 9. Elimina todos los registros que sean de Singapure.
SELECT * FROM db_autogenerated.mytable WHERE country='Singapore';
DELETE FROM db_autogenerated.mytable WHERE country='Singapore';
SELECT * FROM db_autogenerated.mytable WHERE country='Singapore';
-- 10. Sustituye el nombre del todos los registros de Spain por España.
UPDATE db_autogenerated.mytable SET country='España' WHERE country='Spain';
SELECT * FROM db_autogenerated.mytable WHERE country='Spain';
SELECT * FROM db_autogenerated.mytable WHERE country='España';