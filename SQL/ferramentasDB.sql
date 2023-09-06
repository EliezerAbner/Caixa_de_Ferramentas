-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ferramentasdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ferramentasdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ferramentasdb` DEFAULT CHARACTER SET utf8mb4 ;
USE `ferramentasdb` ;

-- -----------------------------------------------------
-- Table `ferramentasdb`.`email`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ferramentasdb`.`email` (
  `emailId` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`emailId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ferramentasdb`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ferramentasdb`.`funcionario` (
  `funcionarioId` INT(11) NOT NULL AUTO_INCREMENT,
  `emailId` INT NOT NULL,
  `nomeFuncionario` VARCHAR(50) NOT NULL,
  `setor` VARCHAR(50) NOT NULL,
  `cargo` VARCHAR(50) NOT NULL,
  `gerenteId` INT(11) NOT NULL,
  PRIMARY KEY (`funcionarioId`),
  INDEX `fk_funcionario_email1_idx` (`emailId` ASC) VISIBLE,
  CONSTRAINT `fk_funcionario_email1`
    FOREIGN KEY (`emailId`)
    REFERENCES `ferramentasdb`.`email` (`emailId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `ferramentasdb`.`ferramenta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ferramentasdb`.`ferramenta` (
  `ferramentaId` INT(11) NOT NULL AUTO_INCREMENT,
  `nomeFerramenta` VARCHAR(50) NOT NULL,
  `tipo` VARCHAR(50) NOT NULL,
  `codigo` VARCHAR(50) NOT NULL,
  `funcionarioId` INT(11) NOT NULL,
  PRIMARY KEY (`ferramentaId`),
  INDEX `fk_ferramenta_funcionario1_idx` (`funcionarioId` ASC) VISIBLE,
  CONSTRAINT `fk_ferramenta_funcionario1`
    FOREIGN KEY (`funcionarioId`)
    REFERENCES `ferramentasdb`.`funcionario` (`funcionarioId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `ferramentasdb`.`supervisor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ferramentasdb`.`supervisor` (
  `supervisorId` INT(11) NOT NULL AUTO_INCREMENT,
  `emailId` INT NOT NULL,
  `nomeSupervisor` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`supervisorId`),
  INDEX `fk_supervisor_email1_idx` (`emailId` ASC) VISIBLE,
  CONSTRAINT `fk_supervisor_email1`
    FOREIGN KEY (`emailId`)
    REFERENCES `ferramentasdb`.`email` (`emailId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `ferramentasdb`.`verificacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ferramentasdb`.`verificacao` (
  `verificacaoId` INT(11) NOT NULL AUTO_INCREMENT,
  `funcionarioId` INT(11) NOT NULL,
  `ferramentaId` INT(11) NOT NULL,
  `dataVerificacao` DATE NOT NULL,
  PRIMARY KEY (`verificacaoId`),
  INDEX `fk_verificacao_funcionario_idx` (`funcionarioId` ASC) VISIBLE,
  INDEX `fk_verificacao_ferramenta1_idx` (`ferramentaId` ASC) VISIBLE,
  CONSTRAINT `fk_verificacao_funcionario`
    FOREIGN KEY (`funcionarioId`)
    REFERENCES `ferramentasdb`.`funcionario` (`funcionarioId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_verificacao_ferramenta1`
    FOREIGN KEY (`ferramentaId`)
    REFERENCES `ferramentasdb`.`ferramenta` (`ferramentaId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `ferramentasdb`.`login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ferramentasdb`.`login` (
  `loginId` INT NOT NULL AUTO_INCREMENT,
  `emailId` INT NOT NULL,
  `senha` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`loginId`),
  INDEX `fk_login_email1_idx` (`emailId` ASC) VISIBLE,
  CONSTRAINT `fk_login_email1`
    FOREIGN KEY (`emailId`)
    REFERENCES `ferramentasdb`.`email` (`emailId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
