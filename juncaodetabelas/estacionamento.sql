-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/09/2025 às 18:40
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estacionamento`
--
CREATE DATABASE IF NOT EXISTS `estacionamento` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `estacionamento`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `andar`
--

CREATE TABLE `andar` (
  `codlugar` int(11) NOT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `andar` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `andar`
--

INSERT INTO `andar` (`codlugar`, `capacidade`, `andar`, `endereco`) VALUES
(1, 50, 'Térreo', NULL),
(2, 40, 'Subsolo 1', NULL),
(3, 30, 'Subsolo 2', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `dtnasc` datetime DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `cpf`, `dtnasc`, `nome`) VALUES
(2, '987.654.321-00', '1990-11-22 00:00:00', 'Maria Oliveira'),
(3, '321.654.987-00', '1978-03-10 00:00:00', 'Carlos Souza'),
(123456, NULL, '1985-06-15 00:00:00', 'João Silva'),
(321654, NULL, '1978-03-10 00:00:00', 'Carlos Souza'),
(987654, NULL, '1990-11-22 00:00:00', 'Maria Oliveira');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estaciona`
--

CREATE TABLE `estaciona` (
  `codestaciona` int(11) NOT NULL,
  `horsaida` datetime DEFAULT NULL,
  `dtentrada` datetime DEFAULT NULL,
  `horentrada` datetime DEFAULT NULL,
  `dtsaida` datetime DEFAULT NULL,
  `codveiculo` int(11) DEFAULT NULL,
  `codlugar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estaciona`
--

INSERT INTO `estaciona` (`codestaciona`, `horsaida`, `dtentrada`, `horentrada`, `dtsaida`, `codveiculo`, `codlugar`) VALUES
(2, '2025-09-01 19:30:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 2, 2),
(3, '2025-09-01 20:00:00', '2025-09-01 00:00:00', '0000-00-00 00:00:00', '2025-09-01 00:00:00', 3, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`) VALUES
(1, 'Fiat'),
(2, 'Honda Civic'),
(3, 'Chevrolet Onix'),
(4, 'Fiat Uno'),
(5, 'Honda Civic'),
(6, 'Chevrolet Onix');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `codveiculo` int(11) NOT NULL,
  `placa` int(11) DEFAULT NULL,
  `cor` varchar(20) DEFAULT NULL,
  `codcliente` int(11) DEFAULT NULL,
  `codmodelo` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`codveiculo`, `placa`, `cor`, `codcliente`, `codmodelo`, `ano`) VALUES
(1, 1234567, 'Vermelho', 123456, 1, NULL),
(2, 2345678, 'Preto', 987654, 2, NULL),
(3, 3456789, 'Branco', 321654, 3, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `andar`
--
ALTER TABLE `andar`
  ADD PRIMARY KEY (`codlugar`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`);

--
-- Índices de tabela `estaciona`
--
ALTER TABLE `estaciona`
  ADD PRIMARY KEY (`codestaciona`),
  ADD KEY `codveiculo` (`codveiculo`),
  ADD KEY `codlugar` (`codlugar`);

--
-- Índices de tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`codveiculo`),
  ADD KEY `codmodelo` (`codmodelo`),
  ADD KEY `codcliente` (`codcliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `andar`
--
ALTER TABLE `andar`
  MODIFY `codlugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=987655;

--
-- AUTO_INCREMENT de tabela `estaciona`
--
ALTER TABLE `estaciona`
  MODIFY `codestaciona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `codveiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `estaciona`
--
ALTER TABLE `estaciona`
  ADD CONSTRAINT `estaciona_ibfk_1` FOREIGN KEY (`codveiculo`) REFERENCES `veiculo` (`codveiculo`),
  ADD CONSTRAINT `estaciona_ibfk_2` FOREIGN KEY (`codlugar`) REFERENCES `andar` (`codlugar`);

--
-- Restrições para tabelas `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`codmodelo`) REFERENCES `modelo` (`codmodelo`),
  ADD CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codcliente`) REFERENCES `cliente` (`codcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
