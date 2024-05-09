-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Maio-2024 às 17:59
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bravavon`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `form_contato`
--

CREATE TABLE `form_contato` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `mensagem` text NOT NULL,
  `concorda_privacidade` varchar(3) DEFAULT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `form_contato`
--

INSERT INTO `form_contato` (`id`, `nome`, `email`, `sexo`, `telefone`, `mensagem`, `concorda_privacidade`, `data_envio`) VALUES
(1, 'Rodrigo', 'rodrigobranco2006@gmail.com', 'Masculino', '915251569', 'ola', '1', '2024-05-08 11:07:46'),
(2, 'Rodrigo', 'rodrigobranco2006@gmail.com', 'Masculino', '915251569', 'ola', '0', '2024-05-08 11:10:19'),
(3, 'Rodrigo', 'rodrigobranco2006@gmail.com', 'Masculino', '915251569', 'olaaa', '0', '2024-05-08 11:10:48'),
(4, 'Rodrigo', 'rodrigobranco2006@gmail.com', 'Masculino', '915251569', 'ola', '0', '2024-05-08 11:11:56'),
(5, 'Rodrigo', 'rodrigobranco2006@gmail.com', 'Masculino', '915251569', 'ola ola', '0', '2024-05-08 11:13:21'),
(6, 'Rodrigo', 'rodrigobranco2006@gmail.com', 'Masculino', '915251569', '123', 'Sim', '2024-05-08 11:17:17'),
(7, 'Rodrigo', 'rodrigobranco2006@gmail.com', 'Prefiro nã', '915251569', 'o meu nome é', 'Sim', '2024-05-08 11:31:58');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `form_contato`
--
ALTER TABLE `form_contato`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `form_contato`
--
ALTER TABLE `form_contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
