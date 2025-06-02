-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/06/2025 às 23:59
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
-- Banco de dados: `etecmcm2`
--
CREATE DATABASE IF NOT EXISTS `etecmcm2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `etecmcm2`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nome_cat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nome_cat`) VALUES
(1, 'Laticinios'),
(2, 'Higiene'),
(3, 'Limpeza'),
(4, 'Frios'),
(5, 'Enlatados'),
(7, 'Açougue');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `unidade_medida` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id_produto`, `nome`, `preco`, `quant`, `marca`, `id_categoria`, `unidade_medida`) VALUES
(3, 'Chocolate', 10.80, 70, 'Nestle', 1, 'g'),
(4, 'Bolacha ao leite', 10.80, 70, 'Marilan', 1, 'g'),
(5, 'Queijo', 25.74, 15, 'Presidente', 1, 'g'),
(6, 'Doce de leite', 15.00, 10, 'Aviação', 1, 'g'),
(7, 'Leite', 6.56, 30, 'Jussara', 1, 'g'),
(8, 'Pasta de dente', 10.00, 30, 'Colgate', 2, 'un'),
(9, 'Sabonete líquido', 15.30, 10, 'Protex', 2, 'un'),
(10, 'Shampoo', 20.10, 6, 'Dove', 2, 'un'),
(11, 'Condicionador', 25.00, 6, 'Panteine', 2, 'un'),
(12, 'Cotonete', 5.00, 20, 'Jhonsons', 2, 'un'),
(13, 'Candida', 15.00, 15, 'Super candida', 3, 'g'),
(14, 'Detergente', 4.50, 15, 'Ype', 3, 'g'),
(15, 'Sabão em pó', 18.50, 25, 'Brilhante', 3, 'g'),
(16, 'Limpador', 14.00, 10, 'Cif', 3, 'g'),
(17, 'Bombril', 5.00, 18, 'BOMBRIL', 3, 'g'),
(18, 'Frango', 25.00, 10, 'Seara', 4, 'g'),
(19, 'Pão de queijo', 30.00, 10, 'Perdigão', 4, 'g'),
(20, 'Peixe', 23.40, 16, 'Qualitá', 4, 'g'),
(21, 'Queijo ralado', 13.00, 16, 'Presidente', 4, 'g'),
(22, 'Bife', 25.00, 14, 'Maturatta', 4, 'g'),
(23, 'Sardinha', 8.50, 10, 'Gomes da Costa', 5, 'g'),
(24, 'Salsicha', 11.20, 12, 'Anglo', 5, 'g'),
(25, 'Ervilha', 4.30, 17, 'Predilecta', 5, 'g'),
(26, 'Milho', 5.30, 11, 'Quero', 5, 'g'),
(27, 'Leite condensado Moça', 10.00, 13, 'Nestle', 5, 'g'),
(38, 'Linguiça', 20.00, 14, 'Aurora', 7, 'kg'),
(39, 'Salsicha', 15.00, 12, 'Aurora', 7, 'kg'),
(40, 'Peito de frango', 16.99, 18, 'Seara', 7, 'kg'),
(41, 'Coxa de frango', 18.99, 10, 'Sadia', 7, 'kg'),
(42, 'Picanha', 69.99, 13, 'Friboi', 7, 'kg');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
