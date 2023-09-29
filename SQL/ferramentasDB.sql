
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
-- Table `ferramentasdb`.`login`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ferramentasdb`.`login` (
  `loginId` INT NOT NULL AUTO_INCREMENT,
  `senha` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`loginId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ferramentasdb`.`supervisor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ferramentasdb`.`supervisor` (
  `supervisorId` INT(11) NOT NULL AUTO_INCREMENT,
  `loginId` INT NOT NULL,
  `nomeSupervisor` VARCHAR(50) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`supervisorId`),
  INDEX `fk_supervisor_login1_idx` (`loginId`),
  CONSTRAINT `fk_supervisor_login1`
    FOREIGN KEY (`loginId`)
    REFERENCES `ferramentasdb`.`login` (`loginId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `ferramentasdb`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ferramentasdb`.`funcionario` (
  `funcionarioId` INT(11) NOT NULL AUTO_INCREMENT,
  `supervisorId` INT(11) NOT NULL,
  `loginId` INT NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `nomeFuncionario` VARCHAR(50) NOT NULL,
  `setor` VARCHAR(50) NOT NULL,
  `cargo` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`funcionarioId`),
  INDEX `fk_funcionario_supervisor1_idx` (`supervisorId`),
  INDEX `fk_funcionario_login1_idx` (`loginId`),
  CONSTRAINT `fk_funcionario_supervisor1`
    FOREIGN KEY (`supervisorId`)
    REFERENCES `ferramentasdb`.`supervisor` (`supervisorId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionario_login1`
    FOREIGN KEY (`loginId`)
    REFERENCES `ferramentasdb`.`login` (`loginId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `ferramentasdb`.`ferramenta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ferramentasdb`.`ferramenta` (
  `ferramentaId` INT(11) NOT NULL AUTO_INCREMENT,
  `funcionarioId` INT(11) NOT NULL,
  `nomeFerramenta` VARCHAR(50) NOT NULL,
  `tipo` VARCHAR(50) NOT NULL,
  `codigo` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ferramentaId`),
  INDEX `fk_ferramenta_funcionario1_idx` (`funcionarioId`),
  CONSTRAINT `fk_ferramenta_funcionario1`
    FOREIGN KEY (`funcionarioId`)
    REFERENCES `ferramentasdb`.`funcionario` (`funcionarioId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `ferramentasdb`.`agendamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ferramentasdb`.`agendamento` (
  `agendamentoId` INT NOT NULL AUTO_INCREMENT,
  `dataVerificacao` DATETIME NOT NULL,
  PRIMARY KEY (`agendamentoId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ferramentasdb`.`verificacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ferramentasdb`.`verificacao` (
  `verificacaoId` INT(11) NOT NULL AUTO_INCREMENT,
  `funcionarioId` INT(11) NOT NULL,
  `ferramentaId` INT(11) NOT NULL,
  `agendamentoId` INT NOT NULL,
  `dataVerificacao` DATE NOT NULL,
  PRIMARY KEY (`verificacaoId`),
  INDEX `fk_verificacao_funcionario_idx` (`funcionarioId`),
  INDEX `fk_verificacao_ferramenta1_idx` (`ferramentaId`),
  INDEX `fk_verificacao_agendaVerificacao1_idx` (`agendamentoId`),
  CONSTRAINT `fk_verificacao_funcionario`
    FOREIGN KEY (`funcionarioId`)
    REFERENCES `ferramentasdb`.`funcionario` (`funcionarioId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_verificacao_ferramenta1`
    FOREIGN KEY (`ferramentaId`)
    REFERENCES `ferramentasdb`.`ferramenta` (`ferramentaId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_verificacao_agendaVerificacao1`
    FOREIGN KEY (`agendamentoId`)
    REFERENCES `ferramentasdb`.`agendamento` (`agendamentoId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `ferramentasdb`.`msgDoDia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ferramentasdb`.`msgDoDia` (
  `msgDoDiaId` INT NOT NULL AUTO_INCREMENT,
  `mensagem` MEDIUMTEXT NOT NULL,
  `dataMsg` DATETIME NOT NULL,
  PRIMARY KEY (`msgDoDiaId`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
