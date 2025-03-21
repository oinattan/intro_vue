-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/11/2024 às 22:06
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `forms`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `turismo`
--

CREATE TABLE `turismo` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade_uf` varchar(100) DEFAULT NULL,
  `assunto` varchar(150) DEFAULT NULL,
  `mensagem` text DEFAULT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turismo`
--

INSERT INTO `turismo` (`id`, `nome`, `telefone`, `email`, `endereco`, `bairro`, `cidade_uf`, `assunto`, `mensagem`, `data_envio`) VALUES
(1, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'sssssssssss', 'ssssssssss', 'bbbbbbbbbbbbbbb', '2024-08-31 15:19:41'),
(2, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaaaaaaa', '2024-08-31 15:19:41'),
(3, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaaaaaaa', '2024-08-31 15:19:41'),
(4, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:19:41'),
(5, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:19:41'),
(6, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:19:41'),
(7, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:19:41'),
(8, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:19:41'),
(9, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:19:41'),
(10, 'Meraki', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:19:41'),
(11, 'Meraki', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaaaaa', '2024-08-31 15:19:41'),
(12, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'sssssssssss', 'ssssssssss', 'bbbbbbbbbbbbbbb', '2024-08-31 15:20:30'),
(13, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaaaaaaa', '2024-08-31 15:20:30'),
(14, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaaaaaaa', '2024-08-31 15:20:30'),
(15, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:20:30'),
(16, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:20:30'),
(17, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:20:30'),
(18, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:20:30'),
(19, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:20:30'),
(20, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:20:30'),
(21, 'Meraki', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:20:30'),
(22, 'Meraki', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaaaaa', '2024-08-31 15:20:30'),
(23, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'sssssssssss', 'ssssssssss', 'bbbbbbbbbbbbbbb', '2024-08-31 15:23:32'),
(24, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaaaaaaa', '2024-08-31 15:23:32'),
(25, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaaaaaaa', '2024-08-31 15:23:32'),
(26, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:23:32'),
(27, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:23:32'),
(28, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:23:32'),
(29, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:23:32'),
(30, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:23:32'),
(31, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:23:32'),
(32, 'Meraki', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:23:32'),
(33, 'Meraki', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaaaaa', '2024-08-31 15:23:32'),
(34, '', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:23:32'),
(35, '', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:23:32'),
(36, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'sssssssssss', 'ssssssssss', 'bbbbbbbbbbbbbbb', '2024-08-31 15:25:28'),
(37, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaaaaaaa', '2024-08-31 15:25:28'),
(38, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaaaaaaa', '2024-08-31 15:25:28'),
(39, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:25:28'),
(40, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:25:28'),
(41, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:25:28'),
(42, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:25:28'),
(43, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:25:28'),
(44, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:25:28'),
(45, 'Meraki', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:25:28'),
(46, 'Meraki', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaaaaa', '2024-08-31 15:25:28'),
(47, '', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:25:28'),
(48, '', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:25:28'),
(49, '', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:25:28'),
(50, ' Teste', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'BBB', '2024-08-31 15:25:28'),
(51, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'sssssssssss', 'ssssssssss', 'bbbbbbbbbbbbbbb', '2024-08-31 15:25:33'),
(52, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaaaaaaa', '2024-08-31 15:25:33'),
(53, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaaaaaaa', '2024-08-31 15:25:33'),
(54, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:25:34'),
(55, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:25:34'),
(56, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:25:34'),
(57, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:25:34'),
(58, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:25:34'),
(59, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:25:34'),
(60, 'Meraki', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:25:34'),
(61, 'Meraki', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaaaaa', '2024-08-31 15:25:34'),
(62, '', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:25:34'),
(63, '', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:25:34'),
(64, '', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:25:34'),
(65, ' Teste', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'BBB', '2024-08-31 15:25:34'),
(66, ' Teste', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'BBB', '2024-08-31 15:25:34'),
(67, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'sssssssssss', 'ssssssssss', 'bbbbbbbbbbbbbbb', '2024-08-31 15:32:11'),
(68, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaaaaaaa', '2024-08-31 15:32:11'),
(69, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaaaaaaa', '2024-08-31 15:32:11'),
(70, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:32:11'),
(71, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:32:11'),
(72, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:32:11'),
(73, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:32:11'),
(74, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:32:11'),
(75, 'test', 'test', 'test@teste.com', 'teste', 'ssssssssss', 'aaaaaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaa', '2024-08-31 15:32:11'),
(76, 'Meraki', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:32:11'),
(77, 'Meraki', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaaaaa', '2024-08-31 15:32:11'),
(78, '', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:32:11'),
(79, '', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:32:11'),
(80, '', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'aaaaaa', '2024-08-31 15:32:11'),
(81, ' Teste', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'BBB', '2024-08-31 15:32:11'),
(82, ' Teste', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'BBB', '2024-08-31 15:32:11'),
(83, ' Teste', '65992616870', 'admin@palusa.nt', 'Rua América do Sul, Jardim dos Estados, Várzea Grande, MT', 'aa', 'aaa', 'aaa', 'BBB', '2024-08-31 15:32:11');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `turismo`
--
ALTER TABLE `turismo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `turismo`
--
ALTER TABLE `turismo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
