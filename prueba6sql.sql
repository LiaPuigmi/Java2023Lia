DROP DATABASE IF EXISTS newbbdd;
CREATE SCHEMA IF NOT EXISTS `newbbdd` DEFAULT CHARACTER SET utf8 ;
USE `newbbdd` ;

CREATE TABLE IF NOT EXISTS `newbbdd`.`movies` (
  `movie_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `year` INT NOT NULL,
  `image_url` VARCHAR(255) NOT NULL,
  `certificate` VARCHAR(45),
  `runtime` INT,
  `imdb_rating` FLOAT,
  `description` TEXT,
  `metascore` INT,
  `votes` INT,
  `gross` INT
 );
 
CREATE TABLE IF NOT EXISTS `newbbdd`.`directors` (
  `director_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `director_name` VARCHAR(45) NOT NULL UNIQUE,
  `about` TEXT
  );
  
  CREATE TABLE IF NOT EXISTS `newbbdd`.`stars` (
  `stars_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `stars_name` VARCHAR(45) NOT NULL,
  `about` TEXT
  );
  
  CREATE TABLE IF NOT EXISTS `newbbdd`.`genres` (
  `genres_id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `genres_name` VARCHAR(45) NOT NULL
  );

CREATE TABLE IF NOT EXISTS `newbbdd`.`movies_directors` (
  `movies_id` INT NOT NULL,
   `directors_id` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `directors_id`),
  INDEX `fk_directors_id1_idx` (`directors_id` ASC) VISIBLE,
  INDEX `fk_movies_id1_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_directors_id1`
    FOREIGN KEY (`directors_id`)
    REFERENCES `newbbdd`.`directors` (`director_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_movies_id1`
    FOREIGN KEY (`movies_id`)
    REFERENCES `newbbdd`.`movies` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS `newbbdd`.`movies_stars` (
  `movies_id` INT NOT NULL,
   `stars_id` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `stars_id`),
  INDEX `fk_stars_id1_idx` (`stars_id` ASC) VISIBLE,
  INDEX `fk_movies_id1_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_stars_id1`
    FOREIGN KEY (`stars_id`)
    REFERENCES `newbbdd`.`stars` (`stars_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_movies_id1`
    FOREIGN KEY (`movies_id`)
    REFERENCES `newbbdd`.`movies` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS `newbbdd`.`movies_genres` (
  `movies_id` INT NOT NULL,
   `genres_id` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `genres_id`),
  INDEX `fk_genres_id1_idx` (`genres_id` ASC) VISIBLE,
  INDEX `fk_movies_id1_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_genres_id1`
    FOREIGN KEY (`genres_id`)
    REFERENCES `newbbdd`.`genres` (`genres_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `fk_movies_id1`
    FOREIGN KEY (`movies_id`)
    REFERENCES `newbbdd`.`movies` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);