-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: sql.freedb.tech
-- Generation Time: Oct 09, 2023 at 07:59 AM
-- Server version: 8.0.34-0ubuntu0.22.04.1
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freedb_ferramentasdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `caixaFerramentas`
--

CREATE TABLE `caixaFerramentas` (
  `caixaFerramentasId` int NOT NULL,
  `funcionarioId` int NOT NULL,
  `codigo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `caixaFerramentas`
--

INSERT INTO `caixaFerramentas` (`caixaFerramentasId`, `funcionarioId`, `codigo`) VALUES
(11, 3, '00CodChPh'),
(13, 4, '01CaixaJa'),
(14, 4, '01FerramMarret'),
(15, 4, '01FerramChIng'),
(16, 4, '01FerramMult');

-- --------------------------------------------------------

--
-- Table structure for table `ferramenta`
--

CREATE TABLE `ferramenta` (
  `ferramentaId` int NOT NULL,
  `caixaFerramentasId` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `descricao` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ferramenta`
--

INSERT INTO `ferramenta` (`ferramentaId`, `caixaFerramentasId`, `nome`, `codigo`, `descricao`) VALUES
(1, 9, 'Marreta', '00CodMarret', 'marreta '),
(2, 9, 'Chave Philips ', '00CodChPh', 'chave Philips '),
(3, 13, 'Marreta ', '01FerramMarret', ''),
(4, 13, 'Chave Inglesa ', '01FerramChIng', 'chave Inglesa '),
(5, 13, 'Multímetro ', '01FerramMult', 'multímetro ');

-- --------------------------------------------------------

--
-- Table structure for table `funcionario`
--

CREATE TABLE `funcionario` (
  `funcionarioId` int NOT NULL,
  `supervisorId` int NOT NULL,
  `nomeFuncionario` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `setorId` int NOT NULL,
  `cargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `funcionario`
--

INSERT INTO `funcionario` (`funcionarioId`, `supervisorId`, `nomeFuncionario`, `email`, `setorId`, `cargo`) VALUES
(3, 2, 'jao', 'jao@teste.com', 0, 'Auxiliar '),
(4, 2, 'Paula da Silva Tejano', 'p@teste.com', 1, 'Auxiliar ');

-- --------------------------------------------------------

--
-- Table structure for table `loginFuncionario`
--

CREATE TABLE `loginFuncionario` (
  `loginFuncionarioId` int NOT NULL,
  `funcionarioId` int NOT NULL,
  `senha` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loginFuncionario`
--

INSERT INTO `loginFuncionario` (`loginFuncionarioId`, `funcionarioId`, `senha`) VALUES
(1, 3, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(2, 4, 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');

-- --------------------------------------------------------

--
-- Table structure for table `loginSupervisor`
--

CREATE TABLE `loginSupervisor` (
  `loginSupervisorId` int NOT NULL,
  `supervisorId` int NOT NULL,
  `senha` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `msgDoDia`
--

CREATE TABLE `msgDoDia` (
  `msgDoDiaId` int NOT NULL,
  `supervisorId` int NOT NULL,
  `mensagem` varchar(300) NOT NULL,
  `dataMsg` datetime NOT NULL,
  `dataExpiracao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setor`
--

CREATE TABLE `setor` (
  `setorId` int NOT NULL,
  `nomeSetor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `setor`
--

INSERT INTO `setor` (`setorId`, `nomeSetor`) VALUES
(1, 'Almoxarifado'),
(2, 'setor02');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `supervisorId` int NOT NULL,
  `nomeSupervisor` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `setorId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`supervisorId`, `nomeSupervisor`, `email`, `setorId`) VALUES
(2, 'Marcos', 'marcos@teste.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `verificacao`
--

CREATE TABLE `verificacao` (
  `verificacaoId` int NOT NULL,
  `ferramentaId` int NOT NULL,
  `funcionarioId` int NOT NULL,
  `dataVerificacao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `verificacao`
--

INSERT INTO `verificacao` (`verificacaoId`, `ferramentaId`, `funcionarioId`, `dataVerificacao`) VALUES
(10, 3, 4, '2023-10-08 08:02:59'),
(11, 4, 4, '2023-10-08 08:03:00'),
(12, 5, 4, '2023-10-08 08:03:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caixaFerramentas`
--
ALTER TABLE `caixaFerramentas`
  ADD PRIMARY KEY (`caixaFerramentasId`),
  ADD KEY `func_caixa` (`funcionarioId`);

--
-- Indexes for table `ferramenta`
--
ALTER TABLE `ferramenta`
  ADD PRIMARY KEY (`ferramentaId`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`funcionarioId`),
  ADD KEY `func_superv` (`supervisorId`);

--
-- Indexes for table `loginFuncionario`
--
ALTER TABLE `loginFuncionario`
  ADD PRIMARY KEY (`loginFuncionarioId`),
  ADD KEY `login_func` (`funcionarioId`);

--
-- Indexes for table `loginSupervisor`
--
ALTER TABLE `loginSupervisor`
  ADD KEY `login_superv` (`loginSupervisorId`);

--
-- Indexes for table `msgDoDia`
--
ALTER TABLE `msgDoDia`
  ADD PRIMARY KEY (`msgDoDiaId`);

--
-- Indexes for table `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`setorId`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`supervisorId`),
  ADD KEY `sup_setor` (`setorId`);

--
-- Indexes for table `verificacao`
--
ALTER TABLE `verificacao`
  ADD PRIMARY KEY (`verificacaoId`),
  ADD KEY `verif_ferramenta` (`ferramentaId`),
  ADD KEY `verif_func` (`funcionarioId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `caixaFerramentas`
--
ALTER TABLE `caixaFerramentas`
  MODIFY `caixaFerramentasId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ferramenta`
--
ALTER TABLE `ferramenta`
  MODIFY `ferramentaId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `funcionarioId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loginFuncionario`
--
ALTER TABLE `loginFuncionario`
  MODIFY `loginFuncionarioId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `msgDoDia`
--
ALTER TABLE `msgDoDia`
  MODIFY `msgDoDiaId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setor`
--
ALTER TABLE `setor`
  MODIFY `setorId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `supervisorId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `verificacao`
--
ALTER TABLE `verificacao`
  MODIFY `verificacaoId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `caixaFerramentas`
--
ALTER TABLE `caixaFerramentas`
  ADD CONSTRAINT `func_caixa` FOREIGN KEY (`funcionarioId`) REFERENCES `funcionario` (`funcionarioId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `func_superv` FOREIGN KEY (`supervisorId`) REFERENCES `supervisor` (`supervisorId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `loginFuncionario`
--
ALTER TABLE `loginFuncionario`
  ADD CONSTRAINT `login_func` FOREIGN KEY (`funcionarioId`) REFERENCES `funcionario` (`funcionarioId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `loginSupervisor`
--
ALTER TABLE `loginSupervisor`
  ADD CONSTRAINT `login_superv` FOREIGN KEY (`loginSupervisorId`) REFERENCES `supervisor` (`supervisorId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `msgDoDia`
--
ALTER TABLE `msgDoDia`
  ADD CONSTRAINT `msg_supervisor` FOREIGN KEY (`msgDoDiaId`) REFERENCES `supervisor` (`supervisorId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD CONSTRAINT `sup_setor` FOREIGN KEY (`setorId`) REFERENCES `setor` (`setorId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `verificacao`
--
ALTER TABLE `verificacao`
  ADD CONSTRAINT `verif_ferramenta` FOREIGN KEY (`ferramentaId`) REFERENCES `ferramenta` (`ferramentaId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `verif_func` FOREIGN KEY (`funcionarioId`) REFERENCES `funcionario` (`funcionarioId`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
