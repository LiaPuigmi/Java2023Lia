CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

CREATE TABLE IF NOT EXISTS `mydb`.`student` (
  `student_id` INT NOT NULL PRIMARY KEY,
  `student_name` VARCHAR(50) NULL,
  `student_age` INT NULL,
  `student_sex` VARCHAR(30) NULL
 );
 
CREATE TABLE IF NOT EXISTS `mydb`.`teacher` (
  `teacher_id` INT NOT NULL PRIMARY KEY,
  `teacher_name` VARCHAR(50) NULL
  );
  
CREATE TABLE IF NOT EXISTS `mydb`.`course` (
  `course_id` INT NOT NULL,
  `name_course` VARCHAR(50) NULL,
  `teacher_teacher_id` INT NOT NULL,
  --  Esto significa que cada combinación de valores en estas dos columnas debe ser única:
  PRIMARY KEY (`course_id`, `teacher_teacher_id`),
  -- Esto crea un índice en la columna teacher_teacher_id. 
  -- Un índice puede ayudar a acelerar las operaciones de búsqueda en la tabla:
  INDEX `fk_course_teacher1_idx` (`teacher_teacher_id` ASC) VISIBLE,
  -- Esto define una restricción de clave externa en la columna teacher_teacher_id. 
  -- Esto significa que los valores insertados en esta columna deben existir en la columna teacher_id de la tabla teacher:
  CONSTRAINT `fk_course_teacher1`
    FOREIGN KEY (`teacher_teacher_id`)
    REFERENCES `mydb`.`teacher` (`teacher_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE IF NOT EXISTS `mydb`.`student_course` (
  `student_student_id` INT NOT NULL,
   `course_course_id` INT NOT NULL,
  `student_score` DECIMAL(4,2) NULL,
  PRIMARY KEY (`student_student_id`, `course_course_id`),
  INDEX `fk_student_course_course1_idx` (`course_course_id` ASC) VISIBLE,
  INDEX `fk_student_student_student1_idx` (`student_student_id` ASC) VISIBLE,
  CONSTRAINT `fk_student_course_course1`
    FOREIGN KEY (`course_course_id`)
    REFERENCES `mydb`.`course` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_student_student_student1`
    FOREIGN KEY (`student_student_id`)
    REFERENCES `mydb`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- Añade registros a la BBDD
-- Insertando datos en la tabla `student`
INSERT INTO `mydb`.`student` (`student_id`, `student_name`, `student_age`, `student_sex`) VALUES 
(1, 'Victor', 20, 'Masculino'),
(2, 'Lucho', 21, 'Femenino'),
(3, 'Agustin', 22, 'Masculino'),
(4, 'Marc', 23, 'No-binario'),
(5, 'Hugo', 24, 'Masculino'),
(6, 'Carlota', 25, 'Femenino'),
(7, 'Manolo', 26, 'Masculino'),
(8, 'Sara', 27, 'Femenino'),
(9, 'Robert', 28, 'Masculino'),
(10,'Lara',29,'No-binario');

-- Insertando datos en la tabla `teacher`
INSERT INTO `mydb`.`teacher` (`teacher_id`, `teacher_name`) VALUES 
(1, 'Montse'),
(2, 'Xavi'),
(3, 'Carlos'),
(4, 'Edu'),
(5, 'Raquel'),
(6, 'Bibi'),
(7, 'Ruben'),
(8, 'Eloi'),
(9, 'Ana'),
(10,'Vanesa');

-- Insertando datos en la tabla `course`
INSERT INTO `mydb`.`course` (`course_id`, `name_course`, `teacher_teacher_id`) VALUES 
(1, 'Java', 1),
(2, 'C#', 2),
(3, 'Android Studio', 3),
(4, 'Unity', 4),
(5, 'Game Design', 5),
(6, 'BBDD', 6),
(7, 'Acces a Dades', 7),
(8, 'Disseny 2D/3D', 8),
(9, 'FOL', 9),
(10,'EIE',10);

-- Insertando datos en la tabla `student_course`
INSERT INTO `mydb`.`student_course` (`student_student_id`, `course_course_id`, `student_score`) VALUES 
(1, 1, 10.00),
(2, 2, 09.00),
(3, 3, 08.50),
(4, 4, 08.00),
(5, 5, 07.50),
(6, 6, 07.00),
(7, 7, 06.50),
(8, 8, 06.00),
(9 ,9 ,05.50),
(10 ,10 ,05.00);
INSERT INTO `mydb`.`student_course` (`student_student_id`, `course_course_id`, `student_score`) VALUES 
(1, 10, 10.00),
(2, 9, 09.00),
(3, 8, 08.50),
(4, 7, 08.00),
(5, 6, 07.50),
(6, 5, 07.00),
(7, 4, 06.50),
(8, 3, 06.00),
(9 ,2 ,05.50),
(10 ,1 ,05.00);

-- Muestra los alumnos a los que un profesor les da clase.
SELECT student_name FROM mydb.student WHERE student_id IN 
(SELECT student_student_id FROM mydb.student_course WHERE course_course_id IN 
(SELECT course_id FROM mydb.course WHERE teacher_teacher_id IN 
(SELECT teacher_id FROM mydb.teacher WHERE teacher_name='Montse')));
-- Muestra el total de cursos que imparte el profesor
SELECT COUNT(course_id) FROM mydb.course WHERE teacher_teacher_id IN 
(SELECT teacher_id FROM mydb.teacher WHERE teacher_name='Montse');
-- Muestra el total de cursos que ha realizada el alumno
SELECT COUNT(student_student_id) FROM mydb.student_course WHERE student_student_id IN
(SELECT student_id FROM mydb.student WHERE student_name='Victor');