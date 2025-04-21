-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema nba_traditional
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema nba_traditional
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `nba_traditional` DEFAULT CHARACTER SET utf8 ;
USE `nba_traditional` ;

-- -----------------------------------------------------
-- Table `nba_traditional`.`teams`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nba_traditional`.`teams` (
  `team_id` INT NOT NULL,
  `team_abbrev` CHAR(3) NULL,
  `team_name` VARCHAR(45) NULL,
  `season` VARCHAR(10) NULL,
  `gp` INT NULL,
  `wins` INT NULL,
  `losses` INT NULL,
  `win_pct` DECIMAL(4,3) NULL,
  `minutes` INT NULL,
  `fgm` INT NULL,
  `fga` INT NULL,
  `fg_pct` DECIMAL(4,3) NULL,
  `fg3m` INT NULL,
  `fg3a` INT NULL,
  `fg3_pct` DECIMAL(4,3) NULL,
  `ftm` INT NULL,
  `fta` INT NULL,
  `ft_pct` DECIMAL(4,3) NULL,
  `oreb` INT NULL,
  `dreb` INT NULL,
  `reb` INT NULL,
  `ast` INT NULL,
  `tov` INT NULL,
  `stl` INT NULL,
  `blk` INT NULL,
  `blka` INT NULL,
  `pf` INT NULL,
  `pfd` INT NULL,
  `pts` INT NULL,
  `plus_minus` INT NULL,
  PRIMARY KEY (`team_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `nba_traditional`.`players`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `nba_traditional`.`players` (
  `player_id` INT NOT NULL,
  `team_id` INT NULL,
  `player_name` VARCHAR(45) NULL,
  `season` VARCHAR(10) NULL,
  `gp` INT NULL,
  `wins` INT NULL,
  `losses` INT NULL,
  `win_pct` DECIMAL(4,3) NULL,
  `minutes` INT NULL,
  `fgm` INT NULL,
  `fga` INT NULL,
  `fg_pct` DECIMAL(4,3) NULL,
  `fg3m` INT NULL,
  `fg3a` INT NULL,
  `fg3_pct` DECIMAL(4,3) NULL,
  `ftm` INT NULL,
  `fta` INT NULL,
  `ft_pct` DECIMAL(4,3) NULL,
  `oreb` INT NULL,
  `dreb` INT NULL,
  `reb` INT NULL,
  `ast` INT NULL,
  `tov` INT NULL,
  `stl` INT NULL,
  `blk` INT NULL,
  `blka` INT NULL,
  `pf` INT NULL,
  `pfd` INT NULL,
  `pts` INT NULL,
  `plus_minus` INT NULL,
  PRIMARY KEY (`player_id`),
  INDEX `team_id_fk_idx` (`team_id` ASC) VISIBLE,
  CONSTRAINT `team_id_fk`
    FOREIGN KEY (`team_id`)
    REFERENCES `nba_traditional`.`teams` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
