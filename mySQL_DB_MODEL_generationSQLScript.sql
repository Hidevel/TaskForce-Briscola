-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema briscolaOnline
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `briscolaOnline` ;

-- -----------------------------------------------------
-- Schema briscolaOnline
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `briscolaOnline` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `briscolaOnline` ;

-- -----------------------------------------------------
-- Table `briscolaOnline`.`playersQueue`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `briscolaOnline`.`playersQueue` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `briscolaOnline`.`playersQueue` (
  `playerId` INT UNSIGNED NOT NULL DEFAULT 1000,
  `playersNickname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`playerId`))
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE UNIQUE INDEX `id_UNIQUE` ON `briscolaOnline`.`playersQueue` (`playerId` ASC);

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `briscolaOnline`.`activeGames`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `briscolaOnline`.`activeGames` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `briscolaOnline`.`activeGames` (
  `gameId` INT UNSIGNED NOT NULL DEFAULT 1000,
  `playerOne` VARCHAR(45) NOT NULL,
  `onTurnPlayerOne` TINYINT(1) NOT NULL,
  `playerTwo` VARCHAR(45) NOT NULL,
  `onTurnPlayerTwo` TINYINT(1) NOT NULL,
  `lastPlayedCardOne` VARCHAR(45) NOT NULL,
  `lastPlayedCardTwo` VARCHAR(45) NOT NULL,
  `gameOver` TINYINT(1) NOT NULL,
  `firtsPlayerInTurn` TINYINT(1) NOT NULL,
  `noOfRemainingCardsInDeck` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`gameId`))
ENGINE = InnoDB;

SHOW WARNINGS;
CREATE UNIQUE INDEX `gameId_UNIQUE` ON `briscolaOnline`.`activeGames` (`gameId` ASC);

SHOW WARNINGS;
CREATE UNIQUE INDEX `playerOne_UNIQUE` ON `briscolaOnline`.`activeGames` (`playerOne` ASC);

SHOW WARNINGS;
CREATE UNIQUE INDEX `playerTwo_UNIQUE` ON `briscolaOnline`.`activeGames` (`playerTwo` ASC);

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
