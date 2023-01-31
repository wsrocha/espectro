-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.31 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para app_espectro
CREATE DATABASE IF NOT EXISTS `app_espectro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `app_espectro`;

-- Copiando estrutura para tabela app_espectro.configs
CREATE TABLE IF NOT EXISTS `configs` (
  `id_config` int NOT NULL AUTO_INCREMENT,
  `servico` varchar(50) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id_config`)
) ENGINE=MyISAM AUTO_INCREMENT=4004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela app_espectro.configs: 3 rows
/*!40000 ALTER TABLE `configs` DISABLE KEYS */;
INSERT INTO `configs` (`id_config`, `servico`, `valor`, `status`) VALUES
	(4001, 'gcp_local', 'eadd3bdee8e6fff3e32caea2c848feba', 1),
	(4002, 'gcp_cloud', '5ddc8f212ec20b398ccb9e65a08c3633\r\n', 1),
	(4003, 'gcp_api', '836be09936d5726a128a41f65532ff93', 1);
/*!40000 ALTER TABLE `configs` ENABLE KEYS */;

-- Copiando estrutura para tabela app_espectro.empresas
CREATE TABLE IF NOT EXISTS `empresas` (
  `id_empresa` int NOT NULL AUTO_INCREMENT,
  `empresa` varchar(50) NOT NULL,
  `host` varchar(255) NOT NULL,
  `database` varchar(50) NOT NULL,
  `logindb` varchar(50) NOT NULL,
  `senhadb` varchar(50) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=MyISAM AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela app_espectro.empresas: 1 rows
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` (`id_empresa`, `empresa`, `host`, `database`, `logindb`, `senhadb`) VALUES
	(1001, 'mdev', 'mdev.com.br', 'app_mdev', 'mdev_local', 'mdevmdev');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;

-- Copiando estrutura para tabela app_espectro.espectro_admin
CREATE TABLE IF NOT EXISTS `espectro_admin` (
  `id_item` int DEFAULT NULL,
  `servico` text,
  `item` varchar(50) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela app_espectro.espectro_admin: 1 rows
/*!40000 ALTER TABLE `espectro_admin` DISABLE KEYS */;
INSERT INTO `espectro_admin` (`id_item`, `servico`, `item`, `descricao`) VALUES
	(1, 'erro', '910', 'credenciais do banco estão inválidas');
/*!40000 ALTER TABLE `espectro_admin` ENABLE KEYS */;

-- Copiando estrutura para tabela app_espectro.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `msg_log` varchar(255) NOT NULL,
  `id_usuario` int DEFAULT NULL,
  `id_empresa` int DEFAULT NULL,
  `dt_log` datetime NOT NULL,
  PRIMARY KEY (`id_log`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela app_espectro.logs: 70 rows
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` (`id_log`, `tipo`, `msg_log`, `id_usuario`, `id_empresa`, `dt_log`) VALUES
	(1, 'sistema', 'testando log', 101, 1001, '2023-01-21 11:47:24'),
	(2, 'login', 'Tentando conectar com usuário teste.teste@teste.com...', 9999, 0, '2023-01-21 03:15:17'),
	(3, 'login', 'Falha no login de teste.teste@teste.com. Credenciais inválidas.', 9999, 0, '2023-01-21 03:15:17'),
	(4, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 03:18:15'),
	(5, 'login', 'Falha no login de wes@wes.com. Credenciais inválidas.', 9999, 0, '2023-01-21 03:18:15'),
	(6, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 03:24:10'),
	(7, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 03:25:05'),
	(8, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 03:25:08'),
	(9, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 03:25:48'),
	(10, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 03:25:48'),
	(11, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 03:26:58'),
	(12, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 03:26:58'),
	(13, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 03:27:13'),
	(14, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 03:27:13'),
	(15, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 03:50:47'),
	(16, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 03:50:47'),
	(17, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 03:57:06'),
	(18, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 03:57:06'),
	(19, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 03:59:30'),
	(20, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 03:59:30'),
	(21, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 03:59:51'),
	(22, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 03:59:51'),
	(23, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:05:30'),
	(24, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:05:30'),
	(25, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:05:44'),
	(26, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:05:44'),
	(27, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:06:02'),
	(28, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:06:02'),
	(29, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:06:27'),
	(30, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:06:27'),
	(31, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:12:32'),
	(32, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:12:32'),
	(33, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:12:53'),
	(34, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:12:53'),
	(35, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:12:57'),
	(36, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:12:57'),
	(37, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:13:28'),
	(38, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:13:28'),
	(39, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:13:31'),
	(40, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:13:31'),
	(41, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:13:41'),
	(42, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:13:41'),
	(43, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:14:39'),
	(44, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:14:39'),
	(45, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:22:35'),
	(46, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:22:35'),
	(47, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:22:44'),
	(48, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:22:44'),
	(49, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:23:03'),
	(50, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:23:03'),
	(51, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:24:24'),
	(52, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:24:24'),
	(53, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:24:30'),
	(54, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:24:30'),
	(55, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:24:47'),
	(56, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:24:47'),
	(57, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:25:26'),
	(58, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:25:26'),
	(59, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:40:01'),
	(60, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:40:01'),
	(61, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:40:50'),
	(62, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:40:50'),
	(63, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:41:11'),
	(64, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:41:11'),
	(65, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 04:53:04'),
	(66, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 04:53:04'),
	(67, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 05:04:06'),
	(68, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 05:04:06'),
	(69, 'login', 'Tentando conectar com usuário wes@wes.com...', 9999, 0, '2023-01-21 05:04:16'),
	(70, 'login', 'O usuário wes@wes.com entrou no espectro.', 9999, 0, '2023-01-21 05:04:16');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;

-- Copiando estrutura para tabela app_espectro.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `perfil` int DEFAULT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `ativo` int NOT NULL,
  `excluido` int NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela app_espectro.usuarios: 1 rows
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id_usuario`, `perfil`, `nome`, `email`, `senha`, `ultimo_login`, `ativo`, `excluido`) VALUES
	(101, 0, 'Wesley Rocha', 'wes@wes.com', '013de0c99e66d589b96d74eb85d44c58', '2022-12-31 23:59:59', 1, 0);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
