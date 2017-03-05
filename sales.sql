-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03-Mar-2017 às 19:58
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `idcadastro` int(11) NOT NULL,
  `nmcadastro` varchar(200) NOT NULL,
  `dtnascimento` date NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `id_unidade` int(11) DEFAULT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`idcadastro`, `nmcadastro`, `dtnascimento`, `email`, `telefone`, `id_unidade`, `score`) VALUES
(2, 'teste123', '2017-03-09', 'dadas@dasdasd.com.br', '1194882691', NULL, 0),
(3, 'julio ramos', '1989-11-20', 'julio_davids_89@hotmail.com', '2147483647', 5, 0),
(4, 'angra', '1989-11-20', 'dasdas', '2147483647', 7, 0),
(5, 'julio ramos', '1989-11-20', 'julio_davids_89@hotmail.com', '2147483647', 2, 0),
(6, 'julio ramos123', '1989-11-20', 'julio_davids_89@hotmail.com', '2147483647', 2, 0),
(7, 'julio ramos222', '1989-11-20', 'julio_davids_89@hotmail.com', '2147483647', 7, 0),
(8, 'julio ramosgg', '1989-11-20', 'julio_davids_89@hotmail.com', '11948826911', 4, 0),
(9, 'julio ramos', '1989-11-20', 'julio_davids_89@hotmail.com', '11948826911', 9, 0),
(10, 'julio ramos', '1989-11-20', 'julio_davids_89@hotmail.com', '11948826911', 6, 14),
(11, 'julio ramos', '1989-11-20', 'julio_davids_89@hotmail.com', '11948826911', 5, 7),
(12, 'julio ramos', '1989-11-20', 'julio_davids_89@hotmail.com', '11948826911', 5, 10),
(13, 'julio ramos', '1989-11-20', 'julio_davids_89@hotmail.com', '11948826911', 2, 6),
(14, 'julio ramos', '1989-11-20', 'julio_davids_89@hotmail.com', '11948826911', 2, 6),
(15, 'julio ramos', '1989-11-20', 'julio_davids_89@hotmail.com', '11948826911', 6, 9),
(16, 'julio ramos', '1989-11-20', 'julio_davids_89@hotmail.com', '11948826911', 3, 6),
(17, 'julio ramos', '1989-11-20', 'julio_davids_89@hotmail.com', '11948826911', 4, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `regiao`
--

CREATE TABLE `regiao` (
  `id` int(11) NOT NULL,
  `nmregiao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `regiao`
--

INSERT INTO `regiao` (`id`, `nmregiao`) VALUES
(1, 'Norte'),
(2, 'Nordeste'),
(3, 'Sul'),
(4, 'Sudeste'),
(5, 'Centro-Oeste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `unidade`
--

CREATE TABLE `unidade` (
  `id` int(11) NOT NULL,
  `nmunidade` varchar(100) NOT NULL,
  `id_regiao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `unidade`
--

INSERT INTO `unidade` (`id`, `nmunidade`, `id_regiao`) VALUES
(2, 'Salvador', 2),
(3, 'Recife', 2),
(4, 'Brasília', 5),
(5, 'São Paulo', 4),
(6, 'Rio de Janeiro', 4),
(7, 'Belo Horizonte', 4),
(8, 'Belo Horizonte', 4),
(9, 'Porto Alegre', 3),
(10, 'Curitiba', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`idcadastro`),
  ADD KEY `fk_cadastro` (`id_unidade`);

--
-- Indexes for table `regiao`
--
ALTER TABLE `regiao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unidade`
--
ALTER TABLE `unidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_unidade` (`id_regiao`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `idcadastro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `regiao`
--
ALTER TABLE `regiao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `unidade`
--
ALTER TABLE `unidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD CONSTRAINT `fk_cadastro` FOREIGN KEY (`id_unidade`) REFERENCES `unidade` (`id`);

--
-- Limitadores para a tabela `unidade`
--
ALTER TABLE `unidade`
  ADD CONSTRAINT `fk_unidade` FOREIGN KEY (`id_regiao`) REFERENCES `regiao` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
