 
-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 12/04/2022 às 10:30
-- Versão do servidor: 5.7.28-0ubuntu0.18.04.4
-- Versão do PHP: 7.2.24-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Giovanni2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `times`
--

CREATE TABLE `times` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(150) NOT NULL,
  `titulos` tinyint(4) NOT NULL,
  `estado` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Usuario`
--

CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `times`
--
ALTER TABLE `times`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
© 2022 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
Loading complete