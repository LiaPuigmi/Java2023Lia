DROP DATABASE IF EXISTS newDatabases;
CREATE DATABASE IF NOT EXISTS newDatabases;
USE newDatabases;
CREATE TABLE IF NOT EXISTS alumnos (
	id_Alumno INT UNSIGNED NOT NULL PRIMARY KEY,
    nombre VARCHAR (45),
    fecha_nacimiento DATE
);