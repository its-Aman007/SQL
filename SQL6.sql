-- MySQL Workbench Forward Engineering..

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Company
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Company
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Company` DEFAULT CHARACTER SET utf8 ;
USE `Company` ;

-- -----------------------------------------------------
-- Table `Company`.`Comp1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company`.`Comp1` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `branch` VARCHAR(45) NOT NULL,
  `salary` INT NOT NULL,
  `Attrition` TINYINT NOT NULL,
  `no of staffs` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company`.`Comp2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company`.`Comp2` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `branch` VARCHAR(45) NOT NULL,
  `salary` INT NOT NULL,
  `Attrition` TINYINT NOT NULL,
  `no of staffs` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company`.`Leading`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company`.`Leading` (
  `profit` INT NOT NULL,
  `tie-ups` INT NOT NULL,
  PRIMARY KEY (`profit`),
  UNIQUE INDEX `profit_UNIQUE` (`profit` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company`.`Comp1_has_Comp2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company`.`Comp1_has_Comp2` (
  `Comp1_id` INT NOT NULL,
  `Comp2_id` INT NOT NULL,
  PRIMARY KEY (`Comp1_id`, `Comp2_id`),
  INDEX `fk_Comp1_has_Comp2_Comp21_idx` (`Comp2_id` ASC) VISIBLE,
  INDEX `fk_Comp1_has_Comp2_Comp1_idx` (`Comp1_id` ASC) VISIBLE,
  CONSTRAINT `fk_Comp1_has_Comp2_Comp1`
    FOREIGN KEY (`Comp1_id`)
    REFERENCES `Company`.`Comp1` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comp1_has_Comp2_Comp21`
    FOREIGN KEY (`Comp2_id`)
    REFERENCES `Company`.`Comp2` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Company`.`Comp1_has_Leading`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Company`.`Comp1_has_Leading` (
  `Comp1_id` INT NOT NULL,
  `Leading_profit` INT NOT NULL,
  PRIMARY KEY (`Comp1_id`, `Leading_profit`),
  INDEX `fk_Comp1_has_Leading_Leading1_idx` (`Leading_profit` ASC) VISIBLE,
  INDEX `fk_Comp1_has_Leading_Comp11_idx` (`Comp1_id` ASC) VISIBLE,
  CONSTRAINT `fk_Comp1_has_Leading_Comp11`
    FOREIGN KEY (`Comp1_id`)
    REFERENCES `Company`.`Comp1` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comp1_has_Leading_Leading1`
    FOREIGN KEY (`Leading_profit`)
    REFERENCES `Company`.`Leading` (`profit`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
