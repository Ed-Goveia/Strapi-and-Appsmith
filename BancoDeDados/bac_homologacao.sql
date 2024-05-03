-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: host.docker.internal:3307
-- Tempo de geração: 03/05/2024 às 16:38
-- Versão do servidor: 8.3.0
-- Versão do PHP: 8.2.8

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bac`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_parameters` json DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(4, 'plugin::content-manager.explorer.delete', '{}', 'api::animal.animal', '{}', '[]', '2023-12-27 13:12:48.242000', '2023-12-27 13:12:48.242000', NULL, NULL),
(5, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.256000', '2023-12-27 13:12:48.256000', NULL, NULL),
(6, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.272000', '2023-12-27 13:12:48.272000', NULL, NULL),
(7, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.286000', '2023-12-27 13:12:48.286000', NULL, NULL),
(8, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.299000', '2023-12-27 13:12:48.299000', NULL, NULL),
(9, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.316000', '2023-12-27 13:12:48.316000', NULL, NULL),
(10, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.331000', '2023-12-27 13:12:48.331000', NULL, NULL),
(14, 'plugin::content-manager.explorer.delete', '{}', 'api::animal.animal', '{}', '[\"admin::is-creator\"]', '2023-12-27 13:12:48.393000', '2023-12-27 13:12:48.393000', NULL, NULL),
(15, 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2023-12-27 13:12:48.412000', '2023-12-27 13:12:48.412000', NULL, NULL),
(16, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.429000', '2023-12-27 13:12:48.429000', NULL, NULL),
(17, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.443000', '2023-12-27 13:12:48.443000', NULL, NULL),
(18, 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2023-12-27 13:12:48.458000', '2023-12-27 13:12:48.458000', NULL, NULL),
(19, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.473000', '2023-12-27 13:12:48.473000', NULL, NULL),
(20, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.488000', '2023-12-27 13:12:48.488000', NULL, NULL),
(27, 'plugin::content-manager.explorer.delete', '{}', 'api::animal.animal', '{}', '[]', '2023-12-27 13:12:48.633000', '2023-12-27 13:12:48.633000', NULL, NULL),
(28, 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2023-12-27 13:12:48.650000', '2023-12-27 13:12:48.650000', NULL, NULL),
(29, 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.665000', '2023-12-27 13:12:48.665000', NULL, NULL),
(30, 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.679000', '2023-12-27 13:12:48.679000', NULL, NULL),
(31, 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.694000', '2023-12-27 13:12:48.694000', NULL, NULL),
(32, 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.708000', '2023-12-27 13:12:48.708000', NULL, NULL),
(33, 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.724000', '2023-12-27 13:12:48.724000', NULL, NULL),
(34, 'plugin::upload.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.737000', '2023-12-27 13:12:48.737000', NULL, NULL),
(35, 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.752000', '2023-12-27 13:12:48.752000', NULL, NULL),
(36, 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.766000', '2023-12-27 13:12:48.766000', NULL, NULL),
(37, 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.780000', '2023-12-27 13:12:48.780000', NULL, NULL),
(38, 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.796000', '2023-12-27 13:12:48.796000', NULL, NULL),
(39, 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.813000', '2023-12-27 13:12:48.813000', NULL, NULL),
(40, 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.828000', '2023-12-27 13:12:48.828000', NULL, NULL),
(45, 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.900000', '2023-12-27 13:12:48.900000', NULL, NULL),
(46, 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.915000', '2023-12-27 13:12:48.915000', NULL, NULL),
(47, 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.930000', '2023-12-27 13:12:48.930000', NULL, NULL),
(48, 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.944000', '2023-12-27 13:12:48.944000', NULL, NULL),
(49, 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.959000', '2023-12-27 13:12:48.959000', NULL, NULL),
(50, 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.974000', '2023-12-27 13:12:48.974000', NULL, NULL),
(51, 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2023-12-27 13:12:48.987000', '2023-12-27 13:12:48.987000', NULL, NULL),
(52, 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.001000', '2023-12-27 13:12:49.001000', NULL, NULL),
(53, 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.016000', '2023-12-27 13:12:49.016000', NULL, NULL),
(54, 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.030000', '2023-12-27 13:12:49.030000', NULL, NULL),
(55, 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.046000', '2023-12-27 13:12:49.046000', NULL, NULL),
(56, 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.060000', '2023-12-27 13:12:49.060000', NULL, NULL),
(57, 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.075000', '2023-12-27 13:12:49.075000', NULL, NULL),
(58, 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.090000', '2023-12-27 13:12:49.090000', NULL, NULL),
(59, 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.105000', '2023-12-27 13:12:49.105000', NULL, NULL),
(60, 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.120000', '2023-12-27 13:12:49.120000', NULL, NULL),
(61, 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.135000', '2023-12-27 13:12:49.135000', NULL, NULL),
(62, 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.151000', '2023-12-27 13:12:49.151000', NULL, NULL),
(63, 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.166000', '2023-12-27 13:12:49.166000', NULL, NULL),
(64, 'admin::users.create', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.180000', '2023-12-27 13:12:49.180000', NULL, NULL),
(65, 'admin::users.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.195000', '2023-12-27 13:12:49.195000', NULL, NULL),
(66, 'admin::users.update', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.209000', '2023-12-27 13:12:49.209000', NULL, NULL),
(67, 'admin::users.delete', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.225000', '2023-12-27 13:12:49.225000', NULL, NULL),
(68, 'admin::roles.create', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.239000', '2023-12-27 13:12:49.239000', NULL, NULL),
(69, 'admin::roles.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.253000', '2023-12-27 13:12:49.253000', NULL, NULL),
(70, 'admin::roles.update', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.267000', '2023-12-27 13:12:49.267000', NULL, NULL),
(71, 'admin::roles.delete', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.281000', '2023-12-27 13:12:49.281000', NULL, NULL),
(72, 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.296000', '2023-12-27 13:12:49.296000', NULL, NULL),
(73, 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.310000', '2023-12-27 13:12:49.310000', NULL, NULL),
(74, 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.325000', '2023-12-27 13:12:49.325000', NULL, NULL),
(75, 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.339000', '2023-12-27 13:12:49.339000', NULL, NULL),
(76, 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.354000', '2023-12-27 13:12:49.354000', NULL, NULL),
(77, 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.371000', '2023-12-27 13:12:49.371000', NULL, NULL),
(78, 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.386000', '2023-12-27 13:12:49.386000', NULL, NULL),
(79, 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.400000', '2023-12-27 13:12:49.400000', NULL, NULL),
(80, 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.416000', '2023-12-27 13:12:49.416000', NULL, NULL),
(81, 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.430000', '2023-12-27 13:12:49.430000', NULL, NULL),
(82, 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.444000', '2023-12-27 13:12:49.444000', NULL, NULL),
(83, 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.459000', '2023-12-27 13:12:49.459000', NULL, NULL),
(84, 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.475000', '2023-12-27 13:12:49.475000', NULL, NULL),
(85, 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2023-12-27 13:12:49.489000', '2023-12-27 13:12:49.489000', NULL, NULL),
(97, 'plugin::content-manager.explorer.delete', '{}', 'api::racao.racao', '{}', '[]', '2023-12-27 15:42:14.041000', '2023-12-27 15:42:14.041000', NULL, NULL),
(131, 'plugin::content-manager.explorer.delete', '{}', 'api::unidade.unidade', '{}', '[]', '2023-12-28 11:27:20.056000', '2023-12-28 11:27:20.056000', NULL, NULL),
(139, 'plugin::content-manager.explorer.delete', '{}', 'api::condutor.condutor', '{}', '[]', '2023-12-28 11:49:12.806000', '2023-12-28 11:49:12.806000', NULL, NULL),
(150, 'plugin::content-versioning.save', '{}', NULL, '{}', '[]', '2024-01-12 15:58:57.714000', '2024-01-12 15:58:57.714000', NULL, NULL),
(184, 'plugin::content-manager.explorer.delete', '{}', 'api::justificativa-baixa.justificativa-baixa', '{}', '[]', '2024-02-07 18:27:16.678000', '2024-02-07 18:27:16.678000', NULL, NULL),
(186, 'plugin::content-manager.explorer.create', '{}', 'api::justificativa-baixa.justificativa-baixa', '{\"fields\": [\"justificativa\", \"animal\"]}', '[]', '2024-02-07 18:35:45.704000', '2024-02-07 18:35:45.704000', NULL, NULL),
(187, 'plugin::content-manager.explorer.read', '{}', 'api::justificativa-baixa.justificativa-baixa', '{\"fields\": [\"justificativa\", \"animal\"]}', '[]', '2024-02-07 18:35:45.746000', '2024-02-07 18:35:45.746000', NULL, NULL),
(188, 'plugin::content-manager.explorer.update', '{}', 'api::justificativa-baixa.justificativa-baixa', '{\"fields\": [\"justificativa\", \"animal\"]}', '[]', '2024-02-07 18:35:45.767000', '2024-02-07 18:35:45.767000', NULL, NULL),
(192, 'plugin::content-manager.explorer.delete', '{}', 'api::tratamento-medico.tratamento-medico', '{}', '[]', '2024-02-07 19:21:03.469000', '2024-02-07 19:21:03.469000', NULL, NULL),
(193, 'plugin::content-manager.explorer.publish', '{}', 'api::tratamento-medico.tratamento-medico', '{}', '[]', '2024-02-07 19:21:03.487000', '2024-02-07 19:21:03.487000', NULL, NULL),
(208, 'plugin::content-manager.explorer.delete', '{}', 'api::doenca.doenca', '{}', '[]', '2024-02-07 19:49:04.216000', '2024-02-07 19:49:04.216000', NULL, NULL),
(219, 'plugin::content-manager.explorer.delete', '{}', 'api::e-causado.e-causado', '{}', '[]', '2024-02-07 19:55:46.928000', '2024-02-07 19:55:46.928000', NULL, NULL),
(220, 'plugin::content-manager.explorer.publish', '{}', 'api::e-causado.e-causado', '{}', '[]', '2024-02-07 19:55:46.946000', '2024-02-07 19:55:46.946000', NULL, NULL),
(224, 'plugin::content-manager.explorer.delete', '{}', 'api::medicamento.medicamento', '{}', '[]', '2024-02-07 19:58:30.651000', '2024-02-07 19:58:30.651000', NULL, NULL),
(225, 'plugin::content-manager.explorer.publish', '{}', 'api::medicamento.medicamento', '{}', '[]', '2024-02-07 19:58:30.696000', '2024-02-07 19:58:30.696000', NULL, NULL),
(235, 'plugin::content-manager.explorer.delete', '{}', 'api::possui.possui', '{}', '[]', '2024-02-07 20:03:34.357000', '2024-02-07 20:03:34.357000', NULL, NULL),
(236, 'plugin::content-manager.explorer.publish', '{}', 'api::possui.possui', '{}', '[]', '2024-02-07 20:03:34.373000', '2024-02-07 20:03:34.373000', NULL, NULL),
(259, 'plugin::content-manager.explorer.create', '{}', 'api::e-causado.e-causado', '{\"fields\": [\"tratamento_medico\", \"doenca\"]}', '[]', '2024-02-07 20:27:32.326000', '2024-02-07 20:27:32.326000', NULL, NULL),
(261, 'plugin::content-manager.explorer.read', '{}', 'api::e-causado.e-causado', '{\"fields\": [\"tratamento_medico\", \"doenca\"]}', '[]', '2024-02-07 20:27:32.363000', '2024-02-07 20:27:32.363000', NULL, NULL),
(263, 'plugin::content-manager.explorer.update', '{}', 'api::e-causado.e-causado', '{\"fields\": [\"tratamento_medico\", \"doenca\"]}', '[]', '2024-02-07 20:27:32.408000', '2024-02-07 20:27:32.408000', NULL, NULL),
(267, 'plugin::content-manager.explorer.create', '{}', 'api::possui.possui', '{\"fields\": [\"tratamento_medico\", \"medicamento\", \"dosagem\", \"data_inicio\", \"data_fim\", \"medicamento_aplicado\", \"prescricao\"]}', '[]', '2024-02-07 20:44:14.180000', '2024-02-07 20:44:14.180000', NULL, NULL),
(268, 'plugin::content-manager.explorer.read', '{}', 'api::possui.possui', '{\"fields\": [\"tratamento_medico\", \"medicamento\", \"dosagem\", \"data_inicio\", \"data_fim\", \"medicamento_aplicado\", \"prescricao\"]}', '[]', '2024-02-07 20:44:14.209000', '2024-02-07 20:44:14.209000', NULL, NULL),
(269, 'plugin::content-manager.explorer.update', '{}', 'api::possui.possui', '{\"fields\": [\"tratamento_medico\", \"medicamento\", \"dosagem\", \"data_inicio\", \"data_fim\", \"medicamento_aplicado\", \"prescricao\"]}', '[]', '2024-02-07 20:44:14.225000', '2024-02-07 20:44:14.225000', NULL, NULL),
(271, 'plugin::content-manager.explorer.create', '{}', 'api::e-alergico.e-alergico', '{\"fields\": [\"animal\", \"medicamento\"]}', '[]', '2024-02-07 20:53:26.455000', '2024-02-07 20:53:26.455000', NULL, NULL),
(273, 'plugin::content-manager.explorer.read', '{}', 'api::e-alergico.e-alergico', '{\"fields\": [\"animal\", \"medicamento\"]}', '[]', '2024-02-07 20:53:26.503000', '2024-02-07 20:53:26.503000', NULL, NULL),
(275, 'plugin::content-manager.explorer.update', '{}', 'api::e-alergico.e-alergico', '{\"fields\": [\"animal\", \"medicamento\"]}', '[]', '2024-02-07 20:53:26.539000', '2024-02-07 20:53:26.539000', NULL, NULL),
(276, 'plugin::content-manager.explorer.delete', '{}', 'api::e-alergico.e-alergico', '{}', '[]', '2024-02-07 20:53:26.558000', '2024-02-07 20:53:26.558000', NULL, NULL),
(277, 'plugin::content-manager.explorer.publish', '{}', 'api::e-alergico.e-alergico', '{}', '[]', '2024-02-07 20:53:26.576000', '2024-02-07 20:53:26.576000', NULL, NULL),
(284, 'plugin::content-manager.explorer.create', '{}', 'api::registro.registro', '{\"fields\": [\"dia\", \"hora\"]}', '[]', '2024-02-07 21:03:41.455000', '2024-02-07 21:03:41.455000', NULL, NULL),
(285, 'plugin::content-manager.explorer.read', '{}', 'api::registro.registro', '{\"fields\": [\"dia\", \"hora\"]}', '[]', '2024-02-07 21:03:41.475000', '2024-02-07 21:03:41.475000', NULL, NULL),
(286, 'plugin::content-manager.explorer.update', '{}', 'api::registro.registro', '{\"fields\": [\"dia\", \"hora\"]}', '[]', '2024-02-07 21:03:41.493000', '2024-02-07 21:03:41.493000', NULL, NULL),
(287, 'plugin::content-manager.explorer.delete', '{}', 'api::registro.registro', '{}', '[]', '2024-02-07 21:03:41.513000', '2024-02-07 21:03:41.513000', NULL, NULL),
(288, 'plugin::content-manager.explorer.publish', '{}', 'api::registro.registro', '{}', '[]', '2024-02-07 21:03:41.532000', '2024-02-07 21:03:41.532000', NULL, NULL),
(289, 'plugin::content-manager.explorer.create', '{}', 'api::registro-tratamento.registro-tratamento', '{\"fields\": [\"registro\", \"tratamento_medico\"]}', '[]', '2024-02-07 21:36:53.768000', '2024-02-07 21:36:53.768000', NULL, NULL),
(290, 'plugin::content-manager.explorer.read', '{}', 'api::registro-tratamento.registro-tratamento', '{\"fields\": [\"registro\", \"tratamento_medico\"]}', '[]', '2024-02-07 21:36:53.785000', '2024-02-07 21:36:53.785000', NULL, NULL),
(291, 'plugin::content-manager.explorer.update', '{}', 'api::registro-tratamento.registro-tratamento', '{\"fields\": [\"registro\", \"tratamento_medico\"]}', '[]', '2024-02-07 21:36:53.804000', '2024-02-07 21:36:53.804000', NULL, NULL),
(292, 'plugin::content-manager.explorer.delete', '{}', 'api::registro-tratamento.registro-tratamento', '{}', '[]', '2024-02-07 21:36:53.823000', '2024-02-07 21:36:53.823000', NULL, NULL),
(294, 'plugin::content-manager.explorer.create', '{}', 'api::categoria-obs-saude.categoria-obs-saude', '{\"fields\": [\"observacao\"]}', '[]', '2024-02-07 21:39:02.998000', '2024-02-07 21:39:02.998000', NULL, NULL),
(295, 'plugin::content-manager.explorer.read', '{}', 'api::categoria-obs-saude.categoria-obs-saude', '{\"fields\": [\"observacao\"]}', '[]', '2024-02-07 21:39:03.018000', '2024-02-07 21:39:03.018000', NULL, NULL),
(296, 'plugin::content-manager.explorer.update', '{}', 'api::categoria-obs-saude.categoria-obs-saude', '{\"fields\": [\"observacao\"]}', '[]', '2024-02-07 21:39:03.049000', '2024-02-07 21:39:03.049000', NULL, NULL),
(297, 'plugin::content-manager.explorer.delete', '{}', 'api::categoria-obs-saude.categoria-obs-saude', '{}', '[]', '2024-02-07 21:39:03.069000', '2024-02-07 21:39:03.069000', NULL, NULL),
(298, 'plugin::content-manager.explorer.publish', '{}', 'api::categoria-obs-saude.categoria-obs-saude', '{}', '[]', '2024-02-07 21:39:03.089000', '2024-02-07 21:39:03.089000', NULL, NULL),
(300, 'plugin::content-manager.explorer.create', '{}', 'api::registro-obs.registro-obs', '{\"fields\": [\"categoria_obs_saude\", \"animal\"]}', '[]', '2024-02-07 21:44:31.985000', '2024-02-07 21:44:31.985000', NULL, NULL),
(302, 'plugin::content-manager.explorer.read', '{}', 'api::registro-obs.registro-obs', '{\"fields\": [\"categoria_obs_saude\", \"animal\"]}', '[]', '2024-02-07 21:44:32.022000', '2024-02-07 21:44:32.022000', NULL, NULL),
(304, 'plugin::content-manager.explorer.update', '{}', 'api::registro-obs.registro-obs', '{\"fields\": [\"categoria_obs_saude\", \"animal\"]}', '[]', '2024-02-07 21:44:32.059000', '2024-02-07 21:44:32.059000', NULL, NULL),
(305, 'plugin::content-manager.explorer.delete', '{}', 'api::registro-obs.registro-obs', '{}', '[]', '2024-02-07 21:44:32.079000', '2024-02-07 21:44:32.079000', NULL, NULL),
(306, 'plugin::content-manager.explorer.publish', '{}', 'api::registro-obs.registro-obs', '{}', '[]', '2024-02-07 21:44:32.099000', '2024-02-07 21:44:32.099000', NULL, NULL),
(307, 'plugin::content-manager.explorer.create', '{}', 'api::animal.animal', '{\"fields\": [\"Nome\", \"Data_nascimento\", \"Box\", \"numero_patrimonio\", \"numero_de_microchip\", \"nome_do_proprietario_anterior\", \"data_aquisicao\", \"data_inclusao_carga\", \"status_geral\"]}', '[\"admin::is-creator\"]', '2024-02-08 18:21:22.968000', '2024-04-26 18:36:43.163000', NULL, NULL),
(308, 'plugin::content-manager.explorer.read', '{}', 'api::animal.animal', '{\"fields\": [\"Nome\", \"Data_nascimento\", \"Box\", \"numero_patrimonio\", \"numero_de_microchip\", \"nome_do_proprietario_anterior\", \"data_aquisicao\", \"data_inclusao_carga\", \"status_geral\"]}', '[\"admin::is-creator\"]', '2024-02-08 18:21:22.998000', '2024-04-26 18:36:43.163000', NULL, NULL),
(309, 'plugin::content-manager.explorer.update', '{}', 'api::animal.animal', '{\"fields\": [\"Nome\", \"Data_nascimento\", \"Box\", \"numero_patrimonio\", \"numero_de_microchip\", \"nome_do_proprietario_anterior\", \"data_aquisicao\", \"data_inclusao_carga\", \"status_geral\"]}', '[\"admin::is-creator\"]', '2024-02-08 18:21:23.019000', '2024-04-26 18:36:43.163000', NULL, NULL),
(310, 'plugin::content-manager.explorer.create', '{}', 'api::justificativa-baixa.justificativa-baixa', '{\"fields\": [\"justificativa\", \"animal\"]}', '[]', '2024-02-08 18:21:23.035000', '2024-02-08 18:21:23.035000', NULL, NULL),
(311, 'plugin::content-manager.explorer.read', '{}', 'api::justificativa-baixa.justificativa-baixa', '{\"fields\": [\"justificativa\", \"animal\"]}', '[]', '2024-02-08 18:21:23.052000', '2024-02-08 18:21:23.052000', NULL, NULL),
(312, 'plugin::content-manager.explorer.update', '{}', 'api::justificativa-baixa.justificativa-baixa', '{\"fields\": [\"justificativa\", \"animal\"]}', '[]', '2024-02-08 18:21:23.067000', '2024-02-08 18:21:23.067000', NULL, NULL),
(313, 'plugin::content-manager.explorer.delete', '{}', 'api::justificativa-baixa.justificativa-baixa', '{}', '[]', '2024-02-08 18:21:23.088000', '2024-02-08 18:21:23.088000', NULL, NULL),
(314, 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"cpf\"]}', '[]', '2024-02-08 18:22:12.454000', '2024-03-26 16:55:28.126000', NULL, NULL),
(315, 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"cpf\"]}', '[]', '2024-02-08 18:22:12.951000', '2024-03-26 16:55:28.126000', NULL, NULL),
(316, 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"cpf\"]}', '[]', '2024-02-08 18:22:12.989000', '2024-03-26 16:55:28.126000', NULL, NULL),
(317, 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-02-08 18:22:13.004000', '2024-02-08 18:22:13.004000', NULL, NULL),
(323, 'plugin::content-manager.explorer.create', '{}', 'api::categoria-obs-saude.categoria-obs-saude', '{\"fields\": [\"observacao\"]}', '[]', '2024-02-08 18:22:13.121000', '2024-02-08 18:22:13.121000', NULL, NULL),
(324, 'plugin::content-manager.explorer.read', '{}', 'api::categoria-obs-saude.categoria-obs-saude', '{\"fields\": [\"observacao\"]}', '[]', '2024-02-08 18:22:13.146000', '2024-02-08 18:22:13.146000', NULL, NULL),
(325, 'plugin::content-manager.explorer.update', '{}', 'api::categoria-obs-saude.categoria-obs-saude', '{\"fields\": [\"observacao\"]}', '[]', '2024-02-08 18:22:13.163000', '2024-02-08 18:22:13.163000', NULL, NULL),
(326, 'plugin::content-manager.explorer.delete', '{}', 'api::categoria-obs-saude.categoria-obs-saude', '{}', '[]', '2024-02-08 18:22:13.181000', '2024-02-08 18:22:13.181000', NULL, NULL),
(327, 'plugin::content-manager.explorer.publish', '{}', 'api::categoria-obs-saude.categoria-obs-saude', '{}', '[]', '2024-02-08 18:22:13.196000', '2024-02-08 18:22:13.196000', NULL, NULL),
(328, 'plugin::content-manager.explorer.create', '{}', 'api::condutor.condutor', '{\"fields\": [\"Nome\", \"ativo\", \"rg\"]}', '[]', '2024-02-08 18:22:13.213000', '2024-05-03 13:36:09.987000', NULL, NULL),
(329, 'plugin::content-manager.explorer.read', '{}', 'api::condutor.condutor', '{\"fields\": [\"Nome\", \"ativo\", \"rg\"]}', '[]', '2024-02-08 18:22:13.230000', '2024-05-03 13:36:09.987000', NULL, NULL),
(330, 'plugin::content-manager.explorer.update', '{}', 'api::condutor.condutor', '{\"fields\": [\"Nome\", \"ativo\", \"rg\"]}', '[]', '2024-02-08 18:22:13.246000', '2024-05-03 13:36:09.987000', NULL, NULL),
(331, 'plugin::content-manager.explorer.delete', '{}', 'api::condutor.condutor', '{}', '[]', '2024-02-08 18:22:13.265000', '2024-02-08 18:22:13.265000', NULL, NULL),
(332, 'plugin::content-manager.explorer.create', '{}', 'api::doenca.doenca', '{\"fields\": [\"nome\"]}', '[]', '2024-02-08 18:22:13.282000', '2024-02-08 18:22:13.282000', NULL, NULL),
(333, 'plugin::content-manager.explorer.read', '{}', 'api::doenca.doenca', '{\"fields\": [\"nome\"]}', '[]', '2024-02-08 18:22:13.303000', '2024-02-08 18:22:13.303000', NULL, NULL),
(334, 'plugin::content-manager.explorer.update', '{}', 'api::doenca.doenca', '{\"fields\": [\"nome\"]}', '[]', '2024-02-08 18:22:13.322000', '2024-02-08 18:22:13.322000', NULL, NULL),
(335, 'plugin::content-manager.explorer.delete', '{}', 'api::doenca.doenca', '{}', '[]', '2024-02-08 18:22:13.343000', '2024-02-08 18:22:13.343000', NULL, NULL),
(337, 'plugin::content-manager.explorer.create', '{}', 'api::e-alergico.e-alergico', '{\"fields\": [\"animal\", \"medicamento\"]}', '[]', '2024-02-08 18:22:13.384000', '2024-02-08 18:22:13.384000', NULL, NULL),
(338, 'plugin::content-manager.explorer.read', '{}', 'api::e-alergico.e-alergico', '{\"fields\": [\"animal\", \"medicamento\"]}', '[]', '2024-02-08 18:22:13.402000', '2024-02-08 18:22:13.402000', NULL, NULL),
(339, 'plugin::content-manager.explorer.update', '{}', 'api::e-alergico.e-alergico', '{\"fields\": [\"animal\", \"medicamento\"]}', '[]', '2024-02-08 18:22:13.418000', '2024-02-08 18:22:13.418000', NULL, NULL),
(340, 'plugin::content-manager.explorer.delete', '{}', 'api::e-alergico.e-alergico', '{}', '[]', '2024-02-08 18:22:13.437000', '2024-02-08 18:22:13.437000', NULL, NULL),
(341, 'plugin::content-manager.explorer.publish', '{}', 'api::e-alergico.e-alergico', '{}', '[]', '2024-02-08 18:22:13.456000', '2024-02-08 18:22:13.456000', NULL, NULL),
(342, 'plugin::content-manager.explorer.create', '{}', 'api::e-causado.e-causado', '{\"fields\": [\"tratamento_medico\", \"doenca\"]}', '[]', '2024-02-08 18:22:13.474000', '2024-02-08 18:22:13.474000', NULL, NULL),
(343, 'plugin::content-manager.explorer.read', '{}', 'api::e-causado.e-causado', '{\"fields\": [\"tratamento_medico\", \"doenca\"]}', '[]', '2024-02-08 18:22:13.494000', '2024-02-08 18:22:13.494000', NULL, NULL),
(344, 'plugin::content-manager.explorer.update', '{}', 'api::e-causado.e-causado', '{\"fields\": [\"tratamento_medico\", \"doenca\"]}', '[]', '2024-02-08 18:22:13.515000', '2024-02-08 18:22:13.515000', NULL, NULL),
(345, 'plugin::content-manager.explorer.delete', '{}', 'api::e-causado.e-causado', '{}', '[]', '2024-02-08 18:22:13.533000', '2024-02-08 18:22:13.533000', NULL, NULL),
(346, 'plugin::content-manager.explorer.publish', '{}', 'api::e-causado.e-causado', '{}', '[]', '2024-02-08 18:22:13.558000', '2024-02-08 18:22:13.558000', NULL, NULL),
(347, 'plugin::content-manager.explorer.create', '{}', 'api::medicamento.medicamento', '{\"fields\": [\"nome\", \"ativo\"]}', '[]', '2024-02-08 18:22:13.575000', '2024-02-21 18:01:36.881000', NULL, NULL),
(348, 'plugin::content-manager.explorer.read', '{}', 'api::medicamento.medicamento', '{\"fields\": [\"nome\", \"ativo\"]}', '[]', '2024-02-08 18:22:13.595000', '2024-02-21 18:01:36.881000', NULL, NULL),
(349, 'plugin::content-manager.explorer.update', '{}', 'api::medicamento.medicamento', '{\"fields\": [\"nome\", \"ativo\"]}', '[]', '2024-02-08 18:22:13.618000', '2024-02-21 18:01:36.881000', NULL, NULL),
(350, 'plugin::content-manager.explorer.delete', '{}', 'api::medicamento.medicamento', '{}', '[]', '2024-02-08 18:22:13.636000', '2024-02-08 18:22:13.636000', NULL, NULL),
(351, 'plugin::content-manager.explorer.publish', '{}', 'api::medicamento.medicamento', '{}', '[]', '2024-02-08 18:22:13.654000', '2024-02-08 18:22:13.654000', NULL, NULL),
(352, 'plugin::content-manager.explorer.create', '{}', 'api::possui.possui', '{\"fields\": [\"tratamento_medico\", \"medicamento\", \"dosagem\", \"data_inicio\", \"data_fim\", \"medicamento_aplicado\", \"prescricao\"]}', '[]', '2024-02-08 18:22:13.672000', '2024-02-08 18:22:13.672000', NULL, NULL),
(353, 'plugin::content-manager.explorer.read', '{}', 'api::possui.possui', '{\"fields\": [\"tratamento_medico\", \"medicamento\", \"dosagem\", \"data_inicio\", \"data_fim\", \"medicamento_aplicado\", \"prescricao\"]}', '[]', '2024-02-08 18:22:13.687000', '2024-02-08 18:22:13.687000', NULL, NULL),
(354, 'plugin::content-manager.explorer.update', '{}', 'api::possui.possui', '{\"fields\": [\"tratamento_medico\", \"medicamento\", \"dosagem\", \"data_inicio\", \"data_fim\", \"medicamento_aplicado\", \"prescricao\"]}', '[]', '2024-02-08 18:22:13.705000', '2024-02-08 18:22:13.705000', NULL, NULL),
(355, 'plugin::content-manager.explorer.delete', '{}', 'api::possui.possui', '{}', '[]', '2024-02-08 18:22:13.723000', '2024-02-08 18:22:13.723000', NULL, NULL),
(356, 'plugin::content-manager.explorer.publish', '{}', 'api::possui.possui', '{}', '[]', '2024-02-08 18:22:13.743000', '2024-02-08 18:22:13.743000', NULL, NULL),
(357, 'plugin::content-manager.explorer.create', '{}', 'api::racao.racao', '{\"fields\": [\"Quantidade\"]}', '[]', '2024-02-08 18:22:13.763000', '2024-04-25 17:40:17.618000', NULL, NULL),
(358, 'plugin::content-manager.explorer.read', '{}', 'api::racao.racao', '{\"fields\": [\"Quantidade\"]}', '[]', '2024-02-08 18:22:13.783000', '2024-04-25 17:40:17.618000', NULL, NULL),
(359, 'plugin::content-manager.explorer.update', '{}', 'api::racao.racao', '{\"fields\": [\"Quantidade\"]}', '[]', '2024-02-08 18:22:13.802000', '2024-04-25 17:40:17.618000', NULL, NULL),
(360, 'plugin::content-manager.explorer.delete', '{}', 'api::racao.racao', '{}', '[]', '2024-02-08 18:22:13.844000', '2024-02-08 18:22:13.844000', NULL, NULL),
(361, 'plugin::content-manager.explorer.create', '{}', 'api::registro.registro', '{\"fields\": [\"dia\", \"hora\"]}', '[]', '2024-02-08 18:22:13.863000', '2024-02-08 18:22:13.863000', NULL, NULL),
(362, 'plugin::content-manager.explorer.read', '{}', 'api::registro.registro', '{\"fields\": [\"dia\", \"hora\"]}', '[]', '2024-02-08 18:22:13.882000', '2024-02-08 18:22:13.882000', NULL, NULL),
(363, 'plugin::content-manager.explorer.update', '{}', 'api::registro.registro', '{\"fields\": [\"dia\", \"hora\"]}', '[]', '2024-02-08 18:22:13.898000', '2024-02-08 18:22:13.898000', NULL, NULL),
(364, 'plugin::content-manager.explorer.delete', '{}', 'api::registro.registro', '{}', '[]', '2024-02-08 18:22:13.916000', '2024-02-08 18:22:13.916000', NULL, NULL),
(365, 'plugin::content-manager.explorer.publish', '{}', 'api::registro.registro', '{}', '[]', '2024-02-08 18:22:13.944000', '2024-02-08 18:22:13.944000', NULL, NULL),
(366, 'plugin::content-manager.explorer.create', '{}', 'api::registro-obs.registro-obs', '{\"fields\": [\"categoria_obs_saude\", \"animal\"]}', '[]', '2024-02-08 18:22:13.962000', '2024-02-08 18:22:13.962000', NULL, NULL),
(367, 'plugin::content-manager.explorer.read', '{}', 'api::registro-obs.registro-obs', '{\"fields\": [\"categoria_obs_saude\", \"animal\"]}', '[]', '2024-02-08 18:22:13.984000', '2024-02-08 18:22:13.984000', NULL, NULL),
(368, 'plugin::content-manager.explorer.update', '{}', 'api::registro-obs.registro-obs', '{\"fields\": [\"categoria_obs_saude\", \"animal\"]}', '[]', '2024-02-08 18:22:14.004000', '2024-02-08 18:22:14.004000', NULL, NULL),
(369, 'plugin::content-manager.explorer.delete', '{}', 'api::registro-obs.registro-obs', '{}', '[]', '2024-02-08 18:22:14.023000', '2024-02-08 18:22:14.023000', NULL, NULL),
(370, 'plugin::content-manager.explorer.publish', '{}', 'api::registro-obs.registro-obs', '{}', '[]', '2024-02-08 18:22:14.042000', '2024-02-08 18:22:14.042000', NULL, NULL),
(371, 'plugin::content-manager.explorer.create', '{}', 'api::registro-tratamento.registro-tratamento', '{\"fields\": [\"registro\", \"tratamento_medico\"]}', '[]', '2024-02-08 18:22:14.056000', '2024-02-08 18:22:14.056000', NULL, NULL),
(372, 'plugin::content-manager.explorer.read', '{}', 'api::registro-tratamento.registro-tratamento', '{\"fields\": [\"registro\", \"tratamento_medico\"]}', '[]', '2024-02-08 18:22:14.074000', '2024-02-08 18:22:14.074000', NULL, NULL),
(373, 'plugin::content-manager.explorer.update', '{}', 'api::registro-tratamento.registro-tratamento', '{\"fields\": [\"registro\", \"tratamento_medico\"]}', '[]', '2024-02-08 18:22:14.091000', '2024-02-08 18:22:14.091000', NULL, NULL),
(374, 'plugin::content-manager.explorer.delete', '{}', 'api::registro-tratamento.registro-tratamento', '{}', '[]', '2024-02-08 18:22:14.106000', '2024-02-08 18:22:14.106000', NULL, NULL),
(376, 'plugin::content-manager.explorer.create', '{}', 'api::tratamento-medico.tratamento-medico', '{\"fields\": [\"data_inicio\", \"data_fim\", \"tipo_tratamento\", \"tratamento_atual\", \"e_causados\", \"possuis\"]}', '[]', '2024-02-08 18:22:14.142000', '2024-02-29 19:43:25.792000', NULL, NULL),
(377, 'plugin::content-manager.explorer.read', '{}', 'api::tratamento-medico.tratamento-medico', '{\"fields\": [\"data_inicio\", \"data_fim\", \"tipo_tratamento\", \"tratamento_atual\", \"e_causados\", \"possuis\"]}', '[]', '2024-02-08 18:22:14.161000', '2024-02-29 19:43:25.792000', NULL, NULL),
(378, 'plugin::content-manager.explorer.update', '{}', 'api::tratamento-medico.tratamento-medico', '{\"fields\": [\"data_inicio\", \"data_fim\", \"tipo_tratamento\", \"tratamento_atual\", \"e_causados\", \"possuis\"]}', '[]', '2024-02-08 18:22:14.175000', '2024-02-29 19:43:25.792000', NULL, NULL),
(379, 'plugin::content-manager.explorer.delete', '{}', 'api::tratamento-medico.tratamento-medico', '{}', '[]', '2024-02-08 18:22:14.192000', '2024-02-08 18:22:14.192000', NULL, NULL),
(380, 'plugin::content-manager.explorer.publish', '{}', 'api::tratamento-medico.tratamento-medico', '{}', '[]', '2024-02-08 18:22:14.212000', '2024-02-08 18:22:14.212000', NULL, NULL),
(381, 'plugin::content-manager.explorer.create', '{}', 'api::unidade.unidade', '{\"fields\": [\"Nome\", \"Endereco\"]}', '[]', '2024-02-08 18:22:14.232000', '2024-02-08 18:22:14.232000', NULL, NULL),
(382, 'plugin::content-manager.explorer.read', '{}', 'api::unidade.unidade', '{\"fields\": [\"Nome\", \"Endereco\"]}', '[]', '2024-02-08 18:22:14.250000', '2024-02-08 18:22:14.250000', NULL, NULL),
(383, 'plugin::content-manager.explorer.update', '{}', 'api::unidade.unidade', '{\"fields\": [\"Nome\", \"Endereco\"]}', '[]', '2024-02-08 18:22:14.267000', '2024-02-08 18:22:14.267000', NULL, NULL),
(384, 'plugin::content-manager.explorer.delete', '{}', 'api::unidade.unidade', '{}', '[]', '2024-02-08 18:22:14.284000', '2024-02-08 18:22:14.284000', NULL, NULL),
(385, 'plugin::content-manager.explorer.create', '{}', 'api::animal.animal', '{\"fields\": [\"Nome\", \"Data_nascimento\", \"Box\", \"numero_patrimonio\", \"numero_de_microchip\", \"nome_do_proprietario_anterior\", \"data_aquisicao\", \"data_inclusao_carga\", \"status_geral\"]}', '[]', '2024-02-08 18:22:43.488000', '2024-04-26 18:36:43.163000', NULL, NULL),
(386, 'plugin::content-manager.explorer.read', '{}', 'api::animal.animal', '{\"fields\": [\"Nome\", \"Data_nascimento\", \"Box\", \"numero_patrimonio\", \"numero_de_microchip\", \"nome_do_proprietario_anterior\", \"data_aquisicao\", \"data_inclusao_carga\", \"status_geral\"]}', '[]', '2024-02-08 18:22:43.506000', '2024-04-26 18:36:43.163000', NULL, NULL),
(387, 'plugin::content-manager.explorer.update', '{}', 'api::animal.animal', '{\"fields\": [\"Nome\", \"Data_nascimento\", \"Box\", \"numero_patrimonio\", \"numero_de_microchip\", \"nome_do_proprietario_anterior\", \"data_aquisicao\", \"data_inclusao_carga\", \"status_geral\"]}', '[]', '2024-02-08 18:22:43.525000', '2024-04-26 18:36:43.163000', NULL, NULL),
(388, 'plugin::content-manager.explorer.create', '{}', 'api::justificativa-baixa.justificativa-baixa', '{\"fields\": [\"justificativa\", \"animal\"]}', '[]', '2024-02-08 18:22:43.544000', '2024-02-08 18:22:43.544000', NULL, NULL),
(389, 'plugin::content-manager.explorer.read', '{}', 'api::justificativa-baixa.justificativa-baixa', '{\"fields\": [\"justificativa\", \"animal\"]}', '[]', '2024-02-08 18:22:43.582000', '2024-02-08 18:22:43.582000', NULL, NULL),
(390, 'plugin::content-manager.explorer.update', '{}', 'api::justificativa-baixa.justificativa-baixa', '{\"fields\": [\"justificativa\", \"animal\"]}', '[]', '2024-02-08 18:22:43.602000', '2024-02-08 18:22:43.602000', NULL, NULL),
(391, 'plugin::content-manager.explorer.delete', '{}', 'api::justificativa-baixa.justificativa-baixa', '{}', '[]', '2024-02-08 18:22:43.646000', '2024-02-08 18:22:43.646000', NULL, NULL),
(401, 'plugin::content-manager.explorer.create', '{}', 'api::medicamento.medicamento', '{\"fields\": [\"nome\", \"ativo\"]}', '[]', '2024-02-21 18:01:36.750000', '2024-02-21 18:01:36.750000', NULL, NULL),
(402, 'plugin::content-manager.explorer.read', '{}', 'api::medicamento.medicamento', '{\"fields\": [\"nome\", \"ativo\"]}', '[]', '2024-02-21 18:01:36.771000', '2024-02-21 18:01:36.771000', NULL, NULL),
(403, 'plugin::content-manager.explorer.update', '{}', 'api::medicamento.medicamento', '{\"fields\": [\"nome\", \"ativo\"]}', '[]', '2024-02-21 18:01:36.789000', '2024-02-21 18:01:36.789000', NULL, NULL),
(404, 'plugin::content-manager.explorer.create', '{}', 'api::doenca.doenca', '{\"fields\": [\"nome\", \"ativo\"]}', '[]', '2024-02-21 19:36:43.448000', '2024-02-21 19:36:43.448000', NULL, NULL),
(405, 'plugin::content-manager.explorer.read', '{}', 'api::doenca.doenca', '{\"fields\": [\"nome\", \"ativo\"]}', '[]', '2024-02-21 19:36:43.464000', '2024-02-21 19:36:43.464000', NULL, NULL),
(406, 'plugin::content-manager.explorer.update', '{}', 'api::doenca.doenca', '{\"fields\": [\"nome\", \"ativo\"]}', '[]', '2024-02-21 19:36:43.481000', '2024-02-21 19:36:43.481000', NULL, NULL),
(410, 'plugin::content-manager.explorer.create', '{}', 'api::unidade.unidade', '{\"fields\": [\"Nome\", \"Endereco\", \"ativo\"]}', '[]', '2024-02-21 22:39:14.367000', '2024-02-21 22:39:14.367000', NULL, NULL),
(411, 'plugin::content-manager.explorer.read', '{}', 'api::unidade.unidade', '{\"fields\": [\"Nome\", \"Endereco\", \"ativo\"]}', '[]', '2024-02-21 22:39:14.384000', '2024-02-21 22:39:14.384000', NULL, NULL),
(412, 'plugin::content-manager.explorer.update', '{}', 'api::unidade.unidade', '{\"fields\": [\"Nome\", \"Endereco\", \"ativo\"]}', '[]', '2024-02-21 22:39:14.402000', '2024-02-21 22:39:14.402000', NULL, NULL),
(425, 'plugin::content-manager.explorer.delete', '{}', 'api::consulta.consulta', '{}', '[]', '2024-02-29 18:43:22.755000', '2024-02-29 18:43:22.755000', NULL, NULL),
(426, 'plugin::content-manager.explorer.publish', '{}', 'api::consulta.consulta', '{}', '[]', '2024-02-29 18:43:22.774000', '2024-02-29 18:43:22.774000', NULL, NULL),
(468, 'plugin::content-manager.explorer.create', '{}', 'api::animal-tratamento-medico.animal-tratamento-medico', '{\"fields\": [\"animal\", \"tratamento_medico\"]}', '[]', '2024-02-29 20:50:09.729000', '2024-02-29 20:50:09.729000', NULL, NULL),
(469, 'plugin::content-manager.explorer.create', '{}', 'api::tratamento-medico.tratamento-medico', '{\"fields\": [\"data_inicio\", \"data_fim\", \"tipo_tratamento\", \"tratamento_atual\", \"e_causados\", \"possuis\", \"consulta\", \"animal\", \"animal_tratamento_medico\"]}', '[]', '2024-02-29 20:50:09.747000', '2024-02-29 20:50:09.747000', NULL, NULL),
(471, 'plugin::content-manager.explorer.read', '{}', 'api::animal-tratamento-medico.animal-tratamento-medico', '{\"fields\": [\"animal\", \"tratamento_medico\"]}', '[]', '2024-02-29 20:50:09.786000', '2024-02-29 20:50:09.786000', NULL, NULL),
(472, 'plugin::content-manager.explorer.read', '{}', 'api::tratamento-medico.tratamento-medico', '{\"fields\": [\"data_inicio\", \"data_fim\", \"tipo_tratamento\", \"tratamento_atual\", \"e_causados\", \"possuis\", \"consulta\", \"animal\", \"animal_tratamento_medico\"]}', '[]', '2024-02-29 20:50:09.804000', '2024-02-29 20:50:09.804000', NULL, NULL),
(474, 'plugin::content-manager.explorer.update', '{}', 'api::animal-tratamento-medico.animal-tratamento-medico', '{\"fields\": [\"animal\", \"tratamento_medico\"]}', '[]', '2024-02-29 20:50:09.838000', '2024-02-29 20:50:09.838000', NULL, NULL),
(475, 'plugin::content-manager.explorer.update', '{}', 'api::tratamento-medico.tratamento-medico', '{\"fields\": [\"data_inicio\", \"data_fim\", \"tipo_tratamento\", \"tratamento_atual\", \"e_causados\", \"possuis\", \"consulta\", \"animal\", \"animal_tratamento_medico\"]}', '[]', '2024-02-29 20:50:09.856000', '2024-02-29 20:50:09.856000', NULL, NULL),
(476, 'plugin::content-manager.explorer.delete', '{}', 'api::animal-tratamento-medico.animal-tratamento-medico', '{}', '[]', '2024-02-29 20:50:09.874000', '2024-02-29 20:50:09.874000', NULL, NULL),
(477, 'plugin::content-manager.explorer.publish', '{}', 'api::animal-tratamento-medico.animal-tratamento-medico', '{}', '[]', '2024-02-29 20:50:09.890000', '2024-02-29 20:50:09.890000', NULL, NULL),
(478, 'plugin::content-manager.explorer.create', '{}', 'api::animal-tratamento-medico.animal-tratamento-medico', '{\"fields\": [\"animal\", \"tratamento_medico\"]}', '[]', '2024-03-05 18:37:00.436000', '2024-03-05 18:37:00.436000', NULL, NULL),
(479, 'plugin::content-manager.explorer.read', '{}', 'api::animal-tratamento-medico.animal-tratamento-medico', '{\"fields\": [\"animal\", \"tratamento_medico\"]}', '[]', '2024-03-05 18:37:00.455000', '2024-03-05 18:37:00.455000', NULL, NULL),
(480, 'plugin::content-manager.explorer.update', '{}', 'api::animal-tratamento-medico.animal-tratamento-medico', '{\"fields\": [\"animal\", \"tratamento_medico\"]}', '[]', '2024-03-05 18:37:00.470000', '2024-03-05 18:37:00.470000', NULL, NULL),
(481, 'plugin::content-manager.explorer.delete', '{}', 'api::animal-tratamento-medico.animal-tratamento-medico', '{}', '[]', '2024-03-05 18:37:00.486000', '2024-03-05 18:37:00.486000', NULL, NULL),
(482, 'plugin::content-manager.explorer.publish', '{}', 'api::animal-tratamento-medico.animal-tratamento-medico', '{}', '[]', '2024-03-05 18:37:00.504000', '2024-03-05 18:37:00.504000', NULL, NULL),
(483, 'plugin::content-manager.explorer.create', '{}', 'api::consulta.consulta', '{\"fields\": [\"data_consulta\", \"anamnese\", \"exame_fisico\", \"diagnostico\", \"retorno\"]}', '[]', '2024-03-05 18:37:00.522000', '2024-04-30 18:21:55.520000', NULL, NULL),
(484, 'plugin::content-manager.explorer.read', '{}', 'api::consulta.consulta', '{\"fields\": [\"data_consulta\", \"anamnese\", \"exame_fisico\", \"diagnostico\", \"retorno\"]}', '[]', '2024-03-05 18:37:00.541000', '2024-04-30 18:21:55.520000', NULL, NULL),
(485, 'plugin::content-manager.explorer.update', '{}', 'api::consulta.consulta', '{\"fields\": [\"data_consulta\", \"anamnese\", \"exame_fisico\", \"diagnostico\", \"retorno\"]}', '[]', '2024-03-05 18:37:00.558000', '2024-04-30 18:21:55.520000', NULL, NULL),
(486, 'plugin::content-manager.explorer.delete', '{}', 'api::consulta.consulta', '{}', '[]', '2024-03-05 18:37:00.575000', '2024-03-05 18:37:00.575000', NULL, NULL),
(487, 'plugin::content-manager.explorer.publish', '{}', 'api::consulta.consulta', '{}', '[]', '2024-03-05 18:37:00.590000', '2024-03-05 18:37:00.590000', NULL, NULL),
(499, 'admin::users.create', '{}', NULL, '{}', '[]', '2024-03-22 16:47:01.683000', '2024-03-22 16:47:01.683000', NULL, NULL),
(500, 'admin::users.read', '{}', NULL, '{}', '[]', '2024-03-22 16:47:01.702000', '2024-03-22 16:47:01.702000', NULL, NULL),
(501, 'admin::users.update', '{}', NULL, '{}', '[]', '2024-03-22 16:47:01.717000', '2024-03-22 16:47:01.717000', NULL, NULL),
(502, 'admin::users.delete', '{}', NULL, '{}', '[]', '2024-03-22 16:47:01.734000', '2024-03-22 16:47:01.734000', NULL, NULL),
(503, 'admin::roles.create', '{}', NULL, '{}', '[]', '2024-03-22 16:47:01.749000', '2024-03-22 16:47:01.749000', NULL, NULL),
(504, 'admin::roles.read', '{}', NULL, '{}', '[]', '2024-03-22 16:47:01.766000', '2024-03-22 16:47:01.766000', NULL, NULL),
(505, 'admin::roles.update', '{}', NULL, '{}', '[]', '2024-03-22 16:47:01.783000', '2024-03-22 16:47:01.783000', NULL, NULL),
(506, 'admin::roles.delete', '{}', NULL, '{}', '[]', '2024-03-22 16:47:01.800000', '2024-03-22 16:47:01.800000', NULL, NULL),
(522, 'plugin::content-manager.explorer.create', '{}', 'api::condutor.condutor', '{\"fields\": [\"Nome\", \"ativo\", \"unidade\", \"rg\"]}', '[]', '2024-04-12 18:00:16.977000', '2024-04-12 18:00:16.977000', NULL, NULL),
(523, 'plugin::content-manager.explorer.read', '{}', 'api::condutor.condutor', '{\"fields\": [\"Nome\", \"ativo\", \"unidade\", \"rg\"]}', '[]', '2024-04-12 18:00:17.003000', '2024-04-12 18:00:17.003000', NULL, NULL),
(524, 'plugin::content-manager.explorer.update', '{}', 'api::condutor.condutor', '{\"fields\": [\"Nome\", \"ativo\", \"unidade\", \"rg\"]}', '[]', '2024-04-12 18:00:17.030000', '2024-04-12 18:00:17.030000', NULL, NULL),
(576, 'plugin::content-manager.explorer.create', '{}', 'api::tipo-produto-antiparasitario.tipo-produto-antiparasitario', '{\"fields\": [\"descricao\"]}', '[]', '2024-04-15 16:27:37.729000', '2024-04-15 16:27:37.729000', NULL, NULL),
(577, 'plugin::content-manager.explorer.read', '{}', 'api::tipo-produto-antiparasitario.tipo-produto-antiparasitario', '{\"fields\": [\"descricao\"]}', '[]', '2024-04-15 16:27:37.784000', '2024-04-15 16:27:37.784000', NULL, NULL),
(578, 'plugin::content-manager.explorer.update', '{}', 'api::tipo-produto-antiparasitario.tipo-produto-antiparasitario', '{\"fields\": [\"descricao\"]}', '[]', '2024-04-15 16:27:37.822000', '2024-04-15 16:27:37.822000', NULL, NULL),
(579, 'plugin::content-manager.explorer.delete', '{}', 'api::tipo-produto-antiparasitario.tipo-produto-antiparasitario', '{}', '[]', '2024-04-15 16:27:37.840000', '2024-04-15 16:27:37.840000', NULL, NULL),
(580, 'plugin::content-manager.explorer.publish', '{}', 'api::tipo-produto-antiparasitario.tipo-produto-antiparasitario', '{}', '[]', '2024-04-15 16:27:37.858000', '2024-04-15 16:27:37.858000', NULL, NULL),
(584, 'plugin::content-manager.explorer.delete', '{}', 'api::tipo-vacina.tipo-vacina', '{}', '[]', '2024-04-15 16:32:36.992000', '2024-04-15 16:32:36.992000', NULL, NULL),
(592, 'plugin::content-manager.explorer.delete', '{}', 'api::animal-vacina.animal-vacina', '{}', '[]', '2024-04-15 16:38:58.250000', '2024-04-15 16:38:58.250000', NULL, NULL),
(593, 'plugin::content-manager.explorer.publish', '{}', 'api::animal-vacina.animal-vacina', '{}', '[]', '2024-04-15 16:38:58.266000', '2024-04-15 16:38:58.266000', NULL, NULL),
(597, 'plugin::content-manager.explorer.delete', '{}', 'api::tipo-aplicacao.tipo-aplicacao', '{}', '[]', '2024-04-15 16:41:00.825000', '2024-04-15 16:41:00.825000', NULL, NULL),
(602, 'plugin::content-manager.explorer.delete', '{}', 'api::animal-aplicacao.animal-aplicacao', '{}', '[]', '2024-04-15 16:44:05.032000', '2024-04-15 16:44:05.032000', NULL, NULL),
(610, 'plugin::content-manager.explorer.create', '{}', 'api::tipo-aplicacao.tipo-aplicacao', '{\"fields\": [\"nome_produto\", \"duracao_em_dias\", \"tipo_produto_antiparasitario\", \"ativo\"]}', '[]', '2024-04-15 17:30:16.970000', '2024-04-15 17:30:16.970000', NULL, NULL),
(611, 'plugin::content-manager.explorer.read', '{}', 'api::tipo-aplicacao.tipo-aplicacao', '{\"fields\": [\"nome_produto\", \"duracao_em_dias\", \"tipo_produto_antiparasitario\", \"ativo\"]}', '[]', '2024-04-15 17:30:16.990000', '2024-04-15 17:30:16.990000', NULL, NULL),
(612, 'plugin::content-manager.explorer.update', '{}', 'api::tipo-aplicacao.tipo-aplicacao', '{\"fields\": [\"nome_produto\", \"duracao_em_dias\", \"tipo_produto_antiparasitario\", \"ativo\"]}', '[]', '2024-04-15 17:30:17.010000', '2024-04-15 17:30:17.010000', NULL, NULL),
(643, 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"cpf\"]}', '[]', '2024-04-24 17:02:32.008000', '2024-04-24 17:02:32.008000', NULL, NULL),
(645, 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"cpf\"]}', '[]', '2024-04-24 17:02:32.064000', '2024-04-24 17:02:32.064000', NULL, NULL),
(647, 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\", \"cpf\"]}', '[]', '2024-04-24 17:02:32.121000', '2024-04-24 17:02:32.121000', NULL, NULL),
(649, 'plugin::content-manager.explorer.create', '{}', 'api::tipo-vacina.tipo-vacina', '{\"fields\": [\"ativo\", \"tipo\"]}', '[]', '2024-04-25 16:58:50.096000', '2024-04-25 16:58:50.096000', NULL, NULL),
(650, 'plugin::content-manager.explorer.read', '{}', 'api::tipo-vacina.tipo-vacina', '{\"fields\": [\"ativo\", \"tipo\"]}', '[]', '2024-04-25 16:58:50.127000', '2024-04-25 16:58:50.127000', NULL, NULL),
(651, 'plugin::content-manager.explorer.update', '{}', 'api::tipo-vacina.tipo-vacina', '{\"fields\": [\"ativo\", \"tipo\"]}', '[]', '2024-04-25 16:58:50.158000', '2024-04-25 16:58:50.158000', NULL, NULL),
(655, 'plugin::content-manager.explorer.delete', '{}', 'api::marca-vacina.marca-vacina', '{}', '[]', '2024-04-25 17:01:02.231000', '2024-04-25 17:01:02.231000', NULL, NULL),
(656, 'plugin::content-manager.explorer.publish', '{}', 'api::marca-vacina.marca-vacina', '{}', '[]', '2024-04-25 17:01:02.246000', '2024-04-25 17:01:02.246000', NULL, NULL),
(660, 'plugin::content-manager.explorer.create', '{}', 'api::animal-aplicacao.animal-aplicacao', '{\"fields\": [\"animal\", \"tipo_aplicacao\", \"lembrete_em_dias\", \"data_aplicacao\", \"data_proxima_aplicacao\", \"aplicado\"]}', '[]', '2024-04-25 17:11:50.768000', '2024-04-25 17:11:50.768000', NULL, NULL),
(661, 'plugin::content-manager.explorer.read', '{}', 'api::animal-aplicacao.animal-aplicacao', '{\"fields\": [\"animal\", \"tipo_aplicacao\", \"lembrete_em_dias\", \"data_aplicacao\", \"data_proxima_aplicacao\", \"aplicado\"]}', '[]', '2024-04-25 17:11:50.796000', '2024-04-25 17:11:50.796000', NULL, NULL),
(662, 'plugin::content-manager.explorer.update', '{}', 'api::animal-aplicacao.animal-aplicacao', '{\"fields\": [\"animal\", \"tipo_aplicacao\", \"lembrete_em_dias\", \"data_aplicacao\", \"data_proxima_aplicacao\", \"aplicado\"]}', '[]', '2024-04-25 17:11:50.819000', '2024-04-25 17:11:50.819000', NULL, NULL);
INSERT INTO `admin_permissions` (`id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(669, 'plugin::content-manager.explorer.delete', '{}', 'api::forma-aquisicao.forma-aquisicao', '{}', '[]', '2024-04-25 17:22:20.111000', '2024-04-25 17:22:20.111000', NULL, NULL),
(674, 'plugin::content-manager.explorer.delete', '{}', 'api::especializacao.especializacao', '{}', '[]', '2024-04-25 17:24:15.915000', '2024-04-25 17:24:15.915000', NULL, NULL),
(679, 'plugin::content-manager.explorer.delete', '{}', 'api::sexo.sexo', '{}', '[]', '2024-04-25 17:24:49.028000', '2024-04-25 17:24:49.028000', NULL, NULL),
(684, 'plugin::content-manager.explorer.delete', '{}', 'api::status-saude.status-saude', '{}', '[]', '2024-04-25 17:27:01.968000', '2024-04-25 17:27:01.968000', NULL, NULL),
(689, 'plugin::content-manager.explorer.delete', '{}', 'api::status-operacional.status-operacional', '{}', '[]', '2024-04-25 17:27:57.775000', '2024-04-25 17:27:57.775000', NULL, NULL),
(694, 'plugin::content-manager.explorer.delete', '{}', 'api::raca.raca', '{}', '[]', '2024-04-25 17:29:17.190000', '2024-04-25 17:29:17.190000', NULL, NULL),
(697, 'plugin::content-manager.explorer.create', '{}', 'api::racao.racao', '{\"fields\": [\"Quantidade\", \"data_de_registro\"]}', '[]', '2024-04-25 17:40:17.464000', '2024-04-25 17:40:17.464000', NULL, NULL),
(699, 'plugin::content-manager.explorer.read', '{}', 'api::racao.racao', '{\"fields\": [\"Quantidade\", \"data_de_registro\"]}', '[]', '2024-04-25 17:40:17.500000', '2024-04-25 17:40:17.500000', NULL, NULL),
(701, 'plugin::content-manager.explorer.update', '{}', 'api::racao.racao', '{\"fields\": [\"Quantidade\", \"data_de_registro\"]}', '[]', '2024-04-25 17:40:17.531000', '2024-04-25 17:40:17.531000', NULL, NULL),
(705, 'plugin::content-manager.explorer.delete', '{}', 'api::cor-animal.cor-animal', '{}', '[]', '2024-04-25 17:41:51.048000', '2024-04-25 17:41:51.048000', NULL, NULL),
(730, 'plugin::content-manager.explorer.create', '{}', 'api::animal.animal', '{\"fields\": [\"Nome\", \"Data_nascimento\", \"Idade\", \"Box\", \"Alocacao\", \"Condutor_principal\", \"Condutor_secundario\", \"Foto_frente\", \"Foto_direita\", \"Foto_esquerda\", \"Justificativa_baixado\", \"e_alergicos\", \"registro_obs\", \"animal_tratamento_medicos\", \"numero_patrimonio\", \"numero_de_microchip\", \"nome_do_proprietario_anterior\", \"data_aquisicao\", \"data_inclusao_carga\", \"valor_compra\", \"cor_animal\", \"forma_aquisicao\", \"sexo\", \"status_saude\", \"status_operacional\", \"raca\", \"status_geral\", \"especializacao\"]}', '[]', '2024-04-26 19:06:30.647000', '2024-04-26 19:06:30.647000', NULL, NULL),
(731, 'plugin::content-manager.explorer.read', '{}', 'api::animal.animal', '{\"fields\": [\"Nome\", \"Data_nascimento\", \"Idade\", \"Box\", \"Alocacao\", \"Condutor_principal\", \"Condutor_secundario\", \"Foto_frente\", \"Foto_direita\", \"Foto_esquerda\", \"Justificativa_baixado\", \"e_alergicos\", \"registro_obs\", \"animal_tratamento_medicos\", \"numero_patrimonio\", \"numero_de_microchip\", \"nome_do_proprietario_anterior\", \"data_aquisicao\", \"data_inclusao_carga\", \"valor_compra\", \"cor_animal\", \"forma_aquisicao\", \"sexo\", \"status_saude\", \"status_operacional\", \"raca\", \"status_geral\", \"especializacao\"]}', '[]', '2024-04-26 19:06:30.666000', '2024-04-26 19:06:30.666000', NULL, NULL),
(732, 'plugin::content-manager.explorer.update', '{}', 'api::animal.animal', '{\"fields\": [\"Nome\", \"Data_nascimento\", \"Idade\", \"Box\", \"Alocacao\", \"Condutor_principal\", \"Condutor_secundario\", \"Foto_frente\", \"Foto_direita\", \"Foto_esquerda\", \"Justificativa_baixado\", \"e_alergicos\", \"registro_obs\", \"animal_tratamento_medicos\", \"numero_patrimonio\", \"numero_de_microchip\", \"nome_do_proprietario_anterior\", \"data_aquisicao\", \"data_inclusao_carga\", \"valor_compra\", \"cor_animal\", \"forma_aquisicao\", \"sexo\", \"status_saude\", \"status_operacional\", \"raca\", \"status_geral\", \"especializacao\"]}', '[]', '2024-04-26 19:06:30.688000', '2024-04-26 19:06:30.688000', NULL, NULL),
(733, 'plugin::content-manager.explorer.create', '{}', 'api::marca-vacina.marca-vacina', '{\"fields\": [\"nome\", \"ativo\", \"tipo_vacina\"]}', '[]', '2024-04-29 16:23:42.625000', '2024-04-29 16:23:42.625000', NULL, NULL),
(734, 'plugin::content-manager.explorer.read', '{}', 'api::marca-vacina.marca-vacina', '{\"fields\": [\"nome\", \"ativo\", \"tipo_vacina\"]}', '[]', '2024-04-29 16:23:42.664000', '2024-04-29 16:23:42.664000', NULL, NULL),
(735, 'plugin::content-manager.explorer.update', '{}', 'api::marca-vacina.marca-vacina', '{\"fields\": [\"nome\", \"ativo\", \"tipo_vacina\"]}', '[]', '2024-04-29 16:23:42.696000', '2024-04-29 16:23:42.696000', NULL, NULL),
(736, 'plugin::content-manager.explorer.create', '{}', 'api::animal-vacina.animal-vacina', '{\"fields\": [\"data_proxima_aplicacao\", \"anotacoes\", \"lembrete_em_dias\", \"data_aplicacao\", \"dose_atual\", \"animal\", \"aplicado\", \"foto_etiqueta\", \"doses_totais\", \"nome_vacina\", \"intervalo_entre_doses\"]}', '[]', '2024-04-29 16:40:59.930000', '2024-04-29 16:40:59.930000', NULL, NULL),
(737, 'plugin::content-manager.explorer.read', '{}', 'api::animal-vacina.animal-vacina', '{\"fields\": [\"data_proxima_aplicacao\", \"anotacoes\", \"lembrete_em_dias\", \"data_aplicacao\", \"dose_atual\", \"animal\", \"aplicado\", \"foto_etiqueta\", \"doses_totais\", \"nome_vacina\", \"intervalo_entre_doses\"]}', '[]', '2024-04-29 16:40:59.964000', '2024-04-29 16:40:59.964000', NULL, NULL),
(738, 'plugin::content-manager.explorer.update', '{}', 'api::animal-vacina.animal-vacina', '{\"fields\": [\"data_proxima_aplicacao\", \"anotacoes\", \"lembrete_em_dias\", \"data_aplicacao\", \"dose_atual\", \"animal\", \"aplicado\", \"foto_etiqueta\", \"doses_totais\", \"nome_vacina\", \"intervalo_entre_doses\"]}', '[]', '2024-04-29 16:40:59.989000', '2024-04-29 16:40:59.989000', NULL, NULL),
(739, 'plugin::content-manager.explorer.create', '{}', 'api::status-operacional.status-operacional', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:11:54.673000', '2024-04-29 19:11:54.673000', NULL, NULL),
(740, 'plugin::content-manager.explorer.read', '{}', 'api::status-operacional.status-operacional', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:11:54.690000', '2024-04-29 19:11:54.690000', NULL, NULL),
(741, 'plugin::content-manager.explorer.update', '{}', 'api::status-operacional.status-operacional', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:11:54.708000', '2024-04-29 19:11:54.708000', NULL, NULL),
(742, 'plugin::content-manager.explorer.create', '{}', 'api::sexo.sexo', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:12:16.473000', '2024-04-29 19:12:16.473000', NULL, NULL),
(743, 'plugin::content-manager.explorer.read', '{}', 'api::sexo.sexo', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:12:16.511000', '2024-04-29 19:12:16.511000', NULL, NULL),
(744, 'plugin::content-manager.explorer.update', '{}', 'api::sexo.sexo', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:12:16.537000', '2024-04-29 19:12:16.537000', NULL, NULL),
(745, 'plugin::content-manager.explorer.create', '{}', 'api::status-saude.status-saude', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:12:42.548000', '2024-04-29 19:12:42.548000', NULL, NULL),
(746, 'plugin::content-manager.explorer.read', '{}', 'api::status-saude.status-saude', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:12:42.587000', '2024-04-29 19:12:42.587000', NULL, NULL),
(747, 'plugin::content-manager.explorer.update', '{}', 'api::status-saude.status-saude', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:12:42.616000', '2024-04-29 19:12:42.616000', NULL, NULL),
(748, 'plugin::content-manager.explorer.create', '{}', 'api::raca.raca', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:13:22.803000', '2024-04-29 19:13:22.803000', NULL, NULL),
(749, 'plugin::content-manager.explorer.read', '{}', 'api::raca.raca', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:13:22.823000', '2024-04-29 19:13:22.823000', NULL, NULL),
(750, 'plugin::content-manager.explorer.update', '{}', 'api::raca.raca', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:13:22.841000', '2024-04-29 19:13:22.841000', NULL, NULL),
(751, 'plugin::content-manager.explorer.create', '{}', 'api::forma-aquisicao.forma-aquisicao', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:17:23.326000', '2024-04-29 19:17:23.326000', NULL, NULL),
(752, 'plugin::content-manager.explorer.read', '{}', 'api::forma-aquisicao.forma-aquisicao', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:17:23.343000', '2024-04-29 19:17:23.343000', NULL, NULL),
(753, 'plugin::content-manager.explorer.update', '{}', 'api::forma-aquisicao.forma-aquisicao', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:17:23.359000', '2024-04-29 19:17:23.359000', NULL, NULL),
(754, 'plugin::content-manager.explorer.create', '{}', 'api::especializacao.especializacao', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:19:05.583000', '2024-04-29 19:19:05.583000', NULL, NULL),
(755, 'plugin::content-manager.explorer.read', '{}', 'api::especializacao.especializacao', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:19:05.603000', '2024-04-29 19:19:05.603000', NULL, NULL),
(756, 'plugin::content-manager.explorer.update', '{}', 'api::especializacao.especializacao', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:19:05.623000', '2024-04-29 19:19:05.623000', NULL, NULL),
(757, 'plugin::content-manager.explorer.create', '{}', 'api::cor-animal.cor-animal', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:20:23.998000', '2024-04-29 19:20:23.998000', NULL, NULL),
(758, 'plugin::content-manager.explorer.read', '{}', 'api::cor-animal.cor-animal', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:20:24.018000', '2024-04-29 19:20:24.018000', NULL, NULL),
(759, 'plugin::content-manager.explorer.update', '{}', 'api::cor-animal.cor-animal', '{\"fields\": [\"Nome\"]}', '[]', '2024-04-29 19:20:24.036000', '2024-04-29 19:20:24.036000', NULL, NULL),
(760, 'plugin::content-manager.explorer.create', '{}', 'api::consulta.consulta', '{\"fields\": [\"data_consulta\", \"anamnese\", \"exame_fisico\", \"diagnostico\", \"animal\", \"retorno\", \"removido\", \"users_permissions_user\"]}', '[]', '2024-04-30 18:21:55.361000', '2024-04-30 18:21:55.361000', NULL, NULL),
(761, 'plugin::content-manager.explorer.read', '{}', 'api::consulta.consulta', '{\"fields\": [\"data_consulta\", \"anamnese\", \"exame_fisico\", \"diagnostico\", \"animal\", \"retorno\", \"removido\", \"users_permissions_user\"]}', '[]', '2024-04-30 18:21:55.381000', '2024-04-30 18:21:55.381000', NULL, NULL),
(762, 'plugin::content-manager.explorer.update', '{}', 'api::consulta.consulta', '{\"fields\": [\"data_consulta\", \"anamnese\", \"exame_fisico\", \"diagnostico\", \"animal\", \"retorno\", \"removido\", \"users_permissions_user\"]}', '[]', '2024-04-30 18:21:55.397000', '2024-04-30 18:21:55.397000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_permissions_role_links`
--

DROP TABLE IF EXISTS `admin_permissions_role_links`;
CREATE TABLE `admin_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 2, 7),
(8, 8, 2, 8),
(9, 9, 2, 9),
(10, 10, 2, 10),
(14, 14, 3, 4),
(15, 15, 3, 5),
(16, 16, 3, 6),
(17, 17, 3, 7),
(18, 18, 3, 8),
(19, 19, 3, 9),
(20, 20, 3, 10),
(27, 27, 1, 7),
(28, 28, 1, 8),
(29, 29, 1, 9),
(30, 30, 1, 10),
(31, 31, 1, 11),
(32, 32, 1, 12),
(33, 33, 1, 13),
(34, 34, 1, 14),
(35, 35, 1, 15),
(36, 36, 1, 16),
(37, 37, 1, 17),
(38, 38, 1, 18),
(39, 39, 1, 19),
(40, 40, 1, 20),
(45, 45, 1, 25),
(46, 46, 1, 26),
(47, 47, 1, 27),
(48, 48, 1, 28),
(49, 49, 1, 29),
(50, 50, 1, 30),
(51, 51, 1, 31),
(52, 52, 1, 32),
(53, 53, 1, 33),
(54, 54, 1, 34),
(55, 55, 1, 35),
(56, 56, 1, 36),
(57, 57, 1, 37),
(58, 58, 1, 38),
(59, 59, 1, 39),
(60, 60, 1, 40),
(61, 61, 1, 41),
(62, 62, 1, 42),
(63, 63, 1, 43),
(64, 64, 1, 44),
(65, 65, 1, 45),
(66, 66, 1, 46),
(67, 67, 1, 47),
(68, 68, 1, 48),
(69, 69, 1, 49),
(70, 70, 1, 50),
(71, 71, 1, 51),
(72, 72, 1, 52),
(73, 73, 1, 53),
(74, 74, 1, 54),
(75, 75, 1, 55),
(76, 76, 1, 56),
(77, 77, 1, 57),
(78, 78, 1, 58),
(79, 79, 1, 59),
(80, 80, 1, 60),
(81, 81, 1, 61),
(82, 82, 1, 62),
(83, 83, 1, 63),
(84, 84, 1, 64),
(85, 85, 1, 65),
(97, 97, 1, 72),
(131, 131, 1, 85),
(139, 139, 1, 93),
(150, 150, 1, 97),
(184, 184, 1, 104),
(186, 186, 1, 106),
(187, 187, 1, 107),
(188, 188, 1, 108),
(192, 192, 1, 112),
(193, 193, 1, 113),
(208, 208, 1, 128),
(219, 219, 1, 139),
(220, 220, 1, 140),
(224, 224, 1, 144),
(225, 225, 1, 145),
(235, 235, 1, 155),
(236, 236, 1, 156),
(259, 259, 1, 173),
(261, 261, 1, 175),
(263, 263, 1, 177),
(267, 267, 1, 178),
(268, 268, 1, 179),
(269, 269, 1, 180),
(271, 271, 1, 182),
(273, 273, 1, 184),
(275, 275, 1, 186),
(276, 276, 1, 187),
(277, 277, 1, 188),
(284, 284, 1, 192),
(285, 285, 1, 193),
(286, 286, 1, 194),
(287, 287, 1, 195),
(288, 288, 1, 196),
(289, 289, 1, 197),
(290, 290, 1, 198),
(291, 291, 1, 199),
(292, 292, 1, 200),
(294, 294, 1, 202),
(295, 295, 1, 203),
(296, 296, 1, 204),
(297, 297, 1, 205),
(298, 298, 1, 206),
(300, 300, 1, 208),
(302, 302, 1, 210),
(304, 304, 1, 212),
(305, 305, 1, 213),
(306, 306, 1, 214),
(307, 307, 3, 11),
(308, 308, 3, 12),
(309, 309, 3, 13),
(310, 310, 3, 14),
(311, 311, 3, 15),
(312, 312, 3, 16),
(313, 313, 3, 17),
(314, 314, 3, 18),
(315, 315, 3, 19),
(316, 316, 3, 20),
(317, 317, 3, 21),
(323, 323, 3, 27),
(324, 324, 3, 28),
(325, 325, 3, 29),
(326, 326, 3, 30),
(327, 327, 3, 31),
(328, 328, 3, 32),
(329, 329, 3, 33),
(330, 330, 3, 34),
(331, 331, 3, 35),
(332, 332, 3, 36),
(333, 333, 3, 37),
(334, 334, 3, 38),
(335, 335, 3, 39),
(337, 337, 3, 41),
(338, 338, 3, 42),
(339, 339, 3, 43),
(340, 340, 3, 44),
(341, 341, 3, 45),
(342, 342, 3, 46),
(343, 343, 3, 47),
(344, 344, 3, 48),
(345, 345, 3, 49),
(346, 346, 3, 50),
(347, 347, 3, 51),
(348, 348, 3, 52),
(349, 349, 3, 53),
(350, 350, 3, 54),
(351, 351, 3, 55),
(352, 352, 3, 56),
(353, 353, 3, 57),
(354, 354, 3, 58),
(355, 355, 3, 59),
(356, 356, 3, 60),
(357, 357, 3, 61),
(358, 358, 3, 62),
(359, 359, 3, 63),
(360, 360, 3, 64),
(361, 361, 3, 65),
(362, 362, 3, 66),
(363, 363, 3, 67),
(364, 364, 3, 68),
(365, 365, 3, 69),
(366, 366, 3, 70),
(367, 367, 3, 71),
(368, 368, 3, 72),
(369, 369, 3, 73),
(370, 370, 3, 74),
(371, 371, 3, 75),
(372, 372, 3, 76),
(373, 373, 3, 77),
(374, 374, 3, 78),
(376, 376, 3, 80),
(377, 377, 3, 81),
(378, 378, 3, 82),
(379, 379, 3, 83),
(380, 380, 3, 84),
(381, 381, 3, 85),
(382, 382, 3, 86),
(383, 383, 3, 87),
(384, 384, 3, 88),
(385, 385, 2, 11),
(386, 386, 2, 12),
(387, 387, 2, 13),
(388, 388, 2, 14),
(389, 389, 2, 15),
(390, 390, 2, 16),
(391, 391, 2, 17),
(401, 401, 1, 218),
(402, 402, 1, 219),
(403, 403, 1, 220),
(404, 404, 1, 221),
(405, 405, 1, 222),
(406, 406, 1, 223),
(410, 410, 1, 227),
(411, 411, 1, 228),
(412, 412, 1, 229),
(425, 425, 1, 236),
(426, 426, 1, 237),
(468, 468, 1, 250),
(469, 469, 1, 251),
(471, 471, 1, 253),
(472, 472, 1, 254),
(474, 474, 1, 256),
(475, 475, 1, 257),
(476, 476, 1, 258),
(477, 477, 1, 259),
(478, 478, 3, 89),
(479, 479, 3, 90),
(480, 480, 3, 91),
(481, 481, 3, 92),
(482, 482, 3, 93),
(483, 483, 3, 94),
(484, 484, 3, 95),
(485, 485, 3, 96),
(486, 486, 3, 97),
(487, 487, 3, 98),
(499, 499, 3, 104),
(500, 500, 3, 105),
(501, 501, 3, 106),
(502, 502, 3, 107),
(503, 503, 3, 108),
(504, 504, 3, 109),
(505, 505, 3, 110),
(506, 506, 3, 111),
(522, 522, 1, 275),
(523, 523, 1, 276),
(524, 524, 1, 277),
(576, 576, 1, 329),
(577, 577, 1, 330),
(578, 578, 1, 331),
(579, 579, 1, 332),
(580, 580, 1, 333),
(584, 584, 1, 337),
(592, 592, 1, 345),
(593, 593, 1, 346),
(597, 597, 1, 350),
(602, 602, 1, 355),
(610, 610, 1, 363),
(611, 611, 1, 364),
(612, 612, 1, 365),
(643, 643, 1, 378),
(645, 645, 1, 380),
(647, 647, 1, 382),
(649, 649, 1, 384),
(650, 650, 1, 385),
(651, 651, 1, 386),
(655, 655, 1, 390),
(656, 656, 1, 391),
(660, 660, 1, 392),
(661, 661, 1, 393),
(662, 662, 1, 394),
(669, 669, 1, 401),
(674, 674, 1, 406),
(679, 679, 1, 411),
(684, 684, 1, 416),
(689, 689, 1, 421),
(694, 694, 1, 426),
(697, 697, 1, 429),
(699, 699, 1, 431),
(701, 701, 1, 433),
(705, 705, 1, 437),
(730, 730, 1, 438),
(731, 731, 1, 439),
(732, 732, 1, 440),
(733, 733, 1, 441),
(734, 734, 1, 442),
(735, 735, 1, 443),
(736, 736, 1, 444),
(737, 737, 1, 445),
(738, 738, 1, 446),
(739, 739, 1, 447),
(740, 740, 1, 448),
(741, 741, 1, 449),
(742, 742, 1, 450),
(743, 743, 1, 451),
(744, 744, 1, 452),
(745, 745, 1, 453),
(746, 746, 1, 454),
(747, 747, 1, 455),
(748, 748, 1, 456),
(749, 749, 1, 457),
(750, 750, 1, 458),
(751, 751, 1, 459),
(752, 752, 1, 460),
(753, 753, 1, 461),
(754, 754, 1, 462),
(755, 755, 1, 463),
(756, 756, 1, 464),
(757, 757, 1, 465),
(758, 758, 1, 466),
(759, 759, 1, 467),
(760, 760, 1, 468),
(761, 761, 1, 469),
(762, 762, 1, 470);

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-12-27 13:12:48.153000', '2023-12-27 13:12:48.153000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-12-27 13:12:48.169000', '2024-02-08 18:22:43.400000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-12-27 13:12:48.181000', '2024-03-22 16:47:01.538000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Felipe', 'Oliveira', 'felipe', 'felipefo@gmail.com', '$2a$10$qAI0ssKj2AYaHYww//UHS.4hBtC0IO/OHGM6WfqNO.ilwIKC3BFx6', NULL, NULL, 1, 0, NULL, '2023-12-27 14:03:13.940000', '2024-03-26 16:17:13.752000', NULL, NULL),
(2, 'vet', 'vet', 'veterinario', 'veterinario@gmail.com', '$2a$10$O1uQl0TV6wzJLFuIHNpAU.DnL15yKpROM9YNleJoF9NRDyi8WVNW6', NULL, '3688b9697d82dd35cc3547b9a5041c71b46dcec9', 1, 0, NULL, '2023-12-27 15:46:44.135000', '2024-03-22 17:35:32.585000', NULL, NULL),
(3, 'Mateus', 'lannes', 'mateus@gmail.com', 'mateus@gmail.com', '$2a$10$OMVF2SETDUrckvsmPZmvEulZ5lZf.lClHEVXzBFRk/.fDi7uUAI5.', NULL, '9f77dd97e374adccb533ea6d7ac84a7b2167984a', 1, 0, NULL, '2024-03-22 17:03:29.110000', '2024-03-22 17:23:35.611000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `admin_users_roles_links`
--

DROP TABLE IF EXISTS `admin_users_roles_links`;
CREATE TABLE `admin_users_roles_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 3, 1, 1),
(5, 1, 2, 2, 1),
(6, 1, 3, 3, 2),
(14, 3, 1, 1, 2),
(20, 3, 2, 2, 2),
(21, 3, 3, 3, 3),
(29, 2, 1, 2, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animals`
--

DROP TABLE IF EXISTS `animals`;
CREATE TABLE `animals` (
  `id` int UNSIGNED NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `box` varchar(255) DEFAULT NULL,
  `justificativa_baixado` varchar(255) DEFAULT NULL,
  `numero_patrimonio` bigint DEFAULT NULL,
  `numero_de_microchip` bigint DEFAULT NULL,
  `nome_do_proprietario_anterior` varchar(255) DEFAULT NULL,
  `data_aquisicao` date DEFAULT NULL,
  `data_inclusao_carga` date DEFAULT NULL,
  `valor_compra` double DEFAULT NULL,
  `status_geral` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animals`
--

INSERT INTO `animals` (`id`, `nome`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `data_nascimento`, `idade`, `box`, `justificativa_baixado`, `numero_patrimonio`, `numero_de_microchip`, `nome_do_proprietario_anterior`, `data_aquisicao`, `data_inclusao_carga`, `valor_compra`, `status_geral`) VALUES
(103, 'Thor', '2024-04-26 19:11:49.762000', '2024-05-02 20:23:07.703000', NULL, 1, '2022-02-17', NULL, '80', NULL, 6545123, 46523, 'Nascimento no Canil PMES', '2023-07-07', '2023-04-13', 35, 1),
(104, 'Aranha', '2024-04-26 19:31:20.205000', '2024-05-02 20:01:05.971000', 1, 1, '2021-04-07', NULL, '10', 'asafsf', 101, 3335564, 'joaozin', '2022-01-04', '2024-01-04', 2, 1),
(105, 'Bilsa', '2024-04-30 15:30:40.571000', '2024-05-02 20:24:19.237000', NULL, 1, '2024-04-01', NULL, '23', 'asafsf', 29129000, 99129000, 'Nascimento no Canil PMES', '2024-04-03', '2024-04-02', 303, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animals_alocacao_links`
--

DROP TABLE IF EXISTS `animals_alocacao_links`;
CREATE TABLE `animals_alocacao_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `unidade_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animals_alocacao_links`
--

INSERT INTO `animals_alocacao_links` (`id`, `animal_id`, `unidade_id`) VALUES
(240, 103, 3),
(241, 104, 2),
(242, 105, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animals_condutor_principal_links`
--

DROP TABLE IF EXISTS `animals_condutor_principal_links`;
CREATE TABLE `animals_condutor_principal_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `condutor_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animals_condutor_principal_links`
--

INSERT INTO `animals_condutor_principal_links` (`id`, `animal_id`, `condutor_id`) VALUES
(245, 103, 1),
(246, 104, 4),
(247, 105, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animals_condutor_secundario_links`
--

DROP TABLE IF EXISTS `animals_condutor_secundario_links`;
CREATE TABLE `animals_condutor_secundario_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `condutor_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animals_condutor_secundario_links`
--

INSERT INTO `animals_condutor_secundario_links` (`id`, `animal_id`, `condutor_id`) VALUES
(246, 103, 2),
(247, 104, 8),
(248, 105, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animals_cor_animal_links`
--

DROP TABLE IF EXISTS `animals_cor_animal_links`;
CREATE TABLE `animals_cor_animal_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `cor_animal_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animals_cor_animal_links`
--

INSERT INTO `animals_cor_animal_links` (`id`, `animal_id`, `cor_animal_id`) VALUES
(3, 103, 6),
(4, 104, 6),
(5, 105, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animals_especializacao_links`
--

DROP TABLE IF EXISTS `animals_especializacao_links`;
CREATE TABLE `animals_especializacao_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `especializacao_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animals_especializacao_links`
--

INSERT INTO `animals_especializacao_links` (`id`, `animal_id`, `especializacao_id`) VALUES
(1, 103, 3),
(2, 104, 2),
(3, 105, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animals_forma_aquisicao_links`
--

DROP TABLE IF EXISTS `animals_forma_aquisicao_links`;
CREATE TABLE `animals_forma_aquisicao_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `forma_aquisicao_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animals_forma_aquisicao_links`
--

INSERT INTO `animals_forma_aquisicao_links` (`id`, `animal_id`, `forma_aquisicao_id`) VALUES
(3, 103, 1),
(6, 104, 3),
(7, 105, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animals_raca_links`
--

DROP TABLE IF EXISTS `animals_raca_links`;
CREATE TABLE `animals_raca_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `raca_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animals_raca_links`
--

INSERT INTO `animals_raca_links` (`id`, `animal_id`, `raca_id`) VALUES
(6, 103, 2),
(7, 104, 2),
(8, 105, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animals_sexo_links`
--

DROP TABLE IF EXISTS `animals_sexo_links`;
CREATE TABLE `animals_sexo_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `sexo_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animals_sexo_links`
--

INSERT INTO `animals_sexo_links` (`id`, `animal_id`, `sexo_id`) VALUES
(6, 103, 1),
(7, 104, 1),
(8, 105, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animals_status_operacional_links`
--

DROP TABLE IF EXISTS `animals_status_operacional_links`;
CREATE TABLE `animals_status_operacional_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `status_operacional_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animals_status_operacional_links`
--

INSERT INTO `animals_status_operacional_links` (`id`, `animal_id`, `status_operacional_id`) VALUES
(10, 103, 4),
(8, 104, 3),
(9, 105, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animals_status_saude_links`
--

DROP TABLE IF EXISTS `animals_status_saude_links`;
CREATE TABLE `animals_status_saude_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `status_saude_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animals_status_saude_links`
--

INSERT INTO `animals_status_saude_links` (`id`, `animal_id`, `status_saude_id`) VALUES
(5, 103, 1),
(6, 104, 1),
(7, 105, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animal_aplicacaos`
--

DROP TABLE IF EXISTS `animal_aplicacaos`;
CREATE TABLE `animal_aplicacaos` (
  `id` int UNSIGNED NOT NULL,
  `lembrete_em_dias` int DEFAULT NULL,
  `data_aplicacao` date DEFAULT NULL,
  `data_proxima_aplicacao` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `aplicado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animal_aplicacaos`
--

INSERT INTO `animal_aplicacaos` (`id`, `lembrete_em_dias`, `data_aplicacao`, `data_proxima_aplicacao`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `aplicado`) VALUES
(74, 5, NULL, '2024-05-05', '2024-04-30 20:03:23.566000', '2024-04-30 20:58:15.102000', 1, 1, 0),
(75, 5, NULL, '2024-05-05', '2024-04-30 20:03:38.470000', '2024-04-30 20:58:23.594000', 1, 1, 0),
(77, 5, NULL, '2024-05-05', '2024-04-30 20:05:03.273000', '2024-04-30 20:58:49.941000', 1, 1, 0),
(78, 3, NULL, '2024-05-03', '2024-04-30 20:24:54.029000', '2024-04-30 20:59:08.273000', NULL, 1, 0),
(79, 15, '2024-05-02', '2024-12-28', '2024-05-02 16:40:17.318000', '2024-05-02 16:40:17.318000', NULL, NULL, 1),
(80, 3, NULL, '2024-05-05', '2024-05-02 18:02:42.859000', '2024-05-02 18:02:42.859000', NULL, NULL, 0),
(81, 5, NULL, '2024-05-05', '2024-05-02 18:05:07.641000', '2024-05-02 18:05:07.641000', NULL, NULL, 0),
(82, 3, '2024-05-02', '2024-12-28', '2024-05-02 18:05:23.134000', '2024-05-02 18:05:23.134000', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animal_aplicacaos_animal_links`
--

DROP TABLE IF EXISTS `animal_aplicacaos_animal_links`;
CREATE TABLE `animal_aplicacaos_animal_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_aplicacao_id` int UNSIGNED DEFAULT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animal_aplicacaos_animal_links`
--

INSERT INTO `animal_aplicacaos_animal_links` (`id`, `animal_aplicacao_id`, `animal_id`) VALUES
(154, 74, 104),
(155, 75, 104),
(157, 77, 104),
(158, 78, 104),
(159, 79, 104),
(160, 80, 103),
(161, 81, 103),
(162, 82, 103);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animal_aplicacaos_tipo_aplicacao_links`
--

DROP TABLE IF EXISTS `animal_aplicacaos_tipo_aplicacao_links`;
CREATE TABLE `animal_aplicacaos_tipo_aplicacao_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_aplicacao_id` int UNSIGNED DEFAULT NULL,
  `tipo_aplicacao_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animal_aplicacaos_tipo_aplicacao_links`
--

INSERT INTO `animal_aplicacaos_tipo_aplicacao_links` (`id`, `animal_aplicacao_id`, `tipo_aplicacao_id`) VALUES
(149, 74, 7),
(150, 75, 15),
(152, 77, 1),
(153, 78, 11),
(154, 79, 6),
(155, 80, 7),
(156, 81, 11),
(157, 82, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animal_tratamento_medicos`
--

DROP TABLE IF EXISTS `animal_tratamento_medicos`;
CREATE TABLE `animal_tratamento_medicos` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animal_tratamento_medicos`
--

INSERT INTO `animal_tratamento_medicos` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, '2024-02-29 20:51:41.670000', '2024-02-29 20:51:49.991000', '2024-02-29 20:51:49.987000', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animal_tratamento_medicos_animal_links`
--

DROP TABLE IF EXISTS `animal_tratamento_medicos_animal_links`;
CREATE TABLE `animal_tratamento_medicos_animal_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_tratamento_medico_id` int UNSIGNED DEFAULT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `animal_tratamento_medico_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `animal_tratamento_medicos_tratamento_medico_links`
--

DROP TABLE IF EXISTS `animal_tratamento_medicos_tratamento_medico_links`;
CREATE TABLE `animal_tratamento_medicos_tratamento_medico_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_tratamento_medico_id` int UNSIGNED DEFAULT NULL,
  `tratamento_medico_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `animal_vacinas`
--

DROP TABLE IF EXISTS `animal_vacinas`;
CREATE TABLE `animal_vacinas` (
  `id` int UNSIGNED NOT NULL,
  `data_proxima_aplicacao` date DEFAULT NULL,
  `anotacoes` varchar(255) DEFAULT NULL,
  `lembrete_em_dias` int DEFAULT NULL,
  `data_aplicacao` date DEFAULT NULL,
  `dose_atual` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `aplicado` tinyint(1) DEFAULT NULL,
  `doses_totais` int DEFAULT NULL,
  `intervalo_entre_doses` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animal_vacinas`
--

INSERT INTO `animal_vacinas` (`id`, `data_proxima_aplicacao`, `anotacoes`, `lembrete_em_dias`, `data_aplicacao`, `dose_atual`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `aplicado`, `doses_totais`, `intervalo_entre_doses`) VALUES
(48, '2024-05-05', 'não', 5, NULL, 1, '2024-04-29 20:23:14.571000', '2024-04-30 20:50:41.523000', '2024-04-29 20:23:14.568000', NULL, 1, 0, 3, 3),
(49, '2024-05-05', 'Aplicar na área traseira', 5, '2024-04-30', 1, '2024-04-30 17:10:04.160000', '2024-04-30 17:44:03.957000', '2024-04-30 17:10:04.156000', NULL, 1, 1, 120, 5),
(52, '2024-05-05', 'Aplicar na área traseira', 5, NULL, 2, '2024-04-30 17:44:04.494000', '2024-04-30 20:56:42.422000', '2024-04-30 17:44:04.488000', NULL, 1, 0, 30, 5),
(53, '2024-05-05', 'aplicar', 3, '2024-05-02', 1, '2024-05-02 18:04:08.789000', '2024-05-02 19:58:15.062000', '2024-05-02 18:04:08.785000', NULL, NULL, 1, 5, 3),
(54, '2024-05-07', 'aplicar', 3, '2024-05-02', 2, '2024-05-02 19:58:15.501000', '2024-05-02 20:25:45.694000', '2024-05-02 19:58:15.497000', NULL, NULL, 1, 5, 3),
(55, '2024-05-07', 'aplicar', 3, NULL, 3, '2024-05-02 20:25:46.157000', '2024-05-02 20:25:46.157000', '2024-05-02 20:25:46.153000', NULL, NULL, 0, 5, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animal_vacinas_animal_links`
--

DROP TABLE IF EXISTS `animal_vacinas_animal_links`;
CREATE TABLE `animal_vacinas_animal_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_vacina_id` int UNSIGNED DEFAULT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animal_vacinas_animal_links`
--

INSERT INTO `animal_vacinas_animal_links` (`id`, `animal_vacina_id`, `animal_id`) VALUES
(65, 48, 104),
(68, 49, 104),
(71, 52, 104),
(74, 53, 103),
(75, 54, 103),
(76, 55, 103);

-- --------------------------------------------------------

--
-- Estrutura para tabela `animal_vacinas_nome_vacina_links`
--

DROP TABLE IF EXISTS `animal_vacinas_nome_vacina_links`;
CREATE TABLE `animal_vacinas_nome_vacina_links` (
  `id` int UNSIGNED NOT NULL,
  `animal_vacina_id` int UNSIGNED DEFAULT NULL,
  `marca_vacina_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `animal_vacinas_nome_vacina_links`
--

INSERT INTO `animal_vacinas_nome_vacina_links` (`id`, `animal_vacina_id`, `marca_vacina_id`) VALUES
(2, 48, 1),
(5, 49, 4),
(6, 52, 4),
(8, 53, 3),
(9, 54, 3),
(10, 55, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria_obs_saudes`
--

DROP TABLE IF EXISTS `categoria_obs_saudes`;
CREATE TABLE `categoria_obs_saudes` (
  `id` int UNSIGNED NOT NULL,
  `observacao` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `condutors`
--

DROP TABLE IF EXISTS `condutors`;
CREATE TABLE `condutors` (
  `id` int UNSIGNED NOT NULL,
  `nome` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `rg` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `condutors`
--

INSERT INTO `condutors` (`id`, `nome`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `ativo`, `rg`) VALUES
(1, 'Josué Oliveira', '2023-12-28 11:56:57.908000', '2024-04-15 18:37:53.661000', 1, 1, 0, 35142678935),
(2, 'Vinícius Félix', '2023-12-28 11:57:12.430000', '2024-03-13 18:14:02.249000', 1, 1, 1, 75984612378),
(4, 'Kauã Medeiros', '2024-02-22 00:53:12.826000', '2024-03-13 18:29:42.733000', NULL, 1, 0, 10163947642),
(5, 'Murilo Silva', '2024-02-22 18:54:04.052000', '2024-04-15 18:01:00.363000', NULL, 1, NULL, 78945612378),
(6, 'Mateus Pereira', '2024-02-22 19:04:28.287000', '2024-03-21 16:08:50.084000', NULL, 1, 1, 35786241973),
(7, 'Roberto Padin', '2024-02-22 20:29:37.186000', '2024-03-21 16:09:15.958000', NULL, 1, 0, 45612378912),
(8, 'Major Hilton', '2024-03-12 19:44:23.492000', '2024-03-13 18:14:21.483000', NULL, 1, 0, 15926487344),
(12, 'Cavalcante Jorge', '2024-03-13 19:16:34.226000', '2024-03-21 16:14:07.954000', NULL, 1, 0, 12254458474);

-- --------------------------------------------------------

--
-- Estrutura para tabela `condutors_unidade_links`
--

DROP TABLE IF EXISTS `condutors_unidade_links`;
CREATE TABLE `condutors_unidade_links` (
  `id` int UNSIGNED NOT NULL,
  `condutor_id` int UNSIGNED DEFAULT NULL,
  `unidade_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `condutors_unidade_links`
--

INSERT INTO `condutors_unidade_links` (`id`, `condutor_id`, `unidade_id`) VALUES
(9, 1, 4),
(1, 2, 2),
(4, 4, 2),
(6, 5, 2),
(15, 6, 4),
(5, 7, 4),
(3, 8, 4),
(13, 12, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `consultas`
--

DROP TABLE IF EXISTS `consultas`;
CREATE TABLE `consultas` (
  `id` int UNSIGNED NOT NULL,
  `data_consulta` date DEFAULT NULL,
  `anamnese` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `exame_fisico` varchar(255) DEFAULT NULL,
  `diagnostico` varchar(255) DEFAULT NULL,
  `retorno` tinyint(1) DEFAULT NULL,
  `removido` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `consultas`
--

INSERT INTO `consultas` (`id`, `data_consulta`, `anamnese`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `exame_fisico`, `diagnostico`, `retorno`, `removido`) VALUES
(1, '2024-02-29', 'Tomar o medicamento correto', '2024-02-29 19:45:43.050000', '2024-03-27 23:26:54.817000', '2024-02-29 19:56:11.247000', 1, 1, 'fisco doido', 'diagnostico ruim', 0, 0),
(2, '2024-03-04', 'testee', '2024-02-29 19:55:37.673000', '2024-03-28 00:17:01.385000', '2024-02-29 19:56:26.046000', 1, 1, 'fisco ta pegadoo', 'diagnostico bom1', 0, 1),
(3, '2024-03-19', 'moticoTEste', '2024-03-27 22:38:04.116000', '2024-03-27 23:26:18.367000', '2024-03-27 22:38:04.113000', NULL, NULL, 'exameFisicoTeste', 'diagnosticotes', 1, 1),
(4, '2024-03-03', 'Machucou a pata direita', '2024-03-27 23:38:26.125000', '2024-05-02 19:52:13.807000', '2024-03-27 23:38:26.122000', NULL, 1, 'não foi realizado', 'pisou em um vidro', 1, 0),
(8, '2024-03-04', 'Não esta se alimentando bem', '2024-03-28 00:21:14.942000', '2024-03-28 00:43:36.252000', '2024-03-28 00:21:14.939000', NULL, NULL, 'não foi realizado', 'está comendo menos da metade do que o habitual', 0, 0),
(9, '2024-03-30', 'cansaço execessivo', '2024-03-28 00:41:57.718000', '2024-03-28 15:44:39.255000', '2024-03-28 00:41:57.715000', NULL, NULL, 'não foi realizado no momento', 'Não esta correndo', 0, 0),
(10, '2024-04-04', 'machucou a pata', '2024-03-28 01:26:02.344000', '2024-05-02 19:57:48.666000', '2024-03-28 01:26:02.341000', NULL, 1, 'tava correndo e pisou no vidro', 'não é grave, sangramento leve', 0, 1),
(15, '2024-04-29', 'Machucou a orelha', '2024-04-29 16:23:07.845000', '2024-05-02 16:35:41.500000', '2024-04-29 16:23:07.841000', NULL, NULL, 'Não foi realizado', 'Inflamação no ouvido esquerdo', 0, 0),
(16, '2024-04-29', 'orelha ruim', '2024-04-30 18:19:56.855000', '2024-05-02 20:25:27.585000', '2024-04-30 18:19:56.851000', NULL, 1, 'não foi feito', 'ta machucado', 1, 1),
(17, '2024-05-02', 'teste', '2024-05-02 16:34:28.555000', '2024-05-02 16:34:34.036000', '2024-05-02 16:34:28.551000', NULL, NULL, 'teste', 'teste', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `consultas_animal_links`
--

DROP TABLE IF EXISTS `consultas_animal_links`;
CREATE TABLE `consultas_animal_links` (
  `id` int UNSIGNED NOT NULL,
  `consulta_id` int UNSIGNED DEFAULT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `consultas_animal_links`
--

INSERT INTO `consultas_animal_links` (`id`, `consulta_id`, `animal_id`) VALUES
(57, 4, 104),
(56, 10, 103),
(50, 15, 104),
(58, 16, 103),
(54, 17, 104);

-- --------------------------------------------------------

--
-- Estrutura para tabela `consultas_users_permissions_user_links`
--

DROP TABLE IF EXISTS `consultas_users_permissions_user_links`;
CREATE TABLE `consultas_users_permissions_user_links` (
  `id` int UNSIGNED NOT NULL,
  `consulta_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `consultas_users_permissions_user_links`
--

INSERT INTO `consultas_users_permissions_user_links` (`id`, `consulta_id`, `user_id`) VALUES
(2, 15, 1),
(6, 17, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cor_animals`
--

DROP TABLE IF EXISTS `cor_animals`;
CREATE TABLE `cor_animals` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `cor_animals`
--

INSERT INTO `cor_animals` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `nome`) VALUES
(1, '2024-04-26 16:28:40.071000', '2024-04-29 19:20:43.957000', 1, 1, 'Marrom'),
(2, '2024-04-26 16:28:47.897000', '2024-04-29 19:20:48.072000', 1, 1, 'Preto'),
(4, '2024-04-26 16:34:37.235000', '2024-04-29 19:20:53.748000', 1, 1, 'Cinza'),
(5, '2024-04-26 16:34:47.282000', '2024-04-29 19:20:57.986000', 1, 1, 'Fulvo'),
(6, '2024-04-26 16:34:57.791000', '2024-04-29 19:21:04.166000', 1, 1, 'Fulvo Encarvoado'),
(7, '2024-04-26 16:36:21.191000', '2024-04-29 19:21:11.551000', 1, 1, 'Bicolor');

-- --------------------------------------------------------

--
-- Estrutura para tabela `doencas`
--

DROP TABLE IF EXISTS `doencas`;
CREATE TABLE `doencas` (
  `id` int UNSIGNED NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `doencas`
--

INSERT INTO `doencas` (`id`, `nome`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `ativo`) VALUES
(1, 'Pneumonia', '2024-02-07 20:09:35.349000', '2024-03-12 23:13:33.302000', 1, 1, 0),
(2, 'Rinite', '2024-02-07 20:28:17.703000', '2024-04-15 18:39:54.045000', 1, 1, NULL),
(5, 'Giardíase', '2024-02-15 20:54:27.472000', '2024-03-13 16:15:53.920000', NULL, 1, 0),
(6, 'Dengue', '2024-02-15 20:55:53.096000', '2024-03-12 23:13:16.588000', NULL, 1, 1),
(7, 'Caxumba', '2024-02-16 17:29:08.058000', '2024-03-12 23:13:09.388000', NULL, 1, 1),
(10, 'Catapora', '2024-02-20 17:42:28.085000', '2024-03-12 23:13:02.922000', NULL, 1, 1),
(11, 'Erliquiose', '2024-02-22 00:59:23.534000', '2024-03-12 23:12:35.838000', NULL, 1, 1),
(12, 'Leptospirose', '2024-02-22 13:59:05.399000', '2024-03-13 17:34:52.688000', NULL, 1, 0),
(13, 'Bronquite', '2024-02-22 20:30:40.982000', '2024-03-12 23:12:55.566000', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `especializacaos`
--

DROP TABLE IF EXISTS `especializacaos`;
CREATE TABLE `especializacaos` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `especializacaos`
--

INSERT INTO `especializacaos` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `nome`) VALUES
(1, '2024-04-26 16:44:27.661000', '2024-04-29 19:19:23.840000', 1, 1, 'Faro de Munição e Explosivos'),
(2, '2024-04-26 16:44:36.084000', '2024-04-29 19:19:31.151000', 1, 1, 'Faro de Entorpecentes'),
(3, '2024-04-26 16:44:42.828000', '2024-04-29 19:19:39.648000', 1, 1, 'Faro de Dinheiro'),
(4, '2024-04-26 16:44:51.061000', '2024-04-29 19:19:45.534000', 1, 1, 'Busca e Apreensão'),
(5, '2024-04-26 16:45:03.596000', '2024-04-29 19:19:52.532000', 1, 1, 'Em treinamento');

-- --------------------------------------------------------

--
-- Estrutura para tabela `e_alergicos`
--

DROP TABLE IF EXISTS `e_alergicos`;
CREATE TABLE `e_alergicos` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `e_alergicos_animal_links`
--

DROP TABLE IF EXISTS `e_alergicos_animal_links`;
CREATE TABLE `e_alergicos_animal_links` (
  `id` int UNSIGNED NOT NULL,
  `e_alergico_id` int UNSIGNED DEFAULT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `e_alergico_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `e_alergicos_medicamento_links`
--

DROP TABLE IF EXISTS `e_alergicos_medicamento_links`;
CREATE TABLE `e_alergicos_medicamento_links` (
  `id` int UNSIGNED NOT NULL,
  `e_alergico_id` int UNSIGNED DEFAULT NULL,
  `medicamento_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `e_causados`
--

DROP TABLE IF EXISTS `e_causados`;
CREATE TABLE `e_causados` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `e_causados`
--

INSERT INTO `e_causados` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, '2024-02-07 20:29:07.272000', '2024-02-07 20:29:26.351000', '2024-02-07 20:29:26.346000', 1, 1),
(2, '2024-02-07 20:29:47.818000', '2024-02-07 20:29:52.013000', '2024-02-07 20:29:52.006000', 1, 1),
(3, '2024-02-07 20:31:48.426000', '2024-02-07 20:32:03.283000', '2024-02-07 20:32:03.280000', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `e_causados_doenca_links`
--

DROP TABLE IF EXISTS `e_causados_doenca_links`;
CREATE TABLE `e_causados_doenca_links` (
  `id` int UNSIGNED NOT NULL,
  `e_causado_id` int UNSIGNED DEFAULT NULL,
  `doenca_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `e_causados_doenca_links`
--

INSERT INTO `e_causados_doenca_links` (`id`, `e_causado_id`, `doenca_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `e_causados_tratamento_medico_links`
--

DROP TABLE IF EXISTS `e_causados_tratamento_medico_links`;
CREATE TABLE `e_causados_tratamento_medico_links` (
  `id` int UNSIGNED NOT NULL,
  `e_causado_id` int UNSIGNED DEFAULT NULL,
  `tratamento_medico_id` int UNSIGNED DEFAULT NULL,
  `e_causado_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `e_causados_tratamento_medico_links`
--

INSERT INTO `e_causados_tratamento_medico_links` (`id`, `e_causado_id`, `tratamento_medico_id`, `e_causado_order`) VALUES
(5, 1, 4, 0),
(6, 2, 5, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'cachorro.jpg', NULL, NULL, 350, 200, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro_7f7abfaf8a.jpg\", \"hash\": \"thumbnail_cachorro_7f7abfaf8a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro.jpg\", \"path\": null, \"size\": 6.48, \"width\": 245, \"height\": 140}}', 'cachorro_7f7abfaf8a', '.jpg', 'image/jpeg', 9.31, '/uploads/cachorro_7f7abfaf8a.jpg', NULL, 'local', NULL, '/', '2023-12-28 19:08:57.556000', '2024-04-26 19:28:58.247000', 1, 1),
(738, 'cao frente.jpg', NULL, NULL, 866, 1300, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cao_frente_3f3103e4d1.jpg\", \"hash\": \"large_cao_frente_3f3103e4d1\", \"mime\": \"image/jpeg\", \"name\": \"large_cao frente.jpg\", \"path\": null, \"size\": 58.93, \"width\": 666, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cao_frente_3f3103e4d1.jpg\", \"hash\": \"small_cao_frente_3f3103e4d1\", \"mime\": \"image/jpeg\", \"name\": \"small_cao frente.jpg\", \"path\": null, \"size\": 16.55, \"width\": 333, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cao_frente_3f3103e4d1.jpg\", \"hash\": \"medium_cao_frente_3f3103e4d1\", \"mime\": \"image/jpeg\", \"name\": \"medium_cao frente.jpg\", \"path\": null, \"size\": 33.98, \"width\": 500, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cao_frente_3f3103e4d1.jpg\", \"hash\": \"thumbnail_cao_frente_3f3103e4d1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cao frente.jpg\", \"path\": null, \"size\": 2.74, \"width\": 104, \"height\": 156}}', 'cao_frente_3f3103e4d1', '.jpg', 'image/jpeg', 73.98, '/uploads/cao_frente_3f3103e4d1.jpg', NULL, 'local', NULL, '/1', '2024-03-22 18:35:12.906000', '2024-03-22 18:35:12.906000', NULL, NULL),
(739, 'cao lateral 2.jpg', NULL, NULL, 1024, 682, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cao_lateral_2_5a0fb1a556.jpg\", \"hash\": \"large_cao_lateral_2_5a0fb1a556\", \"mime\": \"image/jpeg\", \"name\": \"large_cao lateral 2.jpg\", \"path\": null, \"size\": 33.17, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cao_lateral_2_5a0fb1a556.jpg\", \"hash\": \"small_cao_lateral_2_5a0fb1a556\", \"mime\": \"image/jpeg\", \"name\": \"small_cao lateral 2.jpg\", \"path\": null, \"size\": 11.87, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cao_lateral_2_5a0fb1a556.jpg\", \"hash\": \"medium_cao_lateral_2_5a0fb1a556\", \"mime\": \"image/jpeg\", \"name\": \"medium_cao lateral 2.jpg\", \"path\": null, \"size\": 21.77, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cao_lateral_2_5a0fb1a556.jpg\", \"hash\": \"thumbnail_cao_lateral_2_5a0fb1a556\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cao lateral 2.jpg\", \"path\": null, \"size\": 3.77, \"width\": 234, \"height\": 156}}', 'cao_lateral_2_5a0fb1a556', '.jpg', 'image/jpeg', 15.65, '/uploads/cao_lateral_2_5a0fb1a556.jpg', NULL, 'local', NULL, '/1', '2024-03-22 18:35:30.294000', '2024-03-22 18:35:30.294000', NULL, NULL),
(740, 'cao lateral 1.jpg', NULL, NULL, 2048, 1365, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cao_lateral_1_8f9372ab26.jpg\", \"hash\": \"large_cao_lateral_1_8f9372ab26\", \"mime\": \"image/jpeg\", \"name\": \"large_cao lateral 1.jpg\", \"path\": null, \"size\": 122.34, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cao_lateral_1_8f9372ab26.jpg\", \"hash\": \"small_cao_lateral_1_8f9372ab26\", \"mime\": \"image/jpeg\", \"name\": \"small_cao lateral 1.jpg\", \"path\": null, \"size\": 37.76, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cao_lateral_1_8f9372ab26.jpg\", \"hash\": \"medium_cao_lateral_1_8f9372ab26\", \"mime\": \"image/jpeg\", \"name\": \"medium_cao lateral 1.jpg\", \"path\": null, \"size\": 75.55, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cao_lateral_1_8f9372ab26.jpg\", \"hash\": \"thumbnail_cao_lateral_1_8f9372ab26\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cao lateral 1.jpg\", \"path\": null, \"size\": 10.47, \"width\": 234, \"height\": 156}}', 'cao_lateral_1_8f9372ab26', '.jpg', 'image/jpeg', 393.15, '/uploads/cao_lateral_1_8f9372ab26.jpg', NULL, 'local', NULL, '/1', '2024-03-22 18:35:31.910000', '2024-03-22 18:35:31.910000', NULL, NULL),
(741, 'cao frente.jpg', NULL, NULL, 866, 1300, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cao_frente_41462b85c6.jpg\", \"hash\": \"large_cao_frente_41462b85c6\", \"mime\": \"image/jpeg\", \"name\": \"large_cao frente.jpg\", \"path\": null, \"size\": 58.93, \"width\": 666, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cao_frente_41462b85c6.jpg\", \"hash\": \"small_cao_frente_41462b85c6\", \"mime\": \"image/jpeg\", \"name\": \"small_cao frente.jpg\", \"path\": null, \"size\": 16.55, \"width\": 333, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cao_frente_41462b85c6.jpg\", \"hash\": \"medium_cao_frente_41462b85c6\", \"mime\": \"image/jpeg\", \"name\": \"medium_cao frente.jpg\", \"path\": null, \"size\": 33.98, \"width\": 500, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cao_frente_41462b85c6.jpg\", \"hash\": \"thumbnail_cao_frente_41462b85c6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cao frente.jpg\", \"path\": null, \"size\": 2.74, \"width\": 104, \"height\": 156}}', 'cao_frente_41462b85c6', '.jpg', 'image/jpeg', 73.98, '/uploads/cao_frente_41462b85c6.jpg', NULL, 'local', NULL, '/1', '2024-03-22 18:45:50.170000', '2024-03-22 18:45:50.170000', NULL, NULL),
(742, 'cao lateral 2.jpg', NULL, NULL, 1024, 682, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cao_lateral_2_af64ef733f.jpg\", \"hash\": \"large_cao_lateral_2_af64ef733f\", \"mime\": \"image/jpeg\", \"name\": \"large_cao lateral 2.jpg\", \"path\": null, \"size\": 33.17, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cao_lateral_2_af64ef733f.jpg\", \"hash\": \"small_cao_lateral_2_af64ef733f\", \"mime\": \"image/jpeg\", \"name\": \"small_cao lateral 2.jpg\", \"path\": null, \"size\": 11.87, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cao_lateral_2_af64ef733f.jpg\", \"hash\": \"medium_cao_lateral_2_af64ef733f\", \"mime\": \"image/jpeg\", \"name\": \"medium_cao lateral 2.jpg\", \"path\": null, \"size\": 21.77, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cao_lateral_2_af64ef733f.jpg\", \"hash\": \"thumbnail_cao_lateral_2_af64ef733f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cao lateral 2.jpg\", \"path\": null, \"size\": 3.77, \"width\": 234, \"height\": 156}}', 'cao_lateral_2_af64ef733f', '.jpg', 'image/jpeg', 15.65, '/uploads/cao_lateral_2_af64ef733f.jpg', NULL, 'local', NULL, '/1', '2024-03-22 18:46:00.307000', '2024-03-22 18:46:00.307000', NULL, NULL),
(743, 'cao lateral 2.jpg', NULL, NULL, 1024, 682, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cao_lateral_2_a1934e842d.jpg\", \"hash\": \"large_cao_lateral_2_a1934e842d\", \"mime\": \"image/jpeg\", \"name\": \"large_cao lateral 2.jpg\", \"path\": null, \"size\": 33.17, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cao_lateral_2_a1934e842d.jpg\", \"hash\": \"small_cao_lateral_2_a1934e842d\", \"mime\": \"image/jpeg\", \"name\": \"small_cao lateral 2.jpg\", \"path\": null, \"size\": 11.87, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cao_lateral_2_a1934e842d.jpg\", \"hash\": \"medium_cao_lateral_2_a1934e842d\", \"mime\": \"image/jpeg\", \"name\": \"medium_cao lateral 2.jpg\", \"path\": null, \"size\": 21.77, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cao_lateral_2_a1934e842d.jpg\", \"hash\": \"thumbnail_cao_lateral_2_a1934e842d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cao lateral 2.jpg\", \"path\": null, \"size\": 3.77, \"width\": 234, \"height\": 156}}', 'cao_lateral_2_a1934e842d', '.jpg', 'image/jpeg', 15.65, '/uploads/cao_lateral_2_a1934e842d.jpg', NULL, 'local', NULL, '/1', '2024-03-22 18:46:11.944000', '2024-03-22 18:46:11.944000', NULL, NULL),
(744, 'cao lateral 1.jpg', NULL, NULL, 2048, 1365, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cao_lateral_1_57276b0f13.jpg\", \"hash\": \"large_cao_lateral_1_57276b0f13\", \"mime\": \"image/jpeg\", \"name\": \"large_cao lateral 1.jpg\", \"path\": null, \"size\": 122.34, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cao_lateral_1_57276b0f13.jpg\", \"hash\": \"small_cao_lateral_1_57276b0f13\", \"mime\": \"image/jpeg\", \"name\": \"small_cao lateral 1.jpg\", \"path\": null, \"size\": 37.76, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cao_lateral_1_57276b0f13.jpg\", \"hash\": \"medium_cao_lateral_1_57276b0f13\", \"mime\": \"image/jpeg\", \"name\": \"medium_cao lateral 1.jpg\", \"path\": null, \"size\": 75.55, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cao_lateral_1_57276b0f13.jpg\", \"hash\": \"thumbnail_cao_lateral_1_57276b0f13\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cao lateral 1.jpg\", \"path\": null, \"size\": 10.47, \"width\": 234, \"height\": 156}}', 'cao_lateral_1_57276b0f13', '.jpg', 'image/jpeg', 393.15, '/uploads/cao_lateral_1_57276b0f13.jpg', NULL, 'local', NULL, '/1', '2024-03-22 18:46:18.692000', '2024-03-22 18:46:18.692000', NULL, NULL),
(745, 'cao frente.jpg', NULL, NULL, 866, 1300, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cao_frente_836064882a.jpg\", \"hash\": \"large_cao_frente_836064882a\", \"mime\": \"image/jpeg\", \"name\": \"large_cao frente.jpg\", \"path\": null, \"size\": 58.93, \"width\": 666, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cao_frente_836064882a.jpg\", \"hash\": \"small_cao_frente_836064882a\", \"mime\": \"image/jpeg\", \"name\": \"small_cao frente.jpg\", \"path\": null, \"size\": 16.55, \"width\": 333, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cao_frente_836064882a.jpg\", \"hash\": \"medium_cao_frente_836064882a\", \"mime\": \"image/jpeg\", \"name\": \"medium_cao frente.jpg\", \"path\": null, \"size\": 33.98, \"width\": 500, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cao_frente_836064882a.jpg\", \"hash\": \"thumbnail_cao_frente_836064882a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cao frente.jpg\", \"path\": null, \"size\": 2.74, \"width\": 104, \"height\": 156}}', 'cao_frente_836064882a', '.jpg', 'image/jpeg', 73.98, '/uploads/cao_frente_836064882a.jpg', NULL, 'local', NULL, '/1', '2024-03-22 18:46:24.403000', '2024-03-22 18:46:24.403000', NULL, NULL),
(746, 'cao frente.jpg', NULL, NULL, 866, 1300, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cao_frente_f63b1d64aa.jpg\", \"hash\": \"large_cao_frente_f63b1d64aa\", \"mime\": \"image/jpeg\", \"name\": \"large_cao frente.jpg\", \"path\": null, \"size\": 58.93, \"width\": 666, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cao_frente_f63b1d64aa.jpg\", \"hash\": \"small_cao_frente_f63b1d64aa\", \"mime\": \"image/jpeg\", \"name\": \"small_cao frente.jpg\", \"path\": null, \"size\": 16.55, \"width\": 333, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cao_frente_f63b1d64aa.jpg\", \"hash\": \"medium_cao_frente_f63b1d64aa\", \"mime\": \"image/jpeg\", \"name\": \"medium_cao frente.jpg\", \"path\": null, \"size\": 33.98, \"width\": 500, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cao_frente_f63b1d64aa.jpg\", \"hash\": \"thumbnail_cao_frente_f63b1d64aa\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cao frente.jpg\", \"path\": null, \"size\": 2.74, \"width\": 104, \"height\": 156}}', 'cao_frente_f63b1d64aa', '.jpg', 'image/jpeg', 73.98, '/uploads/cao_frente_f63b1d64aa.jpg', NULL, 'local', NULL, '/1', '2024-03-22 18:46:33.382000', '2024-03-22 18:46:33.382000', NULL, NULL),
(747, 'cao frente.jpg', NULL, NULL, 866, 1300, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cao_frente_59b5ea03d4.jpg\", \"hash\": \"large_cao_frente_59b5ea03d4\", \"mime\": \"image/jpeg\", \"name\": \"large_cao frente.jpg\", \"path\": null, \"size\": 58.93, \"width\": 666, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cao_frente_59b5ea03d4.jpg\", \"hash\": \"small_cao_frente_59b5ea03d4\", \"mime\": \"image/jpeg\", \"name\": \"small_cao frente.jpg\", \"path\": null, \"size\": 16.55, \"width\": 333, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cao_frente_59b5ea03d4.jpg\", \"hash\": \"medium_cao_frente_59b5ea03d4\", \"mime\": \"image/jpeg\", \"name\": \"medium_cao frente.jpg\", \"path\": null, \"size\": 33.98, \"width\": 500, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cao_frente_59b5ea03d4.jpg\", \"hash\": \"thumbnail_cao_frente_59b5ea03d4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cao frente.jpg\", \"path\": null, \"size\": 2.74, \"width\": 104, \"height\": 156}}', 'cao_frente_59b5ea03d4', '.jpg', 'image/jpeg', 73.98, '/uploads/cao_frente_59b5ea03d4.jpg', NULL, 'local', NULL, '/1', '2024-03-22 19:41:40.400000', '2024-03-22 19:41:40.400000', NULL, NULL),
(748, 'cao lateral 1.jpg', NULL, NULL, 2048, 1365, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cao_lateral_1_3b811f29d2.jpg\", \"hash\": \"large_cao_lateral_1_3b811f29d2\", \"mime\": \"image/jpeg\", \"name\": \"large_cao lateral 1.jpg\", \"path\": null, \"size\": 122.34, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cao_lateral_1_3b811f29d2.jpg\", \"hash\": \"small_cao_lateral_1_3b811f29d2\", \"mime\": \"image/jpeg\", \"name\": \"small_cao lateral 1.jpg\", \"path\": null, \"size\": 37.76, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cao_lateral_1_3b811f29d2.jpg\", \"hash\": \"medium_cao_lateral_1_3b811f29d2\", \"mime\": \"image/jpeg\", \"name\": \"medium_cao lateral 1.jpg\", \"path\": null, \"size\": 75.55, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cao_lateral_1_3b811f29d2.jpg\", \"hash\": \"thumbnail_cao_lateral_1_3b811f29d2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cao lateral 1.jpg\", \"path\": null, \"size\": 10.47, \"width\": 234, \"height\": 156}}', 'cao_lateral_1_3b811f29d2', '.jpg', 'image/jpeg', 393.15, '/uploads/cao_lateral_1_3b811f29d2.jpg', NULL, 'local', NULL, '/1', '2024-03-22 19:41:44.887000', '2024-03-22 19:41:44.887000', NULL, NULL),
(749, 'cao lateral 2.jpg', NULL, NULL, 1024, 682, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cao_lateral_2_882c460223.jpg\", \"hash\": \"large_cao_lateral_2_882c460223\", \"mime\": \"image/jpeg\", \"name\": \"large_cao lateral 2.jpg\", \"path\": null, \"size\": 33.17, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cao_lateral_2_882c460223.jpg\", \"hash\": \"small_cao_lateral_2_882c460223\", \"mime\": \"image/jpeg\", \"name\": \"small_cao lateral 2.jpg\", \"path\": null, \"size\": 11.87, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cao_lateral_2_882c460223.jpg\", \"hash\": \"medium_cao_lateral_2_882c460223\", \"mime\": \"image/jpeg\", \"name\": \"medium_cao lateral 2.jpg\", \"path\": null, \"size\": 21.77, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cao_lateral_2_882c460223.jpg\", \"hash\": \"thumbnail_cao_lateral_2_882c460223\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cao lateral 2.jpg\", \"path\": null, \"size\": 3.77, \"width\": 234, \"height\": 156}}', 'cao_lateral_2_882c460223', '.jpg', 'image/jpeg', 15.65, '/uploads/cao_lateral_2_882c460223.jpg', NULL, 'local', NULL, '/1', '2024-03-22 19:41:48.412000', '2024-03-22 19:41:48.412000', NULL, NULL),
(750, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_d1edc635ce.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_d1edc635ce\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_d1edc635ce', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_d1edc635ce.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:18:37.739000', '2024-03-26 17:18:37.739000', NULL, NULL),
(751, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_95824fc2ab.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_95824fc2ab\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_95824fc2ab', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_95824fc2ab.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:18:45.199000', '2024-03-26 17:18:45.199000', NULL, NULL),
(752, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_cec5e1791b.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_cec5e1791b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_cec5e1791b', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_cec5e1791b.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:18:51.863000', '2024-03-26 17:18:51.863000', NULL, NULL),
(753, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_e4c016136b.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_e4c016136b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_e4c016136b', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_e4c016136b.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:21:41.805000', '2024-03-26 17:21:41.805000', NULL, NULL),
(754, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_d4ff61672b.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_d4ff61672b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_d4ff61672b', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_d4ff61672b.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:21:48.577000', '2024-03-26 17:21:48.577000', NULL, NULL),
(755, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_e1b13e477c.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_e1b13e477c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_e1b13e477c', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_e1b13e477c.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:21:54.481000', '2024-03-26 17:21:54.481000', NULL, NULL),
(756, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_f50be5c5c4.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_f50be5c5c4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_f50be5c5c4', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_f50be5c5c4.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:24:03.186000', '2024-03-26 17:24:03.186000', NULL, NULL),
(757, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_dc5282a481.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_dc5282a481\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_dc5282a481', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_dc5282a481.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:24:07.457000', '2024-03-26 17:24:07.457000', NULL, NULL),
(758, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_d154e1ff0f.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_d154e1ff0f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_d154e1ff0f', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_d154e1ff0f.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:24:11.198000', '2024-03-26 17:24:11.198000', NULL, NULL),
(759, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_408108550c.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_408108550c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_408108550c', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_408108550c.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:27:05.730000', '2024-03-26 17:27:05.730000', NULL, NULL),
(760, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_bdf8a8c572.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_bdf8a8c572\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_bdf8a8c572', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_bdf8a8c572.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:27:09.298000', '2024-03-26 17:27:09.298000', NULL, NULL),
(761, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_990d5c0b50.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_990d5c0b50\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_990d5c0b50', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_990d5c0b50.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:27:13.323000', '2024-03-26 17:27:13.323000', NULL, NULL),
(762, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_4f785516ec.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_4f785516ec\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_4f785516ec', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_4f785516ec.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:30:35.371000', '2024-03-26 17:30:35.371000', NULL, NULL),
(763, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_7b17cc7941.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_7b17cc7941\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_7b17cc7941', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_7b17cc7941.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:31:53.307000', '2024-03-26 17:31:53.307000', NULL, NULL),
(764, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_1bbd93b61c.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_1bbd93b61c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_1bbd93b61c', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_1bbd93b61c.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:46:21.884000', '2024-03-26 17:46:21.884000', NULL, NULL),
(765, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_4ac287a863.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_4ac287a863\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_4ac287a863', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_4ac287a863.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:46:27.404000', '2024-03-26 17:46:27.404000', NULL, NULL),
(766, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_ea9021d5f9.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_ea9021d5f9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_ea9021d5f9', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_ea9021d5f9.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:46:31.336000', '2024-03-26 17:46:31.336000', NULL, NULL),
(767, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_3fab408380.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_3fab408380\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_3fab408380', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_3fab408380.jpg', NULL, 'local', NULL, '/1', '2024-03-26 17:56:40.449000', '2024-03-26 17:56:40.449000', NULL, NULL),
(768, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_9614492188.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_9614492188\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_9614492188', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_9614492188.jpg', NULL, 'local', NULL, '/1', '2024-03-26 18:49:21.164000', '2024-03-26 18:49:21.164000', NULL, NULL),
(769, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_9060fdb25c.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_9060fdb25c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_9060fdb25c', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_9060fdb25c.jpg', NULL, 'local', NULL, '/1', '2024-03-26 19:11:01.052000', '2024-03-26 19:11:01.052000', NULL, NULL),
(770, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_a2ce56e0bc.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_a2ce56e0bc\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_a2ce56e0bc', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_a2ce56e0bc.jpg', NULL, 'local', NULL, '/1', '2024-03-26 19:11:04.807000', '2024-03-26 19:11:04.807000', NULL, NULL),
(771, 'Raças-de-cachorros.jpg', NULL, NULL, 367, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Racas_de_cachorros_bbc5f13f2a.jpg\", \"hash\": \"thumbnail_Racas_de_cachorros_bbc5f13f2a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Raças-de-cachorros.jpg\", \"path\": null, \"size\": 3.45, \"width\": 114, \"height\": 156}}', 'Racas_de_cachorros_bbc5f13f2a', '.jpg', 'image/jpeg', 20.14, '/uploads/Racas_de_cachorros_bbc5f13f2a.jpg', NULL, 'local', NULL, '/1', '2024-03-26 19:11:10.362000', '2024-03-26 19:11:10.362000', NULL, NULL),
(772, 'dog.jpg', NULL, NULL, 2187, 1458, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_dog_b002b30d3c.jpg\", \"hash\": \"large_dog_b002b30d3c\", \"mime\": \"image/jpeg\", \"name\": \"large_dog.jpg\", \"path\": null, \"size\": 111.35, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_dog_b002b30d3c.jpg\", \"hash\": \"small_dog_b002b30d3c\", \"mime\": \"image/jpeg\", \"name\": \"small_dog.jpg\", \"path\": null, \"size\": 35.62, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_dog_b002b30d3c.jpg\", \"hash\": \"medium_dog_b002b30d3c\", \"mime\": \"image/jpeg\", \"name\": \"medium_dog.jpg\", \"path\": null, \"size\": 69.33, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_dog_b002b30d3c.jpg\", \"hash\": \"thumbnail_dog_b002b30d3c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_dog.jpg\", \"path\": null, \"size\": 10.25, \"width\": 234, \"height\": 156}}', 'dog_b002b30d3c', '.jpg', 'image/jpeg', 331.05, '/uploads/dog_b002b30d3c.jpg', NULL, 'local', NULL, '/1', '2024-03-27 17:55:55.409000', '2024-03-27 17:55:55.409000', NULL, NULL),
(773, 'dog.jpg', NULL, NULL, 2187, 1458, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_dog_25ca08893e.jpg\", \"hash\": \"large_dog_25ca08893e\", \"mime\": \"image/jpeg\", \"name\": \"large_dog.jpg\", \"path\": null, \"size\": 111.35, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_dog_25ca08893e.jpg\", \"hash\": \"small_dog_25ca08893e\", \"mime\": \"image/jpeg\", \"name\": \"small_dog.jpg\", \"path\": null, \"size\": 35.62, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_dog_25ca08893e.jpg\", \"hash\": \"medium_dog_25ca08893e\", \"mime\": \"image/jpeg\", \"name\": \"medium_dog.jpg\", \"path\": null, \"size\": 69.33, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_dog_25ca08893e.jpg\", \"hash\": \"thumbnail_dog_25ca08893e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_dog.jpg\", \"path\": null, \"size\": 10.25, \"width\": 234, \"height\": 156}}', 'dog_25ca08893e', '.jpg', 'image/jpeg', 331.05, '/uploads/dog_25ca08893e.jpg', NULL, 'local', NULL, '/1', '2024-03-27 17:55:59.076000', '2024-03-27 17:55:59.076000', NULL, NULL),
(774, 'dog.jpg', NULL, NULL, 2187, 1458, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_dog_703eeca230.jpg\", \"hash\": \"large_dog_703eeca230\", \"mime\": \"image/jpeg\", \"name\": \"large_dog.jpg\", \"path\": null, \"size\": 111.35, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_dog_703eeca230.jpg\", \"hash\": \"small_dog_703eeca230\", \"mime\": \"image/jpeg\", \"name\": \"small_dog.jpg\", \"path\": null, \"size\": 35.62, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_dog_703eeca230.jpg\", \"hash\": \"medium_dog_703eeca230\", \"mime\": \"image/jpeg\", \"name\": \"medium_dog.jpg\", \"path\": null, \"size\": 69.33, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_dog_703eeca230.jpg\", \"hash\": \"thumbnail_dog_703eeca230\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_dog.jpg\", \"path\": null, \"size\": 10.25, \"width\": 234, \"height\": 156}}', 'dog_703eeca230', '.jpg', 'image/jpeg', 331.05, '/uploads/dog_703eeca230.jpg', NULL, 'local', NULL, '/1', '2024-03-27 17:56:03.240000', '2024-03-27 17:56:03.240000', NULL, NULL),
(775, 'dog.jpg', NULL, NULL, 2187, 1458, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_dog_a2cc97a7fe.jpg\", \"hash\": \"large_dog_a2cc97a7fe\", \"mime\": \"image/jpeg\", \"name\": \"large_dog.jpg\", \"path\": null, \"size\": 111.35, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_dog_a2cc97a7fe.jpg\", \"hash\": \"small_dog_a2cc97a7fe\", \"mime\": \"image/jpeg\", \"name\": \"small_dog.jpg\", \"path\": null, \"size\": 35.62, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_dog_a2cc97a7fe.jpg\", \"hash\": \"medium_dog_a2cc97a7fe\", \"mime\": \"image/jpeg\", \"name\": \"medium_dog.jpg\", \"path\": null, \"size\": 69.33, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_dog_a2cc97a7fe.jpg\", \"hash\": \"thumbnail_dog_a2cc97a7fe\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_dog.jpg\", \"path\": null, \"size\": 10.25, \"width\": 234, \"height\": 156}}', 'dog_a2cc97a7fe', '.jpg', 'image/jpeg', 331.05, '/uploads/dog_a2cc97a7fe.jpg', NULL, 'local', NULL, '/1', '2024-03-27 17:56:16.743000', '2024-03-27 17:56:16.743000', NULL, NULL),
(776, 'dog.jpg', NULL, NULL, 2187, 1458, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_dog_c556e76b06.jpg\", \"hash\": \"large_dog_c556e76b06\", \"mime\": \"image/jpeg\", \"name\": \"large_dog.jpg\", \"path\": null, \"size\": 111.35, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_dog_c556e76b06.jpg\", \"hash\": \"small_dog_c556e76b06\", \"mime\": \"image/jpeg\", \"name\": \"small_dog.jpg\", \"path\": null, \"size\": 35.62, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_dog_c556e76b06.jpg\", \"hash\": \"medium_dog_c556e76b06\", \"mime\": \"image/jpeg\", \"name\": \"medium_dog.jpg\", \"path\": null, \"size\": 69.33, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_dog_c556e76b06.jpg\", \"hash\": \"thumbnail_dog_c556e76b06\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_dog.jpg\", \"path\": null, \"size\": 10.25, \"width\": 234, \"height\": 156}}', 'dog_c556e76b06', '.jpg', 'image/jpeg', 331.05, '/uploads/dog_c556e76b06.jpg', NULL, 'local', NULL, '/1', '2024-03-28 01:06:49.030000', '2024-03-28 01:06:49.030000', NULL, NULL),
(777, 'dog.jpg', NULL, NULL, 2187, 1458, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_dog_88e9e9c0ab.jpg\", \"hash\": \"large_dog_88e9e9c0ab\", \"mime\": \"image/jpeg\", \"name\": \"large_dog.jpg\", \"path\": null, \"size\": 111.35, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_dog_88e9e9c0ab.jpg\", \"hash\": \"small_dog_88e9e9c0ab\", \"mime\": \"image/jpeg\", \"name\": \"small_dog.jpg\", \"path\": null, \"size\": 35.62, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_dog_88e9e9c0ab.jpg\", \"hash\": \"medium_dog_88e9e9c0ab\", \"mime\": \"image/jpeg\", \"name\": \"medium_dog.jpg\", \"path\": null, \"size\": 69.33, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_dog_88e9e9c0ab.jpg\", \"hash\": \"thumbnail_dog_88e9e9c0ab\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_dog.jpg\", \"path\": null, \"size\": 10.25, \"width\": 234, \"height\": 156}}', 'dog_88e9e9c0ab', '.jpg', 'image/jpeg', 331.05, '/uploads/dog_88e9e9c0ab.jpg', NULL, 'local', NULL, '/1', '2024-03-28 01:06:56.722000', '2024-03-28 01:06:56.722000', NULL, NULL),
(778, 'dog.jpg', NULL, NULL, 2187, 1458, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_dog_de0a9a346e.jpg\", \"hash\": \"large_dog_de0a9a346e\", \"mime\": \"image/jpeg\", \"name\": \"large_dog.jpg\", \"path\": null, \"size\": 111.35, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_dog_de0a9a346e.jpg\", \"hash\": \"small_dog_de0a9a346e\", \"mime\": \"image/jpeg\", \"name\": \"small_dog.jpg\", \"path\": null, \"size\": 35.62, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_dog_de0a9a346e.jpg\", \"hash\": \"medium_dog_de0a9a346e\", \"mime\": \"image/jpeg\", \"name\": \"medium_dog.jpg\", \"path\": null, \"size\": 69.33, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_dog_de0a9a346e.jpg\", \"hash\": \"thumbnail_dog_de0a9a346e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_dog.jpg\", \"path\": null, \"size\": 10.25, \"width\": 234, \"height\": 156}}', 'dog_de0a9a346e', '.jpg', 'image/jpeg', 331.05, '/uploads/dog_de0a9a346e.jpg', NULL, 'local', NULL, '/1', '2024-03-28 01:10:08.986000', '2024-03-28 01:10:08.986000', NULL, NULL),
(779, 'dog.jpg', NULL, NULL, 2187, 1458, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_dog_6d1d629ff7.jpg\", \"hash\": \"large_dog_6d1d629ff7\", \"mime\": \"image/jpeg\", \"name\": \"large_dog.jpg\", \"path\": null, \"size\": 111.35, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_dog_6d1d629ff7.jpg\", \"hash\": \"small_dog_6d1d629ff7\", \"mime\": \"image/jpeg\", \"name\": \"small_dog.jpg\", \"path\": null, \"size\": 35.62, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_dog_6d1d629ff7.jpg\", \"hash\": \"medium_dog_6d1d629ff7\", \"mime\": \"image/jpeg\", \"name\": \"medium_dog.jpg\", \"path\": null, \"size\": 69.33, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_dog_6d1d629ff7.jpg\", \"hash\": \"thumbnail_dog_6d1d629ff7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_dog.jpg\", \"path\": null, \"size\": 10.25, \"width\": 234, \"height\": 156}}', 'dog_6d1d629ff7', '.jpg', 'image/jpeg', 331.05, '/uploads/dog_6d1d629ff7.jpg', NULL, 'local', NULL, '/1', '2024-03-28 01:10:14.508000', '2024-03-28 01:10:14.508000', NULL, NULL),
(780, 'dog.jpg', NULL, NULL, 2187, 1458, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_dog_8229124a9a.jpg\", \"hash\": \"large_dog_8229124a9a\", \"mime\": \"image/jpeg\", \"name\": \"large_dog.jpg\", \"path\": null, \"size\": 111.35, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_dog_8229124a9a.jpg\", \"hash\": \"small_dog_8229124a9a\", \"mime\": \"image/jpeg\", \"name\": \"small_dog.jpg\", \"path\": null, \"size\": 35.62, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_dog_8229124a9a.jpg\", \"hash\": \"medium_dog_8229124a9a\", \"mime\": \"image/jpeg\", \"name\": \"medium_dog.jpg\", \"path\": null, \"size\": 69.33, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_dog_8229124a9a.jpg\", \"hash\": \"thumbnail_dog_8229124a9a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_dog.jpg\", \"path\": null, \"size\": 10.25, \"width\": 234, \"height\": 156}}', 'dog_8229124a9a', '.jpg', 'image/jpeg', 331.05, '/uploads/dog_8229124a9a.jpg', NULL, 'local', NULL, '/1', '2024-03-28 01:11:40.999000', '2024-03-28 01:11:40.999000', NULL, NULL),
(781, 'dog.jpg', NULL, NULL, 2187, 1458, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_dog_be6806f119.jpg\", \"hash\": \"large_dog_be6806f119\", \"mime\": \"image/jpeg\", \"name\": \"large_dog.jpg\", \"path\": null, \"size\": 111.35, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_dog_be6806f119.jpg\", \"hash\": \"small_dog_be6806f119\", \"mime\": \"image/jpeg\", \"name\": \"small_dog.jpg\", \"path\": null, \"size\": 35.62, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_dog_be6806f119.jpg\", \"hash\": \"medium_dog_be6806f119\", \"mime\": \"image/jpeg\", \"name\": \"medium_dog.jpg\", \"path\": null, \"size\": 69.33, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_dog_be6806f119.jpg\", \"hash\": \"thumbnail_dog_be6806f119\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_dog.jpg\", \"path\": null, \"size\": 10.25, \"width\": 234, \"height\": 156}}', 'dog_be6806f119', '.jpg', 'image/jpeg', 331.05, '/uploads/dog_be6806f119.jpg', NULL, 'local', NULL, '/1', '2024-03-28 01:11:59.282000', '2024-03-28 01:11:59.282000', NULL, NULL),
(782, 'dog.jpg', NULL, NULL, 2187, 1458, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_dog_ad14d94798.jpg\", \"hash\": \"large_dog_ad14d94798\", \"mime\": \"image/jpeg\", \"name\": \"large_dog.jpg\", \"path\": null, \"size\": 111.35, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_dog_ad14d94798.jpg\", \"hash\": \"small_dog_ad14d94798\", \"mime\": \"image/jpeg\", \"name\": \"small_dog.jpg\", \"path\": null, \"size\": 35.62, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_dog_ad14d94798.jpg\", \"hash\": \"medium_dog_ad14d94798\", \"mime\": \"image/jpeg\", \"name\": \"medium_dog.jpg\", \"path\": null, \"size\": 69.33, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_dog_ad14d94798.jpg\", \"hash\": \"thumbnail_dog_ad14d94798\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_dog.jpg\", \"path\": null, \"size\": 10.25, \"width\": 234, \"height\": 156}}', 'dog_ad14d94798', '.jpg', 'image/jpeg', 331.05, '/uploads/dog_ad14d94798.jpg', NULL, 'local', NULL, '/1', '2024-03-28 01:12:09.518000', '2024-03-28 01:12:09.518000', NULL, NULL),
(784, 'download.jpg', NULL, NULL, 183, 275, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_download_ad205d31d6.jpg\", \"hash\": \"thumbnail_download_ad205d31d6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download.jpg\", \"path\": null, \"size\": 2.95, \"width\": 104, \"height\": 156}}', 'download_ad205d31d6', '.jpg', 'image/jpeg', 4.53, '/uploads/download_ad205d31d6.jpg', NULL, 'local', NULL, '/1', '2024-03-28 11:57:50.169000', '2024-03-28 11:57:50.169000', NULL, NULL),
(785, 'download.jpg', NULL, NULL, 183, 275, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_download_07122fface.jpg\", \"hash\": \"thumbnail_download_07122fface\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download.jpg\", \"path\": null, \"size\": 2.95, \"width\": 104, \"height\": 156}}', 'download_07122fface', '.jpg', 'image/jpeg', 4.53, '/uploads/download_07122fface.jpg', NULL, 'local', NULL, '/1', '2024-03-28 11:57:57.196000', '2024-03-28 11:57:57.196000', NULL, NULL),
(792, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_083cbd605a.jpeg\", \"hash\": \"thumbnail_Antirrabica_083cbd605a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_083cbd605a', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_083cbd605a.jpeg', NULL, 'local', NULL, '/1', '2024-04-17 18:25:45.158000', '2024-04-17 18:25:45.158000', 1, 1),
(793, 'cachorro1.jpg', NULL, NULL, 3086, 2066, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cachorro1_2edbf1b9c4.jpg\", \"hash\": \"large_cachorro1_2edbf1b9c4\", \"mime\": \"image/jpeg\", \"name\": \"large_cachorro1.jpg\", \"path\": null, \"size\": 67.47, \"width\": 1000, \"height\": 669}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro1_2edbf1b9c4.jpg\", \"hash\": \"small_cachorro1_2edbf1b9c4\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro1.jpg\", \"path\": null, \"size\": 20.68, \"width\": 500, \"height\": 335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro1_2edbf1b9c4.jpg\", \"hash\": \"medium_cachorro1_2edbf1b9c4\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro1.jpg\", \"path\": null, \"size\": 40.88, \"width\": 750, \"height\": 502}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro1_2edbf1b9c4.jpg\", \"hash\": \"thumbnail_cachorro1_2edbf1b9c4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro1.jpg\", \"path\": null, \"size\": 6.31, \"width\": 233, \"height\": 156}}', 'cachorro1_2edbf1b9c4', '.jpg', 'image/jpeg', 494.61, '/uploads/cachorro1_2edbf1b9c4.jpg', NULL, 'local', NULL, '/1', '2024-04-17 18:59:29.695000', '2024-04-17 18:59:29.695000', NULL, NULL),
(794, 'cachorro1.jpg', NULL, NULL, 3086, 2066, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cachorro1_9b775fe486.jpg\", \"hash\": \"large_cachorro1_9b775fe486\", \"mime\": \"image/jpeg\", \"name\": \"large_cachorro1.jpg\", \"path\": null, \"size\": 67.47, \"width\": 1000, \"height\": 669}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro1_9b775fe486.jpg\", \"hash\": \"small_cachorro1_9b775fe486\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro1.jpg\", \"path\": null, \"size\": 20.68, \"width\": 500, \"height\": 335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro1_9b775fe486.jpg\", \"hash\": \"medium_cachorro1_9b775fe486\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro1.jpg\", \"path\": null, \"size\": 40.88, \"width\": 750, \"height\": 502}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro1_9b775fe486.jpg\", \"hash\": \"thumbnail_cachorro1_9b775fe486\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro1.jpg\", \"path\": null, \"size\": 6.31, \"width\": 233, \"height\": 156}}', 'cachorro1_9b775fe486', '.jpg', 'image/jpeg', 494.61, '/uploads/cachorro1_9b775fe486.jpg', NULL, 'local', NULL, '/1', '2024-04-17 19:02:38.598000', '2024-04-17 19:02:38.598000', NULL, NULL),
(795, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_f014f1bec2.jpeg\", \"hash\": \"thumbnail_Antirrabica_f014f1bec2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_f014f1bec2', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_f014f1bec2.jpeg', NULL, 'local', NULL, '/1', '2024-04-17 19:26:16.101000', '2024-04-17 19:26:16.101000', NULL, NULL),
(796, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_68f44cfc3e.jpeg\", \"hash\": \"thumbnail_Antirrabica_68f44cfc3e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_68f44cfc3e', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_68f44cfc3e.jpeg', NULL, 'local', NULL, '/1', '2024-04-17 19:29:45.984000', '2024-04-17 19:29:45.984000', NULL, NULL),
(797, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_20947981f6.jpeg\", \"hash\": \"thumbnail_Antirrabica_20947981f6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_20947981f6', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_20947981f6.jpeg', NULL, 'local', NULL, '/1', '2024-04-17 19:31:22.614000', '2024-04-17 19:31:22.614000', NULL, NULL),
(798, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_31034222e0.jpeg\", \"hash\": \"thumbnail_Antirrabica_31034222e0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_31034222e0', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_31034222e0.jpeg', NULL, 'local', NULL, '/1', '2024-04-17 19:33:07.460000', '2024-04-17 19:33:07.460000', NULL, NULL),
(799, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_46426c40b7.jpeg\", \"hash\": \"thumbnail_Antirrabica_46426c40b7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_46426c40b7', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_46426c40b7.jpeg', NULL, 'local', NULL, '/1', '2024-04-17 19:33:25.010000', '2024-04-17 19:33:25.010000', NULL, NULL);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(800, 'cachorro1.jpg', NULL, NULL, 3086, 2066, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cachorro1_9dcb08aa03.jpg\", \"hash\": \"large_cachorro1_9dcb08aa03\", \"mime\": \"image/jpeg\", \"name\": \"large_cachorro1.jpg\", \"path\": null, \"size\": 67.47, \"width\": 1000, \"height\": 669}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro1_9dcb08aa03.jpg\", \"hash\": \"small_cachorro1_9dcb08aa03\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro1.jpg\", \"path\": null, \"size\": 20.68, \"width\": 500, \"height\": 335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro1_9dcb08aa03.jpg\", \"hash\": \"medium_cachorro1_9dcb08aa03\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro1.jpg\", \"path\": null, \"size\": 40.88, \"width\": 750, \"height\": 502}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro1_9dcb08aa03.jpg\", \"hash\": \"thumbnail_cachorro1_9dcb08aa03\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro1.jpg\", \"path\": null, \"size\": 6.31, \"width\": 233, \"height\": 156}}', 'cachorro1_9dcb08aa03', '.jpg', 'image/jpeg', 494.61, '/uploads/cachorro1_9dcb08aa03.jpg', NULL, 'local', NULL, '/1', '2024-04-17 19:33:25.196000', '2024-04-17 19:33:25.196000', NULL, NULL),
(801, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_a2f356984f.jpeg\", \"hash\": \"thumbnail_Antirrabica_a2f356984f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_a2f356984f', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_a2f356984f.jpeg', NULL, 'local', NULL, '/1', '2024-04-17 19:34:31.013000', '2024-04-17 19:34:31.013000', NULL, NULL),
(802, 'cachorro1.jpg', NULL, NULL, 3086, 2066, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cachorro1_b348f9eb56.jpg\", \"hash\": \"large_cachorro1_b348f9eb56\", \"mime\": \"image/jpeg\", \"name\": \"large_cachorro1.jpg\", \"path\": null, \"size\": 67.47, \"width\": 1000, \"height\": 669}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro1_b348f9eb56.jpg\", \"hash\": \"small_cachorro1_b348f9eb56\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro1.jpg\", \"path\": null, \"size\": 20.68, \"width\": 500, \"height\": 335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro1_b348f9eb56.jpg\", \"hash\": \"medium_cachorro1_b348f9eb56\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro1.jpg\", \"path\": null, \"size\": 40.88, \"width\": 750, \"height\": 502}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro1_b348f9eb56.jpg\", \"hash\": \"thumbnail_cachorro1_b348f9eb56\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro1.jpg\", \"path\": null, \"size\": 6.31, \"width\": 233, \"height\": 156}}', 'cachorro1_b348f9eb56', '.jpg', 'image/jpeg', 494.61, '/uploads/cachorro1_b348f9eb56.jpg', NULL, 'local', NULL, '/1', '2024-04-17 19:34:31.232000', '2024-04-17 19:34:31.232000', NULL, NULL),
(803, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_52f71f7d5a.jpeg\", \"hash\": \"thumbnail_Antirrabica_52f71f7d5a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_52f71f7d5a', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_52f71f7d5a.jpeg', NULL, 'local', NULL, '/1', '2024-04-17 19:34:39.036000', '2024-04-17 19:34:39.036000', NULL, NULL),
(804, 'cachorro1.jpg', NULL, NULL, 3086, 2066, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cachorro1_8c7bf9400c.jpg\", \"hash\": \"large_cachorro1_8c7bf9400c\", \"mime\": \"image/jpeg\", \"name\": \"large_cachorro1.jpg\", \"path\": null, \"size\": 67.47, \"width\": 1000, \"height\": 669}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro1_8c7bf9400c.jpg\", \"hash\": \"small_cachorro1_8c7bf9400c\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro1.jpg\", \"path\": null, \"size\": 20.68, \"width\": 500, \"height\": 335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro1_8c7bf9400c.jpg\", \"hash\": \"medium_cachorro1_8c7bf9400c\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro1.jpg\", \"path\": null, \"size\": 40.88, \"width\": 750, \"height\": 502}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro1_8c7bf9400c.jpg\", \"hash\": \"thumbnail_cachorro1_8c7bf9400c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro1.jpg\", \"path\": null, \"size\": 6.31, \"width\": 233, \"height\": 156}}', 'cachorro1_8c7bf9400c', '.jpg', 'image/jpeg', 494.61, '/uploads/cachorro1_8c7bf9400c.jpg', NULL, 'local', NULL, '/1', '2024-04-17 19:34:39.220000', '2024-04-17 19:34:39.220000', NULL, NULL),
(805, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_aed4131600.jpeg\", \"hash\": \"thumbnail_Antirrabica_aed4131600\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_aed4131600', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_aed4131600.jpeg', NULL, 'local', NULL, '/1', '2024-04-17 19:34:46.214000', '2024-04-17 19:34:46.214000', NULL, NULL),
(806, 'cachorro1.jpg', NULL, NULL, 3086, 2066, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cachorro1_3e0ce4390d.jpg\", \"hash\": \"large_cachorro1_3e0ce4390d\", \"mime\": \"image/jpeg\", \"name\": \"large_cachorro1.jpg\", \"path\": null, \"size\": 67.47, \"width\": 1000, \"height\": 669}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro1_3e0ce4390d.jpg\", \"hash\": \"small_cachorro1_3e0ce4390d\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro1.jpg\", \"path\": null, \"size\": 20.68, \"width\": 500, \"height\": 335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro1_3e0ce4390d.jpg\", \"hash\": \"medium_cachorro1_3e0ce4390d\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro1.jpg\", \"path\": null, \"size\": 40.88, \"width\": 750, \"height\": 502}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro1_3e0ce4390d.jpg\", \"hash\": \"thumbnail_cachorro1_3e0ce4390d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro1.jpg\", \"path\": null, \"size\": 6.31, \"width\": 233, \"height\": 156}}', 'cachorro1_3e0ce4390d', '.jpg', 'image/jpeg', 494.61, '/uploads/cachorro1_3e0ce4390d.jpg', NULL, 'local', NULL, '/1', '2024-04-17 19:34:46.409000', '2024-04-17 19:34:46.409000', NULL, NULL),
(807, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_80b26e4279.jpeg\", \"hash\": \"thumbnail_Antirrabica_80b26e4279\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_80b26e4279', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_80b26e4279.jpeg', NULL, 'local', NULL, '/1', '2024-04-17 19:36:17.444000', '2024-04-17 19:36:17.444000', NULL, NULL),
(808, 'cachorro1.jpg', NULL, NULL, 3086, 2066, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cachorro1_3f1923f3f6.jpg\", \"hash\": \"large_cachorro1_3f1923f3f6\", \"mime\": \"image/jpeg\", \"name\": \"large_cachorro1.jpg\", \"path\": null, \"size\": 67.47, \"width\": 1000, \"height\": 669}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro1_3f1923f3f6.jpg\", \"hash\": \"small_cachorro1_3f1923f3f6\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro1.jpg\", \"path\": null, \"size\": 20.68, \"width\": 500, \"height\": 335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro1_3f1923f3f6.jpg\", \"hash\": \"medium_cachorro1_3f1923f3f6\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro1.jpg\", \"path\": null, \"size\": 40.88, \"width\": 750, \"height\": 502}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro1_3f1923f3f6.jpg\", \"hash\": \"thumbnail_cachorro1_3f1923f3f6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro1.jpg\", \"path\": null, \"size\": 6.31, \"width\": 233, \"height\": 156}}', 'cachorro1_3f1923f3f6', '.jpg', 'image/jpeg', 494.61, '/uploads/cachorro1_3f1923f3f6.jpg', NULL, 'local', NULL, '/1', '2024-04-17 19:36:17.651000', '2024-04-17 19:36:17.651000', NULL, NULL),
(809, 'cachorro2.jpg', NULL, NULL, 335, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro2_de474bb094.jpg\", \"hash\": \"thumbnail_cachorro2_de474bb094\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro2.jpg\", \"path\": null, \"size\": 4.11, \"width\": 104, \"height\": 156}}', 'cachorro2_de474bb094', '.jpg', 'image/jpeg', 24.94, '/uploads/cachorro2_de474bb094.jpg', NULL, 'local', NULL, '/1', '2024-04-17 19:37:58.373000', '2024-04-17 19:37:58.373000', NULL, NULL),
(810, 'cachorro2.jpg', NULL, NULL, 335, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro2_ac1f1cb0e9.jpg\", \"hash\": \"thumbnail_cachorro2_ac1f1cb0e9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro2.jpg\", \"path\": null, \"size\": 4.11, \"width\": 104, \"height\": 156}}', 'cachorro2_ac1f1cb0e9', '.jpg', 'image/jpeg', 24.94, '/uploads/cachorro2_ac1f1cb0e9.jpg', NULL, 'local', NULL, '/1', '2024-04-17 19:40:17.580000', '2024-04-17 19:40:17.580000', NULL, NULL),
(811, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_17f7ac100c.jpeg\", \"hash\": \"thumbnail_Antirrabica_17f7ac100c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_17f7ac100c', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_17f7ac100c.jpeg', NULL, 'local', NULL, '/1', '2024-04-17 19:42:29.006000', '2024-04-17 19:42:29.006000', NULL, NULL),
(812, 'cachorro1.jpg', NULL, NULL, 3086, 2066, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cachorro1_7d31d5b523.jpg\", \"hash\": \"large_cachorro1_7d31d5b523\", \"mime\": \"image/jpeg\", \"name\": \"large_cachorro1.jpg\", \"path\": null, \"size\": 67.47, \"width\": 1000, \"height\": 669}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro1_7d31d5b523.jpg\", \"hash\": \"small_cachorro1_7d31d5b523\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro1.jpg\", \"path\": null, \"size\": 20.68, \"width\": 500, \"height\": 335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro1_7d31d5b523.jpg\", \"hash\": \"medium_cachorro1_7d31d5b523\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro1.jpg\", \"path\": null, \"size\": 40.88, \"width\": 750, \"height\": 502}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro1_7d31d5b523.jpg\", \"hash\": \"thumbnail_cachorro1_7d31d5b523\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro1.jpg\", \"path\": null, \"size\": 6.31, \"width\": 233, \"height\": 156}}', 'cachorro1_7d31d5b523', '.jpg', 'image/jpeg', 494.61, '/uploads/cachorro1_7d31d5b523.jpg', NULL, 'local', NULL, '/1', '2024-04-17 19:43:45.800000', '2024-04-17 19:43:45.800000', NULL, NULL),
(813, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_7a51168b32.jpeg\", \"hash\": \"thumbnail_Antirrabica_7a51168b32\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_7a51168b32', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_7a51168b32.jpeg', NULL, 'local', NULL, '/1', '2024-04-17 20:53:39.333000', '2024-04-17 20:53:39.333000', NULL, NULL),
(814, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_31af8cea32.jpeg\", \"hash\": \"thumbnail_Antirrabica_31af8cea32\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_31af8cea32', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_31af8cea32.jpeg', NULL, 'local', NULL, '/1', '2024-04-17 21:12:56.664000', '2024-04-17 21:12:56.664000', NULL, NULL),
(815, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_412ddd6b8f.jpeg\", \"hash\": \"thumbnail_Antirrabica_412ddd6b8f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_412ddd6b8f', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_412ddd6b8f.jpeg', NULL, 'local', NULL, '/1', '2024-04-18 16:48:53.550000', '2024-04-18 16:48:53.550000', NULL, NULL),
(816, 'Antirrábica.jpeg', NULL, NULL, 474, 474, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_Antirrabica_9c7a4eb7d0.jpeg\", \"hash\": \"thumbnail_Antirrabica_9c7a4eb7d0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Antirrábica.jpeg\", \"path\": null, \"size\": 4.93, \"width\": 156, \"height\": 156}}', 'Antirrabica_9c7a4eb7d0', '.jpeg', 'image/jpeg', 24.80, '/uploads/Antirrabica_9c7a4eb7d0.jpeg', NULL, 'local', NULL, '/1', '2024-04-19 16:27:55.396000', '2024-04-19 16:27:55.396000', NULL, NULL),
(823, 'vacina_contra_covid_19.jpeg', NULL, NULL, 1280, 853, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_vacina_contra_covid_19_f2124e3243.jpeg\", \"hash\": \"large_vacina_contra_covid_19_f2124e3243\", \"mime\": \"image/jpeg\", \"name\": \"large_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 38.45, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_vacina_contra_covid_19_f2124e3243.jpeg\", \"hash\": \"small_vacina_contra_covid_19_f2124e3243\", \"mime\": \"image/jpeg\", \"name\": \"small_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 11.81, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_vacina_contra_covid_19_f2124e3243.jpeg\", \"hash\": \"medium_vacina_contra_covid_19_f2124e3243\", \"mime\": \"image/jpeg\", \"name\": \"medium_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 23.05, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_vacina_contra_covid_19_f2124e3243.jpeg\", \"hash\": \"thumbnail_vacina_contra_covid_19_f2124e3243\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 3.66, \"width\": 234, \"height\": 156}}', 'vacina_contra_covid_19_f2124e3243', '.jpeg', 'image/jpeg', 60.39, '/uploads/vacina_contra_covid_19_f2124e3243.jpeg', NULL, 'local', NULL, '/1', '2024-04-29 16:26:56.144000', '2024-04-29 16:26:56.144000', NULL, NULL),
(824, 'vacina_contra_covid_19.jpeg', NULL, NULL, 1280, 853, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_vacina_contra_covid_19_1ead5eeba2.jpeg\", \"hash\": \"large_vacina_contra_covid_19_1ead5eeba2\", \"mime\": \"image/jpeg\", \"name\": \"large_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 38.45, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_vacina_contra_covid_19_1ead5eeba2.jpeg\", \"hash\": \"small_vacina_contra_covid_19_1ead5eeba2\", \"mime\": \"image/jpeg\", \"name\": \"small_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 11.81, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_vacina_contra_covid_19_1ead5eeba2.jpeg\", \"hash\": \"medium_vacina_contra_covid_19_1ead5eeba2\", \"mime\": \"image/jpeg\", \"name\": \"medium_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 23.05, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_vacina_contra_covid_19_1ead5eeba2.jpeg\", \"hash\": \"thumbnail_vacina_contra_covid_19_1ead5eeba2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 3.66, \"width\": 234, \"height\": 156}}', 'vacina_contra_covid_19_1ead5eeba2', '.jpeg', 'image/jpeg', 60.39, '/uploads/vacina_contra_covid_19_1ead5eeba2.jpeg', NULL, 'local', NULL, '/1', '2024-04-29 16:53:29.438000', '2024-04-29 16:53:29.438000', NULL, NULL),
(825, 'vacina_contra_covid_19.jpeg', NULL, NULL, 1280, 853, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_vacina_contra_covid_19_db372c987c.jpeg\", \"hash\": \"large_vacina_contra_covid_19_db372c987c\", \"mime\": \"image/jpeg\", \"name\": \"large_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 38.45, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_vacina_contra_covid_19_db372c987c.jpeg\", \"hash\": \"small_vacina_contra_covid_19_db372c987c\", \"mime\": \"image/jpeg\", \"name\": \"small_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 11.81, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_vacina_contra_covid_19_db372c987c.jpeg\", \"hash\": \"medium_vacina_contra_covid_19_db372c987c\", \"mime\": \"image/jpeg\", \"name\": \"medium_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 23.05, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_vacina_contra_covid_19_db372c987c.jpeg\", \"hash\": \"thumbnail_vacina_contra_covid_19_db372c987c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 3.66, \"width\": 234, \"height\": 156}}', 'vacina_contra_covid_19_db372c987c', '.jpeg', 'image/jpeg', 60.39, '/uploads/vacina_contra_covid_19_db372c987c.jpeg', NULL, 'local', NULL, '/1', '2024-04-29 20:21:49.032000', '2024-04-29 20:21:49.032000', NULL, NULL),
(826, 'vacina_contra_covid_19.jpeg', NULL, NULL, 1280, 853, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_vacina_contra_covid_19_4fd862cc11.jpeg\", \"hash\": \"large_vacina_contra_covid_19_4fd862cc11\", \"mime\": \"image/jpeg\", \"name\": \"large_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 38.45, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_vacina_contra_covid_19_4fd862cc11.jpeg\", \"hash\": \"small_vacina_contra_covid_19_4fd862cc11\", \"mime\": \"image/jpeg\", \"name\": \"small_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 11.81, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_vacina_contra_covid_19_4fd862cc11.jpeg\", \"hash\": \"medium_vacina_contra_covid_19_4fd862cc11\", \"mime\": \"image/jpeg\", \"name\": \"medium_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 23.05, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_vacina_contra_covid_19_4fd862cc11.jpeg\", \"hash\": \"thumbnail_vacina_contra_covid_19_4fd862cc11\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 3.66, \"width\": 234, \"height\": 156}}', 'vacina_contra_covid_19_4fd862cc11', '.jpeg', 'image/jpeg', 60.39, '/uploads/vacina_contra_covid_19_4fd862cc11.jpeg', NULL, 'local', NULL, '/1', '2024-04-29 20:23:12.240000', '2024-04-29 20:23:12.240000', NULL, NULL),
(827, 'cachorro1.jpg', NULL, NULL, 3086, 2066, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cachorro1_177164ac94.jpg\", \"hash\": \"large_cachorro1_177164ac94\", \"mime\": \"image/jpeg\", \"name\": \"large_cachorro1.jpg\", \"path\": null, \"size\": 67.47, \"width\": 1000, \"height\": 669}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro1_177164ac94.jpg\", \"hash\": \"small_cachorro1_177164ac94\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro1.jpg\", \"path\": null, \"size\": 20.68, \"width\": 500, \"height\": 335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro1_177164ac94.jpg\", \"hash\": \"medium_cachorro1_177164ac94\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro1.jpg\", \"path\": null, \"size\": 40.88, \"width\": 750, \"height\": 502}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro1_177164ac94.jpg\", \"hash\": \"thumbnail_cachorro1_177164ac94\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro1.jpg\", \"path\": null, \"size\": 6.31, \"width\": 233, \"height\": 156}}', 'cachorro1_177164ac94', '.jpg', 'image/jpeg', 494.61, '/uploads/cachorro1_177164ac94.jpg', NULL, 'local', NULL, '/1', '2024-04-30 15:30:10.068000', '2024-04-30 15:30:10.068000', NULL, NULL),
(828, 'cachorro2.jpg', NULL, NULL, 335, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro2_8c859696f4.jpg\", \"hash\": \"thumbnail_cachorro2_8c859696f4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro2.jpg\", \"path\": null, \"size\": 4.11, \"width\": 104, \"height\": 156}}', 'cachorro2_8c859696f4', '.jpg', 'image/jpeg', 24.94, '/uploads/cachorro2_8c859696f4.jpg', NULL, 'local', NULL, '/1', '2024-04-30 15:30:21.373000', '2024-04-30 15:30:21.373000', NULL, NULL),
(829, 'cachorro3.jpg', NULL, NULL, 474, 359, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro3_078478b187.jpg\", \"hash\": \"thumbnail_cachorro3_078478b187\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro3.jpg\", \"path\": null, \"size\": 6.9, \"width\": 206, \"height\": 156}}', 'cachorro3_078478b187', '.jpg', 'image/jpeg', 20.39, '/uploads/cachorro3_078478b187.jpg', NULL, 'local', NULL, '/1', '2024-04-30 15:30:26.704000', '2024-04-30 15:30:26.704000', NULL, NULL),
(830, 'cachorro1.jpg', NULL, NULL, 3086, 2066, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cachorro1_7fbbe47d89.jpg\", \"hash\": \"large_cachorro1_7fbbe47d89\", \"mime\": \"image/jpeg\", \"name\": \"large_cachorro1.jpg\", \"path\": null, \"size\": 67.47, \"width\": 1000, \"height\": 669}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro1_7fbbe47d89.jpg\", \"hash\": \"small_cachorro1_7fbbe47d89\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro1.jpg\", \"path\": null, \"size\": 20.68, \"width\": 500, \"height\": 335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro1_7fbbe47d89.jpg\", \"hash\": \"medium_cachorro1_7fbbe47d89\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro1.jpg\", \"path\": null, \"size\": 40.88, \"width\": 750, \"height\": 502}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro1_7fbbe47d89.jpg\", \"hash\": \"thumbnail_cachorro1_7fbbe47d89\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro1.jpg\", \"path\": null, \"size\": 6.31, \"width\": 233, \"height\": 156}}', 'cachorro1_7fbbe47d89', '.jpg', 'image/jpeg', 494.61, '/uploads/cachorro1_7fbbe47d89.jpg', NULL, 'local', NULL, '/1', '2024-04-30 15:31:20.494000', '2024-04-30 15:31:20.494000', NULL, NULL),
(831, 'cachorro1.jpg', NULL, NULL, 3086, 2066, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cachorro1_0ba84a4d0e.jpg\", \"hash\": \"large_cachorro1_0ba84a4d0e\", \"mime\": \"image/jpeg\", \"name\": \"large_cachorro1.jpg\", \"path\": null, \"size\": 67.47, \"width\": 1000, \"height\": 669}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro1_0ba84a4d0e.jpg\", \"hash\": \"small_cachorro1_0ba84a4d0e\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro1.jpg\", \"path\": null, \"size\": 20.68, \"width\": 500, \"height\": 335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro1_0ba84a4d0e.jpg\", \"hash\": \"medium_cachorro1_0ba84a4d0e\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro1.jpg\", \"path\": null, \"size\": 40.88, \"width\": 750, \"height\": 502}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro1_0ba84a4d0e.jpg\", \"hash\": \"thumbnail_cachorro1_0ba84a4d0e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro1.jpg\", \"path\": null, \"size\": 6.31, \"width\": 233, \"height\": 156}}', 'cachorro1_0ba84a4d0e', '.jpg', 'image/jpeg', 494.61, '/uploads/cachorro1_0ba84a4d0e.jpg', NULL, 'local', NULL, '/1', '2024-04-30 15:31:20.515000', '2024-04-30 15:31:20.515000', NULL, NULL),
(832, 'cachorro2.jpg', NULL, NULL, 335, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro2_1017c97f26.jpg\", \"hash\": \"thumbnail_cachorro2_1017c97f26\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro2.jpg\", \"path\": null, \"size\": 4.11, \"width\": 104, \"height\": 156}}', 'cachorro2_1017c97f26', '.jpg', 'image/jpeg', 24.94, '/uploads/cachorro2_1017c97f26.jpg', NULL, 'local', NULL, '/1', '2024-04-30 15:31:27.247000', '2024-04-30 15:31:27.247000', NULL, NULL),
(833, 'cachorro3.jpg', NULL, NULL, 474, 359, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro3_fd00ec3f9a.jpg\", \"hash\": \"thumbnail_cachorro3_fd00ec3f9a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro3.jpg\", \"path\": null, \"size\": 6.9, \"width\": 206, \"height\": 156}}', 'cachorro3_fd00ec3f9a', '.jpg', 'image/jpeg', 20.39, '/uploads/cachorro3_fd00ec3f9a.jpg', NULL, 'local', NULL, '/1', '2024-04-30 15:31:27.248000', '2024-04-30 15:31:27.248000', NULL, NULL),
(834, 'cachorro2.jpg', NULL, NULL, 335, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro2_5e0cd80855.jpg\", \"hash\": \"thumbnail_cachorro2_5e0cd80855\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro2.jpg\", \"path\": null, \"size\": 4.11, \"width\": 104, \"height\": 156}}', 'cachorro2_5e0cd80855', '.jpg', 'image/jpeg', 24.94, '/uploads/cachorro2_5e0cd80855.jpg', NULL, 'local', NULL, '/1', '2024-04-30 15:31:33.731000', '2024-04-30 15:31:33.731000', NULL, NULL),
(835, 'cachorro3.jpg', NULL, NULL, 474, 359, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro3_fabb62997d.jpg\", \"hash\": \"thumbnail_cachorro3_fabb62997d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro3.jpg\", \"path\": null, \"size\": 6.9, \"width\": 206, \"height\": 156}}', 'cachorro3_fabb62997d', '.jpg', 'image/jpeg', 20.39, '/uploads/cachorro3_fabb62997d.jpg', NULL, 'local', NULL, '/1', '2024-04-30 15:31:33.732000', '2024-04-30 15:31:33.732000', NULL, NULL),
(836, 'cachorro2.jpg', NULL, NULL, 335, 500, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro2_bcaf552a07.jpg\", \"hash\": \"thumbnail_cachorro2_bcaf552a07\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro2.jpg\", \"path\": null, \"size\": 4.11, \"width\": 104, \"height\": 156}}', 'cachorro2_bcaf552a07', '.jpg', 'image/jpeg', 24.94, '/uploads/cachorro2_bcaf552a07.jpg', NULL, 'local', NULL, '/1', '2024-04-30 15:31:43.735000', '2024-04-30 15:31:43.735000', NULL, NULL),
(837, 'cachorro1.jpg', NULL, NULL, 3086, 2066, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cachorro1_8cc17255cc.jpg\", \"hash\": \"large_cachorro1_8cc17255cc\", \"mime\": \"image/jpeg\", \"name\": \"large_cachorro1.jpg\", \"path\": null, \"size\": 67.47, \"width\": 1000, \"height\": 669}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro1_8cc17255cc.jpg\", \"hash\": \"small_cachorro1_8cc17255cc\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro1.jpg\", \"path\": null, \"size\": 20.68, \"width\": 500, \"height\": 335}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro1_8cc17255cc.jpg\", \"hash\": \"medium_cachorro1_8cc17255cc\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro1.jpg\", \"path\": null, \"size\": 40.88, \"width\": 750, \"height\": 502}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro1_8cc17255cc.jpg\", \"hash\": \"thumbnail_cachorro1_8cc17255cc\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro1.jpg\", \"path\": null, \"size\": 6.31, \"width\": 233, \"height\": 156}}', 'cachorro1_8cc17255cc', '.jpg', 'image/jpeg', 494.61, '/uploads/cachorro1_8cc17255cc.jpg', NULL, 'local', NULL, '/1', '2024-04-30 15:31:43.934000', '2024-04-30 15:31:43.934000', NULL, NULL),
(838, 'vacina_contra_covid_19.jpeg', NULL, NULL, 1280, 853, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_vacina_contra_covid_19_3e1579cb22.jpeg\", \"hash\": \"large_vacina_contra_covid_19_3e1579cb22\", \"mime\": \"image/jpeg\", \"name\": \"large_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 38.45, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_vacina_contra_covid_19_3e1579cb22.jpeg\", \"hash\": \"small_vacina_contra_covid_19_3e1579cb22\", \"mime\": \"image/jpeg\", \"name\": \"small_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 11.81, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_vacina_contra_covid_19_3e1579cb22.jpeg\", \"hash\": \"medium_vacina_contra_covid_19_3e1579cb22\", \"mime\": \"image/jpeg\", \"name\": \"medium_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 23.05, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_vacina_contra_covid_19_3e1579cb22.jpeg\", \"hash\": \"thumbnail_vacina_contra_covid_19_3e1579cb22\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 3.66, \"width\": 234, \"height\": 156}}', 'vacina_contra_covid_19_3e1579cb22', '.jpeg', 'image/jpeg', 60.39, '/uploads/vacina_contra_covid_19_3e1579cb22.jpeg', NULL, 'local', NULL, '/1', '2024-04-30 17:10:01.618000', '2024-04-30 17:10:01.618000', NULL, NULL),
(840, 'vacina_contra_covid_19.jpeg', NULL, NULL, 1280, 853, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_vacina_contra_covid_19_5766fc7be6.jpeg\", \"hash\": \"large_vacina_contra_covid_19_5766fc7be6\", \"mime\": \"image/jpeg\", \"name\": \"large_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 38.45, \"width\": 1000, \"height\": 666}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_vacina_contra_covid_19_5766fc7be6.jpeg\", \"hash\": \"small_vacina_contra_covid_19_5766fc7be6\", \"mime\": \"image/jpeg\", \"name\": \"small_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 11.81, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_vacina_contra_covid_19_5766fc7be6.jpeg\", \"hash\": \"medium_vacina_contra_covid_19_5766fc7be6\", \"mime\": \"image/jpeg\", \"name\": \"medium_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 23.05, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_vacina_contra_covid_19_5766fc7be6.jpeg\", \"hash\": \"thumbnail_vacina_contra_covid_19_5766fc7be6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vacina_contra_covid_19.jpeg\", \"path\": null, \"size\": 3.66, \"width\": 234, \"height\": 156}}', 'vacina_contra_covid_19_5766fc7be6', '.jpeg', 'image/jpeg', 60.39, '/uploads/vacina_contra_covid_19_5766fc7be6.jpeg', NULL, 'local', NULL, '/1', '2024-05-02 18:04:06.120000', '2024-05-02 18:04:06.120000', NULL, NULL),
(841, 'cachorro-independente-1.jpg', NULL, NULL, 800, 531, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro_independente_1_79869b3534.jpg\", \"hash\": \"small_cachorro_independente_1_79869b3534\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro-independente-1.jpg\", \"path\": null, \"size\": 29.76, \"width\": 500, \"height\": 332}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro_independente_1_79869b3534.jpg\", \"hash\": \"medium_cachorro_independente_1_79869b3534\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro-independente-1.jpg\", \"path\": null, \"size\": 54.63, \"width\": 750, \"height\": 498}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro_independente_1_79869b3534.jpg\", \"hash\": \"thumbnail_cachorro_independente_1_79869b3534\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro-independente-1.jpg\", \"path\": null, \"size\": 8.99, \"width\": 235, \"height\": 156}}', 'cachorro_independente_1_79869b3534', '.jpg', 'image/jpeg', 23.11, '/uploads/cachorro_independente_1_79869b3534.jpg', NULL, 'local', NULL, '/1', '2024-05-02 19:46:27.183000', '2024-05-02 19:46:27.183000', NULL, NULL),
(842, 'download (1) (1).jpeg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_download_1_1_3bf3c15342.jpeg\", \"hash\": \"thumbnail_download_1_1_3bf3c15342\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download (1) (1).jpeg\", \"path\": null, \"size\": 4.04, \"width\": 156, \"height\": 156}}', 'download_1_1_3bf3c15342', '.jpeg', 'image/jpeg', 4.64, '/uploads/download_1_1_3bf3c15342.jpeg', NULL, 'local', NULL, '/1', '2024-05-02 19:46:32.428000', '2024-05-02 19:46:32.428000', NULL, NULL),
(843, 'OIP.jpeg', NULL, NULL, 1400, 1000, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_OIP_b9e08858ca.jpeg\", \"hash\": \"large_OIP_b9e08858ca\", \"mime\": \"image/jpeg\", \"name\": \"large_OIP.jpeg\", \"path\": null, \"size\": 103.86, \"width\": 1000, \"height\": 714}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_OIP_b9e08858ca.jpeg\", \"hash\": \"small_OIP_b9e08858ca\", \"mime\": \"image/jpeg\", \"name\": \"small_OIP.jpeg\", \"path\": null, \"size\": 37.98, \"width\": 500, \"height\": 357}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_OIP_b9e08858ca.jpeg\", \"hash\": \"medium_OIP_b9e08858ca\", \"mime\": \"image/jpeg\", \"name\": \"medium_OIP.jpeg\", \"path\": null, \"size\": 68.88, \"width\": 750, \"height\": 536}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_OIP_b9e08858ca.jpeg\", \"hash\": \"thumbnail_OIP_b9e08858ca\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_OIP.jpeg\", \"path\": null, \"size\": 8.93, \"width\": 218, \"height\": 156}}', 'OIP_b9e08858ca', '.jpeg', 'image/jpeg', 130.31, '/uploads/OIP_b9e08858ca.jpeg', NULL, 'local', NULL, '/1', '2024-05-02 19:46:37.295000', '2024-05-02 19:46:37.295000', NULL, NULL),
(844, 'download (1) (1).jpeg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_download_1_1_ee62e13bfb.jpeg\", \"hash\": \"thumbnail_download_1_1_ee62e13bfb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download (1) (1).jpeg\", \"path\": null, \"size\": 4.04, \"width\": 156, \"height\": 156}}', 'download_1_1_ee62e13bfb', '.jpeg', 'image/jpeg', 4.64, '/uploads/download_1_1_ee62e13bfb.jpeg', NULL, 'local', NULL, '/1', '2024-05-02 19:47:00.677000', '2024-05-02 19:47:00.677000', NULL, NULL),
(845, 'cachorro-independente-1.jpg', NULL, NULL, 800, 531, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro_independente_1_2bcb0c1c1f.jpg\", \"hash\": \"small_cachorro_independente_1_2bcb0c1c1f\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro-independente-1.jpg\", \"path\": null, \"size\": 29.76, \"width\": 500, \"height\": 332}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro_independente_1_2bcb0c1c1f.jpg\", \"hash\": \"medium_cachorro_independente_1_2bcb0c1c1f\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro-independente-1.jpg\", \"path\": null, \"size\": 54.63, \"width\": 750, \"height\": 498}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro_independente_1_2bcb0c1c1f.jpg\", \"hash\": \"thumbnail_cachorro_independente_1_2bcb0c1c1f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro-independente-1.jpg\", \"path\": null, \"size\": 8.99, \"width\": 235, \"height\": 156}}', 'cachorro_independente_1_2bcb0c1c1f', '.jpg', 'image/jpeg', 23.11, '/uploads/cachorro_independente_1_2bcb0c1c1f.jpg', NULL, 'local', NULL, '/1', '2024-05-02 19:55:45.339000', '2024-05-02 19:55:45.339000', NULL, NULL),
(846, 'OIP.jpeg', NULL, NULL, 1400, 1000, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_OIP_0cde87ceb4.jpeg\", \"hash\": \"large_OIP_0cde87ceb4\", \"mime\": \"image/jpeg\", \"name\": \"large_OIP.jpeg\", \"path\": null, \"size\": 103.86, \"width\": 1000, \"height\": 714}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_OIP_0cde87ceb4.jpeg\", \"hash\": \"small_OIP_0cde87ceb4\", \"mime\": \"image/jpeg\", \"name\": \"small_OIP.jpeg\", \"path\": null, \"size\": 37.98, \"width\": 500, \"height\": 357}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_OIP_0cde87ceb4.jpeg\", \"hash\": \"medium_OIP_0cde87ceb4\", \"mime\": \"image/jpeg\", \"name\": \"medium_OIP.jpeg\", \"path\": null, \"size\": 68.88, \"width\": 750, \"height\": 536}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_OIP_0cde87ceb4.jpeg\", \"hash\": \"thumbnail_OIP_0cde87ceb4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_OIP.jpeg\", \"path\": null, \"size\": 8.93, \"width\": 218, \"height\": 156}}', 'OIP_0cde87ceb4', '.jpeg', 'image/jpeg', 130.31, '/uploads/OIP_0cde87ceb4.jpeg', NULL, 'local', NULL, '/1', '2024-05-02 19:58:34.674000', '2024-05-02 19:58:34.674000', NULL, NULL),
(847, 'OIP.jpeg', NULL, NULL, 1400, 1000, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_OIP_7712f10f88.jpeg\", \"hash\": \"large_OIP_7712f10f88\", \"mime\": \"image/jpeg\", \"name\": \"large_OIP.jpeg\", \"path\": null, \"size\": 103.86, \"width\": 1000, \"height\": 714}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_OIP_7712f10f88.jpeg\", \"hash\": \"small_OIP_7712f10f88\", \"mime\": \"image/jpeg\", \"name\": \"small_OIP.jpeg\", \"path\": null, \"size\": 37.98, \"width\": 500, \"height\": 357}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_OIP_7712f10f88.jpeg\", \"hash\": \"medium_OIP_7712f10f88\", \"mime\": \"image/jpeg\", \"name\": \"medium_OIP.jpeg\", \"path\": null, \"size\": 68.88, \"width\": 750, \"height\": 536}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_OIP_7712f10f88.jpeg\", \"hash\": \"thumbnail_OIP_7712f10f88\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_OIP.jpeg\", \"path\": null, \"size\": 8.93, \"width\": 218, \"height\": 156}}', 'OIP_7712f10f88', '.jpeg', 'image/jpeg', 130.31, '/uploads/OIP_7712f10f88.jpeg', NULL, 'local', NULL, '/1', '2024-05-02 20:19:21.436000', '2024-05-02 20:19:21.436000', NULL, NULL),
(848, 'download (1) (1).jpeg', NULL, NULL, 225, 225, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_download_1_1_528441571f.jpeg\", \"hash\": \"thumbnail_download_1_1_528441571f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_download (1) (1).jpeg\", \"path\": null, \"size\": 4.04, \"width\": 156, \"height\": 156}}', 'download_1_1_528441571f', '.jpeg', 'image/jpeg', 4.64, '/uploads/download_1_1_528441571f.jpeg', NULL, 'local', NULL, '/1', '2024-05-02 20:19:27.553000', '2024-05-02 20:19:27.553000', NULL, NULL),
(849, 'cachorro-independente-1.jpg', NULL, NULL, 800, 531, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cachorro_independente_1_102cdf5c1f.jpg\", \"hash\": \"small_cachorro_independente_1_102cdf5c1f\", \"mime\": \"image/jpeg\", \"name\": \"small_cachorro-independente-1.jpg\", \"path\": null, \"size\": 29.76, \"width\": 500, \"height\": 332}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cachorro_independente_1_102cdf5c1f.jpg\", \"hash\": \"medium_cachorro_independente_1_102cdf5c1f\", \"mime\": \"image/jpeg\", \"name\": \"medium_cachorro-independente-1.jpg\", \"path\": null, \"size\": 54.63, \"width\": 750, \"height\": 498}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cachorro_independente_1_102cdf5c1f.jpg\", \"hash\": \"thumbnail_cachorro_independente_1_102cdf5c1f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cachorro-independente-1.jpg\", \"path\": null, \"size\": 8.99, \"width\": 235, \"height\": 156}}', 'cachorro_independente_1_102cdf5c1f', '.jpg', 'image/jpeg', 23.11, '/uploads/cachorro_independente_1_102cdf5c1f.jpg', NULL, 'local', NULL, '/1', '2024-05-02 20:19:33.321000', '2024-05-02 20:19:33.321000', NULL, NULL),
(850, 'OIP.jpeg', NULL, NULL, 1400, 1000, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_OIP_1fbe5d3a97.jpeg\", \"hash\": \"large_OIP_1fbe5d3a97\", \"mime\": \"image/jpeg\", \"name\": \"large_OIP.jpeg\", \"path\": null, \"size\": 103.86, \"width\": 1000, \"height\": 714}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_OIP_1fbe5d3a97.jpeg\", \"hash\": \"small_OIP_1fbe5d3a97\", \"mime\": \"image/jpeg\", \"name\": \"small_OIP.jpeg\", \"path\": null, \"size\": 37.98, \"width\": 500, \"height\": 357}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_OIP_1fbe5d3a97.jpeg\", \"hash\": \"medium_OIP_1fbe5d3a97\", \"mime\": \"image/jpeg\", \"name\": \"medium_OIP.jpeg\", \"path\": null, \"size\": 68.88, \"width\": 750, \"height\": 536}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_OIP_1fbe5d3a97.jpeg\", \"hash\": \"thumbnail_OIP_1fbe5d3a97\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_OIP.jpeg\", \"path\": null, \"size\": 8.93, \"width\": 218, \"height\": 156}}', 'OIP_1fbe5d3a97', '.jpeg', 'image/jpeg', 130.31, '/uploads/OIP_1fbe5d3a97.jpeg', NULL, 'local', NULL, '/1', '2024-05-02 20:23:06.251000', '2024-05-02 20:23:06.251000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `files_folder_links`
--

DROP TABLE IF EXISTS `files_folder_links`;
CREATE TABLE `files_folder_links` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `files_folder_links`
--

INSERT INTO `files_folder_links` (`id`, `file_id`, `folder_id`, `file_order`) VALUES
(740, 738, 1, 690),
(741, 739, 1, 691),
(742, 740, 1, 692),
(743, 741, 1, 693),
(744, 742, 1, 694),
(745, 743, 1, 695),
(746, 744, 1, 696),
(747, 745, 1, 697),
(748, 746, 1, 698),
(749, 747, 1, 699),
(750, 748, 1, 700),
(751, 749, 1, 701),
(752, 750, 1, 702),
(753, 751, 1, 703),
(754, 752, 1, 704),
(755, 753, 1, 705),
(756, 754, 1, 706),
(757, 755, 1, 707),
(758, 756, 1, 708),
(759, 757, 1, 709),
(760, 758, 1, 710),
(761, 759, 1, 711),
(762, 760, 1, 712),
(763, 761, 1, 713),
(764, 762, 1, 714),
(765, 763, 1, 715),
(766, 764, 1, 716),
(767, 765, 1, 717),
(768, 766, 1, 718),
(769, 767, 1, 719),
(770, 768, 1, 720),
(771, 769, 1, 721),
(772, 770, 1, 722),
(773, 771, 1, 723),
(774, 772, 1, 724),
(775, 773, 1, 725),
(776, 774, 1, 726),
(777, 775, 1, 727),
(778, 776, 1, 728),
(779, 777, 1, 729),
(780, 778, 1, 730),
(781, 779, 1, 731),
(782, 780, 1, 732),
(783, 781, 1, 733),
(784, 782, 1, 734),
(786, 784, 1, 736),
(787, 785, 1, 737),
(794, 792, 1, 738),
(795, 793, 1, 739),
(796, 794, 1, 740),
(797, 795, 1, 741),
(798, 796, 1, 742),
(799, 797, 1, 743),
(800, 798, 1, 744),
(801, 799, 1, 745),
(802, 800, 1, 746),
(803, 801, 1, 747),
(804, 802, 1, 748),
(805, 803, 1, 749),
(806, 804, 1, 750),
(807, 805, 1, 751),
(808, 806, 1, 752),
(809, 807, 1, 753),
(810, 808, 1, 754),
(811, 809, 1, 755),
(812, 810, 1, 756),
(813, 811, 1, 757),
(814, 812, 1, 758),
(815, 813, 1, 759),
(816, 814, 1, 760),
(817, 815, 1, 761),
(818, 816, 1, 762),
(825, 823, 1, 769),
(826, 824, 1, 770),
(827, 825, 1, 771),
(828, 826, 1, 772),
(829, 827, 1, 773),
(830, 828, 1, 774),
(831, 829, 1, 775),
(832, 830, 1, 776),
(833, 831, 1, 777),
(834, 832, 1, 778),
(835, 833, 1, 778),
(836, 834, 1, 779),
(837, 835, 1, 779),
(838, 836, 1, 780),
(839, 837, 1, 781),
(840, 838, 1, 782),
(842, 840, 1, 784),
(843, 841, 1, 785),
(844, 842, 1, 786),
(845, 843, 1, 787),
(846, 844, 1, 788),
(847, 845, 1, 789),
(848, 846, 1, 790),
(849, 847, 1, 791),
(850, 848, 1, 792),
(851, 849, 1, 793),
(852, 850, 1, 794);

-- --------------------------------------------------------

--
-- Estrutura para tabela `files_related_morphs`
--

DROP TABLE IF EXISTS `files_related_morphs`;
CREATE TABLE `files_related_morphs` (
  `id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `related_id` int UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(1, 1, 1, 'api::animal.animal', 'Foto', 1),
(553, 746, 92, 'api::animal.animal', 'Foto_frente', 1),
(554, 743, 92, 'api::animal.animal', 'Foto_direita', 1),
(555, 744, 92, 'api::animal.animal', 'Foto_esquerda', 1),
(556, 747, 93, 'api::animal.animal', 'Foto_frente', 1),
(557, 749, 93, 'api::animal.animal', 'Foto_direita', 1),
(558, 748, 93, 'api::animal.animal', 'Foto_esquerda', 1),
(559, 759, 94, 'api::animal.animal', 'Foto_frente', 1),
(560, 761, 94, 'api::animal.animal', 'Foto_direita', 1),
(561, 760, 94, 'api::animal.animal', 'Foto_esquerda', 1),
(562, 764, 95, 'api::animal.animal', 'Foto_frente', 1),
(563, 766, 95, 'api::animal.animal', 'Foto_direita', 1),
(564, 765, 95, 'api::animal.animal', 'Foto_esquerda', 1),
(565, 764, 96, 'api::animal.animal', 'Foto_frente', 1),
(566, 766, 96, 'api::animal.animal', 'Foto_direita', 1),
(567, 765, 96, 'api::animal.animal', 'Foto_esquerda', 1),
(568, 769, 97, 'api::animal.animal', 'Foto_frente', 1),
(569, 771, 97, 'api::animal.animal', 'Foto_direita', 1),
(570, 770, 97, 'api::animal.animal', 'Foto_esquerda', 1),
(580, 772, 98, 'api::animal.animal', 'Foto_frente', 1),
(581, 775, 98, 'api::animal.animal', 'Foto_direita', 1),
(582, 773, 98, 'api::animal.animal', 'Foto_esquerda', 1),
(595, 746, 91, 'api::animal.animal', 'Foto_frente', 1),
(596, 743, 91, 'api::animal.animal', 'Foto_direita', 1),
(597, 744, 91, 'api::animal.animal', 'Foto_esquerda', 1),
(602, 746, 99, 'api::animal.animal', 'Foto_frente', 1),
(603, 743, 99, 'api::animal.animal', 'Foto_direita', 1),
(604, 744, 99, 'api::animal.animal', 'Foto_esquerda', 1),
(617, 782, 100, 'api::animal.animal', 'Foto_frente', 1),
(618, 779, 100, 'api::animal.animal', 'Foto_direita', 1),
(619, 778, 100, 'api::animal.animal', 'Foto_esquerda', 1),
(621, 785, 101, 'api::animal.animal', 'Foto_direita', 1),
(622, 784, 101, 'api::animal.animal', 'Foto_esquerda', 1),
(633, 795, 14, 'api::tipo-vacina.tipo-vacina', 'foto_etiqueta', 1),
(634, 795, 15, 'api::tipo-vacina.tipo-vacina', 'foto_etiqueta', 1),
(635, 807, 16, 'api::tipo-vacina.tipo-vacina', 'foto_etiqueta', 1),
(636, 812, 17, 'api::tipo-vacina.tipo-vacina', 'foto_etiqueta', 1),
(638, 813, 18, 'api::tipo-vacina.tipo-vacina', 'foto_etiqueta', 1),
(639, 816, 19, 'api::tipo-vacina.tipo-vacina', 'foto_etiqueta', 1),
(640, 816, 20, 'api::tipo-vacina.tipo-vacina', 'foto_etiqueta', 1),
(641, 816, 21, 'api::tipo-vacina.tipo-vacina', 'foto_etiqueta', 1),
(648, 769, 70, 'api::animal.animal', 'Foto_frente', 1),
(650, 773, 70, 'api::animal.animal', 'Foto_esquerda', 1),
(651, 810, 85, 'api::animal.animal', 'Foto_frente', 1),
(652, 812, 85, 'api::animal.animal', 'Foto_direita', 1),
(653, 784, 85, 'api::animal.animal', 'Foto_esquerda', 1),
(655, 808, 22, 'api::animal.animal', 'Foto_direita', 1),
(708, 824, 47, 'api::animal-vacina.animal-vacina', 'foto_etiqueta', 1),
(713, 838, 49, 'api::animal-vacina.animal-vacina', 'foto_etiqueta', 1),
(718, 826, 48, 'api::animal-vacina.animal-vacina', 'foto_etiqueta', 1),
(719, 838, 52, 'api::animal-vacina.animal-vacina', 'foto_etiqueta', 1),
(726, 840, 53, 'api::animal-vacina.animal-vacina', 'foto_etiqueta', 1),
(748, 840, 54, 'api::animal-vacina.animal-vacina', 'foto_etiqueta', 1),
(752, 812, 104, 'api::animal.animal', 'Foto_frente', 1),
(753, 809, 104, 'api::animal.animal', 'Foto_direita', 1),
(754, 781, 104, 'api::animal.animal', 'Foto_esquerda', 1),
(755, 827, 105, 'api::animal.animal', 'Foto_frente', 1),
(756, 829, 105, 'api::animal.animal', 'Foto_direita', 1),
(757, 828, 105, 'api::animal.animal', 'Foto_esquerda', 1),
(761, 850, 103, 'api::animal.animal', 'Foto_frente', 1),
(762, 843, 103, 'api::animal.animal', 'Foto_direita', 1),
(763, 842, 103, 'api::animal.animal', 'Foto_esquerda', 1),
(764, 840, 55, 'api::animal-vacina.animal-vacina', 'foto_etiqueta', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `forma_aquisicaos`
--

DROP TABLE IF EXISTS `forma_aquisicaos`;
CREATE TABLE `forma_aquisicaos` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `forma_aquisicaos`
--

INSERT INTO `forma_aquisicaos` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `nome`) VALUES
(1, '2024-04-26 16:42:06.259000', '2024-04-29 19:17:51.136000', 1, 1, 'Nascimento no Canil PMES'),
(2, '2024-04-26 16:42:13.943000', '2024-04-29 19:17:58.785000', 1, 1, 'Nascimento em Canil externo'),
(3, '2024-04-26 16:43:04.231000', '2024-04-29 19:18:05.753000', 1, 1, 'Compra'),
(4, '2024-04-26 16:43:14.493000', '2024-04-29 19:18:10.769000', 1, 1, 'Doação'),
(5, '2024-04-26 16:43:23.311000', '2024-04-29 19:18:16.983000', 1, 1, 'Resgate');

-- --------------------------------------------------------

--
-- Estrutura para tabela `i18n_locale`
--

DROP TABLE IF EXISTS `i18n_locale`;
CREATE TABLE `i18n_locale` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-12-27 13:12:47.979000', '2023-12-27 13:12:47.979000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `justificativa_baixas`
--

DROP TABLE IF EXISTS `justificativa_baixas`;
CREATE TABLE `justificativa_baixas` (
  `id` int UNSIGNED NOT NULL,
  `justificativa` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `justificativa_baixas`
--

INSERT INTO `justificativa_baixas` (`id`, `justificativa`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(13, 'Invalidez por doença', '2024-02-12 19:28:03.617000', '2024-03-12 23:17:07.588000', NULL, 1),
(14, 'Invalidez por doença', '2024-02-14 00:22:38.351000', '2024-03-12 23:16:52.543000', NULL, 1),
(15, 'Morto em missão', '2024-02-14 00:36:16.151000', '2024-03-12 23:18:05.897000', NULL, 1),
(16, 'Invalidez por doença', '2024-02-14 00:38:10.031000', '2024-03-12 23:17:00.022000', NULL, 1),
(17, 'Aposentadoria', '2024-02-14 00:39:27.478000', '2024-03-12 23:18:56.657000', NULL, 1),
(18, 'Aposentadoria', '2024-02-19 15:35:24.777000', '2024-03-12 23:15:25.985000', NULL, 1),
(19, 'Morto em missão', '2024-02-22 16:10:15.345000', '2024-03-12 23:17:40.188000', NULL, 1),
(20, 'Invalidez por doença', '2024-02-22 18:25:25.593000', '2024-03-12 23:16:44.582000', NULL, 1),
(21, 'Aposentadoria', '2024-02-22 18:27:26.801000', '2024-03-12 23:19:06.301000', NULL, 1),
(22, 'Morto em missão', '2024-02-22 18:29:04.801000', '2024-03-12 23:17:54.454000', NULL, 1),
(23, 'Aposentadoria', '2024-02-22 18:31:03.020000', '2024-03-12 23:18:47.367000', NULL, 1),
(24, 'Aposentadoria', '2024-02-22 18:39:53.193000', '2024-03-12 23:18:38.981000', NULL, 1),
(25, 'Morto em missão', '2024-02-22 18:44:32.723000', '2024-03-12 23:18:24.909000', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `justificativa_baixas_animal_links`
--

DROP TABLE IF EXISTS `justificativa_baixas_animal_links`;
CREATE TABLE `justificativa_baixas_animal_links` (
  `id` int UNSIGNED NOT NULL,
  `justificativa_baixa_id` int UNSIGNED DEFAULT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `marca_vacinas`
--

DROP TABLE IF EXISTS `marca_vacinas`;
CREATE TABLE `marca_vacinas` (
  `id` int UNSIGNED NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `marca_vacinas`
--

INSERT INTO `marca_vacinas` (`id`, `nome`, `ativo`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'BIOFEL PCH®', 1, '2024-04-25 17:54:37.494000', '2024-04-29 17:08:49.837000', '2024-04-25 17:54:38.258000', 1, 1),
(2, 'Bagovac Raiva', 1, '2024-04-25 17:55:03.318000', '2024-04-29 18:28:25.467000', '2024-04-25 17:55:03.937000', 1, 1),
(3, 'Bio Max', 1, '2024-04-25 17:55:09.495000', '2024-04-29 18:28:32.390000', '2024-04-25 17:55:10.131000', 1, 1),
(4, 'Bioraiva®Pet', 1, '2024-04-25 17:55:16.448000', '2024-04-29 20:19:29.280000', '2024-04-25 17:55:17.185000', 1, 1),
(5, 'Bronchi-Shield III', 1, '2024-04-25 17:55:23.219000', '2024-04-29 20:19:36.375000', '2024-04-25 17:55:23.973000', 1, 1),
(49, 'Teste Vac T', 0, '2024-05-02 14:09:20.267000', '2024-05-02 16:12:03.334000', '2024-05-02 14:09:20.265000', NULL, 1),
(52, 'Testando Func', 0, '2024-05-03 15:33:18.041000', '2024-05-03 16:16:57.129000', '2024-05-03 15:33:18.037000', NULL, NULL),
(53, 'Testando dddd', 0, '2024-05-03 15:59:32.117000', '2024-05-03 16:16:59.676000', '2024-05-03 15:59:32.115000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `marca_vacinas_tipo_vacina_links`
--

DROP TABLE IF EXISTS `marca_vacinas_tipo_vacina_links`;
CREATE TABLE `marca_vacinas_tipo_vacina_links` (
  `id` int UNSIGNED NOT NULL,
  `marca_vacina_id` int UNSIGNED DEFAULT NULL,
  `tipo_vacina_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `marca_vacinas_tipo_vacina_links`
--

INSERT INTO `marca_vacinas_tipo_vacina_links` (`id`, `marca_vacina_id`, `tipo_vacina_id`) VALUES
(1, 1, 30),
(2, 2, 31),
(3, 3, 32),
(4, 4, 31),
(5, 5, 31),
(10, 49, 32),
(11, 52, 30),
(12, 53, 31);

-- --------------------------------------------------------

--
-- Estrutura para tabela `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
CREATE TABLE `medicamentos` (
  `id` int UNSIGNED NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `medicamentos`
--

INSERT INTO `medicamentos` (`id`, `nome`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `ativo`) VALUES
(1, 'Desonida', '2024-02-07 20:12:15.595000', '2024-03-13 16:41:14.375000', '2024-02-07 20:32:28.293000', 1, 1, 0),
(2, 'Amoxicilina', '2024-02-07 20:33:47.601000', '2024-03-13 17:38:15.019000', '2024-02-07 20:33:51.231000', 1, 1, 1),
(4, 'Aspirina', '2024-02-21 18:02:08.700000', '2024-03-13 16:14:26.565000', '2024-02-21 18:02:08.695000', NULL, NULL, 0),
(5, 'Clindamicina', '2024-02-22 01:04:43.233000', '2024-03-13 17:39:42.302000', '2024-02-22 01:04:43.231000', NULL, NULL, 1),
(6, 'Loratadina', '2024-03-13 16:15:06.790000', '2024-03-13 16:15:09.277000', '2024-03-13 16:15:06.787000', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `possuis`
--

DROP TABLE IF EXISTS `possuis`;
CREATE TABLE `possuis` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `dosagem` varchar(255) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `medicamento_aplicado` tinyint(1) DEFAULT NULL,
  `prescricao` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `possuis`
--

INSERT INTO `possuis` (`id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `dosagem`, `data_inicio`, `data_fim`, `medicamento_aplicado`, `prescricao`) VALUES
(1, '2024-02-07 20:33:28.952000', '2024-02-19 16:17:44.315000', '2024-02-07 20:33:31.882000', 1, 1, '20', NULL, NULL, NULL, 'tres vezes ao dia'),
(2, '2024-02-07 20:35:15.564000', '2024-02-19 15:53:25.621000', '2024-02-07 20:35:18.118000', 1, 1, '11', NULL, NULL, NULL, 'Tomar o medicamento antes das refeições. Estar atento a sinais de reações adversas e, em caso de qualquer sintoma indesejado,  interrompa imediatamente o uso do medicamento e procurar orientação do veterinário. Priorizar a administração do medicamento antes das refeições.'),
(3, '2024-02-07 20:35:35.961000', '2024-02-14 17:15:11.112000', '2024-02-07 20:35:36.741000', 1, 1, '13', NULL, NULL, NULL, 'descricao paracetamol'),
(4, '2024-02-07 20:36:10.284000', '2024-02-14 17:15:15.948000', '2024-02-07 20:36:13.456000', 1, 1, '14', NULL, NULL, NULL, 'precrisao desonida 2');

-- --------------------------------------------------------

--
-- Estrutura para tabela `possuis_medicamento_links`
--

DROP TABLE IF EXISTS `possuis_medicamento_links`;
CREATE TABLE `possuis_medicamento_links` (
  `id` int UNSIGNED NOT NULL,
  `possui_id` int UNSIGNED DEFAULT NULL,
  `medicamento_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `possuis_medicamento_links`
--

INSERT INTO `possuis_medicamento_links` (`id`, `possui_id`, `medicamento_id`) VALUES
(1, 1, 1),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `possuis_tratamento_medico_links`
--

DROP TABLE IF EXISTS `possuis_tratamento_medico_links`;
CREATE TABLE `possuis_tratamento_medico_links` (
  `id` int UNSIGNED NOT NULL,
  `possui_id` int UNSIGNED DEFAULT NULL,
  `tratamento_medico_id` int UNSIGNED DEFAULT NULL,
  `possui_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `possuis_tratamento_medico_links`
--

INSERT INTO `possuis_tratamento_medico_links` (`id`, `possui_id`, `tratamento_medico_id`, `possui_order`) VALUES
(7, 1, 5, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `racaos`
--

DROP TABLE IF EXISTS `racaos`;
CREATE TABLE `racaos` (
  `id` int UNSIGNED NOT NULL,
  `quantidade` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `data_de_registro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `racaos`
--

INSERT INTO `racaos` (`id`, `quantidade`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `data_de_registro`) VALUES
(1, 300, '2024-03-25 18:15:13.612000', '2024-03-25 18:17:08.002000', 1, 1, '2024-03-06'),
(2, 500, '2024-03-25 18:17:28.942000', '2024-03-25 18:17:28.942000', 1, 1, '2024-03-25'),
(3, 200, '2024-03-25 18:17:45.439000', '2024-03-25 18:17:45.439000', 1, 1, '2024-03-24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `racas`
--

DROP TABLE IF EXISTS `racas`;
CREATE TABLE `racas` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `racas`
--

INSERT INTO `racas` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `nome`) VALUES
(1, '2024-04-26 16:31:33.128000', '2024-04-29 19:15:40.638000', 1, 1, 'Pastor Alemão'),
(2, '2024-04-26 16:31:41.442000', '2024-04-29 19:16:25.277000', 1, 1, 'SRD'),
(3, '2024-04-26 16:31:49.057000', '2024-04-29 19:15:59.424000', 1, 1, 'Pastor Belga de Malinois');

-- --------------------------------------------------------

--
-- Estrutura para tabela `registros`
--

DROP TABLE IF EXISTS `registros`;
CREATE TABLE `registros` (
  `id` int UNSIGNED NOT NULL,
  `dia` date DEFAULT NULL,
  `hora` time(3) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `registro_obss`
--

DROP TABLE IF EXISTS `registro_obss`;
CREATE TABLE `registro_obss` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `registro_obss_animal_links`
--

DROP TABLE IF EXISTS `registro_obss_animal_links`;
CREATE TABLE `registro_obss_animal_links` (
  `id` int UNSIGNED NOT NULL,
  `registro_obs_id` int UNSIGNED DEFAULT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL,
  `registro_obs_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `registro_obss_categoria_obs_saude_links`
--

DROP TABLE IF EXISTS `registro_obss_categoria_obs_saude_links`;
CREATE TABLE `registro_obss_categoria_obs_saude_links` (
  `id` int UNSIGNED NOT NULL,
  `registro_obs_id` int UNSIGNED DEFAULT NULL,
  `categoria_obs_saude_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `registro_tratamentos`
--

DROP TABLE IF EXISTS `registro_tratamentos`;
CREATE TABLE `registro_tratamentos` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `registro_tratamentos_registro_links`
--

DROP TABLE IF EXISTS `registro_tratamentos_registro_links`;
CREATE TABLE `registro_tratamentos_registro_links` (
  `id` int UNSIGNED NOT NULL,
  `registro_tratamento_id` int UNSIGNED DEFAULT NULL,
  `registro_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `registro_tratamentos_tratamento_medico_links`
--

DROP TABLE IF EXISTS `registro_tratamentos_tratamento_medico_links`;
CREATE TABLE `registro_tratamentos_tratamento_medico_links` (
  `id` int UNSIGNED NOT NULL,
  `registro_tratamento_id` int UNSIGNED DEFAULT NULL,
  `tratamento_medico_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sexos`
--

DROP TABLE IF EXISTS `sexos`;
CREATE TABLE `sexos` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `sexos`
--

INSERT INTO `sexos` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `nome`) VALUES
(1, '2024-04-26 16:29:38.888000', '2024-04-29 19:15:06.874000', 1, 1, 'Macho'),
(2, '2024-04-26 16:30:14.008000', '2024-04-29 19:15:15.287000', 1, 1, 'Fêmea');

-- --------------------------------------------------------

--
-- Estrutura para tabela `status_operacionals`
--

DROP TABLE IF EXISTS `status_operacionals`;
CREATE TABLE `status_operacionals` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `status_operacionals`
--

INSERT INTO `status_operacionals` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `nome`) VALUES
(2, '2024-04-26 16:30:52.831000', '2024-04-29 19:21:49.580000', 1, 1, 'Em treinamento'),
(3, '2024-04-26 16:31:04.009000', '2024-04-29 19:22:55.306000', 1, 1, 'Baixado'),
(4, '2024-04-26 16:31:11.855000', '2024-04-29 19:23:19.210000', 1, 1, 'Liberado para trabalho');

-- --------------------------------------------------------

--
-- Estrutura para tabela `status_saudes`
--

DROP TABLE IF EXISTS `status_saudes`;
CREATE TABLE `status_saudes` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `status_saudes`
--

INSERT INTO `status_saudes` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `nome`) VALUES
(1, '2024-04-26 16:31:18.866000', '2024-04-29 20:22:37.871000', 1, 1, 'Em medicação'),
(2, '2024-04-26 16:31:37.544000', '2024-04-29 20:22:48.312000', 1, 1, 'Sem medicação'),
(3, '2024-04-26 16:31:50.386000', '2024-04-29 20:22:57.502000', 1, 1, 'Em medicação restritiva');

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_api_tokens`
--

DROP TABLE IF EXISTS `strapi_api_tokens`;
CREATE TABLE `strapi_api_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_api_token_permissions`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions`;
CREATE TABLE `strapi_api_token_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_api_token_permissions_token_links`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions_token_links`;
CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int UNSIGNED NOT NULL,
  `api_token_permission_id` int UNSIGNED DEFAULT NULL,
  `api_token_id` int UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_core_store_settings`
--

DROP TABLE IF EXISTS `strapi_core_store_settings`;
CREATE TABLE `strapi_core_store_settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"cpf\":{\"unique\":true,\"required\":true,\"type\":\"biginteger\",\"min\":\"5\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"cpf\":{\"unique\":true,\"required\":true,\"type\":\"biginteger\",\"min\":\"5\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::animal.animal\":{\"kind\":\"collectionType\",\"collectionName\":\"animals\",\"info\":{\"singularName\":\"animal\",\"pluralName\":\"animals\",\"displayName\":\"Animal\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\",\"unique\":true,\"required\":true,\"minLength\":3,\"regex\":\"^[A-Za-záàâãéèêíìóòôõúùç ]+$\"},\"Data_nascimento\":{\"type\":\"date\",\"required\":true},\"Idade\":{\"type\":\"integer\",\"max\":25,\"min\":0},\"Box\":{\"type\":\"string\",\"required\":true,\"minLength\":1},\"Alocacao\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::unidade.unidade\"},\"Condutor_principal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::condutor.condutor\"},\"Condutor_secundario\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::condutor.condutor\"},\"Foto_frente\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"Foto_direita\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"Foto_esquerda\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"Justificativa_baixado\":{\"type\":\"string\",\"minLength\":3},\"e_alergicos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::e-alergico.e-alergico\",\"mappedBy\":\"animal\"},\"registro_obs\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::registro-obs.registro-obs\",\"mappedBy\":\"animal\"},\"animal_tratamento_medicos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::animal-tratamento-medico.animal-tratamento-medico\",\"mappedBy\":\"animal\"},\"numero_patrimonio\":{\"type\":\"biginteger\",\"required\":true,\"min\":\"1\",\"unique\":true},\"numero_de_microchip\":{\"type\":\"biginteger\",\"required\":true,\"min\":\"01\",\"unique\":true},\"nome_do_proprietario_anterior\":{\"type\":\"string\",\"required\":true,\"minLength\":1,\"regex\":\"^[A-Za-záàâãéèêíìóòôõúùç ]+$\"},\"data_aquisicao\":{\"type\":\"date\",\"required\":true},\"data_inclusao_carga\":{\"type\":\"date\",\"required\":true},\"valor_compra\":{\"type\":\"float\"},\"cor_animal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::cor-animal.cor-animal\"},\"forma_aquisicao\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::forma-aquisicao.forma-aquisicao\"},\"sexo\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::sexo.sexo\"},\"status_saude\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::status-saude.status-saude\"},\"status_operacional\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::status-operacional.status-operacional\"},\"raca\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::raca.raca\"},\"status_geral\":{\"type\":\"boolean\",\"default\":true,\"required\":true},\"especializacao\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::especializacao.especializacao\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"animals\",\"info\":{\"singularName\":\"animal\",\"pluralName\":\"animals\",\"displayName\":\"Animal\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\",\"unique\":true,\"required\":true,\"minLength\":3,\"regex\":\"^[A-Za-záàâãéèêíìóòôõúùç ]+$\"},\"Data_nascimento\":{\"type\":\"date\",\"required\":true},\"Idade\":{\"type\":\"integer\",\"max\":25,\"min\":0},\"Box\":{\"type\":\"string\",\"required\":true,\"minLength\":1},\"Alocacao\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::unidade.unidade\"},\"Condutor_principal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::condutor.condutor\"},\"Condutor_secundario\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::condutor.condutor\"},\"Foto_frente\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\"]},\"Foto_direita\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"Foto_esquerda\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"Justificativa_baixado\":{\"type\":\"string\",\"minLength\":3},\"e_alergicos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::e-alergico.e-alergico\",\"mappedBy\":\"animal\"},\"registro_obs\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::registro-obs.registro-obs\",\"mappedBy\":\"animal\"},\"animal_tratamento_medicos\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::animal-tratamento-medico.animal-tratamento-medico\",\"mappedBy\":\"animal\"},\"numero_patrimonio\":{\"type\":\"biginteger\",\"required\":true,\"min\":\"1\",\"unique\":true},\"numero_de_microchip\":{\"type\":\"biginteger\",\"required\":true,\"min\":\"01\",\"unique\":true},\"nome_do_proprietario_anterior\":{\"type\":\"string\",\"required\":true,\"minLength\":1,\"regex\":\"^[A-Za-záàâãéèêíìóòôõúùç ]+$\"},\"data_aquisicao\":{\"type\":\"date\",\"required\":true},\"data_inclusao_carga\":{\"type\":\"date\",\"required\":true},\"valor_compra\":{\"type\":\"float\"},\"cor_animal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::cor-animal.cor-animal\"},\"forma_aquisicao\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::forma-aquisicao.forma-aquisicao\"},\"sexo\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::sexo.sexo\"},\"status_saude\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::status-saude.status-saude\"},\"status_operacional\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::status-operacional.status-operacional\"},\"raca\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::raca.raca\"},\"status_geral\":{\"type\":\"boolean\",\"default\":true,\"required\":true},\"especializacao\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::especializacao.especializacao\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"animal\",\"connection\":\"default\",\"uid\":\"api::animal.animal\",\"apiName\":\"animal\",\"globalId\":\"Animal\",\"actions\":{},\"lifecycles\":{}},\"api::animal-aplicacao.animal-aplicacao\":{\"kind\":\"collectionType\",\"collectionName\":\"animal_aplicacaos\",\"info\":{\"singularName\":\"animal-aplicacao\",\"pluralName\":\"animal-aplicacaos\",\"displayName\":\"Animal_Aplicacao\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"animal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::animal.animal\"},\"tipo_aplicacao\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tipo-aplicacao.tipo-aplicacao\"},\"lembrete_em_dias\":{\"type\":\"integer\",\"required\":true},\"data_aplicacao\":{\"type\":\"date\",\"required\":false},\"data_proxima_aplicacao\":{\"type\":\"date\",\"required\":false},\"aplicado\":{\"type\":\"boolean\",\"default\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"animal_aplicacaos\",\"info\":{\"singularName\":\"animal-aplicacao\",\"pluralName\":\"animal-aplicacaos\",\"displayName\":\"Animal_Aplicacao\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"animal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::animal.animal\"},\"tipo_aplicacao\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tipo-aplicacao.tipo-aplicacao\"},\"lembrete_em_dias\":{\"type\":\"integer\",\"required\":true},\"data_aplicacao\":{\"type\":\"date\",\"required\":false},\"data_proxima_aplicacao\":{\"type\":\"date\",\"required\":false},\"aplicado\":{\"type\":\"boolean\",\"default\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"animal-aplicacao\",\"connection\":\"default\",\"uid\":\"api::animal-aplicacao.animal-aplicacao\",\"apiName\":\"animal-aplicacao\",\"globalId\":\"AnimalAplicacao\",\"actions\":{},\"lifecycles\":{}},\"api::animal-tratamento-medico.animal-tratamento-medico\":{\"kind\":\"collectionType\",\"collectionName\":\"animal_tratamento_medicos\",\"info\":{\"singularName\":\"animal-tratamento-medico\",\"pluralName\":\"animal-tratamento-medicos\",\"displayName\":\"Animal_Tratamento_Medico\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"animal\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::animal.animal\",\"inversedBy\":\"animal_tratamento_medicos\"},\"tratamento_medico\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tratamento-medico.tratamento-medico\",\"inversedBy\":\"animal_tratamento_medico\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"animal_tratamento_medicos\",\"info\":{\"singularName\":\"animal-tratamento-medico\",\"pluralName\":\"animal-tratamento-medicos\",\"displayName\":\"Animal_Tratamento_Medico\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"animal\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::animal.animal\",\"inversedBy\":\"animal_tratamento_medicos\"},\"tratamento_medico\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tratamento-medico.tratamento-medico\",\"inversedBy\":\"animal_tratamento_medico\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"animal-tratamento-medico\",\"connection\":\"default\",\"uid\":\"api::animal-tratamento-medico.animal-tratamento-medico\",\"apiName\":\"animal-tratamento-medico\",\"globalId\":\"AnimalTratamentoMedico\",\"actions\":{},\"lifecycles\":{}},\"api::animal-vacina.animal-vacina\":{\"kind\":\"collectionType\",\"collectionName\":\"animal_vacinas\",\"info\":{\"singularName\":\"animal-vacina\",\"pluralName\":\"animal-vacinas\",\"displayName\":\"animal_vacina\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"data_proxima_aplicacao\":{\"type\":\"date\"},\"anotacoes\":{\"type\":\"string\"},\"lembrete_em_dias\":{\"type\":\"integer\",\"required\":true},\"data_aplicacao\":{\"type\":\"date\",\"required\":false},\"dose_atual\":{\"type\":\"integer\",\"required\":true},\"animal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::animal.animal\"},\"aplicado\":{\"type\":\"boolean\",\"default\":false},\"foto_etiqueta\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"doses_totais\":{\"type\":\"integer\"},\"nome_vacina\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::marca-vacina.marca-vacina\"},\"intervalo_entre_doses\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"animal_vacinas\",\"info\":{\"singularName\":\"animal-vacina\",\"pluralName\":\"animal-vacinas\",\"displayName\":\"animal_vacina\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"data_proxima_aplicacao\":{\"type\":\"date\"},\"anotacoes\":{\"type\":\"string\"},\"lembrete_em_dias\":{\"type\":\"integer\",\"required\":true},\"data_aplicacao\":{\"type\":\"date\",\"required\":false},\"dose_atual\":{\"type\":\"integer\",\"required\":true},\"animal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::animal.animal\"},\"aplicado\":{\"type\":\"boolean\",\"default\":false},\"foto_etiqueta\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"doses_totais\":{\"type\":\"integer\"},\"nome_vacina\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::marca-vacina.marca-vacina\"},\"intervalo_entre_doses\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"animal-vacina\",\"connection\":\"default\",\"uid\":\"api::animal-vacina.animal-vacina\",\"apiName\":\"animal-vacina\",\"globalId\":\"AnimalVacina\",\"actions\":{},\"lifecycles\":{}},\"api::categoria-obs-saude.categoria-obs-saude\":{\"kind\":\"collectionType\",\"collectionName\":\"categoria_obs_saudes\",\"info\":{\"singularName\":\"categoria-obs-saude\",\"pluralName\":\"categoria-obs-saudes\",\"displayName\":\"Categoria_obs_saude\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"observacao\":{\"type\":\"text\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"categoria_obs_saudes\",\"info\":{\"singularName\":\"categoria-obs-saude\",\"pluralName\":\"categoria-obs-saudes\",\"displayName\":\"Categoria_obs_saude\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"observacao\":{\"type\":\"text\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"categoria-obs-saude\",\"connection\":\"default\",\"uid\":\"api::categoria-obs-saude.categoria-obs-saude\",\"apiName\":\"categoria-obs-saude\",\"globalId\":\"CategoriaObsSaude\",\"actions\":{},\"lifecycles\":{}},\"api::condutor.condutor\":{\"kind\":\"collectionType\",\"collectionName\":\"condutors\",\"info\":{\"singularName\":\"condutor\",\"pluralName\":\"condutors\",\"displayName\":\"Condutor\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"text\",\"required\":true,\"minLength\":3},\"ativo\":{\"type\":\"boolean\",\"required\":false},\"unidade\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::unidade.unidade\"},\"rg\":{\"type\":\"biginteger\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"condutors\",\"info\":{\"singularName\":\"condutor\",\"pluralName\":\"condutors\",\"displayName\":\"Condutor\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"text\",\"required\":true,\"minLength\":3},\"ativo\":{\"type\":\"boolean\",\"required\":false},\"unidade\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::unidade.unidade\"},\"rg\":{\"type\":\"biginteger\",\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"condutor\",\"connection\":\"default\",\"uid\":\"api::condutor.condutor\",\"apiName\":\"condutor\",\"globalId\":\"Condutor\",\"actions\":{},\"lifecycles\":{}},\"api::consulta.consulta\":{\"kind\":\"collectionType\",\"collectionName\":\"consultas\",\"info\":{\"singularName\":\"consulta\",\"pluralName\":\"consultas\",\"displayName\":\"Consulta\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"data_consulta\":{\"type\":\"date\",\"required\":true},\"anamnese\":{\"type\":\"text\",\"required\":true,\"minLength\":1},\"exame_fisico\":{\"type\":\"string\",\"required\":true,\"minLength\":1},\"diagnostico\":{\"type\":\"string\",\"required\":true,\"minLength\":1},\"animal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::animal.animal\"},\"retorno\":{\"type\":\"boolean\",\"required\":true},\"removido\":{\"type\":\"boolean\",\"default\":false},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"consultas\",\"info\":{\"singularName\":\"consulta\",\"pluralName\":\"consultas\",\"displayName\":\"Consulta\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"data_consulta\":{\"type\":\"date\",\"required\":true},\"anamnese\":{\"type\":\"text\",\"required\":true,\"minLength\":1},\"exame_fisico\":{\"type\":\"string\",\"required\":true,\"minLength\":1},\"diagnostico\":{\"type\":\"string\",\"required\":true,\"minLength\":1},\"animal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::animal.animal\"},\"retorno\":{\"type\":\"boolean\",\"required\":true},\"removido\":{\"type\":\"boolean\",\"default\":false},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"consulta\",\"connection\":\"default\",\"uid\":\"api::consulta.consulta\",\"apiName\":\"consulta\",\"globalId\":\"Consulta\",\"actions\":{},\"lifecycles\":{}},\"api::cor-animal.cor-animal\":{\"kind\":\"collectionType\",\"collectionName\":\"cor_animals\",\"info\":{\"singularName\":\"cor-animal\",\"pluralName\":\"cor-animals\",\"displayName\":\"Cor_Animal\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"cor_animals\",\"info\":{\"singularName\":\"cor-animal\",\"pluralName\":\"cor-animals\",\"displayName\":\"Cor_Animal\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"cor-animal\",\"connection\":\"default\",\"uid\":\"api::cor-animal.cor-animal\",\"apiName\":\"cor-animal\",\"globalId\":\"CorAnimal\",\"actions\":{},\"lifecycles\":{}},\"api::doenca.doenca\":{\"kind\":\"collectionType\",\"collectionName\":\"doencas\",\"info\":{\"singularName\":\"doenca\",\"pluralName\":\"doencas\",\"displayName\":\"Doenca\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"nome\":{\"type\":\"string\",\"required\":true,\"minLength\":1},\"ativo\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"doencas\",\"info\":{\"singularName\":\"doenca\",\"pluralName\":\"doencas\",\"displayName\":\"Doenca\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"nome\":{\"type\":\"string\",\"required\":true,\"minLength\":1},\"ativo\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"doenca\",\"connection\":\"default\",\"uid\":\"api::doenca.doenca\",\"apiName\":\"doenca\",\"globalId\":\"Doenca\",\"actions\":{},\"lifecycles\":{}},\"api::e-alergico.e-alergico\":{\"kind\":\"collectionType\",\"collectionName\":\"e_alergicos\",\"info\":{\"singularName\":\"e-alergico\",\"pluralName\":\"e-alergicos\",\"displayName\":\"E_alergico\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"animal\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::animal.animal\",\"inversedBy\":\"e_alergicos\"},\"medicamento\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::medicamento.medicamento\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"e_alergicos\",\"info\":{\"singularName\":\"e-alergico\",\"pluralName\":\"e-alergicos\",\"displayName\":\"E_alergico\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"animal\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::animal.animal\",\"inversedBy\":\"e_alergicos\"},\"medicamento\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::medicamento.medicamento\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"e-alergico\",\"connection\":\"default\",\"uid\":\"api::e-alergico.e-alergico\",\"apiName\":\"e-alergico\",\"globalId\":\"EAlergico\",\"actions\":{},\"lifecycles\":{}},\"api::e-causado.e-causado\":{\"kind\":\"collectionType\",\"collectionName\":\"e_causados\",\"info\":{\"singularName\":\"e-causado\",\"pluralName\":\"e-causados\",\"displayName\":\"E_causado\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"tratamento_medico\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::tratamento-medico.tratamento-medico\",\"inversedBy\":\"e_causados\"},\"doenca\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::doenca.doenca\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"e_causados\",\"info\":{\"singularName\":\"e-causado\",\"pluralName\":\"e-causados\",\"displayName\":\"E_causado\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"tratamento_medico\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::tratamento-medico.tratamento-medico\",\"inversedBy\":\"e_causados\"},\"doenca\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::doenca.doenca\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"e-causado\",\"connection\":\"default\",\"uid\":\"api::e-causado.e-causado\",\"apiName\":\"e-causado\",\"globalId\":\"ECausado\",\"actions\":{},\"lifecycles\":{}},\"api::especializacao.especializacao\":{\"kind\":\"collectionType\",\"collectionName\":\"especializacaos\",\"info\":{\"singularName\":\"especializacao\",\"pluralName\":\"especializacaos\",\"displayName\":\"Especializacao\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"especializacaos\",\"info\":{\"singularName\":\"especializacao\",\"pluralName\":\"especializacaos\",\"displayName\":\"Especializacao\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"especializacao\",\"connection\":\"default\",\"uid\":\"api::especializacao.especializacao\",\"apiName\":\"especializacao\",\"globalId\":\"Especializacao\",\"actions\":{},\"lifecycles\":{}},\"api::forma-aquisicao.forma-aquisicao\":{\"kind\":\"collectionType\",\"collectionName\":\"forma_aquisicaos\",\"info\":{\"singularName\":\"forma-aquisicao\",\"pluralName\":\"forma-aquisicaos\",\"displayName\":\"Forma_Aquisicao\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"forma_aquisicaos\",\"info\":{\"singularName\":\"forma-aquisicao\",\"pluralName\":\"forma-aquisicaos\",\"displayName\":\"Forma_Aquisicao\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"forma-aquisicao\",\"connection\":\"default\",\"uid\":\"api::forma-aquisicao.forma-aquisicao\",\"apiName\":\"forma-aquisicao\",\"globalId\":\"FormaAquisicao\",\"actions\":{},\"lifecycles\":{}},\"api::justificativa-baixa.justificativa-baixa\":{\"kind\":\"collectionType\",\"collectionName\":\"justificativa_baixas\",\"info\":{\"singularName\":\"justificativa-baixa\",\"pluralName\":\"justificativa-baixas\",\"displayName\":\"Justificativa_baixa\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"justificativa\":{\"type\":\"string\",\"minLength\":2,\"required\":true},\"animal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::animal.animal\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"justificativa_baixas\",\"info\":{\"singularName\":\"justificativa-baixa\",\"pluralName\":\"justificativa-baixas\",\"displayName\":\"Justificativa_baixa\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"justificativa\":{\"type\":\"string\",\"minLength\":2,\"required\":true},\"animal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::animal.animal\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"justificativa-baixa\",\"connection\":\"default\",\"uid\":\"api::justificativa-baixa.justificativa-baixa\",\"apiName\":\"justificativa-baixa\",\"globalId\":\"JustificativaBaixa\",\"actions\":{},\"lifecycles\":{}},\"api::marca-vacina.marca-vacina\":{\"kind\":\"collectionType\",\"collectionName\":\"marca_vacinas\",\"info\":{\"singularName\":\"marca-vacina\",\"pluralName\":\"marca-vacinas\",\"displayName\":\"Nome_Vacina\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nome\":{\"type\":\"string\",\"required\":true,\"minLength\":2},\"ativo\":{\"type\":\"boolean\",\"default\":true},\"tipo_vacina\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tipo-vacina.tipo-vacina\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"marca_vacinas\",\"info\":{\"singularName\":\"marca-vacina\",\"pluralName\":\"marca-vacinas\",\"displayName\":\"Nome_Vacina\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nome\":{\"type\":\"string\",\"required\":true,\"minLength\":2},\"ativo\":{\"type\":\"boolean\",\"default\":true},\"tipo_vacina\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tipo-vacina.tipo-vacina\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"marca-vacina\",\"connection\":\"default\",\"uid\":\"api::marca-vacina.marca-vacina\",\"apiName\":\"marca-vacina\",\"globalId\":\"MarcaVacina\",\"actions\":{},\"lifecycles\":{}},\"api::medicamento.medicamento\":{\"kind\":\"collectionType\",\"collectionName\":\"medicamentos\",\"info\":{\"singularName\":\"medicamento\",\"pluralName\":\"medicamentos\",\"displayName\":\"Medicamento\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nome\":{\"type\":\"string\",\"required\":true,\"minLength\":3,\"unique\":true},\"ativo\":{\"type\":\"boolean\",\"required\":false,\"default\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"medicamentos\",\"info\":{\"singularName\":\"medicamento\",\"pluralName\":\"medicamentos\",\"displayName\":\"Medicamento\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nome\":{\"type\":\"string\",\"required\":true,\"minLength\":3,\"unique\":true},\"ativo\":{\"type\":\"boolean\",\"required\":false,\"default\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"medicamento\",\"connection\":\"default\",\"uid\":\"api::medicamento.medicamento\",\"apiName\":\"medicamento\",\"globalId\":\"Medicamento\",\"actions\":{},\"lifecycles\":{}},\"api::possui.possui\":{\"kind\":\"collectionType\",\"collectionName\":\"possuis\",\"info\":{\"singularName\":\"possui\",\"pluralName\":\"possuis\",\"displayName\":\"Possui\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"tratamento_medico\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::tratamento-medico.tratamento-medico\",\"inversedBy\":\"possuis\"},\"medicamento\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::medicamento.medicamento\"},\"dosagem\":{\"type\":\"string\",\"required\":true},\"data_inicio\":{\"type\":\"date\",\"required\":true},\"data_fim\":{\"type\":\"date\"},\"medicamento_aplicado\":{\"type\":\"boolean\",\"required\":true},\"prescricao\":{\"type\":\"text\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"possuis\",\"info\":{\"singularName\":\"possui\",\"pluralName\":\"possuis\",\"displayName\":\"Possui\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"tratamento_medico\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::tratamento-medico.tratamento-medico\",\"inversedBy\":\"possuis\"},\"medicamento\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::medicamento.medicamento\"},\"dosagem\":{\"type\":\"string\",\"required\":true},\"data_inicio\":{\"type\":\"date\",\"required\":true},\"data_fim\":{\"type\":\"date\"},\"medicamento_aplicado\":{\"type\":\"boolean\",\"required\":true},\"prescricao\":{\"type\":\"text\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"possui\",\"connection\":\"default\",\"uid\":\"api::possui.possui\",\"apiName\":\"possui\",\"globalId\":\"Possui\",\"actions\":{},\"lifecycles\":{}},\"api::raca.raca\":{\"kind\":\"collectionType\",\"collectionName\":\"racas\",\"info\":{\"singularName\":\"raca\",\"pluralName\":\"racas\",\"displayName\":\"Raca\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"racas\",\"info\":{\"singularName\":\"raca\",\"pluralName\":\"racas\",\"displayName\":\"Raca\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"raca\",\"connection\":\"default\",\"uid\":\"api::raca.raca\",\"apiName\":\"raca\",\"globalId\":\"Raca\",\"actions\":{},\"lifecycles\":{}},\"api::racao.racao\":{\"kind\":\"collectionType\",\"collectionName\":\"racaos\",\"info\":{\"singularName\":\"racao\",\"pluralName\":\"racaos\",\"displayName\":\"Racao\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Quantidade\":{\"type\":\"integer\"},\"data_de_registro\":{\"type\":\"date\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"racaos\",\"info\":{\"singularName\":\"racao\",\"pluralName\":\"racaos\",\"displayName\":\"Racao\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Quantidade\":{\"type\":\"integer\"},\"data_de_registro\":{\"type\":\"date\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"racao\",\"connection\":\"default\",\"uid\":\"api::racao.racao\",\"apiName\":\"racao\",\"globalId\":\"Racao\",\"actions\":{},\"lifecycles\":{}},\"api::registro.registro\":{\"kind\":\"collectionType\",\"collectionName\":\"registros\",\"info\":{\"singularName\":\"registro\",\"pluralName\":\"registros\",\"displayName\":\"Registro\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"dia\":{\"type\":\"date\"},\"hora\":{\"type\":\"time\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"registros\",\"info\":{\"singularName\":\"registro\",\"pluralName\":\"registros\",\"displayName\":\"Registro\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"dia\":{\"type\":\"date\"},\"hora\":{\"type\":\"time\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"registro\",\"connection\":\"default\",\"uid\":\"api::registro.registro\",\"apiName\":\"registro\",\"globalId\":\"Registro\",\"actions\":{},\"lifecycles\":{}},\"api::registro-obs.registro-obs\":{\"kind\":\"collectionType\",\"collectionName\":\"registro_obss\",\"info\":{\"singularName\":\"registro-obs\",\"pluralName\":\"registro-obss\",\"displayName\":\"Registro_obs\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"categoria_obs_saude\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::categoria-obs-saude.categoria-obs-saude\"},\"animal\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::animal.animal\",\"inversedBy\":\"registro_obs\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"registro_obss\",\"info\":{\"singularName\":\"registro-obs\",\"pluralName\":\"registro-obss\",\"displayName\":\"Registro_obs\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"categoria_obs_saude\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::categoria-obs-saude.categoria-obs-saude\"},\"animal\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::animal.animal\",\"inversedBy\":\"registro_obs\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"registro-obs\",\"connection\":\"default\",\"uid\":\"api::registro-obs.registro-obs\",\"apiName\":\"registro-obs\",\"globalId\":\"RegistroObs\",\"actions\":{},\"lifecycles\":{}},\"api::registro-tratamento.registro-tratamento\":{\"kind\":\"collectionType\",\"collectionName\":\"registro_tratamentos\",\"info\":{\"singularName\":\"registro-tratamento\",\"pluralName\":\"registro-tratamentos\",\"displayName\":\"Registro_tratamento\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"registro\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::registro.registro\"},\"tratamento_medico\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tratamento-medico.tratamento-medico\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"registro_tratamentos\",\"info\":{\"singularName\":\"registro-tratamento\",\"pluralName\":\"registro-tratamentos\",\"displayName\":\"Registro_tratamento\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"registro\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::registro.registro\"},\"tratamento_medico\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tratamento-medico.tratamento-medico\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"registro-tratamento\",\"connection\":\"default\",\"uid\":\"api::registro-tratamento.registro-tratamento\",\"apiName\":\"registro-tratamento\",\"globalId\":\"RegistroTratamento\",\"actions\":{},\"lifecycles\":{}},\"api::sexo.sexo\":{\"kind\":\"collectionType\",\"collectionName\":\"sexos\",\"info\":{\"singularName\":\"sexo\",\"pluralName\":\"sexos\",\"displayName\":\"Sexo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"sexos\",\"info\":{\"singularName\":\"sexo\",\"pluralName\":\"sexos\",\"displayName\":\"Sexo\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"sexo\",\"connection\":\"default\",\"uid\":\"api::sexo.sexo\",\"apiName\":\"sexo\",\"globalId\":\"Sexo\",\"actions\":{},\"lifecycles\":{}},\"api::status-operacional.status-operacional\":{\"kind\":\"collectionType\",\"collectionName\":\"status_operacionals\",\"info\":{\"singularName\":\"status-operacional\",\"pluralName\":\"status-operacionals\",\"displayName\":\"Status_Operacional\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"status_operacionals\",\"info\":{\"singularName\":\"status-operacional\",\"pluralName\":\"status-operacionals\",\"displayName\":\"Status_Operacional\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"status-operacional\",\"connection\":\"default\",\"uid\":\"api::status-operacional.status-operacional\",\"apiName\":\"status-operacional\",\"globalId\":\"StatusOperacional\",\"actions\":{},\"lifecycles\":{}},\"api::status-saude.status-saude\":{\"kind\":\"collectionType\",\"collectionName\":\"status_saudes\",\"info\":{\"singularName\":\"status-saude\",\"pluralName\":\"status-saudes\",\"displayName\":\"Status_Saude\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"status_saudes\",\"info\":{\"singularName\":\"status-saude\",\"pluralName\":\"status-saudes\",\"displayName\":\"Status_Saude\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"status-saude\",\"connection\":\"default\",\"uid\":\"api::status-saude.status-saude\",\"apiName\":\"status-saude\",\"globalId\":\"StatusSaude\",\"actions\":{},\"lifecycles\":{}},\"api::tipo-aplicacao.tipo-aplicacao\":{\"kind\":\"collectionType\",\"collectionName\":\"tipo_aplicacaos\",\"info\":{\"singularName\":\"tipo-aplicacao\",\"pluralName\":\"tipo-aplicacaos\",\"displayName\":\"Tipo_aplicacao\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"nome_produto\":{\"type\":\"string\",\"required\":true},\"duracao_em_dias\":{\"type\":\"integer\",\"required\":true,\"min\":1},\"tipo_produto_antiparasitario\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tipo-produto-antiparasitario.tipo-produto-antiparasitario\"},\"ativo\":{\"type\":\"boolean\",\"required\":true,\"default\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"tipo_aplicacaos\",\"info\":{\"singularName\":\"tipo-aplicacao\",\"pluralName\":\"tipo-aplicacaos\",\"displayName\":\"Tipo_aplicacao\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"nome_produto\":{\"type\":\"string\",\"required\":true},\"duracao_em_dias\":{\"type\":\"integer\",\"required\":true,\"min\":1},\"tipo_produto_antiparasitario\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::tipo-produto-antiparasitario.tipo-produto-antiparasitario\"},\"ativo\":{\"type\":\"boolean\",\"required\":true,\"default\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"tipo-aplicacao\",\"connection\":\"default\",\"uid\":\"api::tipo-aplicacao.tipo-aplicacao\",\"apiName\":\"tipo-aplicacao\",\"globalId\":\"TipoAplicacao\",\"actions\":{},\"lifecycles\":{}},\"api::tipo-produto-antiparasitario.tipo-produto-antiparasitario\":{\"kind\":\"collectionType\",\"collectionName\":\"tipo_produto_antiparasitarios\",\"info\":{\"singularName\":\"tipo-produto-antiparasitario\",\"pluralName\":\"tipo-produto-antiparasitarios\",\"displayName\":\"tipo_produto_antiparasitario\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"descricao\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"tipo_produto_antiparasitarios\",\"info\":{\"singularName\":\"tipo-produto-antiparasitario\",\"pluralName\":\"tipo-produto-antiparasitarios\",\"displayName\":\"tipo_produto_antiparasitario\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"descricao\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"tipo-produto-antiparasitario\",\"connection\":\"default\",\"uid\":\"api::tipo-produto-antiparasitario.tipo-produto-antiparasitario\",\"apiName\":\"tipo-produto-antiparasitario\",\"globalId\":\"TipoProdutoAntiparasitario\",\"actions\":{},\"lifecycles\":{}},\"api::tipo-vacina.tipo-vacina\":{\"kind\":\"collectionType\",\"collectionName\":\"tipo_vacinas\",\"info\":{\"singularName\":\"tipo-vacina\",\"pluralName\":\"tipo-vacinas\",\"displayName\":\"Tipo_Vacina\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"ativo\":{\"type\":\"boolean\",\"default\":true,\"required\":true},\"tipo\":{\"type\":\"string\",\"required\":true,\"minLength\":1},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"tipo_vacinas\",\"info\":{\"singularName\":\"tipo-vacina\",\"pluralName\":\"tipo-vacinas\",\"displayName\":\"Tipo_Vacina\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"ativo\":{\"type\":\"boolean\",\"default\":true,\"required\":true},\"tipo\":{\"type\":\"string\",\"required\":true,\"minLength\":1}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"tipo-vacina\",\"connection\":\"default\",\"uid\":\"api::tipo-vacina.tipo-vacina\",\"apiName\":\"tipo-vacina\",\"globalId\":\"TipoVacina\",\"actions\":{},\"lifecycles\":{}},\"api::tratamento-medico.tratamento-medico\":{\"kind\":\"collectionType\",\"collectionName\":\"tratamento_medicos\",\"info\":{\"singularName\":\"tratamento-medico\",\"pluralName\":\"tratamento-medicos\",\"displayName\":\"Tratamento_medico\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"data_inicio\":{\"type\":\"date\",\"required\":true},\"data_fim\":{\"type\":\"date\",\"required\":false},\"tipo_tratamento\":{\"type\":\"enumeration\",\"enum\":[\"de rotina\",\"esporádico\"],\"required\":true},\"tratamento_atual\":{\"type\":\"boolean\"},\"e_causados\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::e-causado.e-causado\",\"mappedBy\":\"tratamento_medico\"},\"possuis\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::possui.possui\",\"mappedBy\":\"tratamento_medico\"},\"consulta\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::consulta.consulta\"},\"animal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::animal.animal\"},\"animal_tratamento_medico\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::animal-tratamento-medico.animal-tratamento-medico\",\"mappedBy\":\"tratamento_medico\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"tratamento_medicos\",\"info\":{\"singularName\":\"tratamento-medico\",\"pluralName\":\"tratamento-medicos\",\"displayName\":\"Tratamento_medico\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"data_inicio\":{\"type\":\"date\",\"required\":true},\"data_fim\":{\"type\":\"date\",\"required\":false},\"tipo_tratamento\":{\"type\":\"enumeration\",\"enum\":[\"de rotina\",\"esporádico\"],\"required\":true},\"tratamento_atual\":{\"type\":\"boolean\"},\"e_causados\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::e-causado.e-causado\",\"mappedBy\":\"tratamento_medico\"},\"possuis\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::possui.possui\",\"mappedBy\":\"tratamento_medico\"},\"consulta\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::consulta.consulta\"},\"animal\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::animal.animal\"},\"animal_tratamento_medico\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::animal-tratamento-medico.animal-tratamento-medico\",\"mappedBy\":\"tratamento_medico\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"tratamento-medico\",\"connection\":\"default\",\"uid\":\"api::tratamento-medico.tratamento-medico\",\"apiName\":\"tratamento-medico\",\"globalId\":\"TratamentoMedico\",\"actions\":{},\"lifecycles\":{}},\"api::unidade.unidade\":{\"kind\":\"collectionType\",\"collectionName\":\"unidades\",\"info\":{\"singularName\":\"unidade\",\"pluralName\":\"unidades\",\"displayName\":\"Unidade\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"text\",\"required\":true,\"minLength\":1},\"Endereco\":{\"type\":\"text\",\"required\":true,\"minLength\":1},\"ativo\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"unidades\",\"info\":{\"singularName\":\"unidade\",\"pluralName\":\"unidades\",\"displayName\":\"Unidade\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"text\",\"required\":true,\"minLength\":1},\"Endereco\":{\"type\":\"text\",\"required\":true,\"minLength\":1},\"ativo\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"unidade\",\"connection\":\"default\",\"uid\":\"api::unidade.unidade\",\"apiName\":\"unidade\",\"globalId\":\"Unidade\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::api::animal.animal', '{\"uid\":\"api::animal.animal\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Nome\",\"defaultSortBy\":\"Nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"Data_nascimento\":{\"edit\":{\"label\":\"Data_nascimento\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Data_nascimento\",\"searchable\":true,\"sortable\":true}},\"Idade\":{\"edit\":{\"label\":\"Idade\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Idade\",\"searchable\":true,\"sortable\":true}},\"Box\":{\"edit\":{\"label\":\"Box\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Box\",\"searchable\":true,\"sortable\":true}},\"Alocacao\":{\"edit\":{\"label\":\"Alocacao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Alocacao\",\"searchable\":true,\"sortable\":true}},\"Condutor_principal\":{\"edit\":{\"label\":\"Condutor_principal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"rg\"},\"list\":{\"label\":\"Condutor_principal\",\"searchable\":true,\"sortable\":true}},\"Condutor_secundario\":{\"edit\":{\"label\":\"Condutor_secundario\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"rg\"},\"list\":{\"label\":\"Condutor_secundario\",\"searchable\":true,\"sortable\":true}},\"Foto_frente\":{\"edit\":{\"label\":\"Foto_frente\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Foto_frente\",\"searchable\":false,\"sortable\":false}},\"Foto_direita\":{\"edit\":{\"label\":\"Foto_direita\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Foto_direita\",\"searchable\":false,\"sortable\":false}},\"Foto_esquerda\":{\"edit\":{\"label\":\"Foto_esquerda\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Foto_esquerda\",\"searchable\":false,\"sortable\":false}},\"Justificativa_baixado\":{\"edit\":{\"label\":\"Justificativa_baixado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Justificativa_baixado\",\"searchable\":true,\"sortable\":true}},\"e_alergicos\":{\"edit\":{\"label\":\"e_alergicos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"e_alergicos\",\"searchable\":false,\"sortable\":false}},\"registro_obs\":{\"edit\":{\"label\":\"registro_obs\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"registro_obs\",\"searchable\":false,\"sortable\":false}},\"animal_tratamento_medicos\":{\"edit\":{\"label\":\"animal_tratamento_medicos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"animal_tratamento_medicos\",\"searchable\":false,\"sortable\":false}},\"numero_patrimonio\":{\"edit\":{\"label\":\"numero_patrimonio\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"numero_patrimonio\",\"searchable\":true,\"sortable\":true}},\"numero_de_microchip\":{\"edit\":{\"label\":\"numero_de_microchip\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"numero_de_microchip\",\"searchable\":true,\"sortable\":true}},\"nome_do_proprietario_anterior\":{\"edit\":{\"label\":\"nome_do_proprietario_anterior\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nome_do_proprietario_anterior\",\"searchable\":true,\"sortable\":true}},\"data_aquisicao\":{\"edit\":{\"label\":\"data_aquisicao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data_aquisicao\",\"searchable\":true,\"sortable\":true}},\"data_inclusao_carga\":{\"edit\":{\"label\":\"data_inclusao_carga\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data_inclusao_carga\",\"searchable\":true,\"sortable\":true}},\"valor_compra\":{\"edit\":{\"label\":\"valor_compra\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"valor_compra\",\"searchable\":true,\"sortable\":true}},\"cor_animal\":{\"edit\":{\"label\":\"cor_animal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"cor_animal\",\"searchable\":true,\"sortable\":true}},\"forma_aquisicao\":{\"edit\":{\"label\":\"forma_aquisicao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"forma_aquisicao\",\"searchable\":true,\"sortable\":true}},\"sexo\":{\"edit\":{\"label\":\"sexo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"sexo\",\"searchable\":true,\"sortable\":true}},\"status_saude\":{\"edit\":{\"label\":\"status_saude\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"status_saude\",\"searchable\":true,\"sortable\":true}},\"status_operacional\":{\"edit\":{\"label\":\"status_operacional\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"status_operacional\",\"searchable\":true,\"sortable\":true}},\"raca\":{\"edit\":{\"label\":\"raca\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"raca\",\"searchable\":true,\"sortable\":true}},\"status_geral\":{\"edit\":{\"label\":\"status_geral\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status_geral\",\"searchable\":true,\"sortable\":true}},\"especializacao\":{\"edit\":{\"label\":\"especializacao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"especializacao\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"Nome\",\"Data_nascimento\"],\"edit\":[[{\"name\":\"Nome\",\"size\":6}],[{\"name\":\"Data_nascimento\",\"size\":4}],[{\"name\":\"Idade\",\"size\":4},{\"name\":\"Box\",\"size\":6}],[{\"name\":\"Alocacao\",\"size\":6},{\"name\":\"Condutor_principal\",\"size\":6}],[{\"name\":\"Condutor_secundario\",\"size\":6}],[{\"name\":\"Foto_frente\",\"size\":6}],[{\"name\":\"Foto_direita\",\"size\":6}],[{\"name\":\"Foto_esquerda\",\"size\":6}],[{\"name\":\"Justificativa_baixado\",\"size\":6}],[{\"name\":\"e_alergicos\",\"size\":6},{\"name\":\"registro_obs\",\"size\":6}],[{\"name\":\"animal_tratamento_medicos\",\"size\":6}],[{\"name\":\"numero_patrimonio\",\"size\":4},{\"name\":\"numero_de_microchip\",\"size\":4}],[{\"name\":\"nome_do_proprietario_anterior\",\"size\":6}],[{\"name\":\"data_aquisicao\",\"size\":4}],[{\"name\":\"data_inclusao_carga\",\"size\":4},{\"name\":\"valor_compra\",\"size\":4}],[{\"name\":\"cor_animal\",\"size\":6},{\"name\":\"forma_aquisicao\",\"size\":6}],[{\"name\":\"sexo\",\"size\":6}],[{\"name\":\"status_saude\",\"size\":6},{\"name\":\"status_operacional\",\"size\":6}],[{\"name\":\"raca\",\"size\":6},{\"name\":\"status_geral\",\"size\":4}],[{\"name\":\"especializacao\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"uid\":\"admin::transfer-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"uid\":\"admin::transfer-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"cpf\":{\"edit\":{\"label\":\"cpf\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cpf\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\",\"role\",\"cpf\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}],[{\"name\":\"cpf\",\"size\":4}]]}}', 'object', NULL, NULL),
(16, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(17, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(18, 'plugin_upload_metrics', '{\"weeklySchedule\":\"42 41 18 * * 5\",\"lastWeeklyUpdate\":1714156902018}', 'object', NULL, NULL),
(19, 'plugin_documentation_config', '{\"restrictedAccess\":true,\"password\":\"$2a$10$Hr0ItldFjaHooslt6hNCvuwECjP3dzlVvLOSX5KACXJA9Y7KiDxsq\"}', 'object', NULL, NULL),
(20, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(21, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"],\"redirectUri\":\"http://localhost:1337/api/connect/discord/callback\"},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"],\"redirectUri\":\"http://localhost:1337/api/connect/facebook/callback\"},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"],\"redirectUri\":\"http://localhost:1337/api/connect/google/callback\"},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"],\"redirectUri\":\"http://localhost:1337/api/connect/github/callback\"},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"],\"redirectUri\":\"http://localhost:1337/api/connect/microsoft/callback\"},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\",\"redirectUri\":\"http://localhost:1337/api/connect/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"],\"redirectUri\":\"http://localhost:1337/api/connect/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"],\"redirectUri\":\"http://localhost:1337/api/connect/vk/callback\"},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"],\"redirectUri\":\"http://localhost:1337/api/connect/twitch/callback\"},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"],\"redirectUri\":\"http://localhost:1337/api/connect/linkedin/callback\"},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"],\"redirectUri\":\"http://localhost:1337/api/connect/cognito/callback\"},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"],\"redirectUri\":\"http://localhost:1337/api/connect/reddit/callback\"},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"],\"redirectUri\":\"http://localhost:1337/api/connect/auth0/callback\"},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\",\"redirectUri\":\"http://localhost:1337/api/connect/cas/callback\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"],\"redirectUri\":\"http://localhost:1337/api/connect/patreon/callback\"}}', 'object', NULL, NULL),
(22, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(23, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(24, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::api::racao.racao', '{\"uid\":\"api::racao.racao\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Quantidade\":{\"edit\":{\"label\":\"Quantidade\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Quantidade\",\"searchable\":true,\"sortable\":true}},\"data_de_registro\":{\"edit\":{\"label\":\"data_de_registro\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data_de_registro\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Quantidade\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"Quantidade\",\"size\":4}],[{\"name\":\"data_de_registro\",\"size\":4}]]}}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::api::unidade.unidade', '{\"uid\":\"api::unidade.unidade\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"Endereco\":{\"edit\":{\"label\":\"Endereco\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Endereco\",\"searchable\":true,\"sortable\":true}},\"ativo\":{\"edit\":{\"label\":\"ativo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ativo\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"Nome\",\"size\":6},{\"name\":\"Endereco\",\"size\":6}],[{\"name\":\"ativo\",\"size\":4}]],\"list\":[\"id\",\"Nome\",\"Endereco\",\"ativo\",\"createdAt\"]}}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::api::condutor.condutor', '{\"uid\":\"api::condutor.condutor\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"rg\",\"defaultSortBy\":\"rg\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"rg\":{\"edit\":{\"label\":\"rg\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"rg\",\"searchable\":true,\"sortable\":true}},\"ativo\":{\"edit\":{\"label\":\"ativo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ativo\",\"searchable\":true,\"sortable\":true}},\"unidade\":{\"edit\":{\"label\":\"unidade\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"unidade\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"Nome\",\"size\":6}],[{\"name\":\"ativo\",\"size\":4},{\"name\":\"rg\",\"size\":6}],[{\"name\":\"unidade\",\"size\":6}]],\"list\":[\"id\",\"Nome\",\"ativo\",\"rg\",\"unidade\"]}}', 'object', NULL, NULL),
(29, 'plugin_upload_api-folder', '{\"id\":1}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_content_types::api::justificativa-baixa.justificativa-baixa', '{\"uid\":\"api::justificativa-baixa.justificativa-baixa\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"justificativa\",\"defaultSortBy\":\"justificativa\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"justificativa\":{\"edit\":{\"label\":\"justificativa\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"justificativa\",\"searchable\":true,\"sortable\":true}},\"animal\":{\"edit\":{\"label\":\"animal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"animal\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"justificativa\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"justificativa\",\"size\":6},{\"name\":\"animal\",\"size\":6}]]}}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_content_types::api::tratamento-medico.tratamento-medico', '{\"uid\":\"api::tratamento-medico.tratamento-medico\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"data_inicio\":{\"edit\":{\"label\":\"data_inicio\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data_inicio\",\"searchable\":true,\"sortable\":true}},\"data_fim\":{\"edit\":{\"label\":\"data_fim\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data_fim\",\"searchable\":true,\"sortable\":true}},\"tipo_tratamento\":{\"edit\":{\"label\":\"tipo_tratamento\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tipo_tratamento\",\"searchable\":true,\"sortable\":true}},\"tratamento_atual\":{\"edit\":{\"label\":\"tratamento_atual\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tratamento_atual\",\"searchable\":true,\"sortable\":true}},\"e_causados\":{\"edit\":{\"label\":\"e_causados\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"e_causados\",\"searchable\":false,\"sortable\":false}},\"possuis\":{\"edit\":{\"label\":\"possuis\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"possuis\",\"searchable\":false,\"sortable\":false}},\"consulta\":{\"edit\":{\"label\":\"consulta\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"exame_fisico\"},\"list\":{\"label\":\"consulta\",\"searchable\":true,\"sortable\":true}},\"animal\":{\"edit\":{\"label\":\"animal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"animal\",\"searchable\":true,\"sortable\":true}},\"animal_tratamento_medico\":{\"edit\":{\"label\":\"animal_tratamento_medico\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"animal_tratamento_medico\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"data_inicio\",\"data_fim\",\"tipo_tratamento\"],\"edit\":[[{\"name\":\"data_inicio\",\"size\":6},{\"name\":\"data_fim\",\"size\":6}],[{\"name\":\"tipo_tratamento\",\"size\":6},{\"name\":\"tratamento_atual\",\"size\":4}],[{\"name\":\"e_causados\",\"size\":6}],[{\"name\":\"possuis\",\"size\":6},{\"name\":\"consulta\",\"size\":6}],[{\"name\":\"animal\",\"size\":6},{\"name\":\"animal_tratamento_medico\",\"size\":6}]]}}', 'object', NULL, NULL),
(33, 'plugin_content_manager_configuration_content_types::api::doenca.doenca', '{\"uid\":\"api::doenca.doenca\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nome\",\"defaultSortBy\":\"nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nome\":{\"edit\":{\"label\":\"nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nome\",\"searchable\":true,\"sortable\":true}},\"ativo\":{\"edit\":{\"label\":\"ativo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ativo\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"nome\",\"size\":6},{\"name\":\"ativo\",\"size\":4}]],\"list\":[\"id\",\"nome\",\"ativo\"]}}', 'object', NULL, NULL),
(34, 'plugin_content_manager_configuration_content_types::api::e-causado.e-causado', '{\"uid\":\"api::e-causado.e-causado\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"tratamento_medico\":{\"edit\":{\"label\":\"tratamento_medico\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"tratamento_medico\",\"searchable\":true,\"sortable\":true}},\"doenca\":{\"edit\":{\"label\":\"doenca\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nome\"},\"list\":{\"label\":\"doenca\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"tratamento_medico\",\"createdAt\",\"doenca\"],\"edit\":[[{\"name\":\"tratamento_medico\",\"size\":6},{\"name\":\"doenca\",\"size\":6}]]}}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_content_types::api::medicamento.medicamento', '{\"uid\":\"api::medicamento.medicamento\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nome\",\"defaultSortBy\":\"nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nome\":{\"edit\":{\"label\":\"nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nome\",\"searchable\":true,\"sortable\":true}},\"ativo\":{\"edit\":{\"label\":\"ativo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ativo\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nome\",\"ativo\"],\"edit\":[[{\"name\":\"nome\",\"size\":6},{\"name\":\"ativo\",\"size\":4}]]}}', 'object', NULL, NULL),
(36, 'plugin_content_manager_configuration_content_types::api::possui.possui', '{\"uid\":\"api::possui.possui\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"tratamento_medico\":{\"edit\":{\"label\":\"tratamento_medico\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"tratamento_medico\",\"searchable\":true,\"sortable\":true}},\"medicamento\":{\"edit\":{\"label\":\"medicamento\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nome\"},\"list\":{\"label\":\"medicamento\",\"searchable\":true,\"sortable\":true}},\"dosagem\":{\"edit\":{\"label\":\"dosagem\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dosagem\",\"searchable\":true,\"sortable\":true}},\"data_inicio\":{\"edit\":{\"label\":\"data_inicio\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data_inicio\",\"searchable\":true,\"sortable\":true}},\"data_fim\":{\"edit\":{\"label\":\"data_fim\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data_fim\",\"searchable\":true,\"sortable\":true}},\"medicamento_aplicado\":{\"edit\":{\"label\":\"medicamento_aplicado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"medicamento_aplicado\",\"searchable\":true,\"sortable\":true}},\"prescricao\":{\"edit\":{\"label\":\"prescricao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"prescricao\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"tratamento_medico\",\"createdAt\",\"medicamento\"],\"edit\":[[{\"name\":\"tratamento_medico\",\"size\":6},{\"name\":\"medicamento\",\"size\":6}],[{\"name\":\"dosagem\",\"size\":6},{\"name\":\"data_inicio\",\"size\":4}],[{\"name\":\"data_fim\",\"size\":4},{\"name\":\"medicamento_aplicado\",\"size\":4}],[{\"name\":\"prescricao\",\"size\":6}]]}}', 'object', NULL, NULL),
(37, 'plugin_content_manager_configuration_content_types::api::e-alergico.e-alergico', '{\"uid\":\"api::e-alergico.e-alergico\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"animal\":{\"edit\":{\"label\":\"animal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"animal\",\"searchable\":true,\"sortable\":true}},\"medicamento\":{\"edit\":{\"label\":\"medicamento\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nome\"},\"list\":{\"label\":\"medicamento\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"animal\",\"medicamento\",\"createdAt\"],\"edit\":[[{\"name\":\"animal\",\"size\":6},{\"name\":\"medicamento\",\"size\":6}]]}}', 'object', NULL, NULL),
(38, 'plugin_content_manager_configuration_content_types::api::registro.registro', '{\"uid\":\"api::registro.registro\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"dia\":{\"edit\":{\"label\":\"dia\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dia\",\"searchable\":true,\"sortable\":true}},\"hora\":{\"edit\":{\"label\":\"hora\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hora\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"dia\",\"hora\",\"createdAt\"],\"edit\":[[{\"name\":\"dia\",\"size\":4},{\"name\":\"hora\",\"size\":4}]]}}', 'object', NULL, NULL),
(39, 'plugin_content_manager_configuration_content_types::api::registro-tratamento.registro-tratamento', '{\"uid\":\"api::registro-tratamento.registro-tratamento\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"registro\":{\"edit\":{\"label\":\"registro\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"registro\",\"searchable\":true,\"sortable\":true}},\"tratamento_medico\":{\"edit\":{\"label\":\"tratamento_medico\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"tratamento_medico\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"registro\",\"tratamento_medico\",\"createdAt\"],\"edit\":[[{\"name\":\"registro\",\"size\":6},{\"name\":\"tratamento_medico\",\"size\":6}]]}}', 'object', NULL, NULL),
(40, 'plugin_content_manager_configuration_content_types::api::categoria-obs-saude.categoria-obs-saude', '{\"uid\":\"api::categoria-obs-saude.categoria-obs-saude\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"observacao\":{\"edit\":{\"label\":\"observacao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"observacao\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"observacao\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"observacao\",\"size\":6}]]}}', 'object', NULL, NULL),
(41, 'plugin_content_manager_configuration_content_types::api::registro-obs.registro-obs', '{\"uid\":\"api::registro-obs.registro-obs\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"categoria_obs_saude\":{\"edit\":{\"label\":\"categoria_obs_saude\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"categoria_obs_saude\",\"searchable\":true,\"sortable\":true}},\"animal\":{\"edit\":{\"label\":\"animal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"animal\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"categoria_obs_saude\",\"animal\",\"createdAt\"],\"edit\":[[{\"name\":\"categoria_obs_saude\",\"size\":6},{\"name\":\"animal\",\"size\":6}]]}}', 'object', NULL, NULL),
(42, 'plugin_content_manager_configuration_content_types::api::consulta.consulta', '{\"uid\":\"api::consulta.consulta\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"exame_fisico\",\"defaultSortBy\":\"exame_fisico\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"data_consulta\":{\"edit\":{\"label\":\"data_consulta\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data_consulta\",\"searchable\":true,\"sortable\":true}},\"anamnese\":{\"edit\":{\"label\":\"anamnese\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"anamnese\",\"searchable\":true,\"sortable\":true}},\"exame_fisico\":{\"edit\":{\"label\":\"exame_fisico\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"exame_fisico\",\"searchable\":true,\"sortable\":true}},\"diagnostico\":{\"edit\":{\"label\":\"diagnostico\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"diagnostico\",\"searchable\":true,\"sortable\":true}},\"animal\":{\"edit\":{\"label\":\"animal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"animal\",\"searchable\":true,\"sortable\":true}},\"retorno\":{\"edit\":{\"label\":\"retorno\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"retorno\",\"searchable\":true,\"sortable\":true}},\"removido\":{\"edit\":{\"label\":\"removido\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"removido\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"data_consulta\",\"anamnese\",\"exame_fisico\"],\"edit\":[[{\"name\":\"data_consulta\",\"size\":4}],[{\"name\":\"anamnese\",\"size\":6}],[{\"name\":\"exame_fisico\",\"size\":6}],[{\"name\":\"diagnostico\",\"size\":6},{\"name\":\"animal\",\"size\":6}],[{\"name\":\"retorno\",\"size\":4},{\"name\":\"removido\",\"size\":4}],[{\"name\":\"users_permissions_user\",\"size\":6}]]}}', 'object', NULL, NULL),
(45, 'plugin_content_manager_configuration_content_types::api::animal-tratamento-medico.animal-tratamento-medico', '{\"uid\":\"api::animal-tratamento-medico.animal-tratamento-medico\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"animal\":{\"edit\":{\"label\":\"animal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"animal\",\"searchable\":true,\"sortable\":true}},\"tratamento_medico\":{\"edit\":{\"label\":\"tratamento_medico\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"tratamento_medico\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"animal\",\"tratamento_medico\",\"createdAt\"],\"edit\":[[{\"name\":\"animal\",\"size\":6},{\"name\":\"tratamento_medico\",\"size\":6}]]}}', 'object', NULL, NULL),
(53, 'plugin_content_manager_configuration_content_types::api::tipo-produto-antiparasitario.tipo-produto-antiparasitario', '{\"uid\":\"api::tipo-produto-antiparasitario.tipo-produto-antiparasitario\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"descricao\",\"defaultSortBy\":\"descricao\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"descricao\":{\"edit\":{\"label\":\"descricao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"descricao\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"descricao\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"descricao\",\"size\":6}]]}}', 'object', NULL, NULL),
(54, 'plugin_content_manager_configuration_content_types::api::tipo-vacina.tipo-vacina', '{\"uid\":\"api::tipo-vacina.tipo-vacina\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"tipo\",\"defaultSortBy\":\"tipo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"ativo\":{\"edit\":{\"label\":\"ativo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ativo\",\"searchable\":true,\"sortable\":true}},\"tipo\":{\"edit\":{\"label\":\"tipo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tipo\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"tipo\"],\"edit\":[[{\"name\":\"ativo\",\"size\":4},{\"name\":\"tipo\",\"size\":6}]]}}', 'object', NULL, NULL),
(55, 'plugin_content_manager_configuration_content_types::api::animal-vacina.animal-vacina', '{\"uid\":\"api::animal-vacina.animal-vacina\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"anotacoes\",\"defaultSortBy\":\"anotacoes\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"data_proxima_aplicacao\":{\"edit\":{\"label\":\"data_proxima_aplicacao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data_proxima_aplicacao\",\"searchable\":true,\"sortable\":true}},\"anotacoes\":{\"edit\":{\"label\":\"anotacoes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"anotacoes\",\"searchable\":true,\"sortable\":true}},\"lembrete_em_dias\":{\"edit\":{\"label\":\"lembrete_em_dias\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lembrete_em_dias\",\"searchable\":true,\"sortable\":true}},\"data_aplicacao\":{\"edit\":{\"label\":\"data_aplicacao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data_aplicacao\",\"searchable\":true,\"sortable\":true}},\"dose_atual\":{\"edit\":{\"label\":\"dose_atual\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dose_atual\",\"searchable\":true,\"sortable\":true}},\"animal\":{\"edit\":{\"label\":\"animal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"animal\",\"searchable\":true,\"sortable\":true}},\"aplicado\":{\"edit\":{\"label\":\"aplicado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"aplicado\",\"searchable\":true,\"sortable\":true}},\"foto_etiqueta\":{\"edit\":{\"label\":\"foto_etiqueta\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"foto_etiqueta\",\"searchable\":false,\"sortable\":false}},\"doses_totais\":{\"edit\":{\"label\":\"doses_totais\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"doses_totais\",\"searchable\":true,\"sortable\":true}},\"nome_vacina\":{\"edit\":{\"label\":\"nome_vacina\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nome\"},\"list\":{\"label\":\"nome_vacina\",\"searchable\":true,\"sortable\":true}},\"intervalo_entre_doses\":{\"edit\":{\"label\":\"intervalo_entre_doses\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"intervalo_entre_doses\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"data_proxima_aplicacao\",\"anotacoes\",\"lembrete_em_dias\"],\"edit\":[[{\"name\":\"data_proxima_aplicacao\",\"size\":4},{\"name\":\"anotacoes\",\"size\":6}],[{\"name\":\"lembrete_em_dias\",\"size\":4},{\"name\":\"data_aplicacao\",\"size\":4},{\"name\":\"dose_atual\",\"size\":4}],[{\"name\":\"animal\",\"size\":6}],[{\"name\":\"aplicado\",\"size\":4},{\"name\":\"foto_etiqueta\",\"size\":6}],[{\"name\":\"doses_totais\",\"size\":4}],[{\"name\":\"intervalo_entre_doses\",\"size\":4},{\"name\":\"nome_vacina\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(56, 'plugin_content_manager_configuration_content_types::api::tipo-aplicacao.tipo-aplicacao', '{\"uid\":\"api::tipo-aplicacao.tipo-aplicacao\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nome_produto\",\"defaultSortBy\":\"nome_produto\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nome_produto\":{\"edit\":{\"label\":\"nome_produto\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nome_produto\",\"searchable\":true,\"sortable\":true}},\"duracao_em_dias\":{\"edit\":{\"label\":\"duracao_em_dias\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"duracao_em_dias\",\"searchable\":true,\"sortable\":true}},\"tipo_produto_antiparasitario\":{\"edit\":{\"label\":\"tipo_produto_antiparasitario\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"descricao\"},\"list\":{\"label\":\"tipo_produto_antiparasitario\",\"searchable\":true,\"sortable\":true}},\"ativo\":{\"edit\":{\"label\":\"ativo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ativo\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nome_produto\",\"duracao_em_dias\",\"tipo_produto_antiparasitario\"],\"edit\":[[{\"name\":\"nome_produto\",\"size\":6},{\"name\":\"duracao_em_dias\",\"size\":4}],[{\"name\":\"tipo_produto_antiparasitario\",\"size\":6},{\"name\":\"ativo\",\"size\":4}]]}}', 'object', NULL, NULL),
(57, 'plugin_content_manager_configuration_content_types::api::animal-aplicacao.animal-aplicacao', '{\"uid\":\"api::animal-aplicacao.animal-aplicacao\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"animal\":{\"edit\":{\"label\":\"animal\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"animal\",\"searchable\":true,\"sortable\":true}},\"tipo_aplicacao\":{\"edit\":{\"label\":\"tipo_aplicacao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nome_produto\"},\"list\":{\"label\":\"tipo_aplicacao\",\"searchable\":true,\"sortable\":true}},\"lembrete_em_dias\":{\"edit\":{\"label\":\"lembrete_em_dias\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lembrete_em_dias\",\"searchable\":true,\"sortable\":true}},\"data_aplicacao\":{\"edit\":{\"label\":\"data_aplicacao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data_aplicacao\",\"searchable\":true,\"sortable\":true}},\"data_proxima_aplicacao\":{\"edit\":{\"label\":\"data_proxima_aplicacao\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"data_proxima_aplicacao\",\"searchable\":true,\"sortable\":true}},\"aplicado\":{\"edit\":{\"label\":\"aplicado\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"aplicado\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"animal\",\"tipo_aplicacao\",\"lembrete_em_dias\"],\"edit\":[[{\"name\":\"animal\",\"size\":6},{\"name\":\"tipo_aplicacao\",\"size\":6}],[{\"name\":\"lembrete_em_dias\",\"size\":4},{\"name\":\"data_aplicacao\",\"size\":4},{\"name\":\"data_proxima_aplicacao\",\"size\":4}],[{\"name\":\"aplicado\",\"size\":4}]]}}', 'object', NULL, NULL),
(58, 'plugin_content_manager_configuration_content_types::api::marca-vacina.marca-vacina', '{\"uid\":\"api::marca-vacina.marca-vacina\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nome\",\"defaultSortBy\":\"nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nome\":{\"edit\":{\"label\":\"nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nome\",\"searchable\":true,\"sortable\":true}},\"ativo\":{\"edit\":{\"label\":\"ativo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ativo\",\"searchable\":true,\"sortable\":true}},\"tipo_vacina\":{\"edit\":{\"label\":\"tipo_vacina\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"tipo\"},\"list\":{\"label\":\"tipo_vacina\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nome\",\"ativo\",\"createdAt\"],\"edit\":[[{\"name\":\"nome\",\"size\":6},{\"name\":\"ativo\",\"size\":4}],[{\"name\":\"tipo_vacina\",\"size\":6}]]}}', 'object', NULL, NULL),
(59, 'plugin_content_manager_configuration_content_types::api::forma-aquisicao.forma-aquisicao', '{\"uid\":\"api::forma-aquisicao.forma-aquisicao\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Nome\",\"defaultSortBy\":\"Nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"Nome\"],\"edit\":[[{\"name\":\"Nome\",\"size\":6}]]}}', 'object', NULL, NULL),
(60, 'plugin_content_manager_configuration_content_types::api::especializacao.especializacao', '{\"uid\":\"api::especializacao.especializacao\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Nome\",\"defaultSortBy\":\"Nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"Nome\"],\"edit\":[[{\"name\":\"Nome\",\"size\":6}]]}}', 'object', NULL, NULL),
(61, 'plugin_content_manager_configuration_content_types::api::sexo.sexo', '{\"uid\":\"api::sexo.sexo\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Nome\",\"defaultSortBy\":\"Nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"Nome\"],\"edit\":[[{\"name\":\"Nome\",\"size\":6}]]}}', 'object', NULL, NULL),
(62, 'plugin_content_manager_configuration_content_types::api::status-saude.status-saude', '{\"uid\":\"api::status-saude.status-saude\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Nome\",\"defaultSortBy\":\"Nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"Nome\"],\"edit\":[[{\"name\":\"Nome\",\"size\":6}]]}}', 'object', NULL, NULL),
(63, 'plugin_content_manager_configuration_content_types::api::status-operacional.status-operacional', '{\"uid\":\"api::status-operacional.status-operacional\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Nome\",\"defaultSortBy\":\"Nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"Nome\"],\"edit\":[[{\"name\":\"Nome\",\"size\":6}]]}}', 'object', NULL, NULL),
(64, 'plugin_content_manager_configuration_content_types::api::raca.raca', '{\"uid\":\"api::raca.raca\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Nome\",\"defaultSortBy\":\"Nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"Nome\"],\"edit\":[[{\"name\":\"Nome\",\"size\":6}]]}}', 'object', NULL, NULL),
(65, 'plugin_content_manager_configuration_content_types::api::cor-animal.cor-animal', '{\"uid\":\"api::cor-animal.cor-animal\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Nome\",\"defaultSortBy\":\"Nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"Nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"createdAt\",\"updatedAt\",\"Nome\"],\"edit\":[[{\"name\":\"Nome\",\"size\":6}]]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_database_schema`
--

DROP TABLE IF EXISTS `strapi_database_schema`;
CREATE TABLE `strapi_database_schema` (
  `id` int UNSIGNED NOT NULL,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(162, '{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"action_parameters\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"upload_files_created_at_index\", \"type\": null, \"columns\": [\"created_at\"]}, {\"name\": \"upload_files_updated_at_index\", \"type\": null, \"columns\": [\"updated_at\"]}, {\"name\": \"upload_files_name_index\", \"type\": null, \"columns\": [\"name\"]}, {\"name\": \"upload_files_size_index\", \"type\": null, \"columns\": [\"size\"]}, {\"name\": \"upload_files_ext_index\", \"type\": null, \"columns\": [\"ext\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmation_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"confirmed\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"cpf\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"up_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animals\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nome\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"data_nascimento\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"idade\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"box\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"justificativa_baixado\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"numero_patrimonio\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"numero_de_microchip\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"nome_do_proprietario_anterior\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"data_aquisicao\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"data_inclusao_carga\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"valor_compra\", \"type\": \"double\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"status_geral\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animals_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"animals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"animals_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animal_aplicacaos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"lembrete_em_dias\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"data_aplicacao\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"data_proxima_aplicacao\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"aplicado\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animal_aplicacaos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"animal_aplicacaos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"animal_aplicacaos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animal_aplicacaos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animal_tratamento_medicos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animal_tratamento_medicos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"animal_tratamento_medicos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"animal_tratamento_medicos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animal_tratamento_medicos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animal_vacinas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"data_proxima_aplicacao\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"anotacoes\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lembrete_em_dias\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"data_aplicacao\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"dose_atual\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"aplicado\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"doses_totais\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"intervalo_entre_doses\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animal_vacinas_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"animal_vacinas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"animal_vacinas_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animal_vacinas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"categoria_obs_saudes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"observacao\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"categoria_obs_saudes_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"categoria_obs_saudes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"categoria_obs_saudes_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"categoria_obs_saudes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"condutors\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"nome\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ativo\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"rg\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"condutors_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"condutors_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"condutors_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"condutors_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"consultas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"data_consulta\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"anamnese\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"exame_fisico\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"diagnostico\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"retorno\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"removido\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"consultas_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"consultas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"consultas_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"consultas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cor_animals\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nome\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cor_animals_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"cor_animals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"cor_animals_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cor_animals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"doencas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nome\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ativo\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"doencas_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"doencas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"doencas_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"doencas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"e_alergicos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"e_alergicos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"e_alergicos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"e_alergicos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"e_alergicos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"e_causados\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"e_causados_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"e_causados_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"e_causados_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"e_causados_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"especializacaos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nome\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"especializacaos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"especializacaos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"especializacaos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"especializacaos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"forma_aquisicaos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nome\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"forma_aquisicaos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"forma_aquisicaos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"forma_aquisicaos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"forma_aquisicaos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"justificativa_baixas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"justificativa\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"justificativa_baixas_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"justificativa_baixas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"justificativa_baixas_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"justificativa_baixas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"marca_vacinas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nome\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ativo\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"marca_vacinas_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"marca_vacinas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"marca_vacinas_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"marca_vacinas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"medicamentos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nome\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ativo\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"medicamentos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"medicamentos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"medicamentos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"medicamentos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"possuis\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"dosagem\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"data_inicio\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"data_fim\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"medicamento_aplicado\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"prescricao\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"possuis_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"possuis_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"possuis_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"possuis_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"racas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nome\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"racas_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"racas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"racas_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"racas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"racaos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"quantidade\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"data_de_registro\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"racaos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"racaos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"racaos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"racaos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"registros\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"dia\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"precision\": 3}], \"name\": \"hora\", \"type\": \"time\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"registros_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"registros_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"registros_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"registros_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"registro_obss\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"registro_obss_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"registro_obss_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"registro_obss_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"registro_obss_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"registro_tratamentos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"registro_tratamentos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"registro_tratamentos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"registro_tratamentos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"registro_tratamentos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"sexos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nome\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"sexos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"sexos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"sexos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"sexos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"status_operacionals\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nome\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"status_operacionals_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"status_operacionals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"status_operacionals_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"status_operacionals_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"status_saudes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nome\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"status_saudes_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"status_saudes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"status_saudes_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"status_saudes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"tipo_aplicacaos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"nome_produto\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"duracao_em_dias\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ativo\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"tipo_aplicacaos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"tipo_aplicacaos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"tipo_aplicacaos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"tipo_aplicacaos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"tipo_produto_antiparasitarios\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"descricao\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"tipo_produto_antiparasitarios_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"tipo_produto_antiparasitarios_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"tipo_produto_antiparasitarios_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"tipo_produto_antiparasitarios_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"tipo_vacinas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"ativo\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tipo\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"tipo_vacinas_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"tipo_vacinas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"tipo_vacinas_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"tipo_vacinas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"tratamento_medicos\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"data_inicio\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"data_fim\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tipo_tratamento\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tratamento_atual\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"published_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"tratamento_medicos_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"tratamento_medicos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"tratamento_medicos_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"tratamento_medicos_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"unidades\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [\"longtext\"], \"name\": \"nome\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"endereco\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ativo\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"unidades_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"unidades_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"unidades_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"unidades_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"admin_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_users_roles_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"admin_users_roles_links_order_fk\", \"columns\": [\"role_order\"]}, {\"name\": \"admin_users_roles_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"api_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"api_token_permission_id\", \"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_order_inv_fk\", \"columns\": [\"api_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_transfer_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"transfer_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"transfer_token_permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"transfer_token_permission_id\", \"transfer_token_id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_order_inv_fk\", \"columns\": [\"transfer_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_transfer_token_permissions_token_links_fk\", \"columns\": [\"transfer_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_transfer_token_permissions_token_links_inv_fk\", \"columns\": [\"transfer_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_transfer_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_related_morphs_order_index\", \"columns\": [\"order\"]}, {\"name\": \"files_related_morphs_id_column_index\", \"columns\": [\"related_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"file_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"files_folder_links_unique\", \"type\": \"unique\", \"columns\": [\"file_id\", \"folder_id\"]}, {\"name\": \"files_folder_links_order_inv_fk\", \"columns\": [\"file_order\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_unique\", \"type\": \"unique\", \"columns\": [\"folder_id\", \"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_order_inv_fk\", \"columns\": [\"folder_order\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"up_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"up_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"up_users_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"up_users_role_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"up_users_role_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"up_users_role_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"up_users_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animals_alocacao_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"unidade_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animals_alocacao_links_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"animals_alocacao_links_inv_fk\", \"columns\": [\"unidade_id\"]}, {\"name\": \"animals_alocacao_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_id\", \"unidade_id\"]}], \"foreignKeys\": [{\"name\": \"animals_alocacao_links_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animals_alocacao_links_inv_fk\", \"columns\": [\"unidade_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"unidades\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animals_condutor_principal_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"condutor_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animals_condutor_principal_links_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"animals_condutor_principal_links_inv_fk\", \"columns\": [\"condutor_id\"]}, {\"name\": \"animals_condutor_principal_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_id\", \"condutor_id\"]}], \"foreignKeys\": [{\"name\": \"animals_condutor_principal_links_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animals_condutor_principal_links_inv_fk\", \"columns\": [\"condutor_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"condutors\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animals_condutor_secundario_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"condutor_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animals_condutor_secundario_links_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"animals_condutor_secundario_links_inv_fk\", \"columns\": [\"condutor_id\"]}, {\"name\": \"animals_condutor_secundario_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_id\", \"condutor_id\"]}], \"foreignKeys\": [{\"name\": \"animals_condutor_secundario_links_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animals_condutor_secundario_links_inv_fk\", \"columns\": [\"condutor_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"condutors\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animals_cor_animal_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"cor_animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animals_cor_animal_links_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"animals_cor_animal_links_inv_fk\", \"columns\": [\"cor_animal_id\"]}, {\"name\": \"animals_cor_animal_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_id\", \"cor_animal_id\"]}], \"foreignKeys\": [{\"name\": \"animals_cor_animal_links_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animals_cor_animal_links_inv_fk\", \"columns\": [\"cor_animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cor_animals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animals_forma_aquisicao_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"forma_aquisicao_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animals_forma_aquisicao_links_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"animals_forma_aquisicao_links_inv_fk\", \"columns\": [\"forma_aquisicao_id\"]}, {\"name\": \"animals_forma_aquisicao_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_id\", \"forma_aquisicao_id\"]}], \"foreignKeys\": [{\"name\": \"animals_forma_aquisicao_links_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animals_forma_aquisicao_links_inv_fk\", \"columns\": [\"forma_aquisicao_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"forma_aquisicaos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animals_sexo_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sexo_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animals_sexo_links_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"animals_sexo_links_inv_fk\", \"columns\": [\"sexo_id\"]}, {\"name\": \"animals_sexo_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_id\", \"sexo_id\"]}], \"foreignKeys\": [{\"name\": \"animals_sexo_links_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animals_sexo_links_inv_fk\", \"columns\": [\"sexo_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"sexos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animals_status_saude_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"status_saude_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animals_status_saude_links_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"animals_status_saude_links_inv_fk\", \"columns\": [\"status_saude_id\"]}, {\"name\": \"animals_status_saude_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_id\", \"status_saude_id\"]}], \"foreignKeys\": [{\"name\": \"animals_status_saude_links_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animals_status_saude_links_inv_fk\", \"columns\": [\"status_saude_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"status_saudes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animals_status_operacional_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"status_operacional_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animals_status_operacional_links_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"animals_status_operacional_links_inv_fk\", \"columns\": [\"status_operacional_id\"]}, {\"name\": \"animals_status_operacional_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_id\", \"status_operacional_id\"]}], \"foreignKeys\": [{\"name\": \"animals_status_operacional_links_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animals_status_operacional_links_inv_fk\", \"columns\": [\"status_operacional_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"status_operacionals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animals_raca_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"raca_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animals_raca_links_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"animals_raca_links_inv_fk\", \"columns\": [\"raca_id\"]}, {\"name\": \"animals_raca_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_id\", \"raca_id\"]}], \"foreignKeys\": [{\"name\": \"animals_raca_links_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animals_raca_links_inv_fk\", \"columns\": [\"raca_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"racas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animals_especializacao_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"especializacao_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animals_especializacao_links_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"animals_especializacao_links_inv_fk\", \"columns\": [\"especializacao_id\"]}, {\"name\": \"animals_especializacao_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_id\", \"especializacao_id\"]}], \"foreignKeys\": [{\"name\": \"animals_especializacao_links_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animals_especializacao_links_inv_fk\", \"columns\": [\"especializacao_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"especializacaos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animal_aplicacaos_animal_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_aplicacao_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animal_aplicacaos_animal_links_fk\", \"columns\": [\"animal_aplicacao_id\"]}, {\"name\": \"animal_aplicacaos_animal_links_inv_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"animal_aplicacaos_animal_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_aplicacao_id\", \"animal_id\"]}], \"foreignKeys\": [{\"name\": \"animal_aplicacaos_animal_links_fk\", \"columns\": [\"animal_aplicacao_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animal_aplicacaos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animal_aplicacaos_animal_links_inv_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animal_aplicacaos_tipo_aplicacao_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_aplicacao_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tipo_aplicacao_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animal_aplicacaos_tipo_aplicacao_links_fk\", \"columns\": [\"animal_aplicacao_id\"]}, {\"name\": \"animal_aplicacaos_tipo_aplicacao_links_inv_fk\", \"columns\": [\"tipo_aplicacao_id\"]}, {\"name\": \"animal_aplicacaos_tipo_aplicacao_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_aplicacao_id\", \"tipo_aplicacao_id\"]}], \"foreignKeys\": [{\"name\": \"animal_aplicacaos_tipo_aplicacao_links_fk\", \"columns\": [\"animal_aplicacao_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animal_aplicacaos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animal_aplicacaos_tipo_aplicacao_links_inv_fk\", \"columns\": [\"tipo_aplicacao_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"tipo_aplicacaos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animal_tratamento_medicos_animal_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_tratamento_medico_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"animal_tratamento_medico_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animal_tratamento_medicos_animal_links_fk\", \"columns\": [\"animal_tratamento_medico_id\"]}, {\"name\": \"animal_tratamento_medicos_animal_links_inv_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"animal_tratamento_medicos_animal_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_tratamento_medico_id\", \"animal_id\"]}, {\"name\": \"animal_tratamento_medicos_animal_links_order_inv_fk\", \"columns\": [\"animal_tratamento_medico_order\"]}], \"foreignKeys\": [{\"name\": \"animal_tratamento_medicos_animal_links_fk\", \"columns\": [\"animal_tratamento_medico_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animal_tratamento_medicos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animal_tratamento_medicos_animal_links_inv_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animal_tratamento_medicos_tratamento_medico_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_tratamento_medico_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tratamento_medico_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animal_tratamento_medicos_tratamento_medico_links_fk\", \"columns\": [\"animal_tratamento_medico_id\"]}, {\"name\": \"animal_tratamento_medicos_tratamento_medico_links_inv_fk\", \"columns\": [\"tratamento_medico_id\"]}, {\"name\": \"animal_tratamento_medicos_tratamento_medico_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_tratamento_medico_id\", \"tratamento_medico_id\"]}], \"foreignKeys\": [{\"name\": \"animal_tratamento_medicos_tratamento_medico_links_fk\", \"columns\": [\"animal_tratamento_medico_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animal_tratamento_medicos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animal_tratamento_medicos_tratamento_medico_links_inv_fk\", \"columns\": [\"tratamento_medico_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"tratamento_medicos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animal_vacinas_animal_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_vacina_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animal_vacinas_animal_links_fk\", \"columns\": [\"animal_vacina_id\"]}, {\"name\": \"animal_vacinas_animal_links_inv_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"animal_vacinas_animal_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_vacina_id\", \"animal_id\"]}], \"foreignKeys\": [{\"name\": \"animal_vacinas_animal_links_fk\", \"columns\": [\"animal_vacina_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animal_vacinas\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animal_vacinas_animal_links_inv_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"animal_vacinas_nome_vacina_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"animal_vacina_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"marca_vacina_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"animal_vacinas_nome_vacina_links_fk\", \"columns\": [\"animal_vacina_id\"]}, {\"name\": \"animal_vacinas_nome_vacina_links_inv_fk\", \"columns\": [\"marca_vacina_id\"]}, {\"name\": \"animal_vacinas_nome_vacina_links_unique\", \"type\": \"unique\", \"columns\": [\"animal_vacina_id\", \"marca_vacina_id\"]}], \"foreignKeys\": [{\"name\": \"animal_vacinas_nome_vacina_links_fk\", \"columns\": [\"animal_vacina_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animal_vacinas\", \"referencedColumns\": [\"id\"]}, {\"name\": \"animal_vacinas_nome_vacina_links_inv_fk\", \"columns\": [\"marca_vacina_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"marca_vacinas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"condutors_unidade_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"condutor_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"unidade_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"condutors_unidade_links_fk\", \"columns\": [\"condutor_id\"]}, {\"name\": \"condutors_unidade_links_inv_fk\", \"columns\": [\"unidade_id\"]}, {\"name\": \"condutors_unidade_links_unique\", \"type\": \"unique\", \"columns\": [\"condutor_id\", \"unidade_id\"]}], \"foreignKeys\": [{\"name\": \"condutors_unidade_links_fk\", \"columns\": [\"condutor_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"condutors\", \"referencedColumns\": [\"id\"]}, {\"name\": \"condutors_unidade_links_inv_fk\", \"columns\": [\"unidade_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"unidades\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"consultas_animal_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"consulta_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"consultas_animal_links_fk\", \"columns\": [\"consulta_id\"]}, {\"name\": \"consultas_animal_links_inv_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"consultas_animal_links_unique\", \"type\": \"unique\", \"columns\": [\"consulta_id\", \"animal_id\"]}], \"foreignKeys\": [{\"name\": \"consultas_animal_links_fk\", \"columns\": [\"consulta_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"consultas\", \"referencedColumns\": [\"id\"]}, {\"name\": \"consultas_animal_links_inv_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"consultas_users_permissions_user_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"consulta_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"consultas_users_permissions_user_links_fk\", \"columns\": [\"consulta_id\"]}, {\"name\": \"consultas_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"consultas_users_permissions_user_links_unique\", \"type\": \"unique\", \"columns\": [\"consulta_id\", \"user_id\"]}], \"foreignKeys\": [{\"name\": \"consultas_users_permissions_user_links_fk\", \"columns\": [\"consulta_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"consultas\", \"referencedColumns\": [\"id\"]}, {\"name\": \"consultas_users_permissions_user_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"up_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"e_alergicos_animal_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"e_alergico_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"e_alergico_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"e_alergicos_animal_links_fk\", \"columns\": [\"e_alergico_id\"]}, {\"name\": \"e_alergicos_animal_links_inv_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"e_alergicos_animal_links_unique\", \"type\": \"unique\", \"columns\": [\"e_alergico_id\", \"animal_id\"]}, {\"name\": \"e_alergicos_animal_links_order_inv_fk\", \"columns\": [\"e_alergico_order\"]}], \"foreignKeys\": [{\"name\": \"e_alergicos_animal_links_fk\", \"columns\": [\"e_alergico_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"e_alergicos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"e_alergicos_animal_links_inv_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"e_alergicos_medicamento_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"e_alergico_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"medicamento_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"e_alergicos_medicamento_links_fk\", \"columns\": [\"e_alergico_id\"]}, {\"name\": \"e_alergicos_medicamento_links_inv_fk\", \"columns\": [\"medicamento_id\"]}, {\"name\": \"e_alergicos_medicamento_links_unique\", \"type\": \"unique\", \"columns\": [\"e_alergico_id\", \"medicamento_id\"]}], \"foreignKeys\": [{\"name\": \"e_alergicos_medicamento_links_fk\", \"columns\": [\"e_alergico_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"e_alergicos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"e_alergicos_medicamento_links_inv_fk\", \"columns\": [\"medicamento_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"medicamentos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"e_causados_tratamento_medico_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"e_causado_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tratamento_medico_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"e_causado_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"e_causados_tratamento_medico_links_fk\", \"columns\": [\"e_causado_id\"]}, {\"name\": \"e_causados_tratamento_medico_links_inv_fk\", \"columns\": [\"tratamento_medico_id\"]}, {\"name\": \"e_causados_tratamento_medico_links_unique\", \"type\": \"unique\", \"columns\": [\"e_causado_id\", \"tratamento_medico_id\"]}, {\"name\": \"e_causados_tratamento_medico_links_order_inv_fk\", \"columns\": [\"e_causado_order\"]}], \"foreignKeys\": [{\"name\": \"e_causados_tratamento_medico_links_fk\", \"columns\": [\"e_causado_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"e_causados\", \"referencedColumns\": [\"id\"]}, {\"name\": \"e_causados_tratamento_medico_links_inv_fk\", \"columns\": [\"tratamento_medico_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"tratamento_medicos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"e_causados_doenca_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"e_causado_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"doenca_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"e_causados_doenca_links_fk\", \"columns\": [\"e_causado_id\"]}, {\"name\": \"e_causados_doenca_links_inv_fk\", \"columns\": [\"doenca_id\"]}, {\"name\": \"e_causados_doenca_links_unique\", \"type\": \"unique\", \"columns\": [\"e_causado_id\", \"doenca_id\"]}], \"foreignKeys\": [{\"name\": \"e_causados_doenca_links_fk\", \"columns\": [\"e_causado_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"e_causados\", \"referencedColumns\": [\"id\"]}, {\"name\": \"e_causados_doenca_links_inv_fk\", \"columns\": [\"doenca_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"doencas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"justificativa_baixas_animal_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"justificativa_baixa_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"justificativa_baixas_animal_links_fk\", \"columns\": [\"justificativa_baixa_id\"]}, {\"name\": \"justificativa_baixas_animal_links_inv_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"justificativa_baixas_animal_links_unique\", \"type\": \"unique\", \"columns\": [\"justificativa_baixa_id\", \"animal_id\"]}], \"foreignKeys\": [{\"name\": \"justificativa_baixas_animal_links_fk\", \"columns\": [\"justificativa_baixa_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"justificativa_baixas\", \"referencedColumns\": [\"id\"]}, {\"name\": \"justificativa_baixas_animal_links_inv_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"marca_vacinas_tipo_vacina_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"marca_vacina_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tipo_vacina_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"marca_vacinas_tipo_vacina_links_fk\", \"columns\": [\"marca_vacina_id\"]}, {\"name\": \"marca_vacinas_tipo_vacina_links_inv_fk\", \"columns\": [\"tipo_vacina_id\"]}, {\"name\": \"marca_vacinas_tipo_vacina_links_unique\", \"type\": \"unique\", \"columns\": [\"marca_vacina_id\", \"tipo_vacina_id\"]}], \"foreignKeys\": [{\"name\": \"marca_vacinas_tipo_vacina_links_fk\", \"columns\": [\"marca_vacina_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"marca_vacinas\", \"referencedColumns\": [\"id\"]}, {\"name\": \"marca_vacinas_tipo_vacina_links_inv_fk\", \"columns\": [\"tipo_vacina_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"tipo_vacinas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"possuis_tratamento_medico_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"possui_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tratamento_medico_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"possui_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"possuis_tratamento_medico_links_fk\", \"columns\": [\"possui_id\"]}, {\"name\": \"possuis_tratamento_medico_links_inv_fk\", \"columns\": [\"tratamento_medico_id\"]}, {\"name\": \"possuis_tratamento_medico_links_unique\", \"type\": \"unique\", \"columns\": [\"possui_id\", \"tratamento_medico_id\"]}, {\"name\": \"possuis_tratamento_medico_links_order_inv_fk\", \"columns\": [\"possui_order\"]}], \"foreignKeys\": [{\"name\": \"possuis_tratamento_medico_links_fk\", \"columns\": [\"possui_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"possuis\", \"referencedColumns\": [\"id\"]}, {\"name\": \"possuis_tratamento_medico_links_inv_fk\", \"columns\": [\"tratamento_medico_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"tratamento_medicos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"possuis_medicamento_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"possui_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"medicamento_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"possuis_medicamento_links_fk\", \"columns\": [\"possui_id\"]}, {\"name\": \"possuis_medicamento_links_inv_fk\", \"columns\": [\"medicamento_id\"]}, {\"name\": \"possuis_medicamento_links_unique\", \"type\": \"unique\", \"columns\": [\"possui_id\", \"medicamento_id\"]}], \"foreignKeys\": [{\"name\": \"possuis_medicamento_links_fk\", \"columns\": [\"possui_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"possuis\", \"referencedColumns\": [\"id\"]}, {\"name\": \"possuis_medicamento_links_inv_fk\", \"columns\": [\"medicamento_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"medicamentos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"registro_obss_categoria_obs_saude_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"registro_obs_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"categoria_obs_saude_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"registro_obss_categoria_obs_saude_links_fk\", \"columns\": [\"registro_obs_id\"]}, {\"name\": \"registro_obss_categoria_obs_saude_links_inv_fk\", \"columns\": [\"categoria_obs_saude_id\"]}, {\"name\": \"registro_obss_categoria_obs_saude_links_unique\", \"type\": \"unique\", \"columns\": [\"registro_obs_id\", \"categoria_obs_saude_id\"]}], \"foreignKeys\": [{\"name\": \"registro_obss_categoria_obs_saude_links_fk\", \"columns\": [\"registro_obs_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"registro_obss\", \"referencedColumns\": [\"id\"]}, {\"name\": \"registro_obss_categoria_obs_saude_links_inv_fk\", \"columns\": [\"categoria_obs_saude_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"categoria_obs_saudes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"registro_obss_animal_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"registro_obs_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registro_obs_order\", \"type\": \"double\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"registro_obss_animal_links_fk\", \"columns\": [\"registro_obs_id\"]}, {\"name\": \"registro_obss_animal_links_inv_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"registro_obss_animal_links_unique\", \"type\": \"unique\", \"columns\": [\"registro_obs_id\", \"animal_id\"]}, {\"name\": \"registro_obss_animal_links_order_inv_fk\", \"columns\": [\"registro_obs_order\"]}], \"foreignKeys\": [{\"name\": \"registro_obss_animal_links_fk\", \"columns\": [\"registro_obs_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"registro_obss\", \"referencedColumns\": [\"id\"]}, {\"name\": \"registro_obss_animal_links_inv_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"registro_tratamentos_registro_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"registro_tratamento_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registro_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"registro_tratamentos_registro_links_fk\", \"columns\": [\"registro_tratamento_id\"]}, {\"name\": \"registro_tratamentos_registro_links_inv_fk\", \"columns\": [\"registro_id\"]}, {\"name\": \"registro_tratamentos_registro_links_unique\", \"type\": \"unique\", \"columns\": [\"registro_tratamento_id\", \"registro_id\"]}], \"foreignKeys\": [{\"name\": \"registro_tratamentos_registro_links_fk\", \"columns\": [\"registro_tratamento_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"registro_tratamentos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"registro_tratamentos_registro_links_inv_fk\", \"columns\": [\"registro_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"registros\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"registro_tratamentos_tratamento_medico_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"registro_tratamento_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tratamento_medico_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"registro_tratamentos_tratamento_medico_links_fk\", \"columns\": [\"registro_tratamento_id\"]}, {\"name\": \"registro_tratamentos_tratamento_medico_links_inv_fk\", \"columns\": [\"tratamento_medico_id\"]}, {\"name\": \"registro_tratamentos_tratamento_medico_links_unique\", \"type\": \"unique\", \"columns\": [\"registro_tratamento_id\", \"tratamento_medico_id\"]}], \"foreignKeys\": [{\"name\": \"registro_tratamentos_tratamento_medico_links_fk\", \"columns\": [\"registro_tratamento_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"registro_tratamentos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"registro_tratamentos_tratamento_medico_links_inv_fk\", \"columns\": [\"tratamento_medico_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"tratamento_medicos\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"tipo_aplicacaos_tipo_produto_antiparasitario_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"tipo_aplicacao_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tipo_produto_antiparasitario_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"tipo_aplicacaos_tipo_produto_antiparasitario_links_fk\", \"columns\": [\"tipo_aplicacao_id\"]}, {\"name\": \"tipo_aplicacaos_tipo_produto_antiparasitario_links_inv_fk\", \"columns\": [\"tipo_produto_antiparasitario_id\"]}, {\"name\": \"tipo_aplicacaos_tipo_produto_antiparasitario_links_unique\", \"type\": \"unique\", \"columns\": [\"tipo_aplicacao_id\", \"tipo_produto_antiparasitario_id\"]}], \"foreignKeys\": [{\"name\": \"tipo_aplicacaos_tipo_produto_antiparasitario_links_fk\", \"columns\": [\"tipo_aplicacao_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"tipo_aplicacaos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"tipo_aplicacaos_tipo_produto_antiparasitario_links_inv_fk\", \"columns\": [\"tipo_produto_antiparasitario_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"tipo_produto_antiparasitarios\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"tratamento_medicos_consulta_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"tratamento_medico_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"consulta_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"tratamento_medicos_consulta_links_fk\", \"columns\": [\"tratamento_medico_id\"]}, {\"name\": \"tratamento_medicos_consulta_links_inv_fk\", \"columns\": [\"consulta_id\"]}, {\"name\": \"tratamento_medicos_consulta_links_unique\", \"type\": \"unique\", \"columns\": [\"tratamento_medico_id\", \"consulta_id\"]}], \"foreignKeys\": [{\"name\": \"tratamento_medicos_consulta_links_fk\", \"columns\": [\"tratamento_medico_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"tratamento_medicos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"tratamento_medicos_consulta_links_inv_fk\", \"columns\": [\"consulta_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"consultas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"tratamento_medicos_animal_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"tratamento_medico_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"animal_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"tratamento_medicos_animal_links_fk\", \"columns\": [\"tratamento_medico_id\"]}, {\"name\": \"tratamento_medicos_animal_links_inv_fk\", \"columns\": [\"animal_id\"]}, {\"name\": \"tratamento_medicos_animal_links_unique\", \"type\": \"unique\", \"columns\": [\"tratamento_medico_id\", \"animal_id\"]}], \"foreignKeys\": [{\"name\": \"tratamento_medicos_animal_links_fk\", \"columns\": [\"tratamento_medico_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"tratamento_medicos\", \"referencedColumns\": [\"id\"]}, {\"name\": \"tratamento_medicos_animal_links_inv_fk\", \"columns\": [\"animal_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"animals\", \"referencedColumns\": [\"id\"]}]}]}', '2024-04-30 20:04:03', '97670f751e8be7c62bab2ad498dbe273');

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_migrations`
--

DROP TABLE IF EXISTS `strapi_migrations`;
CREATE TABLE `strapi_migrations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_transfer_tokens`
--

DROP TABLE IF EXISTS `strapi_transfer_tokens`;
CREATE TABLE `strapi_transfer_tokens` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_transfer_token_permissions`
--

DROP TABLE IF EXISTS `strapi_transfer_token_permissions`;
CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_transfer_token_permissions_token_links`
--

DROP TABLE IF EXISTS `strapi_transfer_token_permissions_token_links`;
CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int UNSIGNED NOT NULL,
  `transfer_token_permission_id` int UNSIGNED DEFAULT NULL,
  `transfer_token_id` int UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
CREATE TABLE `strapi_webhooks` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_aplicacaos`
--

DROP TABLE IF EXISTS `tipo_aplicacaos`;
CREATE TABLE `tipo_aplicacaos` (
  `id` int UNSIGNED NOT NULL,
  `nome_produto` varchar(255) DEFAULT NULL,
  `duracao_em_dias` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tipo_aplicacaos`
--

INSERT INTO `tipo_aplicacaos` (`id`, `nome_produto`, `duracao_em_dias`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `ativo`) VALUES
(1, 'NexGard Antipulgas', 30, '2024-04-15 16:47:57.636000', '2024-04-15 19:45:47.194000', 1, 1, 1),
(2, 'Seresto', 240, '2024-04-15 17:09:55.118000', '2024-04-15 19:12:06.818000', NULL, 1, 1),
(6, 'Frontmax', 240, '2024-04-15 18:54:13.605000', '2024-04-15 19:10:10.394000', NULL, NULL, 1),
(7, 'Canex Composto', 1, '2024-04-15 18:55:18.327000', '2024-04-15 19:45:50.192000', NULL, NULL, 1),
(8, 'Milbemax C', 30, '2024-04-15 18:57:39.508000', '2024-04-15 19:45:53.941000', NULL, NULL, 1),
(9, 'Ourofino Top Dog Filhotes', 15, '2024-04-15 18:59:07.590000', '2024-04-15 19:17:50.643000', NULL, NULL, 0),
(11, 'Ibasa Ibatox 20ml', 5, '2024-04-15 19:48:53.170000', '2024-04-19 16:16:21.930000', 1, 1, 1),
(14, 'Zoetis - Simparic - 5 mg', 35, '2024-04-15 19:58:27.071000', '2024-04-15 20:06:07.008000', NULL, NULL, 0),
(15, 'Comfortis Tablete 270mg', 30, '2024-04-15 20:06:00.046000', '2024-05-02 16:46:57.436000', NULL, NULL, 1),
(16, 'Scalibor', 120, '2024-04-16 17:08:26.693000', '2024-05-02 16:48:03.753000', NULL, NULL, 0),
(17, 'Ibasa Efipet', 30, '2024-04-17 17:18:56.688000', '2024-04-17 17:49:26.277000', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_aplicacaos_tipo_produto_antiparasitario_links`
--

DROP TABLE IF EXISTS `tipo_aplicacaos_tipo_produto_antiparasitario_links`;
CREATE TABLE `tipo_aplicacaos_tipo_produto_antiparasitario_links` (
  `id` int UNSIGNED NOT NULL,
  `tipo_aplicacao_id` int UNSIGNED DEFAULT NULL,
  `tipo_produto_antiparasitario_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tipo_aplicacaos_tipo_produto_antiparasitario_links`
--

INSERT INTO `tipo_aplicacaos_tipo_produto_antiparasitario_links` (`id`, `tipo_aplicacao_id`, `tipo_produto_antiparasitario_id`) VALUES
(1, 1, 3),
(2, 2, 2),
(8, 6, 2),
(9, 7, 3),
(10, 8, 3),
(11, 9, 3),
(13, 11, 1),
(16, 14, 1),
(17, 15, 1),
(18, 16, 2),
(19, 17, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_produto_antiparasitarios`
--

DROP TABLE IF EXISTS `tipo_produto_antiparasitarios`;
CREATE TABLE `tipo_produto_antiparasitarios` (
  `id` int UNSIGNED NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tipo_produto_antiparasitarios`
--

INSERT INTO `tipo_produto_antiparasitarios` (`id`, `descricao`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Ectoparasiticida', '2024-04-15 16:45:56.099000', '2024-04-15 16:46:04.009000', '2024-04-15 16:46:04.005000', 1, 1),
(2, 'Coleira Anti-Ectoparasita', '2024-04-15 16:46:34.801000', '2024-04-15 16:46:35.408000', '2024-04-15 16:46:35.405000', 1, 1),
(3, 'Vermífugo', '2024-04-15 16:46:46.320000', '2024-04-15 16:46:46.899000', '2024-04-15 16:46:46.895000', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipo_vacinas`
--

DROP TABLE IF EXISTS `tipo_vacinas`;
CREATE TABLE `tipo_vacinas` (
  `id` int UNSIGNED NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tipo_vacinas`
--

INSERT INTO `tipo_vacinas` (`id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `ativo`, `tipo`) VALUES
(30, '2024-04-29 16:55:16.429000', '2024-04-29 16:55:37.729000', 1, 1, 1, 'Antitetânica'),
(31, '2024-04-29 16:55:52.260000', '2024-04-29 16:55:52.260000', 1, 1, 1, 'Antirrábica'),
(32, '2024-04-29 16:55:57.199000', '2024-05-02 12:59:14.100000', 1, 1, 1, 'V8'),
(33, '2024-05-02 13:07:56.793000', '2024-05-02 13:12:45.066000', NULL, NULL, 0, 'Teste'),
(34, '2024-05-02 13:13:46.920000', '2024-05-02 13:13:50.380000', NULL, NULL, 0, 'Testando');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tratamento_medicos`
--

DROP TABLE IF EXISTS `tratamento_medicos`;
CREATE TABLE `tratamento_medicos` (
  `id` int UNSIGNED NOT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `tipo_tratamento` varchar(255) DEFAULT NULL,
  `tratamento_atual` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tratamento_medicos`
--

INSERT INTO `tratamento_medicos` (`id`, `data_inicio`, `data_fim`, `tipo_tratamento`, `tratamento_atual`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(4, '2024-03-05', '2024-03-30', 'esporádico', 1, '2024-03-25 17:25:35.957000', '2024-03-25 17:25:40.086000', '2024-03-25 17:25:40.083000', 1, 1),
(5, '2024-03-07', '2024-03-20', 'esporádico', 0, '2024-03-25 17:31:42.113000', '2024-03-25 17:31:43.726000', '2024-03-25 17:31:43.722000', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tratamento_medicos_animal_links`
--

DROP TABLE IF EXISTS `tratamento_medicos_animal_links`;
CREATE TABLE `tratamento_medicos_animal_links` (
  `id` int UNSIGNED NOT NULL,
  `tratamento_medico_id` int UNSIGNED DEFAULT NULL,
  `animal_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tratamento_medicos_consulta_links`
--

DROP TABLE IF EXISTS `tratamento_medicos_consulta_links`;
CREATE TABLE `tratamento_medicos_consulta_links` (
  `id` int UNSIGNED NOT NULL,
  `tratamento_medico_id` int UNSIGNED DEFAULT NULL,
  `consulta_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `tratamento_medicos_consulta_links`
--

INSERT INTO `tratamento_medicos_consulta_links` (`id`, `tratamento_medico_id`, `consulta_id`) VALUES
(2, 4, 1),
(3, 5, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `unidades`
--

DROP TABLE IF EXISTS `unidades`;
CREATE TABLE `unidades` (
  `id` int UNSIGNED NOT NULL,
  `nome` longtext,
  `endereco` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `unidades`
--

INSERT INTO `unidades` (`id`, `nome`, `endereco`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `ativo`) VALUES
(2, 'Batalhão de Ações com Cães', '\n', '2023-12-28 11:31:06.139000', '2024-04-22 16:24:26.101000', 1, 1, NULL),
(3, '1º Batalhão de Polícia Militar (1º BPM)', 'Avenida Maruípe, 2.111 - São Cristóvão, Vitória - ES, 29045-230', '2023-12-28 11:39:44.641000', '2024-03-12 23:29:13.591000', 1, 1, 1),
(4, '2º Batalhão de Polícia Militar (2º BPM)', 'Rua Sete de Setembro, 118 - Centro, Cachoeiro de Itapemirim - ES, 29300-000', '2024-02-16 18:13:11.998000', '2024-03-12 23:30:16.632000', NULL, 1, 1),
(5, '3º Batalhão de Polícia Militar (3º BPM)', 'Rua São Mateus, 105 - Nova América, Colatina - ES, 29700-000', '2024-02-22 00:25:22.947000', '2024-03-12 23:30:52.947000', 1, 1, 0),
(7, '4º Batalhão de Polícia Militar (4º BPM)', 'Avenida Beira Rio, 1400 - Centro, São Mateus - ES, 29930-000', '2024-02-22 00:44:09.257000', '2024-03-12 23:31:21.827000', NULL, 1, 1),
(8, '5º Batalhão de Polícia Militar (5º BPM)', 'Avenida Demócrito Moreira, 60 - Bairro de Fátima, Aracruz - ES, 29192-243', '2024-02-22 20:28:11.154000', '2024-03-12 23:32:10.846000', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `upload_folders`
--

DROP TABLE IF EXISTS `upload_folders`;
CREATE TABLE `upload_folders` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'API Uploads', 1, '/1', '2024-01-18 19:40:42.529000', '2024-01-18 19:40:42.529000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `upload_folders_parent_links`
--

DROP TABLE IF EXISTS `upload_folders_parent_links`;
CREATE TABLE `upload_folders_parent_links` (
  `id` int UNSIGNED NOT NULL,
  `folder_id` int UNSIGNED DEFAULT NULL,
  `inv_folder_id` int UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `up_permissions`
--

DROP TABLE IF EXISTS `up_permissions`;
CREATE TABLE `up_permissions` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2023-12-27 13:12:48.090000', '2023-12-27 13:12:48.090000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2023-12-27 13:12:48.090000', '2023-12-27 13:12:48.090000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2023-12-27 13:12:48.110000', '2023-12-27 13:12:48.110000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2023-12-27 13:12:48.110000', '2023-12-27 13:12:48.110000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2023-12-27 13:12:48.110000', '2023-12-27 13:12:48.110000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2023-12-27 13:12:48.110000', '2023-12-27 13:12:48.110000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2023-12-27 13:12:48.110000', '2023-12-27 13:12:48.110000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2023-12-27 13:12:48.110000', '2023-12-27 13:12:48.110000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-12-27 13:12:48.110000', '2023-12-27 13:12:48.110000', NULL, NULL),
(10, 'api::animal.animal.find', '2023-12-27 15:59:40.253000', '2023-12-27 15:59:40.253000', NULL, NULL),
(11, 'api::animal.animal.findOne', '2023-12-27 15:59:40.253000', '2023-12-27 15:59:40.253000', NULL, NULL),
(12, 'api::animal.animal.create', '2023-12-27 15:59:40.253000', '2023-12-27 15:59:40.253000', NULL, NULL),
(13, 'api::animal.animal.update', '2023-12-27 15:59:40.253000', '2023-12-27 15:59:40.253000', NULL, NULL),
(14, 'plugin::users-permissions.auth.callback', '2023-12-27 15:59:53.780000', '2023-12-27 15:59:53.780000', NULL, NULL),
(15, 'plugin::users-permissions.auth.changePassword', '2023-12-27 15:59:53.780000', '2023-12-27 15:59:53.780000', NULL, NULL),
(16, 'plugin::users-permissions.auth.resetPassword', '2023-12-27 15:59:53.780000', '2023-12-27 15:59:53.780000', NULL, NULL),
(17, 'plugin::users-permissions.auth.connect', '2023-12-27 15:59:53.780000', '2023-12-27 15:59:53.780000', NULL, NULL),
(18, 'plugin::users-permissions.auth.forgotPassword', '2023-12-27 15:59:53.780000', '2023-12-27 15:59:53.780000', NULL, NULL),
(19, 'plugin::users-permissions.auth.emailConfirmation', '2023-12-27 15:59:53.780000', '2023-12-27 15:59:53.780000', NULL, NULL),
(20, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-12-27 15:59:53.780000', '2023-12-27 15:59:53.780000', NULL, NULL),
(21, 'plugin::users-permissions.auth.callback', '2023-12-27 16:08:33.368000', '2023-12-27 16:08:33.368000', NULL, NULL),
(22, 'plugin::users-permissions.auth.resetPassword', '2023-12-27 16:08:33.368000', '2023-12-27 16:08:33.368000', NULL, NULL),
(23, 'plugin::users-permissions.auth.connect', '2023-12-27 16:08:33.368000', '2023-12-27 16:08:33.368000', NULL, NULL),
(24, 'plugin::users-permissions.auth.forgotPassword', '2023-12-27 16:08:33.368000', '2023-12-27 16:08:33.368000', NULL, NULL),
(25, 'plugin::users-permissions.auth.register', '2023-12-27 16:08:33.368000', '2023-12-27 16:08:33.368000', NULL, NULL),
(26, 'plugin::users-permissions.auth.emailConfirmation', '2023-12-27 16:08:33.368000', '2023-12-27 16:08:33.368000', NULL, NULL),
(27, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-12-27 16:08:33.368000', '2023-12-27 16:08:33.368000', NULL, NULL),
(28, 'api::unidade.unidade.find', '2023-12-28 11:44:40.004000', '2023-12-28 11:44:40.004000', NULL, NULL),
(29, 'api::unidade.unidade.findOne', '2023-12-28 11:44:40.004000', '2023-12-28 11:44:40.004000', NULL, NULL),
(30, 'api::condutor.condutor.find', '2023-12-28 11:54:11.309000', '2023-12-28 11:54:11.309000', NULL, NULL),
(31, 'api::condutor.condutor.findOne', '2023-12-28 13:10:32.946000', '2023-12-28 13:10:32.946000', NULL, NULL),
(32, 'api::condutor.condutor.update', '2023-12-28 13:10:32.946000', '2023-12-28 13:10:32.946000', NULL, NULL),
(33, 'api::condutor.condutor.delete', '2023-12-28 13:10:32.946000', '2023-12-28 13:10:32.946000', NULL, NULL),
(34, 'plugin::upload.content-api.find', '2023-12-28 19:05:33.867000', '2023-12-28 19:05:33.867000', NULL, NULL),
(35, 'plugin::upload.content-api.destroy', '2023-12-28 19:05:33.867000', '2023-12-28 19:05:33.867000', NULL, NULL),
(36, 'plugin::upload.content-api.findOne', '2023-12-28 19:05:33.867000', '2023-12-28 19:05:33.867000', NULL, NULL),
(37, 'plugin::upload.content-api.upload', '2023-12-28 19:05:33.867000', '2023-12-28 19:05:33.867000', NULL, NULL),
(38, 'api::condutor.condutor.create', '2023-12-28 22:15:17.497000', '2023-12-28 22:15:17.497000', NULL, NULL),
(39, 'api::animal.animal.delete', '2023-12-28 22:15:17.497000', '2023-12-28 22:15:17.497000', NULL, NULL),
(40, 'api::unidade.unidade.create', '2023-12-28 22:15:17.497000', '2023-12-28 22:15:17.497000', NULL, NULL),
(41, 'api::unidade.unidade.update', '2023-12-28 22:15:17.497000', '2023-12-28 22:15:17.497000', NULL, NULL),
(42, 'api::unidade.unidade.delete', '2023-12-28 22:15:17.497000', '2023-12-28 22:15:17.497000', NULL, NULL),
(43, 'api::justificativa-baixa.justificativa-baixa.find', '2024-02-08 18:24:30.563000', '2024-02-08 18:24:30.563000', NULL, NULL),
(44, 'api::justificativa-baixa.justificativa-baixa.findOne', '2024-02-08 18:24:30.563000', '2024-02-08 18:24:30.563000', NULL, NULL),
(45, 'api::justificativa-baixa.justificativa-baixa.create', '2024-02-08 18:24:30.563000', '2024-02-08 18:24:30.563000', NULL, NULL),
(46, 'api::justificativa-baixa.justificativa-baixa.update', '2024-02-08 18:24:30.563000', '2024-02-08 18:24:30.563000', NULL, NULL),
(47, 'api::justificativa-baixa.justificativa-baixa.delete', '2024-02-08 18:24:30.563000', '2024-02-08 18:24:30.563000', NULL, NULL),
(53, 'api::categoria-obs-saude.categoria-obs-saude.find', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(54, 'api::categoria-obs-saude.categoria-obs-saude.findOne', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(55, 'api::categoria-obs-saude.categoria-obs-saude.create', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(56, 'api::categoria-obs-saude.categoria-obs-saude.update', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(57, 'api::categoria-obs-saude.categoria-obs-saude.delete', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(58, 'api::doenca.doenca.find', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(59, 'api::doenca.doenca.findOne', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(60, 'api::doenca.doenca.create', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(61, 'api::doenca.doenca.update', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(62, 'api::doenca.doenca.delete', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(63, 'api::e-alergico.e-alergico.find', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(64, 'api::e-alergico.e-alergico.findOne', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(65, 'api::e-alergico.e-alergico.create', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(66, 'api::e-alergico.e-alergico.update', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(67, 'api::e-alergico.e-alergico.delete', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(68, 'api::e-causado.e-causado.find', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(69, 'api::e-causado.e-causado.findOne', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(70, 'api::e-causado.e-causado.create', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(71, 'api::e-causado.e-causado.update', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(72, 'api::e-causado.e-causado.delete', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(73, 'api::medicamento.medicamento.find', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(74, 'api::medicamento.medicamento.findOne', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(75, 'api::medicamento.medicamento.create', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(76, 'api::medicamento.medicamento.update', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(77, 'api::medicamento.medicamento.delete', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(78, 'api::possui.possui.find', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(79, 'api::possui.possui.findOne', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(80, 'api::possui.possui.create', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(81, 'api::possui.possui.update', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(82, 'api::possui.possui.delete', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(83, 'api::racao.racao.find', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(84, 'api::racao.racao.findOne', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(85, 'api::racao.racao.create', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(86, 'api::racao.racao.update', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(87, 'api::racao.racao.delete', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(88, 'api::registro.registro.find', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(89, 'api::registro.registro.findOne', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(90, 'api::registro.registro.create', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(91, 'api::registro.registro.update', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(92, 'api::registro.registro.delete', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(93, 'api::registro-obs.registro-obs.find', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(94, 'api::registro-obs.registro-obs.findOne', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(95, 'api::registro-obs.registro-obs.create', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(96, 'api::registro-obs.registro-obs.update', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(97, 'api::registro-obs.registro-obs.delete', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(98, 'api::registro-tratamento.registro-tratamento.find', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(99, 'api::registro-tratamento.registro-tratamento.findOne', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(100, 'api::registro-tratamento.registro-tratamento.create', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(101, 'api::registro-tratamento.registro-tratamento.update', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(102, 'api::registro-tratamento.registro-tratamento.delete', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(103, 'api::tratamento-medico.tratamento-medico.find', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(104, 'api::tratamento-medico.tratamento-medico.findOne', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(105, 'api::tratamento-medico.tratamento-medico.create', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(106, 'api::tratamento-medico.tratamento-medico.update', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(107, 'api::tratamento-medico.tratamento-medico.delete', '2024-02-08 18:26:29.375000', '2024-02-08 18:26:29.375000', NULL, NULL),
(108, 'api::animal-tratamento-medico.animal-tratamento-medico.find', '2024-02-29 21:30:30.100000', '2024-02-29 21:30:30.100000', NULL, NULL),
(109, 'api::animal-tratamento-medico.animal-tratamento-medico.findOne', '2024-02-29 21:30:30.100000', '2024-02-29 21:30:30.100000', NULL, NULL),
(110, 'api::animal-tratamento-medico.animal-tratamento-medico.create', '2024-02-29 21:30:30.100000', '2024-02-29 21:30:30.100000', NULL, NULL),
(111, 'api::animal-tratamento-medico.animal-tratamento-medico.update', '2024-02-29 21:30:30.100000', '2024-02-29 21:30:30.100000', NULL, NULL),
(112, 'api::animal-tratamento-medico.animal-tratamento-medico.delete', '2024-02-29 21:30:30.100000', '2024-02-29 21:30:30.100000', NULL, NULL),
(113, 'api::consulta.consulta.find', '2024-02-29 21:30:30.100000', '2024-02-29 21:30:30.100000', NULL, NULL),
(114, 'api::consulta.consulta.findOne', '2024-02-29 21:30:30.100000', '2024-02-29 21:30:30.100000', NULL, NULL),
(115, 'api::consulta.consulta.create', '2024-02-29 21:30:30.100000', '2024-02-29 21:30:30.100000', NULL, NULL),
(116, 'api::consulta.consulta.update', '2024-02-29 21:30:30.100000', '2024-02-29 21:30:30.100000', NULL, NULL),
(117, 'api::consulta.consulta.delete', '2024-02-29 21:30:30.100000', '2024-02-29 21:30:30.100000', NULL, NULL),
(123, 'plugin::users-permissions.role.findOne', '2024-03-22 16:59:29.484000', '2024-03-22 16:59:29.484000', NULL, NULL),
(124, 'plugin::users-permissions.role.find', '2024-03-22 16:59:29.484000', '2024-03-22 16:59:29.484000', NULL, NULL),
(225, 'plugin::users-permissions.permissions.getPermissions', '2024-03-22 17:59:46.741000', '2024-03-22 17:59:46.741000', NULL, NULL),
(226, 'plugin::users-permissions.user.find', '2024-03-22 18:21:49.369000', '2024-03-22 18:21:49.369000', NULL, NULL),
(227, 'plugin::users-permissions.user.findOne', '2024-03-22 18:21:49.369000', '2024-03-22 18:21:49.369000', NULL, NULL),
(228, 'plugin::users-permissions.user.me', '2024-03-22 18:21:49.369000', '2024-03-22 18:21:49.369000', NULL, NULL),
(229, 'plugin::users-permissions.role.updateRole', '2024-03-22 18:26:15.509000', '2024-03-22 18:26:15.509000', NULL, NULL),
(230, 'plugin::users-permissions.user.update', '2024-03-22 18:26:21.090000', '2024-03-22 18:26:21.090000', NULL, NULL),
(232, 'plugin::users-permissions.user.create', '2024-03-22 18:37:18.419000', '2024-03-22 18:37:18.419000', NULL, NULL),
(235, 'plugin::users-permissions.auth.callback', '2024-03-22 18:38:12.210000', '2024-03-22 18:38:12.210000', NULL, NULL),
(236, 'plugin::users-permissions.auth.changePassword', '2024-03-22 18:38:12.210000', '2024-03-22 18:38:12.210000', NULL, NULL),
(237, 'plugin::users-permissions.auth.resetPassword', '2024-03-22 18:38:12.210000', '2024-03-22 18:38:12.210000', NULL, NULL),
(238, 'plugin::users-permissions.auth.connect', '2024-03-22 18:38:12.210000', '2024-03-22 18:38:12.210000', NULL, NULL),
(239, 'plugin::users-permissions.auth.forgotPassword', '2024-03-22 18:38:12.210000', '2024-03-22 18:38:12.210000', NULL, NULL),
(240, 'plugin::users-permissions.auth.register', '2024-03-22 18:38:12.210000', '2024-03-22 18:38:12.210000', NULL, NULL),
(241, 'plugin::users-permissions.auth.emailConfirmation', '2024-03-22 18:38:12.210000', '2024-03-22 18:38:12.210000', NULL, NULL),
(242, 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-03-22 18:38:12.210000', '2024-03-22 18:38:12.210000', NULL, NULL),
(243, 'plugin::users-permissions.user.create', '2024-03-22 18:38:12.210000', '2024-03-22 18:38:12.210000', NULL, NULL),
(244, 'plugin::users-permissions.user.update', '2024-03-22 18:38:12.210000', '2024-03-22 18:38:12.210000', NULL, NULL),
(245, 'plugin::users-permissions.user.find', '2024-03-22 18:38:12.210000', '2024-03-22 18:38:12.210000', NULL, NULL),
(246, 'plugin::users-permissions.user.findOne', '2024-03-22 18:38:12.210000', '2024-03-22 18:38:12.210000', NULL, NULL),
(247, 'plugin::users-permissions.user.count', '2024-03-22 18:38:12.210000', '2024-03-22 18:38:12.210000', NULL, NULL),
(248, 'plugin::users-permissions.user.destroy', '2024-03-22 18:38:12.211000', '2024-03-22 18:38:12.211000', NULL, NULL),
(249, 'plugin::users-permissions.user.me', '2024-03-22 18:38:12.211000', '2024-03-22 18:38:12.211000', NULL, NULL),
(250, 'plugin::users-permissions.role.createRole', '2024-03-22 18:38:12.211000', '2024-03-22 18:38:12.211000', NULL, NULL),
(251, 'plugin::users-permissions.role.findOne', '2024-03-22 18:38:12.211000', '2024-03-22 18:38:12.211000', NULL, NULL),
(252, 'plugin::users-permissions.role.find', '2024-03-22 18:38:12.211000', '2024-03-22 18:38:12.211000', NULL, NULL),
(253, 'plugin::users-permissions.role.updateRole', '2024-03-22 18:38:12.211000', '2024-03-22 18:38:12.211000', NULL, NULL),
(254, 'plugin::users-permissions.role.deleteRole', '2024-03-22 18:38:12.211000', '2024-03-22 18:38:12.211000', NULL, NULL),
(255, 'plugin::users-permissions.permissions.getPermissions', '2024-03-22 18:38:12.211000', '2024-03-22 18:38:12.211000', NULL, NULL),
(256, 'api::animal.animal.find', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(257, 'api::animal.animal.update', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(258, 'api::animal.animal.findOne', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(259, 'api::animal.animal.create', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(260, 'api::animal.animal.delete', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(261, 'api::tratamento-medico.tratamento-medico.find', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(262, 'api::tratamento-medico.tratamento-medico.findOne', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(263, 'api::tratamento-medico.tratamento-medico.create', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(264, 'api::tratamento-medico.tratamento-medico.update', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(265, 'api::tratamento-medico.tratamento-medico.delete', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(266, 'api::unidade.unidade.find', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(267, 'api::unidade.unidade.findOne', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(268, 'api::unidade.unidade.create', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(269, 'api::unidade.unidade.update', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(270, 'api::unidade.unidade.delete', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(271, 'plugin::content-type-builder.components.getComponents', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(272, 'plugin::content-type-builder.components.getComponent', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(273, 'plugin::content-type-builder.content-types.getContentTypes', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(274, 'plugin::content-type-builder.content-types.getContentType', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(275, 'plugin::email.email.send', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(276, 'plugin::upload.content-api.find', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(277, 'plugin::upload.content-api.findOne', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(278, 'plugin::upload.content-api.destroy', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(279, 'plugin::upload.content-api.upload', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(280, 'plugin::content-versioning.client.create', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(281, 'plugin::content-versioning.client.findAllForUser', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(282, 'plugin::i18n.locales.listLocales', '2024-03-22 18:39:20.345000', '2024-03-22 18:39:20.345000', NULL, NULL),
(283, 'plugin::users-permissions.auth.register', '2024-03-22 18:41:59.147000', '2024-03-22 18:41:59.147000', NULL, NULL),
(284, 'plugin::users-permissions.role.createRole', '2024-03-25 17:31:25.303000', '2024-03-25 17:31:25.303000', NULL, NULL),
(285, 'api::animal-vacina.animal-vacina.find', '2024-04-15 16:42:36.156000', '2024-04-15 16:42:36.156000', NULL, NULL),
(286, 'api::animal-vacina.animal-vacina.findOne', '2024-04-15 16:42:36.156000', '2024-04-15 16:42:36.156000', NULL, NULL),
(287, 'api::animal-vacina.animal-vacina.create', '2024-04-15 16:42:36.156000', '2024-04-15 16:42:36.156000', NULL, NULL),
(288, 'api::animal-vacina.animal-vacina.update', '2024-04-15 16:42:36.156000', '2024-04-15 16:42:36.156000', NULL, NULL),
(289, 'api::tipo-vacina.tipo-vacina.find', '2024-04-15 16:42:36.156000', '2024-04-15 16:42:36.156000', NULL, NULL),
(290, 'api::tipo-vacina.tipo-vacina.findOne', '2024-04-15 16:42:36.156000', '2024-04-15 16:42:36.156000', NULL, NULL),
(291, 'api::tipo-vacina.tipo-vacina.create', '2024-04-15 16:42:36.156000', '2024-04-15 16:42:36.156000', NULL, NULL),
(292, 'api::tipo-vacina.tipo-vacina.update', '2024-04-15 16:42:36.156000', '2024-04-15 16:42:36.156000', NULL, NULL),
(293, 'api::animal-vacina.animal-vacina.delete', '2024-04-15 16:46:55.033000', '2024-04-15 16:46:55.033000', NULL, NULL),
(294, 'api::tipo-aplicacao.tipo-aplicacao.find', '2024-04-15 16:46:55.033000', '2024-04-15 16:46:55.033000', NULL, NULL),
(295, 'api::tipo-aplicacao.tipo-aplicacao.findOne', '2024-04-15 16:46:55.033000', '2024-04-15 16:46:55.033000', NULL, NULL),
(296, 'api::tipo-aplicacao.tipo-aplicacao.create', '2024-04-15 16:46:55.033000', '2024-04-15 16:46:55.033000', NULL, NULL),
(297, 'api::tipo-aplicacao.tipo-aplicacao.update', '2024-04-15 16:46:55.033000', '2024-04-15 16:46:55.033000', NULL, NULL),
(298, 'api::tipo-produto-antiparasitario.tipo-produto-antiparasitario.find', '2024-04-15 16:46:55.033000', '2024-04-15 16:46:55.033000', NULL, NULL),
(299, 'api::tipo-produto-antiparasitario.tipo-produto-antiparasitario.findOne', '2024-04-15 16:46:55.033000', '2024-04-15 16:46:55.033000', NULL, NULL),
(300, 'api::tipo-produto-antiparasitario.tipo-produto-antiparasitario.create', '2024-04-15 16:46:55.033000', '2024-04-15 16:46:55.033000', NULL, NULL),
(301, 'api::tipo-produto-antiparasitario.tipo-produto-antiparasitario.update', '2024-04-15 16:46:55.033000', '2024-04-15 16:46:55.033000', NULL, NULL),
(302, 'api::tipo-produto-antiparasitario.tipo-produto-antiparasitario.delete', '2024-04-15 16:46:55.033000', '2024-04-15 16:46:55.033000', NULL, NULL),
(303, 'api::tipo-aplicacao.tipo-aplicacao.delete', '2024-04-15 17:00:03.470000', '2024-04-15 17:00:03.470000', NULL, NULL),
(304, 'api::tipo-vacina.tipo-vacina.delete', '2024-04-15 17:00:09.763000', '2024-04-15 17:00:09.763000', NULL, NULL),
(305, 'api::animal-aplicacao.animal-aplicacao.find', '2024-04-15 17:57:14.639000', '2024-04-15 17:57:14.639000', NULL, NULL),
(306, 'api::animal-aplicacao.animal-aplicacao.findOne', '2024-04-15 17:57:14.639000', '2024-04-15 17:57:14.639000', NULL, NULL),
(307, 'api::animal-aplicacao.animal-aplicacao.create', '2024-04-15 17:57:14.639000', '2024-04-15 17:57:14.639000', NULL, NULL),
(308, 'api::animal-aplicacao.animal-aplicacao.update', '2024-04-15 17:57:14.639000', '2024-04-15 17:57:14.639000', NULL, NULL),
(309, 'api::animal-aplicacao.animal-aplicacao.delete', '2024-04-15 17:57:14.639000', '2024-04-15 17:57:14.639000', NULL, NULL),
(310, 'api::cor-animal.cor-animal.find', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(311, 'api::cor-animal.cor-animal.findOne', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(312, 'api::cor-animal.cor-animal.create', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(313, 'api::cor-animal.cor-animal.update', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(314, 'api::cor-animal.cor-animal.delete', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(315, 'api::especializacao.especializacao.find', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(316, 'api::especializacao.especializacao.findOne', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(317, 'api::especializacao.especializacao.create', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(318, 'api::especializacao.especializacao.update', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(319, 'api::especializacao.especializacao.delete', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(320, 'api::forma-aquisicao.forma-aquisicao.find', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(321, 'api::forma-aquisicao.forma-aquisicao.findOne', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(322, 'api::forma-aquisicao.forma-aquisicao.create', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(323, 'api::forma-aquisicao.forma-aquisicao.update', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(324, 'api::forma-aquisicao.forma-aquisicao.delete', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(325, 'api::marca-vacina.marca-vacina.find', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(326, 'api::marca-vacina.marca-vacina.findOne', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(327, 'api::marca-vacina.marca-vacina.create', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(328, 'api::marca-vacina.marca-vacina.update', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(329, 'api::marca-vacina.marca-vacina.delete', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(330, 'api::raca.raca.find', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(331, 'api::raca.raca.findOne', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(332, 'api::raca.raca.create', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(333, 'api::raca.raca.update', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(334, 'api::raca.raca.delete', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(335, 'api::sexo.sexo.find', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(336, 'api::sexo.sexo.findOne', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(337, 'api::sexo.sexo.create', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(338, 'api::sexo.sexo.update', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(339, 'api::sexo.sexo.delete', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(340, 'api::status-operacional.status-operacional.find', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(341, 'api::status-operacional.status-operacional.findOne', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(342, 'api::status-operacional.status-operacional.create', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(343, 'api::status-operacional.status-operacional.update', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(344, 'api::status-operacional.status-operacional.delete', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(345, 'api::status-saude.status-saude.find', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(346, 'api::status-saude.status-saude.findOne', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(347, 'api::status-saude.status-saude.create', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(348, 'api::status-saude.status-saude.update', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(349, 'api::status-saude.status-saude.delete', '2024-04-26 17:03:49.336000', '2024-04-26 17:03:49.336000', NULL, NULL),
(354, 'plugin::users-permissions.user.count', '2024-04-30 17:04:57.766000', '2024-04-30 17:04:57.766000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `up_permissions_role_links`
--

DROP TABLE IF EXISTS `up_permissions_role_links`;
CREATE TABLE `up_permissions_role_links` (
  `id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 2, 1, 1),
(2, 1, 1, 1),
(3, 5, 2, 1),
(4, 3, 2, 1),
(5, 6, 2, 1),
(6, 8, 2, 1),
(7, 4, 2, 1),
(8, 7, 2, 1),
(9, 9, 2, 1),
(10, 10, 3, 1),
(11, 11, 3, 1),
(12, 12, 3, 1),
(13, 13, 3, 1),
(14, 14, 3, 2),
(15, 15, 3, 2),
(16, 17, 3, 2),
(17, 16, 3, 2),
(18, 19, 3, 2),
(19, 18, 3, 2),
(20, 20, 3, 2),
(21, 21, 1, 2),
(22, 22, 1, 2),
(23, 24, 1, 2),
(24, 23, 1, 2),
(25, 26, 1, 2),
(26, 27, 1, 3),
(27, 25, 1, 3),
(28, 28, 3, 3),
(29, 29, 3, 3),
(30, 30, 3, 4),
(31, 31, 3, 5),
(32, 33, 3, 5),
(33, 32, 3, 5),
(34, 34, 3, 6),
(35, 35, 3, 6),
(36, 36, 3, 6),
(37, 37, 3, 6),
(38, 39, 3, 7),
(39, 38, 3, 7),
(40, 41, 3, 7),
(41, 40, 3, 7),
(42, 42, 3, 8),
(43, 43, 3, 9),
(44, 45, 3, 10),
(45, 47, 3, 10),
(46, 44, 3, 10),
(47, 46, 3, 10),
(49, 53, 3, 11),
(50, 56, 3, 11),
(55, 57, 3, 12),
(56, 55, 3, 12),
(57, 58, 3, 12),
(58, 59, 3, 12),
(59, 54, 3, 12),
(60, 61, 3, 12),
(61, 66, 3, 12),
(62, 60, 3, 13),
(63, 65, 3, 13),
(64, 62, 3, 13),
(65, 67, 3, 13),
(66, 68, 3, 13),
(67, 64, 3, 13),
(68, 63, 3, 13),
(69, 69, 3, 13),
(70, 73, 3, 13),
(71, 70, 3, 13),
(72, 77, 3, 14),
(73, 75, 3, 14),
(74, 78, 3, 14),
(75, 74, 3, 14),
(76, 76, 3, 15),
(77, 72, 3, 15),
(78, 71, 3, 15),
(79, 79, 3, 15),
(80, 80, 3, 15),
(81, 86, 3, 15),
(82, 81, 3, 15),
(83, 89, 3, 15),
(84, 88, 3, 15),
(85, 82, 3, 15),
(86, 83, 3, 16),
(87, 84, 3, 16),
(88, 85, 3, 16),
(89, 87, 3, 16),
(90, 90, 3, 16),
(91, 92, 3, 17),
(92, 94, 3, 17),
(93, 99, 3, 17),
(94, 95, 3, 17),
(95, 93, 3, 17),
(96, 98, 3, 17),
(97, 96, 3, 17),
(98, 91, 3, 17),
(99, 97, 3, 17),
(100, 100, 3, 17),
(101, 101, 3, 18),
(102, 103, 3, 18),
(103, 105, 3, 18),
(104, 106, 3, 18),
(105, 102, 3, 18),
(106, 104, 3, 18),
(107, 107, 3, 18),
(108, 109, 3, 19),
(109, 110, 3, 19),
(110, 111, 3, 19),
(111, 112, 3, 19),
(112, 108, 3, 19),
(113, 113, 3, 19),
(114, 116, 3, 19),
(116, 114, 3, 19),
(117, 117, 3, 19),
(118, 115, 3, 20),
(123, 123, 3, 22),
(124, 124, 3, 22),
(225, 225, 3, 23),
(226, 226, 3, 24),
(227, 227, 3, 24),
(228, 228, 3, 24),
(229, 229, 3, 25),
(230, 230, 3, 26),
(232, 232, 3, 28),
(235, 235, 5, 1),
(236, 236, 5, 1),
(237, 240, 5, 1),
(238, 237, 5, 1),
(239, 244, 5, 1),
(240, 241, 5, 1),
(241, 238, 5, 1),
(242, 242, 5, 1),
(243, 239, 5, 2),
(244, 243, 5, 2),
(245, 245, 5, 2),
(246, 246, 5, 2),
(247, 249, 5, 3),
(248, 247, 5, 3),
(249, 250, 5, 3),
(250, 255, 5, 3),
(251, 248, 5, 3),
(252, 251, 5, 3),
(253, 252, 5, 3),
(254, 253, 5, 3),
(255, 254, 5, 3),
(256, 256, 5, 4),
(257, 257, 5, 4),
(258, 258, 5, 4),
(259, 259, 5, 4),
(260, 260, 5, 4),
(261, 262, 5, 4),
(262, 261, 5, 4),
(263, 265, 5, 4),
(264, 264, 5, 4),
(265, 263, 5, 4),
(266, 266, 5, 5),
(267, 267, 5, 5),
(268, 268, 5, 5),
(269, 269, 5, 5),
(270, 276, 5, 5),
(271, 270, 5, 5),
(272, 274, 5, 5),
(273, 275, 5, 5),
(274, 277, 5, 5),
(275, 278, 5, 5),
(276, 272, 5, 6),
(277, 271, 5, 6),
(278, 279, 5, 6),
(279, 273, 5, 6),
(280, 281, 5, 6),
(281, 282, 5, 6),
(282, 280, 5, 6),
(283, 283, 3, 29),
(284, 284, 3, 30),
(285, 285, 3, 31),
(286, 286, 3, 31),
(287, 287, 3, 31),
(288, 288, 3, 31),
(289, 291, 3, 31),
(290, 292, 3, 31),
(291, 289, 3, 31),
(292, 290, 3, 31),
(293, 293, 3, 32),
(294, 294, 3, 32),
(295, 295, 3, 32),
(296, 298, 3, 32),
(297, 299, 3, 32),
(298, 301, 3, 33),
(299, 300, 3, 33),
(300, 297, 3, 33),
(301, 296, 3, 33),
(302, 302, 3, 33),
(303, 303, 3, 34),
(304, 304, 3, 35),
(305, 305, 3, 36),
(306, 307, 3, 36),
(307, 306, 3, 36),
(308, 308, 3, 36),
(309, 309, 3, 36),
(310, 310, 3, 37),
(311, 311, 3, 37),
(312, 314, 3, 37),
(313, 312, 3, 38),
(314, 313, 3, 38),
(315, 316, 3, 38),
(316, 319, 3, 39),
(317, 317, 3, 39),
(318, 320, 3, 39),
(319, 318, 3, 39),
(320, 321, 3, 39),
(321, 322, 3, 39),
(322, 328, 3, 39),
(323, 315, 3, 39),
(324, 329, 3, 39),
(325, 323, 3, 39),
(326, 324, 3, 40),
(327, 327, 3, 40),
(328, 325, 3, 40),
(329, 330, 3, 40),
(330, 331, 3, 40),
(331, 332, 3, 40),
(332, 333, 3, 40),
(333, 335, 3, 40),
(334, 326, 3, 40),
(335, 339, 3, 40),
(336, 336, 3, 41),
(337, 341, 3, 41),
(338, 334, 3, 42),
(339, 340, 3, 42),
(340, 338, 3, 42),
(341, 342, 3, 42),
(342, 345, 3, 42),
(343, 348, 3, 42),
(344, 337, 3, 42),
(345, 344, 3, 42),
(346, 347, 3, 42),
(347, 349, 3, 42),
(348, 343, 3, 43),
(349, 346, 3, 43),
(354, 354, 3, 44);

-- --------------------------------------------------------

--
-- Estrutura para tabela `up_roles`
--

DROP TABLE IF EXISTS `up_roles`;
CREATE TABLE `up_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-12-27 13:12:48.065000', '2023-12-27 16:08:33.357000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-12-27 13:12:48.075000', '2024-04-30 16:32:38.768000', NULL, NULL),
(3, 'veterinario', 'usuários que lidam com os animais para tratar a sua saude', 'veterinario', '2023-12-27 15:59:30.139000', '2024-04-30 17:04:57.750000', NULL, NULL),
(5, 'Super Administrador', 'pode fazer tudo', 'super_administrador', '2024-03-22 18:38:01.909000', '2024-03-22 18:39:20.335000', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `up_users`
--

DROP TABLE IF EXISTS `up_users`;
CREATE TABLE `up_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL,
  `updated_by_id` int UNSIGNED DEFAULT NULL,
  `cpf` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `cpf`) VALUES
(1, 'Murilo Silva', 'veterinario@gmail.com', 'local', '$2a$10$jo8xrNNriTGccGi/laGUbOv4J.8ofOed/DBZg54w5nZpJVkJuIK3K', NULL, NULL, 1, 0, '2023-12-27 16:09:35.227000', '2024-05-02 20:28:34.900000', 1, 1, 73741253),
(17, 'Vinicius Félix', 'vfelix@gmail.com', 'local', '$2a$10$H/eGkajsI/aWcyuLSwdn4.cC5i53CKpsbqmQPZcTVLAgYAAeM7cZe', NULL, NULL, 1, 0, '2024-03-26 18:56:53.323000', '2024-03-28 00:15:14.948000', NULL, NULL, 12112237),
(22, 'Josué Oliveira', 'josue@gmail.com', 'local', '$2a$10$Nl7xzO4NA2LE8cnDEJgRv.Kapngi4vxPnGeqoQMsMTACUQtXU7Ocq', NULL, NULL, 1, 0, '2024-03-28 00:22:57.217000', '2024-03-28 00:22:57.457000', NULL, NULL, 12312312312),
(23, 'Junior Cavalcante', 'j.cavalcante@gmai.com', 'local', '$2a$10$yL7wxABhCdZ9HrObGTXhhuelNgj2AR5/Vk.aFTETc5qLTRMzvtAxi', NULL, NULL, 1, 0, '2024-03-28 00:27:21.960000', '2024-05-02 19:59:26.782000', NULL, NULL, 32165485215),
(24, 'Patricia Moraes', 'pm.moraespatri@gmail.com', 'local', '$2a$10$qFHeDPmOGTnkZvoDxps9UOssFKGCd64qZcEuK/TmIueTqA9vAnfX6', NULL, NULL, 1, 0, '2024-03-28 00:28:13.073000', '2024-04-30 16:51:19.795000', NULL, NULL, 64257124515),
(31, 'José ferreira', 'jose@gmail.com', 'local', '$2a$10$xQxsZihu9fKEGlR9/BcSwubqcmaNKusg/5mgd/P0cwQTVr2IdXcB6', NULL, NULL, 1, 1, '2024-03-28 14:55:50.742000', '2024-05-02 19:59:33.493000', NULL, NULL, 12341234),
(34, 'joao ferreira', 'joao@gmail.com', 'local', '$2a$10$MRrCvzHV6PlK/LjN7aFPa.G76nwMZ/J77BtLGH2mm2Ta3sFQuU3Ky', NULL, NULL, 1, 1, '2024-05-02 20:27:20.601000', '2024-05-02 20:27:33.374000', NULL, NULL, 12345);

-- --------------------------------------------------------

--
-- Estrutura para tabela `up_users_role_links`
--

DROP TABLE IF EXISTS `up_users_role_links`;
CREATE TABLE `up_users_role_links` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `role_id` int UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(25, 1, 3, 1),
(59, 17, 5, 1),
(62, 22, 5, 2),
(65, 23, 5, 3),
(67, 24, 3, 2),
(84, 31, 3, 5),
(90, 34, 3, 6);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Índices de tabela `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Índices de tabela `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `animals_created_by_id_fk` (`created_by_id`),
  ADD KEY `animals_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `animals_alocacao_links`
--
ALTER TABLE `animals_alocacao_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animals_alocacao_links_unique` (`animal_id`,`unidade_id`),
  ADD KEY `animals_alocacao_links_fk` (`animal_id`),
  ADD KEY `animals_alocacao_links_inv_fk` (`unidade_id`);

--
-- Índices de tabela `animals_condutor_principal_links`
--
ALTER TABLE `animals_condutor_principal_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animals_condutor_principal_links_unique` (`animal_id`,`condutor_id`),
  ADD KEY `animals_condutor_principal_links_fk` (`animal_id`),
  ADD KEY `animals_condutor_principal_links_inv_fk` (`condutor_id`);

--
-- Índices de tabela `animals_condutor_secundario_links`
--
ALTER TABLE `animals_condutor_secundario_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animals_condutor_secundario_links_unique` (`animal_id`,`condutor_id`),
  ADD KEY `animals_condutor_secundario_links_fk` (`animal_id`),
  ADD KEY `animals_condutor_secundario_links_inv_fk` (`condutor_id`);

--
-- Índices de tabela `animals_cor_animal_links`
--
ALTER TABLE `animals_cor_animal_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animals_cor_animal_links_unique` (`animal_id`,`cor_animal_id`),
  ADD KEY `animals_cor_animal_links_fk` (`animal_id`),
  ADD KEY `animals_cor_animal_links_inv_fk` (`cor_animal_id`);

--
-- Índices de tabela `animals_especializacao_links`
--
ALTER TABLE `animals_especializacao_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animals_especializacao_links_unique` (`animal_id`,`especializacao_id`),
  ADD KEY `animals_especializacao_links_fk` (`animal_id`),
  ADD KEY `animals_especializacao_links_inv_fk` (`especializacao_id`);

--
-- Índices de tabela `animals_forma_aquisicao_links`
--
ALTER TABLE `animals_forma_aquisicao_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animals_forma_aquisicao_links_unique` (`animal_id`,`forma_aquisicao_id`),
  ADD KEY `animals_forma_aquisicao_links_fk` (`animal_id`),
  ADD KEY `animals_forma_aquisicao_links_inv_fk` (`forma_aquisicao_id`);

--
-- Índices de tabela `animals_raca_links`
--
ALTER TABLE `animals_raca_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animals_raca_links_unique` (`animal_id`,`raca_id`),
  ADD KEY `animals_raca_links_fk` (`animal_id`),
  ADD KEY `animals_raca_links_inv_fk` (`raca_id`);

--
-- Índices de tabela `animals_sexo_links`
--
ALTER TABLE `animals_sexo_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animals_sexo_links_unique` (`animal_id`,`sexo_id`),
  ADD KEY `animals_sexo_links_fk` (`animal_id`),
  ADD KEY `animals_sexo_links_inv_fk` (`sexo_id`);

--
-- Índices de tabela `animals_status_operacional_links`
--
ALTER TABLE `animals_status_operacional_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animals_status_operacional_links_unique` (`animal_id`,`status_operacional_id`),
  ADD KEY `animals_status_operacional_links_fk` (`animal_id`),
  ADD KEY `animals_status_operacional_links_inv_fk` (`status_operacional_id`);

--
-- Índices de tabela `animals_status_saude_links`
--
ALTER TABLE `animals_status_saude_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animals_status_saude_links_unique` (`animal_id`,`status_saude_id`),
  ADD KEY `animals_status_saude_links_fk` (`animal_id`),
  ADD KEY `animals_status_saude_links_inv_fk` (`status_saude_id`);

--
-- Índices de tabela `animal_aplicacaos`
--
ALTER TABLE `animal_aplicacaos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `animal_aplicacaos_created_by_id_fk` (`created_by_id`),
  ADD KEY `animal_aplicacaos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `animal_aplicacaos_animal_links`
--
ALTER TABLE `animal_aplicacaos_animal_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animal_aplicacaos_animal_links_unique` (`animal_aplicacao_id`,`animal_id`),
  ADD KEY `animal_aplicacaos_animal_links_fk` (`animal_aplicacao_id`),
  ADD KEY `animal_aplicacaos_animal_links_inv_fk` (`animal_id`);

--
-- Índices de tabela `animal_aplicacaos_tipo_aplicacao_links`
--
ALTER TABLE `animal_aplicacaos_tipo_aplicacao_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animal_aplicacaos_tipo_aplicacao_links_unique` (`animal_aplicacao_id`,`tipo_aplicacao_id`),
  ADD KEY `animal_aplicacaos_tipo_aplicacao_links_fk` (`animal_aplicacao_id`),
  ADD KEY `animal_aplicacaos_tipo_aplicacao_links_inv_fk` (`tipo_aplicacao_id`);

--
-- Índices de tabela `animal_tratamento_medicos`
--
ALTER TABLE `animal_tratamento_medicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `animal_tratamento_medicos_created_by_id_fk` (`created_by_id`),
  ADD KEY `animal_tratamento_medicos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `animal_tratamento_medicos_animal_links`
--
ALTER TABLE `animal_tratamento_medicos_animal_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animal_tratamento_medicos_animal_links_unique` (`animal_tratamento_medico_id`,`animal_id`),
  ADD KEY `animal_tratamento_medicos_animal_links_fk` (`animal_tratamento_medico_id`),
  ADD KEY `animal_tratamento_medicos_animal_links_inv_fk` (`animal_id`),
  ADD KEY `animal_tratamento_medicos_animal_links_order_inv_fk` (`animal_tratamento_medico_order`);

--
-- Índices de tabela `animal_tratamento_medicos_tratamento_medico_links`
--
ALTER TABLE `animal_tratamento_medicos_tratamento_medico_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animal_tratamento_medicos_tratamento_medico_links_unique` (`animal_tratamento_medico_id`,`tratamento_medico_id`),
  ADD KEY `animal_tratamento_medicos_tratamento_medico_links_fk` (`animal_tratamento_medico_id`),
  ADD KEY `animal_tratamento_medicos_tratamento_medico_links_inv_fk` (`tratamento_medico_id`);

--
-- Índices de tabela `animal_vacinas`
--
ALTER TABLE `animal_vacinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `animal_vacinas_created_by_id_fk` (`created_by_id`),
  ADD KEY `animal_vacinas_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `animal_vacinas_animal_links`
--
ALTER TABLE `animal_vacinas_animal_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animal_vacinas_animal_links_unique` (`animal_vacina_id`,`animal_id`),
  ADD KEY `animal_vacinas_animal_links_fk` (`animal_vacina_id`),
  ADD KEY `animal_vacinas_animal_links_inv_fk` (`animal_id`);

--
-- Índices de tabela `animal_vacinas_nome_vacina_links`
--
ALTER TABLE `animal_vacinas_nome_vacina_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `animal_vacinas_nome_vacina_links_unique` (`animal_vacina_id`,`marca_vacina_id`),
  ADD KEY `animal_vacinas_nome_vacina_links_fk` (`animal_vacina_id`),
  ADD KEY `animal_vacinas_nome_vacina_links_inv_fk` (`marca_vacina_id`);

--
-- Índices de tabela `categoria_obs_saudes`
--
ALTER TABLE `categoria_obs_saudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_obs_saudes_created_by_id_fk` (`created_by_id`),
  ADD KEY `categoria_obs_saudes_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `condutors`
--
ALTER TABLE `condutors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `condutors_created_by_id_fk` (`created_by_id`),
  ADD KEY `condutors_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `condutors_unidade_links`
--
ALTER TABLE `condutors_unidade_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `condutors_unidade_links_unique` (`condutor_id`,`unidade_id`),
  ADD KEY `condutors_unidade_links_fk` (`condutor_id`),
  ADD KEY `condutors_unidade_links_inv_fk` (`unidade_id`);

--
-- Índices de tabela `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consultas_created_by_id_fk` (`created_by_id`),
  ADD KEY `consultas_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `consultas_animal_links`
--
ALTER TABLE `consultas_animal_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `consultas_animal_links_unique` (`consulta_id`,`animal_id`),
  ADD KEY `consultas_animal_links_fk` (`consulta_id`),
  ADD KEY `consultas_animal_links_inv_fk` (`animal_id`);

--
-- Índices de tabela `consultas_users_permissions_user_links`
--
ALTER TABLE `consultas_users_permissions_user_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `consultas_users_permissions_user_links_unique` (`consulta_id`,`user_id`),
  ADD KEY `consultas_users_permissions_user_links_fk` (`consulta_id`),
  ADD KEY `consultas_users_permissions_user_links_inv_fk` (`user_id`);

--
-- Índices de tabela `cor_animals`
--
ALTER TABLE `cor_animals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cor_animals_created_by_id_fk` (`created_by_id`),
  ADD KEY `cor_animals_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `doencas`
--
ALTER TABLE `doencas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doencas_created_by_id_fk` (`created_by_id`),
  ADD KEY `doencas_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `especializacaos`
--
ALTER TABLE `especializacaos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `especializacaos_created_by_id_fk` (`created_by_id`),
  ADD KEY `especializacaos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `e_alergicos`
--
ALTER TABLE `e_alergicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_alergicos_created_by_id_fk` (`created_by_id`),
  ADD KEY `e_alergicos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `e_alergicos_animal_links`
--
ALTER TABLE `e_alergicos_animal_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e_alergicos_animal_links_unique` (`e_alergico_id`,`animal_id`),
  ADD KEY `e_alergicos_animal_links_fk` (`e_alergico_id`),
  ADD KEY `e_alergicos_animal_links_inv_fk` (`animal_id`),
  ADD KEY `e_alergicos_animal_links_order_inv_fk` (`e_alergico_order`);

--
-- Índices de tabela `e_alergicos_medicamento_links`
--
ALTER TABLE `e_alergicos_medicamento_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e_alergicos_medicamento_links_unique` (`e_alergico_id`,`medicamento_id`),
  ADD KEY `e_alergicos_medicamento_links_fk` (`e_alergico_id`),
  ADD KEY `e_alergicos_medicamento_links_inv_fk` (`medicamento_id`);

--
-- Índices de tabela `e_causados`
--
ALTER TABLE `e_causados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_causados_created_by_id_fk` (`created_by_id`),
  ADD KEY `e_causados_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `e_causados_doenca_links`
--
ALTER TABLE `e_causados_doenca_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e_causados_doenca_links_unique` (`e_causado_id`,`doenca_id`),
  ADD KEY `e_causados_doenca_links_fk` (`e_causado_id`),
  ADD KEY `e_causados_doenca_links_inv_fk` (`doenca_id`);

--
-- Índices de tabela `e_causados_tratamento_medico_links`
--
ALTER TABLE `e_causados_tratamento_medico_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e_causados_tratamento_medico_links_unique` (`e_causado_id`,`tratamento_medico_id`),
  ADD KEY `e_causados_tratamento_medico_links_fk` (`e_causado_id`),
  ADD KEY `e_causados_tratamento_medico_links_inv_fk` (`tratamento_medico_id`),
  ADD KEY `e_causados_tratamento_medico_links_order_inv_fk` (`e_causado_order`);

--
-- Índices de tabela `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Índices de tabela `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Índices de tabela `forma_aquisicaos`
--
ALTER TABLE `forma_aquisicaos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forma_aquisicaos_created_by_id_fk` (`created_by_id`),
  ADD KEY `forma_aquisicaos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `justificativa_baixas`
--
ALTER TABLE `justificativa_baixas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `justificativa_baixas_created_by_id_fk` (`created_by_id`),
  ADD KEY `justificativa_baixas_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `justificativa_baixas_animal_links`
--
ALTER TABLE `justificativa_baixas_animal_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `justificativa_baixas_animal_links_unique` (`justificativa_baixa_id`,`animal_id`),
  ADD KEY `justificativa_baixas_animal_links_fk` (`justificativa_baixa_id`),
  ADD KEY `justificativa_baixas_animal_links_inv_fk` (`animal_id`);

--
-- Índices de tabela `marca_vacinas`
--
ALTER TABLE `marca_vacinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marca_vacinas_created_by_id_fk` (`created_by_id`),
  ADD KEY `marca_vacinas_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `marca_vacinas_tipo_vacina_links`
--
ALTER TABLE `marca_vacinas_tipo_vacina_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `marca_vacinas_tipo_vacina_links_unique` (`marca_vacina_id`,`tipo_vacina_id`),
  ADD KEY `marca_vacinas_tipo_vacina_links_fk` (`marca_vacina_id`),
  ADD KEY `marca_vacinas_tipo_vacina_links_inv_fk` (`tipo_vacina_id`);

--
-- Índices de tabela `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicamentos_created_by_id_fk` (`created_by_id`),
  ADD KEY `medicamentos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `possuis`
--
ALTER TABLE `possuis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `possuis_created_by_id_fk` (`created_by_id`),
  ADD KEY `possuis_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `possuis_medicamento_links`
--
ALTER TABLE `possuis_medicamento_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `possuis_medicamento_links_unique` (`possui_id`,`medicamento_id`),
  ADD KEY `possuis_medicamento_links_fk` (`possui_id`),
  ADD KEY `possuis_medicamento_links_inv_fk` (`medicamento_id`);

--
-- Índices de tabela `possuis_tratamento_medico_links`
--
ALTER TABLE `possuis_tratamento_medico_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `possuis_tratamento_medico_links_unique` (`possui_id`,`tratamento_medico_id`),
  ADD KEY `possuis_tratamento_medico_links_fk` (`possui_id`),
  ADD KEY `possuis_tratamento_medico_links_inv_fk` (`tratamento_medico_id`),
  ADD KEY `possuis_tratamento_medico_links_order_inv_fk` (`possui_order`);

--
-- Índices de tabela `racaos`
--
ALTER TABLE `racaos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `racaos_created_by_id_fk` (`created_by_id`),
  ADD KEY `racaos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `racas`
--
ALTER TABLE `racas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `racas_created_by_id_fk` (`created_by_id`),
  ADD KEY `racas_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registros_created_by_id_fk` (`created_by_id`),
  ADD KEY `registros_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `registro_obss`
--
ALTER TABLE `registro_obss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registro_obss_created_by_id_fk` (`created_by_id`),
  ADD KEY `registro_obss_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `registro_obss_animal_links`
--
ALTER TABLE `registro_obss_animal_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registro_obss_animal_links_unique` (`registro_obs_id`,`animal_id`),
  ADD KEY `registro_obss_animal_links_fk` (`registro_obs_id`),
  ADD KEY `registro_obss_animal_links_inv_fk` (`animal_id`),
  ADD KEY `registro_obss_animal_links_order_inv_fk` (`registro_obs_order`);

--
-- Índices de tabela `registro_obss_categoria_obs_saude_links`
--
ALTER TABLE `registro_obss_categoria_obs_saude_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registro_obss_categoria_obs_saude_links_unique` (`registro_obs_id`,`categoria_obs_saude_id`),
  ADD KEY `registro_obss_categoria_obs_saude_links_fk` (`registro_obs_id`),
  ADD KEY `registro_obss_categoria_obs_saude_links_inv_fk` (`categoria_obs_saude_id`);

--
-- Índices de tabela `registro_tratamentos`
--
ALTER TABLE `registro_tratamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registro_tratamentos_created_by_id_fk` (`created_by_id`),
  ADD KEY `registro_tratamentos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `registro_tratamentos_registro_links`
--
ALTER TABLE `registro_tratamentos_registro_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registro_tratamentos_registro_links_unique` (`registro_tratamento_id`,`registro_id`),
  ADD KEY `registro_tratamentos_registro_links_fk` (`registro_tratamento_id`),
  ADD KEY `registro_tratamentos_registro_links_inv_fk` (`registro_id`);

--
-- Índices de tabela `registro_tratamentos_tratamento_medico_links`
--
ALTER TABLE `registro_tratamentos_tratamento_medico_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registro_tratamentos_tratamento_medico_links_unique` (`registro_tratamento_id`,`tratamento_medico_id`),
  ADD KEY `registro_tratamentos_tratamento_medico_links_fk` (`registro_tratamento_id`),
  ADD KEY `registro_tratamentos_tratamento_medico_links_inv_fk` (`tratamento_medico_id`);

--
-- Índices de tabela `sexos`
--
ALTER TABLE `sexos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sexos_created_by_id_fk` (`created_by_id`),
  ADD KEY `sexos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `status_operacionals`
--
ALTER TABLE `status_operacionals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_operacionals_created_by_id_fk` (`created_by_id`),
  ADD KEY `status_operacionals_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `status_saudes`
--
ALTER TABLE `status_saudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_saudes_created_by_id_fk` (`created_by_id`),
  ADD KEY `status_saudes_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Índices de tabela `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Índices de tabela `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tipo_aplicacaos`
--
ALTER TABLE `tipo_aplicacaos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_aplicacaos_created_by_id_fk` (`created_by_id`),
  ADD KEY `tipo_aplicacaos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `tipo_aplicacaos_tipo_produto_antiparasitario_links`
--
ALTER TABLE `tipo_aplicacaos_tipo_produto_antiparasitario_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipo_aplicacaos_tipo_produto_antiparasitario_links_unique` (`tipo_aplicacao_id`,`tipo_produto_antiparasitario_id`),
  ADD KEY `tipo_aplicacaos_tipo_produto_antiparasitario_links_fk` (`tipo_aplicacao_id`),
  ADD KEY `tipo_aplicacaos_tipo_produto_antiparasitario_links_inv_fk` (`tipo_produto_antiparasitario_id`);

--
-- Índices de tabela `tipo_produto_antiparasitarios`
--
ALTER TABLE `tipo_produto_antiparasitarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_produto_antiparasitarios_created_by_id_fk` (`created_by_id`),
  ADD KEY `tipo_produto_antiparasitarios_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `tipo_vacinas`
--
ALTER TABLE `tipo_vacinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_vacinas_created_by_id_fk` (`created_by_id`),
  ADD KEY `tipo_vacinas_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `tratamento_medicos`
--
ALTER TABLE `tratamento_medicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tratamento_medicos_created_by_id_fk` (`created_by_id`),
  ADD KEY `tratamento_medicos_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `tratamento_medicos_animal_links`
--
ALTER TABLE `tratamento_medicos_animal_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tratamento_medicos_animal_links_unique` (`tratamento_medico_id`,`animal_id`),
  ADD KEY `tratamento_medicos_animal_links_fk` (`tratamento_medico_id`),
  ADD KEY `tratamento_medicos_animal_links_inv_fk` (`animal_id`);

--
-- Índices de tabela `tratamento_medicos_consulta_links`
--
ALTER TABLE `tratamento_medicos_consulta_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tratamento_medicos_consulta_links_unique` (`tratamento_medico_id`,`consulta_id`),
  ADD KEY `tratamento_medicos_consulta_links_fk` (`tratamento_medico_id`),
  ADD KEY `tratamento_medicos_consulta_links_inv_fk` (`consulta_id`);

--
-- Índices de tabela `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unidades_created_by_id_fk` (`created_by_id`),
  ADD KEY `unidades_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Índices de tabela `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Índices de tabela `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Índices de tabela `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=763;

--
-- AUTO_INCREMENT de tabela `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=763;

--
-- AUTO_INCREMENT de tabela `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT de tabela `animals_alocacao_links`
--
ALTER TABLE `animals_alocacao_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT de tabela `animals_condutor_principal_links`
--
ALTER TABLE `animals_condutor_principal_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT de tabela `animals_condutor_secundario_links`
--
ALTER TABLE `animals_condutor_secundario_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT de tabela `animals_cor_animal_links`
--
ALTER TABLE `animals_cor_animal_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `animals_especializacao_links`
--
ALTER TABLE `animals_especializacao_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `animals_forma_aquisicao_links`
--
ALTER TABLE `animals_forma_aquisicao_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `animals_raca_links`
--
ALTER TABLE `animals_raca_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `animals_sexo_links`
--
ALTER TABLE `animals_sexo_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `animals_status_operacional_links`
--
ALTER TABLE `animals_status_operacional_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `animals_status_saude_links`
--
ALTER TABLE `animals_status_saude_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `animal_aplicacaos`
--
ALTER TABLE `animal_aplicacaos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de tabela `animal_aplicacaos_animal_links`
--
ALTER TABLE `animal_aplicacaos_animal_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT de tabela `animal_aplicacaos_tipo_aplicacao_links`
--
ALTER TABLE `animal_aplicacaos_tipo_aplicacao_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de tabela `animal_tratamento_medicos`
--
ALTER TABLE `animal_tratamento_medicos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `animal_tratamento_medicos_animal_links`
--
ALTER TABLE `animal_tratamento_medicos_animal_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `animal_tratamento_medicos_tratamento_medico_links`
--
ALTER TABLE `animal_tratamento_medicos_tratamento_medico_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `animal_vacinas`
--
ALTER TABLE `animal_vacinas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de tabela `animal_vacinas_animal_links`
--
ALTER TABLE `animal_vacinas_animal_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `animal_vacinas_nome_vacina_links`
--
ALTER TABLE `animal_vacinas_nome_vacina_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `categoria_obs_saudes`
--
ALTER TABLE `categoria_obs_saudes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `condutors`
--
ALTER TABLE `condutors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `condutors_unidade_links`
--
ALTER TABLE `condutors_unidade_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `consultas_animal_links`
--
ALTER TABLE `consultas_animal_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de tabela `consultas_users_permissions_user_links`
--
ALTER TABLE `consultas_users_permissions_user_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `cor_animals`
--
ALTER TABLE `cor_animals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `doencas`
--
ALTER TABLE `doencas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `especializacaos`
--
ALTER TABLE `especializacaos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `e_alergicos`
--
ALTER TABLE `e_alergicos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `e_alergicos_animal_links`
--
ALTER TABLE `e_alergicos_animal_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `e_alergicos_medicamento_links`
--
ALTER TABLE `e_alergicos_medicamento_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `e_causados`
--
ALTER TABLE `e_causados`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `e_causados_doenca_links`
--
ALTER TABLE `e_causados_doenca_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `e_causados_tratamento_medico_links`
--
ALTER TABLE `e_causados_tratamento_medico_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `files`
--
ALTER TABLE `files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=851;

--
-- AUTO_INCREMENT de tabela `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=853;

--
-- AUTO_INCREMENT de tabela `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=765;

--
-- AUTO_INCREMENT de tabela `forma_aquisicaos`
--
ALTER TABLE `forma_aquisicaos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `justificativa_baixas`
--
ALTER TABLE `justificativa_baixas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `justificativa_baixas_animal_links`
--
ALTER TABLE `justificativa_baixas_animal_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `marca_vacinas`
--
ALTER TABLE `marca_vacinas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de tabela `marca_vacinas_tipo_vacina_links`
--
ALTER TABLE `marca_vacinas_tipo_vacina_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `possuis`
--
ALTER TABLE `possuis`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `possuis_medicamento_links`
--
ALTER TABLE `possuis_medicamento_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `possuis_tratamento_medico_links`
--
ALTER TABLE `possuis_tratamento_medico_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `racaos`
--
ALTER TABLE `racaos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `racas`
--
ALTER TABLE `racas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `registro_obss`
--
ALTER TABLE `registro_obss`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `registro_obss_animal_links`
--
ALTER TABLE `registro_obss_animal_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `registro_obss_categoria_obs_saude_links`
--
ALTER TABLE `registro_obss_categoria_obs_saude_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `registro_tratamentos`
--
ALTER TABLE `registro_tratamentos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `registro_tratamentos_registro_links`
--
ALTER TABLE `registro_tratamentos_registro_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `registro_tratamentos_tratamento_medico_links`
--
ALTER TABLE `registro_tratamentos_tratamento_medico_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sexos`
--
ALTER TABLE `sexos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `status_operacionals`
--
ALTER TABLE `status_operacionals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `status_saudes`
--
ALTER TABLE `status_saudes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de tabela `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT de tabela `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo_aplicacaos`
--
ALTER TABLE `tipo_aplicacaos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `tipo_aplicacaos_tipo_produto_antiparasitario_links`
--
ALTER TABLE `tipo_aplicacaos_tipo_produto_antiparasitario_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `tipo_produto_antiparasitarios`
--
ALTER TABLE `tipo_produto_antiparasitarios`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tipo_vacinas`
--
ALTER TABLE `tipo_vacinas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `tratamento_medicos`
--
ALTER TABLE `tratamento_medicos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tratamento_medicos_animal_links`
--
ALTER TABLE `tratamento_medicos_animal_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tratamento_medicos_consulta_links`
--
ALTER TABLE `tratamento_medicos_consulta_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT de tabela `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT de tabela `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `animals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `animals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `animals_alocacao_links`
--
ALTER TABLE `animals_alocacao_links`
  ADD CONSTRAINT `animals_alocacao_links_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animals_alocacao_links_inv_fk` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animals_condutor_principal_links`
--
ALTER TABLE `animals_condutor_principal_links`
  ADD CONSTRAINT `animals_condutor_principal_links_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animals_condutor_principal_links_inv_fk` FOREIGN KEY (`condutor_id`) REFERENCES `condutors` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animals_condutor_secundario_links`
--
ALTER TABLE `animals_condutor_secundario_links`
  ADD CONSTRAINT `animals_condutor_secundario_links_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animals_condutor_secundario_links_inv_fk` FOREIGN KEY (`condutor_id`) REFERENCES `condutors` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animals_cor_animal_links`
--
ALTER TABLE `animals_cor_animal_links`
  ADD CONSTRAINT `animals_cor_animal_links_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animals_cor_animal_links_inv_fk` FOREIGN KEY (`cor_animal_id`) REFERENCES `cor_animals` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animals_especializacao_links`
--
ALTER TABLE `animals_especializacao_links`
  ADD CONSTRAINT `animals_especializacao_links_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animals_especializacao_links_inv_fk` FOREIGN KEY (`especializacao_id`) REFERENCES `especializacaos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animals_forma_aquisicao_links`
--
ALTER TABLE `animals_forma_aquisicao_links`
  ADD CONSTRAINT `animals_forma_aquisicao_links_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animals_forma_aquisicao_links_inv_fk` FOREIGN KEY (`forma_aquisicao_id`) REFERENCES `forma_aquisicaos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animals_raca_links`
--
ALTER TABLE `animals_raca_links`
  ADD CONSTRAINT `animals_raca_links_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animals_raca_links_inv_fk` FOREIGN KEY (`raca_id`) REFERENCES `racas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animals_sexo_links`
--
ALTER TABLE `animals_sexo_links`
  ADD CONSTRAINT `animals_sexo_links_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animals_sexo_links_inv_fk` FOREIGN KEY (`sexo_id`) REFERENCES `sexos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animals_status_operacional_links`
--
ALTER TABLE `animals_status_operacional_links`
  ADD CONSTRAINT `animals_status_operacional_links_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animals_status_operacional_links_inv_fk` FOREIGN KEY (`status_operacional_id`) REFERENCES `status_operacionals` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animals_status_saude_links`
--
ALTER TABLE `animals_status_saude_links`
  ADD CONSTRAINT `animals_status_saude_links_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animals_status_saude_links_inv_fk` FOREIGN KEY (`status_saude_id`) REFERENCES `status_saudes` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animal_aplicacaos`
--
ALTER TABLE `animal_aplicacaos`
  ADD CONSTRAINT `animal_aplicacaos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `animal_aplicacaos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `animal_aplicacaos_animal_links`
--
ALTER TABLE `animal_aplicacaos_animal_links`
  ADD CONSTRAINT `animal_aplicacaos_animal_links_fk` FOREIGN KEY (`animal_aplicacao_id`) REFERENCES `animal_aplicacaos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animal_aplicacaos_animal_links_inv_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animal_aplicacaos_tipo_aplicacao_links`
--
ALTER TABLE `animal_aplicacaos_tipo_aplicacao_links`
  ADD CONSTRAINT `animal_aplicacaos_tipo_aplicacao_links_fk` FOREIGN KEY (`animal_aplicacao_id`) REFERENCES `animal_aplicacaos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animal_aplicacaos_tipo_aplicacao_links_inv_fk` FOREIGN KEY (`tipo_aplicacao_id`) REFERENCES `tipo_aplicacaos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animal_tratamento_medicos`
--
ALTER TABLE `animal_tratamento_medicos`
  ADD CONSTRAINT `animal_tratamento_medicos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `animal_tratamento_medicos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `animal_tratamento_medicos_animal_links`
--
ALTER TABLE `animal_tratamento_medicos_animal_links`
  ADD CONSTRAINT `animal_tratamento_medicos_animal_links_fk` FOREIGN KEY (`animal_tratamento_medico_id`) REFERENCES `animal_tratamento_medicos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animal_tratamento_medicos_animal_links_inv_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animal_tratamento_medicos_tratamento_medico_links`
--
ALTER TABLE `animal_tratamento_medicos_tratamento_medico_links`
  ADD CONSTRAINT `animal_tratamento_medicos_tratamento_medico_links_fk` FOREIGN KEY (`animal_tratamento_medico_id`) REFERENCES `animal_tratamento_medicos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animal_tratamento_medicos_tratamento_medico_links_inv_fk` FOREIGN KEY (`tratamento_medico_id`) REFERENCES `tratamento_medicos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animal_vacinas`
--
ALTER TABLE `animal_vacinas`
  ADD CONSTRAINT `animal_vacinas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `animal_vacinas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `animal_vacinas_animal_links`
--
ALTER TABLE `animal_vacinas_animal_links`
  ADD CONSTRAINT `animal_vacinas_animal_links_fk` FOREIGN KEY (`animal_vacina_id`) REFERENCES `animal_vacinas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animal_vacinas_animal_links_inv_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `animal_vacinas_nome_vacina_links`
--
ALTER TABLE `animal_vacinas_nome_vacina_links`
  ADD CONSTRAINT `animal_vacinas_nome_vacina_links_fk` FOREIGN KEY (`animal_vacina_id`) REFERENCES `animal_vacinas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `animal_vacinas_nome_vacina_links_inv_fk` FOREIGN KEY (`marca_vacina_id`) REFERENCES `marca_vacinas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `categoria_obs_saudes`
--
ALTER TABLE `categoria_obs_saudes`
  ADD CONSTRAINT `categoria_obs_saudes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categoria_obs_saudes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `condutors`
--
ALTER TABLE `condutors`
  ADD CONSTRAINT `condutors_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `condutors_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `condutors_unidade_links`
--
ALTER TABLE `condutors_unidade_links`
  ADD CONSTRAINT `condutors_unidade_links_fk` FOREIGN KEY (`condutor_id`) REFERENCES `condutors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `condutors_unidade_links_inv_fk` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `consultas`
--
ALTER TABLE `consultas`
  ADD CONSTRAINT `consultas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `consultas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `consultas_animal_links`
--
ALTER TABLE `consultas_animal_links`
  ADD CONSTRAINT `consultas_animal_links_fk` FOREIGN KEY (`consulta_id`) REFERENCES `consultas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consultas_animal_links_inv_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `consultas_users_permissions_user_links`
--
ALTER TABLE `consultas_users_permissions_user_links`
  ADD CONSTRAINT `consultas_users_permissions_user_links_fk` FOREIGN KEY (`consulta_id`) REFERENCES `consultas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consultas_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `cor_animals`
--
ALTER TABLE `cor_animals`
  ADD CONSTRAINT `cor_animals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cor_animals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `doencas`
--
ALTER TABLE `doencas`
  ADD CONSTRAINT `doencas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `doencas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `especializacaos`
--
ALTER TABLE `especializacaos`
  ADD CONSTRAINT `especializacaos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `especializacaos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `e_alergicos`
--
ALTER TABLE `e_alergicos`
  ADD CONSTRAINT `e_alergicos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `e_alergicos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `e_alergicos_animal_links`
--
ALTER TABLE `e_alergicos_animal_links`
  ADD CONSTRAINT `e_alergicos_animal_links_fk` FOREIGN KEY (`e_alergico_id`) REFERENCES `e_alergicos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `e_alergicos_animal_links_inv_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `e_alergicos_medicamento_links`
--
ALTER TABLE `e_alergicos_medicamento_links`
  ADD CONSTRAINT `e_alergicos_medicamento_links_fk` FOREIGN KEY (`e_alergico_id`) REFERENCES `e_alergicos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `e_alergicos_medicamento_links_inv_fk` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamentos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `e_causados`
--
ALTER TABLE `e_causados`
  ADD CONSTRAINT `e_causados_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `e_causados_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `e_causados_doenca_links`
--
ALTER TABLE `e_causados_doenca_links`
  ADD CONSTRAINT `e_causados_doenca_links_fk` FOREIGN KEY (`e_causado_id`) REFERENCES `e_causados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `e_causados_doenca_links_inv_fk` FOREIGN KEY (`doenca_id`) REFERENCES `doencas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `e_causados_tratamento_medico_links`
--
ALTER TABLE `e_causados_tratamento_medico_links`
  ADD CONSTRAINT `e_causados_tratamento_medico_links_fk` FOREIGN KEY (`e_causado_id`) REFERENCES `e_causados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `e_causados_tratamento_medico_links_inv_fk` FOREIGN KEY (`tratamento_medico_id`) REFERENCES `tratamento_medicos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `forma_aquisicaos`
--
ALTER TABLE `forma_aquisicaos`
  ADD CONSTRAINT `forma_aquisicaos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `forma_aquisicaos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `justificativa_baixas`
--
ALTER TABLE `justificativa_baixas`
  ADD CONSTRAINT `justificativa_baixas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `justificativa_baixas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `justificativa_baixas_animal_links`
--
ALTER TABLE `justificativa_baixas_animal_links`
  ADD CONSTRAINT `justificativa_baixas_animal_links_fk` FOREIGN KEY (`justificativa_baixa_id`) REFERENCES `justificativa_baixas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `justificativa_baixas_animal_links_inv_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `marca_vacinas`
--
ALTER TABLE `marca_vacinas`
  ADD CONSTRAINT `marca_vacinas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marca_vacinas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `marca_vacinas_tipo_vacina_links`
--
ALTER TABLE `marca_vacinas_tipo_vacina_links`
  ADD CONSTRAINT `marca_vacinas_tipo_vacina_links_fk` FOREIGN KEY (`marca_vacina_id`) REFERENCES `marca_vacinas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marca_vacinas_tipo_vacina_links_inv_fk` FOREIGN KEY (`tipo_vacina_id`) REFERENCES `tipo_vacinas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD CONSTRAINT `medicamentos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `medicamentos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `possuis`
--
ALTER TABLE `possuis`
  ADD CONSTRAINT `possuis_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `possuis_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `possuis_medicamento_links`
--
ALTER TABLE `possuis_medicamento_links`
  ADD CONSTRAINT `possuis_medicamento_links_fk` FOREIGN KEY (`possui_id`) REFERENCES `possuis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `possuis_medicamento_links_inv_fk` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamentos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `possuis_tratamento_medico_links`
--
ALTER TABLE `possuis_tratamento_medico_links`
  ADD CONSTRAINT `possuis_tratamento_medico_links_fk` FOREIGN KEY (`possui_id`) REFERENCES `possuis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `possuis_tratamento_medico_links_inv_fk` FOREIGN KEY (`tratamento_medico_id`) REFERENCES `tratamento_medicos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `racaos`
--
ALTER TABLE `racaos`
  ADD CONSTRAINT `racaos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `racaos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `racas`
--
ALTER TABLE `racas`
  ADD CONSTRAINT `racas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `racas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `registros_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `registros_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `registro_obss`
--
ALTER TABLE `registro_obss`
  ADD CONSTRAINT `registro_obss_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `registro_obss_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `registro_obss_animal_links`
--
ALTER TABLE `registro_obss_animal_links`
  ADD CONSTRAINT `registro_obss_animal_links_fk` FOREIGN KEY (`registro_obs_id`) REFERENCES `registro_obss` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `registro_obss_animal_links_inv_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `registro_obss_categoria_obs_saude_links`
--
ALTER TABLE `registro_obss_categoria_obs_saude_links`
  ADD CONSTRAINT `registro_obss_categoria_obs_saude_links_fk` FOREIGN KEY (`registro_obs_id`) REFERENCES `registro_obss` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `registro_obss_categoria_obs_saude_links_inv_fk` FOREIGN KEY (`categoria_obs_saude_id`) REFERENCES `categoria_obs_saudes` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `registro_tratamentos`
--
ALTER TABLE `registro_tratamentos`
  ADD CONSTRAINT `registro_tratamentos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `registro_tratamentos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `registro_tratamentos_registro_links`
--
ALTER TABLE `registro_tratamentos_registro_links`
  ADD CONSTRAINT `registro_tratamentos_registro_links_fk` FOREIGN KEY (`registro_tratamento_id`) REFERENCES `registro_tratamentos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `registro_tratamentos_registro_links_inv_fk` FOREIGN KEY (`registro_id`) REFERENCES `registros` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `registro_tratamentos_tratamento_medico_links`
--
ALTER TABLE `registro_tratamentos_tratamento_medico_links`
  ADD CONSTRAINT `registro_tratamentos_tratamento_medico_links_fk` FOREIGN KEY (`registro_tratamento_id`) REFERENCES `registro_tratamentos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `registro_tratamentos_tratamento_medico_links_inv_fk` FOREIGN KEY (`tratamento_medico_id`) REFERENCES `tratamento_medicos` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `sexos`
--
ALTER TABLE `sexos`
  ADD CONSTRAINT `sexos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sexos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `status_operacionals`
--
ALTER TABLE `status_operacionals`
  ADD CONSTRAINT `status_operacionals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `status_operacionals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `status_saudes`
--
ALTER TABLE `status_saudes`
  ADD CONSTRAINT `status_saudes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `status_saudes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tipo_aplicacaos`
--
ALTER TABLE `tipo_aplicacaos`
  ADD CONSTRAINT `tipo_aplicacaos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tipo_aplicacaos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `tipo_aplicacaos_tipo_produto_antiparasitario_links`
--
ALTER TABLE `tipo_aplicacaos_tipo_produto_antiparasitario_links`
  ADD CONSTRAINT `tipo_aplicacaos_tipo_produto_antiparasitario_links_fk` FOREIGN KEY (`tipo_aplicacao_id`) REFERENCES `tipo_aplicacaos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tipo_aplicacaos_tipo_produto_antiparasitario_links_inv_fk` FOREIGN KEY (`tipo_produto_antiparasitario_id`) REFERENCES `tipo_produto_antiparasitarios` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tipo_produto_antiparasitarios`
--
ALTER TABLE `tipo_produto_antiparasitarios`
  ADD CONSTRAINT `tipo_produto_antiparasitarios_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tipo_produto_antiparasitarios_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `tipo_vacinas`
--
ALTER TABLE `tipo_vacinas`
  ADD CONSTRAINT `tipo_vacinas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tipo_vacinas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `tratamento_medicos`
--
ALTER TABLE `tratamento_medicos`
  ADD CONSTRAINT `tratamento_medicos_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tratamento_medicos_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `tratamento_medicos_animal_links`
--
ALTER TABLE `tratamento_medicos_animal_links`
  ADD CONSTRAINT `tratamento_medicos_animal_links_fk` FOREIGN KEY (`tratamento_medico_id`) REFERENCES `tratamento_medicos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tratamento_medicos_animal_links_inv_fk` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tratamento_medicos_consulta_links`
--
ALTER TABLE `tratamento_medicos_consulta_links`
  ADD CONSTRAINT `tratamento_medicos_consulta_links_fk` FOREIGN KEY (`tratamento_medico_id`) REFERENCES `tratamento_medicos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tratamento_medicos_consulta_links_inv_fk` FOREIGN KEY (`consulta_id`) REFERENCES `consultas` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `unidades`
--
ALTER TABLE `unidades`
  ADD CONSTRAINT `unidades_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `unidades_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Restrições para tabelas `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
