-- MySQL Script generated by MySQL Workbench
-- Tue Oct 31 09:40:31 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`country` (
  `country_id` SMALLINT(5) NOT NULL,
  `country` VARCHAR(50) NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`country_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`city` (
  `city_id` SMALLINT(5) NOT NULL,
  `city` VARCHAR(50) NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `country_country_id` SMALLINT(5) NOT NULL,
  PRIMARY KEY (`city_id`),
  INDEX `fk_city_country1_idx` (`country_country_id` ASC) VISIBLE,
  CONSTRAINT `fk_city_country1`
    FOREIGN KEY (`country_country_id`)
    REFERENCES `mydb`.`country` (`country_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`address` (
  `address_id` SMALLINT(5) NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  `address2` VARCHAR(50) NULL,
  `district` VARCHAR(20) NOT NULL,
  `postal_code` VARCHAR(10) NULL,
  `phone` VARCHAR(20) NOT NULL,
  `location` VARCHAR(20) NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `city_city_id` SMALLINT(5) NOT NULL,
  PRIMARY KEY (`address_id`),
  INDEX `fk_address_city_idx` (`city_city_id` ASC) VISIBLE,
  CONSTRAINT `fk_address_city`
    FOREIGN KEY (`city_city_id`)
    REFERENCES `mydb`.`city` (`city_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

USE mydb;
SHOW TABLES;
SELECT * FROM address;
SELECT * FROM city;
SELECT * FROM country;

INSERT INTO mydb.address (`address_id`,`address`,`address2`,`district`,`postal_code`,`phone`,`location`, `city_city_id`) VALUES
(1,"Calle mis cojones 33","","San Jose","26526","1-787-655-1823","Sevilla",1),
(2,"Dalmau 22","4-2","Nou Barris","08002","647 252-2073","Barcelona",2),
(3,"756-4708 Augue Rd.","","24","6671","(741) 863-0553","París",3),
(4,"Ap #673-7547 Vehicula Rd.","","Nord-Pas-de-Calais","73169","1-262-367-9136","Oslo",4),
(5,"Mamma mia il pesto","di basilisco 77","538","26-811","1-206-602-4534","Palermo",5),
(6,"Ap #398-6572 Nascetur Street","","Nova Scotia","65333-215","1-798-338-5037","Edimburgo",6),
(7,"818-2798 Orci, St.","622-2665 Cras Road","South Kalimantan","Y3X 0S1","1-825-246-7355","Busan",7),
(8,"P.O. Box 525, 5604 Aliquam Road","611-9705 Ultricies Av.","22adu","303490","(952) 642-8014","Glasgow",8),
(9,"4048 Netus Rd.","P.O. Box 328, 8416 Velit Avenue","Davao Region","277466","1-412-941-8747","San Francisco",9),
(10,"P.O. Box 423, 6989 Morbi Rd.","Ap #320-5765 Tristique Ave","Overijssel","897587","(532) 276-4342","Berlin",10),
(11,"P.O. Box 428, 3051 Vitae, Street","5910 Vivamus Rd.","Loreto","17369","(764) 415-9190","Washington",11),
(12,"Ap #185-334 Massa. Av.","671-6853 Eu Ave","Mazowieckie","PC1 1LK","(557) 483-7248","Buenos Aires",12),
(13,"P.O. Box 812, 2286 Dolor Av.","P.O. Box 547, 6517 Praesent St.","KwaZulu-Natal","537763","1-319-730-7818","Hong Kong",13),
(14,"Ap #327-3212 Auctor Av.","108-209 Mollis. Avenue","North Gyeongsang","57179","1-183-571-1013","Brujas",14),
(15,"Ap #921-1975 Lacinia Ave","P.O. Box 298, 7246 Scelerisque Ave","Sachsen-Anhalt","702604","1-755-865-1359","Quebec",15),
(16,"P.O. Box 439, 324 Ante. St.","110-5454 Eget Rd.","Ulster","9074","(324) 121-0473","Kiev",16),
(17,"Ap #628-9095 Dolor, Rd.","6216 Arcu. Ave","Xīběi","3988","1-698-807-2961","Zúrich",17),
(18,"718-5544 Vivamus Ave","5343 Feugiat. Avenue","Connacht","64928","1-352-617-4754","Moscow",18),
(19,"Ap #477-1306 Ullamcorper. Rd.","6955 Sed Av.","Vestland","57843","1-710-162-8597","Lagos",19),
(20,"6519 Euismod Av.","582-4750 Nascetur St.","Dalarnas län","0676","(377) 534-1576"," Sydney",20);

INSERT INTO mydb.city (`city_id`,`city`, `country_country_id`) VALUES
(1, "Sevilla", 1),
(2, "Barcelona", 1),
(3, "París", 2),
(4, "Oslo", 3),
(5, "Palermo", 4),
(6, "Edimburgo", 5),
(7, "Busan", 6),
(8, "Glasgow", 5),
(9, "San Francisco", 7),
(10, "Berlín", 8),
(11, "Washington", 7),
(12, "Buenos Aires", 9),
(13, "Hong Kong", 10),
(14, "Brujas", 11),
(15, "Quebec", 12),
(16, "Kiev", 13),
(17, "Zúrich", 14),
(18, "Moscow", 15),
(19, "Lagos", 16),
(20, "Sydney", 17);

INSERT INTO mydb.country (`country_id`,`country`) VALUES
(1,"Spain"),
(2,"France"),
(3,"Norwey"),
(4,"Italy"),
(5,"United Kingdom"),
(6,"South Korea"),
(7,"United States"),
(8,"Germany"),
(9,"Aregntina"),
(10,"China"),
(11,"Belgium"),
(12,"Canada"),
(13,"Ukraine"),
(14,"Suiza"),
(15,"Russia"),
(16,"Nigeria"),
(17,"Australia"),
(18,"Japon"),
(19,"Portugal"),
(20,"Brasil");

SELECT * FROM address INNER JOIN city, country WHERE city_city_id=city.city_id AND country_country_id=country.country_id;
