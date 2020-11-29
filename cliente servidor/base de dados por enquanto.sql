-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Nov-2020 às 23:02
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `tipo_categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `tipo_categoria`) VALUES
(1, 'acessorios');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `codigo_produto` varchar(45) NOT NULL,
  `nome_produto` varchar(45) NOT NULL,
  `cor_produto` varchar(45) NOT NULL,
  `valor_produto` varchar(45) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `codigo_produto`, `nome_produto`, `cor_produto`, `valor_produto`, `id_categoria`) VALUES
(1, '123', 'teste', 'azul', '10', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome_usuario` varchar(45) NOT NULL,
  `email_usuario` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `senha_usuario` varchar(45) NOT NULL,
  `tipo_usuario` char(45) NOT NULL,
  `status_usuario` varchar(45) NOT NULL,
  `foto_usuario` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `email_usuario`, `usuario`, `senha_usuario`, `tipo_usuario`, `status_usuario`, `foto_usuario`) VALUES
(1, 'richard', 'junior.andrade.df@hotmail.com', 'teste', '202cb962ac59075b964b07152d234b70', '1', 'ativo', 'WhatsApp Image 2020-11-24 at 16.10.02.jpeg'),
(2, 'nathalia', 'mrsgasai@gmail.com', 'nathalia', '81dc9bdb52d04dc20036dbd8313ed055', '2', 'ativo', 'usuario.png'),
(3, 'teste', 'teste@hotmail.com', 'testei', '202cb962ac59075b964b07152d234b70', '2', 'ativo', 'atendente.jpg'),
(4, 'teste', 'richard1@hotmail.com', 'teste2', '202cb962ac59075b964b07152d234b70', '2', 'ativo', 'atendente.jpg'),
(5, 'tste', 'testei@hotmail.com', 'teste3', '202cb962ac59075b964b07152d234b70', '2', 'ativo', 'Logo Richard Calhas.png'),
(6, 'tsseet', 'taetaet@hotmail.com', 'teste8', '202cb962ac59075b964b07152d234b70', '2', 'ativo', 'atendente.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `fk_produto_categoria_idx` (`id_categoria`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `fk_produto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
