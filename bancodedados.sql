-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Nov-2024 às 18:31
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `flow777`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `affiliate_histories`
--

CREATE TABLE `affiliate_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `inviter` int(10) UNSIGNED NOT NULL,
  `commission` decimal(20,2) NOT NULL DEFAULT 0.00,
  `commission_type` varchar(191) DEFAULT NULL,
  `deposited` tinyint(4) DEFAULT 0,
  `deposited_amount` decimal(10,2) DEFAULT 0.00,
  `losses` bigint(20) DEFAULT 0,
  `losses_amount` decimal(10,2) DEFAULT 0.00,
  `commission_paid` decimal(10,2) DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receita` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `affiliate_withdraws`
--

CREATE TABLE `affiliate_withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `proof` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `pix_key` varchar(191) DEFAULT NULL,
  `pix_type` varchar(191) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `bank_info` text DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(191) DEFAULT NULL,
  `image` varchar(191) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'home',
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `banners`
--

INSERT INTO `banners` (`id`, `link`, `image`, `type`, `description`, `created_at`, `updated_at`) VALUES
(18, '#', '01J1D4ESJ2F50MM159PJDVCRXM.webp', 'home', '....', '2024-04-07 16:30:46', '2024-06-27 15:19:07'),
(21, NULL, '01J1E1XF67VMVQAA8SMP8QMVE6.webp', 'home', NULL, '2024-06-27 20:53:56', '2024-06-27 20:53:56'),
(22, NULL, '01J1E1ZV85FJJVFBYXJTTKVE2B.png', 'home', NULL, '2024-06-27 20:55:14', '2024-06-27 20:55:14'),
(34, NULL, '01J83AXZDG3FSZ7ZY3C2GAZS56.jpg', 'carousel', NULL, '2024-09-18 19:49:44', '2024-09-18 19:49:44'),
(33, NULL, '01J83AX38X1H7H827HAG8A0GSG.gif', 'carousel', NULL, '2024-09-18 19:49:15', '2024-09-18 19:49:15'),
(32, NULL, '01J83AC0139XWR4TCDBCKBT3T5.gif', 'carousel', NULL, '2024-09-18 19:39:55', '2024-09-18 19:39:55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `baus`
--

CREATE TABLE `baus` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bau_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `caminho` varchar(255) DEFAULT NULL,
  `dataS` timestamp NULL DEFAULT NULL,
  `aberto_em` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `baus`
--

INSERT INTO `baus` (`id`, `user_id`, `bau_id`, `status`, `caminho`, `dataS`, `aberto_em`, `updated_at`, `created_at`) VALUES
(1, 57233, 1, 3, '/assets/images/big1.png', NULL, '2024-09-10 20:43:15', '2024-09-10 20:43:15', '2024-09-10 20:42:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Popular', 'Popular', '/storage/rox/popular_off.png', 'popular', '2023-11-13 14:59:07', '2024-04-30 18:13:46'),
(17, 'Slots', 'Slots', '/storage/rox/slots_off.png', 'slots', '2023-12-24 12:06:46', '2024-04-30 18:13:57'),
(18, 'Pescaria', 'Pescaria', '/storage/rox/fish_off.png', 'pescaria', '2023-12-24 12:10:01', '2024-04-30 18:14:17'),
(19, 'Blockchain', 'Blockchain', '/storage/rox/blockchain_off.png', 'blockchain', '2023-12-24 12:12:36', '2024-04-30 18:14:37'),
(22, 'Cartas', 'Cartas', '/storage/rox/cartas_off.png', 'cartas', '2024-04-16 11:26:47', '2024-04-30 18:15:22'),
(20, 'Favoritos', 'Favoritos', '/storage/rox/favorito_off.png', 'favoritos', '2023-12-24 12:19:42', '2024-04-30 18:14:49'),
(21, 'Recentes', 'Recentes', '/storage/rox/recente_off.png', 'recentes', '2023-12-24 20:03:48', '2024-04-30 18:15:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `category_game`
--

CREATE TABLE `category_game` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura da tabela `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol` varchar(5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'Leke', 'ALL', 'Lek', '2023-11-07 18:01:38', NULL),
(2, 'Dollars', 'USD', '$', '2023-11-07 18:01:38', NULL),
(3, 'Afghanis', 'AFN', '؋', '2023-11-07 18:01:38', NULL),
(4, 'Pesos', 'ARS', '$', '2023-11-07 18:01:38', NULL),
(5, 'Guilders', 'AWG', 'ƒ', '2023-11-07 18:01:38', NULL),
(6, 'Dollars', 'AUD', '$', '2023-11-07 18:01:38', NULL),
(7, 'New Manats', 'AZN', 'ман', '2023-11-07 18:01:38', NULL),
(8, 'Dollars', 'BSD', '$', '2023-11-07 18:01:38', NULL),
(9, 'Dollars', 'BBD', '$', '2023-11-07 18:01:38', NULL),
(10, 'Rubles', 'BYR', 'p.', '2023-11-07 18:01:38', NULL),
(11, 'Euro', 'EUR', '€', '2023-11-07 18:01:38', NULL),
(12, 'Dollars', 'BZD', 'BZ$', '2023-11-07 18:01:38', NULL),
(13, 'Dollars', 'BMD', '$', '2023-11-07 18:01:38', NULL),
(14, 'Bolivianos', 'BOB', '$b', '2023-11-07 18:01:38', NULL),
(15, 'Convertible Marka', 'BAM', 'KM', '2023-11-07 18:01:38', NULL),
(16, 'Pula', 'BWP', 'P', '2023-11-07 18:01:38', NULL),
(17, 'Leva', 'BGN', 'лв', '2023-11-07 18:01:38', NULL),
(18, 'Reais', 'BRL', 'R$', '2023-11-07 18:01:38', NULL),
(19, 'Pounds', 'GBP', '£', '2023-11-07 18:01:38', NULL),
(20, 'Dollars', 'BND', '$', '2023-11-07 18:01:38', NULL),
(21, 'Riels', 'KHR', '៛', '2023-11-07 18:01:38', NULL),
(22, 'Dollars', 'CAD', '$', '2023-11-07 18:01:38', NULL),
(23, 'Dollars', 'KYD', '$', '2023-11-07 18:01:38', NULL),
(24, 'Pesos', 'CLP', '$', '2023-11-07 18:01:38', NULL),
(25, 'Yuan Renminbi', 'CNY', '¥', '2023-11-07 18:01:38', NULL),
(26, 'Pesos', 'COP', '$', '2023-11-07 18:01:38', NULL),
(27, 'Colón', 'CRC', '₡', '2023-11-07 18:01:38', NULL),
(28, 'Kuna', 'HRK', 'kn', '2023-11-07 18:01:38', NULL),
(29, 'Pesos', 'CUP', '₱', '2023-11-07 18:01:38', NULL),
(30, 'Koruny', 'CZK', 'Kč', '2023-11-07 18:01:38', NULL),
(31, 'Kroner', 'DKK', 'kr', '2023-11-07 18:01:38', NULL),
(32, 'Pesos', 'DOP', 'RD$', '2023-11-07 18:01:38', NULL),
(33, 'Dollars', 'XCD', '$', '2023-11-07 18:01:38', NULL),
(34, 'Pounds', 'EGP', '£', '2023-11-07 18:01:38', NULL),
(35, 'Colones', 'SVC', '$', '2023-11-07 18:01:38', NULL),
(36, 'Pounds', 'FKP', '£', '2023-11-07 18:01:38', NULL),
(37, 'Dollars', 'FJD', '$', '2023-11-07 18:01:38', NULL),
(38, 'Cedis', 'GHC', '¢', '2023-11-07 18:01:38', NULL),
(39, 'Pounds', 'GIP', '£', '2023-11-07 18:01:38', NULL),
(40, 'Quetzales', 'GTQ', 'Q', '2023-11-07 18:01:38', NULL),
(41, 'Pounds', 'GGP', '£', '2023-11-07 18:01:38', NULL),
(42, 'Dollars', 'GYD', '$', '2023-11-07 18:01:38', NULL),
(43, 'Lempiras', 'HNL', 'L', '2023-11-07 18:01:38', NULL),
(44, 'Dollars', 'HKD', '$', '2023-11-07 18:01:38', NULL),
(45, 'Forint', 'HUF', 'Ft', '2023-11-07 18:01:38', NULL),
(46, 'Kronur', 'ISK', 'kr', '2023-11-07 18:01:38', NULL),
(47, 'Rupees', 'INR', 'Rp', '2023-11-07 18:01:38', NULL),
(48, 'Rupiahs', 'IDR', 'Rp', '2023-11-07 18:01:38', NULL),
(49, 'Rials', 'IRR', '﷼', '2023-11-07 18:01:38', NULL),
(50, 'Pounds', 'IMP', '£', '2023-11-07 18:01:38', NULL),
(51, 'New Shekels', 'ILS', '₪', '2023-11-07 18:01:38', NULL),
(52, 'Dollars', 'JMD', 'J$', '2023-11-07 18:01:38', NULL),
(53, 'Yen', 'JPY', '¥', '2023-11-07 18:01:38', NULL),
(54, 'Pounds', 'JEP', '£', '2023-11-07 18:01:38', NULL),
(55, 'Tenge', 'KZT', 'лв', '2023-11-07 18:01:38', NULL),
(56, 'Won', 'KPW', '₩', '2023-11-07 18:01:38', NULL),
(57, 'Won', 'KRW', '₩', '2023-11-07 18:01:38', NULL),
(58, 'Soms', 'KGS', 'лв', '2023-11-07 18:01:38', NULL),
(59, 'Kips', 'LAK', '₭', '2023-11-07 18:01:38', NULL),
(60, 'Lati', 'LVL', 'Ls', '2023-11-07 18:01:38', NULL),
(61, 'Pounds', 'LBP', '£', '2023-11-07 18:01:38', NULL),
(62, 'Dollars', 'LRD', '$', '2023-11-07 18:01:38', NULL),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2023-11-07 18:01:38', NULL),
(64, 'Litai', 'LTL', 'Lt', '2023-11-07 18:01:38', NULL),
(65, 'Denars', 'MKD', 'ден', '2023-11-07 18:01:38', NULL),
(66, 'Ringgits', 'MYR', 'RM', '2023-11-07 18:01:38', NULL),
(67, 'Rupees', 'MUR', '₨', '2023-11-07 18:01:38', NULL),
(68, 'Pesos', 'MXN', '$', '2023-11-07 18:01:38', NULL),
(69, 'Tugriks', 'MNT', '₮', '2023-11-07 18:01:38', NULL),
(70, 'Meticais', 'MZN', 'MT', '2023-11-07 18:01:38', NULL),
(71, 'Dollars', 'NAD', '$', '2023-11-07 18:01:38', NULL),
(72, 'Rupees', 'NPR', '₨', '2023-11-07 18:01:38', NULL),
(73, 'Guilders', 'ANG', 'ƒ', '2023-11-07 18:01:38', NULL),
(74, 'Dollars', 'NZD', '$', '2023-11-07 18:01:38', NULL),
(75, 'Cordobas', 'NIO', 'C$', '2023-11-07 18:01:38', NULL),
(76, 'Nairas', 'NGN', '₦', '2023-11-07 18:01:38', NULL),
(77, 'Krone', 'NOK', 'kr', '2023-11-07 18:01:38', NULL),
(78, 'Rials', 'OMR', '﷼', '2023-11-07 18:01:38', NULL),
(79, 'Rupees', 'PKR', '₨', '2023-11-07 18:01:38', NULL),
(80, 'Balboa', 'PAB', 'B/.', '2023-11-07 18:01:38', NULL),
(81, 'Guarani', 'PYG', 'Gs', '2023-11-07 18:01:38', NULL),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2023-11-07 18:01:38', NULL),
(83, 'Pesos', 'PHP', 'Php', '2023-11-07 18:01:38', NULL),
(84, 'Zlotych', 'PLN', 'zł', '2023-11-07 18:01:38', NULL),
(85, 'Rials', 'QAR', '﷼', '2023-11-07 18:01:38', NULL),
(86, 'New Lei', 'RON', 'lei', '2023-11-07 18:01:38', NULL),
(87, 'Rubles', 'RUB', 'руб', '2023-11-07 18:01:38', NULL),
(88, 'Pounds', 'SHP', '£', '2023-11-07 18:01:38', NULL),
(89, 'Riyals', 'SAR', '﷼', '2023-11-07 18:01:38', NULL),
(90, 'Dinars', 'RSD', 'Дин.', '2023-11-07 18:01:38', NULL),
(91, 'Rupees', 'SCR', '₨', '2023-11-07 18:01:38', NULL),
(92, 'Dollars', 'SGD', '$', '2023-11-07 18:01:38', NULL),
(93, 'Dollars', 'SBD', '$', '2023-11-07 18:01:38', NULL),
(94, 'Shillings', 'SOS', 'S', '2023-11-07 18:01:38', NULL),
(95, 'Rand', 'ZAR', 'R', '2023-11-07 18:01:38', NULL),
(96, 'Rupees', 'LKR', '₨', '2023-11-07 18:01:38', NULL),
(97, 'Kronor', 'SEK', 'kr', '2023-11-07 18:01:38', NULL),
(98, 'Dollars', 'SRD', '$', '2023-11-07 18:01:38', NULL),
(99, 'Pounds', 'SYP', '£', '2023-11-07 18:01:38', NULL),
(100, 'New Dollars', 'TWD', 'NT$', '2023-11-07 18:01:38', NULL),
(101, 'Baht', 'THB', '฿', '2023-11-07 18:01:38', NULL),
(102, 'Dollars', 'TTD', 'TT$', '2023-11-07 18:01:38', NULL),
(103, 'Lira', 'TRY', '₺', '2023-11-07 18:01:38', NULL),
(104, 'Liras', 'TRL', '£', '2023-11-07 18:01:38', NULL),
(105, 'Dollars', 'TVD', '$', '2023-11-07 18:01:38', NULL),
(106, 'Hryvnia', 'UAH', '₴', '2023-11-07 18:01:38', NULL),
(107, 'Pesos', 'UYU', '$U', '2023-11-07 18:01:38', NULL),
(108, 'Sums', 'UZS', 'лв', '2023-11-07 18:01:38', NULL),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2023-11-07 18:01:38', NULL),
(110, 'Dong', 'VND', '₫', '2023-11-07 18:01:38', NULL),
(111, 'Rials', 'YER', '﷼', '2023-11-07 18:01:38', NULL),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2023-11-07 18:01:38', NULL),
(113, 'Rupees', 'INR', '₹', '2023-11-07 18:01:38', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `currency_alloweds`
--

CREATE TABLE `currency_alloweds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_layouts`
--

CREATE TABLE `custom_layouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `font_family_default` varchar(191) DEFAULT NULL,
  `primary_color` varchar(20) NOT NULL DEFAULT '#0073D2',
  `primary_opacity_color` varchar(20) DEFAULT NULL,
  `secundary_color` varchar(20) NOT NULL DEFAULT '#084375',
  `gray_dark_color` varchar(20) NOT NULL DEFAULT '#3b3b3b',
  `gray_light_color` varchar(20) NOT NULL DEFAULT '#c9c9c9',
  `gray_medium_color` varchar(20) NOT NULL DEFAULT '#676767',
  `gray_over_color` varchar(20) NOT NULL DEFAULT '#1A1C20',
  `title_color` varchar(20) NOT NULL DEFAULT '#ffffff',
  `text_color` varchar(20) NOT NULL DEFAULT '#98A7B5',
  `sub_text_color` varchar(20) NOT NULL DEFAULT '#656E78',
  `placeholder_color` varchar(20) NOT NULL DEFAULT '#4D565E',
  `background_color` varchar(20) NOT NULL DEFAULT '#24262B',
  `background_base` varchar(20) DEFAULT '#ECEFF1',
  `background_base_dark` varchar(20) DEFAULT '#24262B',
  `carousel_banners` varchar(20) DEFAULT '#1E2024',
  `carousel_banners_dark` varchar(20) DEFAULT '#1E2024',
  `sidebar_color` varchar(20) DEFAULT NULL,
  `sidebar_color_dark` varchar(20) DEFAULT NULL,
  `navtop_color` varchar(20) DEFAULT NULL,
  `navtop_color_dark` varchar(20) DEFAULT NULL,
  `side_menu` varchar(20) DEFAULT NULL,
  `side_menu_dark` varchar(20) DEFAULT NULL,
  `input_primary` varchar(20) DEFAULT NULL,
  `input_primary_dark` varchar(20) DEFAULT NULL,
  `footer_color` varchar(20) DEFAULT NULL,
  `footer_color_dark` varchar(20) DEFAULT NULL,
  `card_color` varchar(20) DEFAULT NULL,
  `card_color_dark` varchar(20) DEFAULT NULL,
  `border_radius` varchar(20) NOT NULL DEFAULT '.25rem',
  `custom_css` text DEFAULT NULL,
  `custom_js` text DEFAULT NULL,
  `custom_header` longtext DEFAULT NULL,
  `custom_body` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `telegram` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `whastapp` varchar(191) DEFAULT NULL,
  `youtube` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `custom_layouts`
--

INSERT INTO `custom_layouts` (`id`, `font_family_default`, `primary_color`, `primary_opacity_color`, `secundary_color`, `gray_dark_color`, `gray_light_color`, `gray_medium_color`, `gray_over_color`, `title_color`, `text_color`, `sub_text_color`, `placeholder_color`, `background_color`, `background_base`, `background_base_dark`, `carousel_banners`, `carousel_banners_dark`, `sidebar_color`, `sidebar_color_dark`, `navtop_color`, `navtop_color_dark`, `side_menu`, `side_menu_dark`, `input_primary`, `input_primary_dark`, `footer_color`, `footer_color_dark`, `card_color`, `card_color_dark`, `border_radius`, `custom_css`, `custom_js`, `custom_header`, `custom_body`, `created_at`, `updated_at`, `instagram`, `facebook`, `telegram`, `twitter`, `whastapp`, `youtube`) VALUES
(1, '\'Roboto Condensed\', sans-serif', '#690c28', '#bd4d4d', '#e6a305', '#e8e8eb', '#ffcb05', '#f5f5f5', '#e8e8eb', '#e8e8eb', '#d9d3db', '#e6e6e6', '#e8e8eb', '#e8e8eb', '#690c28', '#7d0d2f', '#690c28', '#690c28', '#0f1923', '#9D1D22', '#ffffff0e', '#0f1923', '#7f1938', '#0f1923', '#a38c26', '#e8e8eb', '#dedfed', '#0f1923', '#3c8f58', '#3c8f58', '.25rem', '\n.screen-button{\ndisplay: none !important;\n}', '', '', '<a href=\"/home/agents\" target=\"_blank\" class=\"float1\" id=\"float1\">\n  <img class=\"icon\" src=\"/storage/rox/baus.gif\"/>\n</a>\n<button class=\"close-btn\" onclick=\"hideFloat1()\"><i class=\"fa-regular fa-circle-xmark\"></i></button>\n\n<style>\n  :root {\n    --icon-color: #fff;\n    --icon-hover: #fff;\n    --background-color: #0060ff;\n    --background-hover: #0044b3;\n  }\n\n  .icon {\n    width: 110px;\n    height: 110px;\n    transform: scale(0.6) translate(15%, 28%);\n  }\n\n  .float1 {\n    position: fixed;\n    cursor: pointer;\n    width: 110px;\n    height: 110px;\n    bottom: 140px;\n    right: 0px;\n    transition: 1s;\n    z-index: 9000;\n  }\n\n  .close-btn {\n    position: fixed;\n    bottom: 200px; /* Ajuste conforme necessário */\n    right: 10px; /* Ajuste conforme necessário */\n    width: 20px;\n    height: 20px;\n   background-color: var(--ci-primary-color);\n    color: var(--ci-secundary-color);\n    border: none;\n    border-radius: 50%;\n    cursor: pointer;\n    z-index: 9001; /* Um nível acima da float2 */\n  }\n\n  .close-btn:hover {\n    background-color: var(--background-hover);\n  }\n\n  @keyframes pulse {\n    0% {\n      -webkit-box-shadow: 0 0 0 0 rgba(0, 96, 255, 1);\n    }\n\n    70% {\n      -webkit-box-shadow: 0 0 0 20px rgba(0, 96, 255, 0);\n    }\n\n    100% {\n      -webkit-box-shadow: 0 0 0 0 rgba(0, 96, 255, 0);\n    }\n  }\n\n\n</style>\n\n<script>\n  function hideFloat1() {\n    document.getElementById(\'float1\').style.display = \'none\';\n    document.querySelector(\'.close-btn\').style.display = \'none\';\n  }\n</script>\n\n\n\n<script>\ndocument.addEventListener(\"DOMContentLoaded\", function() {\n  const paragraphs = document.querySelectorAll(\"p\");\nsetTimeout(function() {\n  paragraphs.forEach(paragraph => {\n    if (paragraph.innerText.includes(\"You Spin Me Round\")) {\n      paragraph.innerText = paragraph.innerText.replace(\"You Spin Me Round\", \"Nome da Nova Música\");\n    }\n  });\n}, 3000);\n});\n</script>\n\n', '2024-01-01 14:36:03', '2024-11-18 17:23:51', '', '', '', 'https://twitter.com/', 'https://api.whatsapp.com/', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Estrutura da tabela `debug`
--

CREATE TABLE `debug` (
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `debug`
--

INSERT INTO `debug` (`text`) VALUES
('\"PlaceBet: 914806915\"'),
('\"PlaceBet: 914806915\"'),
('\"AwardWinnings: 914806915\"'),
('\"PlaceBet: 914806916\"'),
('\"AwardWinnings: 914806916\"'),
('\"PlaceBet: 914806916\"'),
('\"PlaceBet: 914806917\"'),
('\"PlaceBet: 914806918\"'),
('\"AwardWinnings: 914806918\"'),
('\"PlaceBet: 914806918\"'),
('\"PlaceBet: 914806919\"'),
('\"AwardWinnings: 914806919\"'),
('\"AwardWinnings: 914806919\"'),
('\"PlaceBet: 914806920\"'),
('\"PlaceBet: 914806921\"'),
('\"AwardWinnings: 914806921\"'),
('\"PlaceBet: 535367\"'),
('\"PlaceBet: 154646\"'),
('\"PlaceBet: 914806922\"'),
('\"PlaceBet: 914806923\"'),
('\"PlaceBet: 914806924\"'),
('\"AwardWinnings: 914806924\"'),
('{\"idTransaction\":\"875dcfac-f963-4a70-90ef-ad3c357d3f7b\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"value\":150,\"destinationName\":\"Julia Ayumi Imada De Lima\",\"destinationTaxId\":\"***.373.478-**\",\"destinationBank\":\"PICPAY\"}'),
('{\"idTransaction\":\"1979e952-67cb-4924-a463-b79e2716804b\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"value\":177,\"destinationName\":\"Anne Ferreira\",\"destinationTaxId\":\"***.916.418-**\",\"destinationBank\":\"NUBANK\"}'),
('{\"idTransaction\":\"ec707f26-d5b9-4d0b-85cf-56a4d518144b\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"value\":181,\"destinationName\":\"Anne Ferreira\",\"destinationTaxId\":\"***.916.418-**\",\"destinationBank\":\"NUBANK\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `type` varchar(191) NOT NULL,
  `proof` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `currency` varchar(50) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `digito_pay_payments`
--

CREATE TABLE `digito_pay_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `withdrawal_id` int(10) UNSIGNED NOT NULL,
  `pix_key` varchar(191) NOT NULL,
  `pix_type` varchar(191) NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `observation` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` int(10) UNSIGNED NOT NULL,
  `game_server_url` varchar(191) DEFAULT NULL,
  `game_id` varchar(191) NOT NULL,
  `game_name` varchar(191) NOT NULL,
  `game_code` varchar(191) NOT NULL,
  `game_type` varchar(191) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `cover` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `technology` varchar(191) DEFAULT NULL,
  `has_lobby` tinyint(4) NOT NULL DEFAULT 0,
  `is_mobile` tinyint(4) NOT NULL DEFAULT 0,
  `has_freespins` tinyint(4) NOT NULL DEFAULT 0,
  `has_tables` tinyint(4) NOT NULL DEFAULT 0,
  `only_demo` tinyint(4) DEFAULT 0,
  `rtp` bigint(20) NOT NULL DEFAULT 75,
  `distribution` varchar(191) NOT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) DEFAULT 0,
  `show_home` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `games`
--

INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(1, 164, NULL, '48', 'Double Fortune', '48', 'slot', NULL, '01J5K70BVQ8C152SMJV89B48J3.webp', '1', NULL, 0, 0, 0, 0, 0, 90, 'apipg12', 11212, 0, 1, '2024-06-26 18:15:16', '2024-09-18 13:50:04'),
(2, 164, NULL, '42', 'Ganesha Gold', '42', 'slot', NULL, '01J5K711DEAANR7XW7HNK1C0PX.webp', '1', NULL, 0, 0, 0, 0, 0, 90, 'apipg12', 10782, 1, 1, '2024-06-26 18:21:11', '2024-09-18 13:39:02'),
(3, 164, NULL, '63', 'Dragon Tiger Luck', '63', 'slot', NULL, '01J5K6W708FHPAH701PRV862V6.webp', '1', NULL, 0, 0, 0, 0, 0, 90, 'apipg12', 10896, 0, 1, '2024-06-26 18:22:54', '2024-09-18 13:51:21'),
(4, 164, NULL, '40', 'Jungle Delight', '40', 'slot', NULL, '01J5K6S8FCY9XBZW67VQQT5FKK.webp', '1', NULL, 0, 0, 0, 0, 0, 90, 'apipg12', 10746, 0, 1, '2024-06-26 18:23:42', '2024-09-18 13:51:23'),
(5, 164, NULL, '69', 'Bikini Paradise', '69', 'slot', NULL, '01J5VYA39X267PF6S33YJCEM8Q.avif', '1', NULL, 0, 0, 0, 0, 0, 90, 'apipg12', 10954, 0, 1, '2024-06-26 18:25:02', '2024-09-18 13:50:00'),
(6, 164, NULL, '68', 'Fortune Mouse', '68', 'slot', NULL, '01J5K6QSZFGNCCR1HFM308WHX5.webp', '1', NULL, 0, 0, 0, 0, 0, 90, 'apipg12', 102366, 0, 1, '2024-06-26 18:26:01', '2024-09-18 13:49:05'),
(7, 164, NULL, '98', 'Fortune OX', '98', 'slot', NULL, '01J5K6Q50F53H06KXBF5RDXNS2.webp', '1', 'html5', 0, 0, 0, 0, 0, 90, 'apipg12', 103949, 0, 1, '2024-06-26 18:26:32', '2024-09-18 13:51:16'),
(51, 164, NULL, '1543462', 'Fortune Rabbit', '1543462', 'slot', NULL, '01J5K6PG97HRHMN4WF8XTMWR4D.webp', '1', NULL, 0, 0, 0, 0, 0, 90, 'apipg12', 106018, 0, 1, '2024-06-26 18:27:22', '2024-09-18 13:51:25'),
(9, 164, NULL, '1695365', 'Fortune Dragon', '1695365', 'slot', NULL, '01J5K6NPQBFSJJE55D6TCYX6WF.webp', '1', NULL, 0, 0, 0, 0, 0, 90, 'apipg12', 104567, 0, 1, '2024-06-26 18:28:11', '2024-10-04 23:59:24'),
(50, 164, NULL, '126', 'Fortune Tiger', '126', 'slot', NULL, '01J5K6N0MPJ6GMSZYK4DY92K9Y.webp', '1', NULL, 0, 0, 0, 0, 0, 90, 'apipg12', 100007162, 1, 1, '2024-06-26 18:28:53', '2024-10-04 23:54:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `games_keys`
--

CREATE TABLE `games_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connectgames_code` varchar(191) DEFAULT NULL,
  `connectgames_token` varchar(191) DEFAULT NULL,
  `connectgames_secret_key` varchar(191) DEFAULT NULL,
  `connectgames_endpoint` varchar(191) DEFAULT 'https://connectgames.pro/api/v1/',
  `merchant_url` varchar(191) DEFAULT NULL,
  `merchant_id` varchar(191) DEFAULT NULL,
  `merchant_key` varchar(191) DEFAULT NULL,
  `agent_code` varchar(255) DEFAULT NULL,
  `agent_token` varchar(255) DEFAULT NULL,
  `agent_secret_key` varchar(255) DEFAULT NULL,
  `api_endpoint` varchar(255) DEFAULT NULL,
  `salsa_base_uri` varchar(255) DEFAULT NULL,
  `salsa_pn` varchar(255) DEFAULT NULL,
  `salsa_key` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vibra_site_id` varchar(191) DEFAULT NULL,
  `vibra_game_mode` varchar(191) DEFAULT NULL,
  `worldslot_agent_code` varchar(191) DEFAULT NULL,
  `worldslot_agent_token` varchar(191) DEFAULT NULL,
  `worldslot_agent_secret_key` varchar(191) DEFAULT NULL,
  `worldslot_api_endpoint` varchar(191) NOT NULL DEFAULT 'https://api.worldslotgame.com/api/v2/',
  `games2_agent_code` varchar(191) DEFAULT NULL,
  `games2_agent_token` varchar(191) DEFAULT NULL,
  `games2_agent_secret_key` varchar(191) DEFAULT NULL,
  `games2_api_endpoint` varchar(191) NOT NULL DEFAULT 'api.games2api.xyz',
  `evergame_agent_code` varchar(191) DEFAULT NULL,
  `evergame_agent_token` varchar(191) DEFAULT NULL,
  `evergame_api_endpoint` varchar(191) DEFAULT NULL,
  `venix_agent_code` varchar(191) DEFAULT NULL,
  `venix_agent_token` varchar(191) DEFAULT NULL,
  `venix_agent_secret` varchar(191) DEFAULT NULL,
  `play_gaming_hall` varchar(191) DEFAULT NULL,
  `play_gaming_key` varchar(191) DEFAULT NULL,
  `play_gaming_login` varchar(191) DEFAULT NULL,
  `pig_agent_code` varchar(191) DEFAULT NULL,
  `pig_agent_token` varchar(191) DEFAULT NULL,
  `pig_agent_secret` varchar(191) DEFAULT NULL,
  `imperium_games_hall` varchar(191) DEFAULT NULL,
  `imperium_games_key` varchar(191) DEFAULT NULL,
  `imperium_games_login` varchar(191) DEFAULT NULL,
  `playfiver_url` varchar(255) DEFAULT NULL,
  `playfiver_secret` varchar(255) DEFAULT NULL,
  `playfiver_code` varchar(255) DEFAULT NULL,
  `playfiver_token` varchar(255) DEFAULT NULL,
  `apipg12_url` varchar(255) DEFAULT NULL,
  `apipg12_secret` varchar(255) DEFAULT NULL,
  `apipg12_code` varchar(255) DEFAULT NULL,
  `apipg12_token` varchar(255) DEFAULT NULL,
  `apipragmatic40_url` varchar(255) DEFAULT NULL,
  `apipragmatic40_secret` varchar(255) DEFAULT NULL,
  `apipragmatic40_code` varchar(255) DEFAULT NULL,
  `apipragmatic40_token` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `games_keys`
--

INSERT INTO `games_keys` (`id`, `connectgames_code`, `connectgames_token`, `connectgames_secret_key`, `connectgames_endpoint`, `merchant_url`, `merchant_id`, `merchant_key`, `agent_code`, `agent_token`, `agent_secret_key`, `api_endpoint`, `salsa_base_uri`, `salsa_pn`, `salsa_key`, `created_at`, `updated_at`, `vibra_site_id`, `vibra_game_mode`, `worldslot_agent_code`, `worldslot_agent_token`, `worldslot_agent_secret_key`, `worldslot_api_endpoint`, `games2_agent_code`, `games2_agent_token`, `games2_agent_secret_key`, `games2_api_endpoint`, `evergame_agent_code`, `evergame_agent_token`, `evergame_api_endpoint`, `venix_agent_code`, `venix_agent_token`, `venix_agent_secret`, `play_gaming_hall`, `play_gaming_key`, `play_gaming_login`, `pig_agent_code`, `pig_agent_token`, `pig_agent_secret`, `imperium_games_hall`, `imperium_games_key`, `imperium_games_login`, `playfiver_url`, `playfiver_secret`, `playfiver_code`, `playfiver_token`, `apipg12_url`, `apipg12_secret`, `apipg12_code`, `apipg12_token`, `apipragmatic40_url`, `apipragmatic40_secret`, `apipragmatic40_code`, `apipragmatic40_token`) VALUES
(1, 'teste', 'vpBrpGZoZWRDotlMpoDk17QOBWnkkzTs', '9upZ0IxI5f4JAQOxXdzDWKg3h8JCqY2R', 'https://connectgames.pro/api/v1/', 'https://gis.slotegrator.com/api/index.php/v1', NULL, NULL, '', NULL, NULL, 'https://api.fiverscool.com', NULL, NULL, NULL, '2023-11-30 18:03:08', '2024-10-04 17:43:42', NULL, NULL, '2as', '0ad6540a2b2a812d74c036e35c3c18e9', '16600838288af7d55a8be1ec86f13e1e', 'https://api.worldslotgame.com/api/v2/', NULL, NULL, NULL, 'https://api.games2api.xyz', '0be6ec94-0375-47e7-80b6-cd6f4fa2f1c8', 'c5799cb9-2347-4551-883a-f1ccc79f2e3e', 'https://api.playgameslots.online/api/v1/game_launch', '', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'https://api.myrellapg.com', '439bd139-1795-47cd-b213-0cad8fe3ec2f', 'capitao', '8a6e3b7f-fe9e-464b-a463-8837a25f2f1c', 'https://apipragmatic.cgbet777.pro', 'e177c4ee-cf29-43b1-9e02-b7dc503051fd', 'admin', '5f2dbdcb-a59d-42f8-9815-cb34a9723cd9');

-- --------------------------------------------------------

--
-- Estrutura da tabela `game_favorites`
--

CREATE TABLE `game_favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura da tabela `game_likes`
--

CREATE TABLE `game_likes` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura da tabela `game_reviews`
--

CREATE TABLE `game_reviews` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `game_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `suitpay_uri` varchar(191) DEFAULT NULL,
  `suitpay_cliente_id` varchar(191) DEFAULT NULL,
  `suitpay_cliente_secret` varchar(191) DEFAULT NULL,
  `stripe_production` tinyint(4) DEFAULT 0,
  `stripe_public_key` varchar(255) DEFAULT NULL,
  `stripe_secret_key` varchar(255) DEFAULT NULL,
  `stripe_webhook_key` varchar(255) DEFAULT NULL,
  `bspay_uri` varchar(255) DEFAULT NULL,
  `bspay_cliente_id` varchar(255) DEFAULT NULL,
  `bspay_cliente_secret` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `public_key` varchar(191) DEFAULT NULL,
  `private_key` varchar(191) DEFAULT NULL,
  `mp_client_id` varchar(191) DEFAULT NULL,
  `mp_client_secret` varchar(191) DEFAULT NULL,
  `mp_public_key` varchar(191) DEFAULT NULL,
  `mp_access_token` varchar(191) DEFAULT NULL,
  `digitopay_uri` varchar(191) DEFAULT NULL,
  `digitopay_cliente_id` varchar(191) DEFAULT NULL,
  `digitopay_cliente_secret` varchar(191) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `gateways`
--

INSERT INTO `gateways` (`id`, `suitpay_uri`, `suitpay_cliente_id`, `suitpay_cliente_secret`, `stripe_production`, `stripe_public_key`, `stripe_secret_key`, `stripe_webhook_key`, `bspay_uri`, `bspay_cliente_id`, `bspay_cliente_secret`, `created_at`, `updated_at`, `public_key`, `private_key`, `mp_client_id`, `mp_client_secret`, `mp_public_key`, `mp_access_token`, `digitopay_uri`, `digitopay_cliente_id`, `digitopay_cliente_secret`) VALUES
(2, 'https://ws.suitpay.app/api/v1/', 'seuclient_id', 'seuclient_secret', 0, NULL, NULL, NULL, 'https://api.bspay.co/v2/', 'seuclient_id', 'seuclient_secret', '2024-09-05 10:34:41', '2024-11-18 17:23:06', NULL, NULL, NULL, NULL, NULL, NULL, 'https://si5n56mrnjzvt5gr2f536ildr40sqzke.lambda-url.sa-east-1.on.aws/', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ggds_spin_config`
--

CREATE TABLE `ggds_spin_config` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prizes` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `ggds_spin_config`
--

INSERT INTO `ggds_spin_config` (`id`, `prizes`, `created_at`, `updated_at`) VALUES
(1, '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":1},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":2},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":1},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":3},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":1},{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":0},{\"currency\":\"BRL\",\"value\":10}]', '2024-01-11 20:52:59', '2024-04-13 11:07:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ggds_spin_runs`
--

CREATE TABLE `ggds_spin_runs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `nonce` varchar(255) NOT NULL,
  `possibilities` text NOT NULL,
  `prize` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `ggds_spin_runs`
--

INSERT INTO `ggds_spin_runs` (`id`, `key`, `nonce`, `possibilities`, `prize`, `created_at`, `updated_at`) VALUES
(1, '526db7d417473d56275f7dffa72c0c3382aa76df7adcfe7216951fca7dc5e810', '11bea414-f850-460a-91d2-a9703e47ca2e', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":10},{\"currency\":\"BRL\",\"value\":25},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":40},{\"currency\":\"BRL\",\"value\":50},{\"currency\":\"BRL\",\"value\":90},{\"currency\":\"BRL\",\"value\":100},{\"currency\":\"BRL\",\"value\":140},{\"currency\":\"BRL\",\"value\":15},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":500},{\"currency\":\"BRL\",\"value\":1000},{\"currency\":\"BRL\",\"value\":1500},{\"currency\":\"BRL\",\"value\":2000},{\"currency\":\"BRL\",\"value\":2500}]', '{\"currency\":\"BRL\",\"value\":15}', '2024-06-10 21:48:09', '2024-06-10 21:48:09'),
(2, '2c35774a073f9e945a91b9b12b5147639cca66234af69b34b0d6656595372c96', '2b712589-b2ad-40af-82c3-ea01fec5f308', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":10},{\"currency\":\"BRL\",\"value\":25},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":40},{\"currency\":\"BRL\",\"value\":50},{\"currency\":\"BRL\",\"value\":90},{\"currency\":\"BRL\",\"value\":100},{\"currency\":\"BRL\",\"value\":140},{\"currency\":\"BRL\",\"value\":15},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":500},{\"currency\":\"BRL\",\"value\":1000},{\"currency\":\"BRL\",\"value\":1500},{\"currency\":\"BRL\",\"value\":2000},{\"currency\":\"BRL\",\"value\":2500}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-06-10 21:48:20', '2024-06-10 21:48:20'),
(3, 'b2fb0a536434ff90262f17a8963eae59832e778196200fad4ecc1910acbb57f8', '12186e41-b242-4384-8d36-bdcf6a98f9a7', '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":10},{\"currency\":\"BRL\",\"value\":25},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":40},{\"currency\":\"BRL\",\"value\":50},{\"currency\":\"BRL\",\"value\":90},{\"currency\":\"BRL\",\"value\":100},{\"currency\":\"BRL\",\"value\":140},{\"currency\":\"BRL\",\"value\":15},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":500},{\"currency\":\"BRL\",\"value\":1000},{\"currency\":\"BRL\",\"value\":1500},{\"currency\":\"BRL\",\"value\":2000},{\"currency\":\"BRL\",\"value\":2500}]', '{\"currency\":\"BRL\",\"value\":5}', '2024-06-28 07:36:39', '2024-06-28 07:36:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ggr_games`
--

CREATE TABLE `ggr_games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(191) NOT NULL,
  `game` varchar(191) NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT 0.00,
  `balance_win` decimal(20,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(50) DEFAULT NULL,
  `aggregator` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ggr_games_world_slots`
--

CREATE TABLE `ggr_games_world_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(191) NOT NULL,
  `game` varchar(191) NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT 0.00,
  `balance_win` decimal(20,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(50) NOT NULL DEFAULT 'BRL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `liked_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_10_30_034921_create_settings_table', 6),
(7, '2023_11_03_205251_create_sport_categories_table', 1),
(8, '2023_11_03_205252_create_sports_table', 1),
(10, '2023_11_04_001342_create_sport_events_table', 2),
(11, '2023_11_04_213841_add_fields_to_users_table', 3),
(12, '2023_11_07_202919_create_currencies_table', 4),
(13, '2023_11_07_210310_create_wallets_table', 5),
(16, '2023_11_07_214236_create_withdrawals_table', 7),
(17, '2023_11_07_214240_create_deposits_table', 7),
(18, '2023_11_07_214244_create_orders_table', 7),
(19, '2023_11_07_214708_create_suit_pay_payments_table', 7),
(20, '2023_11_07_215204_create_notifications_table', 8),
(21, '2023_11_07_202919_create_currency_alloweds_table', 9),
(22, '2023_11_11_205824_create_casino_categories_table', 9),
(23, '2023_11_11_205834_create_casino_providers_table', 9),
(24, '2023_11_11_205938_create_casino_games_slotgrators_table', 9),
(25, '2023_11_11_210018_create_casino_games_kscinuses_table', 9),
(26, '2023_11_12_225424_create_transactions_table', 10),
(27, '2023_11_12_225431_create_affiliate_histories_table', 10),
(28, '2023_11_12_234643_add_field_to_wallet_table', 11),
(29, '2023_11_14_203632_create_likes_table', 12),
(30, '2023_09_27_214903_create_wallet_changes_table', 13),
(31, '2023_11_16_155140_create_permission_tables', 14),
(32, '2023_11_17_012533_add_language_to_users_table', 15),
(33, '2023_11_22_171616_create_football_leagues_table', 16),
(34, '2023_11_22_175530_create_football_venues_table', 17),
(35, '2023_11_22_175547_create_football_teams_table', 17),
(36, '2023_11_23_143637_create_football_events_table', 18),
(38, '2023_11_29_134520_create_sport_bets_table', 19),
(39, '2023_11_29_135451_create_sport_bets_odds_table', 19),
(40, '2023_11_30_195548_create_gateways_table', 20),
(41, '2023_11_30_195557_create_games_keys_table', 20),
(42, '2023_11_30_195609_create_setting_mails_table', 20),
(43, '2023_10_08_111755_add_fields_to_game_exclusives_table', 20),
(44, '2023_10_07_183921_create_game_exclusives_table', 21),
(45, '2023_10_11_144956_create_system_wallets_table', 22),
(46, '2023_12_18_172721_create_banners_table', 23),
(47, '2023_12_20_135908_create_casino_games_salsas_table', 24),
(48, '2023_12_23_224032_create_fivers_providers_table', 25),
(49, '2023_12_23_224105_create_fivers_games_table', 25),
(50, '2023_12_31_121453_create_custom_layouts_table', 26),
(51, '2024_01_01_193712_create_g_g_r_games_fivers_table', 27),
(52, '2024_01_14_155144_create_missions_table', 28),
(53, '2024_01_14_155150_create_mission_users_table', 28),
(54, '2024_01_19_120728_create_ka_gamings_table', 29),
(55, '2024_01_19_170650_create_categories_table', 30),
(56, '2024_01_19_170657_create_providers_table', 30),
(57, '2024_01_19_170658_create_games_table', 31),
(58, '2023_10_07_183920_create_categories_table', 32),
(59, '2023_10_07_183921_create_providers_table', 33),
(60, '2023_10_07_183922_create_games_table', 34),
(61, '2024_01_20_144529_create_category_games_table', 35),
(62, '2024_01_20_182155_add_vibra_to_games_keys_table', 36),
(63, '2024_01_21_173742_create_game_favorites_table', 37),
(64, '2024_01_21_173752_create_game_likes_table', 37),
(65, '2024_01_21_173803_create_game_reviews_table', 37),
(66, '2024_01_11_231932_create_vibra_casino_games_table', 38),
(69, '2024_01_28_194456_add_vip_to_wallet_table', 40),
(68, '2024_01_28_194645_create_vips_table', 39),
(70, '2024_01_28_231843_create_vip_users_table', 41),
(71, '2024_01_29_102939_add_paid_to_limits_table', 41),
(72, '2024_01_10_001705_create_sub_affiliates_table', 42),
(73, '2024_01_30_120547_create_affiliate_withdraws_table', 43),
(74, '2024_02_09_233936_add_worldslot_to_games_keys_table', 44),
(75, '2024_02_10_191215_add_disable_spin_to_settings_table', 45),
(76, '2024_02_17_210822_add_games2_to_games_keys_table', 46),
(78, '2024_02_20_004853_add_sub_to_settings_table', 47),
(79, '2024_02_24_121146_add_header_to_custom_layouts_table', 48),
(80, '2024_02_26_144235_create_ggr_games_world_slots_table', 49),
(81, '2024_03_01_172613_add_evergame_to_games_keys_table', 50),
(82, '2024_03_03_201700_add_venixkey_to_games_keys_table', 51),
(83, '2024_03_08_201557_add_play_gaming_to_games_keys_table', 52),
(84, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 53),
(85, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 54),
(86, '2024_03_21_223739_add_sharkpay_to_gateways_table', 55),
(87, '2024_03_21_230017_add_reference_to_transactions_table', 56),
(88, '2024_03_24_125025_add_rollver_protection_to_settings_table', 57),
(89, '2024_03_24_134101_add_accept_bonus_to_transactions_table', 58),
(90, '2024_03_24_172243_add_receita_to_affiliate_histories_table', 59),
(91, '2024_03_26_161932_add_baseline_column_to_settings_table', 60),
(92, '2024_03_26_234226_add_playigaming_column_to_games_key_table', 61),
(93, '2024_03_25_231103_add_mercado_pago_column_to_gateways_table', 62),
(94, '2024_03_30_215051_add_social_to_custom_layouts_table', 63),
(98, '2024_03_30_225900_create_digito_pay_payments_table', 66),
(96, '2024_03_30_225929_add_digitopay_to_gateways_table', 64),
(97, '2024_03_31_124211_add_digitopay_to_settings_table', 65),
(99, '2024_04_02_140932_add_default_gateway_to_settings_table', 67),
(100, '2024_03_08_201557_add_imperium_games_to_games_keys_table', 68),
(101, '2024_04_12_201402_add_hash_to_transactions_table', 69);

-- --------------------------------------------------------

--
-- Estrutura da tabela `missions`
--

CREATE TABLE `missions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `challenge_name` varchar(191) NOT NULL,
  `challenge_description` text NOT NULL,
  `challenge_rules` text NOT NULL,
  `challenge_type` varchar(20) NOT NULL DEFAULT 'game',
  `challenge_link` varchar(191) DEFAULT NULL,
  `challenge_start_date` datetime NOT NULL,
  `challenge_end_date` datetime NOT NULL,
  `challenge_bonus` decimal(20,2) NOT NULL DEFAULT 0.00,
  `challenge_total` bigint(20) NOT NULL DEFAULT 1,
  `challenge_currency` varchar(5) NOT NULL,
  `challenge_provider` varchar(50) DEFAULT NULL,
  `challenge_gameid` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mission_users`
--

CREATE TABLE `mission_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `mission_id` int(10) UNSIGNED NOT NULL,
  `rounds` bigint(20) DEFAULT 0,
  `rewards` decimal(10,2) DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura da tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura da tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 330),
(2, 'App\\Models\\User', 387),
(2, 'App\\Models\\User', 388),
(2, 'App\\Models\\User', 389),
(2, 'App\\Models\\User', 390),
(2, 'App\\Models\\User', 391),
(2, 'App\\Models\\User', 393),
(2, 'App\\Models\\User', 394),
(2, 'App\\Models\\User', 395),
(2, 'App\\Models\\User', 396),
(2, 'App\\Models\\User', 397),
(2, 'App\\Models\\User', 398),
(2, 'App\\Models\\User', 400),
(2, 'App\\Models\\User', 401),
(2, 'App\\Models\\User', 402),
(2, 'App\\Models\\User', 403),
(2, 'App\\Models\\User', 404),
(2, 'App\\Models\\User', 405),
(2, 'App\\Models\\User', 406),
(2, 'App\\Models\\User', 407),
(2, 'App\\Models\\User', 409),
(2, 'App\\Models\\User', 411),
(2, 'App\\Models\\User', 412),
(2, 'App\\Models\\User', 413),
(2, 'App\\Models\\User', 414),
(2, 'App\\Models\\User', 416),
(2, 'App\\Models\\User', 417),
(2, 'App\\Models\\User', 418),
(2, 'App\\Models\\User', 419),
(2, 'App\\Models\\User', 421),
(2, 'App\\Models\\User', 423),
(2, 'App\\Models\\User', 424),
(2, 'App\\Models\\User', 427),
(2, 'App\\Models\\User', 428),
(2, 'App\\Models\\User', 429),
(2, 'App\\Models\\User', 430),
(2, 'App\\Models\\User', 431),
(2, 'App\\Models\\User', 433),
(2, 'App\\Models\\User', 435),
(2, 'App\\Models\\User', 436),
(2, 'App\\Models\\User', 439),
(2, 'App\\Models\\User', 441),
(2, 'App\\Models\\User', 444),
(2, 'App\\Models\\User', 445),
(2, 'App\\Models\\User', 446),
(2, 'App\\Models\\User', 448),
(2, 'App\\Models\\User', 450),
(2, 'App\\Models\\User', 452),
(2, 'App\\Models\\User', 456),
(2, 'App\\Models\\User', 458),
(2, 'App\\Models\\User', 460),
(2, 'App\\Models\\User', 462),
(2, 'App\\Models\\User', 464),
(2, 'App\\Models\\User', 465),
(2, 'App\\Models\\User', 466),
(2, 'App\\Models\\User', 468),
(2, 'App\\Models\\User', 470),
(2, 'App\\Models\\User', 473),
(2, 'App\\Models\\User', 474),
(2, 'App\\Models\\User', 476),
(2, 'App\\Models\\User', 479),
(2, 'App\\Models\\User', 480),
(2, 'App\\Models\\User', 482),
(2, 'App\\Models\\User', 485),
(2, 'App\\Models\\User', 486),
(2, 'App\\Models\\User', 487),
(2, 'App\\Models\\User', 492),
(2, 'App\\Models\\User', 494),
(2, 'App\\Models\\User', 497),
(2, 'App\\Models\\User', 500),
(2, 'App\\Models\\User', 504),
(2, 'App\\Models\\User', 508),
(2, 'App\\Models\\User', 510),
(2, 'App\\Models\\User', 511),
(2, 'App\\Models\\User', 514),
(2, 'App\\Models\\User', 518),
(2, 'App\\Models\\User', 520),
(2, 'App\\Models\\User', 521),
(2, 'App\\Models\\User', 524),
(2, 'App\\Models\\User', 525),
(2, 'App\\Models\\User', 528),
(2, 'App\\Models\\User', 534),
(2, 'App\\Models\\User', 538),
(2, 'App\\Models\\User', 539),
(2, 'App\\Models\\User', 540),
(2, 'App\\Models\\User', 546),
(2, 'App\\Models\\User', 549),
(2, 'App\\Models\\User', 550),
(2, 'App\\Models\\User', 552),
(2, 'App\\Models\\User', 560),
(2, 'App\\Models\\User', 561),
(2, 'App\\Models\\User', 562),
(2, 'App\\Models\\User', 568),
(2, 'App\\Models\\User', 57227),
(2, 'App\\Models\\User', 57229),
(2, 'App\\Models\\User', 57230),
(2, 'App\\Models\\User', 57231),
(2, 'App\\Models\\User', 57233),
(2, 'App\\Models\\User', 57234),
(2, 'App\\Models\\User', 57235),
(2, 'App\\Models\\User', 57238),
(2, 'App\\Models\\User', 57239),
(2, 'App\\Models\\User', 57242),
(2, 'App\\Models\\User', 57243),
(2, 'App\\Models\\User', 57244),
(2, 'App\\Models\\User', 57247),
(2, 'App\\Models\\User', 57249),
(2, 'App\\Models\\User', 57252),
(2, 'App\\Models\\User', 57253),
(2, 'App\\Models\\User', 57256),
(2, 'App\\Models\\User', 57260),
(2, 'App\\Models\\User', 57262),
(2, 'App\\Models\\User', 57263),
(2, 'App\\Models\\User', 57264),
(2, 'App\\Models\\User', 57266),
(2, 'App\\Models\\User', 57267),
(2, 'App\\Models\\User', 57268),
(2, 'App\\Models\\User', 57271),
(2, 'App\\Models\\User', 57272),
(2, 'App\\Models\\User', 57273),
(2, 'App\\Models\\User', 57275),
(2, 'App\\Models\\User', 57276),
(2, 'App\\Models\\User', 57278),
(2, 'App\\Models\\User', 57279),
(2, 'App\\Models\\User', 57280),
(2, 'App\\Models\\User', 57281),
(2, 'App\\Models\\User', 57282),
(2, 'App\\Models\\User', 57283),
(2, 'App\\Models\\User', 57285),
(2, 'App\\Models\\User', 57287),
(2, 'App\\Models\\User', 57290),
(2, 'App\\Models\\User', 57291),
(2, 'App\\Models\\User', 57292),
(2, 'App\\Models\\User', 57293),
(2, 'App\\Models\\User', 57295),
(2, 'App\\Models\\User', 57296),
(2, 'App\\Models\\User', 57299),
(2, 'App\\Models\\User', 57300),
(2, 'App\\Models\\User', 57301),
(2, 'App\\Models\\User', 57302),
(2, 'App\\Models\\User', 57303),
(2, 'App\\Models\\User', 57304),
(2, 'App\\Models\\User', 57305),
(2, 'App\\Models\\User', 57307),
(2, 'App\\Models\\User', 57308),
(2, 'App\\Models\\User', 57309),
(2, 'App\\Models\\User', 57310),
(2, 'App\\Models\\User', 57311),
(2, 'App\\Models\\User', 57312),
(2, 'App\\Models\\User', 57315),
(2, 'App\\Models\\User', 57316),
(2, 'App\\Models\\User', 57318),
(2, 'App\\Models\\User', 57323),
(2, 'App\\Models\\User', 57331),
(2, 'App\\Models\\User', 57335),
(2, 'App\\Models\\User', 57337),
(2, 'App\\Models\\User', 57338),
(2, 'App\\Models\\User', 57339),
(2, 'App\\Models\\User', 57340),
(2, 'App\\Models\\User', 57341),
(2, 'App\\Models\\User', 57342),
(2, 'App\\Models\\User', 57343),
(2, 'App\\Models\\User', 57345),
(2, 'App\\Models\\User', 57347),
(2, 'App\\Models\\User', 57349),
(2, 'App\\Models\\User', 57351),
(2, 'App\\Models\\User', 57354),
(2, 'App\\Models\\User', 57356),
(2, 'App\\Models\\User', 57357),
(2, 'App\\Models\\User', 57360),
(2, 'App\\Models\\User', 57362),
(2, 'App\\Models\\User', 57363),
(2, 'App\\Models\\User', 57366),
(2, 'App\\Models\\User', 57367),
(2, 'App\\Models\\User', 57368),
(2, 'App\\Models\\User', 57373),
(2, 'App\\Models\\User', 57374),
(2, 'App\\Models\\User', 57375),
(2, 'App\\Models\\User', 57376),
(2, 'App\\Models\\User', 57377),
(2, 'App\\Models\\User', 57381),
(2, 'App\\Models\\User', 57383),
(2, 'App\\Models\\User', 57385),
(2, 'App\\Models\\User', 57386),
(2, 'App\\Models\\User', 57387),
(2, 'App\\Models\\User', 57388),
(2, 'App\\Models\\User', 57389),
(2, 'App\\Models\\User', 57391),
(2, 'App\\Models\\User', 57392),
(2, 'App\\Models\\User', 57394),
(2, 'App\\Models\\User', 57395),
(2, 'App\\Models\\User', 57398),
(2, 'App\\Models\\User', 57399),
(2, 'App\\Models\\User', 57401),
(2, 'App\\Models\\User', 57405),
(2, 'App\\Models\\User', 57410),
(2, 'App\\Models\\User', 57412),
(2, 'App\\Models\\User', 57413),
(2, 'App\\Models\\User', 57417),
(2, 'App\\Models\\User', 57420),
(2, 'App\\Models\\User', 57421),
(2, 'App\\Models\\User', 57422),
(2, 'App\\Models\\User', 57423),
(2, 'App\\Models\\User', 57425),
(2, 'App\\Models\\User', 57426),
(2, 'App\\Models\\User', 57427),
(2, 'App\\Models\\User', 57428),
(2, 'App\\Models\\User', 57432),
(2, 'App\\Models\\User', 57433),
(2, 'App\\Models\\User', 57434),
(2, 'App\\Models\\User', 57437),
(2, 'App\\Models\\User', 57438),
(2, 'App\\Models\\User', 57441),
(2, 'App\\Models\\User', 57445),
(2, 'App\\Models\\User', 57447),
(2, 'App\\Models\\User', 57448),
(2, 'App\\Models\\User', 57449),
(2, 'App\\Models\\User', 57451),
(2, 'App\\Models\\User', 57453),
(2, 'App\\Models\\User', 57455),
(2, 'App\\Models\\User', 57457),
(2, 'App\\Models\\User', 57461),
(2, 'App\\Models\\User', 57462),
(2, 'App\\Models\\User', 57463),
(2, 'App\\Models\\User', 57465),
(2, 'App\\Models\\User', 57467),
(2, 'App\\Models\\User', 57473),
(2, 'App\\Models\\User', 57474),
(2, 'App\\Models\\User', 57478),
(2, 'App\\Models\\User', 57479),
(2, 'App\\Models\\User', 57482),
(2, 'App\\Models\\User', 57483),
(2, 'App\\Models\\User', 57484),
(2, 'App\\Models\\User', 57487),
(2, 'App\\Models\\User', 57488),
(2, 'App\\Models\\User', 57490),
(2, 'App\\Models\\User', 57491),
(2, 'App\\Models\\User', 57496),
(2, 'App\\Models\\User', 57500),
(2, 'App\\Models\\User', 57505),
(2, 'App\\Models\\User', 57506),
(2, 'App\\Models\\User', 57507),
(2, 'App\\Models\\User', 57509),
(2, 'App\\Models\\User', 57510),
(2, 'App\\Models\\User', 57511),
(2, 'App\\Models\\User', 57512),
(2, 'App\\Models\\User', 57513),
(2, 'App\\Models\\User', 57515),
(2, 'App\\Models\\User', 57516),
(2, 'App\\Models\\User', 57517),
(2, 'App\\Models\\User', 57519),
(2, 'App\\Models\\User', 57520),
(2, 'App\\Models\\User', 57521),
(2, 'App\\Models\\User', 57522),
(2, 'App\\Models\\User', 57524),
(2, 'App\\Models\\User', 57529),
(2, 'App\\Models\\User', 57534),
(2, 'App\\Models\\User', 57536),
(2, 'App\\Models\\User', 57540),
(2, 'App\\Models\\User', 57541),
(2, 'App\\Models\\User', 57542),
(2, 'App\\Models\\User', 57543),
(2, 'App\\Models\\User', 57545),
(2, 'App\\Models\\User', 57546),
(2, 'App\\Models\\User', 57550),
(2, 'App\\Models\\User', 57552),
(2, 'App\\Models\\User', 57554),
(2, 'App\\Models\\User', 57558),
(2, 'App\\Models\\User', 57561),
(2, 'App\\Models\\User', 57563),
(2, 'App\\Models\\User', 57564),
(2, 'App\\Models\\User', 57566),
(2, 'App\\Models\\User', 57568),
(2, 'App\\Models\\User', 57570),
(2, 'App\\Models\\User', 57571),
(2, 'App\\Models\\User', 57572),
(2, 'App\\Models\\User', 57574),
(2, 'App\\Models\\User', 57575),
(2, 'App\\Models\\User', 57578),
(2, 'App\\Models\\User', 57580),
(2, 'App\\Models\\User', 57582),
(2, 'App\\Models\\User', 57587),
(2, 'App\\Models\\User', 57588),
(2, 'App\\Models\\User', 57590),
(2, 'App\\Models\\User', 57593),
(2, 'App\\Models\\User', 57594),
(2, 'App\\Models\\User', 57595),
(2, 'App\\Models\\User', 57597),
(2, 'App\\Models\\User', 57599),
(2, 'App\\Models\\User', 57600),
(2, 'App\\Models\\User', 57601),
(2, 'App\\Models\\User', 57604),
(2, 'App\\Models\\User', 57605),
(2, 'App\\Models\\User', 57608),
(2, 'App\\Models\\User', 57615),
(2, 'App\\Models\\User', 57617),
(2, 'App\\Models\\User', 57618),
(2, 'App\\Models\\User', 57619),
(2, 'App\\Models\\User', 57622),
(2, 'App\\Models\\User', 57625),
(2, 'App\\Models\\User', 57626),
(2, 'App\\Models\\User', 57629),
(2, 'App\\Models\\User', 57630),
(2, 'App\\Models\\User', 57631),
(2, 'App\\Models\\User', 57634),
(2, 'App\\Models\\User', 57638),
(2, 'App\\Models\\User', 57640),
(2, 'App\\Models\\User', 57641),
(2, 'App\\Models\\User', 57643),
(2, 'App\\Models\\User', 57645),
(2, 'App\\Models\\User', 57646),
(2, 'App\\Models\\User', 57649),
(2, 'App\\Models\\User', 57650),
(2, 'App\\Models\\User', 57652),
(2, 'App\\Models\\User', 57655),
(2, 'App\\Models\\User', 57657),
(2, 'App\\Models\\User', 57663),
(2, 'App\\Models\\User', 57665),
(2, 'App\\Models\\User', 57666),
(2, 'App\\Models\\User', 57667),
(2, 'App\\Models\\User', 57669),
(2, 'App\\Models\\User', 57670),
(2, 'App\\Models\\User', 57676),
(2, 'App\\Models\\User', 57677),
(2, 'App\\Models\\User', 57678),
(2, 'App\\Models\\User', 57679),
(2, 'App\\Models\\User', 57682),
(2, 'App\\Models\\User', 57684),
(2, 'App\\Models\\User', 57685),
(2, 'App\\Models\\User', 57687),
(2, 'App\\Models\\User', 57688),
(2, 'App\\Models\\User', 57692),
(2, 'App\\Models\\User', 57693),
(2, 'App\\Models\\User', 57694),
(2, 'App\\Models\\User', 57695),
(2, 'App\\Models\\User', 57701),
(2, 'App\\Models\\User', 57702),
(2, 'App\\Models\\User', 57703),
(2, 'App\\Models\\User', 57707),
(2, 'App\\Models\\User', 57709),
(2, 'App\\Models\\User', 57710),
(2, 'App\\Models\\User', 57711),
(2, 'App\\Models\\User', 57712),
(2, 'App\\Models\\User', 57713),
(2, 'App\\Models\\User', 57716),
(2, 'App\\Models\\User', 57719),
(2, 'App\\Models\\User', 57721),
(2, 'App\\Models\\User', 57724),
(2, 'App\\Models\\User', 57726),
(2, 'App\\Models\\User', 57727),
(2, 'App\\Models\\User', 57728),
(2, 'App\\Models\\User', 57732),
(2, 'App\\Models\\User', 57733),
(2, 'App\\Models\\User', 57734),
(2, 'App\\Models\\User', 57735),
(2, 'App\\Models\\User', 57736),
(2, 'App\\Models\\User', 57738),
(2, 'App\\Models\\User', 57739),
(2, 'App\\Models\\User', 57741),
(2, 'App\\Models\\User', 57742),
(2, 'App\\Models\\User', 57743),
(2, 'App\\Models\\User', 57745),
(2, 'App\\Models\\User', 57747),
(2, 'App\\Models\\User', 57748),
(2, 'App\\Models\\User', 57749),
(2, 'App\\Models\\User', 57752),
(2, 'App\\Models\\User', 57753),
(2, 'App\\Models\\User', 57756),
(2, 'App\\Models\\User', 57757),
(2, 'App\\Models\\User', 57758),
(2, 'App\\Models\\User', 57760),
(2, 'App\\Models\\User', 57761),
(2, 'App\\Models\\User', 57762),
(2, 'App\\Models\\User', 57763),
(2, 'App\\Models\\User', 57764),
(2, 'App\\Models\\User', 57765),
(2, 'App\\Models\\User', 57766),
(2, 'App\\Models\\User', 57768),
(2, 'App\\Models\\User', 57771),
(2, 'App\\Models\\User', 57772),
(2, 'App\\Models\\User', 57773),
(2, 'App\\Models\\User', 57774),
(2, 'App\\Models\\User', 57775),
(2, 'App\\Models\\User', 57777),
(2, 'App\\Models\\User', 57782),
(2, 'App\\Models\\User', 57787),
(2, 'App\\Models\\User', 57789),
(2, 'App\\Models\\User', 57791),
(2, 'App\\Models\\User', 57793),
(2, 'App\\Models\\User', 57795),
(2, 'App\\Models\\User', 57802),
(2, 'App\\Models\\User', 57803),
(2, 'App\\Models\\User', 57804),
(2, 'App\\Models\\User', 57806),
(2, 'App\\Models\\User', 57807),
(2, 'App\\Models\\User', 57809),
(2, 'App\\Models\\User', 57817),
(2, 'App\\Models\\User', 57818),
(2, 'App\\Models\\User', 57819),
(2, 'App\\Models\\User', 57825),
(2, 'App\\Models\\User', 57826),
(2, 'App\\Models\\User', 57827),
(2, 'App\\Models\\User', 57828),
(2, 'App\\Models\\User', 57829),
(2, 'App\\Models\\User', 57830),
(2, 'App\\Models\\User', 57831),
(2, 'App\\Models\\User', 57835),
(2, 'App\\Models\\User', 57837),
(2, 'App\\Models\\User', 57839),
(2, 'App\\Models\\User', 57841),
(2, 'App\\Models\\User', 57842),
(2, 'App\\Models\\User', 57843),
(2, 'App\\Models\\User', 57845),
(2, 'App\\Models\\User', 57846),
(2, 'App\\Models\\User', 57850),
(2, 'App\\Models\\User', 57852),
(2, 'App\\Models\\User', 57854),
(2, 'App\\Models\\User', 57855),
(2, 'App\\Models\\User', 57856),
(2, 'App\\Models\\User', 57857),
(2, 'App\\Models\\User', 57859),
(2, 'App\\Models\\User', 57860),
(2, 'App\\Models\\User', 57863),
(2, 'App\\Models\\User', 57865),
(2, 'App\\Models\\User', 57867),
(2, 'App\\Models\\User', 57868),
(2, 'App\\Models\\User', 57870),
(2, 'App\\Models\\User', 57871),
(2, 'App\\Models\\User', 57873),
(2, 'App\\Models\\User', 57875),
(2, 'App\\Models\\User', 57876),
(2, 'App\\Models\\User', 57879),
(2, 'App\\Models\\User', 57882),
(2, 'App\\Models\\User', 57883),
(2, 'App\\Models\\User', 57884),
(2, 'App\\Models\\User', 57886),
(2, 'App\\Models\\User', 57887),
(2, 'App\\Models\\User', 57889),
(2, 'App\\Models\\User', 57890),
(2, 'App\\Models\\User', 57891),
(2, 'App\\Models\\User', 57892),
(2, 'App\\Models\\User', 57893),
(2, 'App\\Models\\User', 57895),
(2, 'App\\Models\\User', 57896),
(2, 'App\\Models\\User', 57897),
(2, 'App\\Models\\User', 57899),
(2, 'App\\Models\\User', 57900),
(2, 'App\\Models\\User', 57901),
(2, 'App\\Models\\User', 57902),
(2, 'App\\Models\\User', 57906),
(2, 'App\\Models\\User', 57908),
(2, 'App\\Models\\User', 57909),
(2, 'App\\Models\\User', 57910),
(2, 'App\\Models\\User', 57911),
(2, 'App\\Models\\User', 57915),
(2, 'App\\Models\\User', 57916),
(2, 'App\\Models\\User', 57917),
(2, 'App\\Models\\User', 57918),
(2, 'App\\Models\\User', 57919),
(2, 'App\\Models\\User', 57920),
(2, 'App\\Models\\User', 57923),
(2, 'App\\Models\\User', 57928),
(2, 'App\\Models\\User', 57931),
(2, 'App\\Models\\User', 57932),
(2, 'App\\Models\\User', 57934),
(2, 'App\\Models\\User', 57940),
(2, 'App\\Models\\User', 57944),
(2, 'App\\Models\\User', 57946),
(2, 'App\\Models\\User', 57947),
(2, 'App\\Models\\User', 57948),
(2, 'App\\Models\\User', 57949),
(2, 'App\\Models\\User', 57950),
(2, 'App\\Models\\User', 57953),
(2, 'App\\Models\\User', 57956),
(2, 'App\\Models\\User', 57957),
(2, 'App\\Models\\User', 57958),
(2, 'App\\Models\\User', 57959),
(2, 'App\\Models\\User', 57963),
(2, 'App\\Models\\User', 57965),
(2, 'App\\Models\\User', 57966),
(2, 'App\\Models\\User', 57967),
(2, 'App\\Models\\User', 57969),
(2, 'App\\Models\\User', 57970),
(2, 'App\\Models\\User', 57971),
(2, 'App\\Models\\User', 57974),
(2, 'App\\Models\\User', 57975),
(2, 'App\\Models\\User', 57976),
(2, 'App\\Models\\User', 57983),
(2, 'App\\Models\\User', 57984),
(2, 'App\\Models\\User', 57990),
(2, 'App\\Models\\User', 57997),
(2, 'App\\Models\\User', 58000),
(2, 'App\\Models\\User', 58001),
(2, 'App\\Models\\User', 58003),
(2, 'App\\Models\\User', 58009),
(2, 'App\\Models\\User', 58014),
(2, 'App\\Models\\User', 58015),
(2, 'App\\Models\\User', 58017),
(2, 'App\\Models\\User', 58020),
(2, 'App\\Models\\User', 58027),
(2, 'App\\Models\\User', 58030),
(2, 'App\\Models\\User', 58033),
(2, 'App\\Models\\User', 58034),
(2, 'App\\Models\\User', 58035),
(2, 'App\\Models\\User', 58040),
(2, 'App\\Models\\User', 58042),
(2, 'App\\Models\\User', 58043),
(2, 'App\\Models\\User', 58046),
(2, 'App\\Models\\User', 58047),
(2, 'App\\Models\\User', 58051),
(2, 'App\\Models\\User', 58052),
(2, 'App\\Models\\User', 58061),
(2, 'App\\Models\\User', 58063),
(2, 'App\\Models\\User', 58073),
(2, 'App\\Models\\User', 58078),
(2, 'App\\Models\\User', 58079),
(2, 'App\\Models\\User', 58080),
(2, 'App\\Models\\User', 58082),
(2, 'App\\Models\\User', 58087),
(2, 'App\\Models\\User', 58101),
(2, 'App\\Models\\User', 58102),
(2, 'App\\Models\\User', 58106),
(2, 'App\\Models\\User', 58119),
(2, 'App\\Models\\User', 58126),
(2, 'App\\Models\\User', 58128),
(2, 'App\\Models\\User', 58131),
(2, 'App\\Models\\User', 58135),
(2, 'App\\Models\\User', 58138),
(2, 'App\\Models\\User', 58145),
(2, 'App\\Models\\User', 58147),
(2, 'App\\Models\\User', 58148),
(2, 'App\\Models\\User', 58153),
(2, 'App\\Models\\User', 58155),
(2, 'App\\Models\\User', 58157),
(2, 'App\\Models\\User', 58158),
(2, 'App\\Models\\User', 58162),
(2, 'App\\Models\\User', 58165),
(2, 'App\\Models\\User', 58166),
(2, 'App\\Models\\User', 58171),
(2, 'App\\Models\\User', 58172),
(2, 'App\\Models\\User', 58174),
(2, 'App\\Models\\User', 58176),
(2, 'App\\Models\\User', 58178),
(2, 'App\\Models\\User', 58184),
(2, 'App\\Models\\User', 58186),
(2, 'App\\Models\\User', 58188),
(2, 'App\\Models\\User', 58189),
(2, 'App\\Models\\User', 58190),
(2, 'App\\Models\\User', 58193),
(2, 'App\\Models\\User', 58195),
(2, 'App\\Models\\User', 58197),
(2, 'App\\Models\\User', 58199),
(2, 'App\\Models\\User', 58201),
(2, 'App\\Models\\User', 58202),
(2, 'App\\Models\\User', 58208),
(2, 'App\\Models\\User', 58209),
(2, 'App\\Models\\User', 58211),
(2, 'App\\Models\\User', 58215),
(2, 'App\\Models\\User', 58216),
(2, 'App\\Models\\User', 58220),
(2, 'App\\Models\\User', 58227),
(2, 'App\\Models\\User', 58230),
(2, 'App\\Models\\User', 58231),
(2, 'App\\Models\\User', 58243),
(2, 'App\\Models\\User', 58248),
(2, 'App\\Models\\User', 58250),
(2, 'App\\Models\\User', 58253),
(2, 'App\\Models\\User', 58256),
(2, 'App\\Models\\User', 58257),
(2, 'App\\Models\\User', 58259),
(2, 'App\\Models\\User', 58260),
(2, 'App\\Models\\User', 58268),
(2, 'App\\Models\\User', 58269),
(2, 'App\\Models\\User', 58274),
(2, 'App\\Models\\User', 58275),
(2, 'App\\Models\\User', 58280),
(2, 'App\\Models\\User', 58282),
(2, 'App\\Models\\User', 58285),
(2, 'App\\Models\\User', 58286),
(2, 'App\\Models\\User', 58288),
(2, 'App\\Models\\User', 58290),
(2, 'App\\Models\\User', 58292),
(2, 'App\\Models\\User', 58295),
(2, 'App\\Models\\User', 58298),
(2, 'App\\Models\\User', 58302),
(2, 'App\\Models\\User', 58305),
(2, 'App\\Models\\User', 58310),
(2, 'App\\Models\\User', 58319),
(2, 'App\\Models\\User', 58322),
(2, 'App\\Models\\User', 58329),
(2, 'App\\Models\\User', 58330),
(2, 'App\\Models\\User', 58337),
(2, 'App\\Models\\User', 58341),
(2, 'App\\Models\\User', 58343),
(2, 'App\\Models\\User', 58347),
(2, 'App\\Models\\User', 58348),
(2, 'App\\Models\\User', 58349),
(2, 'App\\Models\\User', 58350),
(2, 'App\\Models\\User', 58353),
(2, 'App\\Models\\User', 58354),
(2, 'App\\Models\\User', 58356),
(2, 'App\\Models\\User', 58362),
(2, 'App\\Models\\User', 58367),
(2, 'App\\Models\\User', 58369),
(2, 'App\\Models\\User', 58378),
(2, 'App\\Models\\User', 58379),
(2, 'App\\Models\\User', 58380),
(2, 'App\\Models\\User', 58381),
(2, 'App\\Models\\User', 58386),
(2, 'App\\Models\\User', 58389),
(2, 'App\\Models\\User', 58392),
(2, 'App\\Models\\User', 58396),
(2, 'App\\Models\\User', 58397),
(2, 'App\\Models\\User', 58401),
(2, 'App\\Models\\User', 58402),
(2, 'App\\Models\\User', 58404),
(2, 'App\\Models\\User', 58407),
(2, 'App\\Models\\User', 58408),
(2, 'App\\Models\\User', 58417),
(2, 'App\\Models\\User', 58418),
(2, 'App\\Models\\User', 58421),
(2, 'App\\Models\\User', 58424),
(2, 'App\\Models\\User', 58427),
(2, 'App\\Models\\User', 58432),
(2, 'App\\Models\\User', 58438),
(2, 'App\\Models\\User', 58440),
(2, 'App\\Models\\User', 58441),
(2, 'App\\Models\\User', 58445),
(2, 'App\\Models\\User', 58448),
(2, 'App\\Models\\User', 58451),
(2, 'App\\Models\\User', 58452),
(2, 'App\\Models\\User', 58454),
(2, 'App\\Models\\User', 58455),
(2, 'App\\Models\\User', 58461),
(2, 'App\\Models\\User', 58462),
(2, 'App\\Models\\User', 58476),
(2, 'App\\Models\\User', 58483),
(2, 'App\\Models\\User', 58486),
(2, 'App\\Models\\User', 58487),
(2, 'App\\Models\\User', 58489),
(2, 'App\\Models\\User', 58491),
(2, 'App\\Models\\User', 58505),
(2, 'App\\Models\\User', 58506),
(2, 'App\\Models\\User', 58509),
(2, 'App\\Models\\User', 58516),
(2, 'App\\Models\\User', 58518),
(2, 'App\\Models\\User', 58521),
(2, 'App\\Models\\User', 58522),
(2, 'App\\Models\\User', 58525),
(2, 'App\\Models\\User', 58527),
(2, 'App\\Models\\User', 58530),
(2, 'App\\Models\\User', 58533),
(2, 'App\\Models\\User', 58536),
(2, 'App\\Models\\User', 58540),
(2, 'App\\Models\\User', 58541),
(2, 'App\\Models\\User', 58550),
(2, 'App\\Models\\User', 58557),
(2, 'App\\Models\\User', 58567),
(2, 'App\\Models\\User', 58569),
(2, 'App\\Models\\User', 58572),
(2, 'App\\Models\\User', 58575),
(2, 'App\\Models\\User', 58578),
(2, 'App\\Models\\User', 58579),
(2, 'App\\Models\\User', 58590),
(2, 'App\\Models\\User', 58594),
(2, 'App\\Models\\User', 58600),
(2, 'App\\Models\\User', 58605),
(2, 'App\\Models\\User', 58606),
(2, 'App\\Models\\User', 58612),
(2, 'App\\Models\\User', 58622),
(2, 'App\\Models\\User', 58633),
(2, 'App\\Models\\User', 58637),
(2, 'App\\Models\\User', 58638),
(2, 'App\\Models\\User', 58646),
(2, 'App\\Models\\User', 58651),
(2, 'App\\Models\\User', 58658),
(2, 'App\\Models\\User', 58662),
(2, 'App\\Models\\User', 58663),
(2, 'App\\Models\\User', 58672),
(2, 'App\\Models\\User', 58673),
(2, 'App\\Models\\User', 58682),
(2, 'App\\Models\\User', 58688),
(2, 'App\\Models\\User', 58690),
(2, 'App\\Models\\User', 58695),
(2, 'App\\Models\\User', 58699),
(2, 'App\\Models\\User', 58700),
(2, 'App\\Models\\User', 58704),
(2, 'App\\Models\\User', 58707),
(2, 'App\\Models\\User', 58714),
(2, 'App\\Models\\User', 58716),
(2, 'App\\Models\\User', 58720),
(2, 'App\\Models\\User', 58722),
(2, 'App\\Models\\User', 58723),
(2, 'App\\Models\\User', 58724),
(2, 'App\\Models\\User', 58727),
(2, 'App\\Models\\User', 58729),
(2, 'App\\Models\\User', 58734),
(2, 'App\\Models\\User', 58738),
(2, 'App\\Models\\User', 58740),
(2, 'App\\Models\\User', 58743),
(2, 'App\\Models\\User', 58755),
(2, 'App\\Models\\User', 58756),
(2, 'App\\Models\\User', 58757),
(2, 'App\\Models\\User', 58759),
(2, 'App\\Models\\User', 58768),
(2, 'App\\Models\\User', 58770),
(2, 'App\\Models\\User', 58771),
(2, 'App\\Models\\User', 58772),
(2, 'App\\Models\\User', 58776),
(2, 'App\\Models\\User', 58778),
(2, 'App\\Models\\User', 58780),
(2, 'App\\Models\\User', 58783),
(2, 'App\\Models\\User', 58785),
(2, 'App\\Models\\User', 58787),
(2, 'App\\Models\\User', 58791),
(2, 'App\\Models\\User', 58792),
(2, 'App\\Models\\User', 58793),
(2, 'App\\Models\\User', 58799),
(2, 'App\\Models\\User', 58803),
(2, 'App\\Models\\User', 58804),
(2, 'App\\Models\\User', 58805),
(2, 'App\\Models\\User', 58806),
(2, 'App\\Models\\User', 58808),
(2, 'App\\Models\\User', 58810),
(2, 'App\\Models\\User', 58811),
(2, 'App\\Models\\User', 58812),
(2, 'App\\Models\\User', 58814),
(2, 'App\\Models\\User', 58815),
(2, 'App\\Models\\User', 58819),
(2, 'App\\Models\\User', 58820),
(2, 'App\\Models\\User', 58821),
(2, 'App\\Models\\User', 58829),
(2, 'App\\Models\\User', 58836),
(2, 'App\\Models\\User', 58837),
(2, 'App\\Models\\User', 58840),
(2, 'App\\Models\\User', 58846),
(2, 'App\\Models\\User', 58853),
(2, 'App\\Models\\User', 58857),
(2, 'App\\Models\\User', 58861),
(2, 'App\\Models\\User', 58862),
(2, 'App\\Models\\User', 58865),
(2, 'App\\Models\\User', 58868),
(2, 'App\\Models\\User', 58873),
(2, 'App\\Models\\User', 58876),
(2, 'App\\Models\\User', 58880),
(2, 'App\\Models\\User', 58883),
(2, 'App\\Models\\User', 58885),
(2, 'App\\Models\\User', 58890),
(2, 'App\\Models\\User', 58892),
(2, 'App\\Models\\User', 58893),
(2, 'App\\Models\\User', 58897),
(2, 'App\\Models\\User', 58898),
(2, 'App\\Models\\User', 58900),
(2, 'App\\Models\\User', 58907),
(2, 'App\\Models\\User', 58911),
(2, 'App\\Models\\User', 58914),
(2, 'App\\Models\\User', 58915),
(2, 'App\\Models\\User', 58918),
(2, 'App\\Models\\User', 58920),
(2, 'App\\Models\\User', 58925),
(2, 'App\\Models\\User', 58927),
(2, 'App\\Models\\User', 58928),
(2, 'App\\Models\\User', 58931),
(2, 'App\\Models\\User', 58932),
(2, 'App\\Models\\User', 58940),
(2, 'App\\Models\\User', 58945),
(2, 'App\\Models\\User', 58948),
(2, 'App\\Models\\User', 58966),
(2, 'App\\Models\\User', 58969),
(2, 'App\\Models\\User', 58971),
(2, 'App\\Models\\User', 58976),
(2, 'App\\Models\\User', 58978),
(2, 'App\\Models\\User', 58980),
(2, 'App\\Models\\User', 58983),
(2, 'App\\Models\\User', 58989),
(2, 'App\\Models\\User', 58991),
(2, 'App\\Models\\User', 58995),
(2, 'App\\Models\\User', 59001),
(2, 'App\\Models\\User', 59002),
(2, 'App\\Models\\User', 59009),
(2, 'App\\Models\\User', 59012),
(2, 'App\\Models\\User', 59013),
(2, 'App\\Models\\User', 59015),
(2, 'App\\Models\\User', 59016),
(2, 'App\\Models\\User', 59020),
(2, 'App\\Models\\User', 59021),
(2, 'App\\Models\\User', 59023),
(2, 'App\\Models\\User', 59025),
(2, 'App\\Models\\User', 59027),
(2, 'App\\Models\\User', 59028),
(2, 'App\\Models\\User', 59029),
(2, 'App\\Models\\User', 59032),
(2, 'App\\Models\\User', 59033),
(2, 'App\\Models\\User', 59034),
(2, 'App\\Models\\User', 59037),
(2, 'App\\Models\\User', 59045),
(2, 'App\\Models\\User', 59049),
(2, 'App\\Models\\User', 59052),
(2, 'App\\Models\\User', 59055),
(2, 'App\\Models\\User', 59059),
(2, 'App\\Models\\User', 59060),
(2, 'App\\Models\\User', 59063),
(2, 'App\\Models\\User', 59064),
(2, 'App\\Models\\User', 59065),
(2, 'App\\Models\\User', 59067),
(2, 'App\\Models\\User', 59068),
(2, 'App\\Models\\User', 59071),
(2, 'App\\Models\\User', 59072),
(2, 'App\\Models\\User', 59074),
(2, 'App\\Models\\User', 59077),
(2, 'App\\Models\\User', 59084),
(2, 'App\\Models\\User', 59088),
(2, 'App\\Models\\User', 59090),
(2, 'App\\Models\\User', 59091),
(2, 'App\\Models\\User', 59092),
(2, 'App\\Models\\User', 59110),
(2, 'App\\Models\\User', 59111),
(2, 'App\\Models\\User', 59112),
(2, 'App\\Models\\User', 59113),
(2, 'App\\Models\\User', 59121),
(2, 'App\\Models\\User', 59123),
(2, 'App\\Models\\User', 59124),
(2, 'App\\Models\\User', 59128),
(2, 'App\\Models\\User', 59134),
(2, 'App\\Models\\User', 59141),
(2, 'App\\Models\\User', 59142),
(2, 'App\\Models\\User', 59143),
(2, 'App\\Models\\User', 59154),
(2, 'App\\Models\\User', 59156),
(2, 'App\\Models\\User', 59165),
(2, 'App\\Models\\User', 59167),
(2, 'App\\Models\\User', 59173),
(2, 'App\\Models\\User', 59174),
(2, 'App\\Models\\User', 59178),
(2, 'App\\Models\\User', 59179),
(2, 'App\\Models\\User', 59183),
(2, 'App\\Models\\User', 59188),
(2, 'App\\Models\\User', 59189),
(2, 'App\\Models\\User', 59201),
(2, 'App\\Models\\User', 59202),
(2, 'App\\Models\\User', 59205),
(2, 'App\\Models\\User', 59210),
(2, 'App\\Models\\User', 59211),
(2, 'App\\Models\\User', 59217),
(2, 'App\\Models\\User', 59221),
(2, 'App\\Models\\User', 59223),
(2, 'App\\Models\\User', 59224),
(2, 'App\\Models\\User', 59226),
(2, 'App\\Models\\User', 59230),
(2, 'App\\Models\\User', 59246),
(2, 'App\\Models\\User', 59249),
(2, 'App\\Models\\User', 59253),
(2, 'App\\Models\\User', 59256),
(2, 'App\\Models\\User', 59267),
(2, 'App\\Models\\User', 59271),
(2, 'App\\Models\\User', 59273),
(2, 'App\\Models\\User', 59275),
(2, 'App\\Models\\User', 59277),
(2, 'App\\Models\\User', 59279),
(2, 'App\\Models\\User', 59280),
(2, 'App\\Models\\User', 59299),
(2, 'App\\Models\\User', 59300),
(2, 'App\\Models\\User', 59304),
(2, 'App\\Models\\User', 59305),
(2, 'App\\Models\\User', 59307),
(2, 'App\\Models\\User', 59311),
(2, 'App\\Models\\User', 59312),
(2, 'App\\Models\\User', 59317),
(2, 'App\\Models\\User', 59319),
(2, 'App\\Models\\User', 59320),
(2, 'App\\Models\\User', 59327),
(2, 'App\\Models\\User', 59344),
(2, 'App\\Models\\User', 59351),
(2, 'App\\Models\\User', 59353),
(2, 'App\\Models\\User', 59356),
(2, 'App\\Models\\User', 59358),
(2, 'App\\Models\\User', 59361),
(2, 'App\\Models\\User', 59373),
(2, 'App\\Models\\User', 59374),
(2, 'App\\Models\\User', 59378),
(2, 'App\\Models\\User', 59379),
(2, 'App\\Models\\User', 59380),
(2, 'App\\Models\\User', 59391),
(2, 'App\\Models\\User', 59392),
(2, 'App\\Models\\User', 59394),
(2, 'App\\Models\\User', 59397),
(2, 'App\\Models\\User', 59398),
(2, 'App\\Models\\User', 59400),
(2, 'App\\Models\\User', 59401),
(2, 'App\\Models\\User', 59402),
(2, 'App\\Models\\User', 59409),
(2, 'App\\Models\\User', 59410),
(2, 'App\\Models\\User', 59413),
(2, 'App\\Models\\User', 59417),
(2, 'App\\Models\\User', 59419),
(2, 'App\\Models\\User', 59422),
(2, 'App\\Models\\User', 59425),
(2, 'App\\Models\\User', 59426),
(2, 'App\\Models\\User', 59433),
(2, 'App\\Models\\User', 59437),
(2, 'App\\Models\\User', 59439),
(2, 'App\\Models\\User', 59443),
(2, 'App\\Models\\User', 59447),
(2, 'App\\Models\\User', 59448),
(2, 'App\\Models\\User', 59452),
(2, 'App\\Models\\User', 59454),
(2, 'App\\Models\\User', 59455),
(2, 'App\\Models\\User', 59466),
(2, 'App\\Models\\User', 59469),
(2, 'App\\Models\\User', 59470),
(2, 'App\\Models\\User', 59471),
(2, 'App\\Models\\User', 59472),
(2, 'App\\Models\\User', 59473),
(2, 'App\\Models\\User', 59475),
(2, 'App\\Models\\User', 59476),
(2, 'App\\Models\\User', 59478),
(2, 'App\\Models\\User', 59486),
(2, 'App\\Models\\User', 59489),
(2, 'App\\Models\\User', 59491),
(2, 'App\\Models\\User', 59492),
(2, 'App\\Models\\User', 59493),
(2, 'App\\Models\\User', 59497),
(2, 'App\\Models\\User', 59499),
(2, 'App\\Models\\User', 59500),
(2, 'App\\Models\\User', 59503),
(2, 'App\\Models\\User', 59507),
(2, 'App\\Models\\User', 59511),
(2, 'App\\Models\\User', 59512),
(2, 'App\\Models\\User', 59514),
(2, 'App\\Models\\User', 59521),
(2, 'App\\Models\\User', 59528),
(2, 'App\\Models\\User', 59530),
(2, 'App\\Models\\User', 59534),
(2, 'App\\Models\\User', 59538),
(2, 'App\\Models\\User', 59542),
(2, 'App\\Models\\User', 59544),
(2, 'App\\Models\\User', 59547),
(2, 'App\\Models\\User', 59548),
(2, 'App\\Models\\User', 59553),
(2, 'App\\Models\\User', 59554),
(2, 'App\\Models\\User', 59561),
(2, 'App\\Models\\User', 59562),
(2, 'App\\Models\\User', 59563),
(2, 'App\\Models\\User', 59565),
(2, 'App\\Models\\User', 59571),
(2, 'App\\Models\\User', 59573),
(2, 'App\\Models\\User', 59576),
(2, 'App\\Models\\User', 59579),
(2, 'App\\Models\\User', 59587),
(2, 'App\\Models\\User', 59594),
(2, 'App\\Models\\User', 59595),
(2, 'App\\Models\\User', 59596),
(2, 'App\\Models\\User', 59598),
(2, 'App\\Models\\User', 59607),
(2, 'App\\Models\\User', 59608),
(2, 'App\\Models\\User', 59614),
(2, 'App\\Models\\User', 59620),
(2, 'App\\Models\\User', 59623),
(2, 'App\\Models\\User', 59628),
(2, 'App\\Models\\User', 59630),
(2, 'App\\Models\\User', 59631),
(2, 'App\\Models\\User', 59632),
(2, 'App\\Models\\User', 59633),
(2, 'App\\Models\\User', 59636),
(2, 'App\\Models\\User', 59640),
(2, 'App\\Models\\User', 59645),
(2, 'App\\Models\\User', 59659),
(2, 'App\\Models\\User', 59662),
(2, 'App\\Models\\User', 59663),
(2, 'App\\Models\\User', 59667),
(2, 'App\\Models\\User', 59668),
(2, 'App\\Models\\User', 59671),
(2, 'App\\Models\\User', 59672),
(2, 'App\\Models\\User', 59677),
(2, 'App\\Models\\User', 59678),
(2, 'App\\Models\\User', 59681),
(2, 'App\\Models\\User', 59682),
(2, 'App\\Models\\User', 59694),
(2, 'App\\Models\\User', 59700),
(2, 'App\\Models\\User', 59701),
(2, 'App\\Models\\User', 59702),
(2, 'App\\Models\\User', 59703),
(2, 'App\\Models\\User', 59706),
(2, 'App\\Models\\User', 59708),
(2, 'App\\Models\\User', 59711),
(2, 'App\\Models\\User', 59719),
(2, 'App\\Models\\User', 59726),
(2, 'App\\Models\\User', 59727),
(2, 'App\\Models\\User', 59730),
(2, 'App\\Models\\User', 59731),
(2, 'App\\Models\\User', 59732),
(2, 'App\\Models\\User', 59736),
(2, 'App\\Models\\User', 59739),
(2, 'App\\Models\\User', 59744),
(2, 'App\\Models\\User', 59746),
(2, 'App\\Models\\User', 59749),
(2, 'App\\Models\\User', 59756),
(2, 'App\\Models\\User', 59759),
(2, 'App\\Models\\User', 59761),
(2, 'App\\Models\\User', 59763),
(2, 'App\\Models\\User', 59768),
(2, 'App\\Models\\User', 59770),
(2, 'App\\Models\\User', 59772),
(2, 'App\\Models\\User', 59779),
(2, 'App\\Models\\User', 59781),
(2, 'App\\Models\\User', 59782),
(2, 'App\\Models\\User', 59785),
(2, 'App\\Models\\User', 59786),
(2, 'App\\Models\\User', 59790),
(2, 'App\\Models\\User', 59802),
(2, 'App\\Models\\User', 59803),
(2, 'App\\Models\\User', 59807),
(2, 'App\\Models\\User', 59808),
(2, 'App\\Models\\User', 59813),
(2, 'App\\Models\\User', 59819),
(2, 'App\\Models\\User', 59825),
(2, 'App\\Models\\User', 59828),
(2, 'App\\Models\\User', 59839),
(2, 'App\\Models\\User', 59840),
(2, 'App\\Models\\User', 59843),
(2, 'App\\Models\\User', 59849),
(2, 'App\\Models\\User', 59852),
(2, 'App\\Models\\User', 59868),
(2, 'App\\Models\\User', 59869),
(2, 'App\\Models\\User', 59870),
(2, 'App\\Models\\User', 59871),
(2, 'App\\Models\\User', 59874),
(2, 'App\\Models\\User', 59877),
(2, 'App\\Models\\User', 59885),
(2, 'App\\Models\\User', 59886),
(2, 'App\\Models\\User', 59893),
(2, 'App\\Models\\User', 59895),
(2, 'App\\Models\\User', 59897),
(2, 'App\\Models\\User', 59899),
(2, 'App\\Models\\User', 59903),
(2, 'App\\Models\\User', 59908),
(2, 'App\\Models\\User', 59909),
(2, 'App\\Models\\User', 59910),
(2, 'App\\Models\\User', 59912),
(2, 'App\\Models\\User', 59913),
(2, 'App\\Models\\User', 59914),
(2, 'App\\Models\\User', 59915),
(2, 'App\\Models\\User', 59924),
(2, 'App\\Models\\User', 59925),
(2, 'App\\Models\\User', 59929),
(2, 'App\\Models\\User', 59932),
(2, 'App\\Models\\User', 59936),
(2, 'App\\Models\\User', 59937),
(2, 'App\\Models\\User', 59941),
(2, 'App\\Models\\User', 59945),
(2, 'App\\Models\\User', 59947),
(2, 'App\\Models\\User', 59951),
(2, 'App\\Models\\User', 59954),
(2, 'App\\Models\\User', 59956),
(2, 'App\\Models\\User', 59958),
(2, 'App\\Models\\User', 59961),
(2, 'App\\Models\\User', 59964),
(2, 'App\\Models\\User', 59966),
(2, 'App\\Models\\User', 59967),
(2, 'App\\Models\\User', 59968),
(2, 'App\\Models\\User', 59969),
(2, 'App\\Models\\User', 59972),
(2, 'App\\Models\\User', 59973),
(2, 'App\\Models\\User', 59974),
(2, 'App\\Models\\User', 59978),
(2, 'App\\Models\\User', 59980),
(2, 'App\\Models\\User', 59981),
(2, 'App\\Models\\User', 59985),
(2, 'App\\Models\\User', 59987),
(2, 'App\\Models\\User', 59989),
(2, 'App\\Models\\User', 59994),
(2, 'App\\Models\\User', 59995),
(2, 'App\\Models\\User', 59998),
(2, 'App\\Models\\User', 59999),
(2, 'App\\Models\\User', 60003),
(2, 'App\\Models\\User', 60006),
(2, 'App\\Models\\User', 60008),
(2, 'App\\Models\\User', 60009),
(2, 'App\\Models\\User', 60011),
(2, 'App\\Models\\User', 60016),
(2, 'App\\Models\\User', 60017),
(2, 'App\\Models\\User', 60020),
(2, 'App\\Models\\User', 60023),
(2, 'App\\Models\\User', 60027),
(2, 'App\\Models\\User', 60029),
(2, 'App\\Models\\User', 60035),
(2, 'App\\Models\\User', 60036),
(2, 'App\\Models\\User', 60037),
(2, 'App\\Models\\User', 60042),
(2, 'App\\Models\\User', 60049),
(2, 'App\\Models\\User', 60053),
(2, 'App\\Models\\User', 60054),
(2, 'App\\Models\\User', 60055),
(2, 'App\\Models\\User', 60062),
(2, 'App\\Models\\User', 60063),
(2, 'App\\Models\\User', 60064),
(2, 'App\\Models\\User', 60068),
(2, 'App\\Models\\User', 60070),
(2, 'App\\Models\\User', 60072),
(2, 'App\\Models\\User', 60073),
(2, 'App\\Models\\User', 60075),
(2, 'App\\Models\\User', 60077),
(2, 'App\\Models\\User', 60079),
(2, 'App\\Models\\User', 60082),
(2, 'App\\Models\\User', 60083),
(2, 'App\\Models\\User', 60088),
(2, 'App\\Models\\User', 60092),
(2, 'App\\Models\\User', 60095),
(2, 'App\\Models\\User', 60097),
(2, 'App\\Models\\User', 60100),
(2, 'App\\Models\\User', 60104),
(2, 'App\\Models\\User', 60105),
(2, 'App\\Models\\User', 60109),
(2, 'App\\Models\\User', 60112),
(2, 'App\\Models\\User', 60113),
(2, 'App\\Models\\User', 60115),
(2, 'App\\Models\\User', 60120),
(2, 'App\\Models\\User', 60121),
(2, 'App\\Models\\User', 60123),
(2, 'App\\Models\\User', 60125),
(2, 'App\\Models\\User', 60127),
(2, 'App\\Models\\User', 60139),
(2, 'App\\Models\\User', 60142),
(2, 'App\\Models\\User', 60145),
(2, 'App\\Models\\User', 60155),
(2, 'App\\Models\\User', 60157),
(2, 'App\\Models\\User', 60160),
(2, 'App\\Models\\User', 60162),
(2, 'App\\Models\\User', 60165),
(2, 'App\\Models\\User', 60167),
(2, 'App\\Models\\User', 60169),
(2, 'App\\Models\\User', 60174),
(2, 'App\\Models\\User', 60175),
(2, 'App\\Models\\User', 60184),
(2, 'App\\Models\\User', 60186),
(2, 'App\\Models\\User', 60187),
(2, 'App\\Models\\User', 60191),
(2, 'App\\Models\\User', 60193),
(2, 'App\\Models\\User', 60196),
(2, 'App\\Models\\User', 60197),
(2, 'App\\Models\\User', 60198),
(2, 'App\\Models\\User', 60203),
(2, 'App\\Models\\User', 60211),
(2, 'App\\Models\\User', 60212),
(2, 'App\\Models\\User', 60213),
(2, 'App\\Models\\User', 60215),
(2, 'App\\Models\\User', 60220),
(2, 'App\\Models\\User', 60228),
(2, 'App\\Models\\User', 60229),
(2, 'App\\Models\\User', 60231),
(2, 'App\\Models\\User', 60234),
(2, 'App\\Models\\User', 60239),
(2, 'App\\Models\\User', 60241),
(2, 'App\\Models\\User', 60242),
(2, 'App\\Models\\User', 60245),
(2, 'App\\Models\\User', 60254),
(2, 'App\\Models\\User', 60257),
(2, 'App\\Models\\User', 60261),
(2, 'App\\Models\\User', 60263),
(2, 'App\\Models\\User', 60268),
(2, 'App\\Models\\User', 60271),
(2, 'App\\Models\\User', 60275),
(2, 'App\\Models\\User', 60278),
(2, 'App\\Models\\User', 60279),
(2, 'App\\Models\\User', 60281),
(2, 'App\\Models\\User', 60282),
(2, 'App\\Models\\User', 60283),
(2, 'App\\Models\\User', 60296),
(2, 'App\\Models\\User', 60297),
(2, 'App\\Models\\User', 60299),
(2, 'App\\Models\\User', 60303),
(2, 'App\\Models\\User', 60313),
(2, 'App\\Models\\User', 60314),
(2, 'App\\Models\\User', 60316),
(2, 'App\\Models\\User', 60321),
(2, 'App\\Models\\User', 60322),
(2, 'App\\Models\\User', 60333),
(2, 'App\\Models\\User', 60334),
(2, 'App\\Models\\User', 60337),
(2, 'App\\Models\\User', 60338),
(2, 'App\\Models\\User', 60344),
(2, 'App\\Models\\User', 60349),
(2, 'App\\Models\\User', 60352),
(2, 'App\\Models\\User', 60358),
(2, 'App\\Models\\User', 60363),
(2, 'App\\Models\\User', 60373),
(2, 'App\\Models\\User', 60375),
(2, 'App\\Models\\User', 60376),
(2, 'App\\Models\\User', 60383),
(2, 'App\\Models\\User', 60387),
(2, 'App\\Models\\User', 60389),
(2, 'App\\Models\\User', 60390),
(2, 'App\\Models\\User', 60393),
(2, 'App\\Models\\User', 60396),
(2, 'App\\Models\\User', 60397),
(2, 'App\\Models\\User', 60403),
(2, 'App\\Models\\User', 60406),
(2, 'App\\Models\\User', 60407),
(2, 'App\\Models\\User', 60412),
(2, 'App\\Models\\User', 60414),
(2, 'App\\Models\\User', 60417),
(2, 'App\\Models\\User', 60423),
(2, 'App\\Models\\User', 60424),
(2, 'App\\Models\\User', 60426),
(2, 'App\\Models\\User', 60429),
(2, 'App\\Models\\User', 60430),
(2, 'App\\Models\\User', 60432),
(2, 'App\\Models\\User', 60437),
(2, 'App\\Models\\User', 60438),
(2, 'App\\Models\\User', 60441),
(2, 'App\\Models\\User', 60443),
(2, 'App\\Models\\User', 60444),
(2, 'App\\Models\\User', 60446),
(2, 'App\\Models\\User', 60448),
(2, 'App\\Models\\User', 60455),
(2, 'App\\Models\\User', 60456),
(2, 'App\\Models\\User', 60459),
(2, 'App\\Models\\User', 60463),
(2, 'App\\Models\\User', 60466),
(2, 'App\\Models\\User', 60467),
(2, 'App\\Models\\User', 60468),
(2, 'App\\Models\\User', 60475),
(2, 'App\\Models\\User', 60482),
(2, 'App\\Models\\User', 60486),
(2, 'App\\Models\\User', 60487),
(2, 'App\\Models\\User', 60494),
(2, 'App\\Models\\User', 60499),
(2, 'App\\Models\\User', 60501),
(2, 'App\\Models\\User', 60505),
(2, 'App\\Models\\User', 60509),
(2, 'App\\Models\\User', 60510),
(2, 'App\\Models\\User', 60511),
(2, 'App\\Models\\User', 60513),
(2, 'App\\Models\\User', 60514),
(2, 'App\\Models\\User', 60520),
(2, 'App\\Models\\User', 60521),
(2, 'App\\Models\\User', 60530),
(2, 'App\\Models\\User', 60540),
(2, 'App\\Models\\User', 60543),
(2, 'App\\Models\\User', 60545),
(2, 'App\\Models\\User', 60547),
(2, 'App\\Models\\User', 60548),
(2, 'App\\Models\\User', 60550),
(2, 'App\\Models\\User', 60553),
(2, 'App\\Models\\User', 60558),
(2, 'App\\Models\\User', 60559),
(2, 'App\\Models\\User', 60561),
(2, 'App\\Models\\User', 60571),
(2, 'App\\Models\\User', 60582),
(2, 'App\\Models\\User', 60592),
(2, 'App\\Models\\User', 60594),
(2, 'App\\Models\\User', 60595),
(2, 'App\\Models\\User', 60597),
(2, 'App\\Models\\User', 60598),
(2, 'App\\Models\\User', 60599),
(2, 'App\\Models\\User', 60600),
(2, 'App\\Models\\User', 60605),
(2, 'App\\Models\\User', 60609),
(2, 'App\\Models\\User', 60611),
(2, 'App\\Models\\User', 60615),
(2, 'App\\Models\\User', 60617),
(2, 'App\\Models\\User', 60618),
(2, 'App\\Models\\User', 60622),
(2, 'App\\Models\\User', 60625),
(2, 'App\\Models\\User', 60628),
(2, 'App\\Models\\User', 60635),
(2, 'App\\Models\\User', 60642),
(2, 'App\\Models\\User', 60651),
(2, 'App\\Models\\User', 60656),
(2, 'App\\Models\\User', 60664),
(2, 'App\\Models\\User', 60665),
(2, 'App\\Models\\User', 60680),
(2, 'App\\Models\\User', 60682),
(2, 'App\\Models\\User', 60691),
(2, 'App\\Models\\User', 60692),
(2, 'App\\Models\\User', 60693),
(2, 'App\\Models\\User', 60695),
(2, 'App\\Models\\User', 60698),
(2, 'App\\Models\\User', 60703),
(2, 'App\\Models\\User', 60705),
(2, 'App\\Models\\User', 60714),
(2, 'App\\Models\\User', 60718),
(2, 'App\\Models\\User', 60719),
(2, 'App\\Models\\User', 60721),
(2, 'App\\Models\\User', 60725),
(2, 'App\\Models\\User', 60730),
(2, 'App\\Models\\User', 60731),
(2, 'App\\Models\\User', 60735),
(2, 'App\\Models\\User', 60737),
(2, 'App\\Models\\User', 60738),
(2, 'App\\Models\\User', 60739),
(2, 'App\\Models\\User', 60740),
(2, 'App\\Models\\User', 60741),
(2, 'App\\Models\\User', 60743),
(2, 'App\\Models\\User', 60752),
(2, 'App\\Models\\User', 60753),
(2, 'App\\Models\\User', 60757),
(2, 'App\\Models\\User', 60759),
(2, 'App\\Models\\User', 60765),
(2, 'App\\Models\\User', 60768),
(2, 'App\\Models\\User', 60769),
(2, 'App\\Models\\User', 60772),
(2, 'App\\Models\\User', 60775),
(2, 'App\\Models\\User', 60777),
(2, 'App\\Models\\User', 60780),
(2, 'App\\Models\\User', 60781),
(2, 'App\\Models\\User', 60786),
(2, 'App\\Models\\User', 60788),
(2, 'App\\Models\\User', 60791),
(2, 'App\\Models\\User', 60796),
(2, 'App\\Models\\User', 60798),
(2, 'App\\Models\\User', 60801),
(2, 'App\\Models\\User', 60818),
(2, 'App\\Models\\User', 60823),
(2, 'App\\Models\\User', 60825),
(2, 'App\\Models\\User', 60830),
(2, 'App\\Models\\User', 60834),
(2, 'App\\Models\\User', 60835),
(2, 'App\\Models\\User', 60837),
(2, 'App\\Models\\User', 60839),
(2, 'App\\Models\\User', 60845),
(2, 'App\\Models\\User', 60853),
(2, 'App\\Models\\User', 60854),
(2, 'App\\Models\\User', 60859),
(2, 'App\\Models\\User', 60861),
(2, 'App\\Models\\User', 60862),
(2, 'App\\Models\\User', 60866),
(2, 'App\\Models\\User', 60868),
(2, 'App\\Models\\User', 60873),
(2, 'App\\Models\\User', 60875),
(2, 'App\\Models\\User', 60877),
(2, 'App\\Models\\User', 60891),
(2, 'App\\Models\\User', 60899),
(2, 'App\\Models\\User', 60900),
(2, 'App\\Models\\User', 60910),
(2, 'App\\Models\\User', 60919),
(2, 'App\\Models\\User', 60920),
(2, 'App\\Models\\User', 60926),
(2, 'App\\Models\\User', 60932),
(2, 'App\\Models\\User', 60933),
(2, 'App\\Models\\User', 60934),
(2, 'App\\Models\\User', 60935),
(2, 'App\\Models\\User', 60937),
(2, 'App\\Models\\User', 60938),
(2, 'App\\Models\\User', 60939),
(2, 'App\\Models\\User', 60941),
(2, 'App\\Models\\User', 60943),
(2, 'App\\Models\\User', 60949),
(2, 'App\\Models\\User', 60950),
(2, 'App\\Models\\User', 60953),
(2, 'App\\Models\\User', 60958),
(2, 'App\\Models\\User', 60965),
(2, 'App\\Models\\User', 60966),
(2, 'App\\Models\\User', 60973),
(2, 'App\\Models\\User', 60976),
(2, 'App\\Models\\User', 60984),
(2, 'App\\Models\\User', 60997),
(2, 'App\\Models\\User', 61001),
(2, 'App\\Models\\User', 61002),
(2, 'App\\Models\\User', 61003),
(2, 'App\\Models\\User', 61010),
(2, 'App\\Models\\User', 61015),
(2, 'App\\Models\\User', 61018),
(2, 'App\\Models\\User', 61024),
(2, 'App\\Models\\User', 61026),
(2, 'App\\Models\\User', 61030),
(2, 'App\\Models\\User', 61034),
(2, 'App\\Models\\User', 61048),
(2, 'App\\Models\\User', 61051),
(2, 'App\\Models\\User', 61056),
(2, 'App\\Models\\User', 61063),
(2, 'App\\Models\\User', 61069),
(2, 'App\\Models\\User', 61078),
(2, 'App\\Models\\User', 61083),
(2, 'App\\Models\\User', 61084),
(2, 'App\\Models\\User', 61086),
(2, 'App\\Models\\User', 61092),
(2, 'App\\Models\\User', 61095),
(2, 'App\\Models\\User', 61098),
(2, 'App\\Models\\User', 61101),
(2, 'App\\Models\\User', 61107),
(2, 'App\\Models\\User', 61108),
(2, 'App\\Models\\User', 61111),
(2, 'App\\Models\\User', 61113),
(2, 'App\\Models\\User', 61116),
(2, 'App\\Models\\User', 61122),
(2, 'App\\Models\\User', 61128),
(2, 'App\\Models\\User', 61133),
(2, 'App\\Models\\User', 61135),
(2, 'App\\Models\\User', 61137),
(2, 'App\\Models\\User', 61138),
(2, 'App\\Models\\User', 61139),
(2, 'App\\Models\\User', 61142),
(2, 'App\\Models\\User', 61144),
(2, 'App\\Models\\User', 61145),
(2, 'App\\Models\\User', 61147),
(2, 'App\\Models\\User', 61154),
(2, 'App\\Models\\User', 61156),
(2, 'App\\Models\\User', 61166),
(2, 'App\\Models\\User', 61169),
(2, 'App\\Models\\User', 61173),
(2, 'App\\Models\\User', 61177),
(2, 'App\\Models\\User', 61178),
(2, 'App\\Models\\User', 61180),
(2, 'App\\Models\\User', 61186),
(2, 'App\\Models\\User', 61191),
(2, 'App\\Models\\User', 61192),
(2, 'App\\Models\\User', 61196),
(2, 'App\\Models\\User', 61197),
(2, 'App\\Models\\User', 61199),
(2, 'App\\Models\\User', 61203),
(2, 'App\\Models\\User', 61209),
(2, 'App\\Models\\User', 61212),
(2, 'App\\Models\\User', 61215),
(2, 'App\\Models\\User', 61216),
(2, 'App\\Models\\User', 61223),
(2, 'App\\Models\\User', 61227),
(2, 'App\\Models\\User', 61230),
(2, 'App\\Models\\User', 61231),
(2, 'App\\Models\\User', 61233),
(2, 'App\\Models\\User', 61234),
(2, 'App\\Models\\User', 61236),
(2, 'App\\Models\\User', 61240),
(2, 'App\\Models\\User', 61241),
(2, 'App\\Models\\User', 61243),
(2, 'App\\Models\\User', 61250),
(2, 'App\\Models\\User', 61257),
(2, 'App\\Models\\User', 61259),
(2, 'App\\Models\\User', 61265),
(2, 'App\\Models\\User', 61273),
(2, 'App\\Models\\User', 61284),
(2, 'App\\Models\\User', 61285),
(2, 'App\\Models\\User', 61287),
(2, 'App\\Models\\User', 61288),
(2, 'App\\Models\\User', 61294),
(2, 'App\\Models\\User', 61297),
(2, 'App\\Models\\User', 61299),
(2, 'App\\Models\\User', 61300),
(2, 'App\\Models\\User', 61301),
(2, 'App\\Models\\User', 61309),
(2, 'App\\Models\\User', 61311),
(2, 'App\\Models\\User', 61316),
(2, 'App\\Models\\User', 61317),
(2, 'App\\Models\\User', 61319),
(2, 'App\\Models\\User', 61322),
(2, 'App\\Models\\User', 61330),
(2, 'App\\Models\\User', 61331),
(2, 'App\\Models\\User', 61348),
(2, 'App\\Models\\User', 61350),
(2, 'App\\Models\\User', 61352),
(2, 'App\\Models\\User', 61353),
(2, 'App\\Models\\User', 61361),
(2, 'App\\Models\\User', 61363),
(2, 'App\\Models\\User', 61364),
(2, 'App\\Models\\User', 61365),
(2, 'App\\Models\\User', 61367),
(2, 'App\\Models\\User', 61370),
(2, 'App\\Models\\User', 61372),
(2, 'App\\Models\\User', 61373),
(2, 'App\\Models\\User', 61376),
(2, 'App\\Models\\User', 61381),
(2, 'App\\Models\\User', 61383),
(2, 'App\\Models\\User', 61388),
(2, 'App\\Models\\User', 61394),
(2, 'App\\Models\\User', 61396),
(2, 'App\\Models\\User', 61400),
(2, 'App\\Models\\User', 61401),
(2, 'App\\Models\\User', 61408),
(2, 'App\\Models\\User', 61409),
(2, 'App\\Models\\User', 61417),
(2, 'App\\Models\\User', 61422),
(2, 'App\\Models\\User', 61426),
(2, 'App\\Models\\User', 61433),
(2, 'App\\Models\\User', 61435),
(2, 'App\\Models\\User', 61436),
(2, 'App\\Models\\User', 61440),
(2, 'App\\Models\\User', 61449),
(2, 'App\\Models\\User', 61452),
(2, 'App\\Models\\User', 61457),
(2, 'App\\Models\\User', 61459),
(2, 'App\\Models\\User', 61463),
(2, 'App\\Models\\User', 61467),
(2, 'App\\Models\\User', 61470),
(2, 'App\\Models\\User', 61471),
(2, 'App\\Models\\User', 61474),
(2, 'App\\Models\\User', 61477),
(2, 'App\\Models\\User', 61478),
(2, 'App\\Models\\User', 61481),
(2, 'App\\Models\\User', 61492),
(2, 'App\\Models\\User', 61493),
(2, 'App\\Models\\User', 61501),
(2, 'App\\Models\\User', 61507),
(2, 'App\\Models\\User', 61508),
(2, 'App\\Models\\User', 61509),
(2, 'App\\Models\\User', 61510),
(2, 'App\\Models\\User', 61521),
(2, 'App\\Models\\User', 61529),
(2, 'App\\Models\\User', 61536),
(2, 'App\\Models\\User', 61538),
(2, 'App\\Models\\User', 61552),
(2, 'App\\Models\\User', 61557),
(2, 'App\\Models\\User', 61561),
(2, 'App\\Models\\User', 61563),
(2, 'App\\Models\\User', 61567),
(2, 'App\\Models\\User', 61568),
(2, 'App\\Models\\User', 61570),
(2, 'App\\Models\\User', 61575),
(2, 'App\\Models\\User', 61589),
(2, 'App\\Models\\User', 61590);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(191) DEFAULT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `game` varchar(191) NOT NULL,
  `game_uuid` varchar(191) NOT NULL,
  `type` varchar(50) NOT NULL,
  `type_money` varchar(50) NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `providers` varchar(191) NOT NULL,
  `refunded` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `round_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'games-exclusive-edit', 'web', '2023-10-12 16:23:45', '2023-10-12 18:12:28'),
(2, 'games-exclusive-view', 'web', '2023-10-12 16:23:56', '2023-10-12 18:11:25'),
(3, 'games-exclusive-create', 'web', '2023-10-12 16:25:06', '2023-10-12 18:11:10'),
(4, 'admin-view', 'web', '2023-10-12 17:56:35', '2023-10-12 17:56:35'),
(5, 'admin-create', 'web', '2023-10-12 18:56:02', '2023-10-12 18:56:02'),
(6, 'admin-edit', 'web', '2023-10-12 18:56:27', '2023-10-12 18:56:27'),
(7, 'admin-delete', 'web', '2023-10-12 18:56:55', '2023-10-12 18:56:55'),
(8, 'category-view', 'web', '2023-10-12 19:01:31', '2023-10-12 19:01:31'),
(9, 'category-create', 'web', '2023-10-12 19:01:46', '2023-10-12 19:01:46'),
(10, 'category-edit', 'web', '2023-10-12 19:01:59', '2023-10-12 19:01:59'),
(11, 'category-delete', 'web', '2023-10-12 19:02:09', '2023-10-12 19:02:09'),
(12, 'game-view', 'web', '2023-10-12 19:02:27', '2023-10-12 19:02:27'),
(13, 'game-create', 'web', '2023-10-12 19:02:36', '2023-10-12 19:02:36'),
(14, 'game-edit', 'web', '2023-10-12 19:02:44', '2023-10-12 19:02:44'),
(15, 'game-delete', 'web', '2023-10-12 19:02:54', '2023-10-12 19:02:54'),
(16, 'wallet-view', 'web', '2023-10-12 19:05:49', '2023-10-12 19:05:49'),
(17, 'wallet-create', 'web', '2023-10-12 19:06:01', '2023-10-12 19:06:01'),
(18, 'wallet-edit', 'web', '2023-10-12 19:06:11', '2023-10-12 19:06:11'),
(19, 'wallet-delete', 'web', '2023-10-12 19:06:18', '2023-10-12 19:06:18'),
(20, 'deposit-view', 'web', '2023-10-12 19:06:44', '2023-10-12 19:06:44'),
(21, 'deposit-create', 'web', '2023-10-12 19:06:56', '2023-10-12 19:06:56'),
(22, 'deposit-edit', 'web', '2023-10-12 19:07:05', '2023-10-12 19:07:05'),
(23, 'deposit-update', 'web', '2023-10-12 19:08:00', '2023-10-12 19:08:00'),
(24, 'deposit-delete', 'web', '2023-10-12 19:08:11', '2023-10-12 19:08:11'),
(25, 'withdrawal-view', 'web', '2023-10-12 19:09:31', '2023-10-12 19:09:31'),
(26, 'withdrawal-create', 'web', '2023-10-12 19:09:40', '2023-10-12 19:09:40'),
(27, 'withdrawal-edit', 'web', '2023-10-12 19:09:51', '2023-10-12 19:09:51'),
(28, 'withdrawal-update', 'web', '2023-10-12 19:10:00', '2023-10-12 19:10:00'),
(29, 'withdrawal-delete', 'web', '2023-10-12 19:10:09', '2023-10-12 19:10:09'),
(30, 'order-view', 'web', '2023-10-12 19:12:36', '2023-10-12 19:12:36'),
(31, 'order-create', 'web', '2023-10-12 19:12:47', '2023-10-12 19:12:47'),
(32, 'order-edit', 'web', '2023-10-12 19:12:56', '2023-10-12 19:12:56'),
(33, 'order-update', 'web', '2023-10-12 19:13:06', '2023-10-12 19:13:06'),
(34, 'order-delete', 'web', '2023-10-12 19:13:19', '2023-10-12 19:13:19'),
(35, 'admin-menu-view', 'web', '2023-10-12 20:26:06', '2023-10-12 20:26:06'),
(36, 'setting-view', 'web', '2023-10-12 21:25:46', '2023-10-12 21:25:46'),
(37, 'setting-create', 'web', '2023-10-12 21:25:57', '2023-10-12 21:25:57'),
(38, 'setting-edit', 'web', '2023-10-12 21:26:06', '2023-10-12 21:26:06'),
(39, 'setting-update', 'web', '2023-10-12 21:26:19', '2023-10-12 21:26:19'),
(40, 'setting-delete', 'web', '2023-10-12 21:26:33', '2023-10-12 21:26:33');

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `rtp` bigint(20) DEFAULT 90,
  `views` bigint(20) DEFAULT 1,
  `distribution` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `providers`
--

INSERT INTO `providers` (`id`, `cover`, `code`, `name`, `status`, `rtp`, `views`, `distribution`, `created_at`, `updated_at`) VALUES
(150, NULL, 'EVOPLAY', 'Evoplay', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(151, NULL, 'TOPTREND', 'Toptrend', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(162, NULL, 'MICROCASINO_GOLD', 'Micro Casino', 1, 90, 1, 'worldslot', '2024-04-27 11:29:22', '2024-04-27 11:29:22'),
(161, NULL, 'EZUGI_GOLD', 'Ezugi Casino', 1, 90, 1, 'worldslot', '2024-04-27 11:29:22', '2024-04-27 11:29:22'),
(152, NULL, 'DREAMTECH', 'Dreamtech', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(153, NULL, 'GENESIS', 'Genesis', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(154, NULL, 'PGSOFT', 'PGSoft', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(155, NULL, 'MICROGAMING', 'MicroGaming', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(156, NULL, 'REDTIGER', 'RedTiger', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(157, NULL, 'GMW', 'GMW', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(158, NULL, 'EVOLUTION_GOLD', 'Evolution Casino', 1, 90, 1, 'worldslot', '2024-04-27 11:29:22', '2024-04-27 11:29:22'),
(159, NULL, 'BIGGAMING_GOLD', 'Big Casino', 1, 90, 1, 'worldslot', '2024-04-27 11:29:22', '2024-04-27 11:29:22'),
(160, NULL, 'DREAM_GOLD', 'Dream Casino', 1, 90, 1, 'worldslot', '2024-04-27 11:29:22', '2024-04-27 11:29:22'),
(149, NULL, 'CQ9', 'CQ9', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(148, NULL, 'PLAYSON', 'Playson', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(147, NULL, 'BOOONGO', 'Booongo', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(146, NULL, 'HABANERO', 'Habanero', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(145, NULL, 'REELKINGDOM', 'ReelKingdom', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(144, NULL, 'PRAGMATIC', 'PragmaticPlay', 1, 90, 1, 'worldslot', '2024-04-27 11:29:19', '2024-04-27 11:29:19'),
(163, NULL, 'PRAGMATIC', 'Megaways', 1, 90, 1, 'worldslot', '2024-04-27 17:05:36', '2024-04-27 17:06:08'),
(164, NULL, 'PGSOFT', 'PGSoft Games', 1, 90, 1, 'evergame', '2024-05-09 16:28:22', '2024-05-13 13:54:02'),
(165, NULL, 'Ever_Mini', 'Jogos Crash', 1, 90, 1, 'evergame', '2024-05-13 19:09:03', '2024-05-13 19:09:03'),
(166, NULL, 'Evolution_Casino', 'Evolution Games', 1, 90, 1, 'evergame', '2024-06-10 15:59:29', '2024-06-10 16:03:25'),
(167, NULL, 'Dream_Casino', 'Dream', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(168, NULL, 'Ezugi_Casino', 'Ezugi', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(169, NULL, 'Micro_Casino', 'Micro', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(170, NULL, 'Live_Sport', 'Live', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(171, NULL, 'Booongo_Slot', 'Booongo', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(172, NULL, 'CQ9_Slot', 'CQ9', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(173, NULL, 'DreamTech_Slot', 'DreamTech', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(174, NULL, 'Playson_Slot', 'Playson', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(175, NULL, 'ReelKingDom_Slot', 'ReelKingDom', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(176, NULL, 'TopTrend_Slot', 'TopTrend', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(177, NULL, 'Habanero_Slot', 'Habanero', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(178, NULL, 'PGSoft_Slot', 'PGSoft', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(179, NULL, 'Pragmatic_Slot', 'Pragmatic', 1, 80, 1, 'evergame', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(99999, 'storage/apipragmatic40/cover.webp', 'Pragmatic_Slot', 'Pragmatic', 1, 80, 1, 'apipragmatic40', '2024-06-26 17:53:51', '2024-06-26 17:53:51'),
(100000, NULL, 'casino-evolution', 'EVOLUTION', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100001, NULL, 'PGSOFT', 'PGSOFT', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100002, NULL, 'PRAGMATIC PLAY', 'PRAGMATIC PLAY', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100003, NULL, 'slot-habanero', 'HABANERO', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100004, NULL, 'casino-dream', 'Dream Gaming', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100005, NULL, 'casino-micro', 'Micro Gaming', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100006, NULL, 'casino-dreaminfa', 'Hotel Dream', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100007, NULL, 'casino-microinfa', 'Hotel Micro', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100008, NULL, 'slot-pragmatic', 'Pragmatic Slot', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100009, NULL, 'slot-pgsoft', 'PGSoft Slot', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100010, NULL, 'slot-booongo', 'Booongo', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100011, NULL, 'slot-hacksaw', 'Hacksaw Slot', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100012, NULL, 'slot-popiplay', 'Popiplay Slot', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100013, NULL, 'slot-evoplay', 'Evoplay Slot', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100014, NULL, 'slot-mascot', 'Mascot Slot', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100015, NULL, 'slot-popok', 'PopOk Slot', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59'),
(100016, NULL, 'mini-poker', 'Poker', 1, 80, 1, 'connectgames', '2024-09-05 15:03:59', '2024-09-05 15:03:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-10-12 16:20:41', '2023-10-12 16:20:41'),
(2, 'afiliado', 'web', '2023-10-12 16:21:08', '2023-10-12 16:21:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `software_name` varchar(255) DEFAULT NULL,
  `software_description` varchar(255) DEFAULT NULL,
  `software_favicon` varchar(255) DEFAULT NULL,
  `software_logo_white` varchar(255) DEFAULT NULL,
  `software_logo_black` varchar(255) DEFAULT NULL,
  `software_background` varchar(255) DEFAULT NULL,
  `currency_code` varchar(191) NOT NULL DEFAULT 'BRL',
  `decimal_format` varchar(20) NOT NULL DEFAULT 'dot',
  `currency_position` varchar(20) NOT NULL DEFAULT 'left',
  `revshare_percentage` bigint(20) DEFAULT 20,
  `ngr_percent` bigint(20) DEFAULT 20,
  `soccer_percentage` bigint(20) DEFAULT 30,
  `prefix` varchar(191) NOT NULL DEFAULT 'R$',
  `storage` varchar(191) NOT NULL DEFAULT 'local',
  `initial_bonus` bigint(20) DEFAULT 0,
  `min_deposit` int(11) DEFAULT NULL,
  `max_deposit` int(11) DEFAULT NULL,
  `min_withdrawal` int(11) DEFAULT NULL,
  `max_withdrawal` int(11) DEFAULT NULL,
  `rollover` bigint(20) DEFAULT 10,
  `rollover_deposit` bigint(20) DEFAULT 1,
  `suitpay_is_enable` tinyint(4) DEFAULT 1,
  `stripe_is_enable` tinyint(4) DEFAULT 1,
  `bspay_is_enable` tinyint(4) DEFAULT 0,
  `sharkpay_is_enable` tinyint(4) DEFAULT 1,
  `turn_on_football` tinyint(4) DEFAULT 1,
  `revshare_reverse` tinyint(1) DEFAULT 1,
  `bonus_vip` bigint(20) DEFAULT 100,
  `activate_vip_bonus` tinyint(1) DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `maintenance_mode` tinyint(4) DEFAULT 0,
  `withdrawal_limit` bigint(20) DEFAULT NULL,
  `withdrawal_period` varchar(30) DEFAULT NULL,
  `disable_spin` tinyint(1) NOT NULL DEFAULT 0,
  `perc_sub_lv1` bigint(20) NOT NULL DEFAULT 4,
  `perc_sub_lv2` bigint(20) NOT NULL DEFAULT 2,
  `perc_sub_lv3` bigint(20) NOT NULL DEFAULT 3,
  `disable_rollover` tinyint(4) DEFAULT 0,
  `rollover_protection` bigint(20) NOT NULL DEFAULT 1,
  `cpa_baseline` decimal(10,2) DEFAULT NULL,
  `cpa_value` decimal(10,2) DEFAULT NULL,
  `cpa_percentage_baseline` decimal(10,2) DEFAULT NULL,
  `cpa_percentage` varchar(255) DEFAULT NULL,
  `mercadopago_is_enable` tinyint(4) DEFAULT 0,
  `digitopay_is_enable` tinyint(4) NOT NULL DEFAULT 0,
  `default_gateway` varchar(191) NOT NULL DEFAULT 'digitopay',
  `trunk_baseline` decimal(20,2) NOT NULL DEFAULT 20.00,
  `trunk_aposta` decimal(20,2) NOT NULL DEFAULT 20.00,
  `trunk_valor` decimal(20,2) NOT NULL DEFAULT 20.00,
  `withdrawal_autom` int(11) DEFAULT 0,
  `limit_withdrawal` int(11) DEFAULT 20
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id`, `software_name`, `software_description`, `software_favicon`, `software_logo_white`, `software_logo_black`, `software_background`, `currency_code`, `decimal_format`, `currency_position`, `revshare_percentage`, `ngr_percent`, `soccer_percentage`, `prefix`, `storage`, `initial_bonus`, `min_deposit`, `max_deposit`, `min_withdrawal`, `max_withdrawal`, `rollover`, `rollover_deposit`, `suitpay_is_enable`, `stripe_is_enable`, `bspay_is_enable`, `sharkpay_is_enable`, `turn_on_football`, `revshare_reverse`, `bonus_vip`, `activate_vip_bonus`, `updated_at`, `maintenance_mode`, `withdrawal_limit`, `withdrawal_period`, `disable_spin`, `perc_sub_lv1`, `perc_sub_lv2`, `perc_sub_lv3`, `disable_rollover`, `rollover_protection`, `cpa_baseline`, `cpa_value`, `cpa_percentage_baseline`, `cpa_percentage`, `mercadopago_is_enable`, `digitopay_is_enable`, `default_gateway`, `trunk_baseline`, `trunk_aposta`, `trunk_valor`, `withdrawal_autom`, `limit_withdrawal`) VALUES
(1, 'MzPgg', 'Os melhores jogos de cassino e slots com PIX automático.', 'uploads/iJqNHqyANObm9i9gZGU7q3afrdw5FkW5ST9j1UDE.gif', 'uploads/WXbqIpdzdgvQotcm0ggEDadrI1vxQMwBg8H7hkqJ.png', 'uploads/iE2NGZC2dQAELdOv2Per2I6Xu8mmBC7687rblTG0.png', '[]', 'BRL', 'dot', 'left', 0, 0, 30, 'R$', 'local', 0, 10, 500, 10, 50000, 10, 3, 1, 0, 0, 0, 0, 1, 0, 0, '2024-10-06 01:59:52', 0, 10000, 'daily', 1, 10, 0, 0, 1, 4, 5.00, 15.00, 100.00, '100', 0, 0, 'suitpay', 25.00, 80.00, 10.00, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `setting_mails`
--

CREATE TABLE `setting_mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `software_smtp_type` varchar(30) DEFAULT NULL,
  `software_smtp_mail_host` varchar(100) DEFAULT NULL,
  `software_smtp_mail_port` varchar(30) DEFAULT NULL,
  `software_smtp_mail_username` varchar(191) DEFAULT NULL,
  `software_smtp_mail_password` varchar(100) DEFAULT NULL,
  `software_smtp_mail_encryption` varchar(30) DEFAULT NULL,
  `software_smtp_mail_from_address` varchar(191) DEFAULT NULL,
  `software_smtp_mail_from_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sub_affiliates`
--

CREATE TABLE `sub_affiliates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affiliate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura da tabela `suit_pay_payments`
--

CREATE TABLE `suit_pay_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `withdrawal_id` bigint(20) UNSIGNED NOT NULL,
  `pix_key` varchar(191) DEFAULT NULL,
  `pix_type` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `observation` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `system_wallets`
--

CREATE TABLE `system_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` char(32) NOT NULL,
  `balance` decimal(27,12) NOT NULL DEFAULT 0.000000000000,
  `balance_min` decimal(27,12) NOT NULL DEFAULT 10000.100000000000,
  `pay_upto_percentage` decimal(4,2) NOT NULL DEFAULT 45.00,
  `mode` enum('balance_min','percentage') NOT NULL DEFAULT 'percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

--
-- Extraindo dados da tabela `system_wallets`
--

INSERT INTO `system_wallets` (`id`, `label`, `balance`, `balance_min`, `pay_upto_percentage`, `mode`, `created_at`, `updated_at`) VALUES
(1, 'system', 261.800000000000, 10000.100000000000, 45.00, 'percentage', '2023-10-11 16:11:15', '2023-10-16 18:42:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(20) NOT NULL DEFAULT 'usd',
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `accept_bonus` tinyint(1) NOT NULL DEFAULT 1,
  `hash` varchar(191) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `transactions`
--

INSERT INTO `transactions` (`id`, `payment_id`, `user_id`, `payment_method`, `price`, `currency`, `status`, `created_at`, `updated_at`, `reference`, `accept_bonus`, `hash`) VALUES
(1, '270c92cf04b87e0dc943m1s364664an7', 61590, 'pix', 10.00, 'BRL', 0, '2024-10-02 16:32:50', '2024-10-02 16:32:50', NULL, 1, ''),
(2, '5a19fe5faf6128c9dc13m1s36j4x3lgc', 61590, 'pix', 22.00, 'BRL', 0, '2024-10-02 16:33:09', '2024-10-02 16:33:09', NULL, 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `oauth_id` varchar(191) DEFAULT NULL,
  `oauth_type` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `logged_in` tinyint(4) NOT NULL DEFAULT 0,
  `banned` tinyint(4) NOT NULL DEFAULT 0,
  `inviter` int(11) DEFAULT NULL,
  `inviter_code` varchar(25) DEFAULT NULL,
  `affiliate_revenue_share` bigint(20) NOT NULL DEFAULT 2,
  `affiliate_revenue_share_fake` bigint(20) DEFAULT NULL,
  `affiliate_cpa` decimal(20,2) NOT NULL DEFAULT 10.00,
  `affiliate_percentage_cpa` decimal(10,2) DEFAULT NULL,
  `affiliate_percentage_baseline` varchar(255) DEFAULT NULL,
  `affiliate_baseline` decimal(20,2) NOT NULL DEFAULT 40.00,
  `is_demo_agent` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `language` varchar(191) NOT NULL DEFAULT 'pt_BR',
  `role_id` int(11) DEFAULT 3,
  `affiliate_bau_baseline` decimal(20,2) NOT NULL DEFAULT 20.00,
  `affiliate_bau_value` decimal(20,2) NOT NULL DEFAULT 20.00,
  `affiliate_bau_aposta` decimal(20,2) NOT NULL DEFAULT 20.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `oauth_id`, `oauth_type`, `avatar`, `last_name`, `cpf`, `phone`, `logged_in`, `banned`, `inviter`, `inviter_code`, `affiliate_revenue_share`, `affiliate_revenue_share_fake`, `affiliate_cpa`, `affiliate_percentage_cpa`, `affiliate_percentage_baseline`, `affiliate_baseline`, `is_demo_agent`, `status`, `language`, `role_id`, `affiliate_bau_baseline`, `affiliate_bau_value`, `affiliate_bau_aposta`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$3CwOwYf/YZWa7FbrnLxo9eKNYzZJFQFKoyc1IyNPGXdfue9euEcVa', '$2y$10$3CwOwYf/YZWa7FbrnLxo9eKNYzZJFQFKoyc1IyNPGXdfue9euEcVa', '2023-11-08 01:15:13', '2024-04-30 21:50:50', NULL, NULL, 'uploads/8lx3OeL0c6GX18GMIhbgf2Kj4JVew0NRmnTUYYSb.png', NULL, NULL, NULL, 0, 0, NULL, NULL, 20, NULL, 10.00, NULL, NULL, 40.00, 0, 'active', 'pt_BR', 1, 20.00, 20.00, 20.00),
(61589, 'dffddfssdf', '34853847587@gmail.com', NULL, '$2y$10$PcyYs47LVnqb2mjqq2zozeWQr5ieIv3oNrrST2vESGjsd2GbMbg1y', NULL, '2024-09-20 22:47:11', '2024-09-20 22:47:18', NULL, NULL, NULL, NULL, NULL, '34853847587', 0, 0, NULL, '3059417118', 0, NULL, 15.00, 100.00, '100.00', 5.00, 0, 'active', 'pt_BR', 3, 25.00, 10.00, 80.00),
(61590, 'felipe', '13996038003@gmail.com', NULL, '$2y$10$A1BXgpWWqUxyqIwxIixRK.tPHwT6hR6WOHrsaWx9.ipPqmgLkOZkG', NULL, '2024-09-20 23:14:34', '2024-09-21 00:18:23', NULL, NULL, NULL, NULL, NULL, '13996038003', 0, 0, NULL, '1741397894', 0, NULL, 15.00, 100.00, '100.00', 5.00, 0, 'active', 'pt_BR', 3, 25.00, 10.00, 80.00),
(61591, 'dsfhsdhjfsj', '23475237847@gmail.com', NULL, '$2y$10$3CwOwYf/YZWa7FbrnLxo9eKNYzZJFQFKoyc1IyNPGXdfue9euEcVa', NULL, '2024-11-18 17:29:58', '2024-11-18 17:29:58', NULL, NULL, NULL, NULL, NULL, '23475237847', 0, 0, NULL, NULL, 0, NULL, 15.00, 100.00, '100.00', 5.00, 0, 'active', 'pt_BR', 3, 25.00, 10.00, 80.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vips`
--

CREATE TABLE `vips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bet_symbol` varchar(255) NOT NULL,
  `bet_level` bigint(20) NOT NULL DEFAULT 1,
  `bet_required` bigint(20) DEFAULT NULL,
  `bet_period` varchar(191) DEFAULT NULL,
  `bet_bonus` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vip_users`
--

CREATE TABLE `vip_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `vip_id` int(10) UNSIGNED NOT NULL,
  `level` bigint(20) NOT NULL,
  `points` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(20) NOT NULL,
  `symbol` varchar(5) NOT NULL,
  `balance` decimal(20,2) NOT NULL DEFAULT 0.00,
  `balance_bonus_rollover` decimal(10,2) DEFAULT 0.00,
  `balance_deposit_rollover` decimal(10,2) DEFAULT 0.00,
  `balance_withdrawal` decimal(10,2) DEFAULT 0.00,
  `balance_bonus` decimal(20,2) NOT NULL DEFAULT 0.00,
  `balance_cryptocurrency` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `balance_demo` decimal(20,8) DEFAULT 1000.00000000,
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT 0.00,
  `hide_balance` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_bet` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_won` bigint(20) NOT NULL DEFAULT 0,
  `total_lose` bigint(20) NOT NULL DEFAULT 0,
  `last_won` bigint(20) NOT NULL DEFAULT 0,
  `last_lose` bigint(20) NOT NULL DEFAULT 0,
  `vip_level` bigint(20) DEFAULT 0,
  `vip_points` bigint(20) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `currency`, `symbol`, `balance`, `balance_bonus_rollover`, `balance_deposit_rollover`, `balance_withdrawal`, `balance_bonus`, `balance_cryptocurrency`, `balance_demo`, `refer_rewards`, `hide_balance`, `active`, `created_at`, `updated_at`, `total_bet`, `total_won`, `total_lose`, `last_won`, `last_lose`, `vip_level`, `vip_points`) VALUES
(4901, 61590, 'BRL', 'R$', 22.00, 0.00, 0.00, 8405.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-09-20 23:14:34', '2024-11-18 17:21:51', 0.00, 0, 0, 0, 0, 0, 0),
(4900, 61589, 'BRL', 'R$', 22.00, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-09-20 22:47:11', '2024-09-20 22:47:11', 0.00, 0, 0, 0, 0, 0, 0),
(4902, 61591, 'BRL', 'R$', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00000000, 1000.00000000, 0.00, 0, 1, '2024-11-18 17:29:58', '2024-11-18 17:29:58', 0.00, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wallet_changes`
--

CREATE TABLE `wallet_changes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `change` varchar(50) DEFAULT NULL,
  `value_bonus` decimal(20,2) NOT NULL DEFAULT 0.00,
  `value_total` decimal(20,2) NOT NULL DEFAULT 0.00,
  `value_roi` decimal(20,2) NOT NULL DEFAULT 0.00,
  `value_entry` decimal(20,2) NOT NULL DEFAULT 0.00,
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT 0.00,
  `game` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(191) NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `type` varchar(191) DEFAULT NULL,
  `proof` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `pix_key` varchar(191) DEFAULT NULL,
  `pix_type` varchar(191) DEFAULT NULL,
  `bank_info` text DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `symbol` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_histories_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `affiliate_histories_inviter_index` (`inviter`) USING BTREE;

--
-- Índices para tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_withdraws_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices para tabela `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `baus`
--
ALTER TABLE `baus`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `casino_categories_slug_unique` (`slug`) USING BTREE;

--
-- Índices para tabela `category_game`
--
ALTER TABLE `category_game`
  ADD KEY `category_games_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `category_games_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices para tabela `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `currency_alloweds_currency_id_foreign` (`currency_id`) USING BTREE;

--
-- Índices para tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `deposits_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices para tabela `digito_pay_payments`
--
ALTER TABLE `digito_pay_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `digito_pay_payments_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `digito_pay_payments_withdrawal_id_index` (`withdrawal_id`) USING BTREE;

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Índices para tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `games_provider_id_index` (`provider_id`),
  ADD KEY `games_game_code_index` (`game_code`);

--
-- Índices para tabela `games_keys`
--
ALTER TABLE `games_keys`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `game_favorites_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_favorites_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices para tabela `game_likes`
--
ALTER TABLE `game_likes`
  ADD UNIQUE KEY `game_likes_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_likes_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices para tabela `game_reviews`
--
ALTER TABLE `game_reviews`
  ADD UNIQUE KEY `game_reviews_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_reviews_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices para tabela `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_fivers_user_id_index` (`user_id`) USING BTREE;

--
-- Índices para tabela `ggr_games_world_slots`
--
ALTER TABLE `ggr_games_world_slots`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_world_slots_user_id_index` (`user_id`) USING BTREE;

--
-- Índices para tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `likes_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `likes_liked_user_id_foreign` (`liked_user_id`) USING BTREE;

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `mission_users`
--
ALTER TABLE `mission_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `mission_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `mission_users_mission_id_index` (`mission_id`) USING BTREE;

--
-- Índices para tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices para tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices para tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`) USING BTREE;

--
-- Índices para tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `orders_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices para tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Índices para tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Índices para tabela `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices para tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE;

--
-- Índices para tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sub_affiliates_affiliate_id_index` (`affiliate_id`) USING BTREE,
  ADD KEY `sub_affiliates_user_id_index` (`user_id`) USING BTREE;

--
-- Índices para tabela `suit_pay_payments`
--
ALTER TABLE `suit_pay_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `suit_pay_payments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `suit_pay_payments_withdrawal_id_foreign` (`withdrawal_id`) USING BTREE;

--
-- Índices para tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `transactions_user_id_index` (`user_id`) USING BTREE;

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Índices para tabela `vips`
--
ALTER TABLE `vips`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `vip_users`
--
ALTER TABLE `vip_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `vip_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `vip_users_vip_id_index` (`vip_id`) USING BTREE;

--
-- Índices para tabela `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallets_user_id_index` (`user_id`) USING BTREE;

--
-- Índices para tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallet_changes_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices para tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices para tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `withdrawals_user_id_foreign` (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `baus`
--
ALTER TABLE `baus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `digito_pay_payments`
--
ALTER TABLE `digito_pay_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1242;

--
-- AUTO_INCREMENT de tabela `games_keys`
--
ALTER TABLE `games_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ggr_games_world_slots`
--
ALTER TABLE `ggr_games_world_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de tabela `missions`
--
ALTER TABLE `missions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mission_users`
--
ALTER TABLE `mission_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100017;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `suit_pay_payments`
--
ALTER TABLE `suit_pay_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61592;

--
-- AUTO_INCREMENT de tabela `vips`
--
ALTER TABLE `vips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `vip_users`
--
ALTER TABLE `vip_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4903;

--
-- AUTO_INCREMENT de tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
