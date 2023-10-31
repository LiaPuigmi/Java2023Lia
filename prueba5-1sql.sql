SHOW VARIABLES WHERE Variable_name='autocommit';
SET autocommit = OFF;

-- borrando datos y volviendo atras
BEGIN;
DELETE FROM mydb.student_course WHERE student_student_id=1;
SELECT * FROM mydb.student_course WHERE student_student_id=1;
ROLLBACK;

-- Insertando datos en la tabla `student_course`
BEGIN;
INSERT INTO `mydb`.`student_course` (`student_student_id`, `course_course_id`, `student_score`) VALUES 
(3, 1, 10.00),
(3, 10, 10.00);
SELECT * FROM mydb.student_course WHERE student_student_id=3;
COMMIT;

SELECT * FROM mydb.student_course WHERE student_student_id=3;