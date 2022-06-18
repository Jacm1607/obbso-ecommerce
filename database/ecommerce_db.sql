-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2022 a las 02:48:39
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'AIR MONSTER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'ALADDIN', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'ARNO', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'BABYLISS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'BG', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'BIROTEC', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'BLACK AND DECKER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'BONATTI', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'BOSCH', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'BRINOX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'CANNON', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'CANON', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'CHARBROIL', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'COLLI BIKE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'CONTINENTAL', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'CRISA', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'DAEWOO', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'DAKO', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'DELL', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'ELECTROLUX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'EPSON', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'ESMALTEC', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'FORZA', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'FRICON', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'FRIGIDAIRE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'GAMA', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'GENERICO', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'GRILLER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'HAVIT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'HP', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'HUAWEI', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'INTEX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'INVICTA', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'APPLE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'ITATIAIA', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'JVC', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'KARCHER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'KEMAKUR', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'KLIP XTREME', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'KODAK', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'LG', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'LUMI', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'MABE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'MAGEFESA', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'MASTER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'MAXELL', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'MAXIKING', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'MELING', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'MERCADORIA', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'METALFRIO', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'MIDEA', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'MOULINEX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'NADIR', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'NINTENDO', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'OSTER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'PANELUX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'PASABAHCE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'PHOENIX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'PHILIPS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'PHILIPS/WALITA', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'POLARMAX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'RADIANTE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'SAMSUNG', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'SKYWORTH', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'SONY', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'TOSHIBA', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'TRAMONTINA', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'TURTLE BEACH', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'UFESA', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'UNIVERSAL', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'VENZO', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'WESTINGHOUSE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'XIAOMI', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'XTECH', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'KASPERSKY', '1', '2021-11-18 02:14:12', '2021-11-18 02:14:12'),
(76, 'HATECH', '1', '2021-11-18 02:30:34', '2021-11-18 02:30:34'),
(77, 'HISENSE', '1', '2021-11-18 02:34:19', '2021-11-18 02:34:19'),
(78, 'ONEIDA', '1', '2021-11-18 02:36:59', '2021-11-18 02:36:59'),
(79, 'OHAMA', '1', '2021-11-18 02:37:18', '2021-11-18 02:37:18'),
(80, 'HEREVIN', '1', '2021-11-18 15:35:02', '2021-11-18 15:35:02'),
(81, 'MAN', '1', '2021-11-18 15:40:35', '2021-11-18 15:40:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brand_category`
--

CREATE TABLE `brand_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `brand_category`
--

INSERT INTO `brand_category` (`id`, `brand_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 12, 2, NULL, NULL),
(2, 19, 2, NULL, NULL),
(3, 21, 2, NULL, NULL),
(4, 29, 2, NULL, NULL),
(5, 31, 2, NULL, NULL),
(6, 30, 2, NULL, NULL),
(7, 34, 2, NULL, NULL),
(8, 75, 2, NULL, NULL),
(9, 68, 2, NULL, NULL),
(10, 65, 2, NULL, NULL),
(11, 54, 2, NULL, NULL),
(12, 39, 2, NULL, NULL),
(13, 46, 2, NULL, NULL),
(14, 64, 2, NULL, NULL),
(15, 41, 2, NULL, NULL),
(16, 36, 2, NULL, NULL),
(17, 58, 5, NULL, NULL),
(18, 51, 5, NULL, NULL),
(19, 44, 5, NULL, NULL),
(20, 1, 5, NULL, NULL),
(21, 61, 5, NULL, NULL),
(22, 72, 5, NULL, NULL),
(23, 55, 5, NULL, NULL),
(24, 18, 5, NULL, NULL),
(25, 43, 5, NULL, NULL),
(26, 9, 5, NULL, NULL),
(27, 15, 5, NULL, NULL),
(28, 35, 5, NULL, NULL),
(29, 59, 5, NULL, NULL),
(30, 60, 5, NULL, NULL),
(31, 4, 5, NULL, NULL),
(32, 26, 5, NULL, NULL),
(33, 6, 5, NULL, NULL),
(34, 63, 5, NULL, NULL),
(35, 8, 5, NULL, NULL),
(36, 41, 5, NULL, NULL),
(37, 7, 5, NULL, NULL),
(38, 3, 5, NULL, NULL),
(39, 67, 5, NULL, NULL),
(40, 52, 5, NULL, NULL),
(41, 76, 5, NULL, NULL),
(42, 17, 5, NULL, NULL),
(43, 20, 5, NULL, NULL),
(44, 50, 5, NULL, NULL),
(45, 24, 5, NULL, NULL),
(46, 77, 5, NULL, NULL),
(47, 47, 1, NULL, NULL),
(48, 10, 1, NULL, NULL),
(49, 72, 1, NULL, NULL),
(50, 63, 1, NULL, NULL),
(51, 57, 1, NULL, NULL),
(52, 27, 1, NULL, NULL),
(53, 11, 1, NULL, NULL),
(54, 67, 1, NULL, NULL),
(55, 33, 1, NULL, NULL),
(56, 78, 1, NULL, NULL),
(57, 79, 1, NULL, NULL),
(58, 27, 6, NULL, NULL),
(59, 40, 4, NULL, NULL),
(60, 5, 4, NULL, NULL),
(61, 29, 4, NULL, NULL),
(62, 42, 4, NULL, NULL),
(63, 27, 4, NULL, NULL),
(64, 32, 7, NULL, NULL),
(65, 27, 7, NULL, NULL),
(66, 28, 7, NULL, NULL),
(67, 38, 7, NULL, NULL),
(68, 73, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `icon`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Mueble y Decohogar', 'mueble-y-decohogar', 'categories/e486f39f09514518c8d5a997c2294bdd.jpg', '<i class=\"fas fa-dot-circle\"></i>', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Tecnologia', 'tecnologia', 'categories/5f139d5d28c97e770c607345633a1f53.jpg', '<i class=\"fas fa-dot-circle\"></i>', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Accesorio', 'accesorio', 'categories/0d8d862e7b075ff178152f739a3aed0f.jpg', '<i class=\"fas fa-dot-circle\"></i>', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Electrohogar', 'electrohogar', 'categories/24737c38866124cc53ba86ff21f949a0.jpg', '<i class=\"fas fa-dot-circle\"></i>', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Jugueteria', 'jugueteria', 'categories/cbcb85b8c48fe734527e25dd1dfe4c4c.jpg', '<i class=\"fas fa-dot-circle\"></i>', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Exterior', 'exterior', 'categories/cas5s85a5v5s767e25dd1dfe4c4c.jpg', '<i class=\"fas fa-dot-circle\"></i>', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_methods`
--

CREATE TABLE `delivery_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `delivery_methods`
--

INSERT INTO `delivery_methods` (`id`, `name`) VALUES
(1, 'Retiro en Tienda'),
(2, 'Envío a Domicilio'),
(3, 'Envío a Terminal'),
(4, 'Retiro en Almacén');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_method_municipality`
--

CREATE TABLE `delivery_method_municipality` (
  `id` int(11) NOT NULL,
  `municipality_id` int(11) NOT NULL,
  `delivery_method_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `delivery_method_municipality`
--

INSERT INTO `delivery_method_municipality` (`id`, `municipality_id`, `delivery_method_id`) VALUES
(1, 272, 1),
(2, 282, 1),
(3, 286, 1),
(4, 289, 1),
(5, 293, 1),
(6, 320, 1),
(7, 325, 1),
(8, 320, 2),
(9, 1, 3),
(10, 2, 3),
(11, 3, 3),
(12, 4, 3),
(13, 5, 3),
(14, 6, 3),
(15, 7, 3),
(16, 8, 3),
(17, 9, 3),
(18, 10, 3),
(19, 11, 3),
(20, 12, 3),
(21, 13, 3),
(22, 14, 3),
(23, 15, 3),
(24, 16, 3),
(25, 17, 3),
(26, 18, 3),
(27, 19, 3),
(28, 20, 3),
(29, 21, 3),
(30, 22, 3),
(31, 23, 3),
(32, 24, 3),
(33, 25, 3),
(34, 26, 3),
(35, 27, 3),
(36, 28, 3),
(37, 29, 3),
(38, 30, 3),
(39, 31, 3),
(40, 32, 3),
(41, 33, 3),
(42, 34, 3),
(43, 35, 3),
(44, 36, 3),
(45, 37, 3),
(46, 38, 3),
(47, 39, 3),
(48, 40, 3),
(49, 41, 3),
(50, 42, 3),
(51, 43, 3),
(52, 44, 3),
(53, 45, 3),
(54, 46, 3),
(55, 47, 3),
(56, 48, 3),
(57, 49, 3),
(58, 50, 3),
(59, 51, 3),
(60, 52, 3),
(61, 53, 3),
(62, 54, 3),
(63, 55, 3),
(64, 56, 3),
(65, 57, 3),
(66, 58, 3),
(67, 59, 3),
(68, 60, 3),
(69, 61, 3),
(70, 62, 3),
(71, 63, 3),
(72, 64, 3),
(73, 65, 3),
(74, 66, 3),
(75, 67, 3),
(76, 68, 3),
(77, 69, 3),
(78, 70, 3),
(79, 71, 3),
(80, 72, 3),
(81, 73, 3),
(82, 74, 3),
(83, 75, 3),
(84, 76, 3),
(85, 77, 3),
(86, 78, 3),
(87, 79, 3),
(88, 80, 3),
(89, 81, 3),
(90, 82, 3),
(91, 83, 3),
(92, 84, 3),
(93, 85, 3),
(94, 86, 3),
(95, 87, 3),
(96, 88, 3),
(97, 89, 3),
(98, 90, 3),
(99, 91, 3),
(100, 92, 3),
(101, 93, 3),
(102, 94, 3),
(103, 95, 3),
(104, 96, 3),
(105, 97, 3),
(106, 98, 3),
(107, 99, 3),
(108, 100, 3),
(109, 101, 3),
(110, 102, 3),
(111, 103, 3),
(112, 104, 3),
(113, 105, 3),
(114, 106, 3),
(115, 107, 3),
(116, 108, 3),
(117, 109, 3),
(118, 110, 3),
(119, 111, 3),
(120, 112, 3),
(121, 113, 3),
(122, 114, 3),
(123, 115, 3),
(124, 116, 3),
(125, 117, 3),
(126, 118, 3),
(127, 119, 3),
(128, 120, 3),
(129, 121, 3),
(130, 122, 3),
(131, 123, 3),
(132, 124, 3),
(133, 125, 3),
(134, 126, 3),
(135, 127, 3),
(136, 128, 3),
(137, 129, 3),
(138, 130, 3),
(139, 131, 3),
(140, 132, 3),
(141, 133, 3),
(142, 134, 3),
(143, 135, 3),
(144, 136, 3),
(145, 137, 3),
(146, 138, 3),
(147, 139, 3),
(148, 140, 3),
(149, 141, 3),
(150, 142, 3),
(151, 143, 3),
(152, 144, 3),
(153, 145, 3),
(154, 146, 3),
(155, 147, 3),
(156, 148, 3),
(157, 149, 3),
(158, 150, 3),
(159, 151, 3),
(160, 152, 3),
(161, 153, 3),
(162, 154, 3),
(163, 155, 3),
(164, 156, 3),
(165, 157, 3),
(166, 158, 3),
(167, 159, 3),
(168, 160, 3),
(169, 161, 3),
(170, 162, 3),
(171, 163, 3),
(172, 164, 3),
(173, 165, 3),
(174, 166, 3),
(175, 167, 3),
(176, 168, 3),
(177, 169, 3),
(178, 170, 3),
(179, 171, 3),
(180, 172, 3),
(181, 173, 3),
(182, 174, 3),
(183, 175, 3),
(184, 176, 3),
(185, 177, 3),
(186, 178, 3),
(187, 179, 3),
(188, 180, 3),
(189, 181, 3),
(190, 182, 3),
(191, 183, 3),
(192, 184, 3),
(193, 185, 3),
(194, 186, 3),
(195, 187, 3),
(196, 188, 3),
(197, 189, 3),
(198, 190, 3),
(199, 191, 3),
(200, 192, 3),
(201, 193, 3),
(202, 194, 3),
(203, 195, 3),
(204, 196, 3),
(205, 197, 3),
(206, 198, 3),
(207, 199, 3),
(208, 200, 3),
(209, 201, 3),
(210, 202, 3),
(211, 203, 3),
(212, 204, 3),
(213, 205, 3),
(214, 206, 3),
(215, 207, 3),
(216, 208, 3),
(217, 209, 3),
(218, 210, 3),
(219, 211, 3),
(220, 212, 3),
(221, 213, 3),
(222, 214, 3),
(223, 215, 3),
(224, 216, 3),
(225, 217, 3),
(226, 218, 3),
(227, 219, 3),
(228, 220, 3),
(229, 221, 3),
(230, 222, 3),
(231, 223, 3),
(232, 224, 3),
(233, 225, 3),
(234, 226, 3),
(235, 227, 3),
(236, 228, 3),
(237, 229, 3),
(238, 230, 3),
(239, 231, 3),
(240, 232, 3),
(241, 233, 3),
(242, 234, 3),
(243, 235, 3),
(244, 236, 3),
(245, 237, 3),
(246, 238, 3),
(247, 239, 3),
(248, 240, 3),
(249, 241, 3),
(250, 242, 3),
(251, 243, 3),
(252, 244, 3),
(253, 245, 3),
(254, 246, 3),
(255, 247, 3),
(256, 248, 3),
(257, 249, 3),
(258, 250, 3),
(259, 251, 3),
(260, 252, 3),
(261, 253, 3),
(262, 254, 3),
(263, 255, 3),
(264, 256, 3),
(265, 257, 3),
(266, 258, 3),
(267, 259, 3),
(268, 260, 3),
(269, 261, 3),
(270, 262, 3),
(271, 263, 3),
(272, 264, 3),
(273, 265, 3),
(274, 266, 3),
(275, 267, 3),
(276, 268, 3),
(277, 269, 3),
(278, 270, 3),
(279, 271, 3),
(280, 272, 3),
(281, 273, 3),
(282, 274, 3),
(283, 275, 3),
(284, 276, 3),
(285, 277, 3),
(286, 278, 3),
(287, 279, 3),
(288, 280, 3),
(289, 281, 3),
(290, 282, 3),
(291, 283, 3),
(292, 284, 3),
(293, 285, 3),
(294, 286, 3),
(295, 287, 3),
(296, 288, 3),
(297, 289, 3),
(298, 290, 3),
(299, 291, 3),
(300, 292, 3),
(301, 293, 3),
(302, 294, 3),
(303, 295, 3),
(304, 296, 3),
(305, 297, 3),
(306, 298, 3),
(307, 299, 3),
(308, 300, 3),
(309, 301, 3),
(310, 302, 3),
(311, 303, 3),
(312, 304, 3),
(313, 305, 3),
(314, 306, 3),
(315, 307, 3),
(316, 308, 3),
(317, 309, 3),
(318, 310, 3),
(319, 311, 3),
(320, 312, 3),
(321, 313, 3),
(322, 314, 3),
(323, 315, 3),
(324, 316, 3),
(325, 317, 3),
(326, 318, 3),
(327, 319, 3),
(328, 321, 3),
(329, 322, 3),
(330, 323, 3),
(331, 324, 3),
(332, 325, 3),
(333, 326, 3),
(334, 327, 3),
(335, 328, 3),
(336, 329, 3),
(337, 330, 3),
(338, 331, 3),
(339, 332, 3),
(340, 333, 3),
(341, 334, 3),
(342, 335, 3),
(343, 336, 3),
(344, 337, 3),
(345, 338, 3),
(346, 339, 3),
(347, 340, 3),
(348, 341, 3),
(349, 30, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_method_pay_method`
--

CREATE TABLE `delivery_method_pay_method` (
  `id` int(11) NOT NULL,
  `pay_method_id` int(11) NOT NULL,
  `delivery_method_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `delivery_method_pay_method`
--

INSERT INTO `delivery_method_pay_method` (`id`, `pay_method_id`, `delivery_method_id`) VALUES
(1, 2, 1),
(3, 2, 2),
(5, 2, 3),
(6, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departaments`
--

CREATE TABLE `departaments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departaments`
--

INSERT INTO `departaments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Santa Cruz de la Sierra', '2021-05-23 20:21:44', '2021-10-23 20:10:34'),
(2, 'Cochabamba', '2021-05-23 20:21:44', '2021-05-23 20:21:44'),
(3, 'La Paz', '2021-05-23 20:21:44', '2021-05-23 20:21:44'),
(4, 'Oruro', '2021-05-23 20:21:44', '2021-05-23 20:21:44'),
(5, 'Potosí', '2021-05-23 20:21:44', '2021-05-23 20:21:44'),
(6, 'Beni', '2021-05-23 20:21:44', '2021-05-23 20:21:44'),
(7, 'Pando', '2021-05-23 20:21:44', '2021-05-23 20:21:44'),
(8, 'Chuquisaca', '2021-05-23 20:21:44', '2021-05-23 20:21:44'),
(9, 'Tarija', '2021-05-23 20:21:44', '2021-05-23 20:21:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `url`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1, 'product/LHALMKLI0000001.jpg', 1, 'App\\Models\\Product', NULL, NULL),
(2, 'product/LHALMKFI0000001.jpg', 2, 'App\\Models\\Product', NULL, NULL),
(3, 'product/LHALMKMF0000001.jpg', 3, 'App\\Models\\Product', NULL, NULL),
(4, 'product/LGAUHVB00000017.jpg', 4, 'App\\Models\\Product', NULL, NULL),
(5, 'product/LGAUHVBL0000003.jpg', 5, 'App\\Models\\Product', NULL, NULL),
(6, 'product/LGAUHVR00000004.jpg', 6, 'App\\Models\\Product', NULL, NULL),
(7, 'product/LGAUHVW00000001.jpg', 7, 'App\\Models\\Product', NULL, NULL),
(8, 'product/LGAUHVB00000011.jpg', 8, 'App\\Models\\Product', NULL, NULL),
(9, 'product/LGAUHVBG0000002.jpg', 9, 'App\\Models\\Product', NULL, NULL),
(10, 'product/LGAUHVBR0000001.jpg', 10, 'App\\Models\\Product', NULL, NULL),
(11, 'product/LGAUHVB00000016.jpg', 11, 'App\\Models\\Product', NULL, NULL),
(12, 'product/LGAUHVBL0000002.jpg', 12, 'App\\Models\\Product', NULL, NULL),
(13, 'product/LGAUHVR00000003.jpg', 13, 'App\\Models\\Product', NULL, NULL),
(14, 'product/LGAUHVB00000007.jpg', 14, 'App\\Models\\Product', NULL, NULL),
(15, 'product/LGAUHVB00000003.jpg', 15, 'App\\Models\\Product', NULL, NULL),
(16, 'product/LGAUHV000000002.jpg', 16, 'App\\Models\\Product', NULL, NULL),
(17, 'product/LGAUHVBR0000015.jpg', 17, 'App\\Models\\Product', NULL, NULL),
(18, 'product/LGAUHVB00000006.jpg', 18, 'App\\Models\\Product', NULL, NULL),
(19, 'product/LGAUHVGG0000001.jpg', 19, 'App\\Models\\Product', NULL, NULL),
(20, 'product/LGAUHVG00000003.jpg', 20, 'App\\Models\\Product', NULL, NULL),
(21, 'product/LGAUHVG00000001.jpg', 21, 'App\\Models\\Product', NULL, NULL),
(22, 'product/LGAUHVB00000005.jpg', 22, 'App\\Models\\Product', NULL, NULL),
(23, 'product/LGAUHVB00000013.jpg', 23, 'App\\Models\\Product', NULL, NULL),
(24, 'product/LGAUHVBOOOOOO12.jpg', 24, 'App\\Models\\Product', NULL, NULL),
(25, 'product/LGAUHVBR0000014.jpg', 25, 'App\\Models\\Product', NULL, NULL),
(26, 'product/LGAUP4TB0000002.jpg', 26, 'App\\Models\\Product', NULL, NULL),
(27, 'product/LGAUP4TB0000001.jpg', 27, 'App\\Models\\Product', NULL, NULL),
(28, 'product/LGAUSYL00000011.jpg', 28, 'App\\Models\\Product', NULL, NULL),
(29, 'product/LGAUSYH00000011.jpg', 29, 'App\\Models\\Product', NULL, NULL),
(31, 'product/LGAUSYBL0000003.jpg', 31, 'App\\Models\\Product', NULL, NULL),
(32, 'product/LGAUSYNE0000014.jpg', 32, 'App\\Models\\Product', NULL, NULL),
(33, 'product/LGAUSYNE0000001.jpg', 33, 'App\\Models\\Product', NULL, NULL),
(34, 'product/LGAUSYGR0000001.jpg', 34, 'App\\Models\\Product', NULL, NULL),
(35, 'product/LGAUSYAZ0000001.jpg', 35, 'App\\Models\\Product', NULL, NULL),
(36, 'product/LGAUSYRO0000001.jpg', 36, 'App\\Models\\Product', NULL, NULL),
(37, 'product/LGAUSYBL0000001.jpg', 37, 'App\\Models\\Product', NULL, NULL),
(38, 'product/LGAUSYNE0000011.jpg', 38, 'App\\Models\\Product', NULL, NULL),
(39, 'product/LGAUSYAZ0000017.jpg', 39, 'App\\Models\\Product', NULL, NULL),
(40, 'product/LGAUSYBL0000007.jpg', 40, 'App\\Models\\Product', NULL, NULL),
(41, 'product/LGAUSYL00000012.jpg', 41, 'App\\Models\\Product', NULL, NULL),
(42, 'product/LGAUSYNE0000010.jpg', 42, 'App\\Models\\Product', NULL, NULL),
(43, 'product/LGAUSYVE0000001.jpg', 43, 'App\\Models\\Product', NULL, NULL),
(44, 'product/LGAUSYAZ0000010.jpg', 44, 'App\\Models\\Product', NULL, NULL),
(45, 'product/LGAUSYRJ0000010.jpg', 45, 'App\\Models\\Product', NULL, NULL),
(46, 'product/LGAUSYGR0000010.jpg', 46, 'App\\Models\\Product', NULL, NULL),
(47, 'product/LGAUSYNE0000004.jpg', 47, 'App\\Models\\Product', NULL, NULL),
(48, 'product/LGAUSYLI0000004.jpg', 48, 'App\\Models\\Product', NULL, NULL),
(49, 'product/LGAUSYBL0000004.jpg', 49, 'App\\Models\\Product', NULL, NULL),
(50, 'product/LGAUSYNE0000008.jpg', 50, 'App\\Models\\Product', NULL, NULL),
(51, 'product/LGAUSYAZ0000016.jpg', 51, 'App\\Models\\Product', NULL, NULL),
(52, 'product/LGAUSYBL0000008.jpg', 52, 'App\\Models\\Product', NULL, NULL),
(53, 'product/LGAUSYB0000012.jpg', 53, 'App\\Models\\Product', NULL, NULL),
(54, 'product/LGAUSYR00000008.jpg', 54, 'App\\Models\\Product', NULL, NULL),
(55, 'product/LGAUSYAZ0000014.jpg', 55, 'App\\Models\\Product', NULL, NULL),
(56, 'product/LGAUSYNE0000013.jpg', 56, 'App\\Models\\Product', NULL, NULL),
(57, 'product/LGAUSYAZ0000015.jpg', 57, 'App\\Models\\Product', NULL, NULL),
(58, 'product/LGAUSYBL0000010.jpg', 58, 'App\\Models\\Product', NULL, NULL),
(59, 'product/LGAUSYNE0000012.jpg', 59, 'App\\Models\\Product', NULL, NULL),
(60, 'product/ACMEBXBA0000001.jpg', 60, 'App\\Models\\Product', NULL, NULL),
(61, 'product/ACMEBXBA0000002.jpg', 61, 'App\\Models\\Product', NULL, NULL),
(62, 'product/ACMEWHBA0000002.jpg', 62, 'App\\Models\\Product', NULL, NULL),
(63, 'product/ACMEWHBA0000003.jpg', 63, 'App\\Models\\Product', NULL, NULL),
(64, 'product/ACMEWHBA0000001.jpg', 64, 'App\\Models\\Product', NULL, NULL),
(65, 'product/ACMEBXCA0000001.jpg', 65, 'App\\Models\\Product', NULL, NULL),
(66, 'product/ACMEBXCA0000002.jpg', 66, 'App\\Models\\Product', NULL, NULL),
(67, 'product/ACMECA000000001.jpg', 67, 'App\\Models\\Product', NULL, NULL),
(68, 'product/LGCPDEI30000001.jpg', 68, 'App\\Models\\Product', NULL, NULL),
(69, 'product/LGCPDEI70000001.jpg', 69, 'App\\Models\\Product', NULL, NULL),
(70, 'product/LGCPHPI70000006.jpg', 70, 'App\\Models\\Product', NULL, NULL),
(71, 'product/LGCPHPI30000012.jpg', 71, 'App\\Models\\Product', NULL, NULL),
(72, 'product/LGCPHPI50000011.jpg', 72, 'App\\Models\\Product', NULL, NULL),
(73, 'product/ACMEPACO0000001.jpg', 73, 'App\\Models\\Product', NULL, NULL),
(74, 'product/ACMEPACO0000006.jpg', 74, 'App\\Models\\Product', NULL, NULL),
(75, 'product/ACMEPACO0000005.jpg', 75, 'App\\Models\\Product', NULL, NULL),
(76, 'product/ACMEPACO0000002.jpg', 76, 'App\\Models\\Product', NULL, NULL),
(77, 'product/ACMEPACO0000008.jpg', 77, 'App\\Models\\Product', NULL, NULL),
(78, 'product/ACMEPACO0000003.jpg', 78, 'App\\Models\\Product', NULL, NULL),
(79, 'product/ACMEPACO0000007.jpg', 79, 'App\\Models\\Product', NULL, NULL),
(80, 'product/ACMEBXCU0000001.jpg', 80, 'App\\Models\\Product', NULL, NULL),
(81, 'product/LMESSY000000028.jpg', 81, 'App\\Models\\Product', NULL, NULL),
(82, 'product/LMESSY2C0000010.jpg', 82, 'App\\Models\\Product', NULL, NULL),
(83, 'product/LMESSY2C0000009.jpg', 83, 'App\\Models\\Product', NULL, NULL),
(84, 'product/LMESSY2C0000008.jpg', 84, 'App\\Models\\Product', NULL, NULL),
(85, 'product/LMESSY000000024.jpg', 85, 'App\\Models\\Product', NULL, NULL),
(86, 'product/LMESSY000000026.jpg', 86, 'App\\Models\\Product', NULL, NULL),
(87, 'product/LMESSY000000027.jpg', 87, 'App\\Models\\Product', NULL, NULL),
(88, 'product/LMESSY000000019.jpg', 88, 'App\\Models\\Product', NULL, NULL),
(89, 'product/LMESSY000000029.jpg', 89, 'App\\Models\\Product', NULL, NULL),
(90, 'product/LGFCK0000000002.jpg', 90, 'App\\Models\\Product', NULL, NULL),
(91, 'product/ACMEBXFU0000001.jpg', 91, 'App\\Models\\Product', NULL, NULL),
(92, 'product/ACMEBXFU0000002.jpg', 92, 'App\\Models\\Product', NULL, NULL),
(93, 'product/ACMEWHFU0000001.jpg', 93, 'App\\Models\\Product', NULL, NULL),
(94, 'product/ACMEBXHE0000001.jpg', 94, 'App\\Models\\Product', NULL, NULL),
(95, 'product/ACMEPAHI0000001.jpg', 95, 'App\\Models\\Product', NULL, NULL),
(96, 'product/LGIMCAG20000001.jpg', 96, 'App\\Models\\Product', NULL, NULL),
(97, 'product/LGIMCAG30000001.jpg', 97, 'App\\Models\\Product', NULL, NULL),
(98, 'product/LGIMCAG30000002.jpg', 98, 'App\\Models\\Product', NULL, NULL),
(99, 'product/LGIMCAG40000001.jpg', 99, 'App\\Models\\Product', NULL, NULL),
(100, 'product/LGIMEPL30000001.jpg', 100, 'App\\Models\\Product', NULL, NULL),
(101, 'product/LGIMEPL30000002.jpg', 101, 'App\\Models\\Product', NULL, NULL),
(102, 'product/LGIMEPL40000001.jpg', 102, 'App\\Models\\Product', NULL, NULL),
(103, 'product/LGIMEPL50000001.jpg', 103, 'App\\Models\\Product', NULL, NULL),
(104, 'product/ACMEPAJA0000001.jpg', 104, 'App\\Models\\Product', NULL, NULL),
(105, 'product/ACMEWHJCU000001.jpg', 105, 'App\\Models\\Product', NULL, NULL),
(106, 'product/ACMEBXJS0000004.jpg', 106, 'App\\Models\\Product', NULL, NULL),
(107, 'product/ACMEBXJC0000004.jpg', 107, 'App\\Models\\Product', NULL, NULL),
(108, 'product/ACMEBXJC0000001.jpg', 108, 'App\\Models\\Product', NULL, NULL),
(109, 'product/ACMEBXJC0000003.jpg', 109, 'App\\Models\\Product', NULL, NULL),
(110, 'product/ACMEBXJC0000002.jpg', 110, 'App\\Models\\Product', NULL, NULL),
(111, 'product/ACMEWHJC0000001.jpg', 111, 'App\\Models\\Product', NULL, NULL),
(112, 'product/ACMEBXJS0000001.jpg', 112, 'App\\Models\\Product', NULL, NULL),
(113, 'product/ACMEWHJS0000002.jpg', 113, 'App\\Models\\Product', NULL, NULL),
(114, 'product/ACMEBXJU0000002.jpg', 114, 'App\\Models\\Product', NULL, NULL),
(115, 'product/ACMEWHJU0000001.jpg', 115, 'App\\Models\\Product', NULL, NULL),
(116, 'product/ACMEJV000000001.jpg', 116, 'App\\Models\\Product', NULL, NULL),
(117, 'product/ACMEJV000000003.jpg', 117, 'App\\Models\\Product', NULL, NULL),
(118, 'product/ACMEJV000000002.jpg', 118, 'App\\Models\\Product', NULL, NULL),
(119, 'product/ACMEBXJT0000001.jpg', 119, 'App\\Models\\Product', NULL, NULL),
(120, 'product/ACMEBXJS0000002.jpg', 120, 'App\\Models\\Product', NULL, NULL),
(121, 'product/ACMEBXJS0000003.jpg', 121, 'App\\Models\\Product', NULL, NULL),
(122, 'product/ACMEWHJS0000001.jpg', 122, 'App\\Models\\Product', NULL, NULL),
(123, 'product/ACMEBXJU0000001.jpg', 123, 'App\\Models\\Product', NULL, NULL),
(124, 'product/LGFCKLA00000001.jpg', 124, 'App\\Models\\Product', NULL, NULL),
(125, 'product/LGLIKB000000003.jpg', 125, 'App\\Models\\Product', NULL, NULL),
(126, 'product/LGACLAKA0000001.jpg', 126, 'App\\Models\\Product', NULL, NULL),
(127, 'product/LGACLAKA0000002.jpg', 127, 'App\\Models\\Product', NULL, NULL),
(128, 'product/LGACLIKA0000001.jpg', 128, 'App\\Models\\Product', NULL, NULL),
(129, 'product/LGACLIKA0000002.jpg', 129, 'App\\Models\\Product', NULL, NULL),
(130, 'product/LGLIKBL00000002.jpg', 130, 'App\\Models\\Product', NULL, NULL),
(131, 'product/LGLIKBL00000001.jpg', 131, 'App\\Models\\Product', NULL, NULL),
(132, 'product/LGLIKB000000006.jpg', 132, 'App\\Models\\Product', NULL, NULL),
(133, 'product/LGLIKB000000001.jpg', 133, 'App\\Models\\Product', NULL, NULL),
(134, 'product/LGLIKR000000002.jpg', 134, 'App\\Models\\Product', NULL, NULL),
(135, 'product/LGLIKR000000001.jpg', 135, 'App\\Models\\Product', NULL, NULL),
(136, 'product/LGLIKR000000003.jpg', 136, 'App\\Models\\Product', NULL, NULL),
(137, 'product/LGLIKY000000002.jpg', 137, 'App\\Models\\Product', NULL, NULL),
(138, 'product/LGLIKB000000002.jpg', 138, 'App\\Models\\Product', NULL, NULL),
(139, 'product/LGLIKB000000005.jpg', 139, 'App\\Models\\Product', NULL, NULL),
(140, 'product/LGMDSYP4000006.jpg', 140, 'App\\Models\\Product', NULL, NULL),
(141, 'product/LGMDSYP40000011.jpg', 141, 'App\\Models\\Product', NULL, NULL),
(142, 'product/LGMDSYP40000009.jpg', 142, 'App\\Models\\Product', NULL, NULL),
(143, 'product/LGMDSYP40000005.jpg', 143, 'App\\Models\\Product', NULL, NULL),
(144, 'product/LGMDSYP40000003.jpg', 144, 'App\\Models\\Product', NULL, NULL),
(145, 'product/LGMDSYP40000004.jpg', 145, 'App\\Models\\Product', NULL, NULL),
(146, 'product/LGMDSYP40000002.jpg', 146, 'App\\Models\\Product', NULL, NULL),
(147, 'product/LGMDSYP40000010.jpg', 147, 'App\\Models\\Product', NULL, NULL),
(148, 'product/LGMDSYP40000007.jpg', 148, 'App\\Models\\Product', NULL, NULL),
(149, 'product/ACMEBXMA0000001.jpg', 149, 'App\\Models\\Product', NULL, NULL),
(150, 'product/ACMEPAMA0000001.jpg', 150, 'App\\Models\\Product', NULL, NULL),
(151, 'product/LHMP00000000001.jpg', 151, 'App\\Models\\Product', NULL, NULL),
(152, 'product/LMMSSY000000002.jpg', 152, 'App\\Models\\Product', NULL, NULL),
(153, 'product/LGACBGDB0000001.jpg', 153, 'App\\Models\\Product', NULL, NULL),
(154, 'product/LGACBGCH0000001.jpg', 154, 'App\\Models\\Product', NULL, NULL),
(155, 'product/LGACBGDG0000001.jpg', 155, 'App\\Models\\Product', NULL, NULL),
(156, 'product/LGACBGB00000001.jpg', 156, 'App\\Models\\Product', NULL, NULL),
(157, 'product/LGACBGDB0000002.jpg', 157, 'App\\Models\\Product', NULL, NULL),
(158, 'product/LGACBGLB0000001.jpg', 158, 'App\\Models\\Product', NULL, NULL),
(159, 'product/LGACBGB00000002.jpg', 159, 'App\\Models\\Product', NULL, NULL),
(160, 'product/LGACHVB00000002.jpg', 160, 'App\\Models\\Product', NULL, NULL),
(161, 'product/LGACHVB00000003.jpg', 161, 'App\\Models\\Product', NULL, NULL),
(162, 'product/LGACHVB00000001.jpg', 162, 'App\\Models\\Product', NULL, NULL),
(163, 'product/LGACCPHV0000001.jpg', 163, 'App\\Models\\Product', NULL, NULL),
(164, 'product/LGACCPHVS000001.jpg', 164, 'App\\Models\\Product', NULL, NULL),
(165, 'product/LGACCPHVB000006.jpg', 165, 'App\\Models\\Product', NULL, NULL),
(166, 'product/LGACCPHVB000005.jpg', 166, 'App\\Models\\Product', NULL, NULL),
(167, 'product/LGACCPHVBR00002.jpg', 167, 'App\\Models\\Product', NULL, NULL),
(168, 'product/LGACCPHVBG00004.jpg', 168, 'App\\Models\\Product', NULL, NULL),
(169, 'product/ACMEBXOP0000001.jpg', 169, 'App\\Models\\Product', NULL, NULL),
(170, 'product/ACMEBXOP0000002.jpg', 170, 'App\\Models\\Product', NULL, NULL),
(171, 'product/ACMEBXO00000001.jpg', 171, 'App\\Models\\Product', NULL, NULL),
(172, 'product/ACMEWHOA0000001.jpg', 172, 'App\\Models\\Product', NULL, NULL),
(173, 'product/ACMEBXP00000001.jpg', 173, 'App\\Models\\Product', NULL, NULL),
(174, 'product/ACMEBXPA0000001.jpg', 174, 'App\\Models\\Product', NULL, NULL),
(175, 'product/LMPIHVB00000020.jpg', 175, 'App\\Models\\Product', NULL, NULL),
(176, 'product/LMPIHBG00000023.jpg', 176, 'App\\Models\\Product', NULL, NULL),
(177, 'product/LMPIHVBR0000023.jpg', 177, 'App\\Models\\Product', NULL, NULL),
(178, 'product/LMPIHVB00000017.jpg', 178, 'App\\Models\\Product', NULL, NULL),
(179, 'product/LMPIHVG00000014.jpg', 179, 'App\\Models\\Product', NULL, NULL),
(180, 'product/LMPIHVB00000014.jpg', 180, 'App\\Models\\Product', NULL, NULL),
(181, 'product/LMPIHVB/O000021.jpg', 181, 'App\\Models\\Product', NULL, NULL),
(182, 'product/LMPIHVB00000013.jpg', 182, 'App\\Models\\Product', NULL, NULL),
(183, 'product/LMPIHVG00000012.jpg', 183, 'App\\Models\\Product', NULL, NULL),
(184, 'product/LMPIHVB00000022.jpg', 184, 'App\\Models\\Product', NULL, NULL),
(185, 'product/LMPIHVGR0000022.jpg', 185, 'App\\Models\\Product', NULL, NULL),
(186, 'product/LMPIHVB00000015.jpg', 186, 'App\\Models\\Product', NULL, NULL),
(187, 'product/LGPIK9V00000001.jpg', 187, 'App\\Models\\Product', NULL, NULL),
(188, 'product/LGPIKAA00000001.jpg', 188, 'App\\Models\\Product', NULL, NULL),
(189, 'product/LGPIKAA00000002.jpg', 189, 'App\\Models\\Product', NULL, NULL),
(190, 'product/LGPIKAA00000003.jpg', 190, 'App\\Models\\Product', NULL, NULL),
(191, 'product/LGPIKAAA0000001.jpg', 191, 'App\\Models\\Product', NULL, NULL),
(192, 'product/LGPIKAAA0000002.jpg', 192, 'App\\Models\\Product', NULL, NULL),
(193, 'product/LGPIKAAA0000003.jpg', 193, 'App\\Models\\Product', NULL, NULL),
(194, 'product/LGPIKC000000001.jpg', 194, 'App\\Models\\Product', NULL, NULL),
(195, 'product/LGPIKD000000001.jpg', 195, 'App\\Models\\Product', NULL, NULL),
(196, 'product/ACMEBXPI0000001.jpg', 196, 'App\\Models\\Product', NULL, NULL),
(197, 'product/ACMEBXPI0000002.jpg', 197, 'App\\Models\\Product', NULL, NULL),
(198, 'product/ACMEBXPI0000003.jpg', 198, 'App\\Models\\Product', NULL, NULL),
(199, 'product/ACMEBXPI0000004.jpg', 199, 'App\\Models\\Product', NULL, NULL),
(200, 'product/LGJGP4SY0000009.jpg', 200, 'App\\Models\\Product', NULL, NULL),
(201, 'product/LGIGP4SY0000005.jpg', 201, 'App\\Models\\Product', NULL, NULL),
(202, 'product/LGJGP4SY0000007.jpg', 202, 'App\\Models\\Product', NULL, NULL),
(203, 'product/LGJGP4SY0000006.jpg', 203, 'App\\Models\\Product', NULL, NULL),
(204, 'product/LGJGP4SY0000001.jpg', 204, 'App\\Models\\Product', NULL, NULL),
(205, 'product/LGJGP4SY0000010.jpg', 205, 'App\\Models\\Product', NULL, NULL),
(206, 'product/LGJGP4SY0000004.jpg', 206, 'App\\Models\\Product', NULL, NULL),
(207, 'product/LGP4SY1TB000014.jpg', 207, 'App\\Models\\Product', NULL, NULL),
(208, 'product/LMRPSY000000001.jpg', 208, 'App\\Models\\Product', NULL, NULL),
(209, 'product/LMRPSY000000003.jpg', 209, 'App\\Models\\Product', NULL, NULL),
(210, 'product/LMRPSY000000002.jpg', 210, 'App\\Models\\Product', NULL, NULL),
(211, 'product/LMBRSY000000005.jpg', 211, 'App\\Models\\Product', NULL, NULL),
(212, 'product/LMBRSY000000003.jpg', 212, 'App\\Models\\Product', NULL, NULL),
(213, 'product/LMDVSY000000001.jpg', 213, 'App\\Models\\Product', NULL, NULL),
(214, 'product/ACMESC000000001.jpg', 214, 'App\\Models\\Product', NULL, NULL),
(215, 'product/ACMEBXSC0000001.jpg', 215, 'App\\Models\\Product', NULL, NULL),
(216, 'product/ACMEBXSA0000001.jpg', 216, 'App\\Models\\Product', NULL, NULL),
(217, 'product/ACMEBXSA0000007.jpg', 217, 'App\\Models\\Product', NULL, NULL),
(218, 'product/ACMEBXSA0000010.jpg', 218, 'App\\Models\\Product', NULL, NULL),
(219, 'product/ACMEBXSA0000002.jpg', 219, 'App\\Models\\Product', NULL, NULL),
(220, 'product/ACMEBXSA0000006.jpg', 220, 'App\\Models\\Product', NULL, NULL),
(221, 'product/ACMEBXSA0000008.jpg', 221, 'App\\Models\\Product', NULL, NULL),
(222, 'product/ACMEBXSA0000005.jpg', 222, 'App\\Models\\Product', NULL, NULL),
(223, 'product/ACMEBXSA0000009.jpg', 223, 'App\\Models\\Product', NULL, NULL),
(224, 'product/ACMEBXSA0000003.jpg', 224, 'App\\Models\\Product', NULL, NULL),
(225, 'product/ACMEBXSA0000004.jpg', 225, 'App\\Models\\Product', NULL, NULL),
(226, 'product/ACMEBXSA0000011.jpg', 226, 'App\\Models\\Product', NULL, NULL),
(227, 'product/ACMEWHSA0000003.jpg', 227, 'App\\Models\\Product', NULL, NULL),
(228, 'product/ACMEWHSA0000001.jpg', 228, 'App\\Models\\Product', NULL, NULL),
(229, 'product/ACMEWHSA0000002.jpg', 229, 'App\\Models\\Product', NULL, NULL),
(230, 'product/ACMEBXSE0000001.jpg', 230, 'App\\Models\\Product', NULL, NULL),
(231, 'product/ACMEPASET000001.jpg', 231, 'App\\Models\\Product', NULL, NULL),
(232, 'product/LGACLULB0000001.jpg', 232, 'App\\Models\\Product', NULL, NULL),
(233, 'product/LGACLUMI0000001.jpg', 233, 'App\\Models\\Product', NULL, NULL),
(234, 'product/LGACLUTVF000001.jpg', 234, 'App\\Models\\Product', NULL, NULL),
(235, 'product/LGACLUTVF000002.jpg', 235, 'App\\Models\\Product', NULL, NULL),
(236, 'product/LGACLUTVI000001.jpg', 236, 'App\\Models\\Product', NULL, NULL),
(237, 'product/LGACLUTVI000002.jpg', 237, 'App\\Models\\Product', NULL, NULL),
(238, 'product/LGACLUTVCB00002.jpg', 238, 'App\\Models\\Product', NULL, NULL),
(239, 'product/LGACLUTVCB00001.jpg', 239, 'App\\Models\\Product', NULL, NULL),
(240, 'product/LMTVLG430000008.jpg', 240, 'App\\Models\\Product', NULL, NULL),
(241, 'product/LMTVLG500000003.jpg', 241, 'App\\Models\\Product', NULL, NULL),
(242, 'product/LMTVSG430000003.jpg', 242, 'App\\Models\\Product', NULL, NULL),
(243, 'product/LMTVSG430000002.jpg', 243, 'App\\Models\\Product', NULL, NULL),
(244, 'product/LMTVSG490000007.jpg', 244, 'App\\Models\\Product', NULL, NULL),
(245, 'product/LMTVSG500000009.jpg', 245, 'App\\Models\\Product', NULL, NULL),
(246, 'product/LMTVSG580000006.jpg', 246, 'App\\Models\\Product', NULL, NULL),
(247, 'product/LMTVSG650000007.jpg', 247, 'App\\Models\\Product', NULL, NULL),
(248, 'product/LMTVSG320000007.jpg', 248, 'App\\Models\\Product', NULL, NULL),
(249, 'product/LMTVSG430000001.jpg', 249, 'App\\Models\\Product', NULL, NULL),
(250, 'product/LMTVSG490000005.jpg', 250, 'App\\Models\\Product', NULL, NULL),
(251, 'product/LMTVSG500000004.jpg', 251, 'App\\Models\\Product', NULL, NULL),
(252, 'product/LMTVSG500000007.jpg', 252, 'App\\Models\\Product', NULL, NULL),
(253, 'product/LMTVSG550000014.jpg', 253, 'App\\Models\\Product', NULL, NULL),
(254, 'product/LMTVSG650000011.jpg', 254, 'App\\Models\\Product', NULL, NULL),
(255, 'product/LMTVSKY32000001.jpg', 255, 'App\\Models\\Product', NULL, NULL),
(256, 'product/LMTVSKY32000004.jpg', 256, 'App\\Models\\Product', NULL, NULL),
(257, 'product/LMTVSKY43000003.jpg', 257, 'App\\Models\\Product', NULL, NULL),
(258, 'product/LMTVSKY50000003.jpg', 258, 'App\\Models\\Product', NULL, NULL),
(259, 'product/LMTVSY490000006.jpg', 259, 'App\\Models\\Product', NULL, NULL),
(260, 'product/LMTVSY550000007.jpg', 260, 'App\\Models\\Product', NULL, NULL),
(261, 'product/LMTVSY650000006.jpg', 261, 'App\\Models\\Product', NULL, NULL),
(262, 'product/LMTVSO32000002.jpg', 262, 'App\\Models\\Product', NULL, NULL),
(263, 'product/LMTVSY400000002.jpg', 263, 'App\\Models\\Product', NULL, NULL),
(264, 'product/LMTVSO480000001.jpg', 264, 'App\\Models\\Product', NULL, NULL),
(265, 'product/LMTVSY490000005.jpg', 265, 'App\\Models\\Product', NULL, NULL),
(266, 'product/LMTVSY490000004.jpg', 266, 'App\\Models\\Product', NULL, NULL),
(267, 'product/LMTVSY550000006.jpg', 267, 'App\\Models\\Product', NULL, NULL),
(268, 'product/LMTVSY550000005.jpg', 268, 'App\\Models\\Product', NULL, NULL),
(269, 'product/LMTVSY650000005.jpg', 269, 'App\\Models\\Product', NULL, NULL),
(270, 'product/LMTVSY650000004.jpg', 270, 'App\\Models\\Product', NULL, NULL),
(271, 'product/LMTVSY750000002.jpg', 271, 'App\\Models\\Product', NULL, NULL),
(272, 'product/ACMEPAVA0000005.jpg', 272, 'App\\Models\\Product', NULL, NULL),
(273, 'product/ACMEPAVA0000003.jpg', 273, 'App\\Models\\Product', NULL, NULL),
(274, 'product/ACMEPAVA0000002.jpg', 274, 'App\\Models\\Product', NULL, NULL),
(275, 'product/ACMEPAVA0000004.jpg', 275, 'App\\Models\\Product', NULL, NULL),
(276, 'product/ACMEPAVA0000001.jpg', 276, 'App\\Models\\Product', NULL, NULL),
(277, 'product/ACMEVA000000001.jpg', 277, 'App\\Models\\Product', NULL, NULL),
(278, 'product/ACMEBXWO0000002.jpg', 278, 'App\\Models\\Product', NULL, NULL),
(279, 'product/ACMEBXWO0000004.jpg', 279, 'App\\Models\\Product', NULL, NULL),
(280, 'product/ACMEBXWO0000006.jpg', 280, 'App\\Models\\Product', NULL, NULL),
(281, 'product/ACMEBXWO0000003.jpg', 281, 'App\\Models\\Product', NULL, NULL),
(282, 'product/ACMEBXWO0000001.jpg', 282, 'App\\Models\\Product', NULL, NULL),
(283, 'product/ACMEBXWO0000005.jpg', 283, 'App\\Models\\Product', NULL, NULL),
(284, 'product/ACMEWHWO0000001.jpg', 284, 'App\\Models\\Product', NULL, NULL),
(285, 'product/PEAFPT000000017.jpg', 285, 'App\\Models\\Product', NULL, NULL),
(286, 'product/PEAFPT000000019.jpg', 286, 'App\\Models\\Product', NULL, NULL),
(287, 'product/PEAFPT000000018.jpg', 287, 'App\\Models\\Product', NULL, NULL),
(288, 'product/PEAFBL000000001.jpg', 288, 'App\\Models\\Product', NULL, NULL),
(289, 'product/PEAFPT000000009.jpg', 289, 'App\\Models\\Product', NULL, NULL),
(290, 'product/PECEGA000000002.jpg', 290, 'App\\Models\\Product', NULL, NULL),
(291, 'product/PECEGA000000003.jpg', 291, 'App\\Models\\Product', NULL, NULL),
(292, 'product/PECEPT000000001.jpg', 292, 'App\\Models\\Product', NULL, NULL),
(293, 'product/PECBPT000000008.jpg', 293, 'App\\Models\\Product', NULL, NULL),
(294, 'product/PECBPT000000005.jpg', 294, 'App\\Models\\Product', NULL, NULL),
(295, 'product/PECBPT000000009.jpg', 295, 'App\\Models\\Product', NULL, NULL),
(296, 'product/PECBPT000000007.jpg', 296, 'App\\Models\\Product', NULL, NULL),
(297, 'product/PECPPT000000009.jpg', 297, 'App\\Models\\Product', NULL, NULL),
(298, 'product/PECPPT000000010.jpg', 298, 'App\\Models\\Product', NULL, NULL),
(299, 'product/PECPGA000000003.jpg', 299, 'App\\Models\\Product', NULL, NULL),
(300, 'product/PECPGA000000002.jpg', 300, 'App\\Models\\Product', NULL, NULL),
(301, 'product/PECPPT000000011.jpg', 301, 'App\\Models\\Product', NULL, NULL),
(302, 'product/PECPPT000000006.jpg', 302, 'App\\Models\\Product', NULL, NULL),
(303, 'product/PECPPT000000007.jpg', 303, 'App\\Models\\Product', NULL, NULL),
(304, 'product/PECBPT000000004.jpg', 304, 'App\\Models\\Product', NULL, NULL),
(305, 'product/PEDEPT000000003.jpg', 305, 'App\\Models\\Product', NULL, NULL),
(306, 'product/PEDEPT000000014.jpg', 306, 'App\\Models\\Product', NULL, NULL),
(307, 'product/PEDEPT000000008.jpg', 307, 'App\\Models\\Product', NULL, NULL),
(308, 'product/PEDEPT000000012.jpg', 308, 'App\\Models\\Product', NULL, NULL),
(309, 'product/PEDEPT000000011.jpg', 309, 'App\\Models\\Product', NULL, NULL),
(310, 'product/PEDEPT000000018.jpg', 310, 'App\\Models\\Product', NULL, NULL),
(311, 'product/PEDEPT000000015.jpg', 311, 'App\\Models\\Product', NULL, NULL),
(312, 'product/PEDEPT000000016.jpg', 312, 'App\\Models\\Product', NULL, NULL),
(313, 'product/PEDEPT000000017.jpg', 313, 'App\\Models\\Product', NULL, NULL),
(314, 'product/PEDEPT000000013.jpg', 314, 'App\\Models\\Product', NULL, NULL),
(315, 'product/PECNPT000000001.jpg', 315, 'App\\Models\\Product', NULL, NULL),
(316, 'product/PEPPPT000000012.jpg', 316, 'App\\Models\\Product', NULL, NULL),
(317, 'product/PEPPPT000000006.jpg', 317, 'App\\Models\\Product', NULL, NULL),
(318, 'product/PEPPGA000000015.jpg', 318, 'App\\Models\\Product', NULL, NULL),
(319, 'product/PEPPGA000000014.jpg', 319, 'App\\Models\\Product', NULL, NULL),
(320, 'product/PEPPPT000000014.jpg', 320, 'App\\Models\\Product', NULL, NULL),
(321, 'product/PERIPT000000003.jpg', 321, 'App\\Models\\Product', NULL, NULL),
(322, 'product/PEPPGA000000005.jpg', 322, 'App\\Models\\Product', NULL, NULL),
(323, 'product/PEPPGA000000006.jpg', 323, 'App\\Models\\Product', NULL, NULL),
(324, 'product/PEPPGA000000007.jpg', 324, 'App\\Models\\Product', NULL, NULL),
(325, 'product/PEPPPT000000011.jpg', 325, 'App\\Models\\Product', NULL, NULL),
(326, 'product/PEPPPT000000015.jpg', 326, 'App\\Models\\Product', NULL, NULL),
(327, 'product/PEPSGA000000001.jpg', 327, 'App\\Models\\Product', NULL, NULL),
(328, 'product/PEPSPT000000001.jpg', 328, 'App\\Models\\Product', NULL, NULL),
(329, 'product/PEPPGA000000003.jpg', 329, 'App\\Models\\Product', NULL, NULL),
(330, 'product/PEPPPT000000009.jpg', 330, 'App\\Models\\Product', NULL, NULL),
(331, 'product/PEPPGA000000001.jpg', 331, 'App\\Models\\Product', NULL, NULL),
(332, 'product/PEPPPT000000010.jpg', 332, 'App\\Models\\Product', NULL, NULL),
(333, 'product/PEPPBL000000009.jpg', 333, 'App\\Models\\Product', NULL, NULL),
(334, 'product/PEPPGA000000004.jpg', 334, 'App\\Models\\Product', NULL, NULL),
(335, 'product/PEPPGA000000008.jpg', 335, 'App\\Models\\Product', NULL, NULL),
(336, 'product/PEPPGA000000019.jpg', 336, 'App\\Models\\Product', NULL, NULL),
(337, 'product/PEPPGA000000016.jpg', 337, 'App\\Models\\Product', NULL, NULL),
(338, 'product/PEPPGA000000017.jpg', 338, 'App\\Models\\Product', NULL, NULL),
(339, 'product/PEPPGA000000018.jpg', 339, 'App\\Models\\Product', NULL, NULL),
(340, 'product/PEPPBL000000003.jpg', 340, 'App\\Models\\Product', NULL, NULL),
(341, 'product/PEPPBL000000007.jpg', 341, 'App\\Models\\Product', NULL, NULL),
(342, 'product/PEPPBL000000008.jpg', 342, 'App\\Models\\Product', NULL, NULL),
(343, 'product/PEPPBL000000001.jpg', 343, 'App\\Models\\Product', NULL, NULL),
(344, 'product/PEPPBL000000005.jpg', 344, 'App\\Models\\Product', NULL, NULL),
(345, 'product/PEPPBL000000006.jpg', 345, 'App\\Models\\Product', NULL, NULL),
(346, 'product/PERIPT000000004.jpg', 346, 'App\\Models\\Product', NULL, NULL),
(347, 'product/PERIGA000000001.jpg', 347, 'App\\Models\\Product', NULL, NULL),
(348, 'product/PERIGA000000004.jpg', 348, 'App\\Models\\Product', NULL, NULL),
(349, 'product/PERIGA000000005.jpg', 349, 'App\\Models\\Product', NULL, NULL),
(350, 'product/PERIGA000000006.jpg', 350, 'App\\Models\\Product', NULL, NULL),
(351, 'product/PERIBL000000003.jpg', 351, 'App\\Models\\Product', NULL, NULL),
(352, 'product/PERIBL000000004.jpg', 352, 'App\\Models\\Product', NULL, NULL),
(353, 'product/PERIBL000000005.jpg', 353, 'App\\Models\\Product', NULL, NULL),
(354, 'product/PERIBL000000001.jpg', 354, 'App\\Models\\Product', NULL, NULL),
(355, 'product/PESPPT000000012.jpg', 355, 'App\\Models\\Product', NULL, NULL),
(356, 'product/PESPGA000000017.jpg', 356, 'App\\Models\\Product', NULL, NULL),
(357, 'product/PESPPT000000008.jpg', 357, 'App\\Models\\Product', NULL, NULL),
(358, 'product/PESPPT000000004.jpg', 358, 'App\\Models\\Product', NULL, NULL),
(359, 'product/PESPPT000000009.jpg', 359, 'App\\Models\\Product', NULL, NULL),
(360, 'product/PESPPT000000010.jpg', 360, 'App\\Models\\Product', NULL, NULL),
(361, 'product/PESPPT000000013.jpg', 361, 'App\\Models\\Product', NULL, NULL),
(362, 'product/PESPGA000000002.jpg', 362, 'App\\Models\\Product', NULL, NULL),
(363, 'product/PESPGA000000003.jpg', 363, 'App\\Models\\Product', NULL, NULL),
(364, 'product/PESPGA000000004.jpg', 364, 'App\\Models\\Product', NULL, NULL),
(365, 'product/PESPGA000000016.jpg', 365, 'App\\Models\\Product', NULL, NULL),
(366, 'product/PESPPT000000005.jpg', 366, 'App\\Models\\Product', NULL, NULL),
(367, 'product/PESPGA000000005.jpg', 367, 'App\\Models\\Product', NULL, NULL),
(368, 'product/PESPPT000000014.jpg', 368, 'App\\Models\\Product', NULL, NULL),
(369, 'product/PESPGA000000014.jpg', 369, 'App\\Models\\Product', NULL, NULL),
(370, 'product/PESPGA000000012.jpg', 370, 'App\\Models\\Product', NULL, NULL),
(371, 'product/PESPGA000000015.jpg', 371, 'App\\Models\\Product', NULL, NULL),
(372, 'product/PESPGA000000006.jpg', 372, 'App\\Models\\Product', NULL, NULL),
(373, 'product/PEACFRPT0000001.jpg', 373, 'App\\Models\\Product', NULL, NULL),
(374, 'product/PEACFRPT0000002.jpg', 374, 'App\\Models\\Product', NULL, NULL),
(375, 'product/PEASBI000000001.jpg', 375, 'App\\Models\\Product', NULL, NULL),
(376, 'product/PEASBI000000002.jpg', 376, 'App\\Models\\Product', NULL, NULL),
(377, 'product/PEASSG000000002.jpg', 377, 'App\\Models\\Product', NULL, NULL),
(378, 'product/PEASSG000000001.jpg', 378, 'App\\Models\\Product', NULL, NULL),
(379, 'product/PEASSG000000000.jpg', 379, 'App\\Models\\Product', NULL, NULL),
(380, 'product/PEBABN000000001.jpg', 380, 'App\\Models\\Product', NULL, NULL),
(381, 'product/PEBABN000000002.jpg', 381, 'App\\Models\\Product', NULL, NULL),
(382, 'product/PEBAPT000000003.jpg', 382, 'App\\Models\\Product', NULL, NULL),
(383, 'product/PEBAPT000000004.jpg', 383, 'App\\Models\\Product', NULL, NULL),
(384, 'product/PEBAMG000000005.jpg', 384, 'App\\Models\\Product', NULL, NULL),
(385, 'product/PEBAPW000000001.jpg', 385, 'App\\Models\\Product', NULL, NULL),
(386, 'product/PECAMG000000001.jpg', 386, 'App\\Models\\Product', NULL, NULL),
(387, 'product/PECAMG000000002.jpg', 387, 'App\\Models\\Product', NULL, NULL),
(388, 'product/PEEXMG000000002.jpg', 388, 'App\\Models\\Product', NULL, NULL),
(389, 'product/PEEXMG000000004.jpg', 389, 'App\\Models\\Product', NULL, NULL),
(390, 'product/PEEJMG000000002.jpg', 390, 'App\\Models\\Product', NULL, NULL),
(391, 'product/PEEJMG000000001.jpg', 391, 'App\\Models\\Product', NULL, NULL),
(392, 'product/PEEJPT000000006.jpg', 392, 'App\\Models\\Product', NULL, NULL),
(393, 'product/PEEJMG000000003.jpg', 393, 'App\\Models\\Product', NULL, NULL),
(394, 'product/PEEJMG000000004.jpg', 394, 'App\\Models\\Product', NULL, NULL),
(395, 'product/PEEJPT000000007.jpg', 395, 'App\\Models\\Product', NULL, NULL),
(396, 'product/PEFRPT000000003.jpg', 396, 'App\\Models\\Product', NULL, NULL),
(397, 'product/PEFRPT000000004.jpg', 397, 'App\\Models\\Product', NULL, NULL),
(398, 'product/PEHAHT000000003.jpg', 398, 'App\\Models\\Product', NULL, NULL),
(399, 'product/PEHABN000000001.jpg', 399, 'App\\Models\\Product', NULL, NULL),
(400, 'product/PEHAMG000000005.jpg', 400, 'App\\Models\\Product', NULL, NULL),
(401, 'product/PEHAPT000000005.jpg', 401, 'App\\Models\\Product', NULL, NULL),
(402, 'product/PEHEMG000000005.jpg', 402, 'App\\Models\\Product', NULL, NULL),
(403, 'product/PEHAPT000000004.jpg', 403, 'App\\Models\\Product', NULL, NULL),
(404, 'product/PEHABN000000002.jpg', 404, 'App\\Models\\Product', NULL, NULL),
(405, 'product/PEHAPT000000006.jpg', 405, 'App\\Models\\Product', NULL, NULL),
(406, 'product/PELIPT000000026.jpg', 406, 'App\\Models\\Product', NULL, NULL),
(407, 'product/PELIPT000000006.jpg', 407, 'App\\Models\\Product', NULL, NULL),
(408, 'product/PELIBN000000003.jpg', 408, 'App\\Models\\Product', NULL, NULL),
(409, 'product/PELIBN000000001.jpg', 409, 'App\\Models\\Product', NULL, NULL),
(410, 'product/PELIPT000000007.jpg', 410, 'App\\Models\\Product', NULL, NULL),
(411, 'product/PELIPW000000007.jpg', 411, 'App\\Models\\Product', NULL, NULL),
(412, 'product/PELIPT000000009.jpg', 412, 'App\\Models\\Product', NULL, NULL),
(413, 'product/PELIPT000000011.jpg', 413, 'App\\Models\\Product', NULL, NULL),
(414, 'product/PELIPT000000008.jpg', 414, 'App\\Models\\Product', NULL, NULL),
(415, 'product/PELIBN000000002.jpg', 415, 'App\\Models\\Product', NULL, NULL),
(416, 'product/PELIPT000000012.jpg', 416, 'App\\Models\\Product', NULL, NULL),
(417, 'product/PELIPW000000008.jpg', 417, 'App\\Models\\Product', NULL, NULL),
(418, 'product/PELIPT000000024.jpg', 418, 'App\\Models\\Product', NULL, NULL),
(419, 'product/PELIPT000000025.jpg', 419, 'App\\Models\\Product', NULL, NULL),
(420, 'product/PELIPT000000023.jpg', 420, 'App\\Models\\Product', NULL, NULL),
(421, 'product/PELIPT000000021.jpg', 421, 'App\\Models\\Product', NULL, NULL),
(422, 'product/PELIPT000000020.jpg', 422, 'App\\Models\\Product', NULL, NULL),
(423, 'product/PELIPT000000022.jpg', 423, 'App\\Models\\Product', NULL, NULL),
(424, 'product/PEMIBN000000001.jpg', 424, 'App\\Models\\Product', NULL, NULL),
(425, 'product/PEMIPT000000009.jpg', 425, 'App\\Models\\Product', NULL, NULL),
(426, 'product/PEMIBN000000002.jpg', 426, 'App\\Models\\Product', NULL, NULL),
(427, 'product/PEMIPT000000005.jpg', 427, 'App\\Models\\Product', NULL, NULL),
(428, 'product/PEMIPT000000006.jpg', 428, 'App\\Models\\Product', NULL, NULL),
(429, 'product/PEMUPT000000002.jpg', 429, 'App\\Models\\Product', NULL, NULL),
(430, 'product/PEMUPT000000004.jpg', 430, 'App\\Models\\Product', NULL, NULL),
(431, 'product/PEOPPT000000001.jpg', 431, 'App\\Models\\Product', NULL, NULL),
(432, 'product/PEOAMG000000001.jpg', 432, 'App\\Models\\Product', NULL, NULL),
(433, 'product/PEPNMG000000001.jpg', 433, 'App\\Models\\Product', NULL, NULL),
(434, 'product/PEPAMG000000001.jpg', 434, 'App\\Models\\Product', NULL, NULL),
(435, 'product/PEPLPT000000012.jpg', 435, 'App\\Models\\Product', NULL, NULL),
(436, 'product/PEPLPT000000015.jpg', 436, 'App\\Models\\Product', NULL, NULL),
(437, 'product/PEPLPT000000025.jpg', 437, 'App\\Models\\Product', NULL, NULL),
(438, 'product/PEPLPT000000016.jpg', 438, 'App\\Models\\Product', NULL, NULL),
(439, 'product/PEPLPT000000021.jpg', 439, 'App\\Models\\Product', NULL, NULL),
(440, 'product/PEPLPT000000014.jpg', 440, 'App\\Models\\Product', NULL, NULL),
(441, 'product/PEPLPT000000020.jpg', 441, 'App\\Models\\Product', NULL, NULL),
(442, 'product/PEPLPT000000019.jpg', 442, 'App\\Models\\Product', NULL, NULL),
(443, 'product/PEPLPT000000023.jpg', 443, 'App\\Models\\Product', NULL, NULL),
(444, 'product/PEPLPT000000022.jpg', 444, 'App\\Models\\Product', NULL, NULL),
(445, 'product/PESABN000000001.jpg', 445, 'App\\Models\\Product', NULL, NULL),
(446, 'product/PESAMG000000004.jpg', 446, 'App\\Models\\Product', NULL, NULL),
(447, 'product/PESAPT000000001.jpg', 447, 'App\\Models\\Product', NULL, NULL),
(448, 'product/PESAMG000000005.jpg', 448, 'App\\Models\\Product', NULL, NULL),
(449, 'product/PETOBN000000001.jpg', 449, 'App\\Models\\Product', NULL, NULL),
(450, 'product/PETOPT000000004.jpg', 450, 'App\\Models\\Product', NULL, NULL),
(451, 'product/PEVAPT000000001.jpg', 451, 'App\\Models\\Product', NULL, NULL),
(452, 'product/PEWAMG0000001.jpg', 452, 'App\\Models\\Product', NULL, NULL),
(453, 'product/PEWAMG0000002.jpg', 453, 'App\\Models\\Product', NULL, NULL),
(454, 'product/LIAB000032.jpg', 454, 'App\\Models\\Product', NULL, NULL),
(455, 'product/LIAB000033.jpg', 455, 'App\\Models\\Product', NULL, NULL),
(456, 'product/LIAB000034.jpg', 456, 'App\\Models\\Product', NULL, NULL),
(457, 'product/LBAAMI09FC000BC.jpg', 457, 'App\\Models\\Product', NULL, NULL),
(458, 'product/LBAAPH18FC000EC.jpg', 458, 'App\\Models\\Product', NULL, NULL),
(459, 'product/LBAAPH24FC000EC.jpg', 459, 'App\\Models\\Product', NULL, NULL),
(460, 'product/LBCODK4H0000001.jpg', 460, 'App\\Models\\Product', NULL, NULL),
(461, 'product/LBCODK4H0000010.jpg', 461, 'App\\Models\\Product', NULL, NULL),
(462, 'product/LBCODK4H0000011.jpg', 462, 'App\\Models\\Product', NULL, NULL),
(463, 'product/LBCODK5H0000001.jpg', 463, 'App\\Models\\Product', NULL, NULL),
(464, 'product/LBCODK5H0000003.jpg', 464, 'App\\Models\\Product', NULL, NULL),
(465, 'product/LBCODK5H0000002.jpg', 465, 'App\\Models\\Product', NULL, NULL),
(466, 'product/LBCOMB6H0000001.jpg', 466, 'App\\Models\\Product', NULL, NULL),
(467, 'product/LBCOBO4H0000004.jpg', 467, 'App\\Models\\Product', NULL, NULL),
(468, 'product/LBCOBO5H0000004.jpg', 468, 'App\\Models\\Product', NULL, NULL),
(469, 'product/LBCOBO5H0000003.jpg', 469, 'App\\Models\\Product', NULL, NULL),
(470, 'product/LBCEB0600000002.jpg', 470, 'App\\Models\\Product', NULL, NULL),
(471, 'product/LBCEBO600000001.jpg', 471, 'App\\Models\\Product', NULL, NULL),
(472, 'product/LBCEBO750000002.jpg', 472, 'App\\Models\\Product', NULL, NULL),
(473, 'product/LBCEBO900000001.jpg', 473, 'App\\Models\\Product', NULL, NULL),
(474, 'product/LBCEBO800000001.jpg', 474, 'App\\Models\\Product', NULL, NULL),
(475, 'product/LBCEBO900000002.jpg', 475, 'App\\Models\\Product', NULL, NULL),
(476, 'product/LBEGBO600000001.jpg', 476, 'App\\Models\\Product', NULL, NULL),
(477, 'product/LBEGBO900000005.jpg', 477, 'App\\Models\\Product', NULL, NULL),
(478, 'product/LBEGBO750000001.jpg', 478, 'App\\Models\\Product', NULL, NULL),
(479, 'product/LBFRMA000000002.jpg', 479, 'App\\Models\\Product', NULL, NULL),
(480, 'product/LBHOMG000000003.jpg', 480, 'App\\Models\\Product', NULL, NULL),
(481, 'product/LBHOMG000004.jpg', 481, 'App\\Models\\Product', NULL, NULL),
(482, 'product/LBHOBO000000002.jpg', 482, 'App\\Models\\Product', NULL, NULL),
(483, 'product/LBHOBO000000004.jpg', 483, 'App\\Models\\Product', NULL, NULL),
(484, 'product/LBHOBO000000003.jpg', 484, 'App\\Models\\Product', NULL, NULL),
(485, 'product/LBLASGCS8000001.jpg', 485, 'App\\Models\\Product', NULL, NULL),
(486, 'product/LBLASGCS9000001.jpg', 486, 'App\\Models\\Product', NULL, NULL),
(487, 'product/LBLASGCF0000001.jpg', 487, 'App\\Models\\Product', NULL, NULL),
(488, 'product/LBLAMICS1000001.jpg', 488, 'App\\Models\\Product', NULL, NULL),
(489, 'product/LBLASGCS1100001.jpg', 489, 'App\\Models\\Product', NULL, NULL),
(490, 'product/LBLASGCS1300001.jpg', 490, 'App\\Models\\Product', NULL, NULL),
(491, 'product/LBLASGCF0000003.jpg', 491, 'App\\Models\\Product', NULL, NULL),
(492, 'product/LBLASGCS1700001.jpg', 492, 'App\\Models\\Product', NULL, NULL),
(493, 'product/LBLASGCF1000003.jpg', 493, 'App\\Models\\Product', NULL, NULL),
(494, 'product/LBLASGCS1900001.jpg', 494, 'App\\Models\\Product', NULL, NULL),
(495, 'product/LBLADWCS1800001.jpg', 495, 'App\\Models\\Product', NULL, NULL),
(496, 'product/LBLASGCF0000002.jpg', 496, 'App\\Models\\Product', NULL, NULL),
(497, 'product/LBLSSGCR0000003.jpg', 497, 'App\\Models\\Product', NULL, NULL),
(498, 'product/LBMISG230000001.jpg', 498, 'App\\Models\\Product', NULL, NULL),
(499, 'product/LBMILG250000002.jpg', 499, 'App\\Models\\Product', NULL, NULL),
(500, 'product/LBMISG280000001.jpg', 500, 'App\\Models\\Product', NULL, NULL),
(501, 'product/LBMILG250000001.jpg', 501, 'App\\Models\\Product', NULL, NULL),
(502, 'product/LBMILG250000003.jpg', 502, 'App\\Models\\Product', NULL, NULL),
(503, 'product/LBMISG400000001.jpg', 503, 'App\\Models\\Product', NULL, NULL),
(504, 'product/LBMILG400000002.jpg', 504, 'App\\Models\\Product', NULL, NULL),
(505, 'product/LBRAMG000000006.jpg', 505, 'App\\Models\\Product', NULL, NULL),
(506, 'product/LBRESG200000002.jpg', 506, 'App\\Models\\Product', NULL, NULL),
(507, 'product/LBRESG300000012.jpg', 507, 'App\\Models\\Product', NULL, NULL),
(508, 'product/LBRESG300000011.jpg', 508, 'App\\Models\\Product', NULL, NULL),
(509, 'product/LBEXMF0000001.jpg', 509, 'App\\Models\\Product', NULL, NULL),
(510, 'product/LBRESG500000005.jpg', 510, 'App\\Models\\Product', NULL, NULL),
(511, 'product/LBRESG500000006.jpg', 511, 'App\\Models\\Product', NULL, NULL),
(512, 'product/LBRESG600000001.jpg', 512, 'App\\Models\\Product', NULL, NULL),
(513, 'product/LBTVMG000000003.jpg', 513, 'App\\Models\\Product', NULL, NULL),
(514, 'product/LBVEAM000000001.jpg', 514, 'App\\Models\\Product', NULL, NULL),
(515, 'product/LBVEAM000000002.jpg', 515, 'App\\Models\\Product', NULL, NULL),
(516, 'product/LBVEAM000000003.jpg', 516, 'App\\Models\\Product', NULL, NULL),
(517, 'product/LBVEMAN00000002.jpg', 517, 'App\\Models\\Product', NULL, NULL),
(518, 'product/CPACIN000000011.jpg', 518, 'App\\Models\\Product', NULL, NULL),
(519, 'product/CPACIN000000013.jpg', 519, 'App\\Models\\Product', NULL, NULL),
(520, 'product/CPFLIN000000013.jpg', 520, 'App\\Models\\Product', NULL, NULL),
(521, 'product/CPFLIN000000016.jpg', 521, 'App\\Models\\Product', NULL, NULL),
(522, 'product/CPFLIN000000018.jpg', 522, 'App\\Models\\Product', NULL, NULL),
(523, 'product/CPFLIN000000019.jpg', 523, 'App\\Models\\Product', NULL, NULL),
(524, 'product/CPFLIN000000004.jpg', 524, 'App\\Models\\Product', NULL, NULL),
(525, 'product/CPFLIN000000003.jpg', 525, 'App\\Models\\Product', NULL, NULL),
(526, 'product/CPACIN000000019.jpg', 526, 'App\\Models\\Product', NULL, NULL),
(527, 'product/CPFLIN000000008.jpg', 527, 'App\\Models\\Product', NULL, NULL),
(528, 'product/CPFLIN000000010.jpg', 528, 'App\\Models\\Product', NULL, NULL),
(529, 'product/CPFLIN000000001.jpg', 529, 'App\\Models\\Product', NULL, NULL),
(530, 'product/CPFLIN000000002.jpg', 530, 'App\\Models\\Product', NULL, NULL),
(531, 'product/CPFLIN000000009.jpg', 531, 'App\\Models\\Product', NULL, NULL),
(532, 'product/CPFLIN000000012.jpg', 532, 'App\\Models\\Product', NULL, NULL),
(533, 'product/CPFLIN000000006.jpg', 533, 'App\\Models\\Product', NULL, NULL),
(534, 'product/CPFLIN000000021.jpg', 534, 'App\\Models\\Product', NULL, NULL),
(535, 'product/CPFLIN000000014.jpg', 535, 'App\\Models\\Product', NULL, NULL),
(536, 'product/CPFLIN000000015.jpg', 536, 'App\\Models\\Product', NULL, NULL),
(537, 'product/CPFLIN000000020.jpg', 537, 'App\\Models\\Product', NULL, NULL),
(538, 'product/CPFLIN000000005.jpg', 538, 'App\\Models\\Product', NULL, NULL),
(539, 'product/CPACIN000000005.jpg', 539, 'App\\Models\\Product', NULL, NULL),
(540, 'product/CPACIN000000006.jpg', 540, 'App\\Models\\Product', NULL, NULL),
(541, 'product/CPACIN000000007.jpg', 541, 'App\\Models\\Product', NULL, NULL),
(542, 'product/CPACIN000000008.jpg', 542, 'App\\Models\\Product', NULL, NULL),
(543, 'product/CPACIN000000009.jpg', 543, 'App\\Models\\Product', NULL, NULL),
(544, 'product/CPACIN000000010.jpg', 544, 'App\\Models\\Product', NULL, NULL),
(545, 'product/CPACIN000000015.jpg', 545, 'App\\Models\\Product', NULL, NULL),
(546, 'product/CPACIN000000017.jpg', 546, 'App\\Models\\Product', NULL, NULL),
(547, 'product/CPACIN000000016.jpg', 547, 'App\\Models\\Product', NULL, NULL),
(548, 'product/CPACIN000000001.jpg', 548, 'App\\Models\\Product', NULL, NULL),
(549, 'product/CPACIN000000018.jpg', 549, 'App\\Models\\Product', NULL, NULL),
(550, 'product/CPACIN000000004.jpg', 550, 'App\\Models\\Product', NULL, NULL),
(551, 'product/CPPSIN000000006.jpg', 551, 'App\\Models\\Product', NULL, NULL),
(552, 'product/CPPSIN000000007.jpg', 552, 'App\\Models\\Product', NULL, NULL),
(553, 'product/CPPSIN000000001.jpg', 553, 'App\\Models\\Product', NULL, NULL),
(554, 'product/CPPSIN000000002.jpg', 554, 'App\\Models\\Product', NULL, NULL),
(555, 'product/CPPSIN000000003.jpg', 555, 'App\\Models\\Product', NULL, NULL),
(556, 'product/CPPSIN000000004.jpg', 556, 'App\\Models\\Product', NULL, NULL),
(557, 'product/CPPSIN000000005.jpg', 557, 'App\\Models\\Product', NULL, NULL),
(558, 'product/CPPSIN000000008.jpg', 558, 'App\\Models\\Product', NULL, NULL),
(559, 'product/LGAUHVB00000004.jpg', 559, 'App\\Models\\Product', NULL, NULL),
(560, 'product/LGAUHVS00000001.jpg', 560, 'App\\Models\\Product', NULL, NULL),
(561, 'product/LGAUHVB00000009.jpg', 561, 'App\\Models\\Product', NULL, NULL),
(562, 'product/LGAUHVB00000018.jpg', 562, 'App\\Models\\Product', NULL, NULL),
(563, 'product/LGAUHVB00000008.jpg', 563, 'App\\Models\\Product', NULL, NULL),
(564, 'product/LGAUHVR00000002.jpg', 564, 'App\\Models\\Product', NULL, NULL),
(565, 'product/LGAUHVR00000001.jpg', 565, 'App\\Models\\Product', NULL, NULL),
(566, 'product/LMPIHVG00000013.jpg', 566, 'App\\Models\\Product', NULL, NULL),
(567, 'product/LMPIHVBL0000019.jpg', 567, 'App\\Models\\Product', NULL, NULL),
(568, 'product/LMPIHVG00000019.jpg', 568, 'App\\Models\\Product', NULL, NULL),
(569, 'product/LMTVSG550000019.jpg', 569, 'App\\Models\\Product', NULL, NULL),
(570, 'product/ACMEHRBO0000001.jpg', 570, 'App\\Models\\Product', NULL, NULL),
(571, 'product/ACMEPAMB0000003.jpg', 571, 'App\\Models\\Product', NULL, NULL),
(572, 'product/ACMEHREX0000001.jpg', 572, 'App\\Models\\Product', NULL, NULL),
(573, 'product/ACMEPAFU0000001.jpg', 573, 'App\\Models\\Product', NULL, NULL),
(574, 'product/ACMEPAFU0000004.jpg', 574, 'App\\Models\\Product', NULL, NULL),
(575, 'product/ACMEPAFU0000002.jpg', 575, 'App\\Models\\Product', NULL, NULL),
(576, 'product/ACMEPAFU0000003.jpg', 576, 'App\\Models\\Product', NULL, NULL),
(577, 'product/ACMEPAHI0000002.jpg', 577, 'App\\Models\\Product', NULL, NULL),
(578, 'product/ACMEPAJA0000002.jpg', 578, 'App\\Models\\Product', NULL, NULL),
(579, 'product/ACMEHRJA0000001.jpg', 579, 'App\\Models\\Product', NULL, NULL),
(580, 'product/ACMEJV000000004.jpg', 580, 'App\\Models\\Product', NULL, NULL),
(581, 'product/ACMEPAMB0000001.jpg', 581, 'App\\Models\\Product', NULL, NULL),
(582, 'product/ACMEPAMB0000002.jpg', 582, 'App\\Models\\Product', NULL, NULL),
(583, 'product/ACMEMUG00000001.jpg', 583, 'App\\Models\\Product', NULL, NULL),
(584, 'product/ACMEMUG00000002.jpg', 584, 'App\\Models\\Product', NULL, NULL),
(585, 'product/ACMEMUG00000003.jpg', 585, 'App\\Models\\Product', NULL, NULL),
(586, 'product/ACMEMUG00000004.jpg', 586, 'App\\Models\\Product', NULL, NULL),
(587, 'product/ACMEPASTP000001.jpg', 587, 'App\\Models\\Product', NULL, NULL),
(588, 'product/ACMETT000000001.jpg', 588, 'App\\Models\\Product', NULL, NULL),
(589, 'product/ACMETT000000003.jpg', 589, 'App\\Models\\Product', NULL, NULL),
(590, 'product/ACMEHRTT0000001.jpg', 590, 'App\\Models\\Product', NULL, NULL),
(591, 'product/ACMEPAVA0000006.jpg', 591, 'App\\Models\\Product', NULL, NULL),
(592, 'product/ACMEVA000000003.jpg', 592, 'App\\Models\\Product', NULL, NULL),
(593, 'product/ACMEVA000000002.jpg', 593, 'App\\Models\\Product', NULL, NULL),
(594, 'product/ACMEPAVA0000007.jpg', 594, 'App\\Models\\Product', NULL, NULL),
(595, 'product/ACMEVA000000004.jpg', 595, 'App\\Models\\Product', NULL, NULL),
(596, 'product/ACMEPAVA0000008.jpg', 596, 'App\\Models\\Product', NULL, NULL),
(597, 'product/LMPIHVB00000018.jpg', 597, 'App\\Models\\Product', NULL, NULL),
(598, 'product/LMBSSY000000004.jpg', 598, 'App\\Models\\Product', NULL, NULL),
(599, 'product/LMESSY000000025.jpg', 599, 'App\\Models\\Product', NULL, NULL),
(600, 'product/LMESSY000000021.jpg', 600, 'App\\Models\\Product', NULL, NULL),
(601, 'product/PRODUCT-TEST.jpg', 601, 'App\\Models\\Product', NULL, NULL),
(602, 'product/LMESLG000000009.jpg', 602, 'App\\Models\\Product', NULL, NULL),
(603, 'product/LMESLG000000014.jpg', 603, 'App\\Models\\Product', NULL, NULL),
(604, 'product/LMESLG000000007.jpg', 604, 'App\\Models\\Product', NULL, NULL),
(605, 'product/LMESLG2C0000003.jpg', 605, 'App\\Models\\Product', NULL, NULL),
(606, 'product/LMESLG000000012.jpg', 606, 'App\\Models\\Product', NULL, NULL),
(607, 'product/LMESLG000000010.jpg', 607, 'App\\Models\\Product', NULL, NULL),
(608, 'product/LMESLG000000011.jpg', 608, 'App\\Models\\Product', NULL, NULL),
(609, 'product/LMESSY000000016.jpg', 609, 'App\\Models\\Product', NULL, NULL),
(610, 'product/LMESSY000000011.jpg', 610, 'App\\Models\\Product', NULL, NULL),
(611, 'product/LMESSY000000003.jpg', 611, 'App\\Models\\Product', NULL, NULL),
(612, 'product/LMESSY000000008.jpg', 612, 'App\\Models\\Product', NULL, NULL),
(613, 'product/LMESSY000000013.jpg', 613, 'App\\Models\\Product', NULL, NULL),
(614, 'product/LMESSY000000030.jpg', 614, 'App\\Models\\Product', NULL, NULL),
(615, 'product/LMESSY000000022.jpg', 615, 'App\\Models\\Product', NULL, NULL),
(616, 'product/LMESSY000000005.jpg', 616, 'App\\Models\\Product', NULL, NULL),
(617, 'product/LMESSY000000023.jpg', 617, 'App\\Models\\Product', NULL, NULL),
(618, 'product/LMESSY000000012.jpg', 618, 'App\\Models\\Product', NULL, NULL),
(619, 'product/LMESSY000000031.jpg', 619, 'App\\Models\\Product', NULL, NULL),
(620, 'product/LMESSY000000033.jpg', 620, 'App\\Models\\Product', NULL, NULL),
(621, 'product/LMESSY000000020.jpg', 621, 'App\\Models\\Product', NULL, NULL),
(622, 'product/PEPAMG000000003.jpg', 622, 'App\\Models\\Product', NULL, NULL),
(623, 'product/PEBAMG000000004.jpg', 623, 'App\\Models\\Product', NULL, NULL),
(624, 'product/PEMIPT000000011.jpg', 624, 'App\\Models\\Product', NULL, NULL),
(625, 'product/LBAAPM18FC000BS.jpg', 625, 'App\\Models\\Product', NULL, NULL),
(626, 'product/LBFRDW000000001.jpg', 626, 'App\\Models\\Product', NULL, NULL),
(627, 'product/LBFRHS000000001.jpg', 627, 'App\\Models\\Product', NULL, NULL),
(628, 'product/PEASKA000000001.jpg', 628, 'App\\Models\\Product', NULL, NULL),
(629, 'product/PEASKA000000002.jpg', 629, 'App\\Models\\Product', NULL, NULL),
(630, 'product/PEHIKA000000003.jpg', 630, 'App\\Models\\Product', NULL, NULL),
(631, 'product/PEHIKA000000001.jpg', 631, 'App\\Models\\Product', NULL, NULL),
(632, 'product/PEHIKA000000002.jpg', 632, 'App\\Models\\Product', NULL, NULL),
(633, 'product/PELVKA000000001.jpg', 633, 'App\\Models\\Product', NULL, NULL),
(634, 'product/LBCOMB4H0000001.jpg', 634, 'App\\Models\\Product', NULL, NULL),
(635, 'product/PECBCUPT0000001.jpg', 635, 'App\\Models\\Product', NULL, NULL),
(636, 'product/LBAAPM12FC000BS.jpg', 636, 'App\\Models\\Product', NULL, NULL),
(637, 'product/LBAAPM24FC000BS.jpg', 637, 'App\\Models\\Product', NULL, NULL),
(638, 'product/PEASMG000000003.jpg', 638, 'App\\Models\\Product', NULL, NULL),
(639, 'product/LGAUMANE0000001.jpg', 639, 'App\\Models\\Product', NULL, NULL),
(640, 'product/LGAUSYLI0000002.jpg', 640, 'App\\Models\\Product', NULL, NULL),
(641, 'product/LGAUSYAZ0000002.jpg', 641, 'App\\Models\\Product', NULL, NULL),
(642, 'product/LGAUSYBL0000002.jpg', 642, 'App\\Models\\Product', NULL, NULL),
(643, 'product/LGAUSYB0000013.jpg', 643, 'App\\Models\\Product', NULL, NULL),
(644, 'product/LGAUSYP00000005.jpg', 644, 'App\\Models\\Product', NULL, NULL),
(645, 'product/LGAUSYBL0000009.jpg', 645, 'App\\Models\\Product', NULL, NULL),
(646, 'product/LGAUSYR00000014.jpg', 646, 'App\\Models\\Product', NULL, NULL),
(647, 'product/LGAUSYB0000014.jpg', 647, 'App\\Models\\Product', NULL, NULL),
(648, 'product/LMBSSK000000002.jpg', 648, 'App\\Models\\Product', NULL, NULL),
(649, 'product/LMBSSY000000007.jpg', 649, 'App\\Models\\Product', NULL, NULL),
(650, 'product/LMBSSY000000003.jpg', 650, 'App\\Models\\Product', NULL, NULL),
(651, 'product/LMBSSK000000001.jpg', 651, 'App\\Models\\Product', NULL, NULL),
(652, 'product/PEBAMG000000006.jpg', 652, 'App\\Models\\Product', NULL, NULL);
INSERT INTO `images` (`id`, `url`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(653, 'product/PECABO000000001.jpg', 653, 'App\\Models\\Product', NULL, NULL),
(654, 'product/LBCOCO5H0000001.jpg', 654, 'App\\Models\\Product', NULL, NULL),
(655, 'product/LBCEBO750000001.jpg', 655, 'App\\Models\\Product', NULL, NULL),
(656, 'product/LGCPDEI30000002.jpg', 656, 'App\\Models\\Product', NULL, NULL),
(657, 'product/LMESSY000000035.jpg', 657, 'App\\Models\\Product', NULL, NULL),
(658, 'product/LMESSY000000034.jpg', 658, 'App\\Models\\Product', NULL, NULL),
(659, 'product/PEFRMG000000001.jpg', 659, 'App\\Models\\Product', NULL, NULL),
(660, 'product/PEHAMG000000001.jpg', 660, 'App\\Models\\Product', NULL, NULL),
(661, 'product/PEHEMG000000004.jpg', 661, 'App\\Models\\Product', NULL, NULL),
(662, 'product/PEHEMG000000006.jpg', 662, 'App\\Models\\Product', NULL, NULL),
(663, 'product/PEHAPT000000002.jpg', 663, 'App\\Models\\Product', NULL, NULL),
(664, 'product/LBLASGCS1700003.jpg', 664, 'App\\Models\\Product', NULL, NULL),
(665, 'product/LBLASGCF1000001.jpg', 665, 'App\\Models\\Product', NULL, NULL),
(666, 'product/LBLASGCS1300004.jpg', 666, 'App\\Models\\Product', NULL, NULL),
(667, 'product/LBLASGCS1400003.jpg', 667, 'App\\Models\\Product', NULL, NULL),
(668, 'product/LBLASGCS1900002.jpg', 668, 'App\\Models\\Product', NULL, NULL),
(669, 'product/LBLADWCS1600002.jpg', 669, 'App\\Models\\Product', NULL, NULL),
(670, 'product/LBLALGCF9000003.jpg', 670, 'App\\Models\\Product', NULL, NULL),
(671, 'product/PELIBO000000002.jpg', 671, 'App\\Models\\Product', NULL, NULL),
(672, 'product/PELIPW000000005.jpg', 672, 'App\\Models\\Product', NULL, NULL),
(673, 'product/PELIPT000000029.jpg', 673, 'App\\Models\\Product', NULL, NULL),
(674, 'product/PEMIPT000000010.jpg', 674, 'App\\Models\\Product', NULL, NULL),
(675, 'product/PEMUPW000000001.jpg', 675, 'App\\Models\\Product', NULL, NULL),
(676, 'product/LMPISY000000006.jpg', 676, 'App\\Models\\Product', NULL, NULL),
(677, 'product/LMPISYNE0000006.jpg', 677, 'App\\Models\\Product', NULL, NULL),
(678, 'product/LMPISYRJ0000006.jpg', 678, 'App\\Models\\Product', NULL, NULL),
(679, 'product/LMPISYAZ0000006.jpg', 679, 'App\\Models\\Product', NULL, NULL),
(680, 'product/LMPISYAM0000006.jpg', 680, 'App\\Models\\Product', NULL, NULL),
(681, 'product/LMPISYW00000009.jpg', 681, 'App\\Models\\Product', NULL, NULL),
(682, 'product/LMPISYL00000009.jpg', 682, 'App\\Models\\Product', NULL, NULL),
(683, 'product/LMPISYB00000009.jpg', 683, 'App\\Models\\Product', NULL, NULL),
(684, 'product/LMPISYR00000009.jpg', 684, 'App\\Models\\Product', NULL, NULL),
(685, 'product/LMPIHV000000012.jpg', 685, 'App\\Models\\Product', NULL, NULL),
(686, 'product/LMPIHVB00000019.jpg', 686, 'App\\Models\\Product', NULL, NULL),
(687, 'product/LMPIHVB00000016.jpg', 687, 'App\\Models\\Product', NULL, NULL),
(688, 'product/LMPIHVGR0000016.jpg', 688, 'App\\Models\\Product', NULL, NULL),
(689, 'product/LMPIHVBG0000020.jpg', 689, 'App\\Models\\Product', NULL, NULL),
(690, 'product/LMPIHVBL000014.jpg', 690, 'App\\Models\\Product', NULL, NULL),
(691, 'product/LMPISYW00000006.jpg', 691, 'App\\Models\\Product', NULL, NULL),
(692, 'product/LHPCCB000000006.jpg', 692, 'App\\Models\\Product', NULL, NULL),
(693, 'product/LHPCCB000000005.jpg', 693, 'App\\Models\\Product', NULL, NULL),
(694, 'product/LHPGCH000000005.jpg', 694, 'App\\Models\\Product', NULL, NULL),
(695, 'product/PEPLBD000000001.jpg', 695, 'App\\Models\\Product', NULL, NULL),
(696, 'product/PEPLPT000000013.jpg', 696, 'App\\Models\\Product', NULL, NULL),
(697, 'product/PEPLPT000000027.jpg', 697, 'App\\Models\\Product', NULL, NULL),
(698, 'product/PEPLPT000000011.jpg', 698, 'App\\Models\\Product', NULL, NULL),
(699, 'product/PEPPGA000000002.jpg', 699, 'App\\Models\\Product', NULL, NULL),
(700, 'product/LBRESG300000014.jpg', 700, 'App\\Models\\Product', NULL, NULL),
(701, 'product/LBRESG300000008.jpg', 701, 'App\\Models\\Product', NULL, NULL),
(702, 'product/LBRESG600000002.jpg', 702, 'App\\Models\\Product', NULL, NULL),
(703, 'product/LBRESG400000006.jpg', 703, 'App\\Models\\Product', NULL, NULL),
(704, 'product/LMDVLG000000001.jpg', 704, 'App\\Models\\Product', NULL, NULL),
(705, 'product/PESAMG000000001.jpg', 705, 'App\\Models\\Product', NULL, NULL),
(706, 'product/LGTAHWGR00001.jpg', 706, 'App\\Models\\Product', NULL, NULL),
(707, 'product/LMTVJV420000002.jpg', 707, 'App\\Models\\Product', NULL, NULL),
(708, 'product/LMTVLG320000008.jpg', 708, 'App\\Models\\Product', NULL, NULL),
(709, 'product/LMTVLG430000005.jpg', 709, 'App\\Models\\Product', NULL, NULL),
(710, 'product/LMTVLG490000014.jpg', 710, 'App\\Models\\Product', NULL, NULL),
(711, 'product/LMTVLG500000002.jpg', 711, 'App\\Models\\Product', NULL, NULL),
(712, 'product/LMTVSKY32000002.jpg', 712, 'App\\Models\\Product', NULL, NULL),
(713, 'product/LMTVSKY50000002.jpg', 713, 'App\\Models\\Product', NULL, NULL),
(714, 'product/LMTVSKY40000003.jpg', 714, 'App\\Models\\Product', NULL, NULL),
(715, 'product/LMTVSKY50000004.jpg', 715, 'App\\Models\\Product', NULL, NULL),
(716, 'product/LMTVSG550000013.jpg', 716, 'App\\Models\\Product', NULL, NULL),
(717, 'product/LMTVSG490000002.jpg', 717, 'App\\Models\\Product', NULL, NULL),
(718, 'product/LMTVSG430000005.jpg', 718, 'App\\Models\\Product', NULL, NULL),
(719, 'product/LMTVSG430000006.jpg', 719, 'App\\Models\\Product', NULL, NULL),
(720, 'product/LMTVSG580000003.jpg', 720, 'App\\Models\\Product', NULL, NULL),
(721, 'product/LBVEWH000000002.jpg', 721, 'App\\Models\\Product', NULL, NULL),
(722, 'product/LBVEWH000000001.jpg', 722, 'App\\Models\\Product', NULL, NULL),
(723, 'product/LBAVMGT00000002.jpg', 723, 'App\\Models\\Product', NULL, NULL),
(724, 'product/LGNLAM00000003.jpg', 724, 'App\\Models\\Product', NULL, NULL),
(725, 'product/LGNLGR00000005.jpg', 725, 'App\\Models\\Product', NULL, NULL),
(726, 'product/LGNSNEO00000003.jpg', 726, 'App\\Models\\Product', NULL, NULL),
(727, 'product/LGP5SY1TB000001.jpg', 727, 'App\\Models\\Product', NULL, NULL),
(728, 'product/MK0000000000001.jpg', 728, 'App\\Models\\Product', NULL, NULL),
(729, 'product/MK0000000000002.jpg', 729, 'App\\Models\\Product', NULL, NULL),
(730, 'product/MK0000000000003.jpg', 730, 'App\\Models\\Product', NULL, NULL),
(731, 'product/LBCEBO600000003.jpg', 731, 'App\\Models\\Product', NULL, NULL),
(732, 'product/LBCEDA600000002.jpg', 732, 'App\\Models\\Product', NULL, NULL),
(733, 'product/LBCEDA600000001.jpg', 733, 'App\\Models\\Product', NULL, NULL),
(734, 'product/LBHOCO000000001.jpg', 734, 'App\\Models\\Product', NULL, NULL),
(735, 'product/LBHOBO000000005.jpg', 735, 'App\\Models\\Product', NULL, NULL),
(736, 'product/LBLASGCS1500003.jpg', 736, 'App\\Models\\Product', NULL, NULL),
(737, 'product/LBRESG300000013.jpg', 737, 'App\\Models\\Product', NULL, NULL),
(738, 'product/LGCESGNE0000053.jpg', 738, 'App\\Models\\Product', NULL, NULL),
(739, 'product/LGCEXMVER000006.jpg', 739, 'App\\Models\\Product', NULL, NULL),
(740, 'product/LGCESGAZ0000035.jpg', 740, 'App\\Models\\Product', NULL, NULL),
(741, 'product/LGCESGAZ0000052.jpg', 741, 'App\\Models\\Product', NULL, NULL),
(742, 'product/LGCESGNE0000046.jpg', 742, 'App\\Models\\Product', NULL, NULL),
(743, 'product/LGCEXMNE0000011.jpg', 743, 'App\\Models\\Product', NULL, NULL),
(744, 'product/LGCESGNE0000048.jpg', 744, 'App\\Models\\Product', NULL, NULL),
(745, 'product/LGCESGAZ0000038.jpg', 745, 'App\\Models\\Product', NULL, NULL),
(746, 'product/LGTASG08NE01.jpg', 746, 'App\\Models\\Product', NULL, NULL),
(747, 'product/LGTASG08SY00002.jpg', 747, 'App\\Models\\Product', NULL, NULL),
(748, 'product/LMTVLG320000009.jpg', 748, 'App\\Models\\Product', NULL, NULL),
(749, 'product/LMTVSG320000008.jpg', 749, 'App\\Models\\Product', NULL, NULL),
(750, 'product/LMTVSG580000007.jpg', 750, 'App\\Models\\Product', NULL, NULL),
(751, 'product/PEPPPT000000002.jpg', 751, 'App\\Models\\Product', NULL, NULL),
(752, 'product/PEPPPT000000001.jpg', 752, 'App\\Models\\Product', NULL, NULL),
(753, 'product/LHRCCAED0000001.jpg', 753, 'App\\Models\\Product', NULL, NULL),
(754, 'product/LHRCCAED0000002.jpg', 754, 'App\\Models\\Product', NULL, NULL),
(755, 'product/LHRCCAED0000003.jpg', 755, 'App\\Models\\Product', NULL, NULL),
(756, 'product/LHRCCAED0000007.jpg', 756, 'App\\Models\\Product', NULL, NULL),
(757, 'product/LHRCCAED0000009.jpg', 757, 'App\\Models\\Product', NULL, NULL),
(758, 'product/LHRCCAED0000008.jpg', 758, 'App\\Models\\Product', NULL, NULL),
(759, 'product/LHRCCAED0000006.jpg', 759, 'App\\Models\\Product', NULL, NULL),
(760, 'product/LHRCCAED0000005.jpg', 760, 'App\\Models\\Product', NULL, NULL),
(761, 'product/LHRCCAED0000004.jpg', 761, 'App\\Models\\Product', NULL, NULL),
(762, 'product/ACMETRCU0000010.jpg', 762, 'App\\Models\\Product', NULL, NULL),
(763, 'product/ACMETRCU0000014.jpg', 763, 'App\\Models\\Product', NULL, NULL),
(764, 'product/ACMETRCU0000008.jpg', 764, 'App\\Models\\Product', NULL, NULL),
(765, 'product/ACMETRCU0000015.jpg', 765, 'App\\Models\\Product', NULL, NULL),
(766, 'product/ACMETRCU0000009.jpg', 766, 'App\\Models\\Product', NULL, NULL),
(767, 'product/LGCPHPI50000012.jpg', 767, 'App\\Models\\Product', NULL, NULL),
(768, 'product/LGACCPHVR000001.jpg', 768, 'App\\Models\\Product', NULL, NULL),
(769, 'product/LGACCPHVBL00002.jpg', 769, 'App\\Models\\Product', NULL, NULL),
(770, 'product/LGACSKGP0000001.jpg', 770, 'App\\Models\\Product', NULL, NULL),
(771, 'product/LGACIMCA0000001.jpg', 771, 'App\\Models\\Product', NULL, NULL),
(772, 'product/LHRCCAJS0000010.jpg', 772, 'App\\Models\\Product', NULL, NULL),
(773, 'product/LHRCCAJS0000012.jpg', 773, 'App\\Models\\Product', NULL, NULL),
(774, 'product/LHRCCAJS0000011.jpg', 774, 'App\\Models\\Product', NULL, NULL),
(775, 'product/LHRCCAJS0000002.jpg', 775, 'App\\Models\\Product', NULL, NULL),
(776, 'product/LHRCCAJS0000001.jpg', 776, 'App\\Models\\Product', NULL, NULL),
(777, 'product/LHRCCAJS0000003.jpg', 777, 'App\\Models\\Product', NULL, NULL),
(778, 'product/LHRCCAJS0000006.jpg', 778, 'App\\Models\\Product', NULL, NULL),
(779, 'product/LHRCCAJS0000004.jpg', 779, 'App\\Models\\Product', NULL, NULL),
(780, 'product/LHRCCAJS0000005.jpg', 780, 'App\\Models\\Product', NULL, NULL),
(781, 'product/LHRCCAJS0000007.jpg', 781, 'App\\Models\\Product', NULL, NULL),
(782, 'product/LHRCCAJS0000009.jpg', 782, 'App\\Models\\Product', NULL, NULL),
(783, 'product/LHRCCAJS0000008.jpg', 783, 'App\\Models\\Product', NULL, NULL),
(784, 'product/LBFEFR000000002.jpg', 784, 'App\\Models\\Product', NULL, NULL),
(785, 'product/LBFRMA000000001.jpg', 785, 'App\\Models\\Product', NULL, NULL),
(786, 'product/LIAB000040.jpg', 786, 'App\\Models\\Product', NULL, NULL),
(787, 'product/LIAB000039.jpg', 787, 'App\\Models\\Product', NULL, NULL),
(788, 'product/LMDVLG000000002.jpg', 788, 'App\\Models\\Product', NULL, NULL),
(789, 'product/LMBRLG000000001.jpg', 789, 'App\\Models\\Product', NULL, NULL),
(790, 'product/LBMICO300000001.jpg', 790, 'App\\Models\\Product', NULL, NULL),
(791, 'product/LGP1SY000000001.jpg', 791, 'App\\Models\\Product', NULL, NULL),
(792, 'product/PECOMG000000004.jpg', 792, 'App\\Models\\Product', NULL, NULL),
(793, 'product/PECOMG000000001.jpg', 793, 'App\\Models\\Product', NULL, NULL),
(794, 'product/PECOMG000000003.jpg', 794, 'App\\Models\\Product', NULL, NULL),
(795, 'product/LMESSY000000032.jpg', 795, 'App\\Models\\Product', NULL, NULL),
(796, 'product/PEASMG000000004.jpg', 796, 'App\\Models\\Product', NULL, NULL),
(797, 'product/PEEXMG000000003.jpg', 797, 'App\\Models\\Product', NULL, NULL),
(798, 'product/PEDEPT000000019.jpg', 798, 'App\\Models\\Product', NULL, NULL),
(799, 'product/PEDEPT000000020.jpg', 799, 'App\\Models\\Product', NULL, NULL),
(800, 'product/LGACUNTVM000015.jpg', 800, 'App\\Models\\Product', NULL, NULL),
(801, 'product/LGACUNTVM000013.jpg', 801, 'App\\Models\\Product', NULL, NULL),
(802, 'product/PECBCUPT0000002.jpg', 802, 'App\\Models\\Product', NULL, NULL),
(803, 'product/LBCOMB5H0000002.jpg', 803, 'App\\Models\\Product', NULL, NULL),
(804, 'product/LBCOMB5H0000003.jpg', 804, 'App\\Models\\Product', NULL, NULL),
(805, 'product/LBAAPM18FC000BC.jpg', 805, 'App\\Models\\Product', NULL, NULL),
(806, 'product/PEASKA000000003.jpg', 806, 'App\\Models\\Product', NULL, NULL),
(807, 'product/PEPLAR000000001.jpg', 807, 'App\\Models\\Product', NULL, NULL),
(809, 'products/ZrWen5YP2kQz95fa1xgwP0Jq8ZFghTJ2fFGx17t7.png', 808, 'App\\Models\\Product', '2021-10-22 18:56:50', '2021-10-22 18:56:50'),
(812, 'public/products/wXZBPvX4PLRZtn6erW3a9H5W7wi5s6UR7zCJJvXB.png', 808, 'App\\Models\\Product', '2021-10-22 19:14:01', '2021-10-22 19:14:01'),
(813, 'public/products/t98VVbyQQXEkxrZDfqAsFRxM25qBTTbntbRMz8HG.png', 809, 'App\\Models\\Product', '2021-10-25 19:09:49', '2021-10-25 19:09:49'),
(814, 'public/product/e9D8KCGVoXNXaROME5p2p3pnZAB0LXViZUDsECXt.png', 812, 'App\\Models\\Product', '2021-12-23 03:56:35', '2021-12-23 03:56:35'),
(815, 'public/product/KuSMCac7d8pmj2EYiRVUE3xI9aL63PEDCQqEjoqc.jpg', 812, 'App\\Models\\Product', '2021-12-23 03:57:45', '2021-12-23 03:57:45'),
(821, 'public/product/ASACzRGxDo3AzCxWM0VNwxlAqCp0yvSR0DVsKVvR.png', 813, 'App\\Models\\Product', '2021-12-27 23:40:14', '2021-12-27 23:40:14'),
(822, 'public/product/yNhkRyNmdXKpnv1P104GeWdRrXhJhKFf0u0K6aWG.jpg', 30, 'App\\Models\\Product', '2021-12-27 23:43:35', '2021-12-27 23:43:35'),
(823, 'public/products/P6z1oZDoLfCO7ZUD3bhOoFypgSzzCnfAvQx7ZTp4.png', 814, 'App\\Models\\Product', '2021-12-29 23:01:36', '2021-12-29 23:01:36'),
(824, 'public/product/7xZzY0giuN9tqZ22G2fbqcBdinsKaGPun3gdOsM5.jpg', 815, 'App\\Models\\Product', '2022-01-12 22:00:20', '2022-01-12 22:00:20'),
(825, 'public/product/a4VBHMc7PnuuPSto5Tp9HTMX82DiWjusPEaTxY5b.jpg', 816, 'App\\Models\\Product', '2022-02-10 06:48:05', '2022-02-10 06:48:05'),
(826, 'public/product/oy33Squtj69tgZ696KRpS2ClRfXnuqgaO13euBVs.jpg', 817, 'App\\Models\\Product', '2022-03-25 00:06:23', '2022-03-25 00:06:23'),
(827, 'public/product/JuSxZFrcm2YUmKdwWyEKFnRfxpIXvd2fe1kJSJNX.jpg', 818, 'App\\Models\\Product', '2022-03-25 01:31:17', '2022-03-25 01:31:17'),
(828, 'public/product/GHB4BmU5YfaMpzR2JXRh3KF8DEqeSH70KW86nmz8.jpg', 819, 'App\\Models\\Product', '2022-05-10 03:20:45', '2022-05-10 03:20:45'),
(829, 'public/product/Gy4ErB7i6GpngBHdaSPFuAth0cI2uPYZ6y8QGAOK.jpg', 820, 'App\\Models\\Product', '2022-05-10 18:42:38', '2022-05-10 18:42:38'),
(830, 'public/product/0yqCmwupaCjMZthg7WRhTAIfHen80hXtVmkO48n2.jpg', 821, 'App\\Models\\Product', '2022-05-11 01:29:04', '2022-05-11 01:29:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(18, '2014_10_12_000000_create_users_table', 1),
(21, '2018_12_23_120000_create_shoppingcart_table', 1),
(24, '2021_05_10_221835_create_sessions_table', 1),
(25, '2021_05_10_223507_create_categories_table', 1),
(26, '2021_05_10_223704_create_subcategories_table', 1),
(27, '2021_05_10_224515_create_brands_table', 1),
(28, '2021_05_10_224837_create_brand_category_table', 1),
(29, '2021_05_10_224838_create_products_table', 1),
(30, '2021_05_10_231428_create_images_table', 1),
(31, '2021_05_23_175839_create_departaments_table', 1),
(32, '2021_05_23_180151_create_provinces_table', 1),
(33, '2021_05_23_180220_create_municipalities_table', 1),
(34, '2021_05_23_180254_create_orders_table', 1),
(35, '2014_10_12_100000_create_password_resets_table', 2),
(36, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(37, '2019_08_19_000000_create_failed_jobs_table', 2),
(38, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(39, '2021_10_08_142847_create_sessions_table', 2),
(40, '2021_10_25_005047_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 6),
(5, 'App\\Models\\User', 6),
(6, 'App\\Models\\User', 6),
(7, 'App\\Models\\User', 6),
(8, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 168),
(4, 'App\\Models\\User', 169),
(4, 'App\\Models\\User', 170),
(4, 'App\\Models\\User', 171),
(4, 'App\\Models\\User', 172),
(4, 'App\\Models\\User', 173),
(4, 'App\\Models\\User', 174),
(4, 'App\\Models\\User', 175);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipalities`
--

CREATE TABLE `municipalities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `municipalities`
--

INSERT INTO `municipalities` (`id`, `name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'BAURES', 5, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(2, 'EXALTACION', 8, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(3, 'GUAYARAMERIN', 1, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(4, 'HUACARAJE', 5, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(5, 'LORETO', 3, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(6, 'MAGDALENA', 5, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(7, 'PUERTO SILES', 4, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(8, 'REYES', 6, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(9, 'RIBERALTA', 1, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(10, 'RURRENABAQUE', 6, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(11, 'SAN ANDRES', 3, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(12, 'SAN BORJA', 6, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(13, 'SAN IGNACIO', 2, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(14, 'SAN JAVIER', 7, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(15, 'SAN JOAQUIN', 4, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(16, 'SAN RAMON', 4, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(17, 'SANTA ANA', 8, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(18, 'SAN ROSA', 6, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(19, 'TRINIDAD', 7, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(20, 'AIQUILE', 13, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(21, 'ALALAY', 20, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(22, 'ANZALDO', 18, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(23, 'ARANI', 9, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(24, 'ARBIETO', 18, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(25, 'ARQUE', 10, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(26, 'BOLIVAR', 12, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(27, 'CAPINOTA', 14, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(28, 'CHIMORE', 15, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(29, 'CLIZA', 19, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(30, 'COCHABAMBA', 16, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(31, 'COLCAPIRHUA', 22, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(32, 'COLOMI', 17, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(33, 'CUCHUMUELA', 21, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(34, 'ENTRE RIOS', 15, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(35, 'INDEPENDENCIA', 11, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(36, 'MIZQUE', 20, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(37, 'MOROCHATA', 11, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(38, 'OMEREQUE', 13, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(39, 'PASORAPA', 13, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(40, 'POCONA', 15, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(41, 'POJO', 15, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(42, 'PUERTO VILLAROEL', 15, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(43, 'PUNATA', 21, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(44, 'QUILLACOLLO', 22, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(45, 'SACABA', 17, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(46, 'SACABAMBA', 18, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(47, 'SAN BENITO', 21, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(48, 'SANTIVAÑEZ', 14, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(49, 'SICAYA', 14, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(50, 'SIPE SIPE', 22, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(51, 'TACACHI', 21, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(52, 'TACOPAYA', 10, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(53, 'TAPACARI', 23, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(54, 'TARATA', 18, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(55, 'TIQUIPAYA', 22, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(56, 'TIRAQUE', 24, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(57, 'TOCO', 19, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(58, 'TOLATA', 19, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(59, 'TOTORA', 15, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(60, 'VACAS', 9, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(61, 'VILA VILA', 20, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(62, 'VILLA RIVERO', 21, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(63, 'VILLA TUNARI', 17, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(64, 'VINTO', 22, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(65, 'COCAPATA ', 11, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(66, 'SHINAHOTA', 24, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(67, 'CAMARGO', 29, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(68, 'CAMATAQUI', 31, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(69, 'CULPINA', 31, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(70, 'EL VILLAR', 32, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(71, 'HUACAYA', 28, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(72, 'ICLA', 34, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(73, 'INCAHUASI', 29, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(74, 'LAS CARRERAS', 31, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(75, 'MACHARETÍ', 28, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(76, 'MONTEAGUDO', 27, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(77, 'PADILLA', 32, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(78, 'POROMA', 30, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(79, 'PRESTO', 34, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(80, 'SAN LUCAS', 29, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(81, 'SAN PABLO DE HUACARETA', 27, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(82, 'SOPACHUY', 32, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(83, 'SUCRE', 30, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(84, 'TARABUCO', 33, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(85, 'TARVITA', 25, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(86, 'TOMINA', 32, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(87, 'VILLA ALCALÁ', 32, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(88, 'VILLA AZURDUY', 25, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(89, 'VILLA MOJOCOYA', 34, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(90, 'VILLA SERRANO', 26, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(91, 'VILLA VACA GUZMÁN', 28, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(92, 'VILLA ZUDÁÑEZ', 34, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(93, 'YAMPARÁEZ', 33, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(94, 'YOTALA', 30, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(95, 'VILLA CHARCAS', 29, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(96, 'ACHACACHI	', 51, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(97, 'ACHOCALLA', 49, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(98, 'ANCORAIMES', 51, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(99, 'ANDRÉS DE MACHACA', 41, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(100, 'APOLO', 39, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(101, 'AUCAPATA', 48, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(102, 'AYATA', 48, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(103, 'AYO AYO', 36, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(104, 'BATALLAS', 46, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(105, 'CAIROMA', 45, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(106, 'CAJUATA', 42, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(107, 'CALACOTO', 52, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(108, 'CALAMARCA', 36, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(109, 'CAQUIAVIRI', 52, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(110, 'CARANAVI', 39, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(111, 'CATACORA', 43, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(112, 'CHACARILLA', 40, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(113, 'CHARAÑA', 52, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(114, 'CHULUMANI', 53, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(115, 'CHUMA', 48, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(116, 'COLLANA', 36, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(117, 'COLQUENCHA', 36, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(118, 'COLQUIRI', 42, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(119, 'COMANCHE', 52, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(120, 'COMBAYA', 44, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(121, 'COPACABANA', 47, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(122, 'CORIPATA', 50, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(123, 'CORO CORO', 52, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(124, 'COROICO', 50, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(125, 'CURVA', 37, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(126, 'DESAGUADERO', 41, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(127, 'EL ALTO', 49, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(128, 'GRAL. JUAN JOSÉ PEREZ (CHARAZANI)', 37, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(129, 'GUANAY	', 44, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(130, 'GUAQUI	', 41, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(131, 'ICHOCA	', 42, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(132, 'INQUISIVI', 42, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(133, 'IRUPANA', 53, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(134, 'IXIAMAS', 35, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(135, 'JESÚS DE MACHACA', 41, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(136, 'LA ASUNTA', 53, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(137, 'LA PAZ', 49, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(138, 'LAJA', 46, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(139, 'LICOMA PAMPA', 42, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(140, 'LURIBAY', 45, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(141, 'MALLA', 45, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(142, 'MAPIRI', 44, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(143, 'MECAPACA', 49, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(144, 'MOCOMOCO', 38, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(145, 'NAZACARA DE PACAJES', 52, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(146, 'PALCA', 49, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(147, 'PALOS BLANCOS', 53, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(148, 'PAPEL PAMPA', 40, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(149, 'PATACAMAYA', 36, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(150, 'PELECHUCO', 39, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(151, 'PUCARANI', 46, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(152, 'PUERTO ACOSTA', 38, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(153, 'PUERTO CARABUCO', 38, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(154, 'PUERTO PÉREZ', 46, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(155, 'QUIABAYA', 44, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(156, 'QUIME', 42, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(157, 'SAN BUENA VENTURA', 35, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(158, 'SAN PEDRO DE CURAHUARA', 40, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(159, 'SAN PEDRO DE TIQUINA', 47, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(160, 'SANTIAGO DE CALLAPA', 52, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(161, 'SANTIAGO DE MACHACA', 43, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(162, 'SAPAHAQUI', 45, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(163, 'SICA SICA', 36, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(164, 'SORATA	', 44, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(165, 'TACACOMA', 44, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(166, 'TARACO', 41, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(167, 'TEOPONTE', 44, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(168, 'TIAHUANACU', 41, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(169, 'TIPUANI', 44, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(170, 'TITO YUPANQUI', 47, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(171, 'UMALA', 36, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(172, 'VIACHA', 41, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(173, 'WALDO BALLIVIÁN', 52, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(174, 'YACO', 45, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(175, 'YANACACHI', 53, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(176, 'HUARINA', 51, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(177, 'SANTIAGO DE HUATA ', 51, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(178, 'ESCOMA', 38, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(179, 'HUMANATA', 38, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(180, 'ALTO BENI', 39, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(181, 'ANDAMARCA', 56, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(182, 'ANTEQUERA', 63, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(183, 'BELÉN DE ANDAMARCA', 56, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(184, 'CARACOLLO	', 57, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(185, 'CARANGAS', 60, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(186, 'CHALLAPATA', 55, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(187, 'CHIPAYA', 54, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(188, 'CHOQUECOTA', 56, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(189, 'COIPASA', 54, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(190, 'CORQUE', 56, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(191, 'CRUZ DE MACHACAMARCA', 59, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(192, 'CURAHUARA DE CARANGAS', 64, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(193, 'EL CHORO', 57, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(194, 'ESCARA', 59, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(195, 'ESMERALDA', 59, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(196, 'EUCALIPTUS', 55, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(197, 'HUACHACALLA', 59, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(198, 'LA RIVERA', 60, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(199, 'MACHACAMARCA', 62, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(200, 'ORURO', 57, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(201, 'PAMPA AULLAGAS', 58, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(202, 'PAZÑA', 63, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(203, 'SABAYA', 54, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(204, 'SALINAS DE GARCI MENDOZA', 58, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(205, 'SANTIAGO DE HUARI', 55, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(206, 'SANTIAGO DE HUAYLLAMARCA', 61, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(207, 'SANTUARIO DE QUILLACAS', 55, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(208, 'SORACACHI', 57, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(209, 'TODOS SANTOS', 60, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(210, 'TOLEDO', 65, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(211, 'TOTORA', 62, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(212, 'TURCO', 64, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(213, 'VILLA HUANUNI', 62, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(214, 'VILLA POOPÓ', 63, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(215, 'YUNGUYO DEL LITORAL', 59, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(216, 'BELLA FLOR', 70, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(217, 'BLANCA FLOR', 68, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(218, 'BOLPEBRA', 70, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(219, 'COBIJA', 70, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(220, 'EL SENA', 68, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(221, 'FILADELFIA', 69, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(222, 'HUMAITA', 66, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(223, 'NUEVA ESPERANZA', 67, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(224, 'PORVENIR', 70, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(225, 'PUERTO GONZALO MORENO	', 68, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(226, 'PUERTO RICO', 69, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(227, 'SAN PEDRO', 69, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(228, 'SANTA ROSA DEL ABUNÁ', 66, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(229, 'SANTOS MERCADO (RESERVA)', 67, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(230, 'VILLA NUEVA (LOMA ALTA)', 67, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(231, 'ACASIO', 79, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(232, 'ARAMPAMPA	', 79, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(233, 'ATOCHA', 85, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(234, 'BELÉN DE URMIRI', 78, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(235, 'BETANZOS', 75, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(236, 'PUCARANI', 46, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(237, 'CARIPUYO', 71, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(238, 'CHAQUÍ', 75, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(239, 'CHAYANTA', 72, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(240, 'QUIABAYA', 44, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(241, 'COLQUECHACA', 74, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(242, 'COTAGAITA', 82, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(243, 'LLALLAGUA', 72, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(244, 'LLICA	', 76, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(245, 'MOJINETE', 86, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(246, 'OCURÍ	', 74, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(247, 'POCOATA', 74, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(248, 'PORCO	', 84, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(249, 'POTOSÍ', 78, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(250, 'PUNA', 80, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(251, 'RAVELO', 74, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(252, 'SACACA', 71, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(253, 'SAN AGUSTÍN', 77, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(254, 'SAN ANTONIO DE ESMORUCO', 86, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(255, 'SAN PABLO DE LIPEZ', 86, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(256, 'SAN PEDRO DE BUENA VISTA', 73, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(257, 'SAN PEDRO DE QUEMES', 83, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(258, 'TACOBAMBA	', 75, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(259, 'TAHUA	', 76, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(260, 'TINGUIPAYA	', 78, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(261, 'TOMAVE', 84, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(262, 'TORO TORO	', 73, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(263, 'TUPIZA', 85, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(264, 'UNCÍA	', 72, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(265, 'UYUNI	', 84, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(266, 'VILLA DE YOCALLA	', 78, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(267, 'VILLAZÓN', 81, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(268, 'VITICHI', 82, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(269, 'CHUQUIUTA', 72, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(270, 'CKOCHAS ', 80, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(271, 'ASCENCIÓN DE GUARAYOS	', 93, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(272, 'AYACUCHO - PORONGO 1', 87, '2021-05-23 20:24:59', '2021-10-23 20:55:19'),
(273, 'BOYUIBE', 90, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(274, 'BUENA VISTA', 94, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(275, 'CABEZAS', 90, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(276, 'CAMIRI', 90, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(277, 'CARMEN RIVERO TORRES', 92, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(278, 'CHARAGUA', 90, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(279, 'COLPA BÉLGICA', 98, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(280, 'COMARAPA', 95, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(281, 'CONCEPCIÓN', 96, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(282, 'COTOCA', 87, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(283, 'CUATRO CAÑADAS', 96, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(284, 'CUEVO	', 90, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(285, 'EL PUENTE	', 93, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(286, 'EL TORNO', 87, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(287, 'GRAL. SAAVEDRA', 97, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(288, 'GUTIÉRREZ	', 90, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(289, 'LA GUARDIA', 87, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(290, 'LAGUNILLAS', 90, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(291, 'MAIRANA', 91, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(292, 'MINEROS', 97, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(293, 'MONTERO', 97, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(294, 'MORO MORO	', 99, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(295, 'OKINAWA', 101, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(296, 'PAILÓN', 89, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(297, 'PAMPA GRANDE', 91, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(298, 'PORTACHUELO', 98, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(299, 'POSTRER VALLE	', 99, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(300, 'PUCARA', 99, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(301, 'PUERTO FERNÁNDEZ ALONSO', 97, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(302, 'PUERTO QUIJARRO', 92, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(303, 'PUERTO SUÁREZ	', 92, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(304, 'QUIRUSILLAS	', 91, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(305, 'ROBORÉ', 89, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(306, 'SAIPINA', 95, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(307, 'SAMAIPATA	', 91, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(308, 'SAN ANTONIO DEL LOMERÍO', 96, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(309, 'SAN CARLOS', 94, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(310, 'SAN IGNACIO', 100, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(311, 'SAN JAVIER', 96, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(312, 'SAN JOSÉ', 89, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(313, 'SAN JUAN', 94, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(314, 'SAN JULIÁN', 96, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(315, 'SAN MATÍAS', 88, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(316, 'SAN MIGUEL', 100, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(317, 'SAN PEDRO	', 97, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(318, 'SAN RAFAEL', 100, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(319, 'SAN RAMÓN	', 96, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(320, 'SANTA CRUZ DE LA SIERRA', 87, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(321, 'SANTA ROSA DEL SARA', 98, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(322, 'TRIGAL', 99, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(323, 'URUBICHÁ', 93, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(324, 'VALLE GRANDE', 99, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(325, 'WARNES', 101, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(326, 'YAPACANÍ', 94, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(327, 'BERMEJO', 102, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(328, 'CARAPARÍ', 105, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(329, 'EL PUENTE	', 106, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(330, 'ENTRE RÍOS', 107, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(331, 'PADCAYA', 102, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(332, 'SAN LORENZO', 106, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(333, 'TARIJA', 104, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(334, 'URIONDO', 103, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(335, 'VILLAMONTES', 105, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(336, 'YACUIBA', 105, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(337, 'YUNCHARÁ', 103, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(338, 'DESCONOCIDO', 110, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(339, 'EXTRANJERO', 109, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(340, 'CAIZA \"D\"', 80, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(341, 'COLCHA \"K\"', 83, '2021-05-23 20:24:59', '2021-05-23 20:24:59'),
(342, 'la nueva santa cruz', 87, '2021-10-23 20:57:31', '2021-10-23 20:57:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `departament_id` bigint(20) UNSIGNED NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `municipality_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('1','2','3','4','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `delivery_method_id` enum('1','2','3','4') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_method_id` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_order_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`content`)),
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cellphone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `razon_social` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nit` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `departament_id`, `province_id`, `municipality_id`, `status`, `delivery_method_id`, `pay_method_id`, `api_order_id`, `shipping_cost`, `total`, `content`, `address`, `name`, `lastname`, `ci`, `email`, `cellphone`, `razon_social`, `nit`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '', '1', '1', '', 0.00, 19.99, '{\"3c2650575b69516464a24ea2e9a86221\":{\"rowId\":\"3c2650575b69516464a24ea2e9a86221\",\"id\":69,\"name\":\"Alias qui.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/2fc4ae2651477670c15c24a4a0402848.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Sucursal Mall Las Brisas', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-28 18:54:42', '2021-10-23 19:16:38'),
(2, 1, 1, 87, 289, '1', '1', '1', '', 0.00, 19.99, '{\"3c2650575b69516464a24ea2e9a86221\":{\"rowId\":\"3c2650575b69516464a24ea2e9a86221\",\"id\":69,\"name\":\"Alias qui.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/2fc4ae2651477670c15c24a4a0402848.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Sucursal Ventura Mall', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-28 19:00:55', '2021-05-28 19:00:55'),
(3, 1, 1, 87, 289, '1', '3', '1', '', 0.00, 19.99, '{\"3c2650575b69516464a24ea2e9a86221\":{\"rowId\":\"3c2650575b69516464a24ea2e9a86221\",\"id\":69,\"name\":\"Alias qui.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/2fc4ae2651477670c15c24a4a0402848.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Envio por la transportadora .', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-28 19:05:27', '2021-05-28 19:05:27'),
(4, 1, 1, 87, 289, '1', '3', '1', '', 0.00, 19.99, '{\"3c2650575b69516464a24ea2e9a86221\":{\"rowId\":\"3c2650575b69516464a24ea2e9a86221\",\"id\":69,\"name\":\"Alias qui.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/2fc4ae2651477670c15c24a4a0402848.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Envio por la transportadora BOLIVAR.', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-28 19:06:12', '2021-05-28 19:06:12'),
(5, 1, 1, 87, 320, '3', '2', '1', '', 0.00, 19.99, '{\"3c2650575b69516464a24ea2e9a86221\":{\"rowId\":\"3c2650575b69516464a24ea2e9a86221\",\"id\":69,\"name\":\"Alias qui.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/2fc4ae2651477670c15c24a4a0402848.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Del 6to a 9no anillo - Zona Norte. Dirección: av 2 de agosto zona cambodromo  Casi llegando al 8vo anillo calle alto de la alianza referencia radio movil tokio', 'USUARIO CLIENTE', 'TEST', '11111111', 'a@a.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-28 19:31:15', '2021-10-23 19:20:16'),
(6, 1, 1, 87, 320, '0', '2', '1', '', 0.00, 19.99, '{\"3c2650575b69516464a24ea2e9a86221\":{\"rowId\":\"3c2650575b69516464a24ea2e9a86221\",\"id\":69,\"name\":\"Alias qui.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/2fc4ae2651477670c15c24a4a0402848.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Del 6to a 9no anillo - Zona Norte. | Dirección: Av 2 de agosto zona cambodromo . Casi llegando al 8vo anillo calle alto de la alianza referencia radio movil tokio.', 'USUARIO CLIENTE', 'TEST', '11111111', 'a@a.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-28 19:34:36', '2021-10-23 19:25:03'),
(7, 1, 1, 87, 320, '4', '2', '1', '', 0.00, 19.99, '{\"3c2650575b69516464a24ea2e9a86221\":{\"rowId\":\"3c2650575b69516464a24ea2e9a86221\",\"id\":69,\"name\":\"Alias qui.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/2fc4ae2651477670c15c24a4a0402848.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Del 6to a 9no anillo - Zona Norte. | Dirección: Av 2 de agosto zona cambodromo . Casi llegando al 8vo anillo calle alto de la alianza referencia radio movil tokio.', 'USUARIO CLIENTE', 'TEST', '11111111', 'a@a.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-28 19:37:33', '2021-05-28 19:37:33'),
(8, 1, 1, 87, 320, '1', '1', '2', '', 0.00, 19.99, '{\"3c2650575b69516464a24ea2e9a86221\":{\"rowId\":\"3c2650575b69516464a24ea2e9a86221\",\"id\":69,\"name\":\"Alias qui.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/2fc4ae2651477670c15c24a4a0402848.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Sucursal Mall Mega Center', 'USUARIO CLIENTE', 'TEST', '11111111', 'a@a.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-28 19:41:43', '2021-05-28 19:41:43'),
(9, 1, 1, 87, 320, '3', '1', '1', '', 0.00, 19.99, '{\"3c2650575b69516464a24ea2e9a86221\":{\"rowId\":\"3c2650575b69516464a24ea2e9a86221\",\"id\":69,\"name\":\"Alias qui.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/2fc4ae2651477670c15c24a4a0402848.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Sucursal Mall Mega Center', 'USUARIO CLIENTE', 'TEST', '11111111', 'a@a.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-28 19:59:23', '2021-05-28 19:59:23'),
(10, 1, 1, 87, 320, '4', '1', '2', '', 0.00, 19.99, '{\"3c2650575b69516464a24ea2e9a86221\":{\"rowId\":\"3c2650575b69516464a24ea2e9a86221\",\"id\":69,\"name\":\"Alias qui.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/2fc4ae2651477670c15c24a4a0402848.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Sucursal Ventura Mall', 'USUARIO CLIENTE', 'TEST', '11111111', 'a@a.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-28 20:22:18', '2021-05-28 20:22:18'),
(11, 1, 1, 87, 320, '0', '1', '1', '', 0.00, 19.99, '{\"3c2650575b69516464a24ea2e9a86221\":{\"rowId\":\"3c2650575b69516464a24ea2e9a86221\",\"id\":69,\"name\":\"Alias qui.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/2fc4ae2651477670c15c24a4a0402848.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Sucursal Mall Las Brisas', 'USUARIO CLIENTE', 'TEST', '11111111', 'a@a.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-28 20:26:50', '2021-10-23 19:47:57'),
(12, 1, 1, 87, 289, '3', '3', '2', '', 0.00, 219.97, '{\"2c2e58608a8d65762f982b218d05057f\":{\"rowId\":\"2c2e58608a8d65762f982b218d05057f\",\"id\":40,\"name\":\"Consequuntur voluptates.\",\"qty\":2,\"price\":99.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/d21d15e6215d83e49b1c199ae45d2286.png\"},\"discount\":0,\"tax\":21,\"subtotal\":199.98},\"3c2650575b69516464a24ea2e9a86221\":{\"rowId\":\"3c2650575b69516464a24ea2e9a86221\",\"id\":69,\"name\":\"Alias qui.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/2fc4ae2651477670c15c24a4a0402848.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Envio por la transportadora BOLIVAR.', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-31 18:37:51', '2021-10-25 20:26:23'),
(13, 1, 1, 87, 320, '2', '1', '2', 'CONTENT13', 0.00, 49.99, '{\"c608e971e429fbff744d7cc0fba7524a\":{\"rowId\":\"c608e971e429fbff744d7cc0fba7524a\",\"id\":17,\"name\":\"Placeat cum.\",\"qty\":1,\"price\":49.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/50b74e6498ed3e555bfc43ae338d37b5.png\"},\"discount\":0,\"tax\":10.5,\"subtotal\":49.99}}', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', 'chvarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-31 20:22:02', '2021-05-31 20:22:34'),
(14, 2, 1, 87, 320, '2', '2', '2', 'CONTENT14', 0.00, 19.99, '{\"3c2650575b69516464a24ea2e9a86221\":{\"rowId\":\"3c2650575b69516464a24ea2e9a86221\",\"id\":69,\"name\":\"Alias qui.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/2fc4ae2651477670c15c24a4a0402848.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Del 1er a 4to anillo - Zona Norte. | Dirección: Av 2 de agosto . Radio movil tokio.', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-31 20:47:27', '2021-05-31 20:47:44'),
(15, 2, 1, 87, 272, '0', '1', '2', 'CONTENT15', 0.00, 19.99, '{\"3c04edbfc943cb8a01439f88eb851b0a\":{\"rowId\":\"3c04edbfc943cb8a01439f88eb851b0a\",\"id\":7,\"name\":\"Autem commodi.\",\"qty\":1,\"price\":19.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/27ba2127972fe72e133b96f9d7d38cc6.png\"},\"discount\":0,\"tax\":4.2,\"subtotal\":19.99}}', 'Sucursal Ventura Mall', 'USUARIO CLIENTE', 'TEST', '11111111', '111@1.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-31 21:07:55', '2021-10-23 19:48:11'),
(16, 2, 1, 87, 320, '2', '1', '2', 'CONTENT16', 0.00, 99.99, '{\"2c2e58608a8d65762f982b218d05057f\":{\"rowId\":\"2c2e58608a8d65762f982b218d05057f\",\"id\":40,\"name\":\"Consequuntur voluptates.\",\"qty\":1,\"price\":99.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/d21d15e6215d83e49b1c199ae45d2286.png\"},\"discount\":0,\"tax\":21,\"subtotal\":99.99}}', 'Sucursal Mall Beauty Plaza', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-31 23:23:10', '2021-05-31 23:24:54'),
(17, 2, 1, 88, 315, '2', '3', '2', 'CONTENT17', 0.00, 49.99, '{\"f6f61d163f898d9968683acef4555f7b\":{\"rowId\":\"f6f61d163f898d9968683acef4555f7b\",\"id\":12,\"name\":\"In et laborum.\",\"qty\":1,\"price\":49.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/f7d29e6a34601e665aafe2d27615aaad.png\"},\"discount\":0,\"tax\":10.5,\"subtotal\":49.99}}', 'Envio por la transportadora BOLIVAR.', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-05-31 23:26:52', '2021-05-31 23:28:28'),
(18, 1, 1, 87, 320, '0', '1', '2', 'CONTENT18', 0.00, 88.99, '{\"3864a4db2f267483ba0f488a6587a99b\":{\"rowId\":\"3864a4db2f267483ba0f488a6587a99b\",\"id\":6,\"name\":\"AUDIFONOS HAVIT E48P RED\",\"qty\":1,\"price\":39,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/LGAUHVR00000004.jpg\"},\"discount\":0,\"tax\":8.19,\"subtotal\":39},\"c608e971e429fbff744d7cc0fba7524a\":{\"rowId\":\"c608e971e429fbff744d7cc0fba7524a\",\"id\":17,\"name\":\"Placeat cum.\",\"qty\":1,\"price\":49.99,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/storage\\/products\\/50b74e6498ed3e555bfc43ae338d37b5.png\"},\"discount\":0,\"tax\":10.5,\"subtotal\":49.99}}', 'Sucursal Mall Mega Center', 'USUARIO CLIENTE', 'TEST', '11111111', 'juan@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-06-04 20:28:21', '2021-10-27 06:19:29'),
(19, 1, 1, 87, 320, '2', '2', '2', 'CONTENT19', 0.00, 267.00, '{\"3cf9c787629de9a657bc641bfac92b3b\":{\"rowId\":\"3cf9c787629de9a657bc641bfac92b3b\",\"id\":1,\"name\":\"2 X ALMOHADA LIFE 70 X 50 CM\",\"qty\":3,\"price\":89,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":18.69,\"subtotal\":267}}', 'Del 6to a 9no anillo - Zona Norte. | Dirección: Av. 2 de agosto . Entre 7mo y 8vo anillo.', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-06-07 01:17:25', '2021-06-07 01:26:21'),
(20, 1, 1, 87, 320, '2', '1', '2', 'CONTENT20', 0.00, 179.00, '{\"9d6d421252e4f13c6a2de065590e92e9\":{\"rowId\":\"9d6d421252e4f13c6a2de065590e92e9\",\"id\":3,\"name\":\"2 X ALMOHADA MAXIKING MEMORY FOAM MEDIUM MK014\",\"qty\":1,\"price\":179,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":37.59,\"subtotal\":179}}', 'Sucursal Ventura Mall', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-06-07 01:39:18', '2021-06-07 01:39:27'),
(21, 1, 1, 87, 320, '2', '1', '2', 'CONTENT21', 0.00, 109.00, '{\"164049a00c65b9a3eb586abb437f9fb8\":{\"rowId\":\"164049a00c65b9a3eb586abb437f9fb8\",\"id\":2,\"name\":\"2 X ALMOHADA MAXI KING FIBRA 70X45CM. 700GR\",\"qty\":1,\"price\":109,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":22.89,\"subtotal\":109}}', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-06-07 01:42:23', '2021-06-07 01:42:26'),
(22, 1, 1, 87, 320, '2', '1', '2', 'CONTENT22', 0.00, 359.00, '{\"187eab66defe4f9826f990653e1df625\":{\"rowId\":\"187eab66defe4f9826f990653e1df625\",\"id\":754,\"name\":\"EDREDON CANNON SINGLE RISENS\",\"qty\":1,\"price\":359,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":75.39,\"subtotal\":359}}', 'Sucursal Ventura Mall', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-06-07 01:44:11', '2021-06-07 01:44:19'),
(23, 1, 1, 87, 320, '4', '1', '2', 'CONTENT23', 0.00, 9.00, '{\"3cf9c787629de9a657bc641bfac92b3b\":{\"rowId\":\"3cf9c787629de9a657bc641bfac92b3b\",\"id\":1,\"name\":\"2 X ALMOHADA LIFE 70 X 50 CM\",\"qty\":1,\"price\":89,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":18.69,\"subtotal\":89}}', 'Sucursal Mall Beauty Plaza', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-06-07 01:45:30', '2021-10-27 06:20:28'),
(24, 1, 1, 87, 320, '2', '1', '2', 'CONTENT24', 0.00, 179.00, '{\"9d6d421252e4f13c6a2de065590e92e9\":{\"rowId\":\"9d6d421252e4f13c6a2de065590e92e9\",\"id\":3,\"name\":\"2 X ALMOHADA MAXIKING MEMORY FOAM MEDIUM MK014\",\"qty\":1,\"price\":179,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":37.59,\"subtotal\":179}}', 'Sucursal Ventura Mall', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-06-07 01:49:29', '2021-06-07 01:49:32'),
(25, 1, 1, 87, 320, '2', '1', '2', 'CONTENT25', 0.00, 3490.00, '{\"ca436decab8a24cdd39a301c1ce8aeeb\":{\"rowId\":\"ca436decab8a24cdd39a301c1ce8aeeb\",\"id\":726,\"name\":\"NINTENDO SWITCH NEON V2\",\"qty\":1,\"price\":3490,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":732.9,\"subtotal\":3490}}', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-06-07 01:57:34', '2021-06-07 01:57:40'),
(26, 1, 1, 87, 320, '2', '1', '2', 'CONTENT26', 0.00, 78.00, '{\"a98c0459f19c0688e611e6345d5ab590\":{\"rowId\":\"a98c0459f19c0688e611e6345d5ab590\",\"id\":5,\"name\":\"AUDIFONOS HAVIT E48P BLUE\",\"qty\":2,\"price\":39,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":8.19,\"subtotal\":78}}', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-06-07 02:03:23', '2021-06-07 02:03:32'),
(27, 1, 1, 87, 320, '2', '1', '2', 'CONTENT27', 0.00, 39.00, '{\"a98c0459f19c0688e611e6345d5ab590\":{\"rowId\":\"a98c0459f19c0688e611e6345d5ab590\",\"id\":5,\"name\":\"AUDIFONOS HAVIT E48P BLUE\",\"qty\":1,\"price\":39,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/127.0.0.1:8000\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":8.19,\"subtotal\":39}}', 'Sucursal Ventura Mall', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-06-07 02:13:23', '2021-06-07 02:13:29'),
(28, 3, 1, 87, 320, '2', '1', '2', 'CONTENT28', 0.00, 89.00, '{\"e69682ef671c7109dbca839dbd6bcb36\":{\"rowId\":\"e69682ef671c7109dbca839dbd6bcb36\",\"id\":1,\"name\":\"2 X ALMOHADA LIFE 70 X 50 CM\",\"qty\":1,\"price\":89,\"weight\":550,\"options\":{\"image\":\"http:\\/\\/test-ecommerce.hauscenter.com.bo\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":18.690000000000001278976924368180334568023681640625,\"subtotal\":89}}', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', 'jhulinotorrico@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-06-07 21:03:14', '2021-06-07 21:03:26'),
(29, 1, 1, 87, 320, '1', '1', '1', NULL, 0.00, 1.00, '{\"de4435854e169fb38f382d37c7685760\":{\"rowId\":\"de4435854e169fb38f382d37c7685760\",\"id\":211,\"name\":\"REPRODUCTOR BLUE RAY SY FULL HD\\/ USB\",\"qty\":2,\"price\":799,\"weight\":500,\"options\":{\"image\":\"http:\\/\\/192.168.1.195:1234\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":167.79,\"subtotal\":1598}}', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 01:27:48', '2021-10-13 01:27:48'),
(30, 1, 1, 87, 320, '1', '1', '1', NULL, 0.00, 0.00, '[]', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 01:39:12', '2021-10-13 01:39:12'),
(31, 1, 1, 87, 272, '1', '1', '1', NULL, 0.00, 99.00, '{\"5a6057d369ffa79191081456ce46961e\":{\"rowId\":\"5a6057d369ffa79191081456ce46961e\",\"id\":2,\"name\":\"2 X ALMOHADA MAXI KING FIBRA 70X45CM. 700GR\",\"qty\":1,\"price\":99,\"weight\":500,\"options\":{\"image\":\"http:\\/\\/192.168.1.195:1234\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":20.79,\"subtotal\":99}}', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 01:42:38', '2021-10-13 01:42:38'),
(32, 1, 1, 87, 272, '1', '1', '1', NULL, 0.00, 0.00, '[]', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 01:42:56', '2021-10-13 01:42:56'),
(33, 1, 1, 88, 315, '1', '3', '1', NULL, 0.00, 99.00, '{\"5a6057d369ffa79191081456ce46961e\":{\"rowId\":\"5a6057d369ffa79191081456ce46961e\",\"id\":2,\"name\":\"2 X ALMOHADA MAXI KING FIBRA 70X45CM. 700GR\",\"qty\":1,\"price\":99,\"weight\":500,\"options\":{\"image\":\"http:\\/\\/192.168.1.195:1234\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":20.79,\"subtotal\":99}}', 'Envio por la transportadora JOLE.', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 01:44:34', '2021-10-13 01:44:34'),
(34, 1, 1, 88, 315, '1', '3', '1', NULL, 0.00, 0.00, '[]', 'Envio por la transportadora JOLE.', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 01:44:58', '2021-10-13 01:44:58'),
(35, 1, 1, 92, 302, '1', '3', '1', NULL, 0.00, 99.00, '{\"5a6057d369ffa79191081456ce46961e\":{\"rowId\":\"5a6057d369ffa79191081456ce46961e\",\"id\":2,\"name\":\"2 X ALMOHADA MAXI KING FIBRA 70X45CM. 700GR\",\"qty\":1,\"price\":99,\"weight\":500,\"options\":{\"image\":\"http:\\/\\/192.168.1.195:1234\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":20.79,\"subtotal\":99}}', 'Envio por la transportadora WWWW.', 'USUARIO CLIENTE', 'TEST', '11111111', '1@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 01:45:30', '2021-10-13 01:45:30'),
(36, 1, 1, 92, 302, '1', '3', '1', NULL, 0.00, 0.00, '[]', 'Envio por la transportadora WWWW.', 'USUARIO CLIENTE', 'TEST', '11111111', '1@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 01:46:17', '2021-10-13 01:46:17'),
(37, 1, 2, 9, 60, '1', '3', '1', NULL, 0.00, 198.00, '{\"5a6057d369ffa79191081456ce46961e\":{\"rowId\":\"5a6057d369ffa79191081456ce46961e\",\"id\":2,\"name\":\"2 X ALMOHADA MAXI KING FIBRA 70X45CM. 700GR\",\"qty\":2,\"price\":99,\"weight\":500,\"options\":{\"image\":\"http:\\/\\/192.168.1.195:1234\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":20.79,\"subtotal\":198}}', 'Envio por la transportadora 2222.', 'USUARIO CLIENTE', 'TEST', '11111111', 'q@g.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 01:47:50', '2021-10-13 01:47:50'),
(38, 1, 1, 87, 272, '1', '1', '1', NULL, 0.00, 99.00, '{\"5a6057d369ffa79191081456ce46961e\":{\"rowId\":\"5a6057d369ffa79191081456ce46961e\",\"id\":2,\"name\":\"2 X ALMOHADA MAXI KING FIBRA 70X45CM. 700GR\",\"qty\":1,\"price\":99,\"weight\":500,\"options\":{\"image\":\"http:\\/\\/192.168.1.195:1234\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":20.79,\"subtotal\":99}}', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', '11@1.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 01:49:36', '2021-10-13 01:49:36'),
(39, 1, 1, 87, 272, '1', '1', '1', NULL, 0.00, 495.00, '{\"9ebaf9ec8a133d2eb78f98d532174a14\":{\"rowId\":\"9ebaf9ec8a133d2eb78f98d532174a14\",\"id\":2,\"name\":\"2 X ALMOHADA MAXI KING FIBRA 70X45CM. 700GR\",\"qty\":5,\"price\":99,\"weight\":500,\"options\":{\"image\":\"http:\\/\\/192.168.0.15:1234\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":20.79,\"subtotal\":495}}', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', '1@1.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 04:33:24', '2021-10-13 04:33:24'),
(40, 1, 1, 87, 320, '1', '1', '2', NULL, 0.00, 99.00, '{\"9ebaf9ec8a133d2eb78f98d532174a14\":{\"rowId\":\"9ebaf9ec8a133d2eb78f98d532174a14\",\"id\":2,\"name\":\"2 X ALMOHADA MAXI KING FIBRA 70X45CM. 700GR\",\"qty\":1,\"price\":99,\"weight\":500,\"options\":{\"image\":\"http:\\/\\/192.168.0.15:1234\\/img\\/no_imagen.png\"},\"discount\":0,\"tax\":20.79,\"subtotal\":99}}', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 05:44:36', '2021-10-13 05:44:36'),
(41, 1, 1, 87, 320, '2', '1', '2', 'CONTENT41', 0.00, 358.00, '{\"57732c7b2398aab59a7cc782b478f386\":{\"rowId\":\"57732c7b2398aab59a7cc782b478f386\",\"id\":3,\"name\":\"2 X ALMOHADA MAXIKING MEMORY FOAM MEDIUM MK014\",\"qty\":2,\"price\":179,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LHALMKMF0000001.jpg\"},\"discount\":0,\"tax\":37.59,\"subtotal\":358}}', 'Sucursal Ventura Mall', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 19:17:52', '2021-10-13 19:29:11'),
(42, 1, 1, 87, 320, '2', '1', '2', 'CONTENT42', 0.00, 99.00, '{\"c8c101d8d12b43738cf5670178cca2dc\":{\"rowId\":\"c8c101d8d12b43738cf5670178cca2dc\",\"id\":2,\"name\":\"2 X ALMOHADA MAXI KING FIBRA 70X45CM. 700GR\",\"qty\":1,\"price\":99,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LHALMKFI0000001.jpg\"},\"discount\":0,\"tax\":20.79,\"subtotal\":99}}', 'Sucursal Ventura Mall', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-13 19:31:16', '2021-10-13 19:31:20'),
(43, 1, 1, 87, 320, '2', '1', '2', 'CONTENT43', 0.00, 358.00, '{\"57732c7b2398aab59a7cc782b478f386\":{\"rowId\":\"57732c7b2398aab59a7cc782b478f386\",\"id\":3,\"name\":\"2 X ALMOHADA MAXIKING MEMORY FOAM MEDIUM MK014\",\"qty\":2,\"price\":179,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LHALMKMF0000001.jpg\"},\"discount\":0,\"tax\":37.59,\"subtotal\":358}}', 'Sucursal Ventura Mall', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-14 00:22:20', '2021-10-14 00:22:26'),
(44, 1, 1, 87, 320, '1', '1', '1', NULL, 0.00, 677.00, '{\"57732c7b2398aab59a7cc782b478f386\":{\"rowId\":\"57732c7b2398aab59a7cc782b478f386\",\"id\":3,\"name\":\"2 X ALMOHADA MAXIKING MEMORY FOAM MEDIUM MK014\",\"qty\":2,\"price\":179,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LHALMKMF0000001.jpg\"},\"discount\":0,\"tax\":37.59,\"subtotal\":358},\"82bd1d8b74e5e3ac3e6be8fc04e36aec\":{\"rowId\":\"82bd1d8b74e5e3ac3e6be8fc04e36aec\",\"id\":513,\"name\":\"TERMOVENTILADOR MGF-1290 2000W\",\"qty\":1,\"price\":319,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LBTVMG000000003.jpg\"},\"discount\":0,\"tax\":66.99,\"subtotal\":319}}', 'Sucursal Ventura Mall', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-14 17:37:26', '2021-10-14 17:37:26'),
(45, 1, 1, 87, 320, '1', '1', '2', 'CONTENT45', 0.00, 99.00, '{\"c8c101d8d12b43738cf5670178cca2dc\":{\"rowId\":\"c8c101d8d12b43738cf5670178cca2dc\",\"id\":2,\"name\":\"2 X ALMOHADA MAXI KING FIBRA 70X45CM. 700GR\",\"qty\":1,\"price\":99,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LHALMKFI0000001.jpg\"},\"discount\":0,\"tax\":20.79,\"subtotal\":99}}', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-14 17:41:56', '2021-10-23 19:03:09'),
(46, 1, 1, 87, 320, '1', '1', '2', NULL, 30.00, 198.00, '{\"c8c101d8d12b43738cf5670178cca2dc\":{\"rowId\":\"c8c101d8d12b43738cf5670178cca2dc\",\"id\":2,\"name\":\"2 X ALMOHADA MAXI KING FIBRA 70X45CM. 700GR\",\"qty\":2,\"price\":99,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LHALMKFI0000001.jpg\"},\"discount\":0,\"tax\":20.79,\"subtotal\":198}}', 'Sucursal Mall Beauty Plaza', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-25 18:24:24', '2021-10-25 18:24:24'),
(47, 1, 1, 87, 320, '4', '1', '2', 'CONTENT47', 30.00, 178.00, '{\"c49e6df45c48a6f9592ba8e5f215c655\":{\"rowId\":\"c49e6df45c48a6f9592ba8e5f215c655\",\"id\":67,\"name\":\"CANASTO GALLINA DCW-355 METALICO P\\/ HUEVOS \",\"qty\":2,\"price\":74,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/ACMECA000000001.jpg\"},\"discount\":0,\"tax\":15.54,\"subtotal\":148}}', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-10-25 18:28:06', '2021-10-25 20:26:49'),
(48, 1, 1, 87, 320, '1', '2', '2', NULL, 30.00, 69.00, '{\"d339b7e662e7bb55d733df6ca950b6d0\":{\"rowId\":\"d339b7e662e7bb55d733df6ca950b6d0\",\"id\":6,\"name\":\"AUDIFONOS HAVIT E48P RED\",\"qty\":1,\"price\":39,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LGAUHVR00000004.jpg\"},\"discount\":0,\"tax\":8.19,\"subtotal\":39}}', 'Del 4to a 6to anillo - Zona Norte. | Dirección: Av. Alemania  . Entre avenida alemania y avenida 2 de agosto.', 'USUARIO CLIENTE', 'TEST', '11111111', 'yahelisse@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-11-20 03:11:35', '2021-11-20 03:11:35'),
(49, 4, 1, 87, 320, '2', '2', '2', 'CONTENT49', 30.00, 747.00, '{\"719c32f3df21facf81a24e14b6dcdf7c\":{\"rowId\":\"719c32f3df21facf81a24e14b6dcdf7c\",\"id\":407,\"name\":\"LICUADORA PHILIPS HR-2100\\/00\",\"qty\":2,\"price\":259,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/PELIPT000000006.jpg\"},\"discount\":0,\"tax\":54.39,\"subtotal\":518},\"04c0e603db5672c18e2cff768a84b208\":{\"rowId\":\"04c0e603db5672c18e2cff768a84b208\",\"id\":380,\"name\":\"BATIDORA BONATTI HM429-A\",\"qty\":1,\"price\":199,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/PEBABN000000001.jpg\"},\"discount\":0,\"tax\":41.79,\"subtotal\":199}}', 'Del 4to a 6to anillo - Zona Norte. | Dirección: Av. Alemania 5to anillo . Calle Avaroa #215, reja color negra..', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-12-23 04:16:36', '2021-12-23 04:17:42'),
(50, 1, 1, 87, 320, '2', '1', '2', 'CONTENT50', 30.00, 69.00, '{\"d339b7e662e7bb55d733df6ca950b6d0\":{\"rowId\":\"d339b7e662e7bb55d733df6ca950b6d0\",\"id\":6,\"name\":\"AUDIFONOS HAVIT E48P RED\",\"qty\":1,\"price\":39,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LGAUHVR00000004.jpg\"},\"discount\":0,\"tax\":8.19,\"subtotal\":39}}', 'Sucursal Cañoto', 'USUARIO CLIENTE', 'TEST', '11111111', 'chavarriaj84@gmail.com', '77777777', 'TIENDA ECOMMERCE', '11111111', '2021-12-28 00:25:46', '2021-12-28 00:25:50'),
(51, 4, 1, 87, 320, '2', '1', '2', 'CONTENT51', 30.00, 119.00, '{\"431e5b35002f8d43eb7c1e925ce9abd2\":{\"rowId\":\"431e5b35002f8d43eb7c1e925ce9abd2\",\"id\":1,\"name\":\"2 X ALMOHADA LIFE 70 X 50 CM\",\"qty\":1,\"price\":89,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LHALMKLI0000001.jpg\"},\"discount\":0,\"tax\":18.69,\"subtotal\":89}}', 'Sucursal Cañoto', 'CLIENTE', 'TEST', '1111111', 'dane83024@gmail.com', '77777777', 'CLIENTE TEST', '1111111', '2022-01-12 22:36:58', '2022-01-12 22:37:08'),
(52, 1, 1, 87, 320, '2', '2', '2', 'CONTENT52', 30.00, 69.00, '{\"d339b7e662e7bb55d733df6ca950b6d0\":{\"rowId\":\"d339b7e662e7bb55d733df6ca950b6d0\",\"id\":6,\"name\":\"AUDIFONOS HAVIT E48P RED\",\"qty\":1,\"price\":39,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LGAUHVR00000004.jpg\"},\"discount\":0,\"tax\":8.19,\"subtotal\":39}}', 'Del 1er a 4to anillo - Zona Norte. | Dirección: B/ 15 de diciemrbe . Sasas.', 'USUARIO', 'TEST', '1234678', 'usuario1@gmail.com', '69316523', 'USUARIO TEST', '1234678', '2022-02-10 07:56:04', '2022-02-10 07:56:10'),
(53, 1, 1, 87, 281, '1', '3', '1', NULL, 30.00, 119.00, '{\"431e5b35002f8d43eb7c1e925ce9abd2\":{\"rowId\":\"431e5b35002f8d43eb7c1e925ce9abd2\",\"id\":1,\"name\":\"2 X ALMOHADA LIFE 70 X 50 CM\",\"qty\":1,\"price\":89,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LHALMKLI0000001.jpg\"},\"discount\":0,\"tax\":18.69,\"subtotal\":89}}', 'Envio por la transportadora COPACABANA.', 'DANIEL', 'NUNEZ', '7777450', 'daniel@gmail.com', '75557028', 'DANIEL NUNEZ', '7777450', '2022-03-13 18:24:50', '2022-03-13 18:24:50'),
(54, 1, 1, 87, 320, '1', '1', '2', NULL, 30.00, 248.00, '{\"57732c7b2398aab59a7cc782b478f386\":{\"rowId\":\"57732c7b2398aab59a7cc782b478f386\",\"id\":3,\"name\":\"2 X ALMOHADA MAXIKING MEMORY FOAM MEDIUM MK014\",\"qty\":1,\"price\":179,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LHALMKMF0000001.jpg\"},\"discount\":0,\"tax\":37.59,\"subtotal\":179},\"d339b7e662e7bb55d733df6ca950b6d0\":{\"rowId\":\"d339b7e662e7bb55d733df6ca950b6d0\",\"id\":6,\"name\":\"AUDIFONOS HAVIT E48P RED\",\"qty\":1,\"price\":39,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LGAUHVR00000004.jpg\"},\"discount\":0,\"tax\":8.19,\"subtotal\":39}}', 'Sucursal Cañoto', 'DANI', 'NUñEZ', '5353531', 'daniel@gmail.com', '75557028', 'DANI NUñEZ', '5353531', '2022-03-13 19:25:27', '2022-03-13 19:25:27'),
(55, 171, 1, 87, 282, '2', '3', '2', 'CONTENT55', 30.00, 119.00, '{\"431e5b35002f8d43eb7c1e925ce9abd2\":{\"rowId\":\"431e5b35002f8d43eb7c1e925ce9abd2\",\"id\":1,\"name\":\"2 X ALMOHADA LIFE 70 X 50 CM\",\"qty\":1,\"price\":89,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LHALMKLI0000001.jpg\"},\"discount\":0,\"tax\":18.69,\"subtotal\":89}}', 'Envio por la transportadora COPACABANA.', 'SARA', 'MENDEZ', '7555452', 'sara.mendez@gmail.com', '75557028', 'SARA MENDEZ', '7555452', '2022-03-24 20:57:57', '2022-03-24 20:58:14'),
(56, 171, 1, 87, 282, '2', '3', '2', 'CONTENT56', 30.00, 209.00, '{\"57732c7b2398aab59a7cc782b478f386\":{\"rowId\":\"57732c7b2398aab59a7cc782b478f386\",\"id\":3,\"name\":\"2 X ALMOHADA MAXIKING MEMORY FOAM MEDIUM MK014\",\"qty\":1,\"price\":179,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LHALMKMF0000001.jpg\"},\"discount\":0,\"tax\":37.59,\"subtotal\":179}}', 'Envio por la transportadora COPACABANA.', 'SARA', 'MENDEZ', '7555452', 'duabyakosky.pamela@gmail.com', '75557028', 'SARA MENDEZ', '7555452', '2022-03-24 21:01:10', '2022-03-24 21:01:17'),
(57, 1, 1, 87, 286, '2', '1', '2', 'CONTENT57', 30.00, 785.00, '{\"d339b7e662e7bb55d733df6ca950b6d0\":{\"rowId\":\"d339b7e662e7bb55d733df6ca950b6d0\",\"id\":6,\"name\":\"AUDIFONOS HAVIT E48P RED\",\"qty\":2,\"price\":39,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LGAUHVR00000004.jpg\"},\"discount\":0,\"tax\":8.19,\"subtotal\":78},\"57732c7b2398aab59a7cc782b478f386\":{\"rowId\":\"57732c7b2398aab59a7cc782b478f386\",\"id\":3,\"name\":\"2 X ALMOHADA MAXIKING MEMORY FOAM MEDIUM MK014\",\"qty\":2,\"price\":179,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LHALMKMF0000001.jpg\"},\"discount\":0,\"tax\":37.59,\"subtotal\":358},\"82bd1d8b74e5e3ac3e6be8fc04e36aec\":{\"rowId\":\"82bd1d8b74e5e3ac3e6be8fc04e36aec\",\"id\":513,\"name\":\"TERMOVENTILADOR MGF-1290 2000W\",\"qty\":1,\"price\":319,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/LBTVMG000000003.jpg\"},\"discount\":0,\"tax\":66.99,\"subtotal\":319}}', 'Sucursal Cañoto', 'LILIAN', 'TORREZ', '5331221', 'duabyakosky.pamela@gmail.com', '75557028', 'LILIAN TORREZ', '5331221', '2022-03-24 23:48:47', '2022-03-24 23:48:57'),
(58, 172, 1, 87, 320, '2', '2', '2', 'CONTENT58', 30.00, 260.00, '{\"286d6ab171682be3d59bfebe17d1dd44\":{\"rowId\":\"286d6ab171682be3d59bfebe17d1dd44\",\"id\":817,\"name\":\"Chromecast 3\",\"qty\":1,\"price\":230,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/oy33Squtj69tgZ696KRpS2ClRfXnuqgaO13euBVs.jpg\"},\"discount\":0,\"tax\":48.3,\"subtotal\":230}}', 'Del 1er a 4to anillo - Zona Norte. | Dirección: Av. Beni 325 . Calle U Numero 325.', 'PAME', 'CARRILLO', '8564214', 'duabyakosky.pamela@gmail.com', '7507812', 'PAME CARRILLO', '8564214', '2022-03-25 00:12:55', '2022-03-25 00:13:03'),
(59, 173, 1, 88, 315, '2', '3', '2', 'CONTENT59', 0.00, 300.00, '{\"1f91807de36827d1f6f11a3eded571b5\":{\"rowId\":\"1f91807de36827d1f6f11a3eded571b5\",\"id\":818,\"name\":\"Reloj\",\"qty\":1,\"price\":300,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/JuSxZFrcm2YUmKdwWyEKFnRfxpIXvd2fe1kJSJNX.jpg\"},\"discount\":0,\"tax\":63,\"subtotal\":300}}', 'Envio por la transportadora COPACABANA.', 'AMILKAR', 'CRUZ', '7500000', 'amilkar.doc@gmail.com', '75014200', 'AMILKAR CRUZ', '7500000', '2022-03-25 01:36:54', '2022-03-25 01:37:15'),
(60, 174, 1, 87, 320, '2', '2', '2', 'CONTENT60', 30.00, 150.00, '{\"5becc464a3652f58c65b8e382ba11b01\":{\"rowId\":\"5becc464a3652f58c65b8e382ba11b01\",\"id\":819,\"name\":\"ARO DE LUZ LED\",\"qty\":2,\"price\":60,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/products\\/GHB4BmU5YfaMpzR2JXRh3KF8DEqeSH70KW86nmz8.jpg\"},\"discount\":0,\"tax\":12.6,\"subtotal\":120}}', 'Del 1er a 4to anillo - Zona Este. | Dirección: Av. Paragua 2060 Casa. Reja Verde.', 'PAM', 'GUTIERREZ', '3333333', 'duabyakosky.pam@gmail.com', '70001212', 'PAM GUTIERREZ', '3333333', '2022-05-10 03:33:48', '2022-05-10 03:34:10'),
(61, 175, 1, 87, 320, '2', '2', '2', 'CONTENT61', 30.00, 150.00, '{\"9a000a089b88373df243caf07cb98e9b\":{\"rowId\":\"9a000a089b88373df243caf07cb98e9b\",\"id\":821,\"name\":\"ARO DE LUZ\",\"qty\":3,\"price\":40,\"weight\":500,\"options\":{\"image\":\"\\/storage\\/product\\/0yqCmwupaCjMZthg7WRhTAIfHen80hXtVmkO48n2.jpg\"},\"discount\":0,\"tax\":8.4,\"subtotal\":120}}', 'Del 1er a 4to anillo - Zona Sur. | Dirección: Av Paragua Casa. Verja Naranja.', 'MARIA', 'CARRILLO', '9898989', 'pmcarrillo@gmail.com', '70000128', 'MARIA CARRILLO', '9898989', '2022-05-11 01:37:16', '2022-05-11 01:37:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pay_methods`
--

CREATE TABLE `pay_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pay_methods`
--

INSERT INTO `pay_methods` (`id`, `name`) VALUES
(1, 'Tarjeta Crédito / Debito / QR'),
(2, 'Contra Entrega');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'product.index', 'web', '2021-10-26 00:56:06', '2021-10-27 02:14:47'),
(2, 'product.create', 'web', '2021-10-26 01:18:01', '2021-10-27 04:17:57'),
(3, 'product.edit', 'web', '2021-10-26 17:33:07', '2021-10-27 01:09:47'),
(4, 'product.update-state', 'web', '2021-10-26 17:33:29', '2021-10-27 01:10:12'),
(5, 'product.update', 'web', '2021-10-27 01:10:27', '2021-10-27 04:27:50'),
(6, 'order.index', 'web', '2021-10-27 01:10:56', '2021-10-27 01:10:56'),
(7, 'order.show', 'web', '2021-10-27 01:11:27', '2021-10-27 01:11:27'),
(8, 'order.update-state', 'web', '2021-10-27 01:11:39', '2021-10-27 01:11:39'),
(9, 'category.index', 'web', '2021-10-27 01:11:59', '2021-10-27 01:11:59'),
(10, 'category.store', 'web', '2021-10-27 01:12:11', '2021-10-27 01:12:11'),
(11, 'category.update', 'web', '2021-10-27 01:12:30', '2021-10-27 01:12:30'),
(12, 'category.delete', 'web', '2021-10-27 01:12:50', '2021-10-27 01:12:50'),
(13, 'subcategory.index', 'web', '2021-10-27 01:13:08', '2021-10-27 01:13:08'),
(14, 'subcategory.store', 'web', '2021-10-27 01:13:14', '2021-10-27 01:13:14'),
(15, 'subcategory.update', 'web', '2021-10-27 01:13:37', '2021-10-27 01:13:37'),
(16, 'subcategory.delete', 'web', '2021-10-27 01:13:44', '2021-10-27 01:13:44'),
(17, 'brand.index', 'web', '2021-10-27 01:13:55', '2021-10-27 01:13:55'),
(18, 'brand.store', 'web', '2021-10-27 01:14:08', '2021-10-27 01:14:08'),
(19, 'brand.update', 'web', '2021-10-27 01:14:21', '2021-10-27 01:14:21'),
(20, 'brand.delete', 'web', '2021-10-27 01:14:30', '2021-10-27 01:14:30'),
(21, 'departament.index', 'web', '2021-10-27 01:14:44', '2021-10-27 01:14:44'),
(22, 'departament.store', 'web', '2021-10-27 01:15:05', '2021-10-27 01:15:05'),
(23, 'departament.update', 'web', '2021-10-27 01:15:18', '2021-10-27 01:15:18'),
(24, 'province.index', 'web', '2021-10-27 01:16:40', '2021-10-27 01:16:40'),
(25, 'province.store', 'web', '2021-10-27 01:16:45', '2021-10-27 01:16:45'),
(26, 'province.update', 'web', '2021-10-27 01:16:53', '2021-10-27 01:16:53'),
(27, 'municipality.index', 'web', '2021-10-27 01:18:52', '2021-10-27 01:18:52'),
(28, 'municipality.store', 'web', '2021-10-27 01:18:57', '2021-10-27 01:18:57'),
(29, 'municipality.update', 'web', '2021-10-27 01:19:06', '2021-10-27 01:19:06'),
(30, 'user.index', 'web', '2021-10-27 01:19:24', '2021-10-27 02:24:49'),
(31, 'user.edit', 'web', '2021-10-27 01:19:30', '2021-10-27 01:19:30'),
(32, 'user.update', 'web', '2021-10-27 01:19:38', '2021-10-27 01:19:38'),
(33, 'rol.index', 'web', '2021-10-27 01:19:49', '2021-10-27 01:19:49'),
(34, 'rol.store', 'web', '2021-10-27 01:19:59', '2021-10-27 01:19:59'),
(35, 'rol.update', 'web', '2021-10-27 01:20:35', '2021-10-27 01:20:35'),
(36, 'privilege.index', 'web', '2021-10-27 01:21:01', '2021-10-27 01:21:01'),
(37, 'privilege.store', 'web', '2021-10-27 01:21:11', '2021-10-27 01:21:11'),
(38, 'privilege.update', 'web', '2021-10-27 01:21:19', '2021-10-27 01:21:19'),
(39, 'product.image-delete', 'web', '2021-10-27 04:21:22', '2021-10-27 04:21:22'),
(40, 'product.image-upload', 'web', '2021-10-27 04:29:41', '2021-10-27 04:29:41'),
(41, 'rol.edit', 'web', '2021-10-27 04:38:15', '2021-10-27 06:03:35'),
(42, 'product.store', 'web', '2021-11-25 18:38:25', '2021-11-25 18:38:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `sku` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(12,2) NOT NULL,
  `offer_price` double(8,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `status` enum('1','2','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `subcategory_id`, `brand_id`, `sku`, `name`, `slug`, `description`, `price`, `offer_price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 47, 'LHALMKLI0000001', '2 X ALMOHADA LIFE 70 X 50 CM', 'LHALMKLI0000001', '<p>Almohada con relleno de fibra siliconada regenerada con textura suave, ideal para el descanso c&oacute;modo y placentero. Es antihongos, antialergica y anti&aacute;caros.</p>\n<p><strong>MEDIDA PARA FUNDA</strong></p>\n<p>50x70cm / Altura(*) 15cm</p>\n<p><strong>PESO</strong><br />600gr</p>\n<p><strong>RELLENO</strong><br />Fibra siliconada</p>\n<p><strong>FUNDA</strong><br />100% poli&eacute;ster</p>\n<p><strong>CARACTER&Iacute;STICAS</strong><br />Automoldeable, hipoalerg&eacute;nico, c&oacute;nfort y suavidad.</p>', 89.00, NULL, 15, '1', '0000-00-00 00:00:00', '2021-12-23 03:40:10'),
(2, 6, 47, 'LHALMKFI0000001', '2 X ALMOHADA MAXI KING FIBRA 70X45CM. 700GR', 'LHALMKFI0000001', '<p><strong>MEDIDA PARA FUNDA</strong><br />70x45cm / Altura(*) 17cm Peso: 700gr</p>\n<p><strong>CARACTER&Iacute;STICAS</strong><br />Suave, hipoalerg&eacute;nico, resistente, higi&eacute;nico, inodoro y antipolilla.</p>\n<p><strong>ANTI &Aacute;CARO</strong></p>\n<p><strong>RELLENO</strong><br />100% Fibra virgen silconizada</p>\n<p><strong>FUNDA</strong><br />Tela percal 140 hilos, 50% algod&oacute;n y 50% poli&eacute;ster</p>', 109.00, 99.00, 15, '1', '0000-00-00 00:00:00', '2021-11-18 00:47:05'),
(3, 6, 47, 'LHALMKMF0000001', '2 X ALMOHADA MAXIKING MEMORY FOAM MEDIUM MK014', 'LHALMKMF0000001', '<p><strong>MEDIDA PARA FUNDA</strong><br />50x70cm / Altura 14cm</p>\n<p><strong>PESO</strong><br />900gr</p>\n<p><strong>ESPUMA</strong><br />Viscoel&aacute;stica NASA</p>\n<p><strong>FUNDA</strong><br />100% Algod&oacute;n</p>\n<p><strong>CARACTER&Iacute;STICAS</strong><br />Automoldeable, termosensible y antipresi&oacute;n.</p>\n<p><strong>ANTI &Aacute;CAROS</strong></p>\n<p><strong>MOLDEABLE</strong></p>\n<p><strong>GARANT&Iacute;A</strong></p>', 179.00, NULL, 15, '1', '0000-00-00 00:00:00', '2021-11-18 00:47:27'),
(4, 1, 20, 'LGAUHVB00000017', 'AUDIFONOS HAVIT E48P BLACK', 'LGAUHVB00000017', '<h3>AURICULARES EST&Eacute;REOS TIPO BOTONES CON MANOS LIBRES HV-E48P</h3>\n<ol>\n<li>Unidad de altavoz de 10mm. para calibraci&oacute;n de deportes.</li>\n<li>Bot&oacute;n multifunci&oacute;n: presi&oacute;nelo para contestar llamadas entrantes, seleccionar canciones, para reproducir o pausar y otras funciones.</li>\n<li>Cable TPE de alta calidad con una interfaz de audio de 3,5 mm, conveniente para escuchar m&uacute;sica o ver pel&iacute;culas.</li>\n<li>Alta calidad de sonido.</li>\n<li>Adecuados para smartphones y escuchar m&uacute;sica en computadora CRT y computadora port&aacute;til.</li>\n<li>Con cancelaci&oacute;n de ruido exterior.</li>\n</ol>', 39.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 20, 'LGAUHVBL0000003', 'AUDIFONOS HAVIT E48P BLUE', 'LGAUHVBL0000003', '<h3>AURICULARES EST&Eacute;REOS TIPO BOTONES CON MANOS LIBRES HV-E48P</h3>\n<ol>\n<li>Unidad de altavoz de 10mm. para calibraci&oacute;n de deportes.</li>\n<li>Bot&oacute;n multifunci&oacute;n: presi&oacute;nelo para contestar llamadas entrantes, seleccionar canciones, para reproducir o pausar y otras funciones.</li>\n<li>Cable TPE de alta calidad con una interfaz de audio de 3,5 mm, conveniente para escuchar m&uacute;sica o ver pel&iacute;culas.</li>\n<li>Alta calidad de sonido.</li>\n<li>Adecuados para smartphones y escuchar m&uacute;sica en computadora CRT y computadora port&aacute;til.</li>\n<li>Con cancelaci&oacute;n de ruido exterior.</li>\n</ol>', 39.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 20, 'LGAUHVR00000004', 'AUDIFONOS HAVIT E48P RED', 'LGAUHVR00000004', '<h3>AURICULARES EST&Eacute;REOS TIPO BOTONES CON MANOS LIBRES HV-E48P</h3>\n<ol>\n<li>Unidad de altavoz de 10mm. para calibraci&oacute;n de deportes.</li>\n<li>Bot&oacute;n multifunci&oacute;n: presi&oacute;nelo para contestar llamadas entrantes, seleccionar canciones, para reproducir o pausar y otras funciones.</li>\n<li>Cable TPE de alta calidad con una interfaz de audio de 3,5 mm, conveniente para escuchar m&uacute;sica o ver pel&iacute;culas.</li>\n<li>Alta calidad de sonido.</li>\n<li>Adecuados para smartphones y escuchar m&uacute;sica en computadora CRT y computadora port&aacute;til.</li>\n<li>Con cancelaci&oacute;n de ruido exterior.</li>\n</ol>', 39.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 20, 'LGAUHVW00000001', 'AUDIFONOS HAVIT E48P WHITE', 'LGAUHVW00000001', '<h3>AURICULARES EST&Eacute;REOS TIPO BOTONES CON MANOS LIBRES HV-E48P</h3>\n<ol>\n<li>Unidad de altavoz de 10mm. para calibraci&oacute;n de deportes.</li>\n<li>Bot&oacute;n multifunci&oacute;n: presi&oacute;nelo para contestar llamadas entrantes, seleccionar canciones, para reproducir o pausar y otras funciones.</li>\n<li>Cable TPE de alta calidad con una interfaz de audio de 3,5 mm, conveniente para escuchar m&uacute;sica o ver pel&iacute;culas.</li>\n<li>Alta calidad de sonido.</li>\n<li>Adecuados para smartphones y escuchar m&uacute;sica en computadora CRT y computadora port&aacute;til.</li>\n<li>Con cancelaci&oacute;n de ruido exterior.</li>\n</ol>', 39.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 20, 'LGAUHVB00000011', 'AUDIFONOS HAVIT E86 NEGRO CON MICROFONO', 'LGAUHVB00000011', '<h3>Auricular con Micr&oacute;fono Havit HV-E86P &ndash; Negro</h3>\n<ol>\n<li>Cable de 120 cm de largo.</li>\n<li>Gomitas del auricular intercambiables.</li>\n<li>Conexi&oacute;n de 3.5 mm.</li>\n<li>Resistencia: 16 ohmios.</li>\n<li>Respuesta de frecuencia: 20Hz-20 KHz.</li>\n<li>Micr&oacute;fono y bot&oacute;n para atender llamadas incorporado.</li>\n</ol>', 39.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 20, 'LGAUHVBG0000002', 'AUDIFONOS HAVIT G1 NEGRO CON GRIS/ INALAMBRICO/ BLUETOOTH / FALLPROF', 'LGAUHVBG0000002', '<h3>Auriculares Inal&aacute;mbricos/Bluetooth</h3>\n<ol>\n<li>Nuevo dise&ntilde;o ergon&oacute;mico y sin ca&iacute;das. Pesa solo 4.9g, lo que los hace ultra ligeros. Su material en silicona garantiza un uso c&oacute;modo durante mucho tiempo.</li>\n<li>Bluetooth V. 5.0 + BLE. Su conexi&oacute;n Bluetooth ofrece una calidad de sonido de alta fidelidad.</li>\n<li>Duraci&oacute;n: 21 horas de m&uacute;sica ininterrumpida. El estuche de carga de 720mAh puede cargar los auriculares 5 veces en una sola carga.</li>\n<li>Funcionamiento: Los auriculares funcionan mediante toques.<br />Control de voz con Siri y Google Assistant.</li>\n<li>Sistema IPX6. Est&aacute;n dise&ntilde;ados con un material resistente al agua y al polvo de alta calidad que proporciona, a su vez, un dise&ntilde;o ergon&oacute;mico, exclusivo e innovador.</li>\n<li>Emparejamiento perfecto de los auriculares pudi&eacute;ndose configurar como stereo o mono.</li>\n<li>Caja de carga inal&aacute;mbrica. Los auriculares se cargan en su peque&ntilde;a caja de carga. Es posible cargar la caja mediante una base de carga QI inal&aacute;mbrica.</li>\n<li>Avisa de la carga completa mediante indicadores de luz. Duraci&oacute;n de la carga: sobre 2 horas.</li>\n<li>Uso. Son ideales tanto para practicar deporte como para pasear mientras escuchas m&uacute;sica sin darte apenas cuenta de que los llevas puesto. La versi&oacute;n G1 PRO est&aacute; espec&iacute;ficamente dise&ntilde;ada para deportes de alta intensidad como boxeo.</li>\n</ol>', 799.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 20, 'LGAUHVBR0000001', 'AUDIFONOS HAVIT G1 NEGRO CON ROJO/ INALAMBRICO/ BLUETOOTH/ FALLPROF', 'LGAUHVBR0000001', '<h3><strong>Auriculares Inalámbricos/Bluetooth</strong></h3><ol><li>Nuevo diseño ergonómico y sin caídas. Pesa solo 4.9g, lo que los hace ultra ligeros. Su material en silicona garantiza un uso cómodo durante mucho tiempo.</li><li>Bluetooth V. 5.0 + BLE. Su conexión Bluetooth ofrece una calidad de sonido de alta fidelidad.</li><li>Duración: 21 horas de música ininterrumpida. El estuche de carga de 720mAh puede cargar los auriculares 5 veces en una sola carga.</li><li>Funcionamiento: Los auriculares funcionan mediante toques.<br>Control de voz con Siri y Google Assistant.</li><li>Sistema IPX6. Están diseñados con un material resistente al agua y al polvo de alta calidad que proporciona, a su vez, un diseño ergonómico, exclusivo e innovador.</li><li>Emparejamiento perfecto de los auriculares pudiéndose configurar como stereo o mono.</li><li>Caja de carga inalámbrica. Los auriculares se cargan en su pequeña caja de carga. Es posible cargar la caja mediante una base de carga QI inalámbrica.</li><li>Avisa de la carga completa mediante indicadores de luz. Duración de la carga: sobre 2 horas.</li><li>Uso. Son ideales tanto para practicar deporte como para pasear mientras escuchas música sin darte apenas cuenta de que los llevas puesto. La versión G1 PRO está específicamente diseñada para deportes de alta intensidad como boxeo.</li></ol>', 799.00, NULL, 15, '1', '0000-00-00 00:00:00', '2021-10-22 19:24:35'),
(11, 1, 20, 'LGAUHVB00000016', 'AUDIFONOS HAVIT H2178D BLACK', 'LGAUHVB00000016', '<h3>Auricular Havit HV-H2178D Est&eacute;reo</h3>\n<ol>\n<li>Cable de 1.2 metros</li>\n<li>Almohadilla de 40 mm de di&aacute;metro</li>\n<li>Conexi&oacute;n de 3.5 mm</li>\n<li>Resistencia: 32 ohmios</li>\n<li>Respuesta de frecuencia: 20Hz-20 KHz</li>\n</ol>', 69.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 20, 'LGAUHVBL0000002', 'AUDIFONOS HAVIT H2178D BLUE', 'LGAUHVBL0000002', '<h3>Auricular Havit HV-H2178D Est&eacute;reo</h3>\n<ol>\n<li>Cable de 1.2 metros</li>\n<li>Almohadilla de 40 mm de di&aacute;metro</li>\n<li>Conexi&oacute;n de 3.5 mm</li>\n<li>Resistencia: 32 ohmios</li>\n<li>Respuesta de frecuencia: 20Hz-20 KHz</li>\n</ol>', 69.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 20, 'LGAUHVR00000003', 'AUDIFONOS HAVIT H2178D RED', 'LGAUHVR00000003', '<h3>Auricular Havit HV-H2178D Est&eacute;reo</h3>\n<ol>\n<li>Cable de 1.2 metros</li>\n<li>Almohadilla de 40 mm de di&aacute;metro</li>\n<li>Conexi&oacute;n de 3.5 mm</li>\n<li>Resistencia: 32 ohmios</li>\n<li>Respuesta de frecuencia: 20Hz-20 KHz</li>\n</ol>', 69.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, 20, 'LGAUHVB00000007', 'AUDIFONOS HAVIT H2587BT NEGRO / BLUETOOTH / CON LUCES LED', 'LGAUHVB00000007', '<h3>AURICULARES BLUETOOTH V4.2 TF AUX RETROILUMINADO CON LUCES LED HV-H2587BT</h3>\n<ol>\n<li>Cuenta con dise&ntilde;o de auricular completamente cerrado, lo que mejora el aislamiento ac&uacute;stico, luz LED.</li>\n<li>Multifunci&oacute;n: funci&oacute;n Bluetooth, funci&oacute;n de tarjeta micro SD incorporada y toma AUX de 3,5 mm.</li>\n<li>Almohadillas de algod&oacute;n con espuma de memoria ultra suave con banda de sujeci&oacute;n ajustable y resistente que garantiza un uso c&oacute;modo durante mucho tiempo.</li>\n<li>La combinaci&oacute;n de altavoces din&aacute;micos de 40mm con Bluetooth V4.2 de alta gama garantiza audio de alta fidelidad.</li>\n</ol>', 249.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 1, 20, 'LGAUHVB00000003', 'AUDIFONOS HAVIT H969BT NEGRO/ BLUETOOTH / ALTAVOZ / SALIDA DE AUDIO OPTIMIZADA', 'LGAUHVB00000003', '<p><strong>Auriculares intrauditivos e inal&aacute;mbricos tipo deporte con banda en el cuello.</strong>&nbsp;Cuenta con controladores multimedia y bot&oacute;n para atender llamadas. Conectividad inal&aacute;mbrica Bluetooth 4.2 de hasta 10 metros. Carga v&iacute;a conexi&oacute;n MicroUSB (DC5V-500mA). Bater&iacute;a de pol&iacute;mero de litio.</p>\n<p class=\"p1\"><strong>Especificaciones T&eacute;cnicas:</strong></p>\n<p class=\"p1\">Modelo: HV-H969BT</p>\n<p class=\"p1\">Color: negro, gris</p>\n<p class=\"p2\">Dimensiones85*1.3*2.3cm</p>\n<p class=\"p2\">Altavoz:10mm</p>\n<p class=\"p2\">Tiempo de reproducci&oacute;n:7H</p>\n<p class=\"p2\">Tiempo de llamadas:7H</p>\n<p class=\"p2\">Tiempo de carga:3h</p>\n<p class=\"p2\">Tiempo de espera :240h</p>\n<p class=\"p2\">Bater&iacute;a:135mAh</p>\n<p class=\"p1\"><strong>Seguridad del producto</strong></p>\n<p>Este producto est&aacute; sujeto a instrucciones y advertencias de seguridad.</p>', 209.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 1, 20, 'LGAUHV000000002', 'AUDIFONOS HAVIT HV-H2575BT GRIS CON AZUL / FM / MP3 / BLUETOOTH', 'LGAUHV000000002', '<h3>Auriculares est&eacute;reos bluetooth FM/MP3 HV-H2575BT.</h3>\n<ol>\n<li>La reducci&oacute;n de ruido de estos auriculares garantiza una calidad excelente del sonido.</li>\n<li>Es compatible con todos los smartphones Android, iPhone, tablets, etc.</li>\n<li>Su correa ajustable proporciona un buen agarre, sin da&ntilde;ar a los o&iacute;dos, y gracias a su dise&ntilde;o plegable, permite ahorrar espacio en la mochila o el bolso. &iexcl;Son ideales para viajar! Viene con un conector de audio de 3,5 mm y un cable jack 3,5 mm, con funci&oacute;n FM para captar las emisoras de radio.</li>\n</ol>', 178.97, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 1, 20, 'LGAUHVBR0000015', 'AUDIFONOS HAVIT HV-H2575BT NEGRO CON ROJO/FM / MP3 / BLUETOOTH', 'LGAUHVBR0000015', '<h3>Auriculares est&eacute;reos bluetooth FM/MP3 HV-H2575BT.</h3>\n<ol>\n<li>La reducci&oacute;n de ruido de estos auriculares garantiza una calidad excelente del sonido.</li>\n<li>Es compatible con todos los smartphones Android, iPhone, tablets, etc.</li>\n<li>Su correa ajustable proporciona un buen agarre, sin da&ntilde;ar a los o&iacute;dos, y gracias a su dise&ntilde;o plegable, permite ahorrar espacio en la mochila o el bolso. &iexcl;Son ideales para viajar! Viene con un conector de audio de 3,5 mm y un cable jack 3,5 mm, con funci&oacute;n FM para captar las emisoras de radio.</li>\n</ol>', 180.73, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 1, 20, 'LGAUHVB00000006', 'AUDIFONOS HAVIT HV-H2575BT NEGRO/ FM / MP3 / BLUETOOTH', 'LGAUHVB00000006', '<h3>Auriculares est&eacute;reos bluetooth FM/MP3 HV-H2575BT.</h3>\n<ol>\n<li>La reducci&oacute;n de ruido de estos auriculares garantiza una calidad excelente del sonido.</li>\n<li>Es compatible con todos los smartphones Android, iPhone, tablets, etc.</li>\n<li>Su correa ajustable proporciona un buen agarre, sin da&ntilde;ar a los o&iacute;dos, y gracias a su dise&ntilde;o plegable, permite ahorrar espacio en la mochila o el bolso. &iexcl;Son ideales para viajar! Viene con un conector de audio de 3,5 mm y un cable jack 3,5 mm, con funci&oacute;n FM para captar las emisoras de radio.</li>\n</ol>', 179.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 1, 20, 'LGAUHVGG0000001', 'AUDIFONOS HAVIT HV-H2575BT VERDE CON GRIS / FM/ MP3 / BLUETOOTH', 'LGAUHVGG0000001', '<h3>Auriculares est&eacute;reos bluetooth FM/MP3 HV-H2575BT.</h3>\n<ol>\n<li>La reducci&oacute;n de ruido de estos auriculares garantiza una calidad excelente del sonido.</li>\n<li>Es compatible con todos los smartphones Android, iPhone, tablets, etc.</li>\n<li>Su correa ajustable proporciona un buen agarre, sin da&ntilde;ar a los o&iacute;dos, y gracias a su dise&ntilde;o plegable, permite ahorrar espacio en la mochila o el bolso. &iexcl;Son ideales para viajar! Viene con un conector de audio de 3,5 mm y un cable jack 3,5 mm, con funci&oacute;n FM para captar las emisoras de radio.</li>\n</ol>', 179.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 1, 20, 'LGAUHVG00000003', 'AUDIFONOS HAVIT HV-H2575BT VERDE MILITAR  FM / MP3 / BLUETOOTH', 'LGAUHVG00000003', '<h3>Auriculares est&eacute;reos bluetooth FM/MP3 HV-H2575BT.</h3>\n<ol>\n<li>La reducci&oacute;n de ruido de estos auriculares garantiza una calidad excelente del sonido.</li>\n<li>Es compatible con todos los smartphones Android, iPhone, tablets, etc.</li>\n<li>Su correa ajustable proporciona un buen agarre, sin da&ntilde;ar a los o&iacute;dos, y gracias a su dise&ntilde;o plegable, permite ahorrar espacio en la mochila o el bolso. &iexcl;Son ideales para viajar! Viene con un conector de audio de 3,5 mm y un cable jack 3,5 mm, con funci&oacute;n FM para captar las emisoras de radio.</li>\n</ol>', 181.71, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 1, 20, 'LGAUHVG00000001', 'AUDIFONOS HAVIT HV-H987BT GRIS / ALTAVOZ / BLUETOOTH', 'LGAUHVG00000001', NULL, 329.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 1, 20, 'LGAUHVB00000005', 'AUDIFONOS HAVIT HV-H987BT NEGRO / ALTAVOZ / BLUETOOTH', 'LGAUHVB00000005', '<p>Cuenta con un dise&ntilde;o ergon&oacute;mico que garantiza que no se caigan durante la pr&aacute;ctica deportiva. Son ultra ligeros debido a su fabricaci&oacute;n en silicona. La combinaci&oacute;n de altavoces din&aacute;micos, control remoto en la banda con la &uacute;ltima tecnolog&iacute;a Bluetooth V4.2 garantiza una alta fidelidad de sonido.<br />Especialmente dise&ntilde;ado para amantes de los deportes; el compa&ntilde;ero de m&uacute;sica perfecto para practicar running.</p>\n<p><strong>Especificaciones T&eacute;cnicas:</strong></p>\n<p class=\"p1\"><span class=\"s1\">Versi&oacute;n Bluetooth: V4.2 + edr</span></p>\n<p class=\"p1\"><span class=\"s1\">Longitud del cable</span><span class=\"s2\">:</span><span class=\"s1\" data-spm-anchor-id=\"a2g0o.detail.1000023.i2.3b647b96iTPGEP\">-255mm &plusmn; 2mm</span></p>\n<p class=\"p1\"><span class=\"s1\">Material principal: s&iacute;lice gel-395mm x 11mm x 15mm</span></p>\n<p class=\"p1\"><span class=\"s1\">Peso neto: 32,8g</span></p>\n<p class=\"p1\"><span class=\"s1\">Rango de funcionamiento inal&aacute;mbrico: 10 m (sin obst&aacute;culos)</span></p>\n<p class=\"p1\"><span class=\"s1\">Altavoz: &Phi; 10mm * 2</span></p>\n<p class=\"p1\"><span class=\"s1\">Altavoz de frecuencia: 20hz ~ 20khz</span></p>\n<p class=\"p1\"><span class=\"s1\">Corriente de entrada: Dc 5v / 1a</span></p>\n<p class=\"p1\"><span class=\"s1\">Bater&iacute;a: 3,7 v / 135mah</span></p>\n<p class=\"p1\"><span class=\"s1\" data-spm-anchor-id=\"a2g0o.detail.1000023.i3.3b647b96iTPGEP\">Tiempo de reproducci&oacute;n: hasta 8h</span></p>\n<p class=\"p1\"><span class=\"s1\">Tiempo de conversaci&oacute;n: hasta 8h</span></p>\n<p class=\"p1\"><span class=\"s1\">Tiempo en espera: Hasta 150h</span></p>\n<p class=\"p1\" data-spm-anchor-id=\"a2g0o.detail.1000023.i5.3b647b96iTPGEP\"><span class=\"s1\" data-spm-anchor-id=\"a2g0o.detail.1000023.i4.3b647b96iTPGEP\">Tiempo de carga: aproximadamente 1,5 h</span></p>\n<p class=\"p1\"><strong>Seguridad del producto</strong></p>\n<p>Este producto est&aacute; sujeto a instrucciones y advertencias de seguridad.</p>', 329.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 1, 20, 'LGAUHVB00000013', 'AUDIFONOS HAVIT I37 BLACK', 'LGAUHVB00000013', NULL, 139.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 1, 20, 'LGAUHVBOOOOOO12', 'AUDIFONOS HAVIT I37S BLACK', 'LGAUHVBOOOOOO12', '<p>1.IPX5 resistente al agua y al sudor: protege eficazmente los auriculares del sudor para una vida &uacute;til m&aacute;s larga.<br />2.Estructura de banda para el cuello, dise&ntilde;o de auriculares ultradelgado e inclinado, c&oacute;modo de llevar.<br />3.Bater&iacute;a recargable de gran capacidad incorporada de 120 mAh, puede funcionar durante 12 horas con una sola carga.<br />4.Altavoz din&aacute;mico y el &uacute;ltimo Bluetooth V5.0 para un sonido de alta calidad y graves profundos y ricos..</p>\n<p><strong>Especificaciones T&eacute;cnicas:</strong></p>\n<table class=\"table table-responsive table-striped table-hover\">\n<tbody>\n<tr>\n<th>Chip</th>\n<td>\n<p>BK3266</p>\n</td>\n</tr>\n<tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_bluetooth-version\">\n<th class=\"woocommerce-product-attributes-item__label\">Versi&oacute;n de Bluetooth</th>\n<td class=\"woocommerce-product-attributes-item__value\">\n<p>V5.0</p>\n</td>\n</tr>\n<tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_battery\">\n<th class=\"woocommerce-product-attributes-item__label\">Bater&iacute;a</th>\n<td class=\"woocommerce-product-attributes-item__value\">\n<p>120 mAh</p>\n</td>\n</tr>\n<tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_bluetooth-working-frequency\">\n<th class=\"woocommerce-product-attributes-item__label\">Frecuencia de trabajo de Bluetooth</th>\n<td class=\"woocommerce-product-attributes-item__value\">\n<p>2402 MHz-2480 MHz</p>\n</td>\n</tr>\n<tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_wireless-working-range\">\n<th class=\"woocommerce-product-attributes-item__label\">Alcance de trabajo inal&aacute;mbrico:</th>\n<td class=\"woocommerce-product-attributes-item__value\">\n<p>10M (sin obst&aacute;culos)</p>\n</td>\n</tr>\n<tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_profiles%c2%a0supported\">\n<th class=\"woocommerce-product-attributes-item__label\">Perfiles admitidos:</th>\n<td class=\"woocommerce-product-attributes-item__value\">\n<p>HFP, A2DP, AVRCP</p>\n</td>\n</tr>\n<tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_speakersensitivity\">\n<th class=\"woocommerce-product-attributes-item__label\">Sensibilidad del altavoz</th>\n<td class=\"woocommerce-product-attributes-item__value\">\n<p>95 &plusmn; 3dB, 1 KHz a 1 mW</p>\n</td>\n</tr>\n<tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_impedance\">\n<th class=\"woocommerce-product-attributes-item__label\">Impedancia</th>\n<td class=\"woocommerce-product-attributes-item__value\">\n<p>16&Omega; &plusmn; 15%</p>\n</td>\n</tr>\n<tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_speakerfrequency\">\n<th class=\"woocommerce-product-attributes-item__label\">Frecuencia de altavoz</th>\n<td class=\"woocommerce-product-attributes-item__value\">\n<p>20 Hz ï½ž 20 KHz</p>\n</td>\n</tr>\n<tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_input-voltagecurrent\">\n<th class=\"woocommerce-product-attributes-item__label\">Voltaje / corriente de entrada</th>\n<td class=\"woocommerce-product-attributes-item__value\">\n<p>DC5V / 200mA</p>\n</td>\n</tr>\n<tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_playtime\">\n<th class=\"woocommerce-product-attributes-item__label\">Tiempo de juego:</th>\n<td class=\"woocommerce-product-attributes-item__value\">\n<p>10H</p>\n</td>\n</tr>\n<tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_talk-time\">\n<th class=\"woocommerce-product-attributes-item__label\">Tiempo de conversaci&oacute;n</th>\n<td class=\"woocommerce-product-attributes-item__value\">\n<p>12H</p>\n</td>\n</tr>\n<tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_charging-time\">\n<th class=\"woocommerce-product-attributes-item__label\">Tiempo de carga</th>\n<td class=\"woocommerce-product-attributes-item__value\">\n<p>1,5 H</p>\n</td>\n</tr>\n<tr class=\"woocommerce-product-attributes-item woocommerce-product-attributes-item--attribute_standby-time\">\n<th class=\"woocommerce-product-attributes-item__label\">Tiempo de espera</th>\n<td class=\"woocommerce-product-attributes-item__value\">\n<p>150H</p>\n</td>\n</tr>\n</tbody>\n</table>', 179.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 1, 20, 'LGAUHVBR0000014', 'AUDIFONOS HAVIT I96 BLACK/RED', 'LGAUHVBR0000014', '<h3>Sonido de bajos profundos HD</h3>\n<p>Los controladores de los altavoces de diafragma de 6mm de Titanio y el chipset de alta gama Airoha1526 en los I96 True Wireless Earphones no s&oacute;lo proporcionan una experiencia de audio clara e ininterrumpida, sino que tambi&eacute;n han sido cuidadosamente ajustados para optimizar la precisi&oacute;n de audio en cada frecuencia y optimizado para una m&aacute;xima fidelidad.</p>\n<h3>Bluetooth 5.0</h3>\n<p>Con la &uacute;ltima tecnolog&iacute;a Bluetooth 5.0, la conexi&oacute;n Bluetooth de los Auriculares Inal&aacute;mbricos Verdaderos I96 no s&oacute;lo es m&aacute;s estable que la 4.0, lo que reduce el consumo de energ&iacute;a, sino que tambi&eacute;n proporciona una r&aacute;pida funcionalidad de emparejamiento.</p>\n<h3>IPX5 a prueba de agua</h3>\n<p>La tecnolog&iacute;a IPX5 a prueba de agua de los auriculares I96 True Wireless puede mantener un uso normal incluso durante el sudor, la lluvia o cualquier actividad al aire libre (no se recomienda para los cruceros de alta velocidad).</p>\n<h3>Botones f&iacute;sicos en los auriculares</h3>\n<p>Evita los toques accidentales mientras se usa para que el volumen del auricular no suba repentinamente</p>\n<h3>F&aacute;cil de usar y s&uacute;per port&aacute;til</h3>\n<p>S&oacute;lo tienes que sacarlo del estuche de carga &ndash; se encender&aacute; autom&aacute;ticamente y se conectar&aacute; al &uacute;ltimo dispositivo emparejado. Con el bot&oacute;n MFB, puedes cortar canciones sin esfuerzo, rechazar llamadas, llamar a asistentes de voz, etc.</p>\n<h3>10 horas de juego</h3>\n<p>Las bater&iacute;as de litio integradas y mejoradas de los auriculares I96 True Wireless proporcionan 3,5 horas de tiempo de reproducci&oacute;n por carga, y el estuche de carga proporciona alrededor de 2 cargas adicionales. La luz indicadora le permite comprobar la bater&iacute;a restante en cualquier momento.</p>\n<h3>Micr&oacute;fono de alta definici&oacute;n para llamar</h3>\n<p>Utiliza el micr&oacute;fono incorporado de alta definici&oacute;n para hacer llamadas telef&oacute;nicas a trav&eacute;s de los auriculares inal&aacute;mbricos HavitI96 True Wireless.</p>\n<h3>Modo Est&eacute;reo y Modo Mono</h3>\n<p>Aunque puede usar los auriculares I96 True Wireless como auriculares est&eacute;reo normales de dos caras (Modo Est&eacute;reo), tambi&eacute;n puede usar uno de los auriculares individualmente, o emparejarlos con diferentes tel&eacute;fonos por separado (Modo Mono)</p>', 429.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 1, 49, 'LGAUP4TB0000002', 'AUDIFONOS P/ PS4 TURTLE BEACH RECON 50X WHITE HEADSET', 'LGAUP4TB0000002', '<h3>AUDIFONO TURTLE BEACH RECON 50X</h3>\n<p>&Aacute;lzate con victorias, consigue logros y mucho m&aacute;s con los auriculares para juego RECON 70 de TURTLE BEACH&reg; con licencia oficial para Xbox One. Cuentan con el dise&ntilde;o de auriculares puntero, c&oacute;modo y ligero de Turtle Beach para jugar durante horas, altavoces de 40 mm de alta calidad y almohadillas exteriores de piel sint&eacute;tica premium que te permiten escuchar agudos cristalinos y graves potentes al tiempo que aten&uacute;an el ruido. El reconocido micr&oacute;fono de alta sensibilidad de Turtle Beach hace que se te escuche alto y claro, y se abate f&aacute;cilmente para silenciarlo.</p>\n<p>Los RECON 70 tambi&eacute;n ofrecen sonido envolvente para Xbox y son compatibles con PC con Windows 10, adem&aacute;s de estar optimizados para el potente Windows Sonic de Microsoft para auriculares. Por &uacute;ltimo, la conexi&oacute;n de 3,5 mm es perfecta para usarlos con controles de Xbox One, PS4&trade;, Nintendo Switch, PC y dispositivos m&oacute;viles compatibles.</p>', 249.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 1, 49, 'LGAUP4TB0000001', 'AUDIFONOS P/PS4 TURTLE BEACH EAR FORCE RECON 50P NEGRO CON AZUL', 'LGAUP4TB0000001', NULL, 249.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 1, 47, 'LGAUSYL00000011', 'AUDIFONOS SONY AZUL WH-CH500/LC SIN CABLES / BLUETOOTH / NFC/ LLAMADAS LIBRES / ASISTENTE DE VOZ / GITARORIO', 'LGAUSYL00000011', NULL, 499.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 1, 47, 'LGAUSYH00000011', 'AUDIFONOS SONY GRIS WH-CH500/HC SIN CABLES / BLUETOOTH / NFC/ LLAMADAS LIBRES / ASISTENTE DE VOZ / GITARORIO', 'LGAUSYH00000011', NULL, 499.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 1, 47, 'LGAUSYNA0000003', 'AUDIFONOS SONY MDR-AS200/O ANARANJADO', 'LGAUSYNA0000003', NULL, 169.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 1, 47, 'LGAUSYBL0000003', 'AUDIFONOS SONY MDR-AS200/W BLANCO', 'LGAUSYBL0000003', NULL, 169.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 1, 47, 'LGAUSYNE0000014', 'AUDIFONOS SONY MDR-AS210APBQLA NEGRO', 'LGAUSYNE0000014', NULL, 155.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 1, 47, 'LGAUSYNE0000001', 'AUDIFONOS SONY MDR-E9LP/B NEGRO', 'LGAUSYNE0000001', NULL, 45.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 1, 47, 'LGAUSYGR0000001', 'AUDIFONOS SONY MDR-E9LP/HC GRIS', 'LGAUSYGR0000001', NULL, 45.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 1, 47, 'LGAUSYAZ0000001', 'AUDIFONOS SONY MDR-E9LP/LC AZUL', 'LGAUSYAZ0000001', '<p><strong class=\"text-dark\">Im&aacute;n de neodimio:&nbsp;</strong>La unidad de diafragma de 13,5 mm reproduce un sonido rico en graves</p>\n<p class=\"p3\"><strong class=\"text-dark\">Compatible con el reproductor de musica:&nbsp;</strong>Utiliza los aud&iacute;fonos con un WALKMAN&reg;, iPod o reproductor de MP3</p>\n<p class=\"p3\"><strong class=\"text-dark\">Selecci&oacute;n de colores:&nbsp;</strong>Amplia gama de colores disponible: a juego con tu reproductor de m&uacute;sica o elige tu favorito</p>\n<p class=\"p3\"><strong class=\"text-dark\">Cable de 1,2 m:&nbsp;</strong>Cable de 1,2 m duradero y ligero</p>\n<p class=\"p3\"><strong class=\"text-dark\">Tapones incluidos:&nbsp;</strong>Incluye 2 tapones para un ajuste m&aacute;s seguro</p>', 45.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 1, 47, 'LGAUSYRO0000001', 'AUDIFONOS SONY MDR-E9LP/PCU ROSADO', 'LGAUSYRO0000001', '<p><strong class=\"text-dark\">Im&aacute;n de neodimio:&nbsp;</strong>La unidad de diafragma de 13,5 mm reproduce un sonido rico en graves</p>\n<p class=\"p3\"><strong class=\"text-dark\">Compatible con el reproductor de musica:&nbsp;</strong>Utiliza los aud&iacute;fonos con un WALKMAN&reg;, iPod o reproductor de MP3</p>\n<p class=\"p3\"><strong class=\"text-dark\">Selecci&oacute;n de colores:&nbsp;</strong>Amplia gama de colores disponible: a juego con tu reproductor de m&uacute;sica o elige tu favorito</p>\n<p class=\"p3\"><strong class=\"text-dark\">Cable de 1,2 m:&nbsp;</strong>Cable de 1,2 m duradero y ligero</p>\n<p class=\"p3\"><strong class=\"text-dark\">Tapones incluidos:&nbsp;</strong>Incluye 2 tapones para un ajuste m&aacute;s seguro</p>', 59.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 1, 47, 'LGAUSYBL0000001', 'AUDIFONOS SONY MDR-E9LP/W BLANCO', 'LGAUSYBL0000001', NULL, 45.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 1, 47, 'LGAUSYNE0000011', 'AUDIFONOS SONY MDR-EX15AP/BZUC NEGRO', 'LGAUSYNE0000011', NULL, 95.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 1, 47, 'LGAUSYAZ0000017', 'AUDIFONOS SONY MDR-EX15AP/LIZUC AZUL', 'LGAUSYAZ0000017', NULL, 95.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 1, 47, 'LGAUSYBL0000007', 'AUDIFONOS SONY MDR-EX15AP/WZUC BLANCO', 'LGAUSYBL0000007', '<h4><strong>Especificaciones T&eacute;cnicas:</strong></h4>\n<p><strong>Longitud del cable:</strong> 1.2 m.</p>\n<p><strong>Im&aacute;n:</strong>&nbsp;Neodimio.</p>\n<p><strong>Capacidad:</strong> 100 mW.</p>\n<p><strong>Impedancia (OHMIOS):</strong>&nbsp;16 ohmios (1 kHz).</p>\n<p><strong>Enchufe:</strong>&nbsp;Mini est&eacute;reo de cuatro conductores con forma de L ba&ntilde;ado en oro.</p>\n<p><strong>Respuesta en frecuencia:</strong>&nbsp;8 &ndash; 22,000 Hz.</p>\n<p><strong>Tipo de cable:</strong>&nbsp;Tipo Y.</p>\n<p><strong>Unidad de diafragma:&nbsp;</strong>Din&aacute;mico, 9 mm.</p>\n<p><strong>Diafragma:&nbsp;</strong>PET.</p>\n<p><strong>Tipo din&aacute;mico:&nbsp;</strong>S&iacute;.</p>\n<p><strong>Tipo cerrado:&nbsp;</strong>S&iacute;.</p>\n<p><strong>Estilo de uso:</strong>&nbsp;Aud&iacute;fonos cerrados.</p>\n<p><strong>Sensibilidades&nbsp;(DB/MW):&nbsp;</strong>100 dB/mW.</p>\n<p>Sony tiene el compromiso no solo de ofrecer productos, servicios y contenidos que aporten experiencias emocionantes, sino tambi&eacute;n de trabajar para conseguir nuestro objetivo de huella medioambiental cero en nuestras actividades empresariales.</p>', 95.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 1, 47, 'LGAUSYL00000012', 'AUDIFONOS SONY MDRS -AS210 AZUL RESISTENTE A SALPICADURAS / GANCHOS AJUSTABLES / 1,2M CLABE', 'LGAUSYL00000012', '<p>Consigue una sujeci&oacute;n segura mientras corres. Los ganchos con forma curvada ajustables se fijan de forma segura a tus o&iacute;dos para que tu cuerpo pueda seguir movi&eacute;ndose al ritmo de la m&uacute;sica.</p>\n<p>El sonido que marca el ritmo de tus entrenamientos con un diafragma de 13.5&nbsp;mm.&nbsp;Cuando comienzas a sentirte cansado en los &uacute;ltimos minutos del entrenamiento, solo el sonido m&aacute;s puro y energ&eacute;tico puede ayudarte a resistir hasta el final.</p>\n<p>Escucha cada detalle con nitidez y claridad.&nbsp;Con una sensibilidad de 104&nbsp;dB/mW y un rango de frecuencia de 17 a 22,000&nbsp;Hz, podr&aacute;s subir el volumen y escuchar cada detalle.</p>\n<p>La ac&uacute;stica m&aacute;s natural con un dise&ntilde;o abierto.&nbsp;El audio fluye a trav&eacute;s de la parte trasera de los aud&iacute;fonos para obtener un sonido m&aacute;s natural.</p>\n<p>Disfruta de una mayor flexibilidad con un cable de 1.2 m.&nbsp;Libera tus movimientos con un cable que es lo suficientemente largo para el gimnasio o la calle.</p>\n<p>Listo para la lluvia, el sudor y las salpicaduras.&nbsp;Cuando la lluvia est&eacute; presente, estos audifonos resistentes a salpicaduras te proporcionar&aacute;n el ritmo que necesitas hasta el final del entrenamiento.</p>\n<p>Rendimiento superior, aspecto inmejorable.&nbsp;Su elegante dise&ntilde;o est&aacute; disponible en varios colores.</p>\n<h4><strong>Especificaciones T&eacute;cnicas:</strong></h4>\n<p><strong>Unidad de&nbsp;diafragma:</strong>&nbsp;13. 5 mm, tipo c&uacute;pula<br /><strong>Tipo din&aacute;mico:</strong>&nbsp;Abiertos, din&aacute;micos<br /><strong>Impedancia (OHMIOS):</strong>&nbsp;16 ohmios (a 1 kHz)<br /><strong>Respuesta en frecuencia:</strong>&nbsp;17 Hz - 22,000 Hz<br /><strong>Sensibilidades (DB/MW):</strong>&nbsp;104 dB/mW<br /><strong>Control de volumen:</strong>&nbsp;N/A<br /><strong>Tipo de cable:</strong>&nbsp;N/A<br /><strong>Longitud de cable:</strong>&nbsp;Aprox. 1. 2 m, cable de hilo dividido, tipo Y<br /><strong>Enchufe:</strong> Minienchufe est&eacute;reo ba&ntilde;ado en oro en forma de L<br /><strong>Tiempo de uso:</strong>&nbsp;N/A<br /><strong>Tiempo de carga:</strong>&nbsp;N/A<br /><strong>Estilo de uso:</strong>&nbsp;Internos</p>', 139.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 1, 47, 'LGAUSYNE0000010', 'AUDIFONOS SONY MDR-XB550AP/BCLA NEGRO RECIBE LLAMADAS / CAMBIA DE PISTA / EXTRA BASS', 'LGAUSYNE0000010', '<div class=\"t2 editorial-headline js-editorial-headline\">\n<h3 class=\"t6 tile-title\">Todo est&aacute; en los graves</h3>\n<p class=\"p3\">D&eacute;jate llevar por unos graves ricos y potentes. EXTRA BASS&nbsp;optimiza todas tus frecuencias de graves para ofrecer un sonido profundo e intenso.</p>\n<h3 class=\"t6 tile-title\">Hechos para ti</h3>\n<p class=\"p3\">Elige entre negro, rojo, azul, verde y blanco gris&aacute;ceo, seg&uacute;n tu estilo.</p>\n<h3 class=\"t6 tile-title\">Estilo atrevido, tacto suave</h3>\n<p class=\"p3\">Disfruta de horas de escucha c&oacute;modamente con las suaves almohadillas acolchadas y la diadema met&aacute;lica ajustable. Escucha con estilo gracias al dise&ntilde;o atrevido y elegante.</p>\n<h3 class=\"t6 tile-title\">Recibe llamadas, cambia pistas</h3>\n<p class=\"p3\">Cambia lo que escuchas con solo pulsar unos cuantos botones. El control remoto y micr&oacute;fono integrados te permiten cambiar de pista y responder llamadas desde los aud&iacute;fonos.</p>\n</div>\n<h4><strong>Especificaciones T&eacute;cnicas:</strong></h4>\n<p><strong>Tipo de&nbsp;aud&iacute;fono:&nbsp;</strong>Cerrados, din&aacute;micos</p>\n<p><strong><strong>Unidad de diafragma:</strong>&nbsp;</strong>30 mm (tipo c&uacute;pula)</p>\n<p><strong><strong>Im&aacute;n:</strong>&nbsp;</strong>Neodimio</p>\n<p><strong><strong>Impedancia (OHMIOS):</strong>&nbsp;</strong>24&nbsp;ohmios (1&nbsp;kHz)</p>\n<p><strong><strong>Diafragma:</strong>&nbsp;</strong>PET</p>\n<p><strong><strong>Respuesta en frecuencia:</strong>&nbsp;</strong>5&nbsp;Hz-22,000&nbsp;Hz</p>\n<p><strong><strong>Sensibilidades (DB/MW):</strong>&nbsp;</strong>102&nbsp;dB/mW</p>\n<p><strong><strong>Tipo de cable:</strong>&nbsp;</strong>Tipo Y (planos)</p>\n<p><strong><strong>Longitud de cable:</strong>&nbsp;</strong>Aprox. 1.2&nbsp;m</p>\n<p><strong><strong>Enchufe:</strong>&nbsp;</strong>Minienchufe de 4&nbsp;polos ba&ntilde;ado con oro y en forma de L</p>\n<p><strong><strong>Estilo de uso:</strong>&nbsp;</strong>Supra aural</p>', 329.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 1, 47, 'LGAUSYVE0000001', 'AUDIFONOS SONY MDR-XB550AP/GCLA VERDE RECIBE LLAMADAS / CAMBIA DE PISTA / EXTRA BASS', 'LGAUSYVE0000001', NULL, 329.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 1, 47, 'LGAUSYAZ0000010', 'AUDIFONOS SONY MDR-XB550AP/LCLA AZUL RECIBE LLAMADAS / CAMBIA DE PISTA / EXTRA BASS', 'LGAUSYAZ0000010', NULL, 329.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 1, 47, 'LGAUSYRJ0000010', 'AUDIFONOS SONY MDR-XB550AP/RCLA ROJO RECIBE LLAMADAS / CAMBIA DE PISTA / EXTRA BASS', 'LGAUSYRJ0000010', NULL, 329.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 1, 47, 'LGAUSYGR0000010', 'AUDIFONOS SONY MDR-XB550AP/WCLA GRIS RECIBE LLAMADAS / CAMBIA DE PISTA / EXTRA BASS', 'LGAUSYGR0000010', '<div class=\"t2 editorial-headline js-editorial-headline\"> <h3 class=\"t6 tile-title\">Todo est&aacute; en los graves</h3> <p class=\"p3\">D&eacute;jate llevar por unos graves ricos y potentes. EXTRA BASS&nbsp;optimiza todas tus frecuencias de graves para ofrecer un sonido profundo e intenso.</p> <h3 class=\"t6 tile-title\">Hechos para ti</h3> <p class=\"p3\">Elige entre negro, rojo, azul, verde y blanco gris&aacute;ceo, seg&uacute;n tu estilo.</p> <h3 class=\"t6 tile-title\">Estilo atrevido, tacto suave</h3> <p class=\"p3\">Disfruta de horas de escucha c&oacute;modamente con las suaves almohadillas acolchadas y la diadema met&aacute;lica ajustable. Escucha con estilo gracias al dise&ntilde;o atrevido y elegante.</p> <h3 class=\"t6 tile-title\">Recibe llamadas, cambia pistas</h3> <p class=\"p3\">Cambia lo que escuchas con solo pulsar unos cuantos botones. El control remoto y micr&oacute;fono integrados te permiten cambiar de pista y responder llamadas desde los aud&iacute;fonos.</p> </div> <h4><strong>Especificaciones T&eacute;cnicas:</strong></h4> <p><strong>Tipo de&nbsp;aud&iacute;fono:&nbsp;</strong>Cerrados, din&aacute;micos</p> <p><strong><strong>Unidad de diafragma:</strong>&nbsp;</strong>30 mm (tipo c&uacute;pula)</p> <p><strong><strong>Im&aacute;n:</strong>&nbsp;</strong>Neodimio</p> <p><strong><strong>Impedancia (OHMIOS):</strong>&nbsp;</strong>24&nbsp;ohmios (1&nbsp;kHz)</p> <p><strong><strong>Diafragma:</strong>&nbsp;</strong>PET</p> <p><strong><strong>Respuesta en frecuencia:</strong>&nbsp;</strong>5&nbsp;Hz-22,000&nbsp;Hz</p> <p><strong><strong>Sensibilidades (DB/MW):</strong>&nbsp;</strong>102&nbsp;dB/mW</p> <p><strong><strong>Tipo de cable:</strong>&nbsp;</strong>Tipo Y (planos)</p> <p><strong><strong>Longitud de cable:</strong>&nbsp;</strong>Aprox. 1.2&nbsp;m</p> <p><strong><strong>Enchufe:</strong>&nbsp;</strong>Minienchufe de 4&nbsp;polos ba&ntilde;ado con oro y en forma de L</p> <p><strong><strong>Estilo de uso:</strong>&nbsp;</strong>Supra aural</p>', 329.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 1, 47, 'LGAUSYNE0000004', 'AUDIFONOS SONY MDR-ZX110/B NEGRO  GIRATORIO / RECIBE LLAMADAS / CAMBIA DE PISTA / EXTRA BASS', 'LGAUSYNE0000004', NULL, 115.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 1, 47, 'LGAUSYLI0000004', 'AUDIFONOS SONY MDR-ZX110/PCUC ROSADO  GIRATORIO / RECIBE LLAMADAS / CAMBIA DE PISTA / EXTRA BASS', 'LGAUSYLI0000004', NULL, 114.87, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 1, 47, 'LGAUSYBL0000004', 'AUDIFONOS SONY MDR-ZX110/W BLANCO  GIRATORIO / RECIBE LLAMADAS / CAMBIA DE PISTA / EXTRA BASS', 'LGAUSYBL0000004', NULL, 115.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 1, 47, 'LGAUSYNE0000008', 'AUDIFONOS SONY MDR-ZX310AP/BCUC  NEGRO', 'LGAUSYNE0000008', '<h4><strong>Especificaciones T&eacute;cnicas:</strong></h4>\n<p><strong>Tipo de&nbsp;aud&iacute;fono:&nbsp;</strong>Cerrados</p>\n<p><strong>Unidad de diafragma:</strong>&nbsp;</strong>30 mm (tipo c&uacute;pula)</p>\n<p><strong>Tipo din&aacute;mico:&nbsp;</strong>S&iacute;</p>\n<p><strong>Capacidad:</strong>&nbsp;</strong>1000 mW</p>\n<p><strong>Impedancia (OHMIOS):</strong>&nbsp;</strong>24&nbsp;ohmios (1&nbsp;kHz)</p>\n<p><strong>Respuesta en frecuencia:</strong>&nbsp;</strong>10 - 24,000&nbsp;Hz</p>\n<p><strong>Sensibilidades (DB/MW):</strong>&nbsp;</strong>98 dB/mW</p>\n<p><strong>Tipo de cable:</strong>&nbsp;</strong>Tipo Y</p>\n<p><strong>Longitud de cable:</strong></strong>&nbsp;1.2&nbsp;m</p>\n<p><strong>Enchufe:</strong>&nbsp;</strong>Minienchufe de 4 conductores con chapa de oro y en forma de L</p>\n<p><strong>Estilo de uso:</strong>&nbsp;</strong>Con almohadilla para o&iacute;dos, Tipo Diadema</p>', 175.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 1, 47, 'LGAUSYAZ0000016', 'AUDIFONOS SONY MDR-ZX310AP/LZUC AZUL', 'LGAUSYAZ0000016', NULL, 175.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 1, 47, 'LGAUSYBL0000008', 'AUDIFONOS SONY MDR-ZX310AP/WCUC BLANCO', 'LGAUSYBL0000008', NULL, 175.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 1, 47, 'LGAUSYB0000012', 'AUDIFONOS SONY NEGRO WH-CH500/BC  SIN CABLES / BLUETOOTH / NFC/ LLAMADAS LIBRES / ASISTENTE DE VOZ / GITARORIO', 'LGAUSYB0000012', '<p>Transmisi&oacute;n inal&aacute;mbrica mediante conexi&oacute;n Bluetooth&reg;. Reproduce tus canciones favoritas de forma inal&aacute;mbrica por medio de una conexi&oacute;n Bluetooth&reg; emparejando tu smartphone o tablet.</p>\n<p>NFC&trade; con un solo toque para una conectividad instant&aacute;nea.Toca el s&iacute;mbolo N de determinados dispositivos con NFC&trade; para conseguir una conexi&oacute;n r&aacute;pida y perfecta, y empezar a transmitir contenidos a trav&eacute;s de Bluetooth&reg;.&nbsp;</p>\n<p class=\"t6 tile-title\">Disfruta de hasta 20 horas de duraci&oacute;n de bater&iacute;a en modo inal&aacute;mbrico.&nbsp;Escucha tus canciones durante todo el d&iacute;a. Una bater&iacute;a de i&oacute;n-litio integrada ofrece hasta 20 horas de potencia inal&aacute;mbrica y se puede recargar mediante micro USB.</p>\n<p>Esc&uacute;chalo todo con diafragmas de 30 mm.&nbsp;Saca m&aacute;s partido a tu m&uacute;sica gracias a los diafragmas de tipo c&uacute;pula de 30&nbsp;mm. Las compactas y ligeras unidades te permitir&aacute;n percibir m&aacute;s detalles y disfrutar de unos graves m&aacute;s potentes.&nbsp;</p>\n<p class=\"t6 tile-title\">Llamadas sencillas con manos libres y asistente de voz.&nbsp;Habla con tus amigos y asistentes de voz sin necesidad de sacar el tel&eacute;fono del bolso o bolsillo. Mant&eacute;n pulsado el bot&oacute;n de reproducci&oacute;n de los auriculares para activar el asistente de voz en Android&nbsp;o iOS y realizar llamadas con manos libres con facilidad gracias al micr&oacute;fono de alta calidad integrado.</p>\n<p>Dise&ntilde;o ligero.&nbsp;La estilizada diadema ajustable y las suaves almohadillas cuentan con un dise&ntilde;o c&oacute;modo y atractivo.</p>\n<p class=\"t6 tile-title\">Dise&ntilde;o giratorio.&nbsp;Los cascos se pliegan para poder introducirlos f&aacute;cilmente en el bolso o la mochila y llevarlos de manera segura vayas donde vayas.&nbsp;</p>\n<h4><strong>Especificaciones T&eacute;cnicas:</strong></h4>\n<p><strong>Tipo de auriculares:</strong> Din&aacute;mica cerrada</p>\n<p><strong>Unidad de diafragma:</strong> 30 mm</p>\n<p><strong>Im&aacute;n:&nbsp;</strong>Ferrita</p>\n<p><strong>Respuesta en frecuencia&nbsp;(COMUNICACI&Oacute;N BLUETOOTH&reg;):</strong> 20&nbsp;Hz - 20.000&nbsp;Hz (muestreo de 44,1&nbsp;kHz)</p>\n<p><strong>Control de volumen:</strong> S&iacute;</p>\n<p><strong>Estilo de uso:</strong> Circular</p>\n<p><strong>NFC:</strong> S&iacute;</p>\n<p><strong>Tiempo de carga de la bater&iacute;a:</strong> Aprox. 4,5 horas</p>\n<p><strong>M&eacute;todo de carga de la bater&iacute;a:</strong> USB</p>\n<p><strong>Duraci&oacute;n de la bater&iacute;a (TIEMPO DE REPRODUCCI&Oacute;N DE M&Uacute;SICA CONTINUA):</strong> M&aacute;x. 20 horas</p>\n<p><strong>Duraci&oacute;n de la bater&iacute;a (TIEMPO EN ESPERA):</strong> M&aacute;x. 200 horas</p>\n<p><strong>Versi&oacute;n de Bluetooth&reg;:</strong> Versi&oacute;n 4.2</p>\n<p><strong>Alcance efectivo:</strong> Alcance aprox. de 10 m (30 pies)</p>\n<p><strong>Rango de frecuencia:</strong> Banda de 2,4 GHz</p>\n<p><strong>Perfil:</strong> A2DP, AVRCP, HFP, HSP</p>\n<p><strong>Formatos de audio compatibles:</strong> SBC, AAC</p>\n<p><strong>Protecci&oacute;n de contenido compatible:</strong> SCMS-T</p>', 499.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 1, 47, 'LGAUSYR00000008', 'AUDIFONOS SONY ROJO MDR-ZX310', 'LGAUSYR00000008', '<h4><strong>Especificaciones T&eacute;cnicas:</strong></h4>\n<p><strong>Tipo de&nbsp;aud&iacute;fono:&nbsp;</strong>Cerrados</p>\n<p><strong>Unidad de diafragma:</strong>&nbsp;</strong>30 mm (tipo c&uacute;pula)</p>\n<p><strong>Tipo din&aacute;mico:&nbsp;</strong>S&iacute;</p>\n<p><strong>Capacidad:</strong>&nbsp;</strong>1000 mW</p>\n<p><strong>Impedancia (OHMIOS):</strong>&nbsp;</strong>24&nbsp;ohmios (1&nbsp;kHz)</p>\n<p><strong>Respuesta en frecuencia:</strong>&nbsp;</strong>10 - 24,000&nbsp;Hz</p>\n<p><strong>Sensibilidades (DB/MW):</strong>&nbsp;</strong>98 dB/mW</p>\n<p><strong>Tipo de cable:</strong>&nbsp;</strong>Tipo Y</p>\n<p><strong>Longitud de cable:</strong></strong>&nbsp;1.2&nbsp;m</p>\n<p><strong>Enchufe:</strong>&nbsp;</strong>Minienchufe de 4 conductores con chapa de oro y en forma de L</p>\n<p><strong>Estilo de uso:</strong>&nbsp;</strong>Con almohadilla para o&iacute;dos, Tipo Diadema</p>', 175.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 1, 47, 'LGAUSYAZ0000014', 'AUDIFONOS SONY WH-XB700/LC AZUL', 'LGAUSYAZ0000014', '<ol>\n<li>Dise&ntilde;o plegable y ligero para conseguir la m&aacute;xima movilidad musical</li>\n<li>Diafragmas de ferrita de 30 mm para un sonido potente y equilibrado</li>\n<li>Rango de frecuencia 10-24.000 Hz</li>\n<li>Cascos acolchados para una escucha c&oacute;moda</li>\n<li>Gran variedad de colores para adaptarse a tu estilo</li>\n</ol>', 979.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 1, 47, 'LGAUSYNE0000013', 'AUDIFONOS SONY WI-C310/BC NEGRO', 'LGAUSYNE0000013', NULL, 319.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `products` (`id`, `subcategory_id`, `brand_id`, `sku`, `name`, `slug`, `description`, `price`, `offer_price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(57, 1, 47, 'LGAUSYAZ0000015', 'AUDIFONOS SONY WI-C310/LC AZUL', 'LGAUSYAZ0000015', '<p>Disfruta de conexi&oacute;n inal&aacute;mbrica con BLUETOOTH&reg;.&nbsp;Di adi&oacute;s a los enredos de cables y a los tapones que se caen. Con la tecnolog&iacute;a inal&aacute;mbrica BLUETOOTH&reg;, puedes conectar tu dispositivo inal&aacute;mbricamente y escuchar perfectamente y sin interrupciones.</p>\n<p>15 horas de duraci&oacute;n de bater&iacute;a.&nbsp;Con hasta 15 horas de reproducci&oacute;n cuando est&aacute;n totalmente cargados, podr&aacute;s escuchar tus listas de reproducci&oacute;n y podcasts favoritos todo el d&iacute;a.</p>\n<p>Alimentaci&oacute;n con carga r&aacute;pida.&nbsp;Cuando la bater&iacute;a se agota, una carga de solo 10 minutos te permite reproducir durante 60 minutos. De esta forma, aunque tengas prisa, pronto estar&aacute;s listo para volver a disfrutar de la m&uacute;sica. Si tienes m&aacute;s tiempo, puedes cargar la bater&iacute;a por completo en solo tres horas.</p>\n<p>Tapones magn&eacute;ticos para un transporte f&aacute;cil.&nbsp;Cada tap&oacute;n de auricular cuenta con un im&aacute;n integrado para transportarlos y almacenarlos sin enredos.</p>\n<p>Port&aacute;tiles y flexibles para escuchar con mayor comodidad.&nbsp;Suaves, flexibles y ligeros, los auriculares internos inal&aacute;mbricos WI-C310 te permiten escuchar con comodidad en cualquier momento y lugar.</p>\n<p>Unidades de diafragma de 9 mm para un sonido claro e impactante. Tanto si escuchas &eacute;xitos pop, como conciertos de m&uacute;sica cl&aacute;sica o solos de jazz, las unidades de diafragma de 9 mm ofrecen un rendimiento de audio din&aacute;mico con graves profundos, agudos n&iacute;tidos y una claridad excepcional.</p>\n<p>Asistente de voz a tu servicio.&nbsp;Consulta la previsi&oacute;n meteorol&oacute;gica, inf&oacute;rmate de las &uacute;ltimas noticias y mucho m&aacute;s solo con tu voz. Pulsa el bot&oacute;n multifunci&oacute;n dos veces para acceder al instante a Siri o Google Assistant.</p>\n<h4><strong>Especificaciones T&eacute;cnicas:</strong></h4>\n<p><strong>Tipo de auriculares:&nbsp;</strong>Cerrado, din&aacute;mico</p>\n<p><strong>Unidad de diafragma:&nbsp;</strong>9 mm</p>\n<p><strong>Im&aacute;n:&nbsp;</strong>Neodimio</p>\n<p><strong>Respuesta en frecuencia&nbsp;(COMUNICACI&Oacute;N BLUETOOTH&reg;):&nbsp;</strong>20 Hz - 20.000 Hz (muestreo de 44,1 kHz)</p>\n<p><strong>Control de volumen:&nbsp;</strong>S&iacute;</p>\n<p><strong>Estilo de uso: </strong>Auriculares internos</p>\n<p><strong>NFC: </strong>No</p>\n<p><strong>Tiempo de carga de la bater&iacute;a:&nbsp;</strong>Aprox. 3 horas</p>\n<p><strong>M&eacute;todo de carga de la bater&iacute;a: </strong>Carga USB</p>\n<p><strong>Duraci&oacute;n de la bater&iacute;a&nbsp;(TIEMPO DE REPRODUCCI&Oacute;N DE M&Uacute;SICA CONTINUA):&nbsp;</strong>M&aacute;x. 15 horas</p>\n<p><strong>Duraci&oacute;n de la bater&iacute;a&nbsp;(TIEMPO EN ESPERA):&nbsp;</strong>M&aacute;x. 200 horas</p>\n<p><strong>Versi&oacute;n de Bluetooth&reg;:&nbsp;</strong>Especificaci&oacute;n Bluetooth&reg; versi&oacute;n 5.0</p>\n<p><strong>Alcance efectivo:&nbsp;</strong>Alcance aprox. de 10 m (30 pies)</p>\n<p><strong>Rango de frecuencia:&nbsp;</strong>Banda de 2,4 GHz (2,4000 GHz-2,4835 GHz)</p>\n<p><strong>Perfil:&nbsp;</strong>A2DP (perfil de distribuci&oacute;n de audio avanzado), AVRCP (perfil de control remoto de audio y v&iacute;deo), HFP (perfil de manos libres), HSP (perfil de auriculares)</p>\n<p><strong>Formato de audio compatibles:&nbsp;</strong>SBC, AAC</p>\n<p><strong>Protecci&oacute;n de contenido compatible:&nbsp;</strong>SCMS-T</p>\n<p>&nbsp;</p>', 319.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 1, 47, 'LGAUSYBL0000010', 'AUDIFONOS SONY WI-C310/WC BLANCO', 'LGAUSYBL0000010', NULL, 319.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 1, 47, 'LGAUSYNE0000012', 'AUDIFONOS SONY XH-XB700/BC NEGRO', 'LGAUSYNE0000012', NULL, 979.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 15, 9, 'ACMEBXBA0000001', 'BATERIA DE COCINA BRINOX 7014/104 5 PZS CHILLI SILVER', 'ACMEBXBA0000001', NULL, 429.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 15, 9, 'ACMEBXBA0000002', 'BATERIA DE COCINA BRINOX 7015/105 7 PZS CHILLI CHERRY', 'ACMEBXBA0000002', NULL, 529.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 15, 50, 'ACMEWHBA0000002', 'BATERIA DE COCINA WESTINGHOUSE  WCCS0107008  8 PZS ACERO INOX', 'ACMEWHBA0000002', NULL, 999.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 15, 50, 'ACMEWHBA0000003', 'BATERIA DE COCINA WESTINGHOUSE WCCC003612A 12 PZS TEFLON ALUMINIO', 'ACMEWHBA0000003', NULL, 749.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 15, 50, 'ACMEWHBA0000001', 'BATERIA DE COCINA WESTINGHOUSE WCCS000906AMBB 6 PZS ALUMINIO CON MARMOL', 'ACMEWHBA0000001', NULL, 799.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 15, 9, 'ACMEBXCA0000001', 'CALDERA BRINOX 7100/155 PLOMA 2L', 'ACMEBXCA0000001', NULL, 119.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 15, 9, 'ACMEBXCA0000002', 'CALDERA BRINOX 7102/155 CEREZA 2L', 'ACMEBXCA0000002', NULL, 119.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 15, 46, 'ACMECA000000001', 'CANASTO GALLINA DCW-355 METALICO P/ HUEVOS ', 'ACMECA000000001', NULL, 74.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 4, 15, 'LGCPDEI30000001', 'COMPUTADORA DELL I3 7020UÃ‚Â Ã‚Â Ã‚Â Ã‚Â  ', 'LGCPDEI30000001', NULL, 3799.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 4, 15, 'LGCPDEI70000001', 'COMPUTADORA DELL I7 8565U', 'LGCPDEI70000001', NULL, 7399.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 4, 22, 'LGCPHPI70000006', 'COMPUTADORA HP 240 G7 I7-8565U 8 GB 1 TB 14 VIDEO                               ', 'LGCPHPI70000006', NULL, 5789.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 4, 22, 'LGCPHPI30000012', 'COMPUTADORA HP I3 15-DA0007LA CI3-7020U 4GB 1TB 15.6\" WIN10                     \"', 'LGCPHPI30000012', NULL, 4259.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 4, 22, 'LGCPHPI50000011', 'COMPUTADORA HP I5-8250U PAVILION/ X360 / TOUCH/ CONV 14\" 6GB 1TB WIN10                    \"', 'LGCPHPI50000011', NULL, 6649.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 16, 40, 'ACMEPACO0000001', 'COPA AGUA 6 PZS PASABAHCE 440091 MONTE CARLO 325 ML', 'ACMEPACO0000001', NULL, 129.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 16, 40, 'ACMEPACO0000006', 'COPA AGUA 6 PZS PASABAHCE 44664 STEP 300 ML', 'ACMEPACO0000006', NULL, 109.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 16, 40, 'ACMEPACO0000005', 'COPA CERVEZA 6PZS PASABAHCE 44169 TULIPE VIDRIO 385 ML', 'ACMEPACO0000005', NULL, 109.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 16, 40, 'ACMEPACO0000002', 'COPA CHAMPAGNE 6 PZS PASABAHCE 440157  MONTE CARLO 225 ML', 'ACMEPACO0000002', NULL, 129.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 16, 40, 'ACMEPACO0000008', 'COPA CHAMPAGNE 6 PZS PASABAHCE 44634 STEP 175 ML', 'ACMEPACO0000008', NULL, 109.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 16, 40, 'ACMEPACO0000003', 'COPA VINO BLANCO 6 PZS PASABAHCE 440089 MONTE CARLO 210 ML', 'ACMEPACO0000003', NULL, 129.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 16, 40, 'ACMEPACO0000007', 'COPA VINO TINTO 6 PZS PASABAHCE 44654 STEP 210 ML', 'ACMEPACO0000007', NULL, 109.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 16, 9, 'ACMEBXCU0000001', 'CUCHARA P/COCTEL 1662/030 INOX 30,5 CM ARIENZO', 'ACMEBXCU0000001', NULL, 9.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 9, 47, 'LMESSY000000028', 'EQUIPO DE SONIDO SONY GTK-PG10 /INALAMBRICO /                                   ', 'LMESSY000000028', '<p>El GTK-PG10, port&aacute;til, inal&aacute;mbrico y con bater&iacute;a de larga duraci&oacute;n, es ideal para disfrutar de la m&uacute;sica en fiestas, picnics o acampadas. Tambi&eacute;n puedes plegar el panel superior y llevarlo dentro para que el sonido, y no el altavoz, llene la sala.</p>\n<p>Tanto en la calle como en casa, el GTK-PG10 ofrece un sonido amplio, potente y, al mismo tiempo, n&iacute;tido. El DSP (procesamiento de se&ntilde;al digital) se adapta autom&aacute;ticamente a tus ajustes de audio para optimizar el rendimiento seg&uacute;n en entorno</p>\n<p>Con los paneles superiores abiertos, los tweeters integrados se orientan hacia delante y hacia arriba para propagar m&aacute;s el sonido en las fiestas al aire libre. El DSP (procesamiento de se&ntilde;al digital) se adapta autom&aacute;ticamente a tus ajustes de audio para optimizar el rendimiento en exteriores.</p>\n<p>El puerto USB te permitir&aacute; conectar un Memory stick&trade; USB, smartphone, tablet o port&aacute;til para reproducir todos tus archivos digitales. Gracias a la compatibilidad con los formatos MP3, WMA, AAC y WAV, podr&aacute;s llevarte tus listas de reproducci&oacute;n favoritas y la fiesta a cualquier parte mientras cargas el dispositivo.</p>\n<p>La tecnolog&iacute;a Bluetooth&reg; te permite sincronizar tu smartphone con el GTK-PG10 mediante una conexi&oacute;n inal&aacute;mbrica de corto alcance. Es muy r&aacute;pido y sencillo, y la conexi&oacute;n no se interrumpe aunque un objeto se interponga en la trayectoria de la se&ntilde;al. Una vez emparejados los dispositivos, podr&aacute;s transmitir todas tus canciones y listas de reproducci&oacute;n favoritas de tu smartphone al sistema de sonido.</p>\n<p>&iquest;Quieres escuchar tus retransmisiones deportivas, programas de radio y sesiones de DJ favoritos? Solo tienes que usar el sintonizador de radio FM para descubrir lo que hay ah&iacute; fuera.</p>\n<p>Gracias al orificio de montaje integrado puedes colocar el GTK-PG10 sobre un soporte para altavoz con forma de tr&iacute;pode en una posici&oacute;n elevada, de modo que se proyecte el sonido de forma m&aacute;s eficaz a m&aacute;s gente a&uacute;n, ya est&eacute; de pie o sentada.</p>\n<p>Toma el control de los ajustes con la aplicaci&oacute;n Sony | Music Center. Simplemente desc&aacute;rgala en tu smartphone y disfruta de conexi&oacute;n inal&aacute;mbrica para tu m&uacute;sica. Puedes configurar los ajustes de audio, seleccionar tus listas de reproducci&oacute;n preferidas de tu tel&eacute;fono o USB y dar paso a la siguiente pista sin tener que quedarte toda la noche pendiente del sistema de sonido.</p>\n<p>La tecnolog&iacute;a Bluetooth os permite a tus amigos y a ti emparejar de manera simult&aacute;nea hasta tres smartphones o tablets. Podr&aacute;s reproducir pistas de tus colecciones de m&uacute;sica, lo que te ofrecer&aacute; a&uacute;n m&aacute;s posibilidades.</p>\n<p>Tanto si quieres cantar tus canciones favoritas como ser maestro de ceremonias, solo tienes que enchufar un micr&oacute;fono. El GTK-PG10 integra tu voz directamente en la mezcla.</p>\n<p>La entrada de audio te permite conectar reproductores de MP3 port&aacute;tiles sin conectividad Bluetooth&reg; al GTK-PG10.</p>\n<h4><strong>Especificaciones T&eacute;cnicas:</strong></h4>\n<p><strong>USB1</strong>:&nbsp;S&iacute;</p>\n<p><strong>FM:</strong>&nbsp;S&iacute;</p>\n<p><strong>Entrada de audio1:</strong> S&iacute;</p>\n<p><strong>Bluetooth&reg;:&nbsp;</strong>S&Iacute; (iAP sobre BT)</p>\n<p><strong>Entrada de audio anal&oacute;gico:</strong> S&iacute;</p>\n<p><strong>Puerto USB:</strong> S&iacute;</p>\n<p><strong>Entrada de micr&oacute;fono:</strong> S&iacute;</p>\n<p><strong>Ecualizador de m&uacute;sica:</strong> M&uacute;sica (Emotion EQ)</p>\n<p><strong>Modo f&uacute;tbol:</strong> S&Iacute; (DESACTIVADO / Narraci&oacute;n ACTIVADA / Narraci&oacute;n DESACTIVADA)</p>\n<p><strong>Ecualizador de v&iacute;deo:</strong> PEL&Iacute;CULA / JUEGO / SERIE / NOTICIA</p>\n<p><strong>Funci&oacute;n de enfatizaci&oacute;n de graves:</strong> MEGA BASS</p>\n<p><strong>Clearaudio+:</strong> S&iacute;</p>\n<p><strong>Control de teclas:</strong> S&iacute;</p>\n<p><strong>Volumen del m&iacute;crofono:</strong> S&iacute;</p>\n<p><strong>Echo:</strong> S&iacute;</p>\n<p><strong>Temporizador de apagado:</strong> S&iacute;</p>\n<p><strong>Salida de carga de puerto USB:</strong> 1A</p>\n<p><strong>Consumo de energ&iacute;a&nbsp;(EN MODO DE ESPERA):&nbsp;</strong>0,5 W</p>\n<p><strong>LDAC:</strong> S&iacute;</p>\n<p><strong>AAC:</strong> S&iacute;</p>\n<p><strong>A2DP(SINK):&nbsp;</strong>S&iacute;</p>\n<p><strong>AVRCP:&nbsp;</strong>S&iacute;</p>\n<p><strong>SPP:&nbsp;</strong>S&iacute;</p>\n<p><strong>Aplicaciones de smartphone compatibles:</strong>&nbsp;S&iacute; (Music Center / Fiestable)</p>\n<p><strong>Banda:</strong> FM</p>\n<p><strong>Rango de sintonizaci&oacute;n&nbsp;(FM):&nbsp;</strong>87,5-108 MHz / 50kHz</p>\n<p><strong>Presinton&iacute;a:</strong> FM20 (Music Center)</p>\n<p><strong>Asa de transporte:</strong> S&iacute;</p>\n<p><strong>Compatible con tr&iacute;pode:</strong> S&iacute;</p>\n<p><strong>MP3:</strong> S&iacute;</p>\n<p><strong>Tweeter:&nbsp;</strong>4 cm x2 (tipo cono)</p>\n<p><strong>Woofer:</strong> 18&nbsp;cm x1</p>\n<p><strong>Dimensiones de la unidad principal&nbsp;(AN. X AL. X PR. EN CM) (APROX.):&nbsp;</strong>33 x 37,6 x 30,3 cm</p>\n<p><strong>Peso&nbsp;(EN KG) (APROX.):&nbsp;</strong>6,7&nbsp;kg</p>\n<p><strong>Consumo de energ&iacute;a&nbsp;(MODO APAGADO): </strong>No disponible</p>\n<p><strong>Consumo de energ&iacute;a&nbsp;(MODO DE ESPERA):&nbsp;</strong>0,5 W</p>\n<p><strong>Consumo de energ&iacute;a&nbsp;(MODO DE ESPERA DE RED) &ndash; TERMINALES:&nbsp;</strong>1,2 W (Bluetooth&reg;) / 1,2 W (todos los terminales y redes conectados)</p>\n<p><strong>Modo de espera activado:</strong> Transcurridos 15 minutos</p>\n<p><strong>Modo de espera de red activado - terminales:</strong> Transcurridos 15 minutos (Bluetooth&reg;)</p>\n<p><strong>Interruptor de encendido/apagado de redes inalambricas:</strong> 1. Instala la aplicaci&oacute;n \"Sony | Music Center\" en tu smartphone. 2. Conecta el smartphone a la unidad mediante Bluetooth. 3. Accede al men&uacute; de configuraci&oacute;n de Sony | Music Center, dir&iacute;gete a Otros ajustes y selecciona el modo en espera de Bluetooth&reg;. 4. Act&iacute;valo o desact&iacute;valo.</p>', 2099.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 9, 47, 'LMESSY2C0000010', 'EQUIPO DE SONIDO SONY HCD-SHAKEX10 CD/ DVD/ HDMI/ LDAC BLUETOOTH /ENTRADA GUITARRA/1200W', 'LMESSY2C0000010', '<p>D&eacute;jate llevar por los estremecedores graves del Sound Pressure Horn. Aumenta eficazmente la presi&oacute;n ac&uacute;stica con el dise&ntilde;o interno en forma de bocina plegada que empuja la energ&iacute;a a trav&eacute;s de un conducto amplificador. En comparaci&oacute;n con el procesamiento de la se&ntilde;al y los amplificadores tradicionales que malgastan la energ&iacute;a, el resultado es mucho m&aacute;s eficaz, ya que aporta m&aacute;s cuerpo y profundidad a las l&iacute;neas de graves para que puedas sentirlas de verdad.</p>\n<p>LDAC es una nueva tecnolog&iacute;a de audio de Sony que te permite disfrutar de sonido de la mayor calidad de forma inal&aacute;mbrica mediante la tecnolog&iacute;a Bluetooth&reg;. Con capacidad hasta para triplicar los datos transmitidos, LDAC proporciona una experiencia de audio inal&aacute;mbrica mejorada para toda tu m&uacute;sica.</p>\n<p>Anima el ambiente con la iluminaci&oacute;n LED de los parlantes para obtener un ambiente de discoteca. Los parlantes con iluminaci&oacute;n LED incluyen varios patrones de color diferentes, que van del blanco puro al arco&iacute;ris. La potencia y la velocidad las luces, sincronizadas con el ritmo de la m&uacute;sica, combinan con el ambiente musical.</p>\n<p>Celebra tus propios miniconciertos con la entrada para guitarra. Solo tienes que enchufarla y pulsar la tecla de Guitarra para disfrutar del potente sonido de tu guitarra. Toca un solo o conecta un micr&oacute;fono para cantar tambi&eacute;n.</p>\n<p>Organizar concursos de karaoke con tus amigos es muy sencillo: solo tienes que conectar SHAKE-X10D a un televisor, introducir un DVD de karaoke y empezar a cantar siguiendo la letra en pantalla. Las dos entradas de micr&oacute;fono y otras funciones, como la reserva de canciones, las puntuaciones y el eco, te permiten formar equipo con tus amigos para que canten como un aut&eacute;ntico grupo. La funci&oacute;n atenuadora de la voz integrada incluso baja la voz del CD para que puedas cantar todas tus canciones favoritas.</p>\n<p>Mueve a la multitud con los efectos de DJ. Cuatro efectos diferentes te ayudan a preparar la fiesta: Flanger crea un efecto rugiente profundo; WAH distorsiona el audio; Isolator selecciona una banda de frecuencia espec&iacute;fica; y PAN barre el sonido a trav&eacute;s de los parlantes. Los efectos de DJ, accesibles desde la aplicaci&oacute;n Fiestable, y el control de gestos te permitir&aacute;n ser creativo con las listas de reproducci&oacute;n para tus fiestas.</p>\n<p>Con&eacute;ctalo f&aacute;cilmente a tu televisor para un sonido potente y profundo en todas tus pel&iacute;culas y m&uacute;sica. Gracias al puerto HDMI, solo tendr&aacute;s que utilizar un cable.</p>\n<p>Saca tus DVD favoritos y disfr&uacute;talos en el reproductor integrado del SHAKE-X10D. Disfruta de cada explosi&oacute;n, secuencia de acci&oacute;n y escena dram&aacute;tica con el sonido Surround cinematogr&aacute;fico que te sit&uacute;a en el centro de la acci&oacute;n. Convierte tu sala en un aut&eacute;ntico cine y organiza noches de pel&iacute;cula.</p>\n<p>La tecnolog&iacute;a Near Field Communication (NFC) y Bluetooth&reg; prescinde de cables y de secuencias de configuraciones complejas. Solo necesitas tocar el SHAKE-X10D con tu dispositivo con NFC para conseguir una conexi&oacute;n r&aacute;pida y perfecta, y, a continuaci&oacute;n, comenzar a transmitir tu colecci&oacute;n de m&uacute;sica. &iquest;No tienes NFC? No hay problema. Con&eacute;ctate a trav&eacute;s de la tecnolog&iacute;a Bluetooth&reg; y listo.</p>\n<p>Copia canciones entre CD y USB. Solo tienes que conectar tu dispositivo al puerto de reproducci&oacute;n/grabaci&oacute;n y est&aacute;s listo para transferirlas. Si grabas directamente a USB, tambi&eacute;n es posible actualizar la tasa de bits del valor predeterminado de 128 kbps a 256 kbps para lograr una mejor calidad de audio.</p>\n<p>&iquest;Quieres o&iacute;r a tus DJ favoritos? Solo tienes que sintonizar con el dial de la radio FM para descubrir lo que hay ah&iacute; fuera.</p>\n<p>Reproduce &aacute;lbumes cl&aacute;sicos o compilaciones de discos con el reproductor de CD incorporado. Este sistema de audio en casa compatible con discos CD, CD-R y CD-RW. As&iacute; podr&aacute;s disfrutar de todo, desde grabaciones de estudio hasta mezclas y pistas descargadas.</p>\n<p>Descarga Sony | Music Center (llamada anteriormente SongPal) para smartphone o tablet y toma el control de tu colecci&oacute;n de m&uacute;sica. Solo tienes que conectarte mediante la tecnolog&iacute;a Bluetooth&reg; para disfrutar de acceso f&aacute;cil a todas tus pistas favoritas. La aplicaci&oacute;n tambi&eacute;n se puede utilizar para personalizar las configuraciones de sonido y garantizar un audio de calidad equilibrado.</p>\n<h4><strong>Especificaciones T&eacute;cnicas:</strong></h4>\n<p><strong>CD:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD:&nbsp;</strong>S&iacute;</p>\n<p><strong>USB1:&nbsp;</strong>S&iacute;</p>\n<p><strong>FM:&nbsp;</strong>S&iacute;</p>\n<p><strong>ENTRADA DE AUDIO1:&nbsp;</strong>S&iacute;</p>\n<p><strong>TV:&nbsp;</strong>S&iacute; (HDMI), (ENTRADA DE AUDIO)</p>\n<p><strong>BLUETOOTH&reg;: </strong>S&Iacute; (iAP a trav&eacute;s de Bluetooth&reg;)</p>\n<p><strong>ENTRADA DE AUDIO ANAL&Oacute;GICO:&nbsp;</strong>1</p>\n<p><strong>SALIDA DE AUDIO ANAL&Oacute;GICA: </strong>1</p>\n<p><strong>SALIDA HDMI:&nbsp;</strong>1</p>\n<p><strong>SALIDA DE VIDEO COMPUESTO:&nbsp;</strong>1</p>\n<p><strong>PUERTO USB:&nbsp;</strong>1</p>\n<p><strong>SALIDA DE PARLANTE FRONTAL:&nbsp;</strong>2,0</p>\n<p><strong>ENTRADA DE MICR&Oacute;FONO:&nbsp;</strong>2 (6 &phi; / Guitarra disponible para un puerto: MIC 2 / GUITAR)</p>\n<p><strong>ECUALIZADOR DE M&Uacute;SICA:&nbsp;</strong>M&Uacute;SICA</p>\n<p><strong>ECUALIZADOR LATINO:&nbsp;</strong>S&iacute;</p>\n<p><strong>FOOTBALL MODE:&nbsp;</strong>S&iacute; (DESACTIVADO / Narraci&oacute;n ACTIVADA / Narraci&oacute;n DESACTIVADA)</p>\n<p><strong>ECUALIZADOR DE VIDEO:&nbsp;</strong>PEL&Iacute;CULA1/PEL&Iacute;CULA2/JUEGO/SERIE/NOTICIA</p>\n<p><strong>MODO FIESTA:&nbsp;</strong>S&iacute;</p>\n<p><strong>FUNCI&Oacute;N DE ENFATIZACI&Oacute;N DE GRAVES:&nbsp;</strong>Mega Bass</p>\n<p><strong>MEJORA DE SONIDO DSEE:&nbsp;</strong>DSEE (AUTO)/LDAC</p>\n<p><strong>PARTY CHAIN (CON CABLE):&nbsp;</strong>S&iacute;</p>\n<p><strong>CLEARAUDIO+:&nbsp;</strong>S&iacute;</p>\n<p><strong>DOLBY&reg; DIGITAL:&nbsp;</strong>S&iacute;</p>\n<p><strong>S-FORCE FRONT SURROUND:&nbsp;</strong>S&iacute;</p>\n<p><strong>FLANGER:&nbsp;</strong>S&iacute;</p>\n<p><strong>ISOLATOR:&nbsp;</strong>S&iacute;</p>\n<p><strong>PAN:&nbsp;</strong>S&iacute; (solo por aplicaciones)</p>\n<p><strong>WAH:&nbsp;</strong>S&iacute; (solo por aplicaciones)</p>\n<p><strong>MUESTREADOR:&nbsp;</strong>S&iacute; (ara&ntilde;azos y m&aacute;s)</p>\n<p><strong>LUZ DE PARLANTE:&nbsp;</strong>S&iacute; (multicolor)</p>\n<p><strong>LUZ DE FIESTA:&nbsp;</strong>S&iacute; (L / R)</p>\n<p><strong>ATENUADOR DE VOZ:&nbsp;</strong>S&iacute;</p>\n<p><strong>CONTROL DE TECLAS:&nbsp;</strong>S&iacute;</p>\n<p><strong>PUNTUACI&Oacute;N:&nbsp;</strong>S&iacute;</p>\n<p><strong>VOLUMEN DEL MICR&Oacute;FONO:&nbsp;</strong>S&iacute;</p>\n<p><strong>ECHO:&nbsp;</strong>S&iacute;</p>\n<p><strong>TEMPORIZADOR DE APAGADO:&nbsp;</strong>S&iacute;</p>\n<p><strong>GRABACI&Oacute;N USB:&nbsp;</strong>S&iacute;</p>\n<p><strong>CONSUMO DE ENERG&Iacute;A (EN MODO DE ESPERA):&nbsp;</strong>0,5 W</p>\n<p><strong>EMPAREJAMIENTO NFC ONE-TOUCH:&nbsp;</strong>S&iacute;</p>\n<p><strong>LDAC:&nbsp;</strong>S&iacute;</p>\n<p><strong>AAC:&nbsp;</strong>S&iacute;</p>\n<p><strong>A2DP (SINK):&nbsp;</strong>S&iacute;</p>\n<p><strong>AVRCP:&nbsp;</strong>S&iacute; (versi&oacute;n 1.5)</p>\n<p><strong>SPP:&nbsp;</strong>S&iacute;</p>\n<p><strong>APLICACIONES PARA SMARTPHONES COMPATIBLES:&nbsp;</strong>S&iacute; (Sony | Music Center y Fiestable)</p>\n<p><strong>BANDA:&nbsp;</strong>FM</p>\n<p><strong>RDS:&nbsp;</strong>S&iacute;</p>\n<p><strong>ANTENA EXTERNA:&nbsp;</strong>S&iacute; (75 ohmios)</p>\n<p><strong>RANGO DE SINTONIZACI&Oacute;N (FM):&nbsp;</strong>87,5-108 MHz / 50 kHz</p>\n<p><strong>PRESINTON&Iacute;A:&nbsp;</strong>FM20</p>\n<p><strong>CIERRE DE BANDEJA:&nbsp;</strong>S&iacute;</p>\n<p><strong>CIERRE DE SEGURIDAD:&nbsp;</strong>S&iacute;</p>\n<p><strong>CD:&nbsp;</strong>S&iacute;</p>\n<p><strong>CD-R:&nbsp;</strong>S&iacute;</p>\n<p><strong>CD-RW:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD+R:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD-R:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD+R DL:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD+RW:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD-RW (VIDEO):&nbsp;</strong>S&iacute;</p>\n<p><strong>VCD:&nbsp;</strong>S&iacute;</p>\n<p><strong>MP3:&nbsp;</strong>S&iacute;</p>\n<p><strong>XVID:&nbsp;</strong>S&iacute;</p>\n<p><strong>MPEG4 *PERFIL SIMPLE: </strong>S&iacute;</p>\n<p><strong>TWEETER:&nbsp;</strong>2,5 cm x1 (tipo bocina)</p>\n<p><strong>WOOFER:&nbsp;</strong>20 cm x1 (papel)</p>\n<p><strong>SOUND PRESSURE HORN (BACK LOADED HORN): </strong>S&iacute;</p>\n<p><strong>DIMENSIONES DE LA UNIDAD PRINCIPAL (AN. X AL. X PR. EN CM) (APROX.):&nbsp;</strong>45,5 x 16,5 x 33,0</p>\n<p><strong>PESO (EN KG) (APROX.): </strong>5,8</p>\n<p><strong>DIMENSIONES DEL PARLANTE FRONTAL (AN. X AL. X PR. EN CM) (APROX.):&nbsp;</strong>31,5 x 49,0 x 38,8</p>\n<p><strong>PESO (EN KG) (APROX.):&nbsp;</strong>12</p>\n<p><strong>ANTENAS: </strong>Antena FM</p>\n<p><strong>CONTROL REMOTO:&nbsp;</strong>S&iacute;</p>', 3483.02, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 9, 47, 'LMESSY2C0000009', 'EQUIPO DE SONIDO SONY HCD-SHAKEX30 CD/ DVD/ HDMI/ BLUETOOTH /ENTRADA GUITARRA/1200W', 'LMESSY2C0000009', '<p>D&eacute;jate llevar por los estremecedores graves del Sound Pressure Horn. Aumenta eficazmente la presi&oacute;n ac&uacute;stica con el dise&ntilde;o interno en forma de bocina plegada que empuja la energ&iacute;a a trav&eacute;s de un conducto amplificador. En comparaci&oacute;n con el procesamiento de la se&ntilde;al y los amplificadores tradicionales que malgastan la energ&iacute;a, el resultado es mucho m&aacute;s eficaz, ya que aporta m&aacute;s cuerpo y profundidad a las l&iacute;neas de graves para que puedas sentirlas de verdad.</p>\n<p>LDAC es una nueva tecnolog&iacute;a de audio de Sony que te permite disfrutar de sonido de la mayor calidad de forma inal&aacute;mbrica mediante la tecnolog&iacute;a Bluetooth&reg;. Con capacidad hasta para triplicar los datos transmitidos, LDAC proporciona una experiencia de audio inal&aacute;mbrica mejorada para toda tu m&uacute;sica.</p>\n<p>Anima el ambiente con la iluminaci&oacute;n LED de los parlantes para obtener un ambiente de discoteca. Los parlantes con iluminaci&oacute;n LED incluyen varios patrones de color diferentes, que van del blanco puro al arco&iacute;ris. La potencia y la velocidad las luces, sincronizadas con el ritmo de la m&uacute;sica, combinan con el ambiente musical.</p>\n<p>Celebra tus propios miniconciertos con la entrada para guitarra. Solo tienes que enchufarla y pulsar la tecla de Guitarra para disfrutar del potente sonido de tu guitarra. Toca un solo o conecta un micr&oacute;fono para cantar tambi&eacute;n.</p>\n<p>Organizar concursos de karaoke con tus amigos es muy sencillo: solo tienes que conectar SHAKE-X30D a un televisor, introducir un DVD de karaoke y empezar a cantar siguiendo la letra en pantalla. Las dos entradas de micr&oacute;fono y otras funciones, como la reserva de canciones, las puntuaciones y el eco, te permiten formar equipo con tus amigos para que canten como un aut&eacute;ntico grupo. La funci&oacute;n atenuadora de la voz integrada incluso baja la voz del CD para que puedas cantar todas tus canciones favoritas.</p>\n<p>Mueve a la multitud con los efectos de DJ. Cuatro efectos diferentes te ayudan a preparar la fiesta: Flanger crea un efecto rugiente profundo; WAH distorsiona el audio; Isolator selecciona una banda de frecuencia espec&iacute;fica; y PAN barre el sonido a trav&eacute;s de los parlantes. Los efectos de DJ, accesibles desde la aplicaci&oacute;n Fiestable, y el control de gestos te permitir&aacute;n ser creativo con las listas de reproducci&oacute;n para tus fiestas.</p>\n<p>Con&eacute;ctalo f&aacute;cilmente a tu televisor para un sonido potente y profundo en todas tus pel&iacute;culas y m&uacute;sica. Gracias al puerto HDMI, solo tendr&aacute;s que utilizar un cable.</p>\n<p>Saca tus DVD favoritos y disfr&uacute;talos en el reproductor integrado del SHAKE-X30D. Disfruta de cada explosi&oacute;n, secuencia de acci&oacute;n y escena dram&aacute;tica con el sonido Surround cinematogr&aacute;fico que te sit&uacute;a en el centro de la acci&oacute;n. Convierte tu sala en un aut&eacute;ntico cine y organiza noches de pel&iacute;cula.</p>\n<p>La tecnolog&iacute;a Near Field Communication (NFC) y Bluetooth&reg; prescinde de cables y de secuencias de configuraciones complejas. Solo necesitas tocar el SHAKE-X10D con tu dispositivo con NFC para conseguir una conexi&oacute;n r&aacute;pida y perfecta, y, a continuaci&oacute;n, comenzar a transmitir tu colecci&oacute;n de m&uacute;sica. &iquest;No tienes NFC? No hay problema. Con&eacute;ctate a trav&eacute;s de la tecnolog&iacute;a Bluetooth&reg; y listo.</p>\n<p>Copia canciones entre CD y USB. Solo tienes que conectar tu dispositivo al puerto de reproducci&oacute;n/grabaci&oacute;n y est&aacute;s listo para transferirlas. Si grabas directamente a USB, tambi&eacute;n es posible actualizar la tasa de bits del valor predeterminado de 128 kbps a 256 kbps para lograr una mejor calidad de audio.</p>\n<p>&iquest;Quieres o&iacute;r a tus DJ favoritos? Solo tienes que sintonizar con el dial de la radio FM para descubrir lo que hay ah&iacute; fuera.</p>\n<p>Reproduce &aacute;lbumes cl&aacute;sicos o compilaciones de discos con el reproductor de CD incorporado. Este sistema de audio en casa compatible con discos CD, CD-R y CD-RW. As&iacute; podr&aacute;s disfrutar de todo, desde grabaciones de estudio hasta mezclas y pistas descargadas.</p>\n<p>Descarga Sony | Music Center (llamada anteriormente SongPal) para smartphone o tablet y toma el control de tu colecci&oacute;n de m&uacute;sica. Solo tienes que conectarte mediante la tecnolog&iacute;a Bluetooth&reg; para disfrutar de acceso f&aacute;cil a todas tus pistas favoritas. La aplicaci&oacute;n tambi&eacute;n se puede utilizar para personalizar las configuraciones de sonido y garantizar un audio de calidad equilibrado.</p>\n<h4><strong>Especificaciones T&eacute;cnicas:</strong></h4>\n<p><strong>CD:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD:&nbsp;</strong>S&iacute;</p>\n<p><strong>USB1:&nbsp;</strong>S&iacute;</p>\n<p><strong>FM:&nbsp;</strong>S&iacute;</p>\n<p><strong>ENTRADA DE AUDIO1:&nbsp;</strong>S&iacute;</p>\n<p><strong>TV:&nbsp;</strong>S&iacute; (HDMI), (ENTRADA DE AUDIO)</p>\n<p><strong>BLUETOOTH&reg;: </strong>S&Iacute; (iAP a trav&eacute;s de Bluetooth&reg;)</p>\n<p><strong>ENTRADA DE AUDIO ANAL&Oacute;GICO:&nbsp;</strong>1</p>\n<p><strong>SALIDA DE AUDIO ANAL&Oacute;GICA: </strong>1</p>\n<p><strong>SALIDA HDMI:&nbsp;</strong>1</p>\n<p><strong>SALIDA DE VIDEO COMPUESTO:&nbsp;</strong>1</p>\n<p><strong>PUERTO USB:&nbsp;</strong>1</p>\n<p><strong>SALIDA DE PARLANTE FRONTAL:&nbsp;</strong>2,0</p>\n<p><strong>ENTRADA DE MICR&Oacute;FONO:&nbsp;</strong>2 (6 &phi; / Guitarra disponible para un puerto: MIC 2 / GUITAR)</p>\n<p><strong>ECUALIZADOR DE M&Uacute;SICA:&nbsp;</strong>M&Uacute;SICA</p>\n<p><strong>ECUALIZADOR LATINO:&nbsp;</strong>S&iacute;</p>\n<p><strong>FOOTBALL MODE:&nbsp;</strong>S&iacute; (DESACTIVADO / Narraci&oacute;n ACTIVADA / Narraci&oacute;n DESACTIVADA)</p>\n<p><strong>ECUALIZADOR DE VIDEO:&nbsp;</strong>PEL&Iacute;CULA1/PEL&Iacute;CULA2/JUEGO/SERIE/NOTICIA</p>\n<p><strong>MODO FIESTA:&nbsp;</strong>S&iacute;</p>\n<p><strong>FUNCI&Oacute;N DE ENFATIZACI&Oacute;N DE GRAVES:&nbsp;</strong>Mega Bass</p>\n<p><strong>MEJORA DE SONIDO DSEE:&nbsp;</strong>DSEE (AUTO)/LDAC</p>\n<p><strong>PARTY CHAIN (CON CABLE):&nbsp;</strong>S&iacute;</p>\n<p><strong>CLEARAUDIO+:&nbsp;</strong>S&iacute;</p>\n<p><strong>DOLBY&reg; DIGITAL:&nbsp;</strong>S&iacute;</p>\n<p><strong>S-FORCE FRONT SURROUND:&nbsp;</strong>S&iacute;</p>\n<p><strong>FLANGER:&nbsp;</strong>S&iacute;</p>\n<p><strong>ISOLATOR:&nbsp;</strong>S&iacute;</p>\n<p><strong>PAN:&nbsp;</strong>S&iacute; (solo por aplicaciones)</p>\n<p><strong>WAH:&nbsp;</strong>S&iacute; (solo por aplicaciones)</p>\n<p><strong>MUESTREADOR:&nbsp;</strong>S&iacute; (ara&ntilde;azos y m&aacute;s)</p>\n<p><strong>LUZ DE PARLANTE:&nbsp;</strong>S&iacute; (multicolor)</p>\n<p><strong>LUZ DE FIESTA:&nbsp;</strong>S&iacute; (L / R)</p>\n<p><strong>ATENUADOR DE VOZ:&nbsp;</strong>S&iacute;</p>\n<p><strong>CONTROL DE TECLAS:&nbsp;</strong>S&iacute;</p>\n<p><strong>PUNTUACI&Oacute;N:&nbsp;</strong>S&iacute;</p>\n<p><strong>VOLUMEN DEL MICR&Oacute;FONO:&nbsp;</strong>S&iacute;</p>\n<p><strong>ECHO:&nbsp;</strong>S&iacute;</p>\n<p><strong>TEMPORIZADOR DE APAGADO:&nbsp;</strong>S&iacute;</p>\n<p><strong>GRABACI&Oacute;N USB:&nbsp;</strong>S&iacute;</p>\n<p><strong>CONSUMO DE ENERG&Iacute;A (EN MODO DE ESPERA):&nbsp;</strong>0,5 W</p>\n<p><strong>EMPAREJAMIENTO NFC ONE-TOUCH:&nbsp;</strong>S&iacute;</p>\n<p><strong>LDAC:&nbsp;</strong>S&iacute;</p>\n<p><strong>AAC:&nbsp;</strong>S&iacute;</p>\n<p><strong>A2DP (SINK):&nbsp;</strong>S&iacute;</p>\n<p><strong>AVRCP:&nbsp;</strong>S&iacute; (versi&oacute;n 1.5)</p>\n<p><strong>SPP:&nbsp;</strong>S&iacute;</p>\n<p><strong>APLICACIONES PARA SMARTPHONES COMPATIBLES:&nbsp;</strong>S&iacute; (Sony | Music Center y Fiestable)</p>\n<p><strong>BANDA:&nbsp;</strong>FM</p>\n<p><strong>RDS:&nbsp;</strong>S&iacute;</p>\n<p><strong>ANTENA EXTERNA:&nbsp;</strong>S&iacute; (75 ohmios)</p>\n<p><strong>RANGO DE SINTONIZACI&Oacute;N (FM):&nbsp;</strong>87,5-108 MHz / 50 kHz</p>\n<p><strong>PRESINTON&Iacute;A:&nbsp;</strong>FM20</p>\n<p><strong>CIERRE DE BANDEJA:&nbsp;</strong>S&iacute;</p>\n<p><strong>CIERRE DE SEGURIDAD:&nbsp;</strong>S&iacute;</p>\n<p><strong>CD:&nbsp;</strong>S&iacute;</p>\n<p><strong>CD-R:&nbsp;</strong>S&iacute;</p>\n<p><strong>CD-RW:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD+R:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD-R:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD+R DL:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD+RW:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD-RW (VIDEO):&nbsp;</strong>S&iacute;</p>\n<p><strong>VCD:&nbsp;</strong>S&iacute;</p>\n<p><strong>MP3:&nbsp;</strong>S&iacute;</p>\n<p><strong>XVID:&nbsp;</strong>S&iacute;</p>\n<p><strong>MPEG4 *PERFIL SIMPLE: </strong>S&iacute;</p>\n<p><strong>TWEETER:&nbsp;</strong>2,5 cm x1 (tipo bocina)</p>\n<p><strong>WOOFER:&nbsp;</strong>25 cm x1 (MRC)</p>\n<p><strong>SOUND PRESSURE HORN (BACK LOADED HORN): </strong>S&iacute;</p>\n<p><strong>DIMENSIONES DE LA UNIDAD PRINCIPAL (AN. X AL. X PR. EN CM) (APROX.):&nbsp;</strong>45,5 x 16,5 x 33,0</p>\n<p><strong>PESO (EN KG) (APROX.): </strong>5,8</p>\n<p><strong>DIMENSIONES DEL PARLANTE FRONTAL (AN. X AL. X PR. EN CM) (APROX.):&nbsp;</strong>36,8 x 58,5 x 39,1</p>\n<p><strong>PESO (EN KG) (APROX.):&nbsp;</strong>16,1</p>\n<p><strong>ANTENAS: </strong>Antena FM</p>\n<p><strong>CONTROL REMOTO:&nbsp;</strong>S&iacute;</p>', 4174.04, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 9, 47, 'LMESSY2C0000008', 'EQUIPO DE SONIDO SONY HCD-SHAKEX70 CD/ DVD/ HDMI/ BLUETOOTH /ENTRADA GUITARRA/2400W', 'LMESSY2C0000008', '<p>D&eacute;jate llevar por los estremecedores graves del Sound Pressure Horn. Aumenta eficazmente la presi&oacute;n ac&uacute;stica con el dise&ntilde;o interno en forma de bocina plegada que empuja la energ&iacute;a a trav&eacute;s de un conducto amplificador. En comparaci&oacute;n con el procesamiento de la se&ntilde;al y los amplificadores tradicionales que malgastan la energ&iacute;a, el resultado es mucho m&aacute;s eficaz, ya que aporta m&aacute;s cuerpo y profundidad a las l&iacute;neas de graves para que puedas sentirlas de verdad.</p>\n<p>LDAC es una nueva tecnolog&iacute;a de audio de Sony que te permite disfrutar de sonido de la mayor calidad de forma inal&aacute;mbrica mediante la tecnolog&iacute;a Bluetooth&reg;. Con capacidad hasta para triplicar los datos transmitidos, LDAC proporciona una experiencia de audio inal&aacute;mbrica mejorada para toda tu m&uacute;sica.</p>\n<p>Anima el ambiente con la iluminaci&oacute;n LED de los parlantes para obtener un ambiente de discoteca. Los parlantes con iluminaci&oacute;n LED incluyen varios patrones de color diferentes, que van del blanco puro al arco&iacute;ris. La potencia y la velocidad las luces, sincronizadas con el ritmo de la m&uacute;sica, combinan con el ambiente musical.</p>\n<p>Celebra tus propios miniconciertos con la entrada para guitarra. Solo tienes que enchufarla y pulsar la tecla de Guitarra para disfrutar del potente sonido de tu guitarra. Toca un solo o conecta un micr&oacute;fono para cantar tambi&eacute;n.</p>\n<p>Organizar concursos de karaoke con tus amigos es muy sencillo: solo tienes que conectar SHAKE-X70D a un televisor, introducir un DVD de karaoke y empezar a cantar siguiendo la letra en pantalla. Las dos entradas de micr&oacute;fono y otras funciones, como la reserva de canciones, las puntuaciones y el eco, te permiten formar equipo con tus amigos para que canten como un aut&eacute;ntico grupo. La funci&oacute;n atenuadora de la voz integrada incluso baja la voz del CD para que puedas cantar todas tus canciones favoritas.</p>\n<p>Mueve a la multitud con los efectos de DJ. Cuatro efectos diferentes te ayudan a preparar la fiesta: Flanger crea un efecto rugiente profundo; WAH distorsiona el audio; Isolator selecciona una banda de frecuencia espec&iacute;fica; y PAN barre el sonido a trav&eacute;s de los parlantes. Los efectos de DJ, accesibles desde la aplicaci&oacute;n Fiestable, y el control de gestos te permitir&aacute;n ser creativo con las listas de reproducci&oacute;n para tus fiestas.</p>\n<p>Con&eacute;ctalo f&aacute;cilmente a tu televisor para un sonido potente y profundo en todas tus pel&iacute;culas y m&uacute;sica. Gracias al puerto HDMI, solo tendr&aacute;s que utilizar un cable.</p>\n<p>Saca tus DVD favoritos y disfr&uacute;talos en el reproductor integrado del SHAKE-X70D. Disfruta de cada explosi&oacute;n, secuencia de acci&oacute;n y escena dram&aacute;tica con el sonido Surround cinematogr&aacute;fico que te sit&uacute;a en el centro de la acci&oacute;n. Convierte tu sala en un aut&eacute;ntico cine y organiza noches de pel&iacute;cula.</p>\n<p>La tecnolog&iacute;a Near Field Communication (NFC) y Bluetooth&reg; prescinde de cables y de secuencias de configuraciones complejas. Solo necesitas tocar el SHAKE-X10D con tu dispositivo con NFC para conseguir una conexi&oacute;n r&aacute;pida y perfecta, y, a continuaci&oacute;n, comenzar a transmitir tu colecci&oacute;n de m&uacute;sica. &iquest;No tienes NFC? No hay problema. Con&eacute;ctate a trav&eacute;s de la tecnolog&iacute;a Bluetooth&reg; y listo.</p>\n<p>Copia canciones entre CD y USB. Solo tienes que conectar tu dispositivo al puerto de reproducci&oacute;n/grabaci&oacute;n y est&aacute;s listo para transferirlas. Si grabas directamente a USB, tambi&eacute;n es posible actualizar la tasa de bits del valor predeterminado de 128 kbps a 256 kbps para lograr una mejor calidad de audio.</p>\n<p>&iquest;Quieres o&iacute;r a tus DJ favoritos? Solo tienes que sintonizar con el dial de la radio FM para descubrir lo que hay ah&iacute; fuera.</p>\n<p>Reproduce &aacute;lbumes cl&aacute;sicos o compilaciones de discos con el reproductor de CD incorporado. Este sistema de audio en casa compatible con discos CD, CD-R y CD-RW. As&iacute; podr&aacute;s disfrutar de todo, desde grabaciones de estudio hasta mezclas y pistas descargadas.</p>\n<p>Descarga Sony | Music Center (llamada anteriormente SongPal) para smartphone o tablet y toma el control de tu colecci&oacute;n de m&uacute;sica. Solo tienes que conectarte mediante la tecnolog&iacute;a Bluetooth&reg; para disfrutar de acceso f&aacute;cil a todas tus pistas favoritas. La aplicaci&oacute;n tambi&eacute;n se puede utilizar para personalizar las configuraciones de sonido y garantizar un audio de calidad equilibrado.</p>\n<h4><strong>Especificaciones T&eacute;cnicas:</strong></h4>\n<p><strong>CD:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD:&nbsp;</strong>S&iacute;</p>\n<p><strong>USB1:&nbsp;</strong>S&iacute;</p>\n<p><strong>FM:&nbsp;</strong>S&iacute;</p>\n<p><strong>ENTRADA DE AUDIO1:&nbsp;</strong>S&iacute;</p>\n<p><strong>TV:&nbsp;</strong>S&iacute; (HDMI), (ENTRADA DE AUDIO)</p>\n<p><strong>BLUETOOTH&reg;: </strong>S&Iacute; (iAP a trav&eacute;s de Bluetooth&reg;)</p>\n<p><strong>ENTRADA DE AUDIO ANAL&Oacute;GICO:&nbsp;</strong>1</p>\n<p><strong>SALIDA DE AUDIO ANAL&Oacute;GICA: </strong>1</p>\n<p><strong>SALIDA HDMI:&nbsp;</strong>1</p>\n<p><strong>SALIDA DE VIDEO COMPUESTO:&nbsp;</strong>1</p>\n<p><strong>PUERTO USB:&nbsp;</strong>1</p>\n<p><strong>SALIDA DE PARLANTE FRONTAL:&nbsp;</strong>2,0</p>\n<p><strong>ENTRADA DE MICR&Oacute;FONO:&nbsp;</strong>2 (6 &phi; / Guitarra disponible para un puerto: MIC 2 / GUITAR)</p>\n<p><strong>ECUALIZADOR DE M&Uacute;SICA:&nbsp;</strong>M&Uacute;SICA</p>\n<p><strong>ECUALIZADOR LATINO:&nbsp;</strong>S&iacute;</p>\n<p><strong>FOOTBALL MODE:&nbsp;</strong>S&iacute; (DESACTIVADO / Narraci&oacute;n ACTIVADA / Narraci&oacute;n DESACTIVADA)</p>\n<p><strong>ECUALIZADOR DE VIDEO:&nbsp;</strong>PEL&Iacute;CULA1/PEL&Iacute;CULA2/JUEGO/SERIE/NOTICIA</p>\n<p><strong>MODO FIESTA:&nbsp;</strong>S&iacute;</p>\n<p><strong>FUNCI&Oacute;N DE ENFATIZACI&Oacute;N DE GRAVES:&nbsp;</strong>Mega Bass</p>\n<p><strong>MEJORA DE SONIDO DSEE:&nbsp;</strong>DSEE (AUTO)/LDAC</p>\n<p><strong>PARTY CHAIN (CON CABLE):&nbsp;</strong>S&iacute;</p>\n<p><strong>CLEARAUDIO+:&nbsp;</strong>S&iacute;</p>\n<p><strong>DOLBY&reg; DIGITAL:&nbsp;</strong>S&iacute;</p>\n<p><strong>S-FORCE FRONT SURROUND:&nbsp;</strong>S&iacute;</p>\n<p><strong>FLANGER:&nbsp;</strong>S&iacute;</p>\n<p><strong>ISOLATOR:&nbsp;</strong>S&iacute;</p>\n<p><strong>PAN:&nbsp;</strong>S&iacute; (solo por aplicaciones)</p>\n<p><strong>WAH:&nbsp;</strong>S&iacute; (solo por aplicaciones)</p>\n<p><strong>MUESTREADOR:&nbsp;</strong>S&iacute; (ara&ntilde;azos y m&aacute;s)</p>\n<p><strong>LUZ DE PARLANTE:&nbsp;</strong>S&iacute; (multicolor)</p>\n<p><strong>LUZ DE FIESTA:&nbsp;</strong>S&iacute; (L / R)</p>\n<p><strong>ATENUADOR DE VOZ:&nbsp;</strong>S&iacute;</p>\n<p><strong>CONTROL DE TECLAS:&nbsp;</strong>S&iacute;</p>\n<p><strong>PUNTUACI&Oacute;N:&nbsp;</strong>S&iacute;</p>\n<p><strong>VOLUMEN DEL MICR&Oacute;FONO:&nbsp;</strong>S&iacute;</p>\n<p><strong>ECHO:&nbsp;</strong>S&iacute;</p>\n<p><strong>TEMPORIZADOR DE APAGADO:&nbsp;</strong>S&iacute;</p>\n<p><strong>GRABACI&Oacute;N USB:&nbsp;</strong>S&iacute;</p>\n<p><strong>CONSUMO DE ENERG&Iacute;A (EN MODO DE ESPERA):&nbsp;</strong>0,5 W</p>\n<p><strong>EMPAREJAMIENTO NFC ONE-TOUCH:&nbsp;</strong>S&iacute;</p>\n<p><strong>LDAC:&nbsp;</strong>S&iacute;</p>\n<p><strong>AAC:&nbsp;</strong>S&iacute;</p>\n<p><strong>A2DP (SINK):&nbsp;</strong>S&iacute;</p>\n<p><strong>AVRCP:&nbsp;</strong>S&iacute; (versi&oacute;n 1.5)</p>\n<p><strong>SPP:&nbsp;</strong>S&iacute;</p>\n<p><strong>APLICACIONES PARA SMARTPHONES COMPATIBLES:&nbsp;</strong>S&iacute; (Sony | Music Center y Fiestable)</p>\n<p><strong>BANDA:&nbsp;</strong>FM</p>\n<p><strong>RDS:&nbsp;</strong>S&iacute;</p>\n<p><strong>ANTENA EXTERNA:&nbsp;</strong>S&iacute; (75 ohmios)</p>\n<p><strong>RANGO DE SINTONIZACI&Oacute;N (FM):&nbsp;</strong>87,5-108 MHz / 50 kHz</p>\n<p><strong>PRESINTON&Iacute;A:&nbsp;</strong>FM20</p>\n<p><strong>CIERRE DE BANDEJA:&nbsp;</strong>S&iacute;</p>\n<p><strong>CIERRE DE SEGURIDAD:&nbsp;</strong>S&iacute;</p>\n<p><strong>CD:&nbsp;</strong>S&iacute;</p>\n<p><strong>CD-R:&nbsp;</strong>S&iacute;</p>\n<p><strong>CD-RW:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD+R:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD-R:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD+R DL:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD+RW:&nbsp;</strong>S&iacute;</p>\n<p><strong>DVD-RW (VIDEO):&nbsp;</strong>S&iacute;</p>\n<p><strong>VCD:&nbsp;</strong>S&iacute;</p>\n<p><strong>MP3:&nbsp;</strong>S&iacute;</p>\n<p><strong>XVID:&nbsp;</strong>S&iacute;</p>\n<p><strong>MPEG4 *PERFIL SIMPLE: </strong>S&iacute;</p>\n<p><strong>TWEETER:&nbsp;</strong>2,5 cm x1 (tipo bocina)</p>\n<p><strong>WOOFER:&nbsp;</strong>25 cm x1 (MRC)</p>\n<p><strong>RANGO MEDIO:&nbsp;</strong>15 cm x1 (papel)</p>\n<p><strong>SOUND PRESSURE HORN (BACK LOADED HORN): </strong>S&iacute;</p>\n<p><strong>DIMENSIONES DE LA UNIDAD PRINCIPAL (AN. X AL. X PR. EN CM) (APROX.):&nbsp;</strong>45,5 x 16,5 x 33,0</p>\n<p><strong>PESO (EN KG) (APROX.): </strong>6,2</p>\n<p><strong>DIMENSIONES DEL PARLANTE FRONTAL (AN. X AL. X PR. EN CM) (APROX.):&nbsp;</strong>51,0 x 77,3 x 49,1</p>\n<p><strong>PESO (EN KG) (APROX.):&nbsp;</strong>30,6</p>\n<p><strong>ANTENAS: </strong>Antena FM</p>\n<p><strong>CONTROL REMOTO:&nbsp;</strong>S&iacute;</p>', 6198.24, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 9, 47, 'LMESSY000000024', 'EQUIPO DE SONIDO SONY MHC -V21D BLUETOOTH / KARAOKE/ CD/ DVD/ LUZ DE PARLANTE/ ', 'LMESSY000000024', NULL, 2399.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 9, 47, 'LMESSY000000026', 'EQUIPO DE SONIDO SONY MHC-V02/ BLUETOOTH /CD/ USB /NFC /KARAOKE /DJ             ', 'LMESSY000000026', '<ul>\n<li>El sonido de graves a larga distancia del JET BASS BOOSTER permite que la m&uacute;sica suene m&aacute;s potente en cada rinc&oacute;n de la fiesta.</li>\n<li>Compatible con tr&iacute;pode.</li>\n<li>Transmisi&oacute;n Bluetooth&reg; de alta calidad con LDAC&trade;.</li>\n<li>Conexi&oacute;n de varios dispositivos.</li>\n<li>Sonido de graves de largo alcance con JET BASS BOOSTER.</li>\n<li>Control de voz y luces de fiesta a trav&eacute;s de Fiestable.</li>\n<li>Asa para una elevaci&oacute;n segura y una portabilidad sencilla.</li>\n</ul>', 1675.20, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `products` (`id`, `subcategory_id`, `brand_id`, `sku`, `name`, `slug`, `description`, `price`, `offer_price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(87, 9, 47, 'LMESSY000000027', 'EQUIPO DE SONIDO SONY MHC-V42D                                                  ', 'LMESSY000000027', '<p></p><h4><b>Inunda la pista de baile con el sonido</b></h4>Lleva el sonido propio de los festivales a tus cumpleaÃ±os, ocasiones especiales y eventos mÃ¡s animados. El sonido de graves a larga distancia del JET BASS BOOSTER permite que la mÃºsica suene mÃ¡s potente en cada rincÃ³n de la fiesta.<br><h4><b>Tweeters en Ã¡ngulo</b></h4>Inunda la sala con el sonido de festival mÃ¡s potente gracias a los tweeters estratÃ©gicamente orientados para propagar mejor el sonido.<br>Siente el ritmo incluso a gran distancia con JET BASS BOOSTER<br>La estructura cÃ³nica de conducto Bass Reflex concentra el flujo de aire del sonido de los graves, para que puedas oÃ­rlos bien y sentirlos fÃ­sicamente, aunque estÃ©s entre la multitud o lejos del parlante.<br><h4><b>SONIDO EN VIVO</b></h4>La tecnologÃ­a DSP crea el ambiente de festival inundando el espacio del sonido realista de un festival de mÃºsica o un concierto en vivo.<br><h4><b>Luces de fiesta e iluminaciÃ³n del parlante</b></h4>Ilumina todos los rincones de la pista de baile por muy grande que sea con luces de fiesta multicolor y luces de parlante para crear un autÃ©ntico ambiente de discoteca o festival.<br><h4><b>Control de voz a travÃ©s de Fiestable</b></h4>Cambia de pista y enciende y controla las luces de colores con la voz. Selecciona el control por voz a travÃ©s de la aplicaciÃ³n Fiestable y di uno de los 39 comandos disponibles con los que controlar la reproducciÃ³n de mÃºsica, las luces y el modo KARAOKE.<br><h4><b>Despierta el cantante que llevas dentro</b></h4>Haz que todos disfruten: con 2 entradas de micrÃ³fono, tÃº y tus amigos podrÃ¡n competir cantando sus canciones favoritas. Agrega algo de rock &amp; roll conectando una guitarra a una de las entradas y usando el sistema como amplificador. Disfruta de tres modos: NÃ­tido para un sonido claro, DistorsiÃ³n para un sonido de guitarra distorsionado y Bajo para tocar el bajo.<br><h4><b>Control por gestos verticales y horizontales</b></h4>Salta una pista, cambia de Flanger a WAH, sube el micrÃ³fono de karaoke, controla el tono del micrÃ³fono y la mÃºsica, o sube el volumen con un movimiento vertical u horizontal de la mano. El control por gestos te permite controlar las funciones de los MHC-V42D de forma rÃ¡pida y sencilla, para que puedas seguir disfrutando de la fiesta en todo momento.<br><h4><b>ContrÃ³lalo todo desde la pista de baile.</b></h4>La aplicaciÃ³n Sony | Music Center te permite controlar la configuraciÃ³n de la mÃºsica y el sonido directamente desde el telÃ©fono. AdemÃ¡s, la aplicaciÃ³n Fiestable pone en tus manos el control de los colores de la iluminaciÃ³n y te permite activar los modos de DJ y karaoke. Para ello, solo tienes que mover la muÃ±eca, gracias a la intuitiva funciÃ³n de control de movimiento.&nbsp;<br><h4><b>SÃ© el rey de la fiesta</b></h4>Comparte un estado sobre tu fiesta en las redes sociales con un simple clic desde la aplicaciÃ³n Fiestable. A continuaciÃ³n, sube la mÃºsica para ser de los mÃ¡s fiesteros y convertirte oficialmente en el rey de la fiesta.<br><h4><b>Mejora la experiencia con las luces de fiesta a travÃ©s de Fiestable</b></h4>Solo tienes que tocar la opciÃ³n de luces de fiesta en la aplicaciÃ³n Fiestable de tu smartphone para que la pantalla empiece a imitar los efectos de iluminaciÃ³n del sistema de sonido, parpadeando y cambiando de color al ritmo de la mÃºsica.<br><h4><b>Salida HDMI para una instalaciÃ³n sencilla</b></h4>Con la salida HDMI (ARC), puedes conectar fÃ¡cilmente el sistema al televisor. Ve la televisiÃ³n y tus DVD en la pantalla mientras disfrutas de un sonido a lo grande con los parlantes del MHC-V42D.<br><h4><b>Reproduce pelÃ­culas con el reproductor de DVD integrado</b></h4>Vive la emociÃ³n en cada escena con una potencia de volumen y presiÃ³n acÃºstica que te sitÃºan en el centro de la acciÃ³n. Convierte el salÃ³n de tu casa en un autÃ©ntico cine y organiza noches de pelÃ­cula<br><h4><b>Con la conexiÃ³n de varios dispositivos, mÃ¡s personas pueden controlar la mÃºsica</b></h4>El MHC-V42D les permite a tus amigos y a ti emparejar de manera simultÃ¡nea hasta tres smartphones con la tecnologÃ­a BluetoothÂ®. PodrÃ¡s reproducir pistas de todas tus bibliotecas de mÃºsica, lo que te ofrecerÃ¡ aÃºn mÃ¡s posibilidades.<br><h4><b>Asa para que puedas transportarlo fÃ¡cilmente</b></h4>Cuando quieras mover el MHC-V42D, solo tienes que agarrarlo por la cÃ³moda asa y llevÃ¡rtelo adonde quieras.<p></p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>CD: SÃ­<br></li><li>DVD: SÃ­</li><li>USB1: SÃ­</li><li>FM: SÃ­</li><li>ENTRADA DE AUDIO1: SÃ­</li><li>TV: SÃ­ (HDMI), (ENTRADA DE AUDIO)</li><li>BLUETOOTHÂ®: SÃ (iAP a travÃ©s de BluetoothÂ®)</li><li>ENTRADA DE AUDIO ANALÃ“GICO: 1</li><li>SALIDA DE AUDIO ANALÃ“GICA: 1</li><li>SALIDA HDMI: 1</li><li>PUERTO USB: 1</li><li>ENTRADA DE MICRÃ“FONO: 2 (6 Ï† / Guitarra disponible para un puerto: MIC 2 / GUITAR)</li><li>ECUALIZADOR DE MÃšSICA: MÃºsica</li><li>ECUALIZADOR LATINO: SÃ­ (REGUETÃ“N/POP/LATINO/SALSA/RANCHERA/CUMBIA/BACHATA/VALLENATO)</li><li>FOOTBALL MODE: SÃ (DESACTIVADO / NarraciÃ³n ACTIVADA / NarraciÃ³n DESACTIVADA)</li><li>ECUALIZADOR DE VIDEO: PELÃCULA/JUEGO/SERIE/NOTICIA</li><li>MODO FIESTA: SÃ­</li><li>FUNCIÃ“N DE ENFATIZACIÃ“N DE GRAVES: MEGA BASS</li><li>MEJORA DE SONIDO DSEE: DSEE (AUTO)</li><li>PARTY CHAIN (CON CABLE): SÃ­</li><li>WIRELESS PARTY CHAIN MEDIANTE BLUETOOTHÂ®: SÃ­</li><li>FUNCIÃ“N DE PARLANTE ADICIONAL (BLUETOOTHÂ®): SÃ­</li><li>CLEARAUDIO+: SÃ­</li><li>DOLBYÂ® DIGITAL: SÃ­</li><li>FLANGER: SÃ­</li><li>ISOLATOR: SÃ­</li><li>PAN: SÃ­</li><li>WAH: SÃ­</li><li>MUESTREADOR: SÃ­ (araÃ±azos y mÃ¡s)</li><li>TAIKO: No</li><li>LUZ DE PARLANTE: SÃ­ (azul cielo para WF)</li><li>LUZ DE FIESTA: SÃ­ (para frontal, R / G / B)</li><li>ATENUADOR DE VOZ: SÃ­</li><li>CONTROL DE TECLAS: SÃ­</li><li>PUNTUACIÃ“N: SÃ­</li><li>VOLUMEN DEL MICRÃ“FONO: SÃ­</li><li>ECHO: SÃ­</li><li>VOZ DE GUÃA: SÃ­ (solo aplicaciones)</li><li>CAMBIADOR DE VOZ: SÃ­</li><li>CONTROL DE GESTOS: SÃ­ (direcciÃ³n vertical y horizontal)</li><li>TEMPORIZADOR DE APAGADO: SÃ­</li><li>SALIDA DE CARGA DE PUERTO USB: 1A</li><li>TECLAS TÃCTILES: No</li><li>GRABACIÃ“N USB: SÃ­</li><li>CONSUMO DE ENERGÃA (EN MODO DE ESPERA): 0,5 W</li><li>EMPAREJAMIENTO NFC ONE-TOUCH: SÃ­</li><li>LDAC: SÃ­</li><li>AAC: SÃ­</li><li>A2DP (SINK): SÃ­</li><li>AVRCP: SÃ­ (versiÃ³n 1.3)</li><li>SPP: SÃ­</li><li>APLICACIONES PARA SMARTPHONES COMPATIBLES: SÃ­ (Music Center y Fiestable)</li><li>BANDA: FM</li><li>RDS: SÃ­</li><li>ANTENA EXTERNA: -</li><li>RANGO DE SINTONIZACIÃ“N (FM): 87,5-108 MHz / 50 kHz</li><li>PRESINTONÃA: FM20</li><li>CIERRE DE BANDEJA: SÃ­</li><li>CIERRE DE SEGURIDAD: SÃ­</li><li>ASA DE TRANSPORTE: SÃ­ (lateral)</li><li>CD: SÃ­</li><li>CD-R: SÃ­</li><li>CD-RW: SÃ­</li><li>DVD: SÃ­</li><li>DVD+R: SÃ­</li><li>DVD-R: Yes</li><li>DVD+R DL: SÃ­</li><li>DVD+RW: SÃ­</li><li>DVD-RW (VIDEO): SÃ­</li><li>VCD: SÃ­</li><li>MP3: SÃ­</li><li>XVID: SÃ­</li><li>MPEG4 *PERFIL SIMPLE: SÃ­ (tambiÃ©n compatible con MPEG1)</li><li>SONIDO DE 360Â° (TWEETER TRASERO): No</li><li>SPREAD SOUND GENERATOR: No</li><li>JET BASS BOOSTER: SÃ­</li><li>TWEETER: 4 cm x2 (tipo cono)</li><li>RANGO MEDIO: 8 cm x2 (tipo cono)</li><li>WOOFER: 25 cm x 1</li><li>DIMENSIONES DE LA UNIDAD PRINCIPAL (AN. X AL. X PR. EN CM) (APROX.): 32,8 x 79,9 x 30,0 cm</li><li>PESO (EN KG) (APROX.): 12,6 kg</li><li>DIMENSIONES DEL PARLANTE FRONTAL (AN. X AL. X PR. EN CM) (APROX.): -</li><li>PESO (EN KG) (APROX.): -</li><li>ANTENA FM: SÃ­</li><li>CONTROL REMOTO: SÃ­</li></ul>', 3429.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 9, 47, 'LMESSY000000019', 'EQUIPO DE SONIDO SONY MHC-V71D BLUETOOTH / KARAOKE/ CD/DVD/CONTROL DE GESTOS/ LUCES 360Ã‚Â° /MODO TAIKO/RUEDAS', 'LMESSY000000019', '<p><h4><b>Disfruta de la tecnologÃ­a SONIDO EN VIVO</b></h4>Disfruta del mismo sonido de alta calidad en cualquier zona de la fiesta. La tecnologÃ­a SONIDO EN VIVO extiende el sonido a travÃ©s de toda la fiesta, de modo que todo el mundo baile al mismo ritmo.<br><h4><b>Altavoces en Ã¡ngulo</b></h4>Tweeters y altavoces de rango medio para que el sonido llegue a un Ã¡rea mÃ¡s amplia.<br><h4><b>Generador de sonido expansivo</b></h4>La funciÃ³n Spread Sound Generator dirige el sonido a travÃ©s de toda la pista de baile, para que todo el mundo disfrute de un nivel similar de claridad y volumen.<br><h4><b>Modo de juego Taiko</b></h4>Pon tu ritmo a prueba con el modo de juego Taiko: toca y desliza el panel superior al tiempo que las luces se iluminan y descubre quiÃ©n consigue la mayor puntuaciÃ³n en la fiesta.<br><h4><b>Luces de fiesta de 360Â°</b></h4>Ilumina todos los rincones de la pista de baile con luces de fiesta de 360 grados y crea un autÃ©ntico ambiente de discoteca o festival.<br><h4><b>Modo Taiko</b></h4>Puedes tocar utilizando muestreos como bongo, yembe, surdo y el tambor japonÃ©s Taiko, simplemente tocando y deslizando el panel superior al ritmo de la mÃºsica.&nbsp;<br><h4><b>Potencia la fiesta con altavoces adicionales</b></h4>Disfruta de un sonido mÃ¡s potente conectando varios sistemas de audio en casa mediante BluetoothÂ®. Conecta hasta 50 sistemas de audio en casa compatibles y sincroniza la mÃºsica y la iluminaciÃ³n.<br><h4><b>ContrÃ³lalo todo desde la pista de baile</b></h4>La aplicaciÃ³n Sony | Music Center te permite controlar la configuraciÃ³n de la mÃºsica y el sonido directamente desde el telÃ©fono. AdemÃ¡s, la aplicaciÃ³n Fiestable pone en tus manos el control de los colores de la iluminaciÃ³n y te permite activar los modos DJ y karaoke. Para ello, solo tienes que mover la muÃ±eca, gracias a la intuitiva funciÃ³n de control de movimiento.<br><h4><b>Salida HDMIÂ®</b></h4>Ve tus programas de TV favoritos en la pantalla normal, mientras disfrutas de un sonido a lo grande con los potentes altavoces.<br><h4><b>Reproductor de DVD integrado</b></h4>PodrÃ¡s ver pelÃ­culas fÃ¡cilmente gracias al reproductor de DVD integrado y disfrutar de un sonido excepcional con el que tus escenas favoritas cobran vida.<br><h4><b>TransmisiÃ³n perfecta con NFC y BLUETOOTHÂ®</b></h4>Las tecnologÃ­as Near Field Communication (NFC) y BluetoothÂ® prescinden de cables y de secuencias de configuraciones complejas. Solo necesitas tocar el MHC-V71D con tu dispositivo con NFC para conseguir una conexiÃ³n rÃ¡pida y fluida. Ahora ya puedes comenzar a transmitir tu colecciÃ³n de mÃºsica. Â¿No tienes NFC? No te preocupes. ConÃ©ctate mediante la tecnologÃ­a BluetoothÂ® y listo.<br><h4><b>El puerto USB te permite conectar y reproducir</b></h4>Reproduce las pistas de un dispositivo USB o crea tus propias listas de reproducciÃ³n con la grabaciÃ³n directa de CD a USB. Solo tienes que conectar tu dispositivo al puerto de reproducciÃ³n/grabaciÃ³n y animar la fiesta con todas tus canciones favoritas.<br><h4><b>Gracias a los efectos de DJ podrÃ¡s dar tu toque personal a las pistas&nbsp;</b></h4>Anima a los invitados con los efectos de DJ. Los cuatro efectos diferentes crean el escenario perfecto para tu fiesta: Flanger crea un efecto de retardo sonoro, similar al estruendo de un aviÃ³n a reacciÃ³n; WAH sube y baja automÃ¡ticamente la frecuencia de un filtro; Isolator aÃ­sla una banda de frecuencia especÃ­fica; y PAN barre el sonido en ambos altavoces. Puedes utilizar los efectos de DJ con la aplicaciÃ³n Fiestable y el control de gestos, por lo que dejar fluir tu creatividad en las listas de reproducciÃ³n para tus fiestas te resultarÃ¡ mÃ¡s fÃ¡cil que nunca.</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>CD: SÃ­<br></li><li>DVD: SÃ­</li><li>USB1: SÃ­</li><li>FM: SÃ­</li><li>ENTRADA DE AUDIO1: SÃ­</li><li>TV: SÃ­ (HDMI), (ENTRADA DE AUDIO)</li><li>BLUETOOTHÂ®: SÃ (iAP a travÃ©s de BluetoothÂ®)</li><li>ENTRADA DE AUDIO ANALÃ“GICO: 1</li><li>SALIDA DE AUDIO ANALÃ“GICA: 1</li><li>SALIDA HDMI: 1</li><li>PUERTO USB: 1</li><li>ENTRADA DE MICRÃ“FONO: 2 (6 Ï† / Guitarra disponible para un puerto: MIC 2 / GUITAR)</li><li>ECUALIZADOR DE MÃšSICA: MÃºsica (EMOTION EQ)</li><li>FOOTBALL MODE: SÃ (DESACTIVADO / NarraciÃ³n ACTIVADA / NarraciÃ³n DESACTIVADA)</li><li>ECUALIZADOR DE VIDEO: PELÃCULA/JUEGO/SERIE/NOTICIA</li><li>MODO FIESTA: SÃ­</li><li>FUNCIÃ“N DE ENFATIZACIÃ“N DE GRAVES: MEGA BASS</li><li>MEJORA DE SONIDO DSEE: DSEE (AUTO)</li><li>PARTY CHAIN (CON CABLE): SÃ­</li><li>WIRELESS PARTY CHAIN MEDIANTE BLUETOOTHÂ®: SÃ­</li><li>FUNCIÃ“N DE PARLANTE ADICIONAL (BLUETOOTHÂ®): SÃ­</li><li>CLEARAUDIO+: SÃ­</li><li>DOLBYÂ® DIGITAL: SÃ­</li><li>CINEMA SPACE/SURROUND: -/SÃ­</li><li>FLANGER: SÃ­</li><li>ISOLATOR: SÃ­</li><li>PAN: SÃ­</li><li>WAH: SÃ­</li><li>MUESTREADOR: SÃ­ (araÃ±azos y mÃ¡s)</li><li>LUZ DE PARLANTE: SÃ­ (azul cielo para WF)</li><li>LUZ DE FIESTA: SÃ­ (para frontal, R / G / B)</li><li>ATENUADOR DE VOZ: SÃ­</li><li>CONTROL DE TECLAS: SÃ­</li><li>PUNTUACIÃ“N: SÃ­</li><li>VOLUMEN DEL MICRÃ“FONO: SÃ­</li><li>ECHO: SÃ­</li><li>VOZ DE GUÃA: SÃ­ (para todas las funciones) (solo aplicaciones)</li><li>CAMBIADOR DE VOZ: SÃ­ (para todas las funciones)</li><li>CONTROL DE GESTOS: SÃ­ (direcciÃ³n vertical y horizontal)</li><li>TEMPORIZADOR DE APAGADO: SÃ­</li><li>SALIDA DE CARGA DE PUERTO USB: 1A</li><li>TECLAS TÃCTILES: SÃ­ (panel superior a pruebas de salpicaduras)</li><li>GRABACIÃ“N USB: SÃ­</li><li>CONSUMO DE ENERGÃA (EN MODO DE ESPERA): 0,5 W</li><li>EMPAREJAMIENTO NFC ONE-TOUCH: SÃ­</li><li>LDAC: SÃ­</li><li>AAC: SÃ­</li><li>A2DP (SINK): SÃ­</li><li>AVRCP: SÃ­ (versiÃ³n 1.3)</li><li>SPP: SÃ­</li><li>APLICACIONES PARA SMARTPHONES COMPATIBLES: SÃ­ (Music Center y Fiestable)</li><li>BANDA: FM</li><li>RDS: SÃ­</li><li>RANGO DE SINTONIZACIÃ“N (FM): 87,5-108 MHz / 50 kHz</li><li>PRESINTONÃA: FM20</li><li>CIERRE DE BANDEJA: SÃ­</li><li>CIERRE DE SEGURIDAD: SÃ­</li><li>RESISTENTE AL POLVO/RESISTENTE AL AGUA: Resistente al polvo/salpicaduras (solo el panel de control)</li><li>BLOQUEO PARA FIESTAS: SÃ­</li><li>ASA DE TRANSPORTE: SÃ­ (SÃ­ frontal y posterior)</li><li>RUEDAS: SÃ­</li><li>CD: SÃ­</li><li>CD-R: SÃ­</li><li>CD-RW: SÃ­</li><li>DISCO DE 8 CM (CD): SÃ­</li><li>DISCO DE 8 CM (DVD): SÃ­</li><li>DVD: SÃ­</li><li>DVD+R: SÃ­</li><li>DVD-R: Yes</li><li>DVD+R DL: SÃ­</li><li>DVD+RW: SÃ­</li><li>DVD-RW (VIDEO): SÃ­</li><li>VCD: SÃ­</li><li>MP3: SÃ­</li><li>XVID: SÃ­</li><li>MPEG4 *PERFIL SIMPLE: SÃ­ (tambiÃ©n compatible con MPEG1)</li><li>TWEETER: 5 cm x2 (tipo cono)</li><li>RANGO MEDIO: 12 cm x2 (tipo cono)</li><li>WOOFER: 30 cm x 1</li><li>DIMENSIONES DE LA UNIDAD PRINCIPAL (AN. X AL. X PR. EN CM) (APROX.): 37,0 x 93,0 x 42,7</li><li>PESO (EN KG) (APROX.): 22 kg</li><li>DIMENSIONES DEL PARLANTE FRONTAL (AN. X AL. X PR. EN CM) (APROX.): -</li><li>PESO (EN KG) (APROX.): -</li><li>CONSUMO DE ENERGÃA (MODO APAGADO): no disponible</li><li>CONSUMO DE ENERGÃA (MODO DE ESPERA): 0,5 W</li><li>CONSUMO DE ENERGÃA (MODO DE ESPERA DE RED) â€“ TERMINALES: 2,0 W (HDMI CEC, BluetoothÂ®, todos los terminales y redes conectados)</li><li>MODO DE ESPERA ACTIVADO: Transcurridos 15 minutos</li><li>MODO DE ESPERA DE RED ACTIVADO â€“ TERMINALES: Tras 15 minutos (HDMI CEC, BluetoothÂ®)</li><li>INTERRUPTOR DE ENCENDIDO/APAGADO DE REDES INALÃMBRICAS: BT STANDBY (BT EN ESPERA): Cambia la configuraciÃ³n del modo en espera de BluetoothÂ® (OPTION--&gt;BT STANDBY--&gt;ON/OFF [OPCIÃ“N--&gt;BT EN ESPERA--&gt;ACTIVADO/DESACTIVADO]) HDMI CEC ON/OFF (HDMI CEC ACTIVADO/DESACTIVADO): [SETUP] (CONFIGURACIÃ“N) --&gt; [CONTROL FOR HDMI] (CONTROL PARA HDMI) en el sistema para activar/desactivar [ON]/[OFF] ([ACTIVADO]/[DESACTIVADO])</li><li>ANTENA FM: SÃ­</li><li>CONTROL REMOTO: SÃ­</li></ul>', 4509.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 9, 47, 'LMESSY000000029', 'EQUIPO DE SONIDO SY MHC-V82D BLUETOOTH /CD/ USB /DJ / LUCES 360Ã‚Âº', 'LMESSY000000029', '<p><h4><b>Inunda la fiesta con un potente sonido de 360Â° y voces nÃ­tidas</b></h4>Pon a todo el mundo a cantar y bailar al ritmo de sus temas favoritos, estÃ©n donde estÃ©n en el recinto. Gracias al SONIDO de 360Â°, el sonido de graves de largo alcance del JET BASS BOOSTER y cuatro altavoces de medios, tus fiestas estarÃ¡n repletas de un sonido potente y voces directas y nÃ­tidas.<br><h4><b>Tweeter en Ã¡ngulo y unidades de rango medio</b></h4>Llena la sala con un gran sonido de fiesta. El tweeter en Ã¡ngulo y las unidades de rango medio distribuyen con mayor amplitud el sonido.<br><h4><b>Cuatro altavoces de rango medio</b></h4>Gracias a los cuatro altavoces de rango medio, podrÃ¡s disfrutar de voces mÃ¡s claras, para que puedas bailar o cantar tus pistas vocales favoritas.<br><h4><b>Tweeter trasero</b></h4>El tweeter trasero garantiza que el sonido se expanda tanto por delante como por detrÃ¡s del sistema de altavoces, de forma que todo el mundo pueda disfrutar de un sonido potente y claro.<br><h4><b>Siente el ritmo incluso a gran distancia con JET BASS BOOSTER</b></h4>Una estructura cÃ³nica de conducto Bass Reflex concentra el flujo de aire del sonido de graves para que puedas oÃ­rlos claramente y sentirlos fÃ­sicamente aunque estÃ©s entre la multitud o lejos del altavoz.<br><h4><b>Escucha mÃºsica en cualquier lugar, con el generador de sonido expansivo</b></h4>Cuando suena un gran tema, quieres que se escuche en todos los rincones. La caja con la parte trasera abierta permite que el sonido se expanda para que puedas escuchar la mÃºsica con claridad desde cualquier sitio.<br><h4><b>Luces de fiesta de 360Â° y de altavoz</b></h4>Ilumina todos los rincones de la pista de baile por muy grande que sea con luces de fiesta multicolor de 360Â° y luces de altavoz para crear un autÃ©ntico ambiente de discoteca o festival.<br><h4><b>DSEE restaura los detalles de la mÃºsica digital de forma automÃ¡tica</b></h4>Aumenta la calidad de los archivos de mÃºsica comprimidos. Cuando una fuente de mÃºsica original estÃ¡ comprimida, pierde los elementos de alta frecuencia que aÃ±aden detalle y riqueza a tus canciones favoritas. La tecnologÃ­a Digital Sound Enhancement Engine (DSEE) los restaura fielmente para producir un sonido de alta calidad mÃ¡s cercano a la grabaciÃ³n de CD original.<br><h4><b>SONIDO EN VIVO</b></h4>La tecnologÃ­a DSP aporta a tu mÃºsica ese ambiente realista de festivales o conciertos en vivo.<br><h4><b>Control por gestos verticales y horizontales</b></h4>Salta una pista, cambia de Flanger a WAH, sube el micrÃ³fono de karaoke, controla el tono del micrÃ³fono y la mÃºsica, o sube el volumen con un movimiento vertical u horizontal de la mano. El control de gestos te permite controlar las funciones del MHC-V82D de forma rÃ¡pida y sencilla para que siempre estÃ©s en el centro de la fiesta.<br><h4><b>Despierta el cantante que llevas dentro</b></h4>Haz que todo el mundo estÃ© entretenido: con dos entradas de micrÃ³fono, tÃº y tus amigos podrÃ©is competir cantando vuestras canciones favoritas. TambiÃ©n puedes aÃ±adir una capa de rock and roll conectando una guitarra a una de las entradas y usando el sistema como amplificador. Disfruta de tres modos: NÃ­tido para un sonido claro, DistorsiÃ³n para un sonido de guitarra distorsionado y Bajo para tocar el bajo.<br><h4><b>Modo de juego TAIKO y sistema de puntos</b></h4>Pon a prueba tu sentido del ritmo con el modo de juego TAIKO. Toca y desliza el panel superior al tiempo que las luces se iluminan y descubre quiÃ©n consigue la mayor puntuaciÃ³n en la fiesta. Hasta puedes comparar tu habilidad con la de otros jugadores online a travÃ©s de la clasificaciÃ³n de la aplicaciÃ³n Fiestable. Â¿Eres capaz de llegar al Top 10?<br><h4><b>ContrÃ³lalo todo desde la pista de baile.</b></h4>La aplicaciÃ³n Sony | Music Center te permite controlar la configuraciÃ³n de la mÃºsica y el sonido directamente desde el telÃ©fono. AdemÃ¡s, la aplicaciÃ³n Fiestable pone en tus manos el control de los colores de la iluminaciÃ³n y te permite activar los modos DJ y karaoke. Para ello, solo tienes que mover la muÃ±eca, gracias a la intuitiva funciÃ³n de control de movimiento.&nbsp;<br><h4><b>Reproduce pelÃ­culas con el reproductor de DVD integrado</b></h4>Vive la emociÃ³n en cada escena con una potencia de volumen y presiÃ³n acÃºstica que te sitÃºan en el centro de la acciÃ³n. Convierte el salÃ³n de tu casa en un autÃ©ntico cine y organiza Ã©picas noches de peli en el sofÃ¡.<br><h4><b>Panel de control resistente a salpicaduras para aumentar la durabilidad</b></h4>La superficie superior del MHC-V82D es resistente a salpicaduras3 y fÃ¡cil de limpiar: podrÃ¡s hacer que siga la fiesta toda la noche incluso si derramas alguna bebida. Incluye hasta un botÃ³n de bloqueo para fiestas, que desactiva el resto de botones durante 30 segundos para que puedas limpiarlo.<br><h4><b>Con la conexiÃ³n de varios dispositivos, mÃ¡s personas pueden controlar la mÃºsica</b></h4>El MHC-V82D os permite a tus amigos y a ti emparejar de manera simultÃ¡nea hasta tres smartphones con la tecnologÃ­a BluetoothÂ®. PodrÃ¡s reproducir pistas de todas tus colecciones de mÃºsica, lo que te ofrecerÃ¡ aÃºn mÃ¡s posibilidades.<br><h4><b>Potencia la fiesta con altavoces adicionales</b></h4>Disfruta de un sonido mÃ¡s potente conectando varios sistemas de audio en casa mediante BluetoothÂ®. Conecta hasta 50 sistemas de audio en casa compatibles y sincroniza la mÃºsica y la iluminaciÃ³n</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>CD: SÃ­<br></li><li>DVD: SÃ­</li><li>USB1: SÃ­</li><li>FM: SÃ­</li><li>ENTRADA DE AUDIO1: SÃ­</li><li>TV: SÃ­ (HDMI), (ENTRADA DE AUDIO)</li><li>BLUETOOTHÂ®: SÃ (iAP a travÃ©s de BluetoothÂ®)</li><li>ENTRADA DE AUDIO ANALÃ“GICO: 1</li><li>SALIDA DE AUDIO ANALÃ“GICA: 1</li><li>SALIDA HDMI: 1</li><li>PUERTO USB: 1</li><li>ENTRADA DE MICRÃ“FONO: 2 (6 Ï† / Guitarra disponible para un puerto: MIC 2 / GUITAR)</li><li>ECUALIZADOR DE MÃšSICA: MÃºsica (EMOTION EQ)</li><li>ECUALIZADOR LATINO: -</li><li>FOOTBALL MODE: SÃ (DESACTIVADO / NarraciÃ³n ACTIVADA / NarraciÃ³n DESACTIVADA)</li><li>ECUALIZADOR DE VIDEO: PELÃCULA/JUEGO/SERIE/NOTICIA</li><li>MODO FIESTA: SÃ­</li><li>FUNCIÃ“N DE ENFATIZACIÃ“N DE GRAVES: MEGA BASS</li><li>MEJORA DE SONIDO DSEE: DSEE (AUTO)</li><li>PARTY CHAIN (CON CABLE): SÃ­</li><li>WIRELESS PARTY CHAIN MEDIANTE BLUETOOTHÂ®: SÃ­</li><li>FUNCIÃ“N DE PARLANTE ADICIONAL (BLUETOOTHÂ®): SÃ­</li><li>CLEARAUDIO+: SÃ­</li><li>DOLBYÂ® DIGITAL: SÃ­</li><li>FLANGER: SÃ­</li><li>ISOLATOR: SÃ­</li><li>PAN: SÃ­</li><li>WAH: SÃ­</li><li>MUESTREADOR: SÃ­ (araÃ±azos y mÃ¡s)</li><li>TAIKO: SÃ­</li><li>LUZ DE PARLANTE: SÃ­ (azul cielo para WF y Mid.)</li><li>LUZ DE FIESTA: SÃ­ (luces de fiesta de 360Â°, R / G / B)</li><li>ATENUADOR DE VOZ: SÃ­</li><li>CONTROL DE TECLAS: SÃ­</li><li>PUNTUACIÃ“N: SÃ­</li><li>VOLUMEN DEL MICRÃ“FONO: SÃ­</li><li>ECHO: SÃ­</li><li>VOZ DE GUÃA: SÃ­ (solo aplicaciones)</li><li>CAMBIADOR DE VOZ: SÃ­ (para todas las funciones)</li><li>CONTROL DE GESTOS: SÃ­ (direcciÃ³n vertical y horizontal)</li><li>TEMPORIZADOR DE APAGADO: SÃ­</li><li>SALIDA DE CARGA DE PUERTO USB: 1A</li><li>TECLAS TÃCTILES: SÃ­ (panel superior a pruebas de salpicaduras)</li><li>GRABACIÃ“N USB: SÃ­</li><li>CONSUMO DE ENERGÃA (EN MODO DE ESPERA): 0,5 W</li><li>EMPAREJAMIENTO NFC ONE-TOUCH: SÃ­</li><li>LDAC: SÃ­</li><li>AAC: SÃ­</li><li>A2DP (SINK): SÃ­</li><li>AVRCP: SÃ­ (versiÃ³n 1.3)</li><li>SPP: SÃ­</li><li>APLICACIONES PARA SMARTPHONES COMPATIBLES: SÃ­ (Music Center y Fiestable)</li><li>BANDA: FM</li><li>RDS: SÃ­</li><li>ANTENA EXTERNA: -</li><li>RANGO DE SINTONIZACIÃ“N (FM): 87,5-108 MHz / 50 kHz</li><li>PRESINTONÃA: FM 20</li><li>CIERRE DE BANDEJA: SÃ­</li><li>CIERRE DE SEGURIDAD: SÃ­</li><li>BLOQUE PARA FIESTAS: SÃ­</li><li>ASA DE TRANSPORTE: SÃ­ (SÃ­ frontal y posterior)</li><li>RUEDAS: SÃ­</li><li>CD: SÃ­</li><li>CD-R: SÃ­</li><li>CD-RW: SÃ­</li><li>DVD: SÃ­</li><li>DVD+R: SÃ­</li><li>DVD-R: Yes</li><li>DVD+R DL: SÃ­</li><li>DVD+RW: SÃ­</li><li>DVD-RW (VIDEO): SÃ­</li><li>VCD: SÃ­</li><li>MP3: SÃ­</li><li>XVID: SÃ­</li><li>MPEG4 *PERFIL SIMPLE: SÃ­ (tambiÃ©n compatible con MPEG1)</li><li>SONIDO DE 360Â° (TWEETER TRASERO): SÃ­</li><li>GENERADOR DE SONIDO EXPANSIVO: SÃ­</li><li>JET BASS BOOSTER: SÃ­</li><li>TWEETER: 5 cm x2 (tipo cono)</li><li>RANGO MEDIO: 2 x 12 cm, 2 x 10 cm (tipo cono)</li><li>WOOFER: 30 cm x 1</li><li>DIMENSIONES DE LA UNIDAD PRINCIPAL (AN. X AL. X PR. EN CM) (APROX.): 37 x 106 x 42,7 cm</li><li>PESO (EN KG) (APROX.): 26 kg</li><li>DIMENSIONES DEL PARLANTE FRONTAL (AN. X AL. X PR. EN CM) (APROX.): -</li><li>PESO (EN KG) (APROX.): -</li><li>CONSUMO DE ENERGÃA (MODO APAGADO): no disponible</li><li>CONSUMO DE ENERGÃA (MODO DE ESPERA): 0,5 W</li><li>MODO DE ESPERA ACTIVADO: Transcurridos 15 minutos</li><li>MODO DE ESPERA DE RED ACTIVADO â€“ TERMINALES: Tras 15 minutos (HDMI CEC, BluetoothÂ®)</li><li>INTERRUPTOR DE ENCENDIDO/APAGADO DE REDES INALÃMBRICAS BT STANDBY: Cambia la configuraciÃ³n del modo de espera de BluetoothÂ® (OPTION--&gt;BT STANDBY--&gt;ON/OFF) [OpciÃ³n--&gt;Modo en espera de BluetoothÂ®--&gt;Activado/Desactivado]</li><li>ANTENA FM: SÃ­</li><li>MANDO A DISTANCIA: SÃ­</li></ul>', 5619.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 8, 28, 'LGFCK0000000002', 'FOCO KODAK PACK  X2 UND FACIL INSTALACION', 'LGFCK0000000002', NULL, 37.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 15, 9, 'ACMEBXFU0000001', 'FUENTE P/ HORNO BRINOX 1460/300 RECTANGULAR HONDA 39,5 CM GRAFITO', 'ACMEBXFU0000001', NULL, 79.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 15, 9, 'ACMEBXFU0000002', 'FUENTE P/HORNO BRINOX 1460/303 PARA PAN 30CM GRAFITO', 'ACMEBXFU0000002', NULL, 59.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 15, 50, 'ACMEWHFU0000001', 'FUENTE P/HORNO WESTINGHOUSE WCBA0009003MBB MARMOL/ 35CM', 'ACMEWHFU0000001', NULL, 129.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 15, 9, 'ACMEBXHE0000001', 'HERVIDOR BRINOX 1,8 L 7014/367 CHILLI PRATA', 'ACMEBXHE0000001', '<p>PrÃ¡ctico y versÃ¡til, el hervidor de aluminio Chilli tambiÃ©n se puede utilizar como leche o para calentar los mÃ¡s diversos lÃ­quidos. Su estructura disipa mejor el calor haciendo que el proceso sea mÃ¡s rÃ¡pido. El revestimiento interno antiadherente facilita la limpieza. Tu seguridad estÃ¡ garantizada con el cable es de baquelita que no calienta. Para satisfacer mejor sus necesidades.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Alto (H): 12.5 cm<br></li><li>DiÃ¡metro (Ã˜):&nbsp;14 cm</li><li>Capacidad: 1.8 lt</li></ul>', 59.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 16, 40, 'ACMEPAHI0000001', 'HIELERA PASABAHCE 53628 SYLVANA VIDRIO', 'ACMEPAHI0000001', NULL, 49.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 4, 11, 'LGIMCAG20000001', 'IMPRESORA CANON G2100', 'LGIMCAG20000001', '<p>Impresora multifuncional Canon modelo G2100, cuenta con mÃ©todo de impresiÃ³n por inyecciÃ³n tÃ©rmica de tinta, que te brinda una resoluciÃ³n de 4800 x 1200 dpi, cuenta con un ciclo mÃ¡ximo de trabajo de 50 a 100 hojas con velocidad en blanco y negro de 8.8 ppm y a color de 5.0 ppm, adicionalmente es capaz de escanear y fotocopiar, soporta papel de 89 x 127 a 215 x 279 mm.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Canon<br></li><li>Modelo: G2100</li><li>Ancho: 44.5 cm</li><li>Profundidad: 33 cm</li><li>Altura total : 16.3 cm</li><li>GarantÃ­a: 12 meses</li><li>Tipo de Impresora: Multifuncional</li><li>MÃ©todo ImpresiÃ³n: InyecciÃ³n tÃ©rmica de tinta</li><li>ResoluciÃ³n: 4800 x 1200 dpi</li><li>Ciclo MÃ¡ximo de Trabajo: 50 a 100 hojas</li><li>Velocidad ImpresiÃ³n Blanco y Negro: 8.8 ipm</li><li>Velocidad ImpresiÃ³n Color: 5.0 ppm</li><li>ImpresiÃ³n Duplex: No</li><li>Capacidad de Escanear: SÃ­</li><li>Capacidad de Fax: No</li><li>Capacidad de Fotocopiar: SÃ­</li><li>TamaÃ±o Papel Soportado: 89x127 a 215x279 mm</li><li>Altura: 16.3 xm</li><li>Ancho: 44.5 cm</li><li>Profundidad: 33 cm</li></ul>', 1259.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 4, 11, 'LGIMCAG30000001', 'IMPRESORA CANON G3100', 'LGIMCAG30000001', NULL, 1469.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 4, 11, 'LGIMCAG30000002', 'IMPRESORA CANON G3110                                                           ', 'LGIMCAG30000002', NULL, 1319.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 4, 11, 'LGIMCAG40000001', 'IMPRESORA CANON G4100', 'LGIMCAG40000001', '<p>La impresora inalÃ¡mbrica multifuncional PIXMA G4100 es ideal para todo aquel que busca una impresora asequible, confiable, de alta calidad, altamente productiva y fÃ¡cil de usar. La nueva impresora PIXMA G4100 provee la capacidad de imprimir, copiar, escanear y enviar o recibir fax, como tambiÃ©n estrena un alimentador automÃ¡tico de hojas avanzado y una pantalla LCD de dos lÃ­neas.</p><p>La conexiÃ³n Wi-Fi1 integrada le facilita imprimir fotos y documentos desde su computadora o dispositivos mÃ³viles compatibles. Aproveche tambiÃ©n las ventajas adicionales de la aplicaciÃ³n Canon PRINT para poder imprimir desde la nube y escanear directamente hacia sus dispositivos mÃ³viles.<br>Esta nueva avanzada impresora, cuenta con un inteligente sistema de tintas integrado que facilita el acceso frontal para la instalaciÃ³n de la tinta, permitiendo adicionalmente la visibilidad de los niveles de tinta de cada color. La botella de tinta fue diseÃ±ada para ser fÃ¡cil de usar y minimizar derrames accidentales y manchas. Otra caracterÃ­stica de esta innovadora impresora es su sistema de tintas hÃ­brido que utiliza tinta negra a base de pigmento y tinta a color a base de tintes que proporcionan un color negro mÃ¡s nÃ­tido y colores mÃ¡s brillantes que dan como resultado impresiones con gran impacto visual. Adicionalmente, cuenta con un tubo hermÃ©tico, de alta calidad, duradero y flexible que evita que la tinta se seque cuando la impresora no estÃ¡ en uso.<br></p><p>La PIXMA G4100 tambiÃ©n cuenta con un sistema de reabastecimiento de tinta integrado que provee facilidad de uso y mayor productividad. Este mÃ©todo de reabastecimiento de tinta genera un menor costo por pÃ¡gina y un mayor rendimiento de impresiones. La tinta negra permite imprimir hasta 6,000 pÃ¡ginas por botella y las tintas de color un total de 7,000 pÃ¡ginas entre las tres botellas.<br></p><p><h4><b>Velocidad y calidad</b></h4>Sistema de Tintas HÃ­brido: Combina tintas a base de tintes para obtener colores vivos y tinta negra a base de pigmentos para lograr la nitidez del texto.</p><p>Sistema de Tintas Integrado: DiseÃ±o inteligente que facilita el acceso frontal para la instalaciÃ³n de tintas y la visibilidad de los niveles de tinta de cada color.</p><p>Alto Rendimiento de PÃ¡ginas: Maximice la productividad e imprima hasta 6,000 pÃ¡ginas en negro y 7,000 a color.<br></p><p>Bajo Costo por ImpresiÃ³n: Las botellas de tinta de alto rendimiento ofrecen una alta productividad con un costo bajo de operaciÃ³n por pÃ¡gina.<br></p><p>ImpresiÃ³n RÃ¡pida de FotografÃ­as sin Bordes: Imprima una hermosa fotografÃ­a sin bordes de tamaÃ±o 10 x 15 cm en aproximadamente 60 segundos.<br></p><p>ImpresiÃ³n RÃ¡pida de Documentos y PÃ¡ginas Web: Imprima documentos y pÃ¡ginas Web rÃ¡pidamente a velocidades de 8.8 imÃ¡genes por minuto (ipm) en negro y 5.0 imÃ¡genes por minuto (ipm) en color.<br></p><p>Alta ResoluciÃ³n: La mÃ¡xima resoluciÃ³n en color, de 4800 x 1200 dpi, produce calidad y detalles increÃ­bles.<br><h4><b>Facilidad de uso</b></h4>Alimentador AutomÃ¡tico de Documentos de 20 Hojas Completamente Integrado: Copie, escanee y envÃ­e varios documentos por fax sin tener que cargar una pÃ¡gina a la vez. </p><p>Disfrute la integraciÃ³n completa de manera que la impresora pueda encajar mejor en Ã¡reas de trabajo compactas.<br></p><p>Encendido/Apagado AutomÃ¡tico (inalÃ¡mbrico): Esta conveniente funciÃ³n enciende la impresora automÃ¡ticamente cada vez que usted envÃ­a una fotografÃ­a o un documento para imprimir.<br></p><p>Efectos de Filtros Divertidos: DiviÃ©rtase con sus imÃ¡genes agregÃ¡ndoles efectos nuevos antes de imprimir como el Ojo de Pez, Miniatura, CÃ¡mara de Juguete, Enfoque Suave y Fondo Difuminado.<br></p><p>My Image Garden: El software My Image Garden le permite acceder, organizar y personalizar sus fotografÃ­as favoritas.<br></p><p>ImpresiÃ³n Completa de Escenas de Video en HD: El software \"Full HD Movie Print\" (ImpresiÃ³n Completa de Escenas de Video en HD) convierte en bellÃ­simas impresiones sus videos cortos de alta definiciÃ³n (HD), capturados con las cÃ¡maras digitales SLR EOS, PowerShot y con las videocÃ¡maras VIXIA de Canon.<br></p><p>Modo Silencioso: Imprime de forma silenciosa para no distraer a las personas a su alrededor.<br><h4><b>Conectividad</b></h4>FunciÃ³n InalÃ¡mbrica Integrada: Imprima y escanee de forma inalÃ¡mbrica desde cualquier computadora habilitada con Wi-FiÂ® alrededor de la casa.<br></p><p>AplicaciÃ³n Canon PRINT Inkjet/SELPHY (aplicaciÃ³n Canon PRINT): Imprima y escanee fotografÃ­as y documentos desde su dispositivo mÃ³vil mediante el uso de la aplicaciÃ³n gratuita Canon PRINT.<br></p><p>ImpresiÃ³n desde Windows RT: Imprima y escanee de forma inalÃ¡mbrica directamente desde su dispositivo Windows RT.<br></p><p>Google Cloud Print: Imprima desde cualquier lugar donde se encuentre, con aplicaciones que usted utiliza a diario.<br></p><p>AirPrint: Imprima fÃ¡cilmente y de forma inalÃ¡mbrica desde su iPhoneÂ®, iPadÂ®, or iPod touchÂ® compatible: Â¡sin necesidad de software controlador!<br></p><p>ImpresiÃ³n Mopria: Imprima fÃ¡cilmente desde su dispositivo Android compatible.<br></p><p>Super G3 Fax: El fax de alta velocidad para los negocios, estÃ¡ndar para los facsÃ­miles en color y desde PC en papel comÃºn, cumple con los requerimientos para una herramienta de producciÃ³n de las oficinas en casa, al contar con 19 discados rÃ¡pidos codificados y una memoria hasta 50 imÃ¡genes entrantes.<br></p><p>USB de Alta Velocidad: Conecte el cable en su PC para que la conexiÃ³n de transferencia de los datos sea sÃºper rÃ¡pida.</p>', 2429.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 4, 16, 'LGIMEPL30000001', 'IMPRESORA EPSON L3110', 'LGIMEPL30000001', NULL, 1599.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 4, 16, 'LGIMEPL30000002', 'IMPRESORA EPSON L3150', 'LGIMEPL30000002', NULL, 1849.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 4, 16, 'LGIMEPL40000001', 'IMPRESORA EPSON L4150', 'LGIMEPL40000001', NULL, 1849.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 4, 16, 'LGIMEPL50000001', 'IMPRESORA EPSON L5190', 'LGIMEPL50000001', NULL, 2939.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 16, 40, 'ACMEPAJA0000001', 'JARRA PASABAHCE 80119 VIDRIO 1,8 LITROS', 'ACMEPAJA0000001', NULL, 44.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 15, 50, 'ACMEWHJCU000001', 'JGO CUCHILLOS WESTINGHOUSE WCKFS0001006 6 PZS CERAMICOS', 'ACMEWHJCU000001', NULL, 299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 15, 9, 'ACMEBXJS0000004', 'JGO DE 2 SARTENES BRINOX 7013/359 18CM TURQUESA', 'ACMEBXJS0000004', NULL, 79.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 15, 9, 'ACMEBXJC0000004', 'JGO DE CUBIERTOS BRINOX 5109/142 SIENA / 24 PZS', 'ACMEBXJC0000004', NULL, 69.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 15, 9, 'ACMEBXJC0000001', 'JGO DE CUBIERTOS BRINOX 5119/102 ACERO INOX 24 PZS MODENA', 'ACMEBXJC0000001', NULL, 129.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 15, 9, 'ACMEBXJC0000003', 'JGO DE CUBIERTOS BRINOX 6000/712 NEGRO/ 24 PZS ITAPARICA', 'ACMEBXJC0000003', NULL, 79.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 15, 9, 'ACMEBXJC0000002', 'JGO DE CUBIERTOS BRINOX 6000/752 ROJO 24PZS ITAPARICA                           ', 'ACMEBXJC0000002', NULL, 79.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 16, 50, 'ACMEWHJC0000001', 'JGO DE CUBIERTOS WESTINGHOUSE WCCL0006012 TENEDOR/ CUCHARA/12 PIEZAS', 'ACMEWHJC0000001', NULL, 99.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 15, 9, 'ACMEBXJS0000001', 'JGO DE SARTENES BRINOX 2 PZS 7000/303 GRILL 24CM + SARTEN 18CM SILVER', 'ACMEBXJS0000001', NULL, 119.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 15, 50, 'ACMEWHJS0000002', 'JGO DE SARTENES WESTINGHOUSE  WCFP003503A 3 PZS/ 28CM+24CM+10CM/ ALUMINIO', 'ACMEWHJS0000002', NULL, 299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 15, 9, 'ACMEBXJU0000002', 'JGO DE UTENSILIOS BRINOX 2244/350 3 PZS ROJO', 'ACMEBXJU0000002', NULL, 29.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 15, 50, 'ACMEWHJU0000001', 'JGO DE UTENSILIOS WESTINGHOUSE WCKT000107 7 PZS', 'ACMEWHJU0000001', NULL, 129.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 16, 46, 'ACMEJV000000001', 'JGO DE VAJILLA 16 PZS 23957 CERAMICA', 'ACMEJV000000001', NULL, 179.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 16, 46, 'ACMEJV000000003', 'JGO DE VAJILLA 16 PZS 24557 CERAMICA', 'ACMEJV000000003', NULL, 179.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 16, 46, 'ACMEJV000000002', 'JGO DE VAJILLA 20PZS JY-LY01 CERAMICA BLANCO', 'ACMEJV000000002', NULL, 199.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 15, 9, 'ACMEBXJT0000001', 'JGO P/TORTA BRINOX 2 PZS 1525/132 ACERO INOX PETUNIA', 'ACMEBXJT0000001', NULL, 89.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 15, 9, 'ACMEBXJS0000002', 'JGO SARTENES BRINOX 2 PZS 7000/302 PLOMO 18 CM+22CM', 'ACMEBXJS0000002', NULL, 79.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 15, 9, 'ACMEBXJS0000003', 'JGO SARTENES BRINOX 3 PZS 7001/307 GARLIC ROJO GRILL+PANQ+SAR16CM', 'ACMEBXJS0000003', NULL, 179.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 15, 50, 'ACMEWHJS0000001', 'JGO SARTENES WESTINHOUSE 2 PZS WCFP0009T28MBB 28CM MARMOL', 'ACMEWHJS0000001', NULL, 199.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 15, 9, 'ACMEBXJU0000001', 'JUEGO DE UTENSILIOS 3 PZS BRINOX 2244/300 NEGRO', 'ACMEBXJU0000001', NULL, 29.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 8, 28, 'LGFCKLA00000001', 'LAMPARA LED KODAK 260  AJUSTABLE 180 GRADOS', 'LGFCKLA00000001', NULL, 78.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 8, 28, 'LGLIKB000000003', 'LAMPARA P/CABEZA 5-WATT + 3 PILAS AAA', 'LGLIKB000000003', NULL, 63.90, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 4, 27, 'LGACLAKA0000001', 'LICENCIA KASPERSKY ANTIVIRUS 1 COMPU 1 AÃƒâ€˜O CAJA                                 ', 'LGACLAKA0000001', NULL, 189.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 4, 27, 'LGACLAKA0000002', 'LICENCIA KASPERSKY ANTIVIRUS 3 COMPU 1 AÃƒâ€˜O CAJA                                 ', 'LGACLAKA0000002', NULL, 319.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 4, 27, 'LGACLIKA0000001', 'LICENCIA KASPERSKY INTERNET SECURITY 1 DISPOSITIVO 1 AÃƒâ€˜O CAJA                   ', 'LGACLIKA0000001', NULL, 299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 4, 27, 'LGACLIKA0000002', 'LICENCIA KASPERSKY INTERNET TOTAL SECURITY 3 DISPOSITIVOS 1 AÃƒâ€˜O CAJA            ', 'LGACLIKA0000002', NULL, 529.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 8, 28, 'LGLIKBL00000002', 'LINTERNA KODAK 9LED AZUL', 'LGLIKBL00000002', NULL, 16.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 8, 28, 'LGLIKBL00000001', 'LINTERNA KODAK 9-LED AZUL + 3 PILAS AAA', 'LGLIKBL00000001', NULL, 36.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 8, 28, 'LGLIKB000000006', 'LINTERNA KODAK 9LED NEGRO', 'LGLIKB000000006', NULL, 16.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 8, 28, 'LGLIKB000000001', 'LINTERNA KODAK 9-LED NEGRO + 3 PILAS AAA', 'LGLIKB000000001', NULL, 36.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 8, 28, 'LGLIKR000000002', 'LINTERNA KODAK 9LED ROJO', 'LGLIKR000000002', NULL, 16.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 8, 28, 'LGLIKR000000001', 'LINTERNA KODAK 9-LED ROJO + 3 PILAS AAA', 'LGLIKR000000001', NULL, 36.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 8, 28, 'LGLIKR000000003', 'LINTERNA KODAK ACTIVE 10 ROJO LED/RESISTENTE AL AGUA', 'LGLIKR000000003', NULL, 50.90, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 8, 28, 'LGLIKY000000002', 'LINTERNA KODAK HANDY 220 UN AMARILLO/ RESISTENTE AGUA/ UNIDAD', 'LGLIKY000000002', NULL, 129.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 8, 28, 'LGLIKB000000002', 'LINTERNA KODAK LED 157 NEGRO +3 PILAS AAA', 'LGLIKB000000002', NULL, 56.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 8, 28, 'LGLIKB000000005', 'LINTERNA KODAK ROBUST 15 LED/  RESISTENTE AGUA / NEGRO/ UNIDAD', 'LGLIKB000000005', NULL, 18.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 23, 47, 'LGMDSYP4000006', 'MANDO PLAY 4 SONY CUH-ZCT2U CRYSTAL', 'LGMDSYP4000006', NULL, 479.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 23, 47, 'LGMDSYP40000011', 'MANDO PLAY 4 SONY CUH-ZCT2U FORNITE', 'LGMDSYP40000011', NULL, 479.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 23, 47, 'LGMDSYP40000009', 'MANDO PLAY 4 SONY CUH-ZCT2U GLACIER WHITE', 'LGMDSYP40000009', NULL, 479.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 23, 47, 'LGMDSYP40000005', 'MANDO PLAY 4 SONY CUH-ZCT2U GREEN CAMOUFLAGE', 'LGMDSYP40000005', NULL, 479.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 23, 47, 'LGMDSYP40000003', 'MANDO PLAY 4 SONY CUH-ZCT2U MAGMA RED', 'LGMDSYP40000003', NULL, 479.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 23, 47, 'LGMDSYP40000004', 'MANDO PLAY 4 SONY CUH-ZCT2U MIDNIGHT BLUE', 'LGMDSYP40000004', NULL, 549.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 23, 47, 'LGMDSYP40000002', 'MANDO PLAY 4 SONY CUH-ZCT2U NEGRO', 'LGMDSYP40000002', NULL, 529.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 23, 47, 'LGMDSYP40000010', 'MANDO PLAY 4 SONY CUH-ZCT2U STEEL BLACK', 'LGMDSYP40000010', NULL, 429.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 23, 47, 'LGMDSYP40000007', 'MANDO PLAY 4 SONY CUH-ZCT2U TITANIUM BLUE', 'LGMDSYP40000007', NULL, 479.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 15, 9, 'ACMEBXMA0000001', 'MANTEQUILLERA BRINOX 1407/100 INOX ATINA', 'ACMEBXMA0000001', NULL, 69.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 16, 40, 'ACMEPAMA0000001', 'MANTEQUILLERA PASABAHCE 98402 VIDRIO', 'ACMEPAMA0000001', NULL, 39.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 16, 46, 'LHMP00000000001', 'MESA DE PLANCHAR S/MARCA DC-648TGO 48X15CM', 'LHMP00000000001', NULL, 329.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 1, 47, 'LMMSSY000000002', 'MINI SISTEMA SONY CMT-SBT20 12W/USB/CD/BLUETOOTH', 'LMMSSY000000002', NULL, 889.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 17, 4, 'LGACBGDB0000001', 'MOCHILA BG METROBAG 15\" AZUL OSCURO BG010/02', 'LGACBGDB0000001', NULL, 559.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 17, 4, 'LGACBGCH0000001', 'MOCHILA BG METROBAG 15 CHAMPAGNE BG010/02', 'LGACBGCH0000001', NULL, 559.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 17, 4, 'LGACBGDG0000001', 'MOCHILA BG METROBAG 15\" GRIS OSCURO BG010/02\"', 'LGACBGDG0000001', NULL, 559.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 17, 4, 'LGACBGB00000001', 'MOCHILA BG METROBAG 15\" NEGRO BG010/02', 'LGACBGB00000001', NULL, 559.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 17, 4, 'LGACBGDB0000002', 'MOCHILA BG METROBAG 17\" AZUL OSCURO BG010/01\"', 'LGACBGDB0000002', NULL, 629.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 17, 4, 'LGACBGLB0000001', 'MOCHILA BG METROBAG 17\" CELESTE BG010/01', 'LGACBGLB0000001', NULL, 629.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 17, 4, 'LGACBGB00000002', 'MOCHILA BG METROBAG 17\"\" NEGRO BG010/01', 'LGACBGB00000002', NULL, 629.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 17, 20, 'LGACHVB00000002', 'MOCHILA HAVIT 5005 BLACK', 'LGACHVB00000002', NULL, 139.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 17, 20, 'LGACHVB00000003', 'MOCHILA HAVIT B915 BLACK', 'LGACHVB00000003', NULL, 159.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 17, 20, 'LGACHVB00000001', 'MOCHILA HAVIT BLACK HV-B904', 'LGACHVB00000001', NULL, 189.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 4, 20, 'LGACCPHV0000001', 'MOUSE HAVIT HV-MS989GT BLACK', 'LGACCPHV0000001', NULL, 68.86, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 4, 20, 'LGACCPHVS000001', 'MOUSE HAVIT HV-MS989GT SILVER', 'LGACCPHVS000001', NULL, 68.86, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 4, 20, 'LGACCPHVB000006', 'MOUSE HAVIT MS622GT BLACK', 'LGACCPHVB000006', NULL, 99.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 4, 20, 'LGACCPHVB000005', 'MOUSE HAVIT MS626GT BLACK', 'LGACCPHVB000005', NULL, 48.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 4, 20, 'LGACCPHVBR00002', 'MOUSE HAVIT MS626GT BLACK /RED', 'LGACCPHVBR00002', NULL, 49.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 4, 20, 'LGACCPHVBG00004', 'MOUSE HAVIT MS626GT BLACK/GREY', 'LGACCPHVBG00004', NULL, 49.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 15, 9, 'ACMEBXOP0000001', 'OLLA A PRESION BRINOX 7090/168 4,5 L SILVER', 'ACMEBXOP0000001', NULL, 219.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 15, 9, 'ACMEBXOP0000002', 'OLLA A PRESION BRINOX 7090/193 7,5 L PLATA', 'ACMEBXOP0000002', NULL, 329.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 15, 9, 'ACMEBXO00000001', 'OLLA FREIDORA C/CESTO BRINOX 7015/389 CHILLI PRATA', 'ACMEBXO00000001', NULL, 119.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 15, 50, 'ACMEWHOA0000001', 'OLLA WESTINGHOUSE WCCC0009L28MBB 28CM C/TAPA / MARMOL', 'ACMEWHOA0000001', NULL, 249.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 15, 9, 'ACMEBXP00000001', 'PAELLERA BX 34CM 7100/353 2,8L PLATEADO', 'ACMEBXP00000001', NULL, 149.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 15, 9, 'ACMEBXPA0000001', 'PANQUEQUERA BRINOX 22CM 7014/357 CHILLI PRATA', 'ACMEBXPA0000001', NULL, 49.00, 39.00, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 1, 20, 'LMPIHVB00000020', 'PARLANTE HAVIT E30 NEGROCON ROJO / INALAMBRICO / ALTAVOZ BLUETOOTH', 'LMPIHVB00000020', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>VersiÃ³n de Bluetooth: V4.2<br></li><li>Rango de alcance inalÃ¡mbrico: 10M (sin obstÃ¡culos)</li><li>Altavoz: 55mm * 2</li><li>Perfiles soportados: A2DP, AVRCP, HFP, HSP</li><li>SNR: â‰¥80DB</li><li>Respuesta de frecuencia: 80Hz ~ 20KHz</li><li>Voltaje de entrada: DC5V / 2A</li><li>Voltaje de salida: DC5V / 1A</li><li>Potencia de salida: 24W</li><li>Potencia mÃ¡xima: 30W</li><li>BaterÃ­a: 7.4V 2600mAH * 2</li><li>Tiempo de duraciÃ³n de la baterÃ­a: 12-14H (volumen medio)</li><li>Tiempo de carga: Sobre 4H</li><li>Entrada de audio: AUX, Bluetooth</li><li>Soporte: NFC, TWS, Siri, chat de voz</li><li>Material: PC + TPU + Tela</li><li>TamaÃ±o del producto: 213mm * 82mm * 81mm</li><li>Peso neto: 738g</li></ul><h4><b>Seguridad del producto</b></h4><p>Este producto estÃ¡ sujeto a instrucciones y advertencias de seguridad.</p>', 709.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 1, 20, 'LMPIHBG00000023', 'PARLANTE HAVIT E5 BLACK/GREY', 'LMPIHBG00000023', NULL, 539.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 1, 20, 'LMPIHVBR0000023', 'PARLANTE HAVIT E5 BLACK/RED', 'LMPIHVBR0000023', NULL, 539.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 1, 20, 'LMPIHVB00000017', 'PARLANTE HAVIT M13 NEGRO / INALAMBRICO / ALTAVOZ BLUETOOTH', 'LMPIHVB00000017', NULL, 139.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 1, 20, 'LMPIHVG00000014', 'PARLANTE HAVIT M16 GRIS / ALTAVOZ PORTATIL / BLUETOOTH', 'LMPIHVG00000014', NULL, 359.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 1, 20, 'LMPIHVB00000014', 'PARLANTE HAVIT M16 NEGRO / ALTAVOZ PORTATIL / BLUETOOTH', 'LMPIHVB00000014', NULL, 359.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 1, 20, 'LMPIHVB/O000021', 'PARLANTE HAVIT M22 NEGRO CON NARANJA / INALAMBRICO/ ALTAVOZ BLUETOOTH', 'LMPIHVB/O000021', NULL, 579.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 1, 20, 'LMPIHVB00000013', 'PARLANTE HAVIT M29 NEGRO / ALTAVOZ PORTATIL / BLUETOOTH', 'LMPIHVB00000013', NULL, 359.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 1, 20, 'LMPIHVG00000012', 'PARLANTE HAVIT M63 GRIS / ALTAVOZ PORTATIL / BLUETOOTH', 'LMPIHVG00000012', NULL, 169.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `products` (`id`, `subcategory_id`, `brand_id`, `sku`, `name`, `slug`, `description`, `price`, `offer_price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(184, 1, 20, 'LMPIHVB00000022', 'PARLANTE HAVIT M75 NEGRO / INALAMBRICO/ ALTAVOZ BLUETOOTH', 'LMPIHVB00000022', NULL, 159.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 1, 20, 'LMPIHVGR0000022', 'PARLANTE HAVIT M75 VERDE / INALAMBRICO/ ALTAVOZ PORTATIL', 'LMPIHVGR0000022', NULL, 159.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 1, 20, 'LMPIHVB00000015', 'PARLANTE HAVIT M89 NEGRO / ALTAVOZ PORTATIL / BLUETOOTH', 'LMPIHVB00000015', NULL, 169.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 8, 28, 'LGPIK9V00000001', 'PILAS KODAK 9V  X1 UND ALCALINA XTRALIFE', 'LGPIK9V00000001', NULL, 20.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 8, 28, 'LGPIKAA00000001', 'PILAS KODAK AA X 2 UND ALCALINA XTRALIFE', 'LGPIKAA00000001', NULL, 10.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 8, 28, 'LGPIKAA00000002', 'PILAS KODAK AA X4 UND ALCALINA XTRALIFE', 'LGPIKAA00000002', NULL, 22.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 8, 28, 'LGPIKAA00000003', 'PILAS KODAK AA X8 UND ALCALINA XTRALIFE', 'LGPIKAA00000003', NULL, 38.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 8, 28, 'LGPIKAAA0000001', 'PILAS KODAK AAA X2 UNID ALCALINA XTRALIFE', 'LGPIKAAA0000001', NULL, 10.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 8, 28, 'LGPIKAAA0000002', 'PILAS KODAK AAA X4 UNID ALCALINA XTRALIFE', 'LGPIKAAA0000002', NULL, 19.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 8, 28, 'LGPIKAAA0000003', 'PILAS KODAK AAA X8 UNID ALCALINA XTRALIFE', 'LGPIKAAA0000003', NULL, 26.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 8, 28, 'LGPIKC000000001', 'PILAS KODAK C X2 UND ALCALINA  XTRALIFE', 'LGPIKC000000001', NULL, 21.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 8, 28, 'LGPIKD000000001', 'PILAS KODAK D X2 UND ALCALINA XTRALIFE', 'LGPIKD000000001', NULL, 33.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 15, 9, 'ACMEBXPI0000001', 'PINZA BRINOX 1690/000 UNIVERSAL ACERO INOXIDABLE', 'ACMEBXPI0000001', NULL, 19.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 15, 9, 'ACMEBXPI0000002', 'PINZA BRINOX P/ PASTA 2051/302 ACERO INOX', 'ACMEBXPI0000002', NULL, 19.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 15, 9, 'ACMEBXPI0000003', 'PINZA P/ FIAMBRE BRINOX 2051/330 13CM INOX', 'ACMEBXPI0000003', NULL, 19.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 15, 9, 'ACMEBXPI0000004', 'PINZA P/ HIELO BRINOX 2051/304 16CM BELI INOX', 'ACMEBXPI0000004', NULL, 19.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 23, 47, 'LGJGP4SY0000009', 'PLAY 4 JUEGO SONY APEX LEGENDS BLOOD HOUND EDITION', 'LGJGP4SY0000009', NULL, 279.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 23, 47, 'LGIGP4SY0000005', 'PLAY 4 JUEGO SONY DAYS GONE                                                     ', 'LGIGP4SY0000005', NULL, 379.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 23, 47, 'LGJGP4SY0000007', 'PLAY 4 JUEGO SONY FORNITE DARKFIRE BUNDLE', 'LGJGP4SY0000007', NULL, 279.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 23, 47, 'LGJGP4SY0000006', 'PLAY 4 JUEGO SONY GRAND THEFT AUTO V PREMIUM EDITION', 'LGJGP4SY0000006', NULL, 319.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 23, 47, 'LGJGP4SY0000001', 'PLAY 4 JUEGO SONY RED DEAD REDEMTION 2', 'LGJGP4SY0000001', NULL, 299.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 23, 47, 'LGJGP4SY0000010', 'PLAY 4 JUEGO SONY SHADOW OF THE TOMB RAIDER', 'LGJGP4SY0000010', NULL, 279.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 23, 47, 'LGJGP4SY0000004', 'PLAY 4 JUEGO SONY SPIDERMAN                                                     ', 'LGJGP4SY0000004', NULL, 379.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 23, 47, 'LGP4SY1TB000014', 'PLAY 4 SONY CUH-2215B MEGA PACK 6/ GRAND TEFT AUTO 5/ DAYS GONE/ HORIZON/FORNITE', 'LGP4SY1TB000014', NULL, 4189.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 1, 47, 'LMRPSY000000001', 'RADIO PORTATIL SONY AM/FM / USB/ CD', 'LMRPSY000000001', NULL, 609.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 1, 47, 'LMRPSY000000003', 'RADIO PORTATIL SONY ICF-19/C AM/FM                                              ', 'LMRPSY000000003', NULL, 229.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 1, 47, 'LMRPSY000000002', 'RADIO PORTATIL SONY ZS-RS60BT FM / USB/ CD                                      ', 'LMRPSY000000002', NULL, 709.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 22, 47, 'LMBRSY000000005', 'REPRODUCTOR BLUE RAY SY FULL HD/ USB', 'LMBRSY000000005', NULL, 799.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 22, 47, 'LMBRSY000000003', 'REPRODUCTOR BLUE RAY SY FULL HD/ USB/ WIFI', 'LMBRSY000000003', NULL, 899.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 10, 47, 'LMDVSY000000001', 'REPRODUCTOR DVD SONY USB', 'LMDVSY000000001', NULL, 299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 16, 39, 'ACMESC000000001', 'SACA CORCHO ONEIDA 23705 DELUXE 7824', 'ACMESC000000001', NULL, 29.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 15, 9, 'ACMEBXSC0000001', 'SACACORCHOS BRINOX 2310/311 INOX', 'ACMEBXSC0000001', NULL, 39.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 15, 9, 'ACMEBXSA0000001', 'SARTEN C/ESPATULA BRINOX 16 CM 7015/381 CHILLI CHERRY', 'ACMEBXSA0000001', NULL, 39.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 15, 9, 'ACMEBXSA0000007', 'SARTEN C/ESPATULA BRINOX 16CM 7014/381 CHILLI PRATA', 'ACMEBXSA0000007', NULL, 39.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 15, 9, 'ACMEBXSA0000010', 'SARTEN C/ESPATULA BRINOX 18CM 7014/382 CHILLI PRATA', 'ACMEBXSA0000010', NULL, 49.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 15, 9, 'ACMEBXSA0000002', 'SARTEN C/ESPATULA BRINOX 20CM 7014/383 CHILLI PRATA', 'ACMEBXSA0000002', NULL, 49.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 15, 9, 'ACMEBXSA0000006', 'SARTEN C/ESPATULA BRINOX 22CM 7014/384 CHILLI CHERRY', 'ACMEBXSA0000006', NULL, 49.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 15, 9, 'ACMEBXSA0000008', 'SARTEN C/ESPATULA BRINOX 24 CM 7014/385 CHILLI PRATA', 'ACMEBXSA0000008', NULL, 59.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 15, 9, 'ACMEBXSA0000005', 'SARTEN C/ESPATULA BRINOX 24 CM 7015/385 CHILLI CHERRY', 'ACMEBXSA0000005', NULL, 59.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 15, 9, 'ACMEBXSA0000009', 'SARTEN C/ESPATULA BRINOX 26 CM 7014/386 CHILLI PRATA', 'ACMEBXSA0000009', NULL, 79.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 15, 9, 'ACMEBXSA0000003', 'SARTEN C/ESPATULA BRINOX 28 CM 7014/387 CHILLI PRATA', 'ACMEBXSA0000003', NULL, 79.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 15, 9, 'ACMEBXSA0000004', 'SARTEN GRILL BRINOX 24CM 7014/358 CHILLI PRATA', 'ACMEBXSA0000004', NULL, 79.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 15, 9, 'ACMEBXSA0000011', 'SARTEN GRILL BRINOX 24CM 7015/458 CHILLI CHERRY', 'ACMEBXSA0000011', NULL, 79.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 15, 50, 'ACMEWHSA0000003', 'SARTEN GRILL WESTINHOUSE WCFP0009G28MBB 28X28CM ALUMINIO CON MARMOL', 'ACMEWHSA0000003', NULL, 159.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 15, 50, 'ACMEWHSA0000001', 'SARTEN WESTINGHOUSE 24 CM WCFP0032024MBB MARMOL GRIS', 'ACMEWHSA0000001', NULL, 159.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 15, 50, 'ACMEWHSA0000002', 'SARTEN WESTINGHOUSE WCFP0009024MBB 24CM ALUMINIO CON MARMOL', 'ACMEWHSA0000002', NULL, 139.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 15, 9, 'ACMEBXSE0000001', 'SERVILLETERO BRINOX 1600/100 ACERO INOX JORNATA', 'ACMEBXSE0000001', NULL, 19.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 16, 40, 'ACMEPASET000001', 'SET JARRA + 6 VASOS PASABAHCE 98678 SPACE VIDRIO', 'ACMEPASET000001', NULL, 99.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 20, 30, 'LGACLULB0000001', 'SOPORTE LUMI P/ELECTRODOMESTICO GRANDES C/RUEDAS', 'LGACLULB0000001', NULL, 129.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 20, 30, 'LGACLUMI0000001', 'SOPORTE LUMI P/MICROONDA MB-2 HASTA 35 KG', 'LGACLUMI0000001', NULL, 139.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 21, 30, 'LGACLUTVF000001', 'SOPORTE LUMI P/TV FIJO KL22-22F DE 23\" A 42\"', 'LGACLUTVF000001', NULL, 69.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 21, 30, 'LGACLUTVF000002', 'SOPORTE LUMI P/TV FIJO KL22-44F DE 32\" A 55\"', 'LGACLUTVF000002', NULL, 89.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 21, 30, 'LGACLUTVI000001', 'SOPORTE LUMI P/TV INCLINABLE KL22-22T 23\"-42\"', 'LGACLUTVI000001', NULL, 109.02, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 21, 30, 'LGACLUTVI000002', 'SOPORTE LUMI P/TV INCLINADO KL22-44T 32\"-55\"', 'LGACLUTVI000002', NULL, 99.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 21, 30, 'LGACLUTVCB00002', 'SOPORTE LUMI TV C/BRAZO KLA29-466 DE 37\"-70\"', 'LGACLUTVCB00002', NULL, 229.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 21, 30, 'LGACLUTVCB00001', 'SOPORTE LUMI TV CON BRAZO KLA29-443 DE 32\"-55\"', 'LGACLUTVCB00001', NULL, 149.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 22, 29, 'LMTVLG430000008', 'TELEVISOR LG 43\" LED/ FHD/ SMART Â TV Â webOS 3/5\"', 'LMTVLG430000008', NULL, 2939.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 22, 29, 'LMTVLG500000003', 'TELEVISOR LG 50\" 50UK6300 LED UHD 4K SMART TV', 'LMTVLG500000003', NULL, 4149.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 22, 44, 'LMTVSG430000003', 'TELEVISOR SAMSUNG  43\" UN43NU7090GXZ  LED / 4K UHD / SMART / HDMI\"', 'LMTVSG430000003', NULL, 3019.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 22, 44, 'LMTVSG430000002', 'TELEVISOR SAMSUNG 43\" UN43J5202AGXZ LED/ HD/ USB/ HDMI', 'LMTVSG430000002', NULL, 3019.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 22, 44, 'LMTVSG490000007', 'TELEVISOR SAMSUNG 49\" LED UN49J5290 / FULL HD/ SMART TV/ HDMI                   \"', 'LMTVSG490000007', NULL, 3799.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 22, 44, 'LMTVSG500000009', 'TELEVISOR SAMSUNG 50\" UN50TU7100GXZS 4K UHD / SMART TV / HDMI', 'LMTVSG500000009', NULL, 4467.20, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 22, 44, 'LMTVSG580000006', 'TELEVISOR SAMSUNG 58\" UN58NU7200GXZ 4K UHD/ SMART TV / HDMI\"', 'LMTVSG580000006', NULL, 6499.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 22, 44, 'LMTVSG650000007', 'TELEVISOR SAMSUNG 65\"  UN65RU7400GXZS 4K UHD/ SMART TV / HDMI', 'LMTVSG650000007', NULL, 9899.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 22, 44, 'LMTVSG320000007', 'TELEVISOR SAMSUNG 32\" LED/  HD/ SMART TV/ WI-FI/ USB/ HDMI', 'LMTVSG320000007', NULL, 2305.68, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 22, 44, 'LMTVSG430000001', 'TELEVISOR SAMSUNG 43\" LED / FHD / SMART / HDMI\"', 'LMTVSG430000001', NULL, 3189.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 22, 44, 'LMTVSG490000005', 'TELEVISOR SG 49\" LED/ FULL HD/ SMART TV/ HDMI', 'LMTVSG490000005', NULL, 4725.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 22, 44, 'LMTVSG500000004', 'TELEVISOR SAMSUNG 50\" LED/ SMART TV 4K/ PLANO/ UHD DUMMING SMART VIEW/ SMART HUB\"', 'LMTVSG500000004', NULL, 4529.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 22, 44, 'LMTVSG500000007', 'TELEVISOR SG 50\" UN50NU7095GXZS 4K UHD / SMART TV / HDMI', 'LMTVSG500000007', NULL, 4182.98, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 22, 44, 'LMTVSG550000014', 'TELEVISOR SAMSUNG 55\" UN55RU7400GXZS 4K UHD / SMART TV/ HDMI', 'LMTVSG550000014', NULL, 6199.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 22, 44, 'LMTVSG650000011', 'TELEVISOR SAMSUNG 65\" UN65TU7100GXZS 4K UHD / SMART TV/ HDMI\"', 'LMTVSG650000011', NULL, 8379.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 22, 45, 'LMTVSKY32000001', 'TELEVISOR SKYWORTH 32\" 32E2A BÃSICO LED', 'LMTVSKY32000001', NULL, 1099.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 22, 45, 'LMTVSKY32000004', 'TELEVISOR SKYWORTH 32\" 32TB7000 ANDROID LED', 'LMTVSKY32000004', NULL, 1799.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 22, 45, 'LMTVSKY43000003', 'TELEVISOR SKYWORTH 43\" 43TB7000 ANDROID LED', 'LMTVSKY43000003', NULL, 2799.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 22, 45, 'LMTVSKY50000003', 'TELEVISOR SKYWORTH 50\" 50UB7500 ANDROID LED', 'LMTVSKY50000003', NULL, 3879.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 22, 47, 'LMTVSY490000006', 'TELEVISOR SONY 49\" LED  XBR-49X805G LED/ ANDROID / 4K/ ULTRA HD/ WIFI', 'LMTVSY490000006', NULL, 5699.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 22, 47, 'LMTVSY550000007', 'TELEVISOR SONY 55\" LED XBR-55X805G / ANDROID / 4K/ ULTRA HD/ WIFI', 'LMTVSY550000007', NULL, 6979.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 22, 47, 'LMTVSY650000006', 'TELEVISOR SONY 65\" LED XBR-65X805G /ANDROID /4K/ ULTRA HD /WIFI                 \"', 'LMTVSY650000006', '<h3>Conect&aacute; tus dispositivos</h3>\n<p><br />Mediante sus puertos USB vas a poder reproducir tus fotos, im&aacute;genes y videos almacenados en dispositivos externos como smartphones, tablets o pendrives. Tambi&eacute;n, vincul&aacute; reproductores de audio y video; consolas de juegos y notebooks a trav&eacute;s de sus entradas HDMI. Adem&aacute;s, incorpora un Chromecast que te permitir&aacute; transmitir contenido desde tu dispositivo personal a la pantalla de tu televisor Sony.</p>\n<h3>Disfrut&aacute; 4K Ultra HD</h3>\n<p><br />El Smart TV Sony 65 pulgadas posee una pantalla de visualizaci&oacute;n LCD de 163,9 cm (medida diagonal), con resoluci&oacute;n de 3840 x 2160 p&iacute;xeles (cuatro veces superior a la de una TV Full HD). Esta resoluci&oacute;n, en conjunto con el contenido de video HDR (alto rango din&aacute;mico), ofrece un alto nivel de detalle, colores reales, m&aacute;ximo brillo y contraste. Por otro lado, su procesador 4K X-Reality analiza los p&iacute;xeles de varios fotogramas y los optimiza. Adem&aacute;s, cuenta con tecnolog&iacute;a Motionflow, que mejora la nitidez en secuencias de movimiento.</p>\n<h3>Experiment&aacute; el mejor sonido</h3>\n<p><br />ClearAudio+ perfecciona el sonido del televisor creando un efecto envolvente. De esta manera, vas a poder escuchar los di&aacute;logos, la m&uacute;sica y los efectos surround con mayor claridad y separaci&oacute;n. Adem&aacute;s, la tecnolog&iacute;a DSEE restaura los componentes de frecuencia alta que se pierden al reproducir archivos de audio comprimido, obteniendo un sonido m&aacute;s natural.</p>\n<h3>Recomendado por Netflix</h3>\n<p><br />El Smart TV Sony 65 pulgadas pas&oacute; por un riguroso proceso de evaluaci&oacute;n realizado por Netflix, basado en criterios como alto rendimiento, f&aacute;cil acceso a las aplicaciones y funciones inteligentes de vanguardia.</p>\n<h3>Naveg&aacute; por la Web</h3>\n<p><br />Tiene conexi&oacute;n Wi-Fi y sistema operativo Android TV, que te van a permitir acceder a internet de forma inal&aacute;mbrica y ejecutar una gran variedad de aplicaciones. Gracias a su funci&oacute;n de B&uacute;squeda por voz, vas a poder buscar contenidos en Google y navegar c&oacute;modamente.</p>\n<h3>Sin cables a la vista</h3>\n<p><br />Gracias a su exclusivo soporte pod&eacute;s ordenar y esconder los cables en la parte posterior de tu TV y as&iacute; mantenerlos fuera de la vista.</p>', 10519.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 22, 47, 'LMTVSO32000002', 'TELEVISOR SONY 32\"/ SMART TV / WI FI', 'LMTVSO32000002', NULL, 2366.22, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 22, 47, 'LMTVSY400000002', 'TELEVISOR SONY 40\" KDL-40W655 LED / SMART TV/ WI FI', 'LMTVSY400000002', NULL, 2798.98, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 22, 47, 'LMTVSO480000001', 'TELEVISOR SONY 48\" KDL-48W655 LED/ SMART TV/ WI FI', 'LMTVSO480000001', NULL, 3699.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 22, 47, 'LMTVSY490000005', 'TELEVISOR SY 49\" KD49X725F LED/ SMART TV/ 4K / X REALITY PRO', 'LMTVSY490000005', NULL, 4599.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 22, 47, 'LMTVSY490000004', '\"TELEVISOR SY 49\"\" KD-49X755F LED/ ANDROID / 4K/ ULTRA HD\"', 'LMTVSY490000004', NULL, 7459.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 22, 47, 'LMTVSY550000006', 'TELEVISOR SY 55\" KD-55X725F LED/ SMART TV/ 4K / X REALITY PRO', 'LMTVSY550000006', NULL, 4799.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 22, 47, 'LMTVSY550000005', 'TELEVISOR SY 55\"KD-55X755F LED/ ANDROID / 4K/ ULTRA HD/ WIFI', 'LMTVSY550000005', NULL, 5999.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 22, 47, 'LMTVSY650000005', 'TELEVISOR SY 65\" LED / SMART /4K / X REALITY PRO', 'LMTVSY650000005', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Modelo :&nbsp; KD65X735F</li><li>Tipo de pantalla: Led</li><li>TamaÃ±o pantalla: 65 pulgadas</li><li>ResoluciÃ³n: UHD</li><li>TecnologÃ­a: Smart TV</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">CaracterÃ­sticas especÃ­ficas</span></h4><ul><li>S.O: Linux<br></li><li>Procesador de Video: 4K X-Reality PRO</li><li>ResoluciÃ³n: 3840 x 2160</li><li>Color: Silver</li><li>Potencia de ambos parlantes: 20 W</li><li>Tasa de refresco Hz: 60</li><li>Control remoto</li></ul>', 11309.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 22, 47, 'LMTVSY650000004', 'TELEVISOR SY 65\" LED/SMART TV C/ANDROID/ 4K/ UHD/ WI-FI', 'LMTVSY650000004', '<h3>4K HDR Processor X1&trade;</h3>\n<p><br />M&aacute;s detalles, naturalidad y realismo<br />Con tecnolog&iacute;a Object-based HDR remaster y Super Bit Mapping&trade; 4K HDR, nuestro 4K HDR Processor X1&trade; reproduce una profundidad y unas texturas mejoradas, y unos colores naturales. Ver&aacute;s colores puros con mayores niveles de brillo en im&aacute;genes de un realismo excepcional.</p>\n<h3>Redescubre hasta el &uacute;ltimo detalle con 4K X-Reality&trade; PRO</h3>\n<p><br />Con 4K X-Reality Pro, cada imagen se convierte a una calidad m&aacute;s cercana a 4K real, para disfrutar de una claridad sorprendente.</p>\n<h3>Pantalla TRILUMINOS&trade;</h3>\n<p><br />D&eacute;jate envolver por los vivos colores del mundo real. TRILUMINOS&trade; Display selecciona los colores de una paleta m&aacute;s amplia para reproducir fielmente cada tono y matiz de los paraguas.</p>\n<p>Descubre un emocionante entretenimiento en 4K HDR<br />Este televisor te ofrece la emoci&oacute;n de las pel&iacute;culas y los juegos en 4K HDR. Admite distintos formatos HDR, incluidos HDR10 y gama Log h&iacute;brida.</p>\n<h3>Disfruta de juegos en HDR</h3>\n<p><br />Los televisores 4K HDR de Sony son el compa&ntilde;ero ideal para las consolas PlayStation&reg;4 y PlayStation&reg;4 Pro.5 Sum&eacute;rgete en una experiencia de juego din&aacute;mica y llena de diversi&oacute;n con colores vibrantes e intensos. Mira c&oacute;mo tus juegos favoritos cobran vida con una incre&iacute;ble calidad de imagen.6</p>\n<h3>Explora nuevos mundos con Android TV&trade;</h3>\n<p><br />Tu Smart TV ahora es m&aacute;s inteligente. Disfruta tus experiencias favoritas con tu smartphone y tu tablet en una enorme y elegante pantalla BRAVIA&trade;. Android TV&trade; con control de voz avanzado permite que te conectes y accedas a contenidos, desde pel&iacute;culas y programas de televisi&oacute;n, hasta miles de aplicaciones solo con tu voz.</p>\n<h3>Este es un televisor recomendado por Netflix</h3>\n<p><br />Descubre una mejor experiencia de transmisi&oacute;n con un Netflix Recommended TV. Un Netflix Recommended TV se elige por su alto rendimiento, funciones inteligentes de vanguardia y f&aacute;cil acceso a las aplicaciones.</p>', 13959.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 22, 47, 'LMTVSY750000002', 'TELEVISOR SY 75\" LED/SMART TV C/ANDROD/UHD/4K/ WI-FI/ VOICE REMOTE 960 XR  8/2 GB', 'LMTVSY750000002', '<h3>4K HDR Processor X1&trade;</h3>\n<p><br />M&aacute;s detalles, naturalidad y realismo<br />Con tecnolog&iacute;a Object-based HDR remaster y Super Bit Mapping&trade; 4K HDR, nuestro 4K HDR Processor X1&trade; reproduce una profundidad y unas texturas mejoradas, y unos colores naturales. Ver&aacute;s colores puros con mayores niveles de brillo en im&aacute;genes de un realismo excepcional.</p>\n<h3>Redescubre hasta el &uacute;ltimo detalle con 4K X-Reality&trade; PRO</h3>\n<p><br />Con 4K X-Reality Pro, cada imagen se convierte a una calidad m&aacute;s cercana a 4K real, para disfrutar de una claridad sorprendente.</p>\n<h3>Pantalla TRILUMINOS&trade;</h3>\n<p><br />D&eacute;jate envolver por los vivos colores del mundo real. TRILUMINOS&trade; Display selecciona los colores de una paleta m&aacute;s amplia para reproducir fielmente cada tono y matiz de los paraguas.</p>\n<p>Descubre un emocionante entretenimiento en 4K HDR<br />Este televisor te ofrece la emoci&oacute;n de las pel&iacute;culas y los juegos en 4K HDR. Admite distintos formatos HDR, incluidos HDR10 y gama Log h&iacute;brida.</p>\n<h3>Disfruta de juegos en HDR</h3>\n<p><br />Los televisores 4K HDR de Sony son el compa&ntilde;ero ideal para las consolas PlayStation&reg;4 y PlayStation&reg;4 Pro.5 Sum&eacute;rgete en una experiencia de juego din&aacute;mica y llena de diversi&oacute;n con colores vibrantes e intensos. Mira c&oacute;mo tus juegos favoritos cobran vida con una incre&iacute;ble calidad de imagen.6</p>\n<h3>Explora nuevos mundos con Android TV&trade;</h3>\n<p><br />Tu Smart TV ahora es m&aacute;s inteligente. Disfruta tus experiencias favoritas con tu smartphone y tu tablet en una enorme y elegante pantalla BRAVIA&trade;. Android TV&trade; con control de voz avanzado permite que te conectes y accedas a contenidos, desde pel&iacute;culas y programas de televisi&oacute;n, hasta miles de aplicaciones solo con tu voz.</p>\n<h3>Este es un televisor recomendado por Netflix</h3>\n<p><br />Descubre una mejor experiencia de transmisi&oacute;n con un Netflix Recommended TV. Un Netflix Recommended TV se elige por su alto rendimiento, funciones inteligentes de vanguardia y f&aacute;cil acceso a las aplicaciones.</p>', 24159.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 16, 40, 'ACMEPAVA0000005', 'VASO 6 PZS PASABAHCE 42415 SYLVANA 315 ML', 'ACMEPAVA0000005', NULL, 99.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 16, 40, 'ACMEPAVA0000003', 'VASOS 3 PZS PASABAHCE 41536 ALLEGRA', 'ACMEPAVA0000003', NULL, 39.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 16, 40, 'ACMEPAVA0000002', 'VASOS 6 PZS PASABAHCE 420035 MONTE CARLO 390 ML', 'ACMEPAVA0000002', NULL, 79.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 16, 40, 'ACMEPAVA0000004', 'VASOS 6 PZS PASABAHCE 420265 MONTE CARLO 460 ML', 'ACMEPAVA0000004', NULL, 119.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 16, 40, 'ACMEPAVA0000001', 'VASOS CERVEZA 6 PZS PASABAHCE 42116 300 ML', 'ACMEPAVA0000001', NULL, 89.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 16, 46, 'ACMEVA000000001', 'VASOS COLOR 6 PZS 350ML PS114Y CIRCULOS VIDRIO', 'ACMEVA000000001', NULL, 49.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 15, 9, 'ACMEBXWO0000002', 'WOK BRINOX 24 CM 7000/365 GARLIC PLOMO 2,3 L', 'ACMEBXWO0000002', NULL, 79.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 15, 9, 'ACMEBXWO0000004', 'WOK BRINOX 24CM 7014/372 CHILLI PRATA', 'ACMEBXWO0000004', NULL, 89.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 15, 9, 'ACMEBXWO0000006', 'WOK BRINOX 24CM C/TAPA 7000/366 2,3L', 'ACMEBXWO0000006', NULL, 129.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 15, 9, 'ACMEBXWO0000003', 'WOK BRINOX 28 CM 7001/367 GARLIC ROJO 4,1 L', 'ACMEBXWO0000003', NULL, 99.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 15, 9, 'ACMEBXWO0000001', 'WOK BRINOX 28 CM 7014/374 CHILLI PRATA 4,1 L', 'ACMEBXWO0000001', NULL, 99.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 15, 9, 'ACMEBXWO0000005', 'WOK BRINOX 28 CM C/TAPA 7014/175 CHILLI PRATA', 'ACMEBXWO0000005', NULL, 169.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 15, 50, 'ACMEWHWO0000001', 'WOK WESTINHOUSE 32CM C/TAPA WCCW0008032  ALUMINIO', 'ACMEWHWO0000001', NULL, 279.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 5, 41, 'PEAFPT000000017', 'AFEITADORA PH BG-105/10', 'PEAFPT000000017', NULL, 179.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 5, 41, 'PEAFPT000000019', 'AFEITADORA PHILIPS S-1121/41', 'PEAFPT000000019', NULL, 299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 5, 41, 'PEAFPT000000018', 'AFEITADORA PHILIPS S-1223/41', 'PEAFPT000000018', NULL, 349.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 5, 3, 'PEAFBL000000001', 'AFEITADORA BABY LISS PRO FX01', 'PEAFBL000000001', NULL, 399.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 5, 41, 'PEAFPT000000009', 'AFEITADORA PHILIPS S-5050/04', 'PEAFPT000000009', NULL, 579.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 5, 18, 'PECEGA000000002', 'CEPILLO GAMA INNOVA MINI', 'PECEGA000000002', NULL, 199.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 5, 18, 'PECEGA000000003', 'CEPILLO GAMA INNOVA DIGITAL DU', 'PECEGA000000003', NULL, 339.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 5, 41, 'PECEPT000000001', 'CEPILLO PLANCHA PH BHH880', 'PECEPT000000001', NULL, 349.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 5, 41, 'PECBPT000000008', 'CORTA BARBA PHILIPS QP-2510/10', 'PECBPT000000008', '<p>OneBlade no afeita tan al ras como las cuchillas tradicionales, a fin de que el proceso sea cÃ³modo para tu piel. MuÃ©vela en direcciÃ³n contraria al nacimiento del pelo y afeita cÃ³modamente cualquier longitud de barba.<br></p><p>Sigue los contornos de la cara para que puedas recortar y afeitar todas las zonas faciales con total comodidad y eficacia.<br></p><p>OneBlade sigue los contornos de la cara para que puedas recortar y afeitar todas las zonas faciales con total comodidad y facilidad. UtilizÃ¡ la cuchilla de doble cara para perfilar los bordes y creÃ¡ lÃ­neas definidas moviendo la cuchilla en cualquier direcciÃ³n.<br></p><p>Coloca uno de los de los peines-guÃ­a para conseguir la longitud de barba que desees.<br></p><p>OneBlade es resistente al agua, por lo que resulta muy fÃ¡cil de limpiar: solo tenÃ©s que enjuagar bajo el grifo. TambiÃ©n podÃ©s afeitarte con o sin espuma.<br></p><p>Las cuchillas estÃ¡n diseÃ±adas para ofrecer un rendimiento duradero. Para obtener un rendimiento Ã³ptimo, solo tenÃ©s que sustituir las cuchillas cada 4 meses*. La sustituciÃ³n es rÃ¡pida y sencilla.<br></p><p>La baterÃ­a recargable ofrece 30 minutos de rendimiento constante despuÃ©s de una carga de 8 horas.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Sistema de afeitado: TecnologÃ­a de seguimiento de contornos / Sistema de protecciÃ³n dual</li><li>Sistema de recorte: TecnologÃ­a de seguimiento de contornos</li><li>Peine: 2 peines recortadores (de 1 y 2 mm)</li><li>Mantenimiento: Tapa de almacenamiento</li><li>Carga: Recargable<br></li><li>Uso en seco y hÃºmedo: SÃ­</li><li>Interruptor rotativo de encendido/apagado: SÃ­</li><li>Color: Verde lima, gris marengo</li><li>Mango: Mango ergonÃ³mico</li><li>Tiempo de funcionamiento: 30 minutos</li><li>Carga: Carga completa de 8 horas</li><li>Tipo de baterÃ­a: Ni-MH</li><li>Voltaje automÃ¡tico: 100-240 V</li><li>MÃ¡ximo consumo de energÃ­a: 2&nbsp; W</li><li>GarantÃ­a de 2 aÃ±os: En el mango</li><li>Cabezal de repuesto: QP210, QP220, QP610, QP620</li><li>Sustituir cada 4 meses*</li></ul>', 279.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 5, 41, 'PECBPT000000005', 'CORTA BARBA PHILIPS BT-3206', 'PECBPT000000005', NULL, 259.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 5, 41, 'PECBPT000000009', 'CORTA BARBA PHILIPS QP-2521/10', 'PECBPT000000009', NULL, 299.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 5, 41, 'PECBPT000000007', 'CORTA BARBA PHILIPS BT-3216', 'PECBPT000000007', NULL, 339.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 5, 41, 'PECPPT000000009', 'CORTA PELO PH HC-3505', 'PECPPT000000009', NULL, 239.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 5, 41, 'PECPPT000000010', 'CORTA PELO PHILIPS HC-3520/15', 'PECPPT000000010', NULL, 293.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 5, 18, 'PECPGA000000003', 'CORTA PELO GAMA GM 590 PLOMO', 'PECPGA000000003', NULL, 259.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 5, 18, 'PECPGA000000002', 'CORTA PELO GAMA GM 562', 'PECPGA000000002', NULL, 299.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 5, 41, 'PECPPT000000011', 'CORTA PELO PHILIPS HC-5610/15', 'PECPPT000000011', NULL, 329.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 5, 41, 'PECPPT000000006', 'CORTA BARBA PHILIPS MG-3711/15', 'PECPPT000000006', NULL, 299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 5, 41, 'PECPPT000000007', 'CORTA PELO PHILIPS MG-3731/15', 'PECPPT000000007', NULL, 369.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 5, 41, 'PECBPT000000004', 'CORTA PELO PHILIPS MG5730 SET', 'PECBPT000000004', NULL, 439.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 5, 41, 'PEDEPT000000003', 'DEPILADORA PHILIPS HP-6420', 'PEDEPT000000003', NULL, 269.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 5, 41, 'PEDEPT000000014', 'DEPILADORA PHILIPS BRE-255/00 CON CABLE', 'PEDEPT000000014', '<p>El eficaz sistema de depilaciÃ³n deja tu piel suave y sin vello durante semanas.</p><p>La luz exclusiva incorporada te permite perderte menos vello y lograr una depilaciÃ³n mÃ¡s eficaz.</p><p>2 posiciones de velocidad para eliminar el vello mÃ¡s fino y el mÃ¡s grueso y obtener un tratamiento de depilaciÃ³n mÃ¡s personalizado.</p><p>La forma redondeada encaja perfectamente en tu mano para una cÃ³moda eliminaciÃ³n del vello. Y ademÃ¡s, el diseÃ±o es elegante.</p><p>Esta depiladora tiene un cabezal depilador lavable, que puedes desmontar y enjuagar bajo el grifo para una mayor higiene.</p><p>Para ofrecer una mayor protecciÃ³n en todas las zonas del cuerpo, incluye un casquillo para zonas delicadas para eliminar fÃ¡cilmente el vello no deseado de las axilas y la lÃ­nea del bikini.</p><p>Cabezal de masaje para una depilaciÃ³n mÃ¡s suave.</p><p>Funda de viaje para almacenamiento y transporte.<br></p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Sistema de depilaciÃ³n: Eficaz sistema de depilaciÃ³n</li><li>Discos de depilaciÃ³n: Suaves discos-pinza</li><li>Mango: Compacto</li><li>Con cable: SÃ­</li><li>Luz Opti-Light: SÃ­</li><li>Mango: ErgonÃ³mico</li><li>Cabezal depilador lavable: SÃ­</li><li>Adaptador para zonas sensibles: SÃ­</li><li>Cabezal de masaje: SÃ­</li><li>Funda: Funda bÃ¡sica</li><li>Cepillo de limpieza: SÃ­</li><li>Voltaje: 15&nbsp; V</li><li>2 aÃ±os de garantÃ­a: SÃ­</li></ul>', 379.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 5, 41, 'PEDEPT000000008', 'DEPILADORA PHILIPS HP-6543/00', 'PEDEPT000000008', '<p>Eficaz sistema de depilaciÃ³n que deja la piel suave y sin vello durante semanas.<br></p><p>Esta depiladora tiene suaves discos en pinza que eliminan el vello de tan solo 0,5 mm sin tirar de la piel.</p><p>PosiciÃ³n de velocidad extra rÃ¡pida para el vello mÃ¡s fino y las zonas mÃ¡s difÃ­ciles de alcanzar.</p><p>Esta depiladora posee un cabezal de depilaciÃ³n lavable. Puedes extraer el cabezal para limpiarlo con agua y disfrutar de la mÃ¡xima higiene.</p><p>Este accesorio permite colocar la depiladora en un Ã¡ngulo adecuado para la eliminaciÃ³n constante y eficaz de vello.</p><p>El recortador de precisiÃ³n estÃ¡ creado para eliminar el vello en dondequiera que estÃ©s. No te preocupes mÃ¡s del vello porque el recortador de vellos puede cortarlos de manera suave y rÃ¡pida, incluso si son muy finos, del modo mÃ¡s discreto.</p><p>Solo tienes que colocar el peine en el cabezal del recortador y elegir el largo que mÃ¡s prefieras (2 mm/ 4 mm). Define tu lÃ­nea del bikini con solo recortar el vello con diferentes largos.</p><p>Se incluyen unas pinzas para que estilices tus cejas, funda pequeÃ±a para un almacenamiento sencillo.<br></p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Eficaz sistema de depilaciÃ³n: SÃ­</li><li>Discos en pinza suaves: SÃ­</li><li>Exclusivos discos de depilaciÃ³n: SÃ­</li><li>Cabezal de depilaciÃ³n lavable: SÃ­</li><li>Mango ergonÃ³mico: SÃ­</li><li>2 posiciones de velocidad: SÃ­</li><li>2 aÃ±os de garantÃ­a: SÃ­</li><li>BaterÃ­a AAA: Recortador de precisiÃ³n</li></ul><h4><b>Accesorios</b></h4><ul><li>Tapa protectora Opti-start: SÃ­</li><li>Peine doble de recorte: 2 mm/4 mm</li><li>PrÃ¡ctica funda: SÃ­</li><li>Cepillo de limpieza: SÃ­</li></ul><h4><b>Datos tÃ©cnicos</b></h4><ul><li>Cantidad de puntos de contacto: 20</li><li>Cantidad de discos: 21</li><li>Extracciones por segundo en la velocidad 1: 600</li><li>Extracciones por segundo en la velocidad 2: 733</li><li>Dispositivo de voltaje: 13V</li><li>Adaptador de voltaje: 13 V/400 mA</li></ul>', 399.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 5, 41, 'PEDEPT000000012', 'DEPILADORA PHILIPS  BRE605/00', 'PEDEPT000000012', NULL, 449.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 5, 41, 'PEDEPT000000011', 'DEPILADORA PHILIPS BRE-620/00', 'PEDEPT000000011', '<p>Cabezal de depilaciÃ³n fabricado con una superficie de cerÃ¡mica que corta hasta el vello mÃ¡s fino. RotaciÃ³n de disco mÃ¡s rÃ¡pida (2200 RPM) para una extracciÃ³n del vello a mayor velocidad.<br></p><p>El cabezal extra ancho de depiladora abarca mÃ¡s piel en cada pasada para proporcionar una depilaciÃ³n mÃ¡s rÃ¡pida.</p><p>El mango ergonÃ³mico en forma de S ayuda a pasarla fÃ¡cilmente por todo el cuerpo con un control mÃ¡ximo y un mayor alcance con movimientos naturales y precisos.</p><p>DiseÃ±ado con un mango antideslizante, es perfecto para usar con agua y permite una experiencia mÃ¡s cÃ³moda y suave en la ducha o el baÃ±o. Puedes utilizar el dispositivo sin cable para una mayor comodidad.</p><p>Opti-Light te ayuda a buscar y extraer el vello mÃ¡s difÃ­cil.</p><p>El cabezal de afeitado proporciona un afeitado al ras y mayor suavidad en diferentes Ã¡reas del cuerpo. Cuenta con un peine recortador para depilar la zona del bikini.</p><p>El accesorio masajeador alivia la sensaciÃ³n de la depilaciÃ³n.<br></p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Cabezal de depilaciÃ³n: SÃ­</li><li>Peine de recorte: SÃ­</li><li>Adaptador masajeador: SÃ­</li><li>Funda: Funda bÃ¡sica</li><li>Cepillo de limpieza: SÃ­</li><li>Uso en hÃºmedo y en seco: SÃ­</li><li>Opti-Light: SÃ­</li><li>InalÃ¡mbrico: SÃ­</li><li>Mango: Mango en forma de S</li><li>Discos de depilaciÃ³n: Discos cerÃ¡micos</li><li>Sistema de depilaciÃ³n: Sistema de depilaciÃ³n patentado</li><li>Cabezal de la depiladora: Extragrande</li><li>Posiciones de velocidad: 2 ajustes</li><li>Tipo de baterÃ­a: Iones de litio</li><li>Tiempo de utilizaciÃ³n: hasta 40 minutos</li><li>Carga: Recargable / Tiempo de carga de 1,5 horas</li><li>Carga rÃ¡pida: SÃ­</li><li>Cantidad de discos: 17</li><li>Voltaje: 15 V/5,4 W</li><li>Cantidad de pinzas: 32</li><li>Velocidad 1 de la pinza: 64,000 por minuto</li><li>Velocidad 2 de la pinza: 70,400 por minuto</li></ul>', 559.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 5, 41, 'PEDEPT000000018', 'DEPILADORA PHILIPS BRE-285/00', 'PEDEPT000000018', '<p>El eficaz sistema de depilaciÃ³n deja la piel suave y sin vello durante semanas.<br></p><p>La exclusiva luz incorporada permite depilar vellos bien finos, a fin de brindar una depilaciÃ³n mÃ¡s efectiva.</p><p>2 posiciones de velocidad para eliminar el vello mÃ¡s fino y el mÃ¡s grueso y asÃ­ disfrutar de un tratamiento de depilaciÃ³n mÃ¡s personalizado.</p><p>La forma redondeada se adapta perfectamente a la mano para facilitar la eliminaciÃ³n del vello. AdemÃ¡s, tiene un diseÃ±o increÃ­ble.</p><p>Esta depiladora tiene un cabezal de depilaciÃ³n lavable, que se puede extraer para limpiar con agua corriente y asÃ­ mejorar la higiene.</p><p>El cabezal de afeitado y el peine recortador te garantizan un afeitado al ras mÃ¡s suave en distintas partes del cuerpo.</p><p>Incluye un cabezal de corte y un peine recortador para afeitar las zonas Ã­ntimas con mayor comodidad.</p><p>El cabezal de masaje alivia la sensaciÃ³n molesta de la depilaciÃ³n.</p><p>El uso del guante exfoliante ayuda a evitar el crecimiento de vellos encarnados entre una y otra depilaciÃ³n.</p><p>Funda de viaje para almacenamiento y transporte.<br></p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Sistema de depilaciÃ³n: Eficaz sistema de depilaciÃ³n</li><li>Discos de depilaciÃ³n: Discos en pinza suaves</li><li>Mango: Compacta</li><li>Con cable: SÃ­</li><li>Opti-Light: SÃ­</li><li>Mango: ErgonÃ³mica</li><li>Cabezal de depilaciÃ³n lavable: SÃ­</li><li>Cabezal de afeitado: SÃ­</li><li>Peine del cabezal de afeitado: SÃ­</li><li>Cabezal de corte: SÃ­</li><li>Peine recortador para la zona del bikini: SÃ­</li><li>Cabezal de masaje: SÃ­</li><li>Guante exfoliante: SÃ­</li><li>Funda: Funda bÃ¡sica</li><li>Cepillo de limpieza: SÃ­</li><li>Voltaje: 15&nbsp; V</li><li>2 aÃ±os de garantÃ­a: SÃ­</li></ul>', 619.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 5, 41, 'PEDEPT000000015', 'DEPILADORA PHILIPS BRE-640/00 ', 'PEDEPT000000015', NULL, 749.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 5, 41, 'PEDEPT000000016', 'DEPILADORA PHILIPS BRI-863/00 ', 'PEDEPT000000016', NULL, 1769.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 5, 41, 'PEDEPT000000017', 'DEPILADORA PHILIPS BRI-920/00', 'PEDEPT000000017', NULL, 2699.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 5, 41, 'PEDEPT000000013', 'DEPILADORA PHILIPS BRI-950/00', 'PEDEPT000000013', '<p>IPL significa luz pulsada intensa. Philips Lumea aplica ligeras pulsaciones de luz sobre la raÃ­z del vello, las cuales deja al folÃ­culo en una fase de reposo. Como consecuencia, la cantidad de vello corporal que crece disminuye gradualmente. La repeticiÃ³n del tratamiento deja la piel sin vello y suave al tacto. El tratamiento para evitar la reapariciÃ³n del vello es seguro y suave, incluso en zonas sensibles. Philips Lumea estÃ¡ clÃ­nicamente probada y desarrollada con dermatÃ³logos para brindar un tratamiento sencillo y eficaz en la comodidad de tu hogar.</p><p>En estudios objetivos, se muestra hasta un 92% de reducciÃ³n del vello despuÃ©s de tres tratamientos**. Realiza los primeros cuatro tratamientos cada dos semanas y los siguientes ocho cada cuatro semanas. DespuÃ©s de 12 tratamientos, puedes disfrutar de seis meses de piel suave sin vello*.</p><p>Philips Lumea Prestige es eficaz en una amplia variedad de tipos de vello y piel. Funciona en vello rubio oscuro, castaÃ±o o negro (de color natural) y en tonos de piel que van desde muy claros hasta marrones oscuros. La tecnologÃ­a IPL necesita contraste entre el pigmento del color del vello y el pigmento del tono de piel, por lo tanto (como otros tratamientos basados en IPL) Lumea no puede usarse para tratar vello blanco, gris, rubio claro o pelirrojo, y no es adecuado para piel muy oscura.<br></p><h4><b>Zona de aplicaciÃ³n</b></h4><ul><li>MentÃ³n</li><li>Bozo</li><li>LÃ­nea de la mandÃ­bula</li><li>Brazos</li><li>Piernas</li><li>Abdomen</li><li>Axilas</li><li>Bikini</li></ul><h4><b>LÃ¡mpara de alto rendimiento</b></h4><ul><li>Proporciona &lt;gt/&gt;250 000 pulsos*****</li></ul><h4><b>Voltaje</b></h4><ul><li>100-240 V</li></ul><h4><b>Tiempo de aplicaciÃ³n</b></h4><ul><li>Zonas del rostro: 1,5 min.</li><li>Axila: 2,5 min.</li><li>LÃ­nea del bikini: 2 min</li><li>Parte inferior de las piernas: 8,5 min</li></ul><h4><b>Modo de aplicaciÃ³n</b></h4><ul><li>Uso con y sin cables: Uso con y sin cable</li><li>Deslice y dispare: Para aplicaciÃ³n rÃ¡pida</li><li>Estampe y dispare: Para el tratamiento de zonas pequeÃ±as</li></ul><h4><b>ConfiguraciÃ³n de seguridad y ajustable</b></h4><ul><li>5 ajustes de intensidad de la luz: Se adapta a tu tipo de piel</li><li>Sensor de tono de piel: Detecta tu tono de piel</li><li>Filtro UV integrado: Protege la piel de los rayos UV</li><li>Sensor SmartSkin: El ajuste adecuado a peticiÃ³n</li><li>Sistema de seguridad integrado: Evita los pulsos de luz accidentales</li></ul><h4><b>Elementos incluidos</b></h4><ul><li>Adaptador: 19.5 V/4000 mA</li><li>Almacenamiento: Estuche de lujo</li><li>Instrucciones de uso: Manual del usuario</li></ul><h4><b>Especificaciones tÃ©cnicas de los accesorios</b></h4><ul><li>TamaÃ±o de la ventana: 4.1 cm2</li><li>Forma: curva convexa</li><li>Tratamiento personalizado para el cuerpo</li><li>TamaÃ±o de la ventana: 2 cm2, filtro adicional</li><li>Forma: plana</li><li>Tratamiento personalizado para la cara</li></ul>', 2899.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 5, 41, 'PECNPT000000001', 'CORTA PELO DE NARIZ PH NT-3160', 'PECNPT000000001', NULL, 149.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 5, 41, 'PEPPPT000000012', 'PLANCHA DE PELO PHILIPS HP-8321/00', 'PEPPPT000000012', NULL, 219.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 5, 41, 'PEPPPT000000006', 'PLANCHA DE PELO PH BHS-380/00', 'PEPPPT000000006', NULL, 249.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 5, 18, 'PEPPGA000000015', 'PLANCHA DE PELO GA CP1 CERAMIC', 'PEPPGA000000015', NULL, 269.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 5, 18, 'PEPPGA000000014', 'PLANCHA DE PELO GAMA MULTIBRUS', 'PEPPGA000000014', NULL, 299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 5, 41, 'PEPPPT000000014', 'PLANCHA DE PELO PH BHS-376/00', 'PEPPPT000000014', NULL, 319.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 5, 41, 'PERIPT000000003', 'RIZADOR DE PELO PHILIPS BHH811', 'PERIPT000000003', NULL, 349.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 5, 18, 'PEPPGA000000005', 'PLANCHA DE PELO GA BLOOM PINK', 'PEPPGA000000005', NULL, 359.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 5, 18, 'PEPPGA000000006', 'PLANCHA DE PELO GAMA BLOOM VIOLE', 'PEPPGA000000006', NULL, 359.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 5, 18, 'PEPPGA000000007', 'PLANCHA DE PELO GA BLOOM ORANG', 'PEPPGA000000007', '<p>Disfruta de una explosiÃ³n de color con las plancha de pelo Elegance BLOOM, con un diseÃ±o ultra plano y unas placas con 12 cm de largo que te permite conseguir un alisado perfecto en poco tiempo incluso si tu pelo es largo y voluminoso. Durante el peinado, Elegance BLOOM protege tu pelo del calor, manteniÃ©ndolo sano, fuerte y vital. Las placas estÃ¡n amortiguadas para que se adhieran perfectamente al mechÃ³n que alisas desde la primera pasada. De esta forma no tendrÃ¡s que pasarte la plancha mÃ¡s veces y protegerÃ¡s tu cabello del daÃ±ino estrÃ©s tÃ©rmico.<br></p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Placas oscilantes: Si</li><li>Color: Naranja</li><li>Cable giratorio de 360Â°: Si</li><li>Recubrimiento de placas: Tourmaline</li><li>Sistema de apagado automÃ¡tico: Si</li><li>Rango de Temperatura: 130Â° 150Â° 170Â° 190Â° 210Â° 230Â°</li><li>Largo del cable: 2.5 M</li><li>Tiempo de calentamiento: 70seg a 180ÂºC</li><li>TamaÃ±o placas (cm): 25 x 120 mm</li><li>Pantalla: LED</li><li>Voltaje (V): AutomÃ¡tico</li></ul><h4><b>Funciones</b></h4><ul><li>Cable giratorio<br></li><li style=\"\">Aro para colgar</li><li style=\"\">Bi-Volt</li><li style=\"\">Patin Flotante</li></ul>', 359.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 5, 41, 'PEPPPT000000011', 'PLANCHA DE PELO PH HP-8316/00', 'PEPPPT000000011', NULL, 359.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 5, 41, 'PEPPPT000000015', 'PLANCHA DE PELO PH BHS-378/00', 'PEPPPT000000015', NULL, 389.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 5, 18, 'PEPSGA000000001', 'PLANCHA/SEC GAMA ERGO+VIAGIO', 'PEPSGA000000001', NULL, 379.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 5, 41, 'PEPSPT000000001', 'PLANCHA/SEC DE PELO PH HP-8640', 'PEPSPT000000001', NULL, 379.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 5, 18, 'PEPPGA000000003', 'PLANCHA DE PELO GA CP1 NOVA TO', 'PEPPGA000000003', NULL, 379.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 5, 41, 'PEPPPT000000009', 'PLANCHA DE PELO PH BHS-674/00', 'PEPPPT000000009', NULL, 439.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 5, 18, 'PEPPGA000000001', 'PLANCHA DE PELO GAMA X-WIDE DI', 'PEPPGA000000001', NULL, 489.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 5, 41, 'PEPPPT000000010', 'PLANCHA DE PELO PH BHS-675/00', 'PEPPPT000000010', NULL, 499.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 5, 3, 'PEPPBL000000009', 'PLANCHA DE PELO BL BAB9555X CE', 'PEPPBL000000009', NULL, 519.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 5, 18, 'PEPPGA000000004', 'PLANCHA DE PELO GA CP1 TOUR IO', 'PEPPGA000000004', NULL, 559.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 5, 18, 'PEPPGA000000008', 'PLANCHA DE PELO GA CP3 DIG TUR', 'PEPPGA000000008', NULL, 559.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 5, 18, 'PEPPGA000000019', 'PLANCHA DE PELO GA CP1 NOVA DI', 'PEPPGA000000019', NULL, 669.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 5, 18, 'PEPPGA000000016', 'PLANCHA DE PELO GA CP1 5D GOLD', 'PEPPGA000000016', NULL, 699.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 5, 18, 'PEPPGA000000017', 'PLANCHA DE PELO GA CP1 5D NIGH', 'PEPPGA000000017', NULL, 699.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 5, 18, 'PEPPGA000000018', 'PLANCHA DE PELO GA CP1 5D ROSE', 'PEPPGA000000018', NULL, 699.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 5, 3, 'PEPPBL000000003', 'PLANCHA IONIC FLAT IRON 1-1/4', 'PEPPBL000000003', NULL, 839.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 5, 3, 'PEPPBL000000007', 'PLANCHA DE PELO BL 2091 BLACK ', 'PEPPBL000000007', NULL, 979.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 5, 3, 'PEPPBL000000008', 'PLANCHA DE PELO BL 2091 RED   ', 'PEPPBL000000008', NULL, 979.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 5, 3, 'PEPPBL000000001', 'PLANCHA DE PELO BL OPTIMA 3000', 'PEPPBL000000001', NULL, 1269.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 5, 3, 'PEPPBL000000005', 'PLANCHA DE PELO BL OPTIMA 3100', 'PEPPBL000000005', NULL, 1269.38, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 5, 3, 'PEPPBL000000006', 'PLANCHA DE PELO BL OP. 3000 GO', 'PEPPBL000000006', NULL, 1399.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 5, 41, 'PERIPT000000004', 'RIZADOR DE PELO PH BHB862', 'PERIPT000000004', NULL, 179.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 5, 18, 'PERIGA000000001', 'RIZADOR DE PELO GA 19MM TURMAL', 'PERIGA000000001', NULL, 249.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 5, 18, 'PERIGA000000004', 'RIZADOR DE PELO GA 25MM NOVA D', 'PERIGA000000004', NULL, 349.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 5, 18, 'PERIGA000000005', 'RIZADOR DE PELO GA 33MM NOVA D', 'PERIGA000000005', NULL, 369.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 5, 18, 'PERIGA000000006', 'RIZADOR GAMA WONDERCURL 220V', 'PERIGA000000006', NULL, 599.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 5, 3, 'PERIBL000000003', 'RIZADOR BL GRAPHITE TITA. 19MM', 'PERIBL000000003', NULL, 719.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `products` (`id`, `subcategory_id`, `brand_id`, `sku`, `name`, `slug`, `description`, `price`, `offer_price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(352, 5, 3, 'PERIBL000000004', 'RIZADOR BL GRAPHITE TITA. 25MM', 'PERIBL000000004', NULL, 729.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 5, 3, 'PERIBL000000005', 'RIZADOR BABY LISS MIRA CURL ROSE GOLD BABNTRGMC1UZ', 'PERIBL000000005', NULL, 919.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 5, 3, 'PERIBL000000001', 'RIZADOR BL MIRA CURL BABNTMC3', 'PERIBL000000001', NULL, 1309.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 5, 41, 'PESPPT000000012', 'SECADOR DE PELO PH BHC-010/10 ', 'PESPPT000000012', NULL, 149.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 5, 18, 'PESPGA000000017', 'SECADOR DE PELO GA EOLIC POCKE', 'PESPGA000000017', NULL, 149.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 5, 41, 'PESPPT000000008', 'SECADOR DE PELO PH BHD-004/00', 'PESPPT000000008', NULL, 189.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 5, 41, 'PESPPT000000004', 'SECADOR DE PELO PH HP-8230/00', 'PESPPT000000004', NULL, 189.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 5, 41, 'PESPPT000000009', 'SECADOR DE PELO PH BHD-006/00', 'PESPPT000000009', NULL, 219.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 5, 41, 'PESPPT000000010', 'SECADOR DE PELO PH BHD-007/00', 'PESPPT000000010', NULL, 219.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 5, 41, 'PESPPT000000013', 'SECADOR DE PELO PHILIPS HP8217', 'PESPPT000000013', NULL, 259.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 5, 18, 'PESPGA000000002', 'SECADOR DE PELO GA BLOOM PINK', 'PESPGA000000002', '<p>Disfruta de la lÃ­nea de secadores BLOOM, una explosiÃ³n de color con todo el estilo y que ademas cuenta con la tecnologÃ­a necesaria para obtener un peinado perfecto mientras ayuda a mejorar la salud del cabello; reconstruyendo la estructura molecular y dejÃ¡ndolo mÃ¡s luminoso y brillante. Posee la tecnologÃ­a Ion Plus. Los iones aportan grandes beneficios al cabello, por lo que la hemos desarrollado para emitir una cantidad de partÃ­culas hasta un 80% superior respecto a otros sistemas iÃ³nicos. Los resultados han sido sorprendentes. Los iones, si se emiten en grandes cantidades, ayudan a cerrar las cutÃ­culas y a que se unan las unas con las otras para obtener un resultado homogÃ©neo y uniforme. De esta forma, se reconstruye la superficie externa del cabello y, si estÃ¡ seco y desfibrado, recupera su humedad natural; (que la conserva con las cutÃ­culas cerradas) dejando el cabello mÃ¡s hidratado, elÃ¡stico, sano y fuerte. TambiÃ©n contribuye a eliminar el tan molesto efecto encrespado y el cabello electrizado; dejando una melena mÃ¡s brillante, resplandeciente y disciplinada.<br></p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Filtro extraÃ­ble: Si<br></li><li>Potencia 110V: 2100W</li><li>Chorro de aire frÃ­o: Si</li><li>Largo del Cable: 1,70Mts</li><li>Accesorios: 2</li><li>IonizaciÃ³n : Si</li><li>Velocidades: 2</li><li>Motor: DC</li><li>Temperaturas: 3</li><li>Colores Disponibles: Violeta, Naranja, Rosa</li><li>Potencia 240v: 2400W</li><li>Potencia 220V: 1900W</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Funciones</span></h4><ul><li>Filtro<br></li><li>Aro para colgar</li><li>Cool Shot</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Accesorios</span></h4><ul><li>Difusor<br></li><li>Boquilla</li></ul>', 259.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 5, 18, 'PESPGA000000003', 'SECADOR DE PELO GA BLOOM VIOLE', 'PESPGA000000003', NULL, 259.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 5, 18, 'PESPGA000000004', 'SECADOR DE PELO GA BLOOM ORANG', 'PESPGA000000004', NULL, 259.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 5, 18, 'PESPGA000000016', 'SECADOR DE PELO GA ELITE ION', 'PESPGA000000016', NULL, 259.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 5, 41, 'PESPPT000000005', 'SECADOR DE PELO PH HP-8232/00', 'PESPPT000000005', NULL, 279.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 5, 18, 'PESPGA000000005', 'SEECADOR DE PELO GA EOLIC 2000', 'PESPGA000000005', NULL, 299.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 5, 41, 'PESPPT000000014', 'SECADOR DE PELO PH BHD-272/00', 'PESPPT000000014', NULL, 339.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 5, 18, 'PESPGA000000014', 'SECADOR DE PELO GAMA KERATION', 'PESPGA000000014', NULL, 389.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 5, 18, 'PESPGA000000012', 'SECADOR DE PELO GAMA SCIROCCO', 'PESPGA000000012', NULL, 429.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 5, 18, 'PESPGA000000015', 'SECADOR DE PELO GA TEMPO 5D SE', 'PESPGA000000015', NULL, 499.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 5, 18, 'PESPGA000000006', 'SECADOR DE PELO GA TEMPO 5D SE', 'PESPGA000000006', NULL, 499.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 7, 41, 'PEACFRPT0000001', 'ACC. P/FREIDORA PHILIPS HD-9904 GRI', 'PEACFRPT0000001', NULL, 119.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 7, 41, 'PEACFRPT0000002', 'ACC.P/ FREIDORA PHILIPS HD-9925 HOR', 'PEACFRPT0000002', NULL, 229.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 7, 5, 'PEASBI000000001', 'ASPIRADORA BIROTEC BR-33B8    ', 'PEASBI000000001', NULL, 289.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 7, 5, 'PEASBI000000002', 'ASPIRADORA BIROTEC BR-2201B12 ', 'PEASBI000000002', NULL, 389.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 7, 44, 'PEASSG000000002', 'ASPIRADORA SG VCC4190V3E/XZS', 'PEASSG000000002', NULL, 639.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 7, 44, 'PEASSG000000001', 'ASPIRADORA SG  VC-18M2120SB', 'PEASSG000000001', NULL, 839.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 7, 44, 'PEASSG000000000', 'ASPIRADORA SG  VC-21K5130VB', 'PEASSG000000000', NULL, 1219.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 7, 7, 'PEBABN000000001', 'BATIDORA BONATTI HM429-A', 'PEBABN000000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>300Wâ€‹<br></li><li>5 velocidades y pulsador Â«turboÂ»â€‹</li><li>Juego de varillas batidoras y amasadoras desmontablesâ€‹</li><li>Caja de almacenamientoâ€‹</li><li>Enchufe VDE</li></ul>', 199.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 7, 7, 'PEBABN000000002', 'BATIDORA BONATTI HM9106-GS', 'PEBABN000000002', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>300W.<br></li><li>6 velocidades y pulsador \"turbo\".</li><li>Juego de varillas batidoras y amasadoras desmontables.</li><li>BotÃ³n para expulsiÃ³n automÃ¡tica de varillas.</li><li>Enchufe VDE.</li></ul>', 229.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 7, 41, 'PEBAPT000000003', 'BATIDORA PHILIPS HR-3700/00   ', 'PEBAPT000000003', NULL, 229.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 7, 41, 'PEBAPT000000004', 'BATIDORA PHILIPS NEGRA HR-3705', 'PEBAPT000000004', NULL, 269.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 7, 32, 'PEBAMG000000005', 'BATIDORA MAGEFESA MGF-4239 300', 'PEBAMG000000005', NULL, 339.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 7, 41, 'PEBAPW000000001', 'BATIDORA PHILIPS/WALITA RI-700', 'PEBAPW000000001', NULL, 339.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 7, 32, 'PECAMG000000001', 'CAFETERA MAGEFESA MGF-3255', 'PECAMG000000001', NULL, 209.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 7, 32, 'PECAMG000000002', 'CAFETERA MAGEFESA MGF-3245', 'PECAMG000000002', NULL, 259.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 7, 32, 'PEEXMG000000002', 'EXPRIMIDOR MAGEFESA MGF-3445 4', 'PEEXMG000000002', NULL, 169.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 7, 32, 'PEEXMG000000004', 'EXPRIMIDOR MAGEFESA  MGF-3455', 'PEEXMG000000004', NULL, 329.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 7, 32, 'PEEJMG000000002', 'EXTRACTOR DE JUGO MGF-3550', 'PEEJMG000000002', NULL, 279.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 7, 32, 'PEEJMG000000001', 'EXTRACTOR DE JUGO MGF-3530', 'PEEJMG000000001', NULL, 449.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 7, 41, 'PEEJPT000000006', 'EXTRACTOR DE JUGO HR-1811 300W', 'PEEJPT000000006', NULL, 459.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 7, 32, 'PEEJMG000000003', 'EXTRACTOR DE JUGO MGF-3570', 'PEEJMG000000003', NULL, 449.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 7, 32, 'PEEJMG000000004', 'EXTRACTOR DE JUGO MGF-3580', 'PEEJMG000000004', NULL, 589.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 7, 41, 'PEEJPT000000007', 'EXTRACTOR DE JUGO PH HR1855/06', 'PEEJPT000000007', NULL, 629.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 7, 41, 'PEFRPT000000003', 'FREIDORA PHILIPS HD-9216/81 BLANCA', 'PEFRPT000000003', NULL, 1129.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 7, 41, 'PEFRPT000000004', 'FREIDORA PH HD-9218/70 NEGRA', 'PEFRPT000000004', NULL, 1259.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 7, 19, 'PEHAHT000000003', 'HERVIDOR DE AGUA HT KEC-3703', 'PEHAHT000000003', NULL, 149.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 7, 7, 'PEHABN000000001', 'HERVIDOR DE AGUA BN KES-1803', 'PEHABN000000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>2200 W.<br></li><li>Acero inoxidable.</li><li>Capacidad de 1.7L.</li><li>Indicador luminoso.</li><li>Enchufe VDE.</li></ul>', 199.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 7, 32, 'PEHAMG000000005', 'HERVIDOR DE AGUA MGF-3635', 'PEHAMG000000005', NULL, 199.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 7, 41, 'PEHAPT000000005', 'HERVIDOR DE AGUA PH HD-9306', 'PEHAPT000000005', NULL, 249.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 7, 32, 'PEHEMG000000005', 'HERVIDOR DE AGUA MGF-3622 1,8L', 'PEHEMG000000005', NULL, 249.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 7, 41, 'PEHAPT000000004', 'HERVIDOR PHILIPS HD-9350 INOX', 'PEHAPT000000004', NULL, 279.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 7, 7, 'PEHABN000000002', 'HERVIDOR DE AGUA BN KEC-4000T', 'PEHABN000000002', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>2200 W, acero inoxidable.<br></li><li>Capacidad de 1.7L.</li><li>Indicador luminoso.</li><li>Control de temperatura.&nbsp;</li><li>Perilla con detalle en inox.</li><li>3 funciones: Hervir, Calentar, Mantener calor.</li><li>Enchufe VDE.</li></ul>', 299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 7, 41, 'PEHAPT000000006', 'HERVIDOR DE AGUA PH HD-9351   ', 'PEHAPT000000006', NULL, 309.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 7, 41, 'PELIPT000000026', 'JARRA PARA LICUADORA HR-2130', 'PELIPT000000026', NULL, 119.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 7, 41, 'PELIPT000000006', 'LICUADORA PHILIPS HR-2100/00', 'PELIPT000000006', NULL, 259.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 7, 7, 'PELIBN000000003', 'LICUADORA BONATTI BL1019A-SA', 'PELIBN000000003', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>300w</li><li>2 vasos de plasticos de 600 ml.</li><li>Una velocidad.</li><li>Cuerpo de plÃ¡stico con decoraciÃ³n inox.</li><li>Cuchilla inox.</li><li>Enchufe VDE.</li></ul>', 269.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 7, 7, 'PELIBN000000001', 'LICUADORA BONATTI BL1056CB-CB', 'PELIBN000000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>500W.<br></li><li>Jarra de vidrio de 1.5L.</li><li>Accesorio picador.</li><li>8 velocidades (incluye pulso).</li><li>Enchufe VDE.</li></ul>', 289.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 7, 41, 'PELIPT000000007', 'LICUADORA PHILIPS HR-2102/00 1', 'PELIPT000000007', NULL, 299.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 7, 41, 'PELIPW000000007', 'LICUADORA PH/WALITA RI-2112/90', 'PELIPW000000007', NULL, 289.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 7, 41, 'PELIPT000000009', 'LICUADORA PHILIPS HR-2105/00 1', 'PELIPT000000009', NULL, 349.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 7, 41, 'PELIPT000000011', 'LICUADORA PHILIPS HR-2105/50 1', 'PELIPT000000011', NULL, 349.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 7, 41, 'PELIPT000000008', 'LICUADORA PHILIPS HR-2104/00 1', 'PELIPT000000008', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Filtro.<br></li><li>Chopper.</li><li>ProBlend 4.</li><li>Capacidad: 1.25LTS.</li></ul>', 349.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 7, 7, 'PELIBN000000002', 'LICUADORA BONATTI BL9000C-GS', 'PELIBN000000002', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>500w.<br></li><li>Jarra de vidrio de 1.75L.</li><li>5 velocidades y pulso.</li><li>Enchufe VDE.</li><li>Perilla con detalle en inox.</li></ul>', 369.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 7, 41, 'PELIPT000000012', 'LICUADORA PHILIPS HR-2106/90 1', 'PELIPT000000012', NULL, 369.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 7, 41, 'PELIPW000000008', 'LICUADORA PH/WALITA RI-2113/90', 'PELIPW000000008', NULL, 399.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 7, 41, 'PELIPT000000024', 'LICUADORA PHILIPS HR-2134/00 B', 'PELIPT000000024', NULL, 499.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 7, 41, 'PELIPT000000025', 'LICUADORA PH HR-2134/90 NEGRA', 'PELIPT000000025', NULL, 499.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 7, 41, 'PELIPT000000023', 'LICUADORA PHILIPS HR2135/90', 'PELIPT000000023', NULL, 559.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 7, 41, 'PELIPT000000021', 'LICUADORA PHILIPS HR2138/90', 'PELIPT000000021', NULL, 669.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 7, 41, 'PELIPT000000020', 'LICUADORA PHILIPS HR2139/80', 'PELIPT000000020', NULL, 759.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 7, 41, 'PELIPT000000022', 'LICUADORA PHILIPS  HR3652/00', 'PELIPT000000022', NULL, 1199.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 7, 7, 'PEMIBN000000001', 'MIXER BONATTI HB5008KN-GS', 'PEMIBN000000001', NULL, 189.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 7, 41, 'PEMIPT000000009', 'MIXER PHILIPS HR-1604/00 500W', 'PEMIPT000000009', NULL, 279.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 7, 7, 'PEMIBN000000002', 'MIXER BONATTI HB6020KA-GS', 'PEMIBN000000002', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>800W.<br></li><li>5 velocidades.</li><li>Varilla y cuchilla de acero inox.</li><li>Accesorios: Batidora, vaso, medidor de 700ml, picador, soporte de pared.</li></ul>', 349.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 7, 41, 'PEMIPT000000005', 'MIXER PHILIPS HR-1623/00 650W', 'PEMIPT000000005', NULL, 389.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 7, 41, 'PEMIPT000000006', 'MIXER PHILIPS HR-1627/00 650W', 'PEMIPT000000006', '<p>Batidora de mano ProMix de 650 W con funciÃ³n turbo</p><p><b style=\"color: inherit; font-family: inherit; font-size: 18px;\">Especificaciones tÃ©cnicas</b><br></p><ul><li>650 W, varilla de metal<br></li><li>ProMix</li><li>Vaso 0,5 L, picadora XL, batidora</li><li>2 velocidades con turbo</li></ul>', 439.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 7, 41, 'PEMUPT000000002', 'MULTIPROCESADOR PH HR-7627/00', 'PEMUPT000000002', '<p>MÃ¡xima variedad de recetas, mÃ­nimo esfuerzo</p><p></p><p>El procesador de alimentos Daily Collection de Philips tiene un diseÃ±o compacto que incluye un recipiente de 2,1 L y una variedad de accesorios de alto rendimiento. Nunca habÃ­a sido tan fÃ¡cil preparar comida casera y deliciosa.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Cantidad de discos para rebanar: 3<br></li><li>Cantidad de posiciones de velocidad: Turbo + 2</li><li>Funciones del producto:</li><li>Guardacable integrado</li><li>Soportes antideslizantes</li><li>Pulsos</li><li>AlimentaciÃ³n: 650&nbsp; W</li><li>Voltaje: 220-240&nbsp; V</li><li>Frecuencia: 50/60&nbsp; Hz</li><li>Capacidad del recipiente: 2&nbsp; L</li><li>Capacidad de la jarra: 1,75&nbsp; L</li></ul>', 469.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 7, 41, 'PEMUPT000000004', 'MULTIPROCESADOR PH HR-7631/50', 'PEMUPT000000004', '<h4 style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.5rem;\"><span style=\"font-weight: bolder;\">MÃ¡xima variedad, mÃ­nimo esfuerzo</span></h4><p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px;\">Con tecnologÃ­a PowerChop: para resultados superiores. El procesador de alimentos Philips 2 en 1 viene con un picador grande, una jarra de 1,5 l y 2 insertos de disco de acero inoxidable. Prepare fÃ¡cilmente comida casera para toda su familia.</span></p><p style=\"margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px;\"></p><h4 style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.5rem;\"><span style=\"font-weight: bolder;\">2 configuraciones de velocidad</span></h4><p style=\"margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px;\">Para obtener mejores resultados, use la configuraciÃ³n de baja velocidad (velocidad 1) para batir la nata, batir los huevos, crear bollerÃ­a y masa de pan. La velocidad mÃ¡s alta ajuste (velocidad 2) es adecuado para picar cebollas y carnes, mezclar sopas y batidos o triturar, rebanar, rallar o raspar las verduras.</p><h4 style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.5rem;\"><span style=\"font-weight: bolder;\">21+ funciones</span></h4><p style=\"margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px;\">Accesorios para realizar fÃ¡cilmente mÃ¡s de 21 funciones.</p><h4 style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: Poppins, sans-serif; line-height: 1.2; color: rgb(33, 37, 41); font-size: 1.5rem;\"><span style=\"font-weight: bolder;\">Acoplamientos y herramientas de ajuste de forma</span></h4><p style=\"margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 16px;\">Este procesador de alimentos de Philips estÃ¡ diseÃ±ado para muy fÃ¡cil de montar. Sus partes simplemente hacen click juntos gracias al inteligente diseÃ±o de ajuste de forma de los accesorios.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Capacidad (lt): 1.5</li><li>NÃºmero de velocidades: 10</li><li>Apto para lavavajillas: SÃ­</li><li>Material del recipiente: PlÃ¡stico</li><li>Material de las cuchillas: Acero inoxidable</li><li>Tipo: Procesadoras de alimentos</li><li>Material de la base: Polipropileno</li><li>Potencia: 600W</li><li>Pulsador: No</li><li>Peso: 3.097</li><li>Alto: 31.5</li><li>Ancho: 37.5</li><li>Profundidad: 31.5</li><li>NÃºmero de certificaciÃ³n: E-013-03-13770</li><li>Hecho en: Brasil</li><li>Temporada: Toda temporada</li></ul>', 559.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 7, 41, 'PEOPPT000000001', 'OLLA A PRESIÃƒâ€œN PH HD-2103/92', 'PEOPPT000000001', NULL, 699.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 7, 32, 'PEOAMG000000001', 'OLLA ARROCERA MGF-3724', 'PEOAMG000000001', NULL, 249.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 7, 32, 'PEPNMG000000001', 'PANINI MAGEFESA MGF-8110 PREST', 'PEPNMG000000001', NULL, 459.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 7, 32, 'PEPAMG000000001', 'PARRILLA MAGEFESA MGF-4620 130', 'PEPAMG000000001', NULL, 349.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 7, 41, 'PEPLPT000000012', 'PLANCHA PHILIPS GC-1426  1400', 'PEPLPT000000012', '<p>La vida es mucho mÃ¡s que solo tareas domÃ©sticas, asÃ­ que hay que hacerlas tan rÃ¡pido como se pueda. Gracias al vapor continuo, la capa antiadherente y el rociador de agua integrado, esta plancha se diseÃ±Ã³ para eliminar rÃ¡pidamente las arrugas de las prendas.</p><p>La funciÃ³n Calc-Clean permite extender la duraciÃ³n de su plancha por aÃ±os.</p><p>Mango cÃ³modo y base de apoyo estable para una mayor estabilidad.</p><p>Cuenta con vapor continuo de hasta 18 g/min para eliminar las arrugas rÃ¡pidamente.</p><p>El rociador produce un fino rociado que humedece los tejidos de forma pareja y facilita el planchado de las arrugas.</p><p>Cuenta con un gran orificio de llenado para evitar derrames accidentales de agua.</p><p>El gran control de temperatura le permite ajustar fÃ¡cilmente la temperatura de planchado ideal para cada tipo de tejidos a fin de que pueda alcanzar los resultados deseados de forma segura.</p><p>Potencia de hasta 1400 W para una salida de vapor alta y continua.<br></p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Salida de vapor continuo: 18&nbsp; gr./min.</li><li>EnergÃ­a: 1400&nbsp; W</li><li>Golpe de vapor: 65&nbsp; g</li><li>Rociador de agua: SÃ­</li><li>Nombre de la suela: Antiadherente</li><li>Capacidad de almacenamiento de agua: 160&nbsp; ml</li><li>Punta de vapor de precisiÃ³n: SÃ­</li><li>EliminaciÃ³n de los depÃ³sitos de cal y limpieza: Autolimpieza</li><li>Dimensiones del embalaje (An x Al x L): 27 x 14.5 x 11.4&nbsp; cm</li><li>Peso total con el embalaje: 0,95&nbsp; kg</li><li>Peso de la plancha: 0,78&nbsp; kg</li></ul>', 149.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 7, 41, 'PEPLPT000000015', 'PLANCHA PHILIPS GC-1432  2000W', 'PEPLPT000000015', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li><span style=\"font-family: Arial;\">FÃ¡cil de usar</span></li><li><span style=\"font-family: Arial;\">Capacidad de almacenamiento de agua 220&nbsp; ml</span></li><li><span style=\"font-family: Arial;\">Punta de vapor de precisiÃ³n</span></li><li><span style=\"font-family: Arial;\">Llenado en cualquier momento durante el uso</span></li><li><span style=\"font-family: Arial;\">Suela Antiadherente</span></li><li><span style=\"font-family: Arial;\">EliminaciÃ³n de arrugas rÃ¡pida superior</span></li><li><span style=\"font-family: Arial;\">Salida de vapor constante 25&nbsp; gr./min.</span></li><li><span style=\"font-family: Arial;\">EnergÃ­a 2000&nbsp; W</span></li></ul>', 189.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 7, 41, 'PEPLPT000000025', 'PLANCHA PHILIPS GC-1750/20', 'PEPLPT000000025', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Potencia: 2000w</li><li>Cable giratorio: SÃ­</li><li>Sistema de auto limpieza: No</li><li>Antiadherente: SÃ­</li></ul>', 209.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 7, 41, 'PEPLPT000000016', 'PLANCHA PHILIPS GC-1439 200W', 'PEPLPT000000016', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>2000 W<br></li><li>Antisarro<br></li><li>RÃ¡pida eliminaciÃ³n de las arrugas<br></li><li>Voltaje 240&nbsp; V<br></li><li>Rociador de agua<br></li><li>FÃ¡cil de usar<br></li><li>Suela cerÃ¡mica Antiadherente<br></li><li>Capacidad de almacenamiento de agua 220&nbsp; ml<br></li><li>Punta de vapor de precisiÃ³n<br></li><li>Llenado en cualquier momento durante el uso</li></ul>', 219.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 7, 41, 'PEPLPT000000021', 'PLANCHA PHILIPS GC-2145/20', 'PEPLPT000000021', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Color Azul<br></li><li>Base Antiadherente<br></li><li>AlimentaciÃ³n 2300 W<br></li><li>Almacenamiento de agua 270 ml<br></li><li>Salida de vapor constante 30 gr/min<br></li><li>Golpe de vapor 110 g<br></li><li>Longitud del cable 1.9 m</li></ul><h4></h4>', 279.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 7, 41, 'PEPLPT000000014', 'PLANCHA PHILIPS GC2990 2300W A', 'PEPLPT000000014', NULL, 379.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 7, 41, 'PEPLPT000000020', 'PLANCHA PHILIPS GC-2994/20', 'PEPLPT000000020', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>2400 W<br></li><li>40 g/min de vapor continuo</li><li>Salida de vapor de 150 g</li><li>Base SteamGlide</li><li>Sistema antigoteo</li><li>Capacidad del tanque de agua 320&nbsp; ml</li><li>Orificio de llenado extragrande</li><li>Apoyo para muÃ±eca mÃ¡s estable</li></ul><h4></h4>', 389.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 7, 41, 'PEPLPT000000019', 'PLANCHA PH VAPOR GC-514/46', 'PEPLPT000000019', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>1600 W, 32 g / min</li><li>3 configuraciones de vapor</li><li>DepÃ³sito desmontable de 1,6 l</li><li>Vapor continuo 32 g / min</li><li>Poder 1600 W</li><li>Listo para usar &lt;1 min</li><li>Vapor variable 3 niveles</li><li>Niveles de vapor variables</li><li>Vapor vertical</li><li>Voltaje 220-40 V</li><li>FÃ¡cil de usar</li><li>Seguro en todas las telas que se pueden planchar Incluso delicados como la seda</li><li>Capacidad del tanque de agua 1600 ml</li><li>Tanque de agua desmontable</li><li>Enchufe de alimentaciÃ³n integrado</li><li>Manguera de vapor de silicona</li></li></ul><h4></h4>', 679.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 7, 41, 'PEPLPT000000023', 'PLANCHA PHILIPS GC-3920/20', 'PEPLPT000000023', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>2500 W<br></li><li>Vapor continuo de 45 g/min</li><li>Golpe de vapor de 180 g</li><li>Suela SteamGlide Plus</li><li>Sistema antigoteo</li><li>DesconexiÃ³n automÃ¡tica</li><li>Capacidad de almacenamiento de agua 300&nbsp; ml</li><li>Orificio de llenado extragrande</li><li>Base de apoyo muy estable</li><li>Apta para el uso con agua del grifo</li><li>RÃ¡pida eliminaciÃ³n de las arrugas</li><li>Rociador de agua</li><li>Salida de vapor continuo 45 gr./min.</li><li>EnergÃ­a 2500 W</li><li>Golpe de vapor 180 g</li></ul><h4></h4>', 699.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 7, 41, 'PEPLPT000000022', 'PLANCHA PHILIPS GC-6833/30', 'PEPLPT000000022', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>PresiÃ³n mÃ¡xima de bomba de 5,5 bares<br></li><li>Golpe de vapor de hasta 280 g</li><li>DepÃ³sito de agua fijo de 1,3 l</li><li>Bloqueo de seguridad para transportar</li><li>Para todos los tejidos que se pueden planchar</li><li>Sin quemaduras</li><li>No requiere ajustes de temperatura</li><li>TecnologÃ­a OptimalTEMP</li><li>Generador de vapor ProVelocity</li><li>RÃ¡pida eliminaciÃ³n de las arrugas</li><li>Vapor constante Hasta 110 g/min</li><li>AlimentaciÃ³n 2400 W</li><li>PresiÃ³n MÃ¡ximo de 5,5 bares para la bomba</li><li>Listo para usar 2 min</li><li>Golpe de vapor Hasta 280 g</li><li>Voltaje 220-240 V</li></ul><h4></h4>', 1199.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 7, 7, 'PESABN000000001', 'SANDWICHERA BONATTI ST1003A-CB', 'PESABN000000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>700W<br></li><li>Capacidad: 2 Sandwiches</li><li>Negro con decoraciÃ³n inox</li><li>Placas antiadherentes</li><li>Doble Indicador Luminoso</li></ul><h4></h4>', 179.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 7, 32, 'PESAMG000000004', 'SANDWICHERA MAGEFESA MGF-3180 ', 'PESAMG000000004', NULL, 179.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 7, 41, 'PESAPT000000001', 'SANDWICHERA PHILIPS HD-2393/02', 'PESAPT000000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Dimensiones 23 Ã— 21 Ã— 9 cm<br></li><li>Color: Blanco</li><li>Capacidad 2 Sandwiches</li><li>Potencia 820 W</li><li>Voltaje 220 240 V</li><li>Longitud de cable 0.8 m</li><li>Placas Antiadherentes</li><li>Mango de tacto frÃ­o</li></ul>', 269.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 7, 32, 'PESAMG000000005', 'SANDWICHERA MAGEFESA MGF-3185 ', 'PESAMG000000005', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Potencia: 820 W.</li><li>Capacidad: 4 sandwiches</li><li>Asa de toque frÃ­o</li><li>Placas antiadherentes</li><li>Doble indicador luminoso</li></ul>', 289.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 7, 7, 'PETOBN000000001', 'TOSTADOR BONATTI TA01305-GS', 'PETOBN000000001', NULL, 149.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 7, 41, 'PETOPT000000004', 'TOSTADOR PHILIPS HD-2581/94 2P', 'PETOPT000000004', NULL, 229.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 7, 41, 'PEVAPT000000001', 'VAPORERA PHILIPS HD-9140/91 9L', 'PEVAPT000000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>10 L, 900 W<br></li><li>Temp. digital, tiempos preestablecidos</li><li>Inf. de aroma, fun. p/ manten. caliente</li><li>PlÃ¡stico con piezas de acero inoxidable</li><li>Accesorios incluidos</li><li>Recipiente extragrande para vapor 2,5L</li><li>Rejilla para huevos</li></ul>', 599.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 7, 32, 'PEWAMG0000001', 'WAFLERA MAGEFESA MGF-8211', 'PEWAMG0000001', NULL, 249.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 7, 32, 'PEWAMG0000002', 'WAFLERA MAGEFESA MGF-8212     ', 'PEWAMG0000002', NULL, 389.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 11, 53, 'LIAB000032', 'MOTO A BATERIA SX1628-G BLANCA', 'LIAB000032', NULL, 1399.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 11, 53, 'LIAB000033', 'MOTO A BATERIA SX1628-G AZUL', 'LIAB000033', NULL, 1399.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 11, 53, 'LIAB000034', 'MOTO A BATERIA SX1628-G ROJO', 'LIAB000034', NULL, 1399.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 2, 37, 'LBAAMI09FC000BC', 'AIRE MIDEA C-9000BTU F/C BLANC', 'LBAAMI09FC000BC', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Dimensiones: 24 Ã— 70 Ã— 54 cm<br></li><li>Color: Blanco</li><li>Capacidad: 9000 BTU</li><li>Modo: Frio / Calor</li><li>Potencia MÃ¡xima: 1100 W</li><li>Control Remoto</li></ul>', 2299.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 2, 42, 'LBAAPH18FC000EC', 'AIRE PHOENIX C-18000BTU F/C/ES', 'LBAAPH18FC000EC', NULL, 3559.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 2, 42, 'LBAAPH24FC000EC', 'AIRE PHOENIX C-24000BTU F/C/ES', 'LBAAPH24FC000EC', NULL, 4809.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 3, 14, 'LBCODK4H0000001', 'COCINA DAKO 4H LUNA BLANCA 300', 'LBCODK4H0000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Quemadores de Bronce<br></li><li>Tapa de Vidrio</li><li>Doble vidrio en el Horno</li><li>Puerta con amplio visor</li><li>Horno con amplia capacidad</li><li>Fibra de Vidrio en el Horno</li><li>Horno Easy Clean (fÃ¡cil limpieza)</li><li>Bandeja de Horno</li><li>Kit de conversiÃ³n a Gas Natural</li></ul>', 999.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 3, 14, 'LBCODK4H0000010', 'COCINA DAKO 4H LUNA SILVER 300', 'LBCODK4H0000010', NULL, 999.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 3, 14, 'LBCODK4H0000011', 'COCINA DAKO 4H DAKOTA INOX BRA', 'LBCODK4H0000011', '<h4 style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\"><b>Especificaciones tÃ©cnicas</b></h4><ul><li style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">Quemadores de bronce</li><li style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">Encendido elÃ©ctrico<br></li><li style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">4 hornallas<br></li><li style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">Doble vidrio en el horno<br></li><li style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">Maxi quemador central<br></li><li style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">Jalador del metal<br></li><li style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">Puerta con amplio visor<br></li><li style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">Horno con amplia capacidad<br></li><li style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">Luz en el horno<br></li><li style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">Aislamiento del horno con lana<br></li><li style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">Fibra del horno con vidrio<br></li><li style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">Fibra de vidrio en el horno<br></li><li style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\">Horno easy clean ( fÃ¡cil limpieza)</li></ul><h4 style=\"margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2;\"></h4>', 1369.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 3, 14, 'LBCODK5H0000001', 'COCINA DAKO 5H DAKOTA INOX.', 'LBCODK5H0000001', NULL, 2149.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 3, 14, 'LBCODK5H0000003', 'COCINA DAKO 5H SUPREME TITANIU', 'LBCODK5H0000003', '<h4><b>Especificaciones tÃ©cnicas</b></h4>          <ul><li>Mesa de vidrio</li><li>Rejilla fija</li><li>Encendido elÃ©ctrico</li><li>Doble vidrio en el horno</li><li>Maxi Quemador Central</li><li>Jalador de metal</li><li>Puerta con amplio visor</li><li>Horno con amplia capacidad</li><li>Luz en el Horno</li><li>Fibra de vidrio en el Horno</li><li>Horno easy clean (fÃ¡cil limpieza)</li><li>Bandeja de horno</li><li>Kit de conversiÃ³n a Gas Natural</li></li>\n            </ul>', 3799.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 3, 14, 'LBCODK5H0000002', 'COCINA DAKO 5H SUPREME INOX', 'LBCODK5H0000002', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>SUPREME TIMER GLASS 5H<br></li><li>Mesa de vidrio</li><li>Rejilla fija</li><li>Encendido elÃ©ctrico</li><li>Doble vidrio en el horno</li><li>Maxi Quemador Central</li><li>Jalador de metal</li><li>Puerta con amplio visor</li><li>Horno con amplia capacidad</li><li>Luz en el Horno</li><li>Fibra de vidrio en el Horno</li><li>Horno easy clean (fÃ¡cil limpieza)</li><li>Bandeja de horno</li><li>Kit de conversiÃ³n a Gas Natural</li></ul>', 3799.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 3, 31, 'LBCOMB6H0000001', 'COCINA MABE 6H INOX', 'LBCOMB6H0000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Modelo: INGENIOUS761PX1<br></li><li>Tipo: Cocinas</li><li>Tipo de energÃ­a: Gas licuado</li><li>Color: Inox</li><li>NÃºmero de hornillas: 6</li><li>Material de la cubierta: Acero</li><li>Incluye tapa: SÃ­</li><li>Material de la parrilla: Hierro fundido</li><li>Capacidad del horno: 109.83 lt</li><li>Encendido electrÃ³nico: SÃ­</li><li>Luz en el horno: SÃ­</li><li>Grill: SÃ­</li><li>Horno autolimpiante: No</li><li>Timer: SÃ­</li><li>Alto: 92.5 cm</li><li>Ancho: 77.5 cm</li><li>Profundidad: 60 cm</li><li>Peso: 46.84 kg</li><li>Cocina de 30\"<br></li><li>Capacidad del horno: 109.83 lt</li><li>Acabados de acero inoxidable</li><li>Encendido elÃ©ctrico en quemadores, horno y grill</li><li>6 quemadores: 2 sÃºper y 4 estÃ¡ndar</li></ul>', 4059.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 3, 8, 'LBCOBO4H0000004', 'COCINA BOSCH 4H A GAS PRO 449IX', 'LBCOBO4H0000004', NULL, 4299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 3, 8, 'LBCOBO5H0000004', 'COCINA BOSCH 5H PRO549IX A GAS', 'LBCOBO5H0000004', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Parrillas de mesa Cast iron<br></li><li>Encendido automÃ¡tico en hornillas y elÃ©ctrico en horno</li><li>Timer digital con cortagas</li><li>Grill a gas con sistema de seguridad</li><li>Termostato con sistema de seguridad</li><li>Quemador PRO</li><li>Parrilla autodeslizante</li><li>Churrasquera</li><li>Calientaplatos</li><li>Luz en el horno</li><li>2 entradas de gas</li><li>Doble vidrio en la puerta del horno</li><li>OpciÃ³n de convertir tu cocina a gas natural. Este servicio tiene un costo adicional el cual se debe coordinar con nuestra Red de Servicios Autorizados.</li></ul>', 5499.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 3, 8, 'LBCOBO5H0000003', 'COCINA BOSCH 5H PRO567IX A GAS', 'LBCOBO5H0000003', NULL, 6999.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 3, 8, 'LBCEB0600000002', 'COCINA BOSCH ENC.PKK631B18E', 'LBCEB0600000002', '<p>Control TouchSelect: selecciona de la zona de cocciÃ³n y ajusta fÃ¡cilmente la potencia deseada.</p><p>Seguridad para niÃ±os: bloquea el panel de mandos para impedir cambios accidentales de configuraciÃ³n.</p><p></p><p>ProgramaciÃ³n del tiempo de cocciÃ³n: apaga la zona de cocciÃ³n seleccionada una vez transcurrido el tiempo establecido.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Fuente energÃ©tica: ElÃ©ctrica<br></li><li>Control e indicadores: Delante, EasyTouch (Timer)</li><li>Dispositivo de seguridad:&nbsp;AutodesconexiÃ³n de seguridad, seguro para niÃ±os</li><li>CaracterÃ­sticas: 17 niveles de potencia, Control TouchSelect</li><li>Consumo promedio de la placa: 188,0</li><li>Color superficie superior: negro<br></li><li>Tipo de construcciÃ³n: Integrable</li><li>NÃºmero de zonas elÃ©ctricas: 0</li><li>NÃºmero de zonas elÃ©ctricas de cocciÃ³n: 3</li><li>Tipo de marco: Bisel delantero</li><li>NÃºmero de quemadores de gas: 0</li><li>NÃºmero de zonas halÃ³genas: 0</li><li>Tipo de instalaciÃ³n: Integrable</li><li>NÃºmero de posiciones que se pueden usar al mismo tiempo: 3</li><li>NÃºmero de zonas vitrocerÃ¡micas: 3</li><li>NÃºmero de zonas elÃ©ctricas de calentamiento: 0</li><li>Dimensiones aparato (alto, ancho, fondo (sin incluir la puerta)) (mm): 45 x 592 x 522<br></li><li>Peso neto (kg): 7,760</li><li>UbicaciÃ³n del primer elemento calefactor: delante izquierda<br></li><li>Medidas del segundo elemento calentador: 275 ; 210<br></li><li>UbicaciÃ³n del segundo elemento calefactor: Zona de coc. central izquierda</li><li>Potencia del segundo elemento calentador: 2 ; 2.7</li><li>Tipo de segundo elemento calefactor: Calefactor de radiaciÃ³n</li><li>Consumo de energÃ­a de segundo elemento calefactor: 185,0</li><li>UbicaciÃ³n del tercer elemento calefactor: detrÃ¡s izquierda<br></li><li>UbicaciÃ³n del cuarto elemento calefactor: atrÃ¡s centro</li><li>Medidas del quinto elemento calentador: 145<br></li><li>UbicaciÃ³n del quinto elemento calefactor: Zona de coc tras dcha</li><li>Potencia del quinto elemento calentador: 1.2</li><li>Consumo de energÃ­a del quinto elemento calefactor: 190,2</li><li>UbicaciÃ³n del sexto elemento calefactor: Zona de coc centr dcha<br></li><li>Dimension of 7th heating element (mm): 180<br></li><li>Location of 7th heating element: Zona de cocc delantera derecha</li><li>Power of 7th heating element (kW): 2</li><li>Type of 7th heating element: Calefactor de radiaciÃ³n</li><li>Consumo de energÃ­a de septimo elemento calefactor: 188,8</li><li>Location of 8th heating element: delante centro / central<br></li><li>Location of 9th heating element: Zona de cocc central delantera<br></li><li>Indicador de encendido: SÃ­<br></li><li>Indicador de calor residual: Separado</li><li>Dispositivo de seguridad: AutodesconexiÃ³n de seguridad, seguro para niÃ±os</li><li>Interruptor principal de encendido/apagado: SÃ­</li><li>Longitud del cable de alimentaciÃ³n elÃ©ctrica (cm): 100<br></li><li>Fuente energÃ©tica: ElÃ©ctrica</li><li>Frecuencia (Hz): 60; 50</li></ul>', 2799.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 3, 8, 'LBCEBO600000001', 'COCINA BOSCH ENC 60CM-PPP6A6B2', 'LBCEBO600000001', NULL, 3319.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 3, 8, 'LBCEBO750000002', 'COCINA BOSCH ENCIM. PPQ7A6B90', 'LBCEBO750000002', '<p>FlameSelect: para un ajuste preciso de la llama en nueve niveles definidos. Quemador wok: para cocinar con mucha potencia, hasta 4,0 KW. Parillas individuales de hierro fundido: comodidad y limpieza perfecta. Cristal templado negro de alta resistencia.â€¢ 4 quemadores de gas y 1 quemador gigante Wok de dos circuitos<br></p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Delante derecha: quemador semi-rÃ¡pido hasta 1.75 kW<br></li><li>DetrÃ¡s derecha: quemador rÃ¡pido hasta 3 kW</li><li>Centro: quemador Wok de 4 kW</li><li>Delante izquierda: quemador auxiliar hasta 1 kW</li><li>DetrÃ¡s izquierda: quemador semi-rÃ¡pido hasta 1.75 kW</li><li>FlameSelect: regulaciÃ³n precisa de la llama con 9 niveles de potencia</li><li>Mandos ergonÃ³micos para un manejo sencillo y preciso</li><li>Sistema de seguridad Gas Stop</li><li>Autoencendido integrado en el mando</li><li>Parrillas de hierro fundido individuales</li><li>Preparada para gas natural</li><li>Inyectores opcionales para gas butano incluidos</li><li>Posibilidad de instalaciÃ³n sobre encimera o enrasada</li></ul>', 4499.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 3, 8, 'LBCEBO900000001', 'COCINA BOSCH ENC. PCR9A5B90', 'LBCEBO900000001', '<p>9 niveles de potencia con la mÃ¡xima precisiÃ³n en las placas de gas. Alcanzando y manteniendo la temperatura y potencia necesaria encada instante y momento clave del proceso de cocciÃ³n. Una llama hecha a tu medida. Los mejores resultados de cocciÃ³n garantizados.</p><p></p><p>Los quemadores de gas que incorporan las placas de gas Bosch permiten cocinar con una o dos llamas, con ambas o solo con la interna, en funciÃ³n de las necesidades del momento. Por ello, podrÃ¡s desde llevar a ebulliciÃ³n en tan solo un instante con mÃ¡xima potencia, asÃ­ como derretir el chocolate con la mÃ­nima potencia. Nuestras placas son potentes y delicadas al mismo tiempo.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>FlameSelect: para un ajuste preciso de la llama en 9niveles definidos.<br></li><li>Mandos ergonÃ³micos para un manejo sencillo y preciso.<br></li><li>Quemador Wok con regulaciÃ³n dual de la llama: permite regular con gran precisiÃ³n la potencia hasta 5 kW.<br></li><li>Elegante diseÃ±o en acero inoxidable<br></li><li>Parrillas de hierro fundido continuas: estabilidad mÃ¡xima</li><li>Mandos ergonÃ³micos para un manejo sencillo y preciso<br></li><li>Autoencendido integrado en el mando<br></li><li>Parrillas de hierro fundido<br></li><li>Sistema de seguridad Gas Stop<br></li><li>Preparada para gas natural<br></li><li>Frecuencia (Hz): 50; 60 Hz<br></li><li>ConexiÃ³n de gas: a la derecha, detrÃ¡s<br></li><li>Potencia de conexiÃ³n de gas (W): 12.500<br></li></ul><h4><b>5 quemadores de gas</b></h4><ul><li>DetrÃ¡s izquierda: quemador semi-rÃ¡pido hasta 1.75 kW<br></li><li style=\"\">DetrÃ¡s derecha: quemador rÃ¡pido hasta 3 kW<br></li><li style=\"\">Delante izquierda: quemador auxiliar hasta 1 kW<br></li><li style=\"\">Delante derecha: quemador semi-rÃ¡pido hasta 1.75 kW</li></ul><h4><b>Dimensiones:</b></h4><ul><li>Alto: 4.5 cm</li><li>Ancho: 91.5 cm</li><li>Largo: 52 cm</li></ul>', 4799.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 3, 8, 'LBCEBO800000001', 'COCINA ENC. BOSCH PXV875DC1E 8', 'LBCEBO800000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Control DirectSelect Premium con 17 niveles de cocciÃ³n<br></li><li>Control de temperatura del aceite con 5 niveles</li><li>1 zona doble Flex InducciÃ³n de 21 x 40 cm</li><li>1 zona de 24 cm</li><li>1 zona de 18 cm</li><li>1 zona de 15 cm</li><li>4 zonas de inducciÃ³n con funciÃ³n Sprint y funciÃ³n Sprint SartÃ©n:</li><li>FunciÃ³n Power Move con 3 potencias preseleccionadas</li><li>FunciÃ³n Mantener Caliente</li><li>FunciÃ³n Inicio AutomÃ¡tico</li><li>FunciÃ³n Memoria</li><li>FunciÃ³n Clean: bloqueo temporal del control</li><li>FunciÃ³n Mi Consumo</li><li>CronÃ³metro</li><li>ProgramaciÃ³n de tiempo de cocciÃ³n para cada zona y avisador acÃºstico</li><li>DesconexiÃ³n automÃ¡tica de seguridad de la placa</li><li>Indicador de calor residual dual (H/h)</li><li>Bloqueo de seguridad para niÃ±os automÃ¡tico o manual</li><li>Potencia total de la placa limitable por el usuario</li></ul>', 7999.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 3, 8, 'LBCEBO900000002', 'COCINA BOSCH ENC. PRS9A6D70', 'LBCEBO900000002', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>FlameSelect: regulaciÃ³n precisa de la llama con 9 niveles de potencia<br></li><li>Display de 7 segmentos LED con indicaciÃ³n de potencia y de calor residual (H/h)</li><li>4 quemadores de gas y 1 quemador Wok con regulaciÃ³n dual de la llama:</li><li>Izquierda: quemador Wok hasta 6 kW</li><li>DetrÃ¡s derecha: quemador rÃ¡pido hasta 2.8 kW</li><li>Centro detrÃ¡s: zona auxiliar de hasta 1.1 kW</li><li>Centro delante: 1 zona estandÃ¡r hasta 1.9 kW</li><li>Delante derecha: quemador semi-rÃ¡pido hasta 1.9 kW</li><li>Mandos ergonÃ³micos para un manejo sencillo y preciso</li><li>Sistema de seguridad Gas Stop</li><li>Autoencendido integrado en el mando</li><li>Parrillas continuas de hierro fundido: diseÃ±o Profesional</li><li>Parrillas lavables en el lavavajillas</li><li>Preparada para gas natural</li><li>Inyectores opcionales para gas butano incluidos</li></ul>', 8999.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 3, 8, 'LBEGBO600000001', 'EXTRA. GRASA BOSCH DUL63CC55', 'LBEGBO600000001', NULL, 1799.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 3, 8, 'LBEGBO900000005', 'EXTRA. GRASA BOSCH DWP96BC50  ', 'LBEGBO900000005', NULL, 2809.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 3, 8, 'LBEGBO750000001', 'EXTRA. GRASA BOSCH DWB77IM50', 'LBEGBO750000001', NULL, 4299.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 19, 31, 'LBFRMA000000002', 'FRIGOBAR MABE 113 LT BLA', 'LBFRMA000000002', NULL, 1339.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 3, 32, 'LBHOMG000000003', 'HORNO MAGEFESA MGF-3861 20 LTS', 'LBHOMG000000003', NULL, 469.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 3, 32, 'LBHOMG000004', 'HORNO MAGEFESA MGF-3863 30L', 'LBHOMG000004', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Potencia: 1.500 W.<br></li><li>Capacidad: 30 L.</li><li>Puerta de doble cristal</li><li>Temporizador hasta 60 minutos</li><li>Rejilla de acero inoxidable</li><li>Temperatura: de 90 a 230ÂºC</li></ul>', 589.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 3, 8, 'LBHOBO000000002', 'HORNO BOSCH HBF113BRO', 'LBHOBO000000002', NULL, 3799.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `products` (`id`, `subcategory_id`, `brand_id`, `sku`, `name`, `slug`, `description`, `price`, `offer_price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(483, 3, 8, 'LBHOBO000000004', 'HORNO BOSCH HBA512BR0 60CM 3D', 'LBHOBO000000004', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Horno multifunciÃ³n<br></li><li>MultifunciÃ³n (7 funciones):<br></li><li>Sistema de calentamiento 3D Profesional, Calor superior e inferior, Grill con aire caliente, Grill de amplia superficie, FunciÃ³n pizza, Calor inferior, Aire caliente suave<br></li><li>Apertura abatible de la puerta<br></li><li>Display LED con luz roja<br></li><li>Cuadro de mandos: mandos giratorios<br></li><li>IluminaciÃ³n halÃ³gena en el interior del horno<br></li><li>Temporizador electrÃ³nico de paro de cocciÃ³n<br></li><li>FunciÃ³n Sprint de precalentamiento rÃ¡pido<br></li><li>Capacidad: 71 litros<br></li><li>Clase de eficiencia energÃ©tica A (dentro del rango de A+++ a D)<br></li><li>Accesorios: Bandeja profunda, Parrilla profesional.<br></li><li>Consultar y respetar las dimensiones de encastre facilitadas en el manual de instalaciÃ³n</li><li>MÃ©todo de cocciÃ³n: FunciÃ³n Pizza, Grill de amplia superficie, Hornear, SÃ³lera, Turbogrill, Turbohornear 3D<br></li><li>Prestaciones diferenciales: Bloqueo de seguridad niÃ±os, Precalentamiento rÃ¡pido<br></li><li>Clase de eficiencia energÃ©tica: A<br></li><li>Color del frontal: Acero inoxidable<br></li><li>Tipo de construcciÃ³n: Integrable<br></li><li>Material del panel de mandos: Metallic<br></li><li>Tipo de control - 1Âª cavidad: Mando giratorio, redondo<br></li><li>Material de la puerta: vidrio<br></li><li>Fuente energÃ©tica: ElÃ©ctrica</li></ul><h4><b>Horno</b></h4><ul><li>TamaÃ±o bandeja grande: 1.290 cmÂ²</li><li>MÃ¡xima temperatura turbo hornea (Â°C): 275 Â°C</li><li>MÃ¡xima temperatura hornear (Â°C): 275 Â°C</li><li>Medidas del producto: Grande</li><li>Temperatura puerta: 50 Â°C</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Consumos</span></h4><ul><li>Clase de eficiencia energÃ©tica: A<br></li><li>Consumo de energÃ­a por ciclo convencional (2010/30/EC): 0,97 kWh/cycle<br></li><li>Energy consumption per cycle forced air convection (2010/30/EC): 0,81 kWh/cycle<br></li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">ConexiÃ³n</span></h4><ul><li>Longitud del cable de alimentaciÃ³n elÃ©ctrica (cm): 120 cm<br></li><li>Intensidad corriente elÃ©ctrica (A): 16 A<br></li><li>Tipo de clavija: Schuko con conexiÃ³n a tierra<br></li><li>TensiÃ³n (V): 220-240 V<br></li><li>Color: Inox<br></li><li>Modelo: HBA512BR0<br></li><li>Marca: Bosch</li></ul><p><b>Medidas:</b> 59.5 x 59.4 x 54.8 cm<br></p>', 4499.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 3, 8, 'LBHOBO000000003', 'HORNO BOSCH HBA5370S0 60CM 3D', 'LBHOBO000000003', NULL, 5009.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 13, 44, 'LBLASGCS8000001', 'LAVADORA SG 8KG WA-80H4200SW C', 'LBLASGCS8000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Peso 420.00 kg<br></li><li>Dimensiones 67 Ã— 61 Ã— 100 cm</li><li>Color Blanco</li><li>Tipo de carga Superior</li><li>Capacidad 8 Kg</li><li>Marca Samsung</li><li>Filtro MÃ¡gico</li><li>Tipo de panel: Digital</li><li>Pulsador: Wobble</li></ul>', 2599.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 13, 44, 'LBLASGCS9000001', 'LAVADORA SG 9KG WA-90H4400SW C', 'LBLASGCS9000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Peso: 31.00 kg<br></li><li>Dimensiones: 56 Ã— 54 Ã— 85 cm</li><li>Color: Blanco</li><li>Tipo de carga: Superior</li><li>Capacidad: 9 Kg</li><li>Marca: Samsung</li><li>Filtro MÃ¡gico<span style=\"white-space:pre\">	</span></li><li>Tipo de panel: Digital</li><li>Pulsador: Wobble</li><li>Niveles de Agua: 5</li></ul>', 2499.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 13, 44, 'LBLASGCF0000001', 'LAVADORA SG 8,5KG WW85J4273JW/', 'LBLASGCF0000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Peso: 61.00 kg<br></li><li>Dimensiones: 60 Ã— 55 Ã— 85 cm</li><li>Color: Blanco</li><li>Tipo de carga: Frontal</li><li>Capacidad: 8.5 Kg</li><li>Marca: Samsung</li><li>Tipo de Motor: Digital Inverter</li><li>Tipo de panel: Digital</li><li>Super Speed</li></ul>', 3699.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 13, 37, 'LBLAMICS1000001', 'LAVADORA MIDEA 10K CS MLTI10D5', 'LBLAMICS1000001', NULL, 2989.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 13, 44, 'LBLASGCS1100001', 'LAVADORA SG 11KG WA-11J5712LG', 'LBLASGCS1100001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>TecnologÃ­a Wobble: La innovadora tecnologÃ­a Wobble de la lavadora Samsung protege la ropa delicada del daÃ±o producido por la fricciÃ³n, ofreciendo a su vez un desempeÃ±o de lavado excelente. La exclusiva estructura de los pulsadores Wobble genera un flujo de lavado dinÃ¡mico y multidireccional que reduce enredos y nudos, y limpia a fondo la ropa gracias a su mejorada capacidad de eliminaciÃ³n de manchas.<br></li><li>TecnologÃ­a Eco Bubbleâ„¢+ Bubble Soak: La lavadora Samsung tiene una puerta de vidrio templado que dura mucho mÃ¡s y permite ver el interior sin problemas. Se diseÃ±Ã³ para soportar una gran presiÃ³n y tambiÃ©n resiste daÃ±os y rayones.</li><li>Activ Dualwash: El sistema de lavado Activ Dualwash consiste en una bandeja de pre lavado manual para prendas delicadas y para tratar aquellas manchas mÃ¡s complicadas.</li></ul>', 3449.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 13, 44, 'LBLASGCS1300001', 'LAVADORA SG 13KG WA-13F5L2UDY', 'LBLASGCS1300001', NULL, 3699.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 13, 44, 'LBLASGCF0000003', 'LAVADORA SG 8,5KG WW85J4273JS/', 'LBLASGCF0000003', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Este lavarropas Samsung WW85J4273JW cuenta con una capacidad de 8,5 litros, garantizando un mejor lavado y cuidado de todas tus prendas, hasta las mÃ¡s delicadas. El tambor diamante que posee protege a todas aquellas prendas delicadas, con la tecnologÃ­a Eco Drum Clean y programa Quick Wash. La puerta transparente proporciona un aspecto elegante y estÃ©ticamente agradable que se adapta perfectamente a cualquier casa moderna. El sistema automÃ¡tico de supervisiÃ³n de errores Smart Check detecta y diagnostica problemas y proporciona soluciones fÃ¡ciles de problemas a travÃ©s de una aplicaciÃ³n de smartphone, ahorrÃ¡ndote tiempo y evitando los costos innecesarios.<br></li><li>Lavarropas Samsung WW85J4273JW con capacidad de 8,5 litros, posee sistema de carga frontal, sistema automÃ¡tico, display digital, bloqueo para niÃ±os y velocidad mÃ¡xima de centrifugado de 1200 rpm.</li><li>Motor Digital Inverter.</li><li>Tambor Diamantado.</li><li>Smart Check.</li></ul>', 3999.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 13, 44, 'LBLASGCS1700001', 'LAVADORA SG 17KG WA17J6730LV/B', 'LBLASGCS1700001', NULL, 4799.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 13, 44, 'LBLASGCF1000003', 'LAVADORA SG 10,5KG WW10J6410CX', 'LBLASGCF1000003', NULL, 5399.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, 13, 44, 'LBLASGCS1900001', 'LAVADORA SG 19KG WA-19F7L6DDB/', 'LBLASGCS1900001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Samsung<br></li><li>TecnologÃ­a Wobble</li><li>Digital Inverter</li><li>Magic Dispenser</li><li>Carga: Superior</li><li>Capacidad MÃ¡xima: 19 Kg</li><li>Panel Digital: SÃ­</li><li>NÂ° de Programas: 12</li><li>CentrÃ­fuga: SÃ­</li><li>Color: Gris</li><li>Filtro para Pelusas: SÃ­</li><li>Sistema de Seguridad: SÃ­</li><li>Peso: 48 Kg</li><li>Ancho: 63.7 cm</li><li>Alto: 105 cm</li></ul>', 5299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, 13, 13, 'LBLADWCS1800001', 'LAVADORA DAEWOO 18KG DWF-RP180', 'LBLADWCS1800001', NULL, 5449.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, 13, 44, 'LBLASGCF0000002', 'LAVADORA SG 8,5KG WD85M4453JW/BO', 'LBLASGCF0000002', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Peso: 71.00 kg<br></li><li>Dimensiones: 60 Ã— 60 Ã— 85 cm</li><li>Color: Blanco</li><li>Tipo de carga: Frontal</li><li>Capacidad: 8.5 Kg</li><li>Marca: Samsung</li><li>Tipo de Motor: Digital Inverter</li><li>Tipo de panel: Digital</li><li>Tipo de producto: Lavadoras/Secadoras</li><li>Niveles de Agua: 1</li></ul>', 4799.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, 13, 44, 'LBLSSGCR0000003', 'LAV./SEC SG 10.5/6 WD10K6410OX', 'LBLSSGCR0000003', NULL, 6499.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, 7, 44, 'LBMISG230000001', 'MICROONDA SG 23LT MS-23K3513AK', 'LBMISG230000001', NULL, 899.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, 7, 29, 'LBMILG250000002', 'MICROONDA LG 25LT MS-2536GIS', 'LBMILG250000002', NULL, 1089.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, 7, 44, 'LBMISG280000001', 'MICROONDA SG 28LT MG-28F303TAS', 'LBMISG280000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Peso: 16.00 kg<br></li><li>Dimensiones: 43 Ã— 51 Ã— 29 cm</li><li>Color: Plateado</li><li>Capacidad: 28 Lt</li><li>Potencia: 1000 W</li><li>Potencia del Grill: 1300 W</li><li>Tipo de Luz: LED</li><li>Bloqueo para niÃ±os<span style=\"white-space:pre\">	</span></li><li>Reloj en pantalla<span style=\"white-space:pre\">	</span></li><li>Panel de control TÃ¡ctil</li></ul>', 1229.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 7, 29, 'LBMILG250000001', 'MICROONDA LG 25LT MH-6536 C/GR', 'LBMILG250000001', NULL, 1139.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 7, 29, 'LBMILG250000003', 'MICROONDA LG 25LT MH-6596', 'LBMILG250000003', NULL, 1219.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 7, 44, 'LBMISG400000001', 'MICROONDA SG 40LT MG-402MADXBB', 'LBMISG400000001', NULL, 1499.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, 7, 29, 'LBMILG400000002', 'MICROONDA LG 40LT MH-8236GIR', 'LBMILG400000002', NULL, 1459.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 7, 32, 'LBRAMG000000006', 'RADIADOR 9 ELEMENTOS MGF-1391', 'LBRAMG000000006', NULL, 629.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 19, 44, 'LBRESG200000002', 'REFRIGERADOR SG RT-22FARADSP/Z', 'LBRESG200000002', NULL, 3799.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 19, 44, 'LBRESG300000012', 'REFRIGERADOR SG RT-38K5992SL/Z', 'LBRESG300000012', '<h4><b>Frescura y humedad Ã³ptima en todo el refrigerador</b></h4><p>Solo Twin Cooling Plusâ„¢ genera un ambiente favorable para preservar la frescura de tus alimentos con un 70% de humedad en el refrigerador, en comparaciÃ³n el 30% en un TMF convencional. AsÃ­, mantiene los alimentos frescos por mÃ¡s tiempo sin que se sequen.</p><h4><b>Alimentos deliciosos y libres de malos olores</b></h4><p>El sistema Twin Cooling Plusâ„¢ enfrÃ­a los compartimientos de forma separada para prevenir que los malos olores se propaguen del refrigerador al freezer. De este modo, la comida congelada mantiene su sabor original.</p><h4><b>5 Modos de ConversiÃ³n</b></h4><p>Lo Ãºltimo en almacenamiento flexible. Convierte sin problemas tu freezer en refrigerador para almacenar toda la comida fresca que necesites para las distintas estaciones u ocasiones especiales. O bien, puedes elegir el modo off*, dependiendo de las especificaciones.</p><h4><b>Hace hielo y enfrÃ­a bebidas</b></h4><p>De funcionamiento rÃ¡pido e intenso. Con el simple toque de un botÃ³n, Power Cool enfrÃ­a alimentos y bebidas rÃ¡pidamente, mientras que Power Freeze es ideal para congelar o endurecer comidas preparadas y para hacer mÃ¡s hielo.</p><h4><b>Funciona por mÃ¡s tiempo haciendo menos ruido y consumiendo menos energÃ­a</b></h4><p>La tecnologÃ­a Digital Inverter ajusta la velocidad del compresor en forma automÃ¡tica para asÃ­ atender a la demanda de uso. Utiliza menos energÃ­a, reduce el ruido al mÃ­nimo y el desgaste. De esta manera, se logra un rendimiento de larga duraciÃ³n.</p><h4><b>Mira todo el interior con claridad</b></h4><h4></h4><p>La iluminaciÃ³n LED de alta eficiencia ocupa menos espacio, produce menos calor y consume menos energÃ­a que las luces convencionales. Situadas en la parte superior y a los lados del refrigerador, cada rincÃ³n queda perfecta y hermosamente iluminado, asegurando una mejor visibilidad.</p><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Peso: 72 kg<br></li><li>Dimensiones: 66 Ã— 67 Ã— 178 cm</li><li>Color: Silver</li><li>Tipo de refrigerador: Top Mount</li><li>Capacidad: 368 Lt</li><li>Marca: Samsung</li><li>Luz: LED</li><li>Panel Digital<span style=\"white-space:pre\">	</span></li><li>Sistema de enfriamiento: No Frost</li><li>Dispensador de agua</li></ul>', 6929.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 19, 44, 'LBRESG300000011', 'REFRIGERADOR SG RT-38K5992BS/Z', 'LBRESG300000011', NULL, 7219.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(509, 19, 36, 'LBEXMF0000001', 'EXHIBIDOR METALFRIO 406LT VB40', 'LBEXMF0000001', NULL, 7599.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, 19, 44, 'LBRESG500000005', 'REFRIGERADOR SG RT-53K6541SL 5', 'LBRESG500000005', '<h4><b>Frescura y humedad Ã³ptima en todo el refrigerador</b></h4><p>Solo Twin Cooling Plusâ„¢ genera un ambiente favorable para preservar la frescura de tus alimentos con un 70% de humedad en el refrigerador, en comparaciÃ³n el 30% en un TMF convencional. AsÃ­, mantiene los alimentos frescos por mÃ¡s tiempo sin que se sequen.</p><h4><b>Alimentos deliciosos y libres de malos olores</b></h4><p>El sistema Twin Cooling Plusâ„¢ enfrÃ­a los compartimientos de forma separada para prevenir que los malos olores se propaguen del refrigerador al freezer. De este modo, la comida congelada mantiene su sabor original.</p><h4><b>5 Modos de ConversiÃ³n</b></h4><p>Lo Ãºltimo en almacenamiento flexible. Convierte sin problemas tu freezer en refrigerador para almacenar toda la comida fresca que necesites para las distintas estaciones u ocasiones especiales. O bien, puedes elegir el modo off, dependiendo de las especificaciones.</p><h4><b>Hace hielo y enfrÃ­a bebidas</b></h4><p>De funcionamiento rÃ¡pido e intenso. Con el simple toque de un botÃ³n, Power Cool enfrÃ­a alimentos y bebidas rÃ¡pidamente, mientras que Power Freeze es ideal para congelar o endurecer comidas preparadas y para hacer mÃ¡s hielo.</p><h4><b>Funciona por mÃ¡s tiempo haciendo menos ruido y consumiendo menos energÃ­a</b></h4><p>La tecnologÃ­a Digital Inverter ajusta la velocidad del compresor en forma automÃ¡tica para asÃ­ atender a la demanda de uso. Utiliza menos energÃ­a, reduce el ruido al mÃ­nimo y el desgaste. De esta manera, se logra un rendimiento de larga duraciÃ³n.</p><h4><b>Mira todo el interior con claridad</b></h4><h4></h4><p>La iluminaciÃ³n LED de alta eficiencia ocupa menos espacio, produce menos calor y consume menos energÃ­a que las luces convencionales. Situadas en la parte superior y a los lados del refrigerador, cada rincÃ³n queda perfecta y hermosamente iluminado, asegurando una mejor visibilidad.</p><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Peso: 86.00 kg<br></li><li>Dimensiones: 77 Ã— 79 Ã— 188 cm</li><li>Color: Acero Inoxidable</li><li>Tipo de refrigerador: Top Mount</li><li>Capacidad: 526 Lt</li><li>Marca: Samsung</li><li>Luz: LED</li><li>Sistema de enfriamiento: No Frost</li><li>Dispensador de agua</li></ul>', 8899.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, 19, 44, 'LBRESG500000006', 'REFRIGERADOR SG RT-53K6541BS 5', 'LBRESG500000006', '<h4><b>Frescura y humedad Ã³ptima en todo el refrigerador</b></h4><p>Solo Twin Cooling Plusâ„¢ genera un ambiente favorable para preservar la frescura de tus alimentos con un 70% de humedad en el refrigerador, en comparaciÃ³n el 30% en un TMF convencional. AsÃ­, mantiene los alimentos frescos por mÃ¡s tiempo sin que se sequen.</p><h4><b>Alimentos deliciosos y libres de malos olores</b></h4><p>El sistema Twin Cooling Plusâ„¢ enfrÃ­a los compartimientos de forma separada para prevenir que los malos olores se propaguen del refrigerador al freezer. De este modo, la comida congelada mantiene su sabor original.</p><h4><b>5 Modos de ConversiÃ³n</b></h4><p>Lo Ãºltimo en almacenamiento flexible. Convierte sin problemas tu freezer en refrigerador para almacenar toda la comida fresca que necesites para las distintas estaciones u ocasiones especiales. O bien, puedes elegir el modo off, dependiendo de las especificaciones.</p><h4><b>Hace hielo y enfrÃ­a bebidas</b></h4><p>De funcionamiento rÃ¡pido e intenso. Con el simple toque de un botÃ³n, Power Cool enfrÃ­a alimentos y bebidas rÃ¡pidamente, mientras que Power Freeze es ideal para congelar o endurecer comidas preparadas y para hacer mÃ¡s hielo.</p><h4><b>Funciona por mÃ¡s tiempo haciendo menos ruido y consumiendo menos energÃ­a</b></h4><p>La tecnologÃ­a Digital Inverter ajusta la velocidad del compresor en forma automÃ¡tica para asÃ­ atender a la demanda de uso. Utiliza menos energÃ­a, reduce el ruido al mÃ­nimo y el desgaste. De esta manera, se logra un rendimiento de larga duraciÃ³n.</p><h4><b>Mira todo el interior con claridad</b></h4><h4></h4><p>La iluminaciÃ³n LED de alta eficiencia ocupa menos espacio, produce menos calor y consume menos energÃ­a que las luces convencionales. Situadas en la parte superior y a los lados del refrigerador, cada rincÃ³n queda perfecta y hermosamente iluminado, asegurando una mejor visibilidad</p><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>MARCA: SAMSUNG<br></li><li>Dimensiones: 77 Ã— 79 Ã— 185 cm</li><li>Color: Negro</li><li>Tipo de refrigerador: Congelador Superior</li><li>Capacidad: 526 Lt</li><li>Marca: Samsung</li><li>Luz: LED</li><li>Pantalla LED<span style=\"white-space:pre\">	</span></li><li>Sistema de enfriamiento: No Frost</li><li>Dispensador de agua</li></ul>', 9199.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, 19, 44, 'LBRESG600000001', 'REFRIGERADOR SG RS-65R5411M9/Z', 'LBRESG600000001', '<p>La gran capacidad del cajÃ³n de verduras ofrece el espacio suficiente para almacenar una gran capacidad de frescas frutas y vegetales. Gracias a su gran tamaÃ±o puedes guardar todas las verduras en el mismo lugar y no ocuparÃ¡n un lugar adicional en tu cocina.<br></p><p>MantÃ©n el interior del refrigerador libre de malos olores, conserva el sabor y el aroma original de la comida por mÃ¡s tiempo. El filtro desodorizante elimina los olores fuertes, a medida que el aire pasa continuamente a travÃ©s de los filtros de carbÃ³n activados, sin necesidad de recurrir a otras soluciones para evitar malos olores.</p><p>La bandeja para vinos estÃ¡ diseÃ±ada especialmente para guardar de forma segura tus botellas, sin que rueden y son fÃ¡ciles de alcanzar. Puedes instalarla tanto en los compartimientos del refrigerador superiores, como en los inferiores. Ahora puedes disfrutar fÃ¡cilmente de una copa de vino deliciosamente frÃ­o cuando quieras.</p><p>Dale a tu cocina un estilo moderno e integrado. Su elegante diseÃ±o de encimera sin costuras encajarÃ¡ perfectamente con las dimensiones de tus electrodomÃ©sticos y gabinetes existentes para crear un interior de cocina armonioso. TambiÃ©n tiene hermosas puertas planas con manillas empotradas que no sobresalen.<br></p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Capacidad total bruta (Litros): 660 â„“</li><li>Capacidad congelador bruta (Litros): 240 â„“</li><li>Capacidad total del refrigerador (Litros): 420 â„“</li><li>Capacidad total neta (Litros): 617 â„“</li><li>Capacidad congelador neta (Litros): 202 â„“</li><li>Capacidad refrigerador neta (Litros): 415 â„“</li><li>Ancho neto (mm): 912 mm</li><li>Altura neta con bisagra (mm): 1780 mm</li><li>Altura neta sin bisagra (mm): 1744 mm</li><li>Profundidad neta con manilla de puerta (mm): 716 mm</li><li>Profundidad neta sin manilla de puerta (mm): 716 mm</li><li>Profundidad Neta sin puerta (mm): 610 mm</li><li>Ancho con embalaje (mm): 974 mm</li><li>Alto con embalaje (mm): 1909 mm</li><li>Profundidad con embalaje (mm): 776 mm</li><li>Peso neto (kg): 107 kg</li><li>Peso Bruto (kg): 114 kg</li><li>FunciÃ³n Power Cool: SÃ­</li><li>FunciÃ³n Power Freeze: SÃ­</li><li>Tipo de Enfriamiento: All Around Cooling</li><li>Cantidad total de bandejas: 3 EA</li><li>Estante para vinos: SÃ­</li><li>Cantidad de compartimientos en la puerta: 5 EA<br></li><li>Bandeja para huevos: SÃ­</li><li>IluminaciÃ³n Interior LED: SÃ­</li><li>Cantidad total de bandejas :4 EA</li><li>Cantidad de compartimientos en la puerta: 2 EA</li><li>Hielera: FÃ¡brica de hielo manual</li><li>IluminaciÃ³n Interior LED: SÃ­</li><li>Cantidad de cajones: 2 EA</li><li>Alarma en la puerta: SÃ­</li><li>Refrigerante: R600a</li><li>Tipo de display: Internal</li><li>Manilla de la puerta: Recesiva</li><li>Color: Urban Silver</li><li>Tipo de Dispensador: I&amp;W Disp.</li><li>Consumo de EnergÃ­a: 465 kWh/year</li><li>Modo Vacaciones: SÃ­</li><li>Grado de EnergÃ­a: A+</li></ul>', 11999.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 2, 32, 'LBTVMG000000003', 'TERMOVENTILADOR MGF-1290 2000W', 'LBTVMG000000003', NULL, 319.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 2, 1, 'LBVEAM000000001', 'VENTILADOR AM DE PIE 15740 NEG', 'LBVEAM000000001', NULL, 299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 2, 1, 'LBVEAM000000002', 'VENTILADOR AM DE PIE 15732-R P', 'LBVEAM000000002', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Air Monster<br></li><li>Ventilador de pie&nbsp;</li><li>18 pulgadas control remoto oscilante Pedestal Stand Fan con 3 ajustes de velocidad</li><li>Altura ajustable</li><li>InclinaciÃ³n ajustable</li></ul>', 349.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 2, 1, 'LBVEAM000000003', 'VENTILADOR AM DE MESA 15880-R ', 'LBVEAM000000003', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Air Monster<br></li><li>3 velocidades</li><li>130 Watts de potencia</li><li>Para mesa o escritorio</li></ul>', 349.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, 2, 33, 'LBVEMAN00000002', 'VENTILADOR MAN DE PIEA VP00018', 'LBVEMAN00000002', NULL, 429.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, 18, 24, 'CPACIN000000011', 'ALETAS P/NADAR PEQUEÃ‘AS 55936 AMARI', 'CPACIN000000011', NULL, 59.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 18, 24, 'CPACIN000000013', 'ALETAS P/NADAR MED 55917 AMARI', 'CPACIN000000013', NULL, 69.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 18, 24, 'CPFLIN000000013', 'FLOTADOR P/BRAZOS FROZEN 56640', 'CPFLIN000000013', NULL, 19.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, 18, 24, 'CPFLIN000000016', 'FLOTADOR P/BEBE 58221 LEON', 'CPFLIN000000016', NULL, 29.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, 18, 24, 'CPFLIN000000018', 'FLOTADOR P/BEBE 58221 TUCAN', 'CPFLIN000000018', NULL, 29.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(523, 18, 24, 'CPFLIN000000019', 'FLOTADOR P/BEBE 58221 COCODRIL', 'CPFLIN000000019', NULL, 29.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, 18, 24, 'CPFLIN000000004', 'FLOTADOR 56266 PIÃƒâ€˜A REDONDO', 'CPFLIN000000004', NULL, 39.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, 18, 24, 'CPFLIN000000003', 'FLOTADOR 56265 DONUT ROSADO', 'CPFLIN000000003', NULL, 49.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, 18, 24, 'CPACIN000000019', 'CESTO INFLABLE 58504', 'CPACIN000000019', NULL, 49.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, 18, 24, 'CPFLIN000000008', 'FLOTADOR P/BEBE 56584 RANA C/S', 'CPFLIN000000008', NULL, 59.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 18, 24, 'CPFLIN000000010', 'FLOTADOR P/BEBE 56588 ROJO', 'CPFLIN000000010', NULL, 59.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 18, 24, 'CPFLIN000000001', 'FLOTADOR 56262 DONUT CHOCOLATE', 'CPFLIN000000001', NULL, 69.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, 18, 24, 'CPFLIN000000002', 'FLOTADOR 56263 DONUT CON CHISP', 'CPFLIN000000002', NULL, 69.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, 18, 24, 'CPFLIN000000009', 'FLOTADOR P/BEBE 56587 AMARILLO', 'CPFLIN000000009', NULL, 69.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 18, 24, 'CPFLIN000000012', 'FLOTADOR P/BEBE 56590 PALMERA', 'CPFLIN000000012', NULL, 69.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, 18, 24, 'CPFLIN000000006', 'FLOTADOR 56512 CARAMELO', 'CPFLIN000000006', NULL, 79.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 18, 24, 'CPFLIN000000021', 'FLOTADOR 58766 PALETA', 'CPFLIN000000021', NULL, 89.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 18, 24, 'CPFLIN000000014', 'FLOTADOR P/BEBE CARS 57516', 'CPFLIN000000014', NULL, 129.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 18, 24, 'CPFLIN000000015', 'FLOTADOR 57561 UNICORNIO', 'CPFLIN000000015', NULL, 139.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, 18, 24, 'CPFLIN000000020', 'FLOTADOR 58761 PIÃ‘A', 'CPFLIN000000020', NULL, 169.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, 18, 24, 'CPFLIN000000005', 'FLOTADOR 56288 FLAMENGO', 'CPFLIN000000005', NULL, 389.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, 18, 24, 'CPACIN000000005', 'GAFAS P/ NADAR 55602 LILAS', 'CPACIN000000005', NULL, 19.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 18, 24, 'CPACIN000000006', 'GAFAS P/ NADAR 55602 AMARILLAS', 'CPACIN000000006', NULL, 19.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, 18, 24, 'CPACIN000000007', 'GAFAS P/NADAR 55602 TURQUESA', 'CPACIN000000007', NULL, 19.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 18, 24, 'CPACIN000000008', 'GAFAS DEPORTIVAS 55682 NEGRAS', 'CPACIN000000008', NULL, 39.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(543, 18, 24, 'CPACIN000000009', 'GAFAS DEPORTIVAS 55682 LILAS', 'CPACIN000000009', NULL, 39.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 18, 24, 'CPACIN000000010', 'GAFAS DEPORTIVAS 55682 AZULES', 'CPACIN000000010', NULL, 39.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 18, 24, 'CPACIN000000015', 'GORRO P/NADAR 55991 NEGRO', 'CPACIN000000015', NULL, 39.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 18, 24, 'CPACIN000000017', 'GORRO P/NADAR 55991 AZUL', 'CPACIN000000017', NULL, 39.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 18, 24, 'CPACIN000000016', 'GORRO P/NADAR 55991 BLANCO', 'CPACIN000000016', NULL, 39.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 18, 24, 'CPACIN000000001', 'MUÃƒâ€˜ECO INFLABLE DELFIN 44669', 'CPACIN000000001', NULL, 39.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, 18, 24, 'CPACIN000000018', 'NEVERA INFLABLE 56822', 'CPACIN000000018', NULL, 109.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, 18, 24, 'CPACIN000000004', 'PELOTAS MULTICOLORES 49602', 'CPACIN000000004', NULL, 129.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, 18, 24, 'CPPSIN000000006', 'PISCINA INFLABLE 48674 C/PELOT', 'CPPSIN000000006', NULL, 119.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, 18, 24, 'CPPSIN000000007', 'PISCINA INFLABLE 56441 4 ANILL', 'CPPSIN000000007', NULL, 149.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, 18, 24, 'CPPSIN000000001', 'PISCINA INFLABLE 28101        ', 'CPPSIN000000001', NULL, 209.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, 18, 24, 'CPPSIN000000002', 'PISCINA INFLABLE CARS 28103', 'CPPSIN000000002', NULL, 399.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 18, 24, 'CPPSIN000000003', 'PISCINA INFLABLE ACUARIO 28126', 'CPPSIN000000003', NULL, 779.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, 18, 24, 'CPPSIN000000004', 'PISCINA RECTANGULAR 28270', 'CPPSIN000000004', NULL, 789.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 18, 24, 'CPPSIN000000005', 'PISCINA RECTANGULAR 28272', 'CPPSIN000000005', NULL, 1039.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 18, 24, 'CPPSIN000000008', 'PISCINA RIGIDA 56452 OCEANO', 'CPPSIN000000008', NULL, 139.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 1, 20, 'LGAUHVB00000004', 'AUDIFONOS HAVIT H9991BT NEGRO / BLUETOOTH / ALTAVOZ / CHAT DE VOZ', 'LGAUHVB00000004', NULL, 269.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 1, 20, 'LGAUHVS00000001', 'AUDIFONOS HAVIT H991BT SILVER/ BLUETOOTH / ALTAVOZ', 'LGAUHVS00000001', '<p>Auriculares Bluetooth deportivos V4.2 HV-H991BT. Estos auriculares inalÃ¡mbricos estÃ¡n diseÃ±ados especialmente para la prÃ¡ctica deportiva ya que cuentan con un diseÃ±o ergonÃ³mico y ligero que se ajusta perfectamente a la oreja. Admite conexiÃ³n de telÃ©fono dual. Cuenta con calidad de sonido de alta fidelidad gracias a la Ãºltima tecnologÃ­a Bluetooth v4.2. Permite hasta 7 horas hablando y 260 horas de tiempo de espera.<br>El aviso de voz y el habla de banda ancha HD son compatibles, por lo tanto, puede chatear por voz con sus amigos en cualquier momento y en cualquier lugar.<br>Especialmente diseÃ±ado para entusiastas de los deportes, el compaÃ±ero de mÃºsica perfecto para el running.</p><h4></h4><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Havit<br></li><li>Color: Negro</li><li>Altavoz: 12mm</li><li>Frecuencia: 20 Hz</li></ul>', 269.60, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 1, 20, 'LGAUHVB00000009', 'AUDIFONOS HAVIT I62N NEGRO / BLUETOOTH / CHAT DE VOZ / REDUCCION DEL RUIDO', 'LGAUHVB00000009', NULL, 679.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, 1, 20, 'LGAUHVB00000018', 'AUDIFONOS HAVIT I60 NEGRO / BLUETOOTH / CHAT DE VOZ / REDUCCION DEL RUIDO', 'LGAUHVB00000018', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Havit<br></li><li>Estilo: Cinta para cabeza, Diadema</li><li>ComunicaciÃ³n: InalÃ¡mbrico</li><li>Conectores: USB</li><li>Uso: TelÃ©fono mÃ³vil</li><li>FunciÃ³n: Bluetooth</li><li>TamaÃ±o del producto: L176 * W190 * H82mm</li><li>Peso neto: 225g</li><li>InalÃ¡mbrico rango de trabajo: 10 m (sin obstÃ¡culos)</li><li>Altavoz de sensibilidad: 93Â±3dB a 1 kHz; 1 MW</li><li>Del apoyo: HFPâ€¦ A2DPâ€¦ AVRCP</li></ul>', 199.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, 1, 20, 'LGAUHVB00000008', 'AUDIFONOS HAVIT HV-H2582BT NEGRO / BLUETOOTH', 'LGAUHVB00000008', '<p>Auriculares bluetooth serie h rojo HV-H2582BT. Estos auriculares cuentan con gran calidad de sonido y no precisan de cables gracias a su conexiÃ³n bluetooth. AdemÃ¡s, su diseÃ±o ergonÃ³mico hace que sean muy cÃ³modos para el usuario.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Havit<br></li><li>VersiÃ³n de Bluetooth: V4.2 + EDR</li><li>TamaÃ±o del producto: 16 * 7.5 * 17 cm</li><li>Peso neto: 145g</li><li>Rango de trabajo inalÃ¡mbrico: 10 M (sin obstÃ¡culos)</li><li>Ponente: Î¦40</li><li>Sensibilidad del altavoz: 108 Â± 3dB (S.P.L at1KHZ)</li><li>Perfiles compatibles: AVRCP1.4, A2DP1.2, HFP1.6, HSP1.2</li><li>Impedancia: 32Î©</li><li>Frecuencia del altavoz: 20-20KHz</li><li>Voltaje / corriente de entrada: DC 5V / 500mA</li><li>BaterÃ­a: baterÃ­a recargable del Li-polÃ­mero de 3.7V 380mAH</li><li>Tiempo de reproducciÃ³n: hasta 17H</li><li>Tiempo de conversaciÃ³n: 8-12H</li><li>Tiempo de carga: sobre 3H</li><li>Tiempo de espera: 500-600H</li><li>Material: PU + ABS, proceso de decoraciÃ³n de metal galvanizado</li></ul>', 229.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, 1, 20, 'LGAUHVR00000002', 'AUDIFONOS HAVIT HV-H2582BT ROJO / BLUETOOTH', 'LGAUHVR00000002', NULL, 229.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(565, 1, 20, 'LGAUHVR00000001', 'AUDIFONOS HAVIT H2587BT ROJO / BLUETOOTH / CON LUCES LED', 'LGAUHVR00000001', '<p>Auriculares bluetooth V4.2 TF AUX retroiluminado con luces LED. Cuenta con diseÃ±o de auricular completamente cerrado, lo que mejora el aislamiento acÃºstico. Cuenta con luz LED.</p><p>MultifunciÃ³n: funciÃ³n Bluetooth, funciÃ³n de tarjeta micro SD incorporada y toma AUX de 3,5 mm.</p><p>Almohadillas de algodÃ³n con espuma de memoria ultra suave con banda de sujeciÃ³n ajustable y resistente que garantiza un uso cÃ³modo durante mucho tiempo.</p><p></p><p>La combinaciÃ³n de altavoces dinÃ¡micos de 40mm con Bluetooth V4.2 de alta gama garantiza audio de alta fidelidad.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Havit<br></li><li>VersiÃ³n bluetooth: V4.2</li><li>Dimensiones: 190*175*80mm</li><li>Peso: 160g</li><li>Rango de funcionamiento:10mï¼ˆsin obstÃ¡culosï¼‰</li><li>Altavoz: Î¦40mm</li><li>Respuesta de frecuencia: 20Hz-20kHz</li><li>Capacidad de la baterÃ­a: 3.7V/300mAh</li><li>Tiempo de uso de la palabra: 5.5H</li><li>Tiempo de reproducciÃ³n: 6H</li><li>Tiempo de carga: 2h</li></ul>', 249.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, 1, 20, 'LMPIHVG00000013', 'PARLANTE HAVIT M29 GRIS / ALTAVOZ PORTATIL / BLUETOOTH', 'LMPIHVG00000013', NULL, 359.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, 1, 20, 'LMPIHVBL0000019', 'PARLANTE HAVIT HV-SK579BT AZUL / INALAMBRICO/ ALTAVOZ BLUETOOTH', 'LMPIHVBL0000019', NULL, 299.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, 1, 20, 'LMPIHVG00000019', 'PARLANTE HAVIT HV-SK579BT GRIS / INALAMBRICO/ ALTAVOZ BLUETOOTH', 'LMPIHVG00000019', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Havit<br></li><li>TamaÃ±o: 192x92x55 mm.</li><li>Sonido de alta calidad, 5W.x2</li><li>Peso: 500 g</li><li>Rango de funcionamiento: 8 a 10 mts sin obstÃ¡culos</li><li>EstÃ¡ndar Bluetooth v4.2</li><li>Respuesta de transmisiÃ³n: 100 hz</li><li>Tiempo de carga: 4 hs</li><li>Tiempo de reproducciÃ³n: 9 a 10 hs</li><li>Capacidad de la BaterÃ­a: 1000mah</li><li>Entrada de audio: USD - 3.5 mm - Micro Sd y Auxiliar</li><li>Altavoz y MicrÃ³fono.</li></ul>', 299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 22, 44, 'LMTVSG550000019', 'TELEVISOR SG 55\" UN55NU7095GXZ', 'LMTVSG550000019', NULL, 5029.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 16, 53, 'ACMEHRBO0000001', 'BOTELLA C/VASO HEREVIN S-126', 'ACMEHRBO0000001', NULL, 39.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 16, 53, 'ACMEPAMB0000003', 'BOWL VIDRIO 6PZS PASABAHCE 53896 MERMELADE', 'ACMEPAMB0000003', NULL, 59.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 16, 53, 'ACMEHREX0000001', 'EXPRIMIDOR HEREVIN 131426-061 VIDRIO PALMERAS', 'ACMEHREX0000001', NULL, 19.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 16, 53, 'ACMEPAFU0000001', 'FUENTE VIDRIO PASABAHCE BORCAM  59204 P/HORNO RECTANGULAR', 'ACMEPAFU0000001', NULL, 69.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 16, 53, 'ACMEPAFU0000004', 'FUENTE VIDRIO PASABAHCE BORCAM 59024 CUADRADA P/HORNO', 'ACMEPAFU0000004', NULL, 49.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 16, 53, 'ACMEPAFU0000002', 'FUENTE VIDRIO PASABAHCE BORCAM 59064 OVAL P/HORNO', 'ACMEPAFU0000002', NULL, 49.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 16, 53, 'ACMEPAFU0000003', 'FUENTE VIDRIO PASABAHCE BORCAM 59104 P/HORNO', 'ACMEPAFU0000003', NULL, 39.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, 16, 53, 'ACMEPAHI0000002', 'HIELERA PASABAHCE 53588 KARAT VIDRIO', 'ACMEPAHI0000002', NULL, 39.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, 16, 53, 'ACMEPAJA0000002', 'JARRA C/TAPA PASABAHCE 43763 2L CITY POP', 'ACMEPAJA0000002', NULL, 49.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, 16, 53, 'ACMEHRJA0000001', 'JARRA HEREVIN S-123 DENIZ', 'ACMEHRJA0000001', NULL, 29.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(580, 16, 53, 'ACMEJV000000004', 'JGO DE VAJILLA 16PZS JY-LY1601 HOJAS', 'ACMEJV000000004', NULL, 179.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, 16, 53, 'ACMEPAMB0000001', 'MINI BOWL VIDRIO 12PZS PASABAHCE 53932', 'ACMEPAMB0000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Pasabahce&nbsp;<br></li><li>Juego de 6 piezas de vidrio</li><li>Maravilloso como cuenco para ingredientes de cocina, especias, salsas, mermeladas, salsas</li><li>Altura: 3,6 cm. Capacidad: 85 ml. Apto para lavavajillas y microondas</li><li>DiÃ¡metro de 8,2 cm (superior), diÃ¡metro de 4,4 cm (inferior), apilable</li></ul>', 79.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 16, 53, 'ACMEPAMB0000002', 'MINI BOWL VIDRIO 6PZS PASABAHCE 53912', 'ACMEPAMB0000002', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Pasabahce&nbsp;<br></li><li>Unidades por set: 6 piezas</li><li>Medidas: 9.6 cm</li><li>Forma: Irregular</li><li>Color: Transparente</li><li>Material: Vidrio</li></ul>', 39.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, 16, 53, 'ACMEMUG00000001', 'MUG CAJA 25022 CERAMICA NEGRO', 'ACMEMUG00000001', NULL, 9.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 16, 53, 'ACMEMUG00000002', 'MUG COLORES 24200 CERAMICA', 'ACMEMUG00000002', NULL, 9.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, 16, 53, 'ACMEMUG00000003', 'MUG COLORES MATE 24643 CERAMICA', 'ACMEMUG00000003', NULL, 9.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, 16, 53, 'ACMEMUG00000004', 'MUG TERMICO 21864 COLORES', 'ACMEMUG00000004', NULL, 35.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, 16, 53, 'ACMEPASTP000001', 'TAZA C/PLATILLO 6PZS PASABAHCE 95756 VIDRIO AQUA NEW', 'ACMEPASTP000001', NULL, 79.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, 16, 53, 'ACMETT000000001', 'TOMATODO 25582 COLORES PLASTICO', 'ACMETT000000001', NULL, 15.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, 16, 53, 'ACMETT000000003', 'TOMATODO 25583 COLORES PLASTICO', 'ACMETT000000003', NULL, 19.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, 16, 53, 'ACMEHRTT0000001', 'TOMATODO HEREVIN 161557 450ML ACRILICO', 'ACMEHRTT0000001', NULL, 25.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(591, 16, 53, 'ACMEPAVA0000006', 'VASOS  CERVECERO 2PZS PASABAHCE 55129 PUB VIDRIO', 'ACMEPAVA0000006', NULL, 49.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(592, 16, 53, 'ACMEVA000000003', 'VASOS 6PZS KTY5006 AGUA', 'ACMEVA000000003', NULL, 39.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, 16, 53, 'ACMEVA000000002', 'VASOS CERVEZA 6 PZS BW-39 OHAMA 405ML', 'ACMEVA000000002', NULL, 49.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, 16, 53, 'ACMEPAVA0000007', 'VASOS SHOTS 12PZS PASABAHCE 52174 BOSTON VIDRIO', 'ACMEPAVA0000007', NULL, 69.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, 16, 53, 'ACMEVA000000004', 'VASOS WISKY 6PZS 21093', 'ACMEVA000000004', NULL, 35.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, 16, 53, 'ACMEPAVA0000008', 'VASOS WISKY 6PZS PASABAHCE 52885 KARAT 300ML', 'ACMEPAVA0000008', NULL, 49.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, 1, 20, 'LMPIHVB00000018', 'PARLANTE HAVIT M9 NEGRO / INALAMBRICO / ALTAVOZ BLUETOOTH', 'LMPIHVB00000018', '<p>HAVIT M9 altavoz Bluetooth inalÃ¡mbrico portÃ¡til con varios modos de iluminaciÃ³n LED, graves mejorado, calidad de sonido surround de 360 Â°<br>Sonido Surround de 360 Â°<br>2 x 5 W altavoz integrado, que ofrece un sonido de alta calidad, alto, claro y graves mejorados. El exclusivo diseÃ±o de sonido mantiene un equilibrio entre<br>Disfrute de la mÃ¡s alta y baja, garantiza elegante musical. Con micrÃ³fono incorporado, llamada de manos libres es soportado.<br>Luces de LED multicolor + Varios modos de iluminaciÃ³n<br>Varios modos de iluminaciÃ³n opcionales incluyen Ãºnico modo de color: rojo, verde, azul; changing-color mode-flash rÃ¡pidamente, respiraciÃ³n suave, la decoloraciÃ³n;<br>Modo de luz y de emergencia (permanece en blanco). La luz bailando con la mÃºsica.<br>Banco de energÃ­a de emergencia para<br>Built-in 4000 mAh baterÃ­a recargable de litio, salida de 5 V y 2 a para cargar su tablet y telÃ©fono inteligente al jugar mÃºsica.<br>DiseÃ±o elegante, fÃ¡cil de usar<br>Carcasa de aluminio resistente y vaca hand-belt hacen que sea durable y de moda. Con el diseÃ±o tough-key, es fÃ¡cil de controlar y ajustar la<br>Modo de IluminaciÃ³n y el brillo con un ligero toque.<br>Siempre con usted<br>Ultra-portable FÃ¡cil de agarrar y go, perfecto para camping, viaje por carretera, picnics, fiestas y en la sala de estar, recÃ¡mara, patio, etc.).<br>(* Nota: No es resistente al agua).</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Havit<br></li><li>VersiÃ³n de Bluetooth: V2.1 + EDR</li><li>Perfil soportados: HSP, HFP, A2DP, AVRCP</li><li>Rango de funcionamiento inalÃ¡mbrico: 10 m/33ft.</li><li>Voltaje de entrada: DC 5 V/1000 mAh</li><li>Salida de altavoz: 5 W * 2</li><li>DiÃ¡metro del altavoz: 40 mm * 2</li><li>Dimensiones: 225 * 92 mm</li><li>Peso neto: 660 g</li><li>Material: ABS + aleaciÃ³n de aluminio</li><li>BaterÃ­a: 4000 mAh</li><li>Perfil soportados: HSP/HFP/A2DP/AVRCP</li><li>Chat de voz: Soportado</li><li>Tiempo de reproducciÃ³n: 6 â€“ 8 horas</li><li>Tiempo de carga: 6 horas</li><li>Paquete incluye:</li><li>1 x altavoz Bluetooth</li><li>1 x cable de carga micro USB</li><li>1 x Manual de usuario</li></ul>', 539.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, 12, 47, 'LMBSSY000000004', 'BARRA DE SONIDO SONY HT-S100F', 'LMBSSY000000004', '<p>La configuraciÃ³n de dos bocinas ofrece sonido Surround frontal desde una unidad compacta<br>Bocina Bass Reflex, proporciona graves impactantes sin perder detalle ni claridad, perfecta para disfrutar programas de TV y mÃºsica<br>La conexiÃ³n a tu televisiÃ³n nunca ha sido tan fÃ¡cil; con HDMI ARC, un solo cable ofrece una conexiÃ³n sencilla para todo el audio de la TV; puedes controlar ambos con un solo control remoto<br>TecnologÃ­a de sonido Virtual Surround te pone en el centro de las pelÃ­culas que te encantan emulando el sonido surround de cine<br>Disfruta de toda tu mÃºsica, conÃ©ctala a travÃ©s de USB para reproducir tus canciones favoritas o transmitir sin cables a travÃ©s de Bluetooth</p><h4></h4><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: SONY<br></li><li>Potencia RMS (Watts): 120W</li><li>Canales de audio: 2</li><li>Bluetooth: SÃ­</li><li>Puertos USB: 1</li><li>Puertos HDMI: 1</li><li>Sonido surround: SÃ­ (Sforce)</li><li>Audio digital: SÃ­</li><li>Control remoto: SÃ­</li><li>Color: Negro</li><li>Alto (cm): 90</li><li>Ancho (cm): 6.4</li><li>Largo (cm): 8.8</li><li>Peso (kg): 3.5</li><li>Incluye: Control remoto, BaterÃ­as para el control remoto, Cable Ã³ptico, Cable de CA.</li></ul>', 1349.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, 9, 47, 'LMESSY000000025', 'EQUIPO DE SONIDO SONY MHC-M40D                     ', 'LMESSY000000025', '<p>El MHC-M40D es un sistema de sonido creado para aquellos organizadores de fiestas que quieran mostrar con orgullo sus listas de reproducciÃ³n. Disfruta de un sonido de alta calidad, transmisiÃ³n de audio inalÃ¡mbrica y conectividad sin complicaciones.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Modelo<span style=\"white-space:pre\">	</span>: MHC-M40D</li><li>Luz: AZUL</li><li>Tipo: Minicomponente</li><li>Color: Negro</li><li>Potencia: 2900w</li><li>USB</li><li>CD<span style=\"white-space:pre\">	</span></li><li>Entrada de MicrÃ³fono<span style=\"white-space:pre\">	</span></li><li>Entrada Guitarra: 6 f/Guitarra disponible para un puerto: MIC 2/GUITAR</li><li>Entrada de audio: analÃ³gico</li><li>Bluetooth: Si</li></ul>', 3019.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, 9, 47, 'LMESSY000000021', 'EQUIPO DE SONIDO SONY MHC-M60D                  ', 'LMESSY000000021', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Funciones: DVD / USB1 / FM / CD/ ENTRADA DE AUDIO1/ TV/ BLUETOOTHÂ®</li></ul><h4><b>Entradas y salidas</b></h4><ul><li>Entrada de audio analÃ³gico</li><li>Salida HDMI</li><li>Puerto USB</li><li>Salida de parlante frontal 2,0</li><li>Entrada de micrÃ³fono2 (6Ï†/guitarra disponible para un puerto: mic 2/guitar)</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Funciones de sonido</span></h4><ul><li>Ecualizador de mÃºsica<br></li><li>Ecualizador latino (reguetÃ³n/poplatino/salsa/ranchera/cumbia/bachata/vallenato)</li><li>Football mode</li><li>Ecualizador de video pelÃ­cula/juego/serie/noticia</li><li>Modo fiesta</li><li>FunciÃ³n de enfatizaciÃ³n de graves mega bass</li><li>Mejora de sonido dsee (auto)</li><li>Clearaudio+</li><li>Surround dolbyÂ® digital</li><li>S-force front surround</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Sonido para entretenimiento</span></h4><ul><li>Flanger<br></li><li>Isolator</li><li>Pan sÃ­ (solo por aplicaciones)</li><li>Wah sÃ­ (solo por aplicaciones)</li><li>Muestreador sÃ­ (araÃ±azos y mÃ¡s)</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Efecto de iluminaciÃ³n</span></h4><ul><li>Luz de parlante sÃ­ (multicolor)<br></li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Karaoke</span></h4><ul><li>Atenuador de voz<br></li><li>Control de teclas</li><li>PuntuaciÃ³n</li><li>Volumen del micrÃ³fono</li><li>Echo</li><li>Voz de guÃ­a</li><li>Cambiador de voz</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Funciones cÃ³modas</span></h4><ul><li>Temporizador de apagado<br></li><li>Salida de carga de puerto usb1a</li><li>GrabaciÃ³n USB</li><li>Aplicaciones para smartphones compatibles (music center y fiestable)</li></ul><h4 style=\"\"><b>Especificaciones del sintonizador</b></h4><ul><li>BANDA FM / RDS / RANGO DE SINTONIZACIÃ“N (FM) 87,5-108 mhz/50 khz / PRESINTONÃA FM20<br></li></ul><h4 style=\"\"><b>Formatos reproducibles (datos)</b><br></h4><ul><li>MP3 / XVID / MPEG4 *PERFIL SIMPLE (tambiÃ©n compatible con MPEG1)<br></li></ul><h4></h4>', 3729.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, 14, 35, 'PRODUCT-TEST', 'PRODUCTO TEST', 'PRODUCT-TEST', '<p>Almohada con relleno de fibra siliconada regenerada con textura suave, ideal para el descanso c&oacute;modo y placentero. Es antihongos, antialergica y anti&aacute;caros.</p>\n<p><strong>MEDIDA PARA FUNDA</strong></p>\n<p>50x70cm / Altura(*) 15cm</p>\n<p><strong>PESO</strong><br />600gr</p>\n<p><strong>RELLENO</strong><br />Fibra siliconada</p>\n<p><strong>FUNDA</strong><br />100% poli&eacute;ster</p>\n<p><strong>CARACTER&Iacute;STICAS</strong><br />Automoldeable, hipoalerg&eacute;nico, c&oacute;nfort y suavidad.</p>', 0.10, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, 9, 29, 'LMESLG000000009', 'EQUIPO DE SONIDO LG CJ45 480W             ', 'LMESLG000000009', NULL, 2010.24, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(603, 9, 29, 'LMESLG000000014', 'EQUIPO DE SONIDO LG CM4360       ', 'LMESLG000000014', NULL, 1009.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(604, 9, 29, 'LMESLG000000007', 'EQUIPO DE SONIDO LG CM4560', 'LMESLG000000007', NULL, 1389.02, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(605, 9, 29, 'LMESLG2C0000003', 'EQUIPO DE SONIDO LG CM9760', 'LMESLG2C0000003', NULL, 5369.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(606, 9, 29, 'LMESLG000000012', 'EQUIPO DE SONIDO LG OK55', 'LMESLG000000012', '<p>Aumenta tu experiencia de audio con ritmos nÃ­tidos e impactantes. El LG XBOOM OK55 estÃ¡ diseÃ±ado para soportar cualquier fiesta sin importar quÃ© tan grande sea. Completa tu ambiente de fiesta con los parlantes de Multi Color Lighting que cambian al ritmo de la mÃºsica.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: LG<br></li><li>500 vatios</li><li>Multi Color Party Lighting</li><li>Efecto de DJ</li><li>Karaoke Star</li><li>Efectos vocales</li><li>Sincronizador de sonido de TV</li></ul>', 1759.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(607, 9, 29, 'LMESLG000000010', 'EQUIPO DE SONIDO LG OK75', 'LMESLG000000010', NULL, 2939.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(608, 9, 29, 'LMESLG000000011', 'EQUIPO DE SONIDO LG OK99', 'LMESLG000000011', NULL, 3939.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(609, 9, 47, 'LMESSY000000016', 'EQUIPO DE SONIDO SONY GTK-XB5', 'LMESSY000000016', NULL, 1719.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `products` (`id`, `subcategory_id`, `brand_id`, `sku`, `name`, `slug`, `description`, `price`, `offer_price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(610, 9, 47, 'LMESSY000000011', 'EQUIPO DE SONIDO SONY GTK-XB7', 'LMESSY000000011', NULL, 2309.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(611, 9, 47, 'LMESSY000000003', 'EQUIPO DE SONIDO SONY MHC-ECL9', 'LMESSY000000003', NULL, 1889.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(612, 9, 47, 'LMESSY000000008', 'EQUIPO DE SONIDO SONY MHC-GT4D', 'LMESSY000000008', NULL, 4899.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, 9, 47, 'LMESSY000000013', 'EQUIPO DE SONIDO SONY MHC-GT7D', 'LMESSY000000013', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Potencia RMS: 2400W</li><li>Reproduce: CD/DVD/MP3/WMA/FLAC/Bluetooth</li><li>Entradas: HDMI, USB, MicrÃ³fono</li><li>Numero de CDÂ´s: 1</li><li>Otros: Party Chain, DJ effect, Karaoke y football mode</li><li>Otros: Ruedas, manija para fÃ¡cil portabilidad, Parlantes con luces, NFC.</li><li>Formatos de reproducciÃ³n: CD-ROM, DVD-ROM, MP3, WMA</li></ul>', 8299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 9, 47, 'LMESSY000000030', 'EQUIPO DE SONIDO SONY MHC-M20D', 'LMESSY000000030', NULL, 1884.60, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 9, 47, 'LMESSY000000022', 'EQUIPO DE SONIDO SONY MHC-M80D', 'LMESSY000000022', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>ContrÃ³lalo todo desde la pista de baile.<br></li><li>Dos entradas de micrÃ³fono.</li><li>Transmite mÃºsica de alta calidad sin ninguna complicaciÃ³n mediante las tecnologÃ­as LDACâ„¢ y BLUETOOTH.</li><li>Sonido estÃ©reo de 2.1 canales</li><li>Crea el ambiente con las luces del parlante y de fiesta</li><li>Las entradas de karaoke y guitarra te permiten cantar y tocar al ritmo de la mÃºsica</li><li>Controla los efectos de DJ con la aplicaciÃ³n Fiestable</li><li>Reproductor de DVD integrado con salida HDMI</li></ul>', 4439.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, 9, 47, 'LMESSY000000005', 'EQUIPO DE SONIDO SONY MHC-V11', 'LMESSY000000005', '<p>Lleva la fiesta a tu casa con este compacto sistema de audio de alta potencia de una pieza Disfrutar de un sonido potente proveniente de un diseÃ±o todo en uno pequeÃ±o y optimiza las frecuencias bajas con mega bajo. Puedes experimentar con efectos de DJ, invitar a tus amigos a cantar Karaoke y hacer competencias. Conecta los sistemas fÃ¡cilmente con Party Chain para Crear el mejor sonido de fiesta.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Potencia RMS:470</li><li>Reproduce : WAV/MP3/WMA.</li><li>Entradas: USB.AUX</li><li>Numero de CDÂ´s: 1</li><li>Otros: Bluetooth, NFC</li></ul>', 1889.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, 9, 47, 'LMESSY000000023', 'EQUIPO DE SONIDO SONY MHC-V41D', 'LMESSY000000023', '<p>Organiza fiestas en casa que sean siempre memorables con el potente MHC-V41D. Las unidades de parlante en Ã¡ngulo expanden el sonido por la sala para que todos puedan disfrutar de la misma calidad sonido superior mientras que las luces de colores se sincronizan con la mÃºsica.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Altavoces en Ã¡ngulo para ampliar el paisaje sonoro</li><li>Luz de parlante</li><li>Entradas de guitarra y karaoke</li><li>Reproductor de DVD integrado con HDMI ARC</li><li>Asa para una elevaciÃ³n segura y una portabilidad sencilla</li><li>Formatos de reproducciÃ³n: AAC, CD-ROM, CDÂ±RW, DOLBY DIGITAL, DVD-ROM, DVDÂ±RW, DVDÂ±RW Doble Capa, MP3, MPEG4, Puerto USB, RADIO FM, VCD</li><li>Sistema: Audio de alta potencia NFC/Bluetooth (Frecuencia de funcionamiento: 13,56 MHz)</li><li>Potencia: 130 W de potencia</li><li>Altavoz frontal<span style=\"white-space:pre\">	</span>Tweeter: 4 cm x 2 (tipo de cono) Rango medio: 8 cm x2 (tipo cono) </li><li>Woofer: 25 cm</li></ul>', 3349.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, 9, 47, 'LMESSY000000012', 'EQUIPO DE SONIDO SONY MHC-V77D', 'LMESSY000000012', NULL, 4109.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(619, 9, 47, 'LMESSY000000031', 'EQUIPO DE SONIDO SONY MHC-ECL77BT', 'LMESSY000000031', NULL, 1256.40, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(620, 9, 47, 'LMESSY000000033', 'EQUIPO DE SONIDO SONY MHC-V43D', 'LMESSY000000033', '<p>Celebra fiestas como nunca<br>Haz que la velada sea inolvidable con el potente MHC-V43D. Con un sonido de graves de larga distancia y una colorida iluminaciÃ³n de fiesta que se<br>sincroniza con el ritmo, tus invitados no querrÃ¡n salir de la pista de baile.<br>Dos tweeters de alta eficiencia inundan la fiesta con sonido<br>Los dos tweeter en forma de cuerno de alta eficiencia amplÃ­an el sonido de escenario y aumentan la presiÃ³n acÃºstica hacia arriba distribuyendo el sonido por todo el recinto.<br>Siente el ritmo a gran distancia con JET BASS BOOSTER<br>Una estructura cÃ³nica de conducto Bass Reflex concentra el flujo de aire del sonido de graves para que puedas oÃ­rlos con claridad y sentirlos fÃ­sicamente, aunque estÃ©s entre la multitud o lejos del parlante.<br>Reproductor de DVD integrado con HDMIâ„¢ ARC<br>Lista de reproducciÃ³n de la fiesta y clasificaciÃ³n de karaoke a travÃ©s de Fiestable<br>Control por gestos para mayor diversiÃ³n y un funcionamiento sencillo<br>Luces de fiesta e iluminaciÃ³n del parlante<br>Spread Sound con tweeters y frecuencia media de alta eficiencia</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Potencia: 450w</li><li>Bluetooth</li><li>Modo fiesta</li><li>Bluetooth</li><li>FM, DVD, RCA</li><li>HDMI, USB</li><li>Luces en la bocina</li><li>Control de gestos verticales y horizontales</li><li>Sonido en vivo</li><li>Conecta varios dispositivos al mismo tiempo</li><li>Spread Sound con tweeters y frecuencia media de alta eficiencia</li><li>Dimensiones del producto: 349.5 x 795 x 328.5 mm</li></ul>', 3001.40, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(621, 9, 47, 'LMESSY000000020', 'EQUIPO DE SONIDO SONY MHC-V81D', 'LMESSY000000020', '<p>Haz que tu noche cobre vida. Con un intenso sonido de 360Âº y las luces del MHC-V81D, todo el mundo podrÃ¡ disfrutar de audio de alta calidad y ambiente de fiesta.<br>360Â° SONIDO EN VIVO<br>Luces de fiesta de 360Â°<br>Modo TAIKO y modo de juego TAIKO<br>Reproductor de DVD integrado con salida HDMI<br>El control de gestos y de movimiento desde el smartphone facilita el control de la mÃºsica.</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Modelo MHC-V81D.</li><li>Potencia RMS de 190W.</li><li>Formatos de reproducciÃ³n VCD+CD+DVD.</li><li>Medidas del equipo: 44.7 x 106.0 x 42.7 cm.</li><li>Peso 31 kg.</li><li>Minicomponente MHC-V81D.</li><li>InformaciÃ³n adicional</li><li>Producto ambientado, sÃ³lo incluye productos especificados en la descripciÃ³n.</li></ul>', 5319.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, 7, 32, 'PEPAMG000000003', 'PARRILLA MAGEFESA MGF-4615 C/TAPA 2200W FORESTA', 'PEPAMG000000003', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Magefesa<br></li><li>Modelo: FORESTA</li><li>Potencia: 2.200 W</li><li>Ãrea de cocciÃ³n antiadherente 400 X 300 mm</li><li>Tapa de cristal termo-resistente con respiradero</li><li>Regulador de temperatura</li><li>Plancha de fÃ¡cil limpieza</li><li>DepÃ³sito para grasa</li><li>Cocina sana y sin grasas</li><li>Calienta, asa, cocina y tuesta</li><li>RÃ¡pido calentamiento</li></ul>', 459.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, 7, 32, 'PEBAMG000000004', 'BATIDORA MAGEFESA MGF-4223 450W 3LT BLANCO/C/BOWL', 'PEBAMG000000004', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Potencia: 550 W.<br></li><li>Pulsador turbo</li><li>5 velocidades</li><li>Varillas batidoras y amasadoras</li><li>ExpulsiÃ³n automÃ¡tica de varillas</li><li>Bol rotador de acero inoxidable</li></ul>', 429.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, 7, 41, 'PEMIPT000000011', 'MIXER PHILIPS HR-2625/80 600W/ NEGRO/ 2 ACCESORIOS', 'PEMIPT000000011', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Licue, cierre y listo.<br></li><li>Tan solo mezcle deliciosos ingredientes para disfrutar en cualquier parte.</li><li>Potencia de licuado de 600 W</li><li>SpeedTouch con guÃ­a de velocidad</li><li>Vaso portÃ¡til</li><li>FÃ¡cil de limpiar</li><li>Marca: Philips</li><li>Accesorios Incluidos: Vaso portÃ¡til (500 ml) / Picadora de 350 ml</li><li>Fabricado en Brasil.</li></ul>', 479.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, 2, 43, 'LBAAPM18FC000BS', 'AIRE POLARMAX S-18000BTU FRIO/CALOR BLANCO', 'LBAAPM18FC000BS', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Polarmax<br></li><li>Capacidad: 18000 btu</li><li>Sistema de suministro de aire silencios: Las aspas del ventilador de gran diÃ¡metro aumentan y disminuyen la velocidad de rotaciÃ³n de acuerdo con la temperatura del evaporador, bajando los niveles de ruido sin reducir el flujo de aire o la salida de enfriamiento.</li><li>MÃºltiples velocidades de flujo: Velocidades de flujo multivariables, asegurando un control mÃ¡s preciso y una brisa mÃ¡s suave.</li><li>Frio/calor</li><li>Eficiencia energÃ©tica:A++</li><li>Tipo de refrigerante: R410A</li><li>Mivel de Ruido (unidad interior): 30-40 db(A)</li></ul>', 3599.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, 19, 13, 'LBFRDW000000001', 'FRIGOBAR DAEWOO FR-146R 140LT/BLANCO', 'LBFRDW000000001', NULL, 1439.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 19, 21, 'LBFRHS000000001', 'FRIGOBAR HISENSE RS-17DRB NEGRO/ 117L', 'LBFRHS000000001', NULL, 1499.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 7, 26, 'PEASKA000000001', 'ASPIRADORA KARCHER WD 1 *KAP  4 ACC', 'PEASKA000000001', NULL, 799.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 7, 26, 'PEASKA000000002', 'ASPIRADORA KARCHER WD 3 CAR *EU-II', 'PEASKA000000002', '<p>El aspirador multiuso WD 3 Car no solo convence por su muy elevada potencia de aspiraciÃ³n y su escaso consumo elÃ©ctrico de tan solo 1000 W, sino que despliega sus puntos fuertes, especialmente como un prÃ¡ctico aspirador para el automÃ³vil, gracias a sus variados accesorios para la limpieza interior de vehÃ­culos. Tanto si se trata de superficies delicadas como del salpicadero, zonas muy sucias como el espacio para los pies, grandes superficies como el maletero o zonas estrechas entre los asientos; gracias a cepillos y boquillas especiales, se puede limpiar a fondo cualquier zona en el interior del vehÃ­culo sin esfuerzo alguno. El asa extraÃ­ble permite acoplar los cepillos y boquillas directamente en la manguera de aspiraciÃ³n y permite, por tanto, un trabajo sin esfuerzo en los espacios mÃ¡s estrechos. Y, naturalmente, el WD 3 Car estÃ¡ equipado con las probadas caracterÃ­sticas del equipo y accesorios que ya convencieron en la gama de aspiradores multiusos estÃ¡ndar.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Karcher<br></li><li>Potencia de aspiraciÃ³n real* (Air Watt): 200</li><li>EnergÃ­a usada (W): 1000</li><li>Capacidad del contenedor (l): 17</li><li>Material del contenedor: PlÃ¡stico</li><li>Cable de conexiÃ³n. (m): 4</li><li>DiÃ¡metro nominal de los accesorios (mm): 35</li><li>Tipo de corriente. (V/Hz): 220 - 240 / 50 - 60</li><li>Peso sin accesorios. (kg): 5,5</li><li>Peso con embalaje incluido. (kg): 8,1</li><li>Dimensiones (la. Ã— an. Ã— al.). (mm): 388 x 340 x 503</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Equipamiento</span></h4><ul><li>Manguera de aspiraciÃ³n, 2 m<br></li><li>Asa extraÃ­ble</li><li>Tubos de aspiraciÃ³n, 2 unidades, 0.5 m, 35 mm, PlÃ¡stico</li><li>Boquilla para aspiraciÃ³n de suciedad seca y hÃºmeda, Clips</li><li>Filtros de cartucho, EstÃ¡ndar</li><li>Bolsa de filtro de papel, 1 unidades</li><li>FunciÃ³n de soplado</li><li>PosiciÃ³n de estacionamiento</li><li>Pincel aspirador de cerdas blandas</li><li>Boquilla aspiradora para superficies grandes</li><li>Boquilla de ranuras extralarga (350 mm)</li><li>ProtecciÃ³n de circulaciÃ³n resistente a los golpes</li><li>Almacenaje de accesorios en el equipo</li></ul>', 1299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 13, 26, 'PEHIKA000000003', 'HIDROLAVADORA KARCHER K2 BASIC CAR *KAP                                        ', 'PEHIKA000000003', '<p>Tanto en bicicletas sucias y utensilios de jardinerÃ­a con barro incrustado como muebles de jardÃ­n sucios, la Â«K2 Basic CarÂ» de KÃ¤rcher elimina la suciedad ligera de toda la casa en un abrir y cerrar de ojos. La hidrolavadora de alta presiÃ³n ha sido diseÃ±ada para trabajos de limpieza ocasionales. El equipo de serie incluye una pistola, una manguera de alta presiÃ³n de 3 m, una lanza pulverizadora simple, asÃ­ como un filtro de agua para proteger la bomba de la penetraciÃ³n de partÃ­culas de suciedad.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Tipo de corriente. (V/Hz): 220 / 50<br></li><li>PresiÃ³n (PSI): 1600</li><li>Caudal de agua (l/h): MÃ¡x. 280</li><li>Peso sin accesorios. (kg): 4,4</li><li>Peso con embalaje incluido. (kg): 7,2</li><li>Dimensiones (l Ã— a Ã— h). (mm): 177 x 279 x 443</li></ul><h4><span style=\"font-weight: 700;\">Equipamiento</span></h4><ul><li>Kit para coche, Cepillo de lavado, boquilla de espuma, detergente champÃº para automÃ³viles, 0,5 l<br></li><li>Pistola de alta presiÃ³n, ConexiÃ³n estÃ¡ndar</li><li>Boquilla simple</li><li>Manguera de alta presiÃ³n, 3 m</li><li>Quick Connect del aparato</li><li>Filtro de agua integrado</li><li>Adaptador de conexiÃ³n para mangueras de riego A3/4 in</li></ul>', 999.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 13, 26, 'PEHIKA000000001', 'HIDROLAVADORA KARCHER K2 FULL CONTROL DAKAR 4 ACC', 'PEHIKA000000001', '<p>La hidrolavadora KÃ¤rcher K 2 Full Control Dakar con regulaciÃ³n de la presiÃ³n precisa para suciedad ligera en, por ejemplo, bicicletas, utensilios de jardinerÃ­a o muebles de jardÃ­n. Rendimiento de superficie de 20 mÂ²/h.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>PresiÃ³n 1600 psi<br></li><li>Caudal de agua (l/h) 300</li><li>Temperatura de entrada mÃ¡x. (Â°C) hasta 40</li><li>Potencia de conexiÃ³n (kW) 0,85</li><li>Peso sin accesorios (kg) 4,1</li><li>Dimensiones (l Ã— a Ã— h) (mm) 160 x 241 x 426</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Equipamiento</span></h4><ul><li>Vario Power Jet<br></li><li>Boquilla turbo</li><li>Cepillo de cerda blancas</li><li>Dosificador de shampoo</li><li>Sistema Quick Connect en el equipo</li><li>Filtro de agua integrado</li><li>Conector para mangueras de riego A3/4â€³</li></ul>', 1399.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, 13, 26, 'PEHIKA000000002', 'HIDROLAVADORA KARCHER K3 EU* 2 ACC', 'PEHIKA000000002', '<p>La Hidrolavadora Karcher K3 EU impresiona con su potencia y ahorro de agua, desarrollado para las necesidades de limpieza del mercado latinoamericano.<br>Es la Hidrolavadora de alta presiÃ³n ideal para garajes, jardines, coches, bicicletas, motocicletas, equipos para el jardÃ­n y espacios grandes. Cuenta con una barra telescÃ³pica, ruedas grandes para facilitar el transporte y un prÃ¡ctico compartimento para accesorios. TambiÃ©n forman parte del equipamiento estÃ¡ndar una lanza pulverizadora Vario Power y la boquilla turbo.<br>Hidrolavadora Karcher K3 MX ideal para limpieza efectiva para el Hogar</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Temperatura de entrada mÃ¡x. (Â°C) hasta 40<br></li><li>Rendimiento de superficie (mÂ²/h) 25</li><li>Peso sin accesorios (kg) 5,8</li><li>Dimensiones (l Ã— a Ã— h) (mm) 275 x 279 x 803</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Equipamiento</span></h4><ul><li>Pistola de alta presiÃ³n, G 120 Q<br></li><li>Lanza Vario Power</li><li>Boquilla turbo</li><li>Manguera de alta presiÃ³n, 6 m</li><li>Quick Connect del aparato</li><li>AplicaciÃ³n de detergente, DepÃ³sito</li><li>Filtro de agua integrado</li><li>Adaptador de conexiÃ³n para mangueras de riego A3/4 in</li></ul>', 1739.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(633, 13, 26, 'PELVKA000000001', 'LIMPIADOR A VAPOR KARCHER SC 1 EASYFIX *EU', 'PELVKA000000001', NULL, 1049.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, 3, 31, 'LBCOMB4H0000001', 'COCINA MABE 4H EMI6060FX0 GRIL', 'LBCOMB4H0000001', NULL, 2969.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(635, 5, 41, 'PECBCUPT0000001', 'CUCHILLA PHILIPS QP-210/50 X1 UN ONE BLADE', 'PECBCUPT0000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Philips<br></li><li>Recorta, modela y afeita cualquier longitud de pelo</li><li>DiseÃ±ado para cortar pelo, no piel</li><li>Recorta, modela y afeita</li><li>1 cuchilla de recambio</li><li>Para todos los mangos OneBlade</li></ul>', 99.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, 2, 43, 'LBAAPM12FC000BS', 'AIRE POLARMAX S-12000BTU FRIO/CALOR BLANCO', 'LBAAPM12FC000BS', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Polarmax<br></li><li>Capacidad: 12000 btu</li><li>Sistema de suministro de aire silencios: Las aspas del ventilador de gran diÃ¡metro aumentan y disminuyen la velocidad de rotaciÃ³n de acuerdo con la temperatura del evaporador, bajando los niveles de ruido sin reducir el flujo de aire o la salida de enfriamiento.</li><li>MÃºltiples velocidades de flujo: Velocidades de flujo multivariables, asegurando un control mÃ¡s preciso y una brisa mÃ¡s suave.</li><li>Frio/calor</li><li>Eficiencia energÃ©tica:A++</li><li>Tipo de refrigerante: R410A</li><li>Mivel de Ruido (unidad interior): 30-40 db(A)</li></ul>', 2579.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 2, 43, 'LBAAPM24FC000BS', 'AIRE POLARMAX S-24000BTU FRIO/CALOR BLANCO', 'LBAAPM24FC000BS', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Polarmax</li><li>Capacidad: 24000 btu</li><li>Sistema de suministro de aire silencios: Las aspas del ventilador de gran diÃ¡metro aumentan y disminuyen la velocidad de rotaciÃ³n de acuerdo con la temperatura del evaporador, bajando los niveles de ruido sin reducir el flujo de aire o la salida de enfriamiento.</li><li>MÃºltiples velocidades de flujo: Velocidades de flujo multivariables, asegurando un control mÃ¡s preciso y una brisa mÃ¡s suave.</li><li>Frio/calor</li><li>Eficiencia energÃ©tica:A++</li><li>Tipo de refrigerante: R410A</li><li>Mivel de Ruido (unidad interior): 30-40 db(A)</li></ul>', 4799.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, 7, 32, 'PEASMG000000003', 'ASPIRADORA MAGEFESA MGF-6363', 'PEASMG000000003', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Magefesa<br></li><li>Potencia mÃ¡x: 750 W.</li><li>Eficiencia energÃ©tica clase \"A\". Potencia de succiÃ³n equivalente a 1600W.</li><li>Regulador de potencia.</li><li>Filtro HEPA F7.</li><li>Capacidad de llenado: 2.2 Litros.</li><li>Rueda frontal multidireccional.</li><li>Recoge-cables automÃ¡tico.</li><li>Tubo telescÃ³pico de acero inoxidable.</li><li>Boquilla para ranuras incluida.</li></ul>', 609.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, 1, 34, 'LGAUMANE0000001', 'AUDIFONOS MAXELL REFK-11', 'LGAUMANE0000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Maxell<br></li><li>AudÃ­fonos Maxell REFK-11 Reflective Earbud&nbsp;</li><li>Cable de 120 cm de largo</li><li>Gomitas del auricular intercambiables</li><li>ConexiÃ³n de 3.5 mm&nbsp;</li><li>Resistencia: 16 ohmios</li><li>Respuesta de frecuencia: 20Hz-20 KHz&nbsp;</li><li>MicrÃ³fono y botÃ³n para atender llamadas incorporado</li></ul>', 39.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(640, 1, 47, 'LGAUSYLI0000002', 'AUDIFONOS SONY MDR-EX15LP/VZ LILA', 'LGAUSYLI0000002', '<p>Los audÃ­fonos se utilizan dentro del oÃ­do<br>Habla sin quitarte los audÃ­fonos. Pon una mano sobre la carcasa para reducir al instante el volumen de la mÃºsica<br>Calidad y sonido envolvente HQ</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Color: Morado</li><li>Tipo de conector: AlÃ¡mbrico</li><li>Factor de forma de los auriculares: Pliegue doble</li></ul>', 59.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(641, 1, 47, 'LGAUSYAZ0000002', 'AUDIFONOS SONY MDR-EX15LP/LI AZUL', 'LGAUSYAZ0000002', '<p>Los audÃ­fonos se utilizan dentro del oÃ­do<br>Habla sin quitarte los audÃ­fonos. Pon una mano sobre la carcasa para reducir al instante el volumen de la mÃºsica<br>Calidad y sonido envolvente HQ</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Color: Azul</li><li>Tipo de conector: AlÃ¡mbrico</li><li>Factor de forma de los auriculares: Pliegue doble</li></ul>', 59.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(642, 1, 47, 'LGAUSYBL0000002', 'AUDIFONOS SONY MDR-EX15LP/WZ BLANCO', 'LGAUSYBL0000002', '<p>Los audÃ­fonos se utilizan dentro del oÃ­do<br>Habla sin quitarte los audÃ­fonos. Pon una mano sobre la carcasa para reducir al instante el volumen de la mÃºsica<br>Calidad y sonido envolvente HQ</p><h4></h4><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Color: Blanco</li><li>Tipo de conector: AlÃ¡mbrico</li><li>Factor de forma de los auriculares: Pliegue doble</li></ul>', 59.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, 1, 47, 'LGAUSYB0000013', 'AUDIFONOS SONY WH-CH400/BZ NEGRO', 'LGAUSYB0000013', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Color: Negro</li><li>TecnologÃ­a de conectividad: Bluetooth; NFC</li><li>Nombre del modelo: WH-CH400</li><li>Factor de forma: On Ear</li><li>Easy Bluetooth connectivity with NFC one-touch</li><li>Up to 20 hours of battery life</li><li>30mm neodymium drivers for dynamic sound</li><li>Smartphone compatible with hands-free calling</li><li>In the box: Micro USB Cable</li><li>Connectivity technology: Bluetooth; NFC</li></ul>', 509.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, 1, 47, 'LGAUSYP00000005', 'AUDIFONOS SONY MDR-AS210/P ROSADO', 'LGAUSYP00000005', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Color: Rosado</li><li>TecnologÃ­a de conectividad: Wireless</li><li>Factor de forma: In Ear</li><li>Peso del artÃ­culo: 0.4 Onzas</li><li>Auriculares ligeros con clip para un estilo de vida activo.</li><li>CÃ³modo diseÃ±o de gancho ajustable para un ajuste seguro.</li><li>DiseÃ±o resistente al agua que te permitirÃ¡ realizar el entrenamiento mÃ¡s riguroso.</li><li>Los controladores de 0.531 in ofrecen un rendimiento de sonido premium.</li><li>Estructura de auriculares en Ã¡ngulo para un ajuste mÃ¡s estable.</li><li>Cable dentado sin enredos de 3.9 ft.</li></ul>', 139.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, 1, 47, 'LGAUSYBL0000009', 'AUDIFONOS SONY MDR-AS210/W BLANCO', 'LGAUSYBL0000009', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Color: Blanco</li><li>TecnologÃ­a de conectividad: Wireless</li><li>Factor de forma: In Ear</li><li>Peso del artÃ­culo: 0.4 Onzas</li><li>Auriculares ligeros con clip para un estilo de vida activo.</li><li>CÃ³modo diseÃ±o de gancho ajustable para un ajuste seguro.</li><li>DiseÃ±o resistente al agua que te permitirÃ¡ realizar el entrenamiento mÃ¡s riguroso.</li><li>Los controladores de 0.531 in ofrecen un rendimiento de sonido premium.</li><li>Estructura de auriculares en Ã¡ngulo para un ajuste mÃ¡s estable.</li><li>Cable dentado sin enredos de 3.9 ft.</li></ul>', 139.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, 1, 47, 'LGAUSYR00000014', 'AUDIFONOS SONY WI-C300/RZ\nROJO', 'LGAUSYR00000014', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Modelo: WI-C300/RZ LA</li><li>Tipo: Audifonos earbuds</li><li>Peso: 0.15 kg</li><li>Resistente al agua: No</li><li>Salida auxiliar de 3.5 mm: No</li><li>Auricular: Auriculares in ear</li><li>Aislador de sonido: No</li><li>Material de la almohadilla: Goma</li><li>Compatibilidad: Universal</li><li>Conectividad: NFC</li><li>ConexiÃ³n bluetooth: SÃ­</li><li>Incluye micrÃ³fono: SÃ­</li><li>Incluye: Cable micro-usb y tapones</li></ul>', 499.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(647, 1, 47, 'LGAUSYB0000014', 'AUDIFONOS SONY WI-C400/BZ NEGRO', 'LGAUSYB0000014', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Color: Negro</li><li>TecnologÃ­a de conectividad: Wireless</li><li>Nombre del modelo: WIC400/B</li><li>Factor de forma: In Ear</li><li>FÃ¡cil conectividad Bluetooth con NFC de un solo toque.</li><li>Hasta 20 horas de duraciÃ³n de la baterÃ­a.</li><li>Controladores de neodimio de 0.354 in para un sonido dinÃ¡mico.</li><li>CÃ³modo estilo detrÃ¡s del cuello con gestiÃ³n de cables.</li><li>VibraciÃ³n para llamadas entrantes.</li><li>TecnologÃ­a de conectividad: inalÃ¡mbrica.</li></ul>', 559.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, 12, 45, 'LMBSSK000000002', 'BARRA DE SONIDO SKYWORTH S200', 'LMBSSK000000002', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Skyworth<br></li><li>4 parlantes + Bass Reflex</li><li>40 W de salida</li><li>Entradas: AUX, RCA, HDMI, Ã“ptico</li><li>ConexiÃ³n Bluetooth</li><li>ConexiÃ³n USB para reproducciÃ³n en el dispositivo</li><li>Incluye cable Ã³ptico</li><li>Incluye Control Remoto</li></ul>', 542.35, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, 12, 47, 'LMBSSY000000007', 'BARRA DE SONIDO SONY HT-S20R', 'LMBSSY000000007', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Color: Negro</li><li>Nombre del modelo: HT-S20R</li><li>Peso del producto: 13 Kilogramos</li><li>Fuente de alimentaciÃ³n: Cable elÃ©ctrico</li><li>ConfiguraciÃ³n de canales de sonido envolvente: 5.1</li><li>Potencia de salida mÃ¡xima del altavoz: 400 Watios</li><li>TecnologÃ­a de conectividad: Bluetooth, USB, HDMI</li><li>Llena la habitaciÃ³n con autÃ©ntico sonido Surround de 5.1 canales</li><li>Conectividad Bluetooth sencilla para transmisiÃ³n de mÃºsica</li><li>ReproducciÃ³n de audio mediante USB</li><li>ConfiguraciÃ³n sencilla con entradas HDMI ARC, Ã³pticas y analÃ³gicas</li><li>Modos de sonido para pelÃ­culas y mÃºsica mejoradas</li></ul>', 1659.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, 12, 47, 'LMBSSY000000003', 'BARRA DE SONIDO SONY HT-RT3/3M', 'LMBSSY000000003', NULL, 2119.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, 12, 45, 'LMBSSK000000001', 'BARRA DE SONIDO SKYWORTH TB200', 'LMBSSK000000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Skyworth<br></li><li>4 parlantes + Bass Reflex</li><li>30 W de salida</li><li>Entradas: AUX, RCA, HDMI, Ã“ptico</li><li>ConexiÃ³n Bluetooth</li><li>Incluye cable Ã³ptico</li><li>Incluye Control Remoto</li></ul>', 408.37, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(652, 7, 32, 'PEBAMG000000006', 'BATIDORA MAGEFESA MGF-4560', 'PEBAMG000000006', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Potencia: 1.000 W.<br></li><li>Capacidad: 4.5 L.</li><li>8 Velocidades</li><li>FÃ¡cil manejo</li><li>Bate, amasa y mezcla</li><li>Base antideslizante</li><li>Desmontable</li><li>Pulsador turbo</li><li>Bowl de acero inoxidable</li><li>Tapa transparente</li><li>Luz indicadora de funcionamiento</li><li>Incluye accesorios</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Incluye</span></h4><ul><li>Accesorio batidor<br></li><li>Gancho de amasar</li><li>Accesorio para mezclar</li></ul>', 749.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(653, 7, 8, 'PECABO000000001', 'CAFETERA BOSCH GOTEO TKA3A031', 'PECABO000000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Bosch<br></li><li>Capacidad: 10/15 tazas, 1.25 litros.</li><li>Jarra de vidrio especial Aroma.</li><li>Jarra SafeStorage y compartimiento para guardar el cable de conexiÃ³n.</li><li>Sistema de preparaciÃ³n de cafÃ© para una extracciÃ³n Ã³ptima del aroma.</li><li>DepÃ³sito de agua con indicador de nivel de agua.</li><li>Portafiltros pivotante y extraÃ­ble.</li><li>VÃ¡lvula antigoteo.</li><li>Placa calefactora para mantenimiento de calor.</li><li>DesconexiÃ³n automÃ¡tica</li><li>Pies antideslizantes.</li></ul>', 399.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, 3, 12, 'LBCOCO5H0000001', 'COCINA CONTINENTAL 5H INOX FC5', 'LBCOCO5H0000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Continental<br></li><li>Cocina a gas</li><li>Marca Continental</li><li>Modelo FC5CS</li><li>5 Hornallas</li><li>Color Gris&nbsp;</li><li>Capacidad de horno 91 litros</li><li>Encendido elÃ©ctrico</li><li>Medidas (Alto x Ancho x Prof.) 963 x 775 x 592 cm</li></ul>', 2999.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, 3, 8, 'LBCEBO750000001', 'COCINA BOSCH ENC. PCQ7A5B90', 'LBCEBO750000001', NULL, 3809.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, 4, 15, 'LGCPDEI30000002', 'COMPUTADORA DELL I3 3510', 'LGCPDEI30000002', NULL, 4159.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, 9, 47, 'LMESSY000000035', 'EQUIPO DE SONIDO SONY MHC-V83D', 'LMESSY000000035', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Nombre del modelo: MHCV83D.CEL</li><li>DuraciÃ³n de la baterÃ­a: 5 aÃ±os</li><li>Peso del producto: 23.4 Kilogramos</li><li>TecnologÃ­a de conectividad: Bluetooth, HDMI</li><li>Disfruta del sonido de fiesta omnidireccional creado por los tweeters de alta eficiencia (x4) y los altavoces de frecuencia media y alta eficiencia</li><li>Con las luces de fiesta omnidireccionales y de altavoz, puedes iluminar la fiesta desde el suelo hasta el techo</li><li>2x entradas de micrÃ³fono que incluye 1x entrada de guitarra</li><li>Control por gestos te permite controlar las funciones del MHC-V83D fÃ¡cil y rÃ¡pidamente</li><li>Con Wireless Party Chain a travÃ©s de Bluetooth, puedes conectar hasta 50 altavoces compatibles Sony con sonido e iluminaciÃ³n sincronizados</li></ul>', 5540.38, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(658, 9, 47, 'LMESSY000000034', 'EQUIPO DE SONIDO SONY MHC-V73D', 'LMESSY000000034', NULL, 4449.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(659, 7, 32, 'PEFRMG000000001', 'FREIDORA MAGEFESA MGF-4470 BOREA 1500W BLANCA', 'PEFRMG000000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Potencia 1.500 W.<br></li><li>Capacidad: 3,2 l.</li><li>Apagado automÃ¡tico</li><li>Temperatura regulable</li><li>Doble luz indicadora</li><li>Cocina sana y sin grasa</li><li>Temporizador 60 minutos</li><li>ProtecciÃ³n contra sobrecalentamiento</li><li>FÃ¡cil limpieza</li><li>Exterior pared frÃ­a</li><li>Base antideslizante</li><li>FÃ¡cil manejo</li></ul>', 799.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, 7, 32, 'PEHAMG000000001', 'HERVIDOR DE AGUA MAGEFESA MGF-3630', 'PEHAMG000000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Magefesa<br></li><li>Potencia: 2.200 W.</li><li>Capacidad mÃ¡x: 1,7 L.</li><li>Filtro de agua permanente.</li><li>Base con cable y jarra independiente.</li><li>Cuerpo de acero inoxidable.</li><li>Control automÃ¡tico de ebulliciÃ³n.</li><li>Apagado automÃ¡tico en seco.</li><li>DesconexiÃ³n al separar la jarra de la base.</li><li>Asa con diseÃ±o ergonÃ³mico.</li><li>Indicador luminoso.</li></ul>', 249.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, 7, 32, 'PEHEMG000000004', 'HERVIDOR DE AGUA MAGEFESA MGF-3634 1.7L', 'PEHEMG000000004', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Magefesa<br></li><li>Potencia: 2.200 W.</li><li>Capacidad: 1,7 L.</li><li>Indicador luminoso.</li><li>Filtro de agua permanente.</li><li>Doble indicador nivel de agua.</li><li>Control automÃ¡tico de ebulliciÃ³n.</li><li>Apagado automÃ¡tico en seco.</li></ul>', 199.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, 7, 32, 'PEHEMG000000006', 'HERVIDOR DE AGUA MAGEFESA MGF-6700 3L', 'PEHEMG000000006', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Magefesa<br></li><li>Potencia mÃ¡xima: 700 W.</li><li>Capacidad: 3 L.</li><li>Asa transporte</li><li>FunciÃ³n hervir mantener caliente</li><li>Luz indicadora encendido/apagado</li><li>Control y apagado automÃ¡tico despuÃ©s de ebulliciÃ³n</li><li>Indicador de nivel de agua</li></ul>', 269.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, 7, 41, 'PEHAPT000000002', 'HERVIDOR DE AGUA PHILIPS HD-4649', 'PEHAPT000000002', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Philips<br></li><li>1,7 L 2.400 W</li><li>Indicador de 1 taza</li><li>Gris y blanco</li><li>Tapa con bisagra</li><li>Elemento tÃ©rmico: acero inoxidable</li><li>Cubierta: polipropileno/ ABS</li><li>Interruptor y soporte para herramientas: polipropileno</li></ul>', 259.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, 13, 44, 'LBLASGCS1700003', 'LAVADORA SAMSUNG 17KG WA17T6260BY/Z', 'LBLASGCS1700003', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Samsung<br></li><li>Lavado Programas: + de 6 Programas</li><li>Niveles de Agua: 10 Niveles</li><li>Niveles de Temperatura: 3 Niveles</li><li>Velocidad Centrifugado<span style=\"white-space:pre\">	</span>: 700 rpm</li><li>Panel: Digital</li><li>Capacidad de Lavado: 17 kg</li><li>Material: Metal</li><li>Eficiencia EnergÃ©tica: B</li><li>DescripciÃ³n de TecnologÃ­a: Digital Inverter, Wobble, Tambor Diamond Drum, Magic Dispenser, Smart Check, Cascada de Agua (Water Fall), Air Turbo (Pre LAVADO), Pulsador Wobble, Magic Filter</li><li>Tipo de Carga: Superior</li><li>Tipo de Motor: Motor Digital Inverter</li></ul>', 5399.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, 13, 44, 'LBLASGCF1000001', 'LAVADORA SAMSUNG 10KG WW-10J6410EW', 'LBLASGCF1000001', NULL, 4949.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, 13, 44, 'LBLASGCS1300004', 'LAVADORA SAMSUNG 13KG WA-13T5260BY', 'LBLASGCS1300004', NULL, 4199.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, 13, 44, 'LBLASGCS1400003', 'LAVADORA SAMSUNG 14KG WA-14F5L2UDY', 'LBLASGCS1400003', '<p>DiseÃ±o estilizado y prÃ¡ctico.<br>La innovadora tecnologÃ­a Wobble de la lavadora Samsung protege la ropa delicada del daÃ±o producido por la fricciÃ³n, ofreciendo a su vez un desempeÃ±o de lavado excelente.<br>La exclusiva estructura de los pulsadores Wobble genera un flujo de lavado dinÃ¡mico y multidireccional que reduce enredos y nudos, y limpia a fondo la ropa gracias a su mejorada capacidad de eliminaciÃ³n de manchas.<br>Lo mÃ¡ximo en comodidad: la tecnologÃ­a de Lavado Eco de Tambor mantiene limpia tu lavadora sin usar productos quÃ­micos fuertes.<br>La lavadora Samsung tiene una puerta de vidrio templado que dura mucho mÃ¡s y permite ver el interior sin problemas. Se diseÃ±Ã³ para soportar una gran presiÃ³n y tambiÃ©n resiste daÃ±os y rayones.<br>Magic Dispenser te permite lavar sin preocuparte de los restos de detergente.</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Samsung<br></li><li>Capacidad de lavado: 14 kg</li><li>Color: Gris PM</li><li>Puerta: Gris PM</li><li>Display del Panel: Inmold</li><li>Bloqueo Infantil: SÃ­</li><li>Dispensador MÃ¡gico: SÃ­</li><li>Filtro MÃ¡gico: SÃ­</li><li>Motor: CA</li><li>Pulsador: Wobble</li><li>Velocidad de Centrifugado: 700</li><li>Smart Check: SÃ­</li><li>Tempered Glass Window: SÃ­</li><li>Lavado: SÃ­</li><li>Nivel de Agua: 10 niveles</li></ul>', 3999.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(668, 13, 44, 'LBLASGCS1900002', 'LAVADORA SAMSUNG 19KG WA-19T6260BY', 'LBLASGCS1900002', 'LAVADORA SAMSUNG 19KG WA-19T6260BY/ZS C/S GRIS INVERTER', 5559.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(669, 13, 13, 'LBLADWCS1600002', 'LAVADORA DAEWOO 16KG DWF-RP165', 'LBLADWCS1600002', NULL, 4649.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(670, 13, 29, 'LBLALGCF9000003', 'LAVADORA LG 9KG WM-9WB6 CF/BLANCA', 'LBLALGCF9000003', NULL, 4489.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(671, 7, 8, 'PELIBO000000002', 'LICUADORA BOSCH 350W MMBM7G2M', 'PELIBO000000002', '<p>PodrÃ¡s llevar tus creaciones a cualquier lugar, gracias a su prÃ¡ctica botella 2Go de 0,5 litros, adecuados para transportarlas<br>Pica sin problemas cualquier tipo de ingrediente, incluso frutas congeladas o hielo casero, gracias a su picador universal<br>ConseguirÃ¡s evitar las roturas de cristal gracias a su jarra de vidrio ThermoSafe, que soporta los cambios de temperatura<br>Su diseÃ±o moderno y distinto, con un tamaÃ±o compacto te permitirÃ¡ darle un toque de elegancia y distinciÃ³n a tu cocina</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Bosch<br></li><li>Color: Blanco</li><li>Material: PlÃ¡stico</li><li>Voltaje: 220</li><li>Capacidad: 0.6 Litros</li><li>Volumen: 0.6 Litros</li><li>Potencia: 350.0</li><li>Dimensiones del producto: largo x ancho x alto<span style=\"white-space:pre\">	</span>12 x 11.6 x 30.8 centÃ­metros</li></ul>', 699.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, 7, 41, 'PELIPW000000005', 'LICUADORA PHILIPS WALITA RI-2103/92', 'PELIPW000000005', NULL, 339.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, 7, 41, 'PELIPT000000029', 'LICUADORA PHILIPS HR-2134/50 AZUL', 'PELIPT000000029', '<p>Potente tecnologÃ­a de cuchillas ProBlend 6<br>La licuadora de la colecciÃ³n Viva dispone de un motor de 700 W, una jarra de 2,4 litros y una cuchilla ProBlend 6, los que se combinan para obtener resultados perfectos al momento de preparar batidos y comidas. PodrÃ¡ licuar cualquier cosa de forma sencilla.<br>Triple acciÃ³n de 6 cuchillas, motor de 700 W y jarra</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Philips<br></li><li>Fabricado en: Brasil</li><li>AlimentaciÃ³n: 700 W</li><li>ProBlend 6</li><li>Jarra de 2,4 l</li><li>Cantidad de posiciones de velocidad: 5</li></ul>', 499.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, 7, 41, 'PEMIPT000000010', 'MIXER PHILIPS HR-2626/80 600W', 'PEMIPT000000010', '<p>Licue, cierre y listo.<br>La nueva licuadora manual de la colecciÃ³n ProMix Viva con su gran variedad de accesorios lo ayuda a crear un sinfÃ­n de comidas y aperitivos saludables.<br>Tan solo mezcle deliciosos ingredientes para disfrutar en cualquier parte.</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Philips<br></li><li>Fabricado en Brasil</li><li>Potencia de licuado de 600 W</li><li>SpeedTouch con guÃ­a de velocidad</li><li>FÃ¡cil de limpiar</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Accesorios</span></h4><ul><li>Batidor<br></li><li>Vaso portÃ¡til (500 ml)</li><li>Picadora de 350 ml</li></ul>', 559.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, 7, 41, 'PEMUPW000000001', 'MULTIPROCESADOR PHILIPS WALITA RI7630/90', 'PEMUPW000000001', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Philips<br></li><li>Viva Collection Procesador de alimentos El procesador de alimentos Philips 2 en 1 incluye un recipiente de la picadora grande, una jarra de la licuadora de 1,5 L y dos inserciones de disco de acero inoxidable. Prepare fÃ¡cilmente comidas caseras para toda la familia</li><li>MÃ¡xima variedad con el mÃ­nimo esfuerzo</li><li>TecnologÃ­a PowerChop incorporada: para resultados superiores</li><li>600 W</li><li>2 velocidades + pulsador</li><li>MÃ¡s de +21 funciones</li><li>TecnologÃ­a PowerChop para un picado superior</li><li>La tecnologÃ­a PowerChop es una combinaciÃ³n de la forma de la cuchilla, el Ã¡ngulo de corte y el recipiente interno que proporciona un picado superior tanto en ingredientes blandos como duros. TambiÃ©n, es perfecta para preparar purÃ©s y mezclar masas para tartas.</li><li>2 posiciones de velocidad y pulsador para un control mÃ¡ximo</li><li>Para obtener los mejores resultados, utilice la posiciÃ³n de velocidad baja (velocidad 1) para montar nata y batir huevos. La posiciÃ³n de velocidad mÃ¡s alta (velocidad 2) es adecuada para picar cebolla y carne, mezclar sopas y batidos o picar en rodajas y tiras, rallar o raspar verduras.</li><li>Inserciones de disco de acero inoxidable para rebanar y rallar</li><li>Seleccione el disco de acero inoxidable adecuado para preparar su ingrediente favorito y empÃºjelo en el soporte de discos. Este aparato se ha probado ampliamente para proporcionarle los mejores resultados de corte.</li><li>Acoplamientos de ajuste y herramientas para facilitar el ensamblado</li><li>Este procesador de alimentos de Philips se diseÃ±Ã³ para un montaje de forma muy sencilla. Sus piezas simplemente encajan entre sÃ­ gracias al diseÃ±o de los accesorios con una forma que se ajusta inteligentemente.</li><li>La base sÃ³lida se mantiene estable incluso cuando amasas</li><li>La base sÃ³lida se mantiene estable incluso cuando amasas</li><li>Accesorios aptos para lavaplatos</li><li>Todos los accesorios del procesador de alimentos de Philips incluidos en la caja se pueden lavar en el lavaplatos.</li><li>Motor de 600 W para un procesado potente</li><li>Los accesorios facilitan la ejecuciÃ³n de mÃ¡s de 21 funciones</li><li>La jarra de la licuadora permite batir, triturar y mezclar</li></ul>', 529.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, 1, 47, 'LMPISY000000006', 'PARLANTE SONY SRS-XB10/GC VERDE', 'LMPISY000000006', '<p>Deja que la mÃºsica dance cobre vida con EXTRA BASSâ„¢<br>Anima el ambiente con EXTRA BASSâ„¢1. Un radiador pasivo trabaja con el parlante monoaural DiseÃ±o resistente al agua<br>Tanto si quieres disfrutar de tu mÃºsica en interiores como al aire libre, podrÃ¡s relajarte sabiendo que el parlante inalÃ¡mbrico IPX5 es resistente al aguapara potenciar los tonos bajos y mejorar los graves, a pesar del tamaÃ±o compacto.<br>Conectividad BluetoothÂ® sencilla con NFC One-touch<br>Conecta tu smartphone con NFC One-Touch y deja que el ritmo fluya en un instante.</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>EXTRA BASS para un sonido profundo e impactante</li><li>DiseÃ±o compacto y portÃ¡til</li><li>Hasta 16 horas de duraciÃ³n de la baterÃ­a</li><li>Resistente al agua para un uso sin preocupaciones</li><li>Sonido One-Touch con la tecnologÃ­a BluetoothÂ® y NFCâ„¢</li><li>TIPO DE PARLANTE: rango completo</li><li>Parlante mono: 46 mm</li><li>DURACIÃ“N DE LA BATERÃA: Aprox. 16 h</li><li>Miniconector estÃ©reo (ENTRADA)</li><li>20 Hz - 20.000 Hz (Frecuencia de muestreo de 44,1 kHz)</li></ul>', 489.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, 1, 47, 'LMPISYNE0000006', 'PARLANTE SONY SRS-XB10BC NEGRO', 'LMPISYNE0000006', '<h4><span style=\"font-size: 14px;\">Deja que la mÃºsica dance cobre vida con EXTRA BASSâ„¢</span><br></h4><p>Anima el ambiente con EXTRA BASSâ„¢1. Un radiador pasivo trabaja con el parlante monoaural DiseÃ±o resistente al agua<br>Tanto si quieres disfrutar de tu mÃºsica en interiores como al aire libre, podrÃ¡s relajarte sabiendo que el parlante inalÃ¡mbrico IPX5 es resistente al aguapara potenciar los tonos bajos y mejorar los graves, a pesar del tamaÃ±o compacto.<br>Conectividad BluetoothÂ® sencilla con NFC One-touch<br>Conecta tu smartphone con NFC One-Touch y deja que el ritmo fluya en un instante.</p><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"></h4><div><br></div><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Especificaciones tÃ©cnicas</span></h4><ul><li>Marca: Sony<br></li><li>EXTRA BASS para un sonido profundo e impactante</li><li>DiseÃ±o compacto y portÃ¡til</li><li>Hasta 16 horas de duraciÃ³n de la baterÃ­a</li><li>Resistente al agua para un uso sin preocupaciones</li><li>Sonido One-Touch con la tecnologÃ­a BluetoothÂ® y NFCâ„¢</li><li>TIPO DE PARLANTE: rango completo</li><li>Parlante mono: 46 mm</li><li>DURACIÃ“N DE LA BATERÃA: Aprox. 16 h</li><li>Miniconector estÃ©reo (ENTRADA)</li><li>20 Hz - 20.000 Hz (Frecuencia de muestreo de 44,1 kHz)</li></ul>', 489.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, 1, 47, 'LMPISYRJ0000006', 'PARLANTE SONY SRS-XB10/RC ROJO', 'LMPISYRJ0000006', '<p>Deja que la mÃºsica dance cobre vida con EXTRA BASSâ„¢</p><p>Anima el ambiente con EXTRA BASSâ„¢1. Un radiador pasivo trabaja con el parlante monoaural DiseÃ±o resistente al agua<br>Tanto si quieres disfrutar de tu mÃºsica en interiores como al aire libre, podrÃ¡s relajarte sabiendo que el parlante inalÃ¡mbrico IPX5 es resistente al aguapara potenciar los tonos bajos y mejorar los graves, a pesar del tamaÃ±o compacto.<br>Conectividad BluetoothÂ® sencilla con NFC One-touch<br>Conecta tu smartphone con NFC One-Touch y deja que el ritmo fluya en un instante.</p><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"></h4><div><br></div><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Especificaciones tÃ©cnicas</span></h4><ul><li>Marca: Sony<br></li><li>EXTRA BASS para un sonido profundo e impactante</li><li>DiseÃ±o compacto y portÃ¡til</li><li>Hasta 16 horas de duraciÃ³n de la baterÃ­a</li><li>Resistente al agua para un uso sin preocupaciones</li><li>Sonido One-Touch con la tecnologÃ­a BluetoothÂ® y NFCâ„¢</li><li>TIPO DE PARLANTE: rango completo</li><li>Parlante mono: 46 mm</li><li>DURACIÃ“N DE LA BATERÃA: Aprox. 16 h</li><li>Miniconector estÃ©reo (ENTRADA)</li><li>20 Hz - 20.000 Hz (Frecuencia de muestreo de 44,1 kHz)</li></ul>', 489.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, 1, 47, 'LMPISYAZ0000006', 'PARLANTE SONY SRS-XB10/LC AZUL', 'LMPISYAZ0000006', '<h4><span style=\"font-size: 14px;\">Deja que la mÃºsica dance cobre vida con EXTRA BASSâ„¢</span><br></h4><p>Anima el ambiente con EXTRA BASSâ„¢1. Un radiador pasivo trabaja con el parlante monoaural DiseÃ±o resistente al agua<br>Tanto si quieres disfrutar de tu mÃºsica en interiores como al aire libre, podrÃ¡s relajarte sabiendo que el parlante inalÃ¡mbrico IPX5 es resistente al aguapara potenciar los tonos bajos y mejorar los graves, a pesar del tamaÃ±o compacto.<br>Conectividad BluetoothÂ® sencilla con NFC One-touch<br>Conecta tu smartphone con NFC One-Touch y deja que el ritmo fluya en un instante.</p><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"></h4><div><br></div><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Especificaciones tÃ©cnicas</span></h4><ul><li>Marca: Sony<br></li><li>EXTRA BASS para un sonido profundo e impactante</li><li>DiseÃ±o compacto y portÃ¡til</li><li>Hasta 16 horas de duraciÃ³n de la baterÃ­a</li><li>Resistente al agua para un uso sin preocupaciones</li><li>Sonido One-Touch con la tecnologÃ­a BluetoothÂ® y NFCâ„¢</li><li>TIPO DE PARLANTE: rango completo</li><li>Parlante mono: 46 mm</li><li>DURACIÃ“N DE LA BATERÃA: Aprox. 16 h</li><li>Miniconector estÃ©reo (ENTRADA)</li><li>20 Hz - 20.000 Hz (Frecuencia de muestreo de 44,1 kHz)</li></ul>', 489.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `products` (`id`, `subcategory_id`, `brand_id`, `sku`, `name`, `slug`, `description`, `price`, `offer_price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(680, 1, 47, 'LMPISYAM0000006', 'PARLANTE SONY SRS-XB10/YC AMARILLO', 'LMPISYAM0000006', '<h4><span style=\"font-size: 14px;\">Deja que la mÃºsica dance cobre vida con EXTRA BASSâ„¢</span><br></h4><p>Anima el ambiente con EXTRA BASSâ„¢1. Un radiador pasivo trabaja con el parlante monoaural DiseÃ±o resistente al agua<br>Tanto si quieres disfrutar de tu mÃºsica en interiores como al aire libre, podrÃ¡s relajarte sabiendo que el parlante inalÃ¡mbrico IPX5 es resistente al aguapara potenciar los tonos bajos y mejorar los graves, a pesar del tamaÃ±o compacto.<br>Conectividad BluetoothÂ® sencilla con NFC One-touch<br>Conecta tu smartphone con NFC One-Touch y deja que el ritmo fluya en un instante.</p><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"></h4><div><br></div><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Especificaciones tÃ©cnicas</span></h4><ul><li>Marca: Sony<br></li><li>EXTRA BASS para un sonido profundo e impactante</li><li>DiseÃ±o compacto y portÃ¡til</li><li>Hasta 16 horas de duraciÃ³n de la baterÃ­a</li><li>Resistente al agua para un uso sin preocupaciones</li><li>Sonido One-Touch con la tecnologÃ­a BluetoothÂ® y NFCâ„¢</li><li>TIPO DE PARLANTE: rango completo</li><li>Parlante mono: 46 mm</li><li>DURACIÃ“N DE LA BATERÃA: Aprox. 16 h</li><li>Miniconector estÃ©reo (ENTRADA)</li><li>20 Hz - 20.000 Hz (Frecuencia de muestreo de 44,1 kHz)</li></ul>', 489.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, 1, 47, 'LMPISYW00000009', 'PARLANTE SONY SRS-XB21/WC BLANCO', 'LMPISYW00000009', '<p>Disfruta al mÃ¡ximo tu fiesta con el parlante inalÃ¡mbrico portÃ¡til SRS-XB21. Da a tu mÃºsica un impulso extra con Party Booster, el modo de sonido LIVE y las nuevas luces lineales.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Sonido EXTRA BASSâ„¢ con modo de sonido LIVE</li><li>Efectos de sonido con Party Booster</li><li>Anima tu fiesta con llamativas luces</li><li>A prueba de agua y al polvo (calificaciÃ³n IP67)</li><li>TIPO DE PARLANTE : Gama amplia</li><li>TAMAÃ‘O DEL PARLANTE: 42 mm</li><li>DURACIÃ“N DE LA BATERÃA: Aprox. 12 horas (modo estÃ¡ndar/iluminaciÃ³n apagada) Aprox. 10 horas (modo EXTRA BASS/iluminaciÃ³n encendida)</li><li>TERMINALES DE ENTRADA Y SALIDA: Miniconector estÃ©reo (entrada), micro USB</li><li>ALCANCE DE TRANSMISIÃ“N DE FRECUENCIA: 20 Hz - 20.000 Hz (muestreo de 44,1 kHz)</li></ul>', 949.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, 1, 47, 'LMPISYL00000009', 'PARLANTE SONY SRS-XB21/LC AZUL', 'LMPISYL00000009', '<p>Disfruta al mÃ¡ximo tu fiesta con el parlante inalÃ¡mbrico portÃ¡til SRS-XB21. Da a tu mÃºsica un impulso extra con Party Booster, el modo de sonido LIVE y las nuevas luces lineales.</p><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Especificaciones tÃ©cnicas</span></h4><ul><li>Marca: Sony<br></li><li>Sonido EXTRA BASSâ„¢ con modo de sonido LIVE</li><li>Efectos de sonido con Party Booster</li><li>Anima tu fiesta con llamativas luces</li><li>A prueba de agua y al polvo (calificaciÃ³n IP67)</li><li>TIPO DE PARLANTE : Gama amplia</li><li>TAMAÃ‘O DEL PARLANTE: 42 mm</li><li>DURACIÃ“N DE LA BATERÃA: Aprox. 12 horas (modo estÃ¡ndar/iluminaciÃ³n apagada) Aprox. 10 horas (modo EXTRA BASS/iluminaciÃ³n encendida)</li><li>TERMINALES DE ENTRADA Y SALIDA: Miniconector estÃ©reo (entrada), micro USB</li><li>ALCANCE DE TRANSMISIÃ“N DE FRECUENCIA: 20 Hz - 20.000 Hz (muestreo de 44,1 kHz)</li></ul>', 949.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, 1, 47, 'LMPISYB00000009', 'PARLANTE DE MUSICA SONY NEGRO SRS-XB21/BC', 'LMPISYB00000009', '<p>Internamente, el Sony SRS-XB21 se compone de dos altavoces de 42 mm, que son mÃ¡s o menos del mismo tamaÃ±o que los vistos en auriculares de tamaÃ±o completo. Estos altavoces yacen dentro de una carcasa alargada con dimensiones de 193 mm x 72 mm x 65 mm (8 x 3 x 3 pulgadas), por lo que es suficientemente compacto como para ser llevado en el bolsillo. Gracias a este tamaÃ±o tan pequeÃ±o el dispositivo cuenta con un peso de sÃ³lo 530 gramos, un detalle realmente importante, que destaca por ser uno de los altavoces portÃ¡tiles mÃ¡s livianos del mercado en la actualidad.</p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Sony<br></li><li>Modelo: SRS-XB21</li><li>Tipo: Altavoz bluetooth</li><li>Dimensiones: 193 mm x 72 mm x 65 mm</li><li>Peso: 530 g</li><li>Colores disponibles: Altavoz Sony SRS-XB21 Rojo (Sony SRSXB21R) / Altavoz Sony SRS-XB21 Negro (Sony SRSXB21B) / Altavoz Sony SRS-XB21 Azul (Sony SRSXB21L)</li><li>Conectividad NFC: SÃ­</li><li>Conectividad Bluetooth: SÃ­, versiÃ³n 4.2, 2.4 Ghz</li><li>Codecs de Bluetooth: SBC / AAC / LDAC</li><li>Rango de funcionamiento del Bluetooth: 32 pies aproximadamente</li><li>Rango de frecuencia del Bluetooth: 0 Hzâ€“20,000 Hz (Muestreo de 44.1 kHz)</li><li>Perfiles de Bluetooth: A2DP / AVRCP / HSP / HFP / SPP</li><li>Conectores: 1x Entrada mini jack de 3,5mm, 1x micro USB</li><li>CertificaciÃ³n IP: IP67, a prueba de agua y polvo</li><li>AutonomÃ­a de la baterÃ­a: 12 horas (En modo normal con las luces LED apagadas)</li><li>Tiempo de carga: mÃ¡ximo 2 horas</li><li>Otras funciones: EXTRA BASS.</li><li>Modo Live Sound: Control del dispositivo mediante Sony Music Center APP</li><li>A prueba de agua: A prueba de polvo</li><li>Inoxidable: Modo Party Chain, para sincronizar varios altavoces</li><li>Altavoces: 2 altavoces de 2.28 pulgadas (58 mm)</li><li>Contenido del empaque: 1x Altavoz Sony SRS-XB41, 1x Cargador.</li></ul>', 949.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(684, 1, 47, 'LMPISYR00000009', 'PARLANTE DE MUSICA SONY ROJO SRS-XB21/RC', 'LMPISYR00000009', NULL, 949.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(685, 1, 20, 'LMPIHV000000012', 'PARLANTE HAVIT M63 NEGRO / ALTAVOZ PORTATIL / BLUETOOTH', 'LMPIHV000000012', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Havit<br></li><li>Modelo: M63</li><li>Tipos de parlante: MINI - INALAMBRICO</li><li>Incluye baterÃ­a recargable: No</li><li>Con Bluetooth: SÃ­<span style=\"white-space:pre\">	</span></li><li>Tipos de parlante: MINI â€“ INALAMBRICO</li><li>Cantidad de parlantes: 4</li><li>Formato del parlante: OVALADO</li><li>Es portÃ¡til</li><li>Es inalÃ¡mbrico</li></ul>', 169.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(686, 1, 20, 'LMPIHVB00000019', 'PARLANTE HAVIT HV-SK79BT NEGRO / INALAMBRICO / ALTAVOZ BLUETOOTH', 'LMPIHVB00000019', NULL, 299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(687, 1, 20, 'LMPIHVB00000016', 'PARLANTE HAVIT M67 NEGRO / ALTAVOZ PORTATIL / BLUETOOTH', 'LMPIHVB00000016', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Havit<br></li><li>Modeloï¼šHV-M67</li><li>VersiÃ³n bluetooth:4.0</li><li>Rango de funcionamiento:10m</li><li>Salida:6w</li><li>Altavoz :50mm</li><li>Capacidad baterÃ­a:3.7v/1200mah</li><li>Tiempo de uso:6-7horas</li><li>Tiempo de reproducciÃ³n:6-7horas</li><li>Tiempo de carga:3.5h</li></ul>', 179.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, 1, 20, 'LMPIHVGR0000016', 'PARLANTE HAVIT M67 VERDE / ALTAVOZ PORTATIL / BLUETOOTH', 'LMPIHVGR0000016', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Havit<br></li><li>Modeloï¼šHV-M67</li><li>VersiÃ³n bluetooth:4.0</li><li>Rango de funcionamiento:10m</li><li>Salida:6w</li><li>Altavoz :50mm</li><li>Capacidad baterÃ­a:3.7v/1200mah</li><li>Tiempo de uso:6-7horas</li><li>Tiempo de reproducciÃ³n:6-7horas</li><li>Tiempo de carga:3.5h</li></ul>', 179.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(689, 1, 20, 'LMPIHVBG0000020', 'PARLANTE HAVIT E30 NEGRO CON GRIS / INALAMBRICO / ALTAVOZ BLUETOOTH', 'LMPIHVBG0000020', '<p>Altavoz Bluetooth con 30W de salida, IPX7 a prueba de agua, modo NFC y EQ E30 TWS.<br>Sonido envolvente de 360 Âº y bajos fuertes. Menos del 1% de distorsiÃ³n armÃ³nica, garantiza una mayor claridad y fidelidad. Sonido digital 3D integrado con tecnologÃ­a DSP para un rendimiento perfecto en cualquier entorno.<br>IPX7 a prueba de agua y a prueba de golpes. Con una clasificaciÃ³n de impermeabilidad IPX7, tiene una carcasa de goma duradera que se adapta a cualquier entorno. TecnologÃ­a de conexiÃ³n TWS, puede conectar de forma inalÃ¡mbrica dos altavoces E30.<br>Compatibilidad NFC. Conecta tu telÃ©fono inteligente con un solo toque. La baterÃ­a recargable de 5200mAh incorporada ofrece hasta 12-14 horas* de mÃºsica en volumen medio.</p><h4></h4><div><br></div><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>VersiÃ³n de Bluetooth: V4.2<br></li><li>Rango de alcance inalÃ¡mbrico: 10M (sin obstÃ¡culos)</li><li>Altavoz: 55mm * 2</li><li>Perfiles soportados: A2DP, AVRCP, HFP, HSP</li><li>SNR: â‰¥80DB</li><li>Respuesta de frecuencia: 80Hz ~ 20KHz</li><li>Voltaje de entrada: DC5V / 2A</li><li>Voltaje de salida: DC5V / 1A</li><li>Potencia de salida: 24W</li><li>Potencia mÃ¡xima: 30W</li><li>BaterÃ­a: 7.4V 2600mAH * 2</li><li>Tiempo de duraciÃ³n de la baterÃ­a: 12-14H (volumen medio)</li><li>Tiempo de carga: Sobre 4H</li><li>Entrada de audio: AUX, Bluetooth</li><li>Soporte: NFC, TWS, Siri, chat de voz</li><li>Material: PC + TPU + Tela</li><li>TamaÃ±o del producto: 213mm * 82mm * 81mm</li><li>Peso neto: 738g</li></ul>', 709.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, 1, 20, 'LMPIHVBL000014', 'PARLANTE HAVIT M16 AZUL / ALTAVOZ PORTATIL / BLUETOOTH', 'LMPIHVBL000014', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Marca: Havit<br></li><li>Color: Azul</li><li>Dos potentes controladores de 5W con sonido claro y puro, para ofrecer un amplio rango de sonido con graves profundos.</li><li>ConexiÃ³n inalÃ¡mbrica rÃ¡pida y estable a su telÃ©fono / tableta con un alcance de 10 m / 33 pies. Se conecta automÃ¡ticamente al</li><li>Recargable baterÃ­a de gran capacidad (2200mAh), garantiza entre 12 y 14 horas de reproducciÃ³n (con volumen 70%) y 500 horas de tiempo de espera.</li><li>Ambos tono y luz cambiarÃ¡n cuando cambie de modo, la alarma tambiÃ©n se activarÃ¡ cuando la baterÃ­a estÃ© baja. MicrÃ³fono incorporado ruido-eliminado se le hace manos libre.</li><li>Cubierto por una malla tejida suave que aporta elegancia, robustez y durabilidad. con un tacto muy suave y sensaciÃ³n de robustez, encaja perfectamente en el salÃ³n o en la oficina.</li><li>Peso del producto: 1.08 Libras</li><li>TecnologÃ­a de conectividad: Bluetooth, Bluetooth 4.2</li></ul>', 359.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, 1, 47, 'LMPISYW00000006', 'PARLANTE SONY SRS-XB10/WC BLANCO', 'LMPISYW00000006', NULL, 489.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(692, 25, 53, 'LHPCCB000000006', 'PARRILLA CHAR BROIL FIREWOOD AL CARBON 08301390-26', 'LHPCCB000000006', NULL, 5379.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(693, 25, 53, 'LHPCCB000000005', 'PARRILLA CHAR BROIL BARREL PORTATIL A CARBON 17402057', 'LHPCCB000000005', NULL, 1699.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(694, 25, 53, 'LHPGCH000000005', 'PARRILLA THERMOS CLASSIC 2 A GAS - CHARBROIL 461674019', 'LHPGCH000000005', NULL, 2290.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(695, 7, 6, 'PEPLBD000000001', 'PLANCHA BLACK & DECKER IRB-D10', 'PEPLBD000000001', NULL, 199.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(696, 7, 41, 'PEPLPT000000013', 'PLANCHA PHILIPS GC-501 1500W/CELESTE/VAPORIZADOR', 'PEPLPT000000013', NULL, 639.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(697, 7, 41, 'PEPLPT000000027', 'PLANCHA PHILIPS GC-1740/20 2000W/ CELESTE/ VAPOR', 'PEPLPT000000027', NULL, 189.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(698, 7, 41, 'PEPLPT000000011', 'PLANCHA PHILIPS GC4527/00', 'PEPLPT000000011', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Plancha con 220 g de chorro de vapor contra las arrugas rebeldes y 2600 W para un calentamiento rÃ¡pido.<br></li><li>Con depÃ³sito de cal para una potencia de vapor mÃ¡s duradera; funciÃ³n de autolimpieza para una suela mÃ¡s limpia y mejores resultados de planchado.</li><li>Suela de la plancha T-IonicGlide con una mayor capacidad de deslizamiento al planchar.</li><li>FunciÃ³n de apagado automÃ¡tico para mayor seguridad.</li><li>Contenido del envÃ­o: plancha Philips GC4527/00 Azur Performer Plus, color negro.</li><li>Vapor: 50 g/min, golpe de vapor: 220 g</li><li>Suela T-ionicGlide</li><li>Apagado de seguridad + antisarro</li><li>2600 watts</li></ul>', 549.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(699, 5, 18, 'PEPPGA000000002', 'PLANCHA DE PELO GAMA CP1 NOVA TITANIUM', 'PEPPGA000000002', NULL, 729.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(700, 19, 44, 'LBRESG300000014', 'REFRIGERADOR SAMSUNG RT-32K500JS8/Z', 'LBRESG300000014', NULL, 4949.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(701, 19, 44, 'LBRESG300000008', 'REFRIGERADOR SAMSUNG RT-32K5730SL', 'LBRESG300000008', NULL, 5969.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(702, 19, 44, 'LBRESG600000002', 'REFRIGERADOR SAMSUNG RS-65R5691M9/Z', 'LBRESG600000002', '<p>MÃ¡s espacio fresco en el interior con un estilo impecable en el exterior<br>Cambia de forma flexible entre 4 modos de enfriamiento<br>MantÃ©n tus alimentos siempre frescos, independientemente de dÃ³nde los coloques</p><h4></h4><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>MARCA: SAMSUNG<br></li><li>Plata 602 LT&nbsp; 3 puertas</li><li>Capacidad total en bruto (litros): 650 â„“</li><li>Capacidad neta total (litros): 602 â„“</li><li>Compresor Digital Inverter</li></ul>', 13999.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(703, 19, 44, 'LBRESG400000006', 'REFRIGERADOR SAMSUNG RT-43K6231SL/Z', 'LBRESG400000006', NULL, 5999.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(704, 10, 29, 'LMDVLG000000001', 'REPRODUCTOR DVD LG DP-132', 'LMDVLG000000001', NULL, 299.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(705, 7, 32, 'PESAMG000000001', 'SANDWICHERA MAGEFESA MGF-3140', 'PESAMG000000001', NULL, 169.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(706, 24, 23, 'LGTAHWGR00001', 'TABLET HUAWEI T3 10\"SPACE GRAY 16GB', 'LGTAHWGR00001', NULL, 1591.44, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(707, 22, 25, 'LMTVJV420000002', 'TELEVISOR JVC FHD ANDROID CHROMECAST 42\"', 'LMTVJV420000002', NULL, 2443.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(708, 22, 29, 'LMTVLG320000008', 'TELEVISOR LG 32\" LED 32LJ501B FHD', 'LMTVLG320000008', NULL, 1929.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(709, 22, 29, 'LMTVLG430000005', 'TELEVISOR LG 43\" LED 43LJ5000 FHD', 'LMTVLG430000005', NULL, 3019.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(710, 22, 29, 'LMTVLG490000014', 'TELEVISOR LG 49\" LED 49LJ5100 FHD', 'LMTVLG490000014', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>LED Full HD de 1080p con Procesador Maestro de Color<br></li><li>CalificaciÃ³n ENERGY STARÂ®</li><li>Frecuencia de actualizaciÃ³n: 60 Hz</li><li>RetroiluminaciÃ³n: LED</li><li>Smart funcionalidad: no</li><li>Dimensiones: (43.6\" x 27.4\" x 8.2\" con soporte)</li><li>Entradas: 2 HDMI, 1 USB, 1 RF, 1 componente, compuesto de 1, 1 RS232 C (Mini Jack)</li></ul>', 3769.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(711, 22, 29, 'LMTVLG500000002', 'TELEVISOR LG 50\" 50UK6550PSB LED 4K SMART TVWEBOS HDR ACTIVE-ULTRA LUMINANCE', 'LMTVLG500000002', NULL, 4649.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(712, 22, 45, 'LMTVSKY32000002', 'TELEVISOR SKYWORTH 32\" 32E2 SMART LED', 'LMTVSKY32000002', NULL, 1427.04, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(713, 22, 45, 'LMTVSKY50000002', 'TELEVISOR SKYWORTH 50\" 50G2 SMART ANDROID LED 4K', 'LMTVSKY50000002', NULL, 4149.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(714, 22, 45, 'LMTVSKY40000003', 'TELEVISOR SKYWORTH 40\" 40TB7000 ANDROID 9', 'LMTVSKY40000003', '<p>Android real, True Smart. Sistemas operativos Android 9.0, con licencia y compatibles con Google.</p><p>Google Play Store, Google Play Games, Google Play Movies &amp; TV, Google Play Music YouTube preinstalado.</p><p>GarantÃ­a de 3 aÃ±os: todos los paneles Skyworth estÃ¡n cubiertos por nuestra garantÃ­a integral de 3 aÃ±os, lo que brinda tranquilidad al usuario final.</p><p>HDMI - (Interfaz multimedia de alta definiciÃ³n) es una interfaz de audio / video patentada para transferir datos de video sin comprimir y datos de audio digital comprimidos o sin comprimir desde un dispositivo fuente compatible con HDMI. Ofrece una imagen nÃ­tida y un sonido de alta calidad.</p><p>USB: el puerto USB permite conectar un disco duro, unidad flash u otro dispositivo de almacenamiento USB para ver archivos multimedia en la televisiÃ³n, tambiÃ©n se puede utilizar para conectar adaptadores inalÃ¡mbricos, etc.</p><p></p><p>DVB-T2 - Significa DifusiÃ³n de Video Digital: Terrestre de Segunda GeneraciÃ³n. Es el sistema de transmisiÃ³n digital terrestre mÃ¡s avanzado. El televisor incluye un sintonizador DVB-T2 y permite que los televisores reciban transmisiones terrestres tanto de definiciÃ³n estÃ¡ndar como de alta definiciÃ³n sin necesidad de utilizar un decodificador o receptor de televisiÃ³n de pago.</p><p><b style=\"color: inherit; font-family: inherit; font-size: 18px;\">Especificaciones tÃ©cnicas</b><br></p><ul><li>TamaÃ±o de pantalla: 40 \"<br></li><li>ResoluciÃ³n: 1980 x 1080</li><li>RelaciÃ³n de contraste dinÃ¡mico: 1200: 1</li><li>Brillo: 300 nit</li><li>MenÃº OSD: InglÃ©s</li><li>Tiempo de respuesta: 6.5ms</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Audio</span></h4><ul><li>Salida de sonido (RMS): 16W (L: 8W, R: 8W)<br></li><li>Tipo de altavoz: no desmontable, orientado hacia abajo</li><li>Dolby Audio; DTS TruSurround: SÃ­</li><li>Sintonizador / RadiodifusiÃ³n: Sintonizador analÃ³gico y digital.</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Conectividad</span></h4><ul><li>WiFi: incorporado<br></li><li>LAN: 1</li><li>Bluetooth: incorporado</li><li>Entrada HDMI: 2</li><li>USB: 2</li><li>Entrada de video compuesto (RCA): 1</li><li>Entrada de audio compuesto (RCA): 1</li><li>Entrada de RF (coaxial de 75 ohmios ): 1 x digital</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Android TV</span></h4><ul><li>Sistema operativo Android 9.0<br></li><li>Netflix, Showmax, DSTV Now</li><li>Tienda Google Play: SÃ­</li><li>Juegos de Google Play: SÃ­</li><li>PelÃ­culas y TV de</li><li>Google Play: SÃ­</li><li>MÃºsica de Google Play: SÃ­ - FunciÃ³n Bluetooth: SÃ­</li><li>FunciÃ³n de bÃºsqueda por voz : SÃ­ (Talk to TV - Asistente de Google / Amazon Alexa)</li><li>DiseÃ±o: Tipo de bisel: Delgado (pantalla infinita)</li></ul><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">CaracterÃ­sticas adicionales</span></h4><ul><li>DVB-T2<br></li><li>EPG: SÃ­</li><li>SubtÃ­tulo: SÃ­</li><li>PVR Por USB externo o HDD: SÃ­</li><li>Time shift: SÃ­</li><li>Chromecast integrado: SÃ­</li><li>Skyworth TV<br></li><li>Stand</li><li>Remote Control</li></ul>', 2429.04, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(715, 22, 45, 'LMTVSKY50000004', 'TELEVISOR SKYWORTH 50\" 50SUC93 ANDROID 10', 'LMTVSKY50000004', NULL, 3978.60, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(716, 22, 44, 'LMTVSG550000013', 'TELEVISOR SAMSUNG 55\" UN55RU7100GXZ LED/ 4K UHD/ SMART HUB/ ONE REMOTE', 'LMTVSG550000013', NULL, 5029.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(717, 22, 44, 'LMTVSG490000002', 'TELEVISOR SAMSUNG 49\" UN49M5000AGXZ FHD', 'LMTVSG490000002', NULL, 4069.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(718, 22, 44, 'LMTVSG430000005', 'TELEVISOR SAMSUNG 43\" UN43TU7090 LED CRYSTAL/ UHD/ 4K/ SMART TV 2020', 'LMTVSG430000005', NULL, 3559.80, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(719, 22, 44, 'LMTVSG430000006', 'TELEVISOR SAMSUNG 43\" T5202AGXZS', 'LMTVSG430000006', NULL, 3141.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(720, 22, 44, 'LMTVSG580000003', 'TELEVISOR SAMSUNG 58\" 4K 58MU6120 FLAT/SMART', 'LMTVSG580000003', NULL, 6869.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(721, 2, 50, 'LBVEWH000000002', 'VENTILADOR WESTINGHOUSE PARED W-72759 18\" 60W 220V MANUAL', 'LBVEWH000000002', NULL, 469.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(722, 2, 50, 'LBVEWH000000001', 'VENTILADOR WESTINGHOUSE INDUSTRIAL W-72899 TECHO 56\" 3 ASPAS', 'LBVEWH000000001', NULL, 469.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(723, 2, 32, 'LBAVMGT00000002', 'VENTILADOR MAGEFESA TORRE MGF-2380 45W', 'LBAVMGT00000002', NULL, 369.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(724, 23, 38, 'LGNLAM00000003', 'NINTENDO LITE AMARILLO HDHSYAZ', 'LGNLAM00000003', '<h4><b>TamaÃ±o</b></h4><p>Aproximadamente 3.6 pulgadas (9 cm) de alto, 8.2 pulgadas (20 cm) de ancho y 0.55 pulgadas (1.4 cm) de largo<br>*El largo desde la punta de las palancas hasta la punta de los botones ZL y ZR es de 1.12 pulgadas (2.84 cm).<br></p><h4><b>Peso</b></h4><p>Aproximadamente 0.61 libras (277 g)</p><h4><b>Pantalla</b></h4><p>MultitÃ¡ctil capacitiva de 5.5 pulgadas (13.97 cm) con una resoluciÃ³n de 1280x720</p><h4><b>CPU/GPU</b></h4><p>Procesador NVIDIA Custom Tegra</p><h4><b>Almacenamiento</b></h4><p>32 GB de memoria interna, una porciÃ³n se reserva para los requerimientos del sistema. Los usuarios pueden ampliar fÃ¡cilmente la capacidad de almacenamiento usando tarjetas microSDHC o microSDXC hasta de 2TB (se venden por separado).</p><h4><b>ConexiÃ³n inalÃ¡mbrica</b></h4><p>Wi-Fi (IEEE 802.11 a/b/g/n/ac)<br>Bluetooth 4.1 / NFC (comunicaciÃ³n de campo cercano)</p><h4><b>Altavoces</b></h4><p>EstÃ©reo<br></p><h4><b>Botones</b></h4><p>Palanca izquierda<br>Palanca derecha<br>Botones A/B/X/Y/L/R/ZL/ZR/+/-<br>Cruz de control<br>BotÃ³n POWER<br>BotÃ³n de volumen<br>BotÃ³n HOME<br>BotÃ³n de captura</p><h4><b>Conector USB</b></h4><p>Conector USB Type-C<br>Utilizado Ãºnicamente para cargar la baterÃ­a</p><h4><b>Conector de audio</b></h4><p>Conector de 3.5 mm</p><h4><b>Ranura para tarjetas de juego</b></h4><p>Tarjetas de juego de Nintendo Switch</p><h4><b>Sensores</b></h4><p>AcelerÃ³metro y giroscopio</p><h4><b>Rango de operaciÃ³n</b></h4><p>41Â° - 95 Â°F (05Â° - 35 Â°C) / De 20 a 80 % de humedad</p><h4><b>BaterÃ­a interna</b></h4><p>BaterÃ­a de iones de litio / 3570mAh</p><h4><b>Ranura para tarjetas de juego</b></h4><p>NÃºmero de modelo: HDH-001<br>Aproximadamente 3 a 7 horas<br>*La duraciÃ³n de la baterÃ­a varÃ­a dependiendo del juego. Por ejemplo, el juego The Legend of Zeldaâ„¢: Breath of the Wild se puede usar por alrededor de 4 horas.</p><h4><b>Tiempo de carga</b></h4><p>Aproximadamente 3 horas<br>*Cuando se carga la consola en modo de espera.</p>', 2449.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(725, 23, 38, 'LGNLGR00000005', 'NINTENDO LITE GREY HDHSGAZAA', 'LGNLGR00000005', '<h4><b>TamaÃ±o</b></h4><p>Aproximadamente 3.6 pulgadas (9 cm) de alto, 8.2 pulgadas (20 cm) de ancho y 0.55 pulgadas (1.4 cm) de largo<br>*El largo desde la punta de las palancas hasta la punta de los botones ZL y ZR es de 1.12 pulgadas (2.84 cm).<br></p><h4><b>Peso</b></h4><p>Aproximadamente 0.61 libras (277 g)</p><h4><b>Pantalla</b></h4><p>MultitÃ¡ctil capacitiva de 5.5 pulgadas (13.97 cm) con una resoluciÃ³n de 1280x720</p><h4><b>CPU/GPU</b></h4><p>Procesador NVIDIA Custom Tegra</p><h4><b>Almacenamiento</b></h4><p>32 GB de memoria interna, una porciÃ³n se reserva para los requerimientos del sistema. Los usuarios pueden ampliar fÃ¡cilmente la capacidad de almacenamiento usando tarjetas microSDHC o microSDXC hasta de 2TB (se venden por separado).</p><h4><b>ConexiÃ³n inalÃ¡mbrica</b></h4><p>Wi-Fi (IEEE 802.11 a/b/g/n/ac)<br>Bluetooth 4.1 / NFC (comunicaciÃ³n de campo cercano)</p><h4><b>Altavoces</b></h4><p>EstÃ©reo<br></p><h4><b>Botones</b></h4><p>Palanca izquierda<br>Palanca derecha<br>Botones A/B/X/Y/L/R/ZL/ZR/+/-<br>Cruz de control<br>BotÃ³n POWER<br>BotÃ³n de volumen<br>BotÃ³n HOME<br>BotÃ³n de captura</p><h4><b>Conector USB</b></h4><p>Conector USB Type-C<br>Utilizado Ãºnicamente para cargar la baterÃ­a</p><h4><b>Conector de audio</b></h4><p>Conector de 3.5 mm</p><h4><b>Ranura para tarjetas de juego</b></h4><p>Tarjetas de juego de Nintendo Switch</p><h4><b>Sensores</b></h4><p>AcelerÃ³metro y giroscopio</p><h4><b>Rango de operaciÃ³n</b></h4><p>41Â° - 95 Â°F (05Â° - 35 Â°C) / De 20 a 80 % de humedad</p><h4><b>BaterÃ­a interna</b></h4><p>BaterÃ­a de iones de litio / 3570mAh</p><h4><b>Ranura para tarjetas de juego</b></h4><p>NÃºmero de modelo: HDH-001<br>Aproximadamente 3 a 7 horas<br>*La duraciÃ³n de la baterÃ­a varÃ­a dependiendo del juego. Por ejemplo, el juego The Legend of Zeldaâ„¢: Breath of the Wild se puede usar por alrededor de 4 horas.</p><h4><b>Tiempo de carga</b></h4><p>Aproximadamente 3 horas<br>*Cuando se carga la consola en modo de espera.</p>', 2449.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(726, 23, 38, 'LGNSNEO00000003', 'NINTENDO SWITCH NEON V2', 'LGNSNEO00000003', '<h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Consola Nintendo Switch</span>â„¢</h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">TamaÃ±o</span></h4><h4><p style=\"font-size: 14px;\">Aproximadamente 4 pulgadas (10.16 cm) de alto, 9.4 pulgadas (23.88 cm) de ancho y 0.55 pulgadas (1.4 cm) de largo (con los controles Joy-Con acoplados) *El largo desde la punta de las palancas hasta la punta de los botones ZL y ZR es de 1.12 pulgadas (2.84 cm).</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Peso</span></h4><h4><p style=\"font-size: 14px;\">Aproximadamente 0.66 libras (299 g)</p><p style=\"font-size: 14px;\">Aproximadamente 0.88 libras (399 g) cuando los controles Joy-Con estÃ¡n acoplados</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Pantalla</span></h4><h4><p style=\"font-size: 14px;\">MultitÃ¡ctil capacitiva de 6.2 pulgadas (15.75 cm) con una resoluciÃ³n de 1280 x 720</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">CPU/GPU</span></h4><h4><p style=\"font-size: 14px;\">Procesador NVIDIA Custom Tegra</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Almacenamiento</span></h4><h4><p style=\"font-size: 14px;\">32 GB de memoria interna, una porciÃ³n se reserva para los requerimientos del sistema. Los usuarios pueden ampliar fÃ¡cilmente la capacidad de almacenamiento usando tarjetas microSDHC o microSDXC hasta de 2TB (se venden por separado)</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">ConexiÃ³n inalÃ¡mbrica</span></h4><h4><p style=\"font-size: 14px;\">WiFi (IEEE 802.11 a/b/g/n/ac)(*)</p><p style=\"font-size: 14px;\">Bluetooth 4.1</p><p style=\"font-size: 14px;\">(*En el modo TV, la consola Nintendo Switch puede conectarse usando un adaptador LAN por cable, se vende por separado)</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Salida de video</span></h4><h4><p style=\"font-size: 14px;\">Hasta 1080p a travÃ©s de HDMI en el modo TV</p><p style=\"font-size: 14px;\">Hasta 720p en modo portÃ¡til y modo semiportÃ¡til a travÃ©s de la pantalla integrada</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Salida de audio</span></h4><h4><p style=\"font-size: 14px;\">Compatible con canales PCM 5.1 de salida lineal</p><p style=\"font-size: 14px;\">Salida a travÃ©s del puerto HDMI en el modo TV</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Altavoces</span></h4><h4><p style=\"font-size: 14px;\">EstÃ©reo</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Botones</span></h4><h4><p style=\"font-size: 14px;\">BotÃ³n POWER / BotÃ³n de volumen</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Conector de audio</span></h4><h4><p style=\"font-size: 14px;\">Conector de 3.5 mm</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Ranura para tarjetas de juego</span></h4><h4><p style=\"font-size: 14px;\">Tarjetas de juego de Nintendo Switch</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Ranura para tarjetas microSD</span></h4><h4><p style=\"font-size: 14px;\">Compatible con tarjetas microSD/microSDHC/microSDXC</p><p style=\"font-size: 14px;\">*Una vez insertada la tarjeta microSD es necesario realizar una actualizaciÃ³n de la consola.</p><p style=\"font-size: 14px;\"><span style=\"font-weight: 700; color: inherit; font-family: inherit; font-size: 18px;\">Sensores</span></p><p style=\"font-size: 14px;\">AcelerÃ³metro, giroscopio y sensor de brillo</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Rango de operaciÃ³n</span></h4><h4><p style=\"font-size: 14px;\">41Â° - 95 Â°F ( 05Â° - 35 Â°C) / De 20 a 80 % de humedad</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">BaterÃ­a interna</span></h4><h4><p style=\"font-size: 14px;\">BaterÃ­a de iones de litio / 4310mAh</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">DuraciÃ³n de la baterÃ­a</span></h4><h4><p style=\"font-size: 14px;\">Aproximadamente 2.5 a 6.5 horas</p><p style=\"font-size: 14px;\">**La duraciÃ³n de la baterÃ­a varÃ­a dependiendo el juego. Por ejemplo, el juego The Legend of Zeldaâ„¢: Breath of the Wild se puede usar por alrededor de 3 horas..</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Tiempo de carga</span></h4><h4><p style=\"font-size: 14px;\">Aproximadamente 3 horas</p><p style=\"font-size: 14px;\">*Cuando se carga la consola en modo de espera.</p><p style=\"font-size: 14px;\"><br></p><p style=\"font-size: 14px;\"></p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Base de Nintendo Switch</span></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">TamaÃ±o</span></h4><h4><p style=\"font-size: 14px;\"></p><p style=\"font-size: 14px;\">Aproximadamente 4.1 pulgadas (10.41 cm) de alto, 6.8 pulgadas (17.27 cm) de ancho y 2.12 pulgadas (5.38 cm) de largo</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Peso</span></h4><h4><p style=\"font-size: 14px;\">Aproximadamente 0.72 libras (326 g)</p></h4><h4 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(51, 51, 51);\"><span style=\"font-weight: 700;\">Puertos</span></h4><h4><p style=\"font-size: 14px;\">Puertos USB (compatibles con USB 2.0): 2 a los lados y 1 en la parte trasera</p><p style=\"font-size: 14px;\">Conector de la consola</p><p style=\"font-size: 14px;\">Puerto del adaptador de corriente</p><p style=\"font-size: 14px;\">Puerto HDMI</p></h4><h4 style=\"\"></h4>', 3490.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(727, 23, 47, 'LGP5SY1TB000001', 'PLAYSTATION 5 SONY CFI-1015A PS5', 'LGP5SY1TB000001', '<p>Experimenta una velocidad sorprendente con una SSD de velocidad ultrarrápida, una inmersión más profunda con soporte para respuesta háptica, gatillos adaptables y audio 3D*, además de una generación completamente nueva de juegos de PlayStation®.</p><h4><b>Velocidad sorprendente&nbsp;</b></h4><p>Disfruta de la potencia de una CPU, una GPU y una SSD personalizadas con E/S integradas que redefinirán lo que una consola PlayStation puede hacer.&nbsp;</p><h4><b>SSD de velocidad ultrarrápida</b></h4><p>Aprovecha al máximo tus sesiones de juego con tiempos de carga casi instantáneos para los juegos instalados en la PS5™.</p><h4><b>E/S integradas</b></h4><p>La integración personalizada de los sistemas de la consola PS5 les permite a los creadores obtener datos desde la SSD tan rápido que pueden diseñar juegos de maneras que antes no eran posibles.</p><h4><b>Asómbrate con los increíbles gráficos y descubre las nuevas funciones de PS5.</b></h4><p><b>Trazado de rayos</b></p><p>Sumérgete en mundos con un nuevo nivel de realismo a medida que los rayos de luz se simulan de manera individualizada, lo que crea sombras y reflejos realistas en los juegos de PS5 compatibles.</p><p><b>Juegos para televisores 4K</b></p><p>Juega tus títulos de PS5 favoritos en tu impresionante televisor 4K.</p><p><b>Hasta 120 fps con salida de 120 Hz</b></p><p>Disfruta de una frecuencia de imagen alta y fluida de hasta 120 fps para los juegos compatibles , con soporte para salida de 120 Hz en pantallas 4K.</p><p><b>Tecnología HDR</b></p><p>En televisores HDR, los juegos compatibles con la PS5 se ven en una gama de colores increíblemente intensos y realistas.</p><p><b>Compatibilidad con 8K</b></p><p>La consola PS5 es compatible con pantallas 8K mediante la compatibilidad con HDMI 2.1.</p><h4><b>Retrocompatibilidad</b></h4><p>Disfruta de un catálogo retrocompatible de juegos de PS4™ en tu consola PS5.</p><h4><b>Mejoras para juegos</b></h4><p>Disfruta de frecuencias de imágenes más rápidas y fluidas en juegos específicos de PS4 y PS VR.</p><h4><b>Actualiza tus juegos de PS4 a versiones digitales de PS5</b></h4><p>La consola PS5 les ofrece a los distribuidores de juegos la capacidad de permitirles a los jugadores actualizar las versiones en disco y digitales de sus juegos de PS4 a juegos digitales de PS5.</p><h4><b>Integración de PlayStation®VR</b></h4><p>Conecta tu PlayStation VR a tu consola PS5 para disfrutar de los juegos de PS VR compatibles. Para configurar tu PS VR con la consola PS5, necesitarás la PlayStation Camera para PS4 y un adaptador para PlayStation Camera (no se requiere una compra).</p><hr><p><b style=\"color: inherit; font-family: inherit; font-size: 18px;\">Respuesta háptica</b><br></p><p>Experimenta la respuesta háptica mediante el control inalámbrico DualSense en determinados títulos de PS5 y siente los efectos y el impacto de tus acciones en el juego mediante la respuesta háptica sensorial.</p><h4><b>Gatillos adaptables</b>&nbsp;&nbsp;</h4><p>Conoce los gatillos adaptables envolventes, los cuales contienen niveles de resistencia que simulan el impacto físico de las actividades dentro del juego en determinados títulos de PS5.</p><hr><h4><b>Blu-ray™ 4K Ultra HD</b></h4><p>Ve discos Blu-ray 4K en tu increíble televisor 4K con la consola PS5 (se excluye la PS5 edición digital).</p><h4><b>Transmisión de entretenimiento en 4K</b></h4><p>Transmite entretenimiento en 4K desde tus aplicaciones compatibles favoritas en PS5 con tu televisor 4K.</p><h4><b>Crear/compartir contenido</b></h4><p>Crea capturas de pantalla y videos de tus juegos. Compártelos con otros jugadores en PlayStation Network o en aplicaciones de redes sociales específicas.</p><h4></h4>', 9769.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(728, 6, 35, 'MK0000000000001', 'COLCHON INFANTIL MAXIKING 100x129x24CM', 'MK0000000000001', NULL, 1815.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(729, 6, 35, 'MK0000000000002', 'SOMIER INFANTIL MAXIKING 100x129x24CM', 'MK0000000000002', NULL, 854.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(730, 6, 35, 'MK0000000000003', 'RESPALDO INFANTIL MAXIKING 100x200CM', 'MK0000000000003', NULL, 1019.01, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(731, 3, 8, 'LBCEBO600000003', 'COCINA BOSCH ENCIMERA PGH6B5B90 60CM INOX A GAS 4 Q.', 'LBCEBO600000003', '<p>Placa de gas 60 cm Acero</p><p>Cuatro fuegos con potencias que oscilan entre los 1kW hasta llegar a los 3,3kW que tiene el Wok. Parrillas de hierro fundido con mayor estabilidad (no aptas para lavavajillas) y un diseÃ±o en acero inoxidable que llevarÃ¡ a tu nueva cocina la elegancia pura de Bosch. Esto es lo que te ofrece la placa de gas PGH6B5B90.<br></p><p>Placa de gas en acero inoxidable: alta calidad y diseÃ±o que te permitirÃ¡n disfrutar de la cocciÃ³n:<br></p><p>Quemador Wok: para cocinar con una potencia de hasta 3,3 kW.<br></p><p>Parrillas de hierro fundido continuas: estabilidad mÃ¡xima.<br></p><p>Elegante diseÃ±o en acero inoxidable.<br></p><p>Mandos ergonÃ³micos para un manejo sencillo y preciso.<br></p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Fuente energÃ©tica: Gas<br></li><li>Control e indicadores: Mandos en forma de espada<br></li><li>CaracterÃ­sticas: Quemador Wok<br></li><li>Energy efficiency of hob: 56,3</li><li>Longitud del cable de alimentaciÃ³n elÃ©ctrica (cm): 100<br></li><li>Fuente energÃ©tica: Gas<br></li><li>Frecuencia (Hz): 50; 60<br></li><li>ConexiÃ³n de gas: A la derecha, detrÃ¡s<br></li><li>Potencia de conexiÃ³n de gas (W): 7.800<br></li><li>Color: Acero inoxidable<br></li><li>Modelo: PGH6B5B90<br></li><li>Marca: Bosch</li></ul><p><b>Medidas:</b> 4.5 x 58.2 x 52 cm<br></p>', 2299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(732, 3, 14, 'LBCEDA600000002', 'COCINA ENCIMERA DAKO GLASS 4H NEGRO 300000655', 'LBCEDA600000002', NULL, 1299.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(733, 3, 14, 'LBCEDA600000001', 'COCINA ENCIMERA DAKO GLASS 5H NEGRO 300000656', 'LBCEDA600000001', '<p>Cocinas Dako Cooktop (encimeras), con diseÃ±o moderno, practico y sofisticado, cuenta con encendido super automÃ¡tico desde perilla, parillas de hierro fundido firmes, seguras y duraderas, mesa completa de vidrio templado, harÃ¡ que tu cocina sea mucho mas hermosa y sofisticada, con Kit de conversiÃ³n para gas domiciliario, origen Brasil.<br></p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Apta para gas de garrafa (GLP) , convertible a gas domiciliario (GNC)<br></li><li>Se puede solicitar la conversiÃ³n antes de realizar la entrega</li><li>Tipo de encendido: ElÃ©ctrico</li><li>Acabado de mesa: Vidrio templado</li><li>Parrillas de hierro fundido</li><li>Quemador Triple llama</li><li>Potencia total de la mesa: 11,4 KW</li><li>Cuenta con Kit conversiÃ³n de gas</li><li>Perillas extraÃ­bles</li><li>Voltaje 110/220 V</li><li>Origen: Brasil</li></ul><p><b>Medidas en cm(alto x ancho x profundidad):</b>11.8x68.5x46<br></p>', 1499.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(734, 3, 12, 'LBHOCO000000001', 'HORNO A GAS CONTINENTAL OC8GP 60CM/ GRILL/ 73L', 'LBHOCO000000001', '<p>El horno a gas con parrilla y temporizador OC8GP - Continental tiene una capacidad de 73 litros para facilitar la preparaciÃ³n de sus recetas favoritas.</p><p>El horno a gas OC8GP tiene un temporizador que emite una seÃ±al audible al final de la preparaciÃ³n, de acuerdo con el tiempo programado. Y con Grill, que hace que sus platos estÃ©n dorados y permite recetas crujientes y sabrosas.</p><h4><b>Dimensiones:</b></h4><ul><li>Ancho: 595mm</li><li>Altura: 595mm</li><li>Profundidad: 575mm</li><li>Peso: 28,4 Kg</li></ul><h4><b>Capacidad de 73 litros:</b></h4><p>Prepare recetas de tamaÃ±o familiar con todo el espacio que necesita.</p><h4><b>Temporizador:</b></h4><p>No mÃ¡s preocupaciones para aquellos que realizan mÃºltiples tareas, se emite una alerta audible tan pronto como finaliza el tiempo seleccionado en el temporizador.</p><h4><b>Parrilla:</b></h4><p>Agregue mÃ¡s frescura y sabor a los alimentos con la funciÃ³n Grill.</p><h4><b>Recubrimiento esmaltado:</b></h4><p>DiseÃ±ado para facilitar la limpieza diaria, el horno tiene un revestimiento liso y esmaltado que permite eliminar mÃ¡s fÃ¡cilmente las manchas y la grasa, evitando la acumulaciÃ³n de suciedad.</p>', 3599.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(735, 3, 8, 'LBHOBO000000005', 'HORNO ELECTRICO BOSCH HBA510BR0 60CM 3D MULTIFUNCION', 'LBHOBO000000005', '<p>FÃ¡cil limpieza del interior del horno gracias a su superficie lisa y sin recovecos.<br></p><h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Mandos giratorios<br></li><li>MultifunciÃ³n (5 funciones de cocciÃ³n): Sistema de calentamiento 3D Profesional, Calor superior e inferior, Grill con aire caliente, Grill de amplia superficie, Aire caliente suave<br></li><li>IluminaciÃ³n halÃ³gena en el interior del horno<br></li><li>FunciÃ³n Sprint de precalentamiento rÃ¡pido<br></li><li>IndicaciÃ³n de estado de calentamiento del horno<br></li><li>Capacidad: 71 litros<br></li><li>Consultar y respetar las dimensiones de encastre facilitadas en el manual de instalaciÃ³n<br></li><li>Accesorios: 1 x Parrilla profesional, 1 x Bandeja universal</li><li>Volumen Ãºtil (de cavidad) NUEVO (2010/30/CE): 71<br></li><li>MÃ©todo de cocciÃ³n: Aire caliente suave, Grill de amplia superficie, Hornear, Turbogrill, Turbohornear 3D<br></li><li>Prestaciones diferenciales: Precalentamiento rÃ¡pido<br></li><li>Clase de eficiencia energÃ©tica: A</li></ul><h4><b>Tipo de construcciÃ³n</b></h4><ul><li>Color del frontal: Acero inoxidable<br></li><li>Tipo de construcciÃ³n: Integrable<br></li><li>Material del panel de mandos: MetÃ¡lico<br></li><li>Tipo de control - 1Âª cavidad: Mando giratorio, redondo<br></li><li>Material de la puerta: Vidrio<br></li><li>Fuente energÃ©tica: ElÃ©ctrica<br></li><li>Tipo de instalaciÃ³n: Integrable<br></li><li>Apertura de la puerta: Abajo</li></ul><h4><b>Horno</b></h4><ul><li>TamaÃ±o bandeja grande: 1.290<br></li><li>MÃ¡xima temperatura turbo hornea (Â°C): 275<br></li><li>MÃ¡xima temperatura hornear (Â°C): 275<br></li><li>Medidas del producto: Grande<br></li><li>Temperatura puerta: 40 Â°C</li></ul><h4><b>Consumos</b></h4><ul><li>Clase de eficiencia energÃ©tica: A<br></li><li>Consumo de energÃ­a por ciclo convencional (2010/30/EC): 0,97<br></li><li>Energy consumption per cycle forced air convection (2010/30/EC): 0,81<br></li><li>TensiÃ³n (V): 220-240<br></li><li>Color: Negro<br></li><li>Modelo: HBA510BR0<br></li><li>Marca: Bosch</li></ul><p><b>Medidas:</b></p><p>Dimensiones del aparato (alto x ancho x fondo): 59.5 cm x 59.4 cm x 54.8 cm</p><p>Dimensiones de encastre (alto x ancho x fondo): 58.5 cm - 59.5 cm x 56 cm - 56.8 cm x 55&nbsp;</p>', 3999.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(736, 13, 44, 'LBLASGCS1500003', 'LAVADORA SG 15KG WA-15T5260BY/ZS CS/SILVER/ INVERTER', 'LBLASGCS1500003', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Capacidad de Lavado (kg): 15 kg</li><li>Color: Gris lavanda&nbsp;</li><li>Puerta: Negro</li><li>Bloqueo para NiÃ±os: SÃ­&nbsp;</li><li>Deep Softner: SÃ­&nbsp;</li><li>Tipo de Tambor: Tambor de diamante, segunda generaciÃ³n</li><li>Lavado Intensivo: SÃ­</li><li>Magic Dispenser: SÃ­</li><li>Magic Filter: SÃ­</li><li>Motor: DIT</li><li>Pulsador: TecnologÃ­a Wobble, segunda generaciÃ³n</li><li>Smart Check: SÃ­</li><li>Tapa de Cierre Suave: SÃ­</li><li>Ventana de Vidrio Templado: SÃ­</li><li>Niveles de Agua: 5 Niveles</li><li>Ahorro de Agua: SÃ­</li><li>Ropa de Cama: SÃ­</li><li>Prendas Delicadas: SÃ­</li><li>Eco Tub Clean: SÃ­</li><li>Cargas Pesadas: SÃ­</li><li>Jeans: SÃ­</li><li>Normal: SÃ­</li><li>Ciclos: 9</li><li>Lista de Opciones: Demora de finalizaciÃ³n</li><li>Lavado RÃ¡pido: SÃ­</li><li>Enjuague + Centrifugado: SÃ­</li><li>DimensiÃ³n Neto (AnxAlxP): 610 x 1105 x 675 mm</li><li>Peso Neto: 43 kg</li><li>DimensiÃ³n Bruto (AnxAlxP): 660 x 1175 x 740 mm</li><li>Peso Bruto: 49 kg</li></ul>', 4699.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(737, 19, 44, 'LBRESG300000013', 'REFRIGERADOR SAMSUNG  RT-29K500JS8/Z 300L/ INOX /NOFROST', 'LBRESG300000013', '<h4><b>Especificaciones tÃ©cnicas</b></h4><ul><li>Neto total (litros): 300 L</li><li>Neto para congelador (litros): 72 L</li><li>Neta para conservador (litros): 228 L</li><li>Bruto total (litros): 308 L</li><li>Bruto para congelador (litros): 79 L</li><li>Dimensiones netas (Ancho x Alto x Profundidad)(mm): 600 x 1635 x 672 mm</li><li>Ancho neto (mm): 600 mm</li><li>Altura neta con manijas (mm): 1635 mm</li><li>Profundidad neta con manijas (mm): 672 mm</li><li>Profundidad neta sin manijas (mm): 672 mm</li><li>Profundidad neta sin puerta (mm): 605 mm</li><li>Dimensiones del empaque (Ancho x Alto x Profundidad)(mm): 631x1698x699 mm</li><li>Ancho del embalaje (mm): 631 mm</li><li>Altura del embalaje (mm): 1698 mm</li><li>Profundidad del embalaje (mm): 699 mm</li><li>Peso neto (kg): 56 kg</li><li>Peso del embalaje (kg): 61 kg</li><li>20 / 40 / 40H (Contenedor): 37/75/75</li><li>No Frost: SÃ­</li><li>Multiflujo: SÃ­</li><li>Tipo de enfriamiento: Mono Cooling</li><li>Deodorizador: SÃ­</li><li>Cantidad de estantes (total): 3 estantes</li><li>Material del estante: Vidrio templado&nbsp;</li><li>Cantidad de cajones de frutas y verduras: 1 estante&nbsp;</li><li>Cantidad de compartimientos en la puerta: 4 estantes&nbsp;</li><li>Bandeja para huevos: SÃ­&nbsp;</li><li>Compartimiento fresco: SÃ­&nbsp;</li><li>Luz LED interna: SÃ­&nbsp;</li><li>Bandas grandes: SÃ­</li><li>Dispensador de hielo: Bandeja&nbsp;</li><li>Material del estante: PlÃ¡stico&nbsp;</li><li>Cantidad de estantes (total): 1 estante&nbsp;</li><li>Cantidad de compartimientos en la puerta: 2 estantes&nbsp;</li><li>Luz LED interna: SÃ­</li><li>Refrigerante: R-600a&nbsp;</li><li>Compresor: Digital Inverter</li><li>Manija de la puerta: Manija integrada&nbsp;</li><li>Color: Inox&nbsp;</li><li>Dispensador de agua: No</li><li>Clase de eficiencia energÃ©tica: A+</li><li> Consumo de energÃ­a: 315 kWh</li></ul>', 4479.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(738, 24, 44, 'LGCESGNE0000053', 'CELULAR SAMSUNG A12 NEGRO 128GB', 'LGCESGNE0000053', NULL, 1798.96, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(739, 24, 51, 'LGCEXMVER000006', 'CELULAR XIAOMI REDMI 9T VERDE', 'LGCEXMVER000006', NULL, 2398.96, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(740, 24, 44, 'LGCESGAZ0000035', 'CELULAR SAMSUNG A31 AZUL 128GB', 'LGCESGAZ0000035', NULL, 2398.96, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(741, 24, 44, 'LGCESGAZ0000052', 'CELULAR SAMSUNG A12 AZUL 128GB', 'LGCESGAZ0000052', NULL, 1798.96, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(742, 24, 44, 'LGCESGNE0000046', 'CELULAR SAMSUNG A31 NEGRO 128GB', 'LGCESGNE0000046', NULL, 2398.96, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(743, 24, 51, 'LGCEXMNE0000011', 'CELULAR XIAOMI POCO M3 NEGRO', 'LGCEXMNE0000011', NULL, 2088.97, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(744, 24, 44, 'LGCESGNE0000048', 'CELULAR SAMSUNG A71 NEGRO 128GB', 'LGCESGNE0000048', NULL, 3698.98, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(745, 24, 44, 'LGCESGAZ0000038', 'CELULAR SAMSUNG  A71 AZUL 128GB', 'LGCESGAZ0000038', NULL, 3698.98, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(746, 24, 44, 'LGTASG08NE01', 'TABLET SAMSUNG TAB A8 NEGRO 32GB', 'LGTASG08NE01', NULL, 1498.96, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(747, 24, 44, 'LGTASG08SY00002', 'TABLET SAMSUNG TAB A8 PLATEADO 32GB', 'LGTASG08SY00002', NULL, 1498.96, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(748, 22, 29, 'LMTVLG320000009', 'TELEVISOR LG 32\" 32LK540BPSA', 'LMTVLG320000009', NULL, 2309.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(749, 22, 44, 'LMTVSG320000008', 'TELEVISOR SAMSUNG 32\" 32T4300AG', 'LMTVSG320000008', NULL, 2233.60, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(750, 22, 44, 'LMTVSG580000007', 'TELEVISOR SAMSUNG 58\" UN58TU7100 4K', 'LMTVSG580000007', NULL, 5486.28, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(751, 5, 41, 'PEPPPT000000002', 'PLANCHA DE PELO PHILIPS HP-8333/00', 'PEPPPT000000002', NULL, 309.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `products` (`id`, `subcategory_id`, `brand_id`, `sku`, `name`, `slug`, `description`, `price`, `offer_price`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(752, 5, 41, 'PEPPPT000000001', 'PLANCHA DE PELO PHILIPS HP-8319/60', 'PEPPPT000000001', NULL, 209.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(753, 6, 10, 'LHRCCAED0000001', 'EDREDON CANNON SINGLE DALTIA', 'LHRCCAED0000001', NULL, 359.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(754, 6, 10, 'LHRCCAED0000002', 'EDREDON CANNON SINGLE RISENS', 'LHRCCAED0000002', NULL, 359.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(755, 6, 10, 'LHRCCAED0000003', 'EDREDON CANNON SINGLE ALLOY', 'LHRCCAED0000003', NULL, 359.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(756, 6, 10, 'LHRCCAED0000007', 'EDREDON CANNON KING DALTIA', 'LHRCCAED0000007', NULL, 549.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(757, 6, 10, 'LHRCCAED0000009', 'EDREDON CANNON KING ALLOY', 'LHRCCAED0000009', NULL, 549.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(758, 6, 10, 'LHRCCAED0000008', 'EDREDON CANNON KING RISENS', 'LHRCCAED0000008', NULL, 549.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(759, 6, 10, 'LHRCCAED0000006', 'EDREDON CANNON QUEEN ALLOY', 'LHRCCAED0000006', NULL, 459.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(760, 6, 10, 'LHRCCAED0000005', 'EDREDON CANNON QUEEN RISENS', 'LHRCCAED0000005', NULL, 459.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(761, 6, 10, 'LHRCCAED0000004', 'EDREDON CANNON QUEEN DALTIA', 'LHRCCAED0000004', NULL, 459.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(762, 15, 48, 'ACMETRCU0000010', 'JUEGO DE CUBIERTOS TRAMONTINA 12 PIEZAS 22399/030', 'ACMETRCU0000010', NULL, 89.90, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(763, 15, 48, 'ACMETRCU0000014', 'JUEGO PARA ASADO X3 ESPATULA - TENEDOR - PINZA TRAMONTINA 26499/051', 'ACMETRCU0000014', NULL, 109.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(764, 15, 48, 'ACMETRCU0000008', 'JUEGO DE CUBIERTOS DYNAMIC 16 PIEZAS TRAMONTINA 22399/003', 'ACMETRCU0000008', NULL, 109.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(765, 15, 48, 'ACMETRCU0000015', 'CUCHILLO PARA CARNE 8 PULGADAS TRAMONTINA 22938/108', 'ACMETRCU0000015', NULL, 59.90, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(766, 15, 48, 'ACMETRCU0000009', 'JUEGO DE CUBIERTOS COLOR OSCURO PARA ASADO 12 PIEZAS TRAMONTINA 22299/009', 'ACMETRCU0000009', NULL, 99.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(767, 4, 22, 'LGCPHPI50000012', 'COMPUTADORA HP I5 240G7', 'LGCPHPI50000012', NULL, 6079.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(768, 4, 20, 'LGACCPHVR000001', 'MOUSE HAVIT HV-MS989GT RED/BLACK', 'LGACCPHVR000001', NULL, 68.86, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(769, 4, 20, 'LGACCPHVBL00002', 'MOUSE HAVIT MS622GT BLUE', 'LGACCPHVBL00002', NULL, 99.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(770, 4, 45, 'LGACSKGP0000001', 'GAMEPAD SKYWORTH SKYGM-19', 'LGACSKGP0000001', NULL, 199.98, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(771, 4, 11, 'LGACIMCA0000001', 'TINTA CANON GI 190 BLACK 0667CC00', 'LGACIMCA0000001', NULL, 69.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(772, 6, 10, 'LHRCCAJS0000010', 'JUEGO DE SABANAS CANNON S/KING 3 PLAZAS ALLOY', 'LHRCCAJS0000010', NULL, 389.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(773, 6, 10, 'LHRCCAJS0000012', 'JUEGO DE SABANAS CANNON S/KING 3 PLAZAS RISENS', 'LHRCCAJS0000012', NULL, 389.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(774, 6, 10, 'LHRCCAJS0000011', 'JUEGO DE SABANAS CANNON S/KING 3 PLAZAS DALTIA', 'LHRCCAJS0000011', NULL, 389.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(775, 6, 10, 'LHRCCAJS0000002', 'JUEGO DE SABANAS CANNON TWIN 1/2 PLAZA RISENS', 'LHRCCAJS0000002', NULL, 259.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(776, 6, 10, 'LHRCCAJS0000001', 'JUEGO DE SABANAS CANNON TWIN 1/2 PLAZA DALTIA', 'LHRCCAJS0000001', NULL, 259.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(777, 6, 10, 'LHRCCAJS0000003', 'JUEGO DE SABANAS CANNON TWIN 1/2 PLAZA ALLOY', 'LHRCCAJS0000003', NULL, 259.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(778, 6, 10, 'LHRCCAJS0000006', 'JUEGO DE SABANAS CANNON TWIN 2 PLAZA ALLOY', 'LHRCCAJS0000006', NULL, 289.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(779, 6, 10, 'LHRCCAJS0000004', 'JUEGO DE SABANAS CANNON TWIN 2 PLAZA DALTIA', 'LHRCCAJS0000004', NULL, 289.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(780, 6, 10, 'LHRCCAJS0000005', 'JUEGO DE SABANAS CANNON TWIN 2 PLAZA RISENS', 'LHRCCAJS0000005', NULL, 289.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(781, 6, 10, 'LHRCCAJS0000007', 'JUEGO DE SABANAS CANNON S/QUEEN 2Â½ PLAZA DALTIA', 'LHRCCAJS0000007', NULL, 339.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(782, 6, 10, 'LHRCCAJS0000009', 'JUEGO DE SABANAS CANNON S/QUEEN 2Â½ PLAZA ALLOY', 'LHRCCAJS0000009', NULL, 339.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(783, 6, 10, 'LHRCCAJS0000008', 'JUEGO DE SABANAS CANNON S/QUEEN 2Â½ PLAZA RISENS', 'LHRCCAJS0000008', NULL, 339.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(784, 19, 17, 'LBFEFR000000002', 'FREEZER FRICON HFED503-2C010 503 ROJO COCA COLA', 'LBFEFR000000002', NULL, 5499.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(785, 19, 31, 'LBFRMA000000001', 'FRIGOBAR MABE RMF0411YINX1 1PTA. 113 LT. INOX', 'LBFRMA000000001', NULL, 1499.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(786, 11, 52, 'LIAB000040', 'MERCEDES BENZ POLICIA A BATERIA ELITE XMX-606', 'LIAB000040', NULL, 3329.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(787, 11, 52, 'LIAB000039', 'MERCEDES BENZ AZUL A BATERIA ELITE XMX-606', 'LIAB000039', NULL, 3329.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(788, 10, 29, 'LMDVLG000000002', 'REPRODUCTOR DVD LG DP-547', 'LMDVLG000000002', NULL, 339.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(789, 10, 29, 'LMBRLG000000001', 'REPRODUCTOR BLUE RAY LG BP-250', 'LMBRLG000000001', NULL, 589.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(790, 7, 12, 'LBMICO300000001', 'MICROONDAS CONTINENTAL 30LT MC34B BLANCO/ 1400W/ GRILL', 'LBMICO300000001', NULL, 929.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(791, 23, 47, 'LGP1SY000000001', 'PLAYSTATION 1 SONY CLASSIC PS1', 'LGP1SY000000001', NULL, 789.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(792, 3, 32, 'PECOMG000000004', 'COCINILLA MAGEFESA MGF-8023 2H/2250W/BLANCA', 'PECOMG000000004', NULL, 319.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(793, 3, 32, 'PECOMG000000001', 'COCINILLA MAGEFESA MGF-8012  1H/1500W/BLANCA', 'PECOMG000000001', NULL, 199.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(794, 3, 32, 'PECOMG000000003', 'COCINILLA MAGEFESA MGF-8022', 'PECOMG000000003', NULL, 389.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(795, 9, 47, 'LMESSY000000032', 'EQUIPO DE SONIDO SONY MHC-V13', 'LMESSY000000032', NULL, 2087.02, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(796, 7, 32, 'PEASMG000000004', 'ASPIRADORA MAGEFESA MGF-6361', 'PEASMG000000004', NULL, 649.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(797, 7, 32, 'PEEXMG000000003', 'EXPRIMIDOR MAGEFESA MGF-3475 85W INOX', 'PEEXMG000000003', NULL, 279.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(798, 5, 41, 'PEDEPT000000019', 'DEPILADORA PHILIPS BRE-710 BLANCA INALAMBRICA / 5 ACCESORIOS', 'PEDEPT000000019', NULL, 599.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(799, 5, 41, 'PEDEPT000000020', 'DEPILADORA PHILIPS BRE-730 BLANCA INALAMBRICA/ 7 ACCESORIOS', 'PEDEPT000000020', NULL, 699.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(800, 21, 53, 'LGACUNTVM000015', 'SOPORTE PARA TV MOVIL ECM-003A DE 37\" A 70\"', 'LGACUNTVM000015', NULL, 229.01, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(801, 21, 53, 'LGACUNTVM000013', 'SOPORTE PARA TV MOVIL ECM-003', 'LGACUNTVM000013', NULL, 168.99, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(802, 5, 41, 'PECBCUPT0000002', 'CUCHILLA PHILIPS QP-210/51 X1 ONE BLADE', 'PECBCUPT0000002', NULL, 99.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(803, 3, 31, 'LBCOMB5H0000002', 'COCINA MABE 5H EMI7640FX0 ROST', 'LBCOMB5H0000002', NULL, 5399.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(804, 3, 31, 'LBCOMB5H0000003', 'COCINA MABE 5H EMI7638FX0 GRIL', 'LBCOMB5H0000003', NULL, 4499.00, NULL, 15, '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(805, 2, 43, 'LBAAPM18FC000BC', 'AIRE POLARMAX C-18000BTU FRIO/CALOR BLANCO', 'LBAAPM18FC000BC', NULL, 3599.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(806, 7, 26, 'PEASKA000000003', 'ASPIRADORA KARCHER VC1 *PE', 'PEASKA000000003', NULL, 939.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(807, 7, 2, 'PEPLAR000000001', 'PLANCHA ARNO FB-1026BO W1100', 'PEPLAR000000001', NULL, 169.00, NULL, 15, '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(808, 11, 53, '1234fCS2131', 'Note Pro 8', 'note-pro-8', '<p>RAM: 6GB</p><p>Almacenamiento: 128GB</p>', 3100.00, NULL, 19, '2', '2021-10-22 18:01:18', '2021-10-22 23:27:47'),
(809, 15, 35, 'IDJOFWCM12323', 'PRODUCTO O', 'producto-o', '<p>123</p>', 12.35, NULL, 123, '1', '2021-10-25 19:09:21', '2021-10-25 19:09:21'),
(810, 6, 47, '000000001', 'prod 1', 'prod-1', '<p>11111</p>', 1111111.00, NULL, 12, '1', '2021-11-25 19:06:35', '2021-11-25 19:17:28'),
(811, 6, 11, '1111111', 'prod2', 'prod2', '<p>desc</p>', 1500.00, NULL, 20, '1', '2021-11-25 19:53:01', '2021-11-25 19:53:01'),
(812, 6, 63, '00125669', 'AUDIFONO 1111', 'audifono-1111', '<p>AUDIFONO DE PRUEBA</p>', 150.00, NULL, 20, '1', '2021-12-23 03:55:37', '2021-12-23 03:55:37'),
(813, 4, 30, 'HP122369800', 'LAPTOP HP COREI3', 'laptop-hp-corei3', '<p>RAM: 8GB&nbsp;</p><p>SO: WINDOWS 10</p>', 1500.00, NULL, 12, '1', '2021-12-27 23:28:22', '2021-12-27 23:28:22'),
(814, 4, 30, 'hp1235666', 'hp i3', 'hp-i3', '<p>RAM: 8GB</p>', 1500.00, NULL, 12, '1', '2021-12-29 23:01:03', '2021-12-29 23:01:03'),
(815, 4, 30, 'LPHP000005', 'LAPTOP HP I3', 'laptop-hp-i3', '<p>RAM: 8GB</p>', 3800.00, NULL, 10, '1', '2022-01-12 21:59:54', '2022-01-12 21:59:54'),
(816, 6, 47, '12345696', 'producto1-11123', 'producto1-11123', '<p>Test</p>', 85.00, NULL, 16, '1', '2022-02-10 06:46:19', '2022-02-10 08:10:38'),
(817, 21, 27, 'XiaomiGT123', 'Chromecast 3', 'chromecast-3', '<ul><li>Dimensiones y peso. 2.04 de longitud&nbsp;</li><li>• 2.04 de altura. ...</li><li>Color. Pizarra&nbsp;</li><li>• Grafito. ...</li><li>Resolución. Hasta 1080p a 60 fps. ...</li><li>Redes inalámbricas. Wi-Fi 802.11ac (2.4 GHz/5 GHz) ...</li><li>Alimentación. Fuente de alimentación de 5 V, 1 A. ...</li><li>Puertos y conectores. HDMI&nbsp;</li><li>• Micro USB. ...</li><li>Sistemas operativos compatibles</li></ul>', 230.00, 0.00, 15, '1', '2022-03-25 00:04:40', '2022-03-25 00:04:40'),
(818, 24, 73, 'MiBand2', 'Reloj', 'reloj', '<p>Características</p><p>Sensor cardíaco<br>Acelerómetro<br>Giroscopio<br>Sensor Geomagnético<br>Barómetro<br>Luz ambiental<br>Medición SpO2<br>GPS / GLONASS / Beidou / GALILEO / QZSS<br>Seguimiento del sueño</p>', 300.00, 0.00, 20, '1', '2022-03-25 01:31:03', '2022-03-25 01:31:03'),
(819, 20, 42, 'LED1234560', 'ARO DE LUZ LED', 'aro-de-luz-led', '<p>Los aros de luz para maquillaje son la opción más demandada entre las instagramers e influencers del maquillaje en YouTube, ya que para maquillarse a nivel profesional y realizar fotos o vídeos de máxima calidad es imprescindible contar con una iluminación muy buena y precisa.</p><p>Marca:&nbsp;Elegiant</p><p>Diámetro:&nbsp;26 cm</p><p>Colores:&nbsp;26 RGB</p>', 60.00, 0.00, 8, '1', '2022-05-10 03:20:34', '2022-05-10 03:20:34'),
(820, 7, 63, 'W1234123', 'Repetidor de WIFI', 'repetidor-de-wifi', '<ul><li>Soporta <strong>Wi-Fi</strong> 802.11ac / n / g / b / a.</li><li>Una antena interna.</li><li>Un puerto Ethernet de 10/100Mbps.</li><li>Banda simple de 2,4 GHz.</li><li>Hasta 300 Mbps de velocidad <strong>Wi-Fi</strong>.</li><li>Con configuración fácil mediante WPS.</li><li>Con una app propia para gestionar distintas <strong>características</strong>, como el modo noche que apaga la luz LED.</li></ul>', 95.00, 0.00, 5, '1', '2022-05-10 18:42:18', '2022-05-10 18:42:18'),
(821, 10, 21, '23DER', 'ARO DE LUZ', 'aro-de-luz', '<p>Los aros de luz para maquillaje son la opción más demandada entre las instagramers e influencers del maquillaje en YouTube, ya que para maquillarse a nivel profesional y realizar fotos o vídeos de máxima calidad es imprescindible contar con una iluminación muy buena y precisa.</p><p>Marca:&nbsp;Elegiant</p><p>Diámetro:&nbsp;26 cm</p><p>Colores:&nbsp;26 RGB</p>', 40.00, 0.00, 6, '1', '2022-05-11 01:28:37', '2022-05-11 01:28:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_prov` int(11) NOT NULL DEFAULT 1,
  `departament_id` bigint(20) UNSIGNED NOT NULL,
  `cost` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `order_prov`, `departament_id`, `cost`, `created_at`, `updated_at`) VALUES
(1, 'VACA DIEZ', 7, 6, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(2, 'MOXOS', 6, 6, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(3, 'MARBAN', 5, 6, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(4, 'MAMORE', 4, 6, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(5, 'ITENEZ', 3, 6, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(6, 'GRAL. BALLIVIAN', 2, 6, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(7, 'CERCADO', 1, 6, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(8, 'YACUMA', 8, 6, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(9, 'ARANI', 1, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(10, 'ARQUE', 2, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(11, 'AYOPAYA', 3, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(12, 'BOLIVAR', 4, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(13, 'CAMPERO', 5, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(14, 'CAPINOTA', 6, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(15, 'CARRASCO', 7, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(16, 'CERCADO', 8, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(17, 'CHAPARE', 9, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(18, 'ESTEBAN ARCE', 10, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(19, 'JORDAN', 11, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(20, 'MIZQUE', 12, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(21, 'PUNATA', 13, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(22, 'QUILLACOLLO', 14, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(23, 'TAPACARI', 15, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(24, 'TIRAQUE', 16, 2, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(25, 'AZURDUY', 1, 8, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(26, 'BELISARIO BOETO', 2, 8, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(27, 'HERNANDO SILES', 3, 8, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(28, 'LUIS CALVO', 4, 8, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(29, 'NOR CINTI', 5, 8, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(30, 'OROPEZA', 6, 8, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(31, 'SUD CINTI', 7, 8, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(32, 'TOMINA', 8, 8, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(33, 'YAMPARAEZ', 9, 8, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(34, 'ZUDAÃ‘EZ', 10, 8, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(35, 'ABEL ITURRALDE', 1, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(36, 'AROMA', 2, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(37, 'BAUTISTA SAAVEDRA', 3, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(38, 'CAMACHO', 4, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(39, 'FRANZ TAMAYO', 5, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(40, 'GUALBERTO VILLARROEL', 6, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(41, 'INGAVI', 7, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(42, 'INQUISIVI', 8, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(43, 'JOSE MANUEL PANDO', 9, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(44, 'LARECAJA', 10, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(45, 'LOAYZA', 11, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(46, 'LOS ANDES', 12, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(47, 'MANCO KAPAC', 13, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(48, 'MUÑECAS', 14, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(49, 'MURILLO', 15, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(50, 'NOR YUNGAS', 16, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(51, 'OMASUYOS', 17, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(52, 'PACAJES', 18, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(53, 'SUD YUNGAS', 19, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(54, 'ATAHUALLPA', 1, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(55, 'AVAROA', 2, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(56, 'CARANGAS', 3, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(57, 'CERCANO', 4, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(58, 'LADISLAO CABRERA', 5, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(59, 'LITORAL', 6, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(60, 'MEJILLONES', 7, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(61, 'NOR CARANGAS', 8, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(62, 'PANTALEON DALENCE', 9, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(63, 'POOPO', 10, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(64, 'SAJAMA', 11, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(65, 'SAUCARI', 12, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(66, 'ABUNA', 1, 7, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(67, 'GRAL. FEDERICO ROMAN', 2, 7, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(68, 'MADRE DE DIOS', 3, 7, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(69, 'MANURIPI', 4, 7, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(70, 'NICOLAS SUAREZ', 5, 7, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(71, 'ALONSO DE IBAÑEZ', 1, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(72, 'BUSTILLOS', 2, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(73, 'CHARCAS', 3, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(74, 'CHAYANTA', 4, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(75, 'CORNELIO SAAVEDRA', 5, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(76, 'DANIEL CAMPOS', 6, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(77, 'ENRIQUE BALDIVIESO', 7, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(78, 'FRIAS', 8, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(79, 'GRAL. BILBAO', 9, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(80, 'LINARES', 10, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(81, 'MODESTO OMISTE', 11, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(82, 'NOR CHICHAS', 12, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(83, 'NOR LIPEZ', 13, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(84, 'QUIJARRO', 14, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(85, 'SUD CHICHAS', 15, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(86, 'SUD LIPEZ', 16, 5, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(87, 'ANDRES IBAÑEZ', 1, 1, 30.00, '2021-05-23 20:22:49', '2021-10-23 20:22:14'),
(88, 'ANGEL SANDOVAL', 2, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(89, 'CHIQUITOS', 3, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(90, 'CORDILLERA', 4, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(91, 'FLORIDA', 5, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(92, 'GERMAN BUSCH', 6, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(93, 'GUARAYOS', 7, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(94, 'ICHILO', 8, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(95, 'MANUEL MARIA CABALLERO', 9, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(96, 'ÑUFLO DE CHAVEZ', 10, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(97, 'OBISPO SANTIESTEBAN', 11, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(98, 'SARAH', 12, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(99, 'VALLEGRANDE', 13, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(100, 'VELASCO', 14, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(101, 'WARNES', 15, 1, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(102, 'ARCE', 1, 9, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(103, 'AVILEZ', 2, 9, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(104, 'CERCADO', 3, 9, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(105, 'GRAN CHACO', 4, 9, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(106, 'MENDEZ', 5, 9, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(107, 'O CONNOR', 6, 9, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(108, 'CARANAVI', 20, 3, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(109, 'TOMAS BARRON', 13, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(110, 'SEBASTIAN PAGADOR', 14, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(111, 'SUD CARANGAS', 15, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(112, 'SAN PEDRO TOTORA', 16, 4, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(113, 'DESCONOCIDO', 0, 0, 0.00, '2021-05-23 20:22:49', '2021-05-23 20:22:49'),
(114, 'Nueva Santa cruz de la sierra', 1, 1, 15.00, '2021-10-23 20:33:43', '2021-10-23 20:38:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-10-27 01:25:39', '2021-10-27 01:25:39'),
(2, 'encargado-ecommerce', 'web', '2021-10-27 01:26:53', '2021-10-27 01:26:53'),
(3, 'asistente-ecommerce', 'web', '2021-10-27 01:27:15', '2021-10-27 01:27:15'),
(4, 'client', 'web', '2021-12-23 04:04:09', '2021-12-23 04:04:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(39, 4),
(40, 1),
(40, 4),
(41, 1),
(42, 1),
(42, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CAN4bavMm54kajL145x7J34RJH5B8u4rpQQwXrah', 175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoiVlVKVlpyVUpHNVhKTFFjZkpFdFc5WGQyVGZMM3owQ2N5TThEVWVTMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vcmRlci82MS9wZGYiO31zOjQ6ImNhcnQiO2E6MDp7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNzU7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRsUWdYT0lySlptZEpnUHp1djJKYTBlNUpMRlh5UUZVRElBSjdMZ01ackpRc2RRekFnMGY1LiI7czoxMDoiZGF0YV9vcmRlciI7YToxMTp7czo0OiJuYW1lIjtzOjU6Ik1BUklBIjtzOjg6Imxhc3RuYW1lIjtzOjg6IkNBUlJJTExPIjtzOjI6ImNpIjtzOjc6Ijk4OTg5ODkiO3M6NToiZW1haWwiO3M6MjA6InBtY2FycmlsbG9AZ21haWwuY29tIjtzOjk6ImNlbGxwaG9uZSI7czo4OiI3MDAwMDEyOCI7czoxNDoiZGVwYXJ0YW1lbnRfaWQiO2k6MTtzOjExOiJwcm92aW5jZV9pZCI7aTo4NztzOjE1OiJtdW5pY2lwYWxpdHlfaWQiO2k6MzIwO3M6MTI6InJhem9uX3NvY2lhbCI7czoxNDoiTUFSSUEgQ0FSUklMTE8iO3M6Mzoibml0IjtzOjc6Ijk4OTg5ODkiO3M6MTM6ImNvc3RfZGVsaXZlcnkiO2k6MzA7fXM6MzoicGF5IjtiOjE7fQ==', 1652218698),
('NTpUlyOKhNhaXZ2pV4rvpvUg5XCDIWYFUm04NvRD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiamxxZnNmR0FrWWtlMHY5U2ZWb2pFcFBKNE5CS3U3SklsanZweDZXRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NDoiY2FydCI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoxOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6ImY0MWI2Mjk4MjdjYWIyNGQ3NTMxODRjYTNkZjYxOGRjIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6MTA6e3M6NToicm93SWQiO3M6MzI6ImY0MWI2Mjk4MjdjYWIyNGQ3NTMxODRjYTNkZjYxOGRjIjtzOjI6ImlkIjtpOjgyMDtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czoxNzoiUmVwZXRpZG9yIGRlIFdJRkkiO3M6NToicHJpY2UiO2Q6OTU7czo2OiJ3ZWlnaHQiO2Q6NTAwO3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoxOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6NToiaW1hZ2UiO3M6NjE6Ii9zdG9yYWdlL3Byb2R1Y3QvR3k0RXJCN2k2R3BuZ0JIZGFTUEZ1QXRoMGNJMnVQWVo2eThRR0FPSy5qcGciO319czo3OiJ0YXhSYXRlIjtpOjIxO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO319fX1zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjM1OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvb3JkZXJzL2NyZWF0ZSI7fX0=', 1652193835);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('1', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"431e5b35002f8d43eb7c1e925ce9abd2\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":10:{s:5:\"rowId\";s:32:\"431e5b35002f8d43eb7c1e925ce9abd2\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:28:\"2 X ALMOHADA LIFE 70 X 50 CM\";s:5:\"price\";d:89;s:6:\"weight\";d:500;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:1:{s:5:\"image\";s:36:\"/storage/product/LHALMKLI0000001.jpg\";}}s:7:\"taxRate\";i:21;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";N;s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;}}}', '2022-05-11 01:29:49', '2022-05-11 01:29:49'),
('168', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2021-12-24 18:33:00', '2021-12-24 18:33:00'),
('169', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2022-02-10 08:35:14', '2022-02-10 08:35:14'),
('172', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2022-03-25 01:27:23', '2022-03-25 01:27:23'),
('174', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2022-05-10 03:38:33', '2022-05-10 03:38:33'),
('4', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2022-01-12 22:47:49', '2022-01-12 22:47:49'),
('5', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"c8c101d8d12b43738cf5670178cca2dc\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":10:{s:5:\"rowId\";s:32:\"c8c101d8d12b43738cf5670178cca2dc\";s:2:\"id\";i:2;s:3:\"qty\";i:5;s:4:\"name\";s:43:\"2 X ALMOHADA MAXI KING FIBRA 70X45CM. 700GR\";s:5:\"price\";d:99;s:6:\"weight\";d:500;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:1:{s:5:\"image\";s:36:\"/storage/product/LHALMKFI0000001.jpg\";}}s:7:\"taxRate\";i:21;s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";N;s:46:\"\0Gloudemans\\Shoppingcart\\CartItem\0discountRate\";i:0;}}}', '2021-10-30 00:48:14', '2021-10-30 00:48:14'),
('6', 'default', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2021-10-27 06:22:22', '2021-10-27 06:22:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `image`, `category_id`, `subcategory_status`, `created_at`, `updated_at`) VALUES
(1, 'Audio', 'audio', 'subcategories/f9b3aadcb8de34fc805ee7b6c93b84ec.png', 2, '1', '2021-05-23 22:53:01', '2021-05-23 22:53:01'),
(2, 'Climatizacion', 'climatizacion', 'subcategories/35a78efce95a6174475f94a7bd629d0f.png', 5, '1', '2021-05-23 22:53:02', '2021-05-23 22:53:02'),
(3, 'Cocina', 'cocina', 'subcategories/1eb777f48e9618a9dfa85af2832987fb.png', 5, '1', '2021-05-23 22:53:03', '2021-05-23 22:53:03'),
(4, 'Computador', 'computador', 'subcategories/691065deb349add0c88252b861d7b292.png', 2, '1', '2021-05-23 22:53:04', '2021-05-23 22:53:04'),
(5, 'Cuidado personal femenino', 'cuidado-personal-femenino', 'subcategories/4032e66fce92e83adfd6be46ffd0d733.png', 5, '1', '2021-05-23 22:53:05', '2021-05-23 22:53:05'),
(6, 'Dormitorios', 'dormitorios', 'subcategories/e16de810645816ee0733e0c38de870de.png', 1, '1', '2021-05-23 22:53:06', '2021-10-23 01:45:38'),
(7, 'Electrodoméstico', 'electrodoméstico', 'subcategories/2a4b39b3adbb537d42674aae4307ce5f.png', 5, '1', '2021-05-23 22:53:07', '2021-05-23 22:53:07'),
(8, 'Kodak', 'kodak', 'subcategories/dff457206e6d957ff16809ddb702363f.png', 4, '1', '2021-05-23 22:53:08', '2021-05-23 22:53:08'),
(9, 'Equipo de sonido', 'equipo-de-sonido', 'subcategories/5e83ca8f5ac3bf322f09f15ce7c692e0.png', 2, '1', '2021-05-23 22:53:10', '2021-05-23 22:53:10'),
(10, 'Reproductor de video', 'reproductor-de-video', 'subcategories/15817705be11f741e65d06229198dffa.png', 2, '1', '2021-05-23 22:53:11', '2021-05-23 22:53:11'),
(11, 'Juguete de exterior', 'juguete-de-exterior', 'subcategories/0300da4a13464ca9f12f8f7b54084dc9.png', 6, '1', '2021-05-23 22:53:11', '2021-05-23 22:53:11'),
(12, 'Barra de sonido', 'barra-de-sonido', 'subcategories/5bcfa8d248fd459b2b865ff5b4b90a8f.png', 2, '1', '2021-05-23 22:53:12', '2021-05-23 22:53:12'),
(13, 'Lavado y secado', 'lavado-y-secado', 'subcategories/54da23543156f333b144df4acb7114de.png', 5, '1', '2021-05-23 22:53:14', '2021-05-23 22:53:14'),
(14, 'Cuidado personal masculino', 'cuidado-personal-masculino', 'subcategories/55ed497cbc9698742fdf36d11e536aa5.png', 5, '1', '2021-05-23 22:53:15', '2021-05-23 22:53:15'),
(15, 'Menaje de cocina', 'menaje-de-cocina', 'subcategories/1205ac8c4629b9bc3e1d075106bfdc32.png', 1, '1', '2021-05-23 22:53:16', '2021-10-28 06:17:35'),
(16, 'Menaje de comedores', 'menaje-de-comedores', 'subcategories/13e4dcc4790cfc50ce8599eb3520b005.png', 1, '1', '2021-05-23 22:53:17', '2021-10-23 01:35:49'),
(17, 'Mochila', 'mochila', 'subcategories/854ad85ce0acf3830aebd40fdc37adc9.png', 4, '1', '2021-05-23 22:53:18', '2021-05-23 22:53:18'),
(18, 'Piscina', 'piscina', 'subcategories/dd1f0b6f8f2143472e88f3c0206f5019.png', 7, '1', '2021-05-23 22:53:19', '2021-05-23 22:53:19'),
(19, 'Refrigeración', 'refrigeración', 'subcategories/bd968365b40ad2e0eba27c47cc66aa66.png', 5, '1', '2021-05-23 22:53:20', '2021-05-23 22:53:20'),
(20, 'Soporte electrodoméstico', 'soporte-electrodoméstico', 'subcategories/c1b441e713db4d68cbd44218e1eba383.png', 4, '1', '2021-05-23 22:53:37', '2021-05-23 22:53:37'),
(21, 'Soporte Tv', 'soporte-tv', 'subcategories/803e16aaf8b8233799ad2ddaba0830af.png', 4, '1', '2021-05-23 22:53:38', '2021-05-23 22:53:38'),
(22, 'Tv', 'tv', 'subcategories/60398237363c417b3d254feb5bc5bb7f.png', 2, '1', '2021-05-23 22:53:38', '2021-05-23 22:53:38'),
(23, 'Videojuego', 'videojuego', 'subcategories/3fdb8db67dd7d3273eecd56470fe00f1.png', 2, '1', '2021-05-23 22:53:39', '2021-05-23 22:53:39'),
(24, 'Celular y tablet', 'celular-y-tablet', 'subcategories/3fdb8db67dd7d3273eecd56470fe00f1.png', 2, '1', '2021-05-23 22:53:39', '2021-05-23 22:53:39'),
(25, 'Parrilla', 'parrilla', 'subcategories/3fdb8db67dd7d3273eecd56470fe00f1.png', 7, '1', '2021-05-23 22:53:39', '2021-05-23 22:53:39'),
(26, 'Bicicletas', 'biciletas', NULL, 7, '1', '2021-10-23 00:59:45', '2021-10-23 00:59:45'),
(27, 'Aspiradoras e hidrolavadoras', 'aspiradoras-e-hidrolavadoras', NULL, 5, '1', '2021-10-25 19:23:22', '2021-10-25 19:24:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'admin@sistema.com', NULL, '$2y$10$aRxZ3YNo8zZCwTzlA/J45uvVmfKBB4t.GkB2l2G5BDk0zx40583Si', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Encargado eCommerce', 'enc.ecommerce@sistema.com', '0000-00-00 00:00:00', '$2y$10$L/pYqPcfPjE0HQW/839Wzeq5QfEA3L0BhYBcm2pEs83XaFVq.I6x6', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Asistente eCommerce', 'asis.ecommerce@sistema.com', '0000-00-00 00:00:00', '$2y$10$L/pYqPcfPjE0HQW/839Wzeq5QfEA3L0BhYBcm2pEs83XaFVq.I6x6', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'CLIENTE TEST', 'dane83024@gmail.com', NULL, '$2y$10$aRxZ3YNo8zZCwTzlA/J45uvVmfKBB4t.GkB2l2G5BDk0zx40583Si', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '2022-01-12 21:53:14'),
(5, 'Johann Sebastian Borda Montero', 'montero_011456@hotmail.com', '0000-00-00 00:00:00', '$2y$10$FTWtxNYgyMAoD1A95zk9F.YZjzGWRfM8daUsjuhwflv1E/t7fo4xW', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'David', 'davidlangui@gmail.com', '0000-00-00 00:00:00', '$2y$10$PgGXyNX2vXSbMdx9wEwuWO1SMqqKSUf8x3yniAuPnecWha4367huW', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Maria Camila Barrientos Salazar', 'mcamilabs@gmail.com', '0000-00-00 00:00:00', '$2y$10$vxJHWgexnjnwfK4ie1GfH.hp3NQ4JKSYz/4DbXuyoz.63Hfk6BmNm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Brisa Velarde Paz', 'bvelarde91@gmail.com', '0000-00-00 00:00:00', '$2y$10$puvH3l2w2EFPHx41grHPf.BW4XGiKX/evAzZhkWBXR.dekZx8tlyy', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Luis Rolando Pol Limpias', 'rolandopol12@gmail.com', '0000-00-00 00:00:00', '$2y$10$TiPsjrO729kTCCBU543uJeJJ0rrx8GUwNMoHvGZwpPGwrjC7lKU/2', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Alely Soliz', 'alelysoliz@gmail.com', '0000-00-00 00:00:00', '$2y$10$h4IJNpAIOyC63r2hPzTPBu3qmKPrs45D3jpkoAyKw38NFoi4gLvX6', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Alejandro conde', 'alejandro.conde.t@gmail.com', '0000-00-00 00:00:00', '$2y$10$d0/rVp38elqFX0umfP2zW.L5/CH9tEPhGdUSkc0yavId1vHeGudUm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'gabriel', 'gabriel2636@gmail.com', '0000-00-00 00:00:00', '$2y$10$LjxDLAO.6/oVQBJSlDBPQuE4lx96V7Y6SX4P0nMuRbBlAsb93EY0q', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Sebastian', 'sebasrc40@hotmail.com', '0000-00-00 00:00:00', '$2y$10$H9CDWhAL.J/UsB2RWIwYju.IvQuCv.P2HREulCdF73NqiE4dJmVdK', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Maria Alicia Julio Larregain', 'alitaju@hotmail.com', '0000-00-00 00:00:00', '$2y$10$xOaLd6bkmqic/hPRu0prS.Mg3ULY8oGSiqJDQJLh66OQvBN48yEni', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Joana vaca miranda', 'joanavacamiranda2@gmail.com', '0000-00-00 00:00:00', '$2y$10$Ig95gkadY0/3hODLUgZ02Ob8EbVbB/0gguIHR9rBxi48tcfDyDalu', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Ronal rojas', 'brogoaldo@hotmail.com', '0000-00-00 00:00:00', '$2y$10$fhRU2q624Jgfyt2dEfkjvecWN9clyam6gGu3tyBR.0s.1UJYEtvOG', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'SEBASTIAN RODRIGUEZ', 'sebito.95.sr@gmail.com', '0000-00-00 00:00:00', '$2y$10$AhqHc6ArmgchyxoYKhKGfOtaJQlkMgVQD.P1UCi0QIRHvOUkaLaNS', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'ANTONY RODRIGUEZ AGUADO', 'antonyrodriguezok@gmail.com', '0000-00-00 00:00:00', '$2y$10$GkKBfzRGONTv4zCO/fjvmeBDp.udmGnZr7kTzx5BEJSTPuz4zXg4K', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'ELVIS JOSUÉ FLORES CASTRO', 'fc_josue@hotmail.com', '0000-00-00 00:00:00', '$2y$10$lpx/K0URetVwiyotodQsL.lBnxZlrOnO3EtElKtij.RQcdz0AzROS', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'LISSY VARGAS', 'lissy.vr@gmail.com', '0000-00-00 00:00:00', '$2y$10$R4t/R4XeDg0nRnjgahZcieaurey7u9TweYj93yHt9F7bZzzV5JEpG', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'MELISSA MERLIN CUELLAR', 'melissamerlin@hotmail.com', '0000-00-00 00:00:00', '$2y$10$BDD/K0RyevGOFPSWNVz1f.wif.QaeY9wAzjZTQaBu2xIM2nHEWTq2', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'JAVIER SILES FERNANDEZ', 'silesjavier866@gmail.com', '0000-00-00 00:00:00', '$2y$10$doJasZl7/mgSNMVxLioWGeZZcXt.f.l4w3GiBRGtVAAYisK.qynbO', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'JOSE LUIS AGUILAR PINTO', 'joseluis.aguilar2016@hotmail.com', '0000-00-00 00:00:00', '$2y$10$Er0dYj3cC/4dMzEcSk0DOuefIttg1Gvdmgxi8IOn21JuIhpUMq3be', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'ADRIAN', 'adss21fallen@hotmail.com', '0000-00-00 00:00:00', '$2y$10$D5IBckmB9hqeWUSFbadmj./5sboLg6cDQ/UTJqi73dIiIu03Nzt3u', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'LUIS ALBERTO GARNICA SALGADO', 'alberto.garnica.s@gmail.com', '0000-00-00 00:00:00', '$2y$10$o8TJ.h2slcphD3ydxZnqM.AJrfQZUVTjXpy/Tg5hn593oqtw7hMNi', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'ADRIAN CÁCERES', 'adrianfiree@gmail.com', '0000-00-00 00:00:00', '$2y$10$NCthNE/JQGU4bMiOWk2cUez.zEasAFQB0AwSrahQFvA3NTP.WWlv2', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'CARMEN FLORES', 'claudpfs@gmail.com', '0000-00-00 00:00:00', '$2y$10$7Wk3Zbu.bnyZL8iI2A9AT.kmQn8x8F6JxXMj8gaH93TpD/numIXQS', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'MATEO SANDOVAL', 'mateotmet@hotmail.com', '0000-00-00 00:00:00', '$2y$10$cYhWDtCMXPLgaFjWeXkHPuFOgt0foHeg32m5SuRHkmZbua0Yfceua', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'JORGE ALVAREZ', 'cmilo2192@gmail.com', '0000-00-00 00:00:00', '$2y$10$3INJ0awkV.uEpeJqXcYjJubNr2g9P5Wyge3RO6EWGHNnXgZjKDDXm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'DANIELA AGUAYO', 'danieladominiqueaguayo@gmail.com', '0000-00-00 00:00:00', '$2y$10$4vJpwWiNYH/wvVqPBc8/beKX.TVVAkISzRvzr0Wcbfu/nl9vsxP0q', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'PEPE CORTISONA', 'gherreram@gmail.com', '0000-00-00 00:00:00', '$2y$10$KVbQToCNI5r/Ivsmu.cEvOwq4pTSnU9lE9LO1o0vTAGwjftv3yhKq', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'RENE EGUEZ', 'rec1369@gmail.com', '0000-00-00 00:00:00', '$2y$10$Zi63BjSHYLqfbPVpqxaN6.r1xw.PuTHwE7TscLi4MACYHI16I9Zdm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'JAIME ESCOBAR', 'jaime.escobar.almaraz@gmail.com', '0000-00-00 00:00:00', '$2y$10$VxRZjWZHOBFx65WkCyW5Pu2hLgb7Yv0E.2TyO3Zh8PrreI5DTCJWC', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'CARLOS MOLINA', 'cmmbourn77@gmail.com', '0000-00-00 00:00:00', '$2y$10$cHsUWIDprFgY.3DYgSAp5.STbgnbkOEKwsSxEfagTWSAOCxyqtOvq', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'ADOLFO SOLIZ VACA', 'adolfosoliz@live.com', '0000-00-00 00:00:00', '$2y$10$HfjfAP67sQwe1cryRxChAuAwpBdli/ZtxvD0HN2sVxOqBow6zbrGS', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'CESAR ANDRES QUIROGA CORONADO', 'cesar.a.quiroga.c@gmail.com', '0000-00-00 00:00:00', '$2y$10$DN808k6AXi9RhZe/8CawZOFNqKqxWd9ISXLp0SlnrOuRNQ0VyevC.', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'CARLOS MOLINA', 'krmbolsv77@gmail.com', '0000-00-00 00:00:00', '$2y$10$wCgED0wZKQ.BfatPgsxGNOaMQPHpS1TfoUojXIe7gYeUr0665cCiu', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'MARIA ISABEL ZAMORA BALDIVIEZO', 'zamoisa@yahoo.com', '0000-00-00 00:00:00', '$2y$10$RHO5z1swWwnNnUboa/4pXeaEaKGCer6DEpTLfcRBzMZz94k/FnFkm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'RENE LUSTOSA', 'renelustosa21@gmail.com', '0000-00-00 00:00:00', '$2y$10$HejSGmD4qPopUik2L.v0E.PK7KtLJbyEBmrI5oVmuT.eXj5en97wi', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'ANDREA AYLLON', 'andrea.ayllon.m@gmail.com', '0000-00-00 00:00:00', '$2y$10$hs91gpwPVmgVDETE5wDwyOJ1IbzTdY51HxDdb381NK/hpjfOHdixe', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'MARIA FERNANDA AGREDA ROCABADO', 'ferniagreda30@gmail.com', '0000-00-00 00:00:00', '$2y$10$8QoWYI0NwmCceqSxYXByKuUaH7d/zJqJ..UA3qFRiB/j3Rok/8GqG', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'PEÑA COTRINA MÓNICA', 'monicacotrina07@gmail.com', '0000-00-00 00:00:00', '$2y$10$flDmir0fscZyM9/4QpL.oeK2o/0ax0sqsnOqB4fd7iWQkvaq5YOZm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'MELISSA', 'mel_misy@hotmail.com', '0000-00-00 00:00:00', '$2y$10$13/kMB8z1jfrqzphxQYnS.NhbwJRknZmCvgD9nPTwpUDMmIDD3say', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'WENDY', 'jhendelynwendy@gmail.com', '0000-00-00 00:00:00', '$2y$10$m24seCto29nKFHc7lOfK3ekkDnairS3gectIt.1Y.vFhWAWWwqAZK', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'JUN PÁBLO FLORES', 'pabloflores.ch@gmail.com', '0000-00-00 00:00:00', '$2y$10$w5Ax8SCO3AYhDceEBxuwJeNUfrkdhWyjdeN1VMDwQ1txmO3pSiKr6', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'LISBANIA', 'lisbania.pf06@gmail.com', '0000-00-00 00:00:00', '$2y$10$B2rd.2COlnheykIko6ZkX.OY5OhPzFjsyn182dScveQV1VViQ2xZS', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'LUIS', 'gumichi@hotmail.com', '0000-00-00 00:00:00', '$2y$10$Oi8zrFwS3HyXPWtws38xK.What5bqvxHtU7/AY3LHPmXYXnhvLf1G', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'BIJOY BENNY', 'bijoy12@gmail.com', '0000-00-00 00:00:00', '$2y$10$nlLv8dkpqQcEo.hw18y9GeuObEUUZJ6WsdmPoVeNhJXsIo4qSVqJe', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'CARMEN LUCIA ASTURIZAGA', 'asturizagacl@gmail.com', '0000-00-00 00:00:00', '$2y$10$oD7VTB0mJwDmGZYZKDpb1OAxZa7F.MciPKTxBwsvnX3DVgpgcwVwK', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'YESSY CABALLERO', 'yessycaballero@gmail.com', '0000-00-00 00:00:00', '$2y$10$ltsa8AOvM51QBsgsD/O6ruGFOepHKzUX/Ts/M2ax7og5RgegDxFaG', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'WILLY', 'wigefah560@itwbuy.com', '0000-00-00 00:00:00', '$2y$10$ryRhS.2EbYpp8phYNHRoPeb9JB5yxQlABAT4Le2QoKZtOYCa1N.Qy', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'ARIANNE ERAZO', 'arianne_e@live.com', '0000-00-00 00:00:00', '$2y$10$QbHivhe/FvDe.3q3MGJT0.1j63UG2iBVq5n.6vcpmnpKUPXH5cv8K', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'MARIA LUZ SANCHEZ', 'sancheztmarialuz@gmail.com', '0000-00-00 00:00:00', '$2y$10$uaP4vpV5ndTD3.WLSWEuy.sGHXz4kgKmbaNBZcmWSo3gB8Jaw/bUq', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'CARLA', 'cgccarla07@gmail.com', '0000-00-00 00:00:00', '$2y$10$42KBGY/33P63lax1PzBnaOniUjJ14HQvJfZXVdHBNCky6MkaISI.S', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'CAROLA SARAVIA', 'elbacarola@gmail.com', '0000-00-00 00:00:00', '$2y$10$ozmEaOPrVWjWN1B1.AJeNOJCvxTi4uXx5Ifn1SZrcrxEiHs2ifl.a', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'MARGARITA', 'margaritachengko8@gmail.com', '0000-00-00 00:00:00', '$2y$10$2mRY21c6jIBWBGglZvOVXOAPqZ9vsoPqyfLvn8viVvsv9SXET4.w.', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'RUDDY', 'ruddy68@hotmail.com', '0000-00-00 00:00:00', '$2y$10$b70rLIXhqHo0rlwNrBqSHOfD0DV2qOiPO0Skn0rbuFSbnFFxWrlNW', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'GRACIELA ARNEZ RODRIGUEZ', 'gracielarnez@gmail.com', '0000-00-00 00:00:00', '$2y$10$uZ2NYeqvEDkVlM47wPAoG.bVOoC2yJYevqK3SkZz/CO/4jIU4nJDm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'ALEXANDRA LOAYZA', 'alemlh23@gmail.com', '0000-00-00 00:00:00', '$2y$10$GG0CQm2SaAD1T4DdcsN1FeuHNPZ6qgDYmGcH8TzhP6Vf.1ZFyUuk2', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'JUAN CARLOS', 'melgarcelular@gmail.com', '0000-00-00 00:00:00', '$2y$10$jks14Qe5/3o6URhRChUT5eGiGhGLJd15jkvquB3f9yYL3a2mH.5Le', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'JULIO CESAR NAVA BALCAZAR', 'juliocesarnavab2014@gmail.com', '0000-00-00 00:00:00', '$2y$10$j7bGavBzvaqduc5jYlM9oOa7pHNvqFLZUBeLFbX/.Z8jxbnhVcM9q', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'YÉSSICA GUTIÉRREZ', 'gutiyessi19@gmail.com', '0000-00-00 00:00:00', '$2y$10$4ZGn.oeU1iDFHoWHLFTiiOt2aubgvtGd5QyxWJCGT9duTdvHIpOd6', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'SCHEREZADA ROMAN PEÑA', 'sbrp2019@gmail.com', '0000-00-00 00:00:00', '$2y$10$vGmRuX9TODKtardm.5AwGuoQQDixT..Fu2Z0VnTdk0L1/U2LrldI.', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'ENZO ALEXEI RIVERO MONTENEGRO', 'enzoearm19@gmail.com', '0000-00-00 00:00:00', '$2y$10$YxLc4dmWryJMCCxV0gkeuuep9//QhbetPNLF5F/PzQCyW1hrymcHu', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'LUIS NUNEZ', 'lmnunezcastro@gmail.com', '0000-00-00 00:00:00', '$2y$10$zuKE2ABKScL0DrWW6jzNq.908sY4iMNCQ2sHhPGoGNHcu/4NE6i5i', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'CARLA AGUIRRE SUAREZ', 'carlitasua23@gmail.com', '0000-00-00 00:00:00', '$2y$10$QRArcNwbLEU7cPgVyjfeVuExoJDoU726CLmV4ZM0y9pH0VqZRH0ji', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'ASTRID DE FREITAS', 'astridcdf@hotmail.com', '0000-00-00 00:00:00', '$2y$10$aU9TlgC2tY1vHXJaHJnhRuihPljUIG86K2KwYDaxqx0n1/E1OL54K', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'JULIO CESAR ROCA', 'jcrocaa3@gmail.com', '0000-00-00 00:00:00', '$2y$10$PTTcSU8eNomoCQUngIijEOjjtjHWkJ2Y4pPyfN6eM9C7CsnFYHuB6', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'PATRICIA PEREIRA ROJAS', 'pattypereira11@hotmail.com', '0000-00-00 00:00:00', '$2y$10$FGHlIW8pkalorH3qfNqv/e73O4.ZvdGio99zjltpCTFoo7/qaZZUu', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'ANDRÉS VARGAS', 'rtvu13@gmail.com', '0000-00-00 00:00:00', '$2y$10$g6yh46t19og1phZXbD4y5OTRWUiWQpNo3KlHxdPv.g5b.ZRxoLBye', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'YORGHELY', 'yfbolivia@gmail.com', '0000-00-00 00:00:00', '$2y$10$8.ChZLESkUFMGpKARFCbb.NmJGGmGgiB9y2UXYY65WuCAGXNPrfm.', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'NAZARETH CHUMACERO AUZA', 'nazarethcha9@gmail.com', '0000-00-00 00:00:00', '$2y$10$dyCNt7jl8txCdmq9YvdFo.IhYS.ZADICG5AiPRjzOVOvf381sOd1K', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'JULIO CESAR MEJIA JUSTINIANO', 'justinianojulio48@gmail.com', '0000-00-00 00:00:00', '$2y$10$KElNEt66qSKWomU3gILh0.ne6M24StNh.rReQeuWGAslEUgubEzTi', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'MARIA FERNANDA LIMPIAS', 'limpiasmariafernanda@gmail.com', '0000-00-00 00:00:00', '$2y$10$aK.8IxZvNBNOKWK5G5JL2ejQ/B0qno.F.aBbkuEGrL/mnM8/PtBKK', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'PATRICIA ABIGAIL MURGUÍA CAMPOS', 'pmurguiacampos@gmail.com', '0000-00-00 00:00:00', '$2y$10$n7uI9H./8Jl7uj5H6z1BHuMu/uuzKxhh7hiEUHX0H.JC0kbGBx.9m', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'MARIA RENE SALAZAR', 'marianenee@gmail.com', '0000-00-00 00:00:00', '$2y$10$/Tvt7icFvaAsqQGiGI.kU.gR4M7UlSdia0Wf47F69sKFYPAkvCRiu', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'GABRIELA', 'gabrielach.justiniano@gmail.com', '0000-00-00 00:00:00', '$2y$10$gwWL2ylpNHkFWcnsUXC5h.7I9CFbeYz5mJ4vUlcvJlxtKQJiHwhzm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'ADELA', 'adelacondori1998@gmail.com', '0000-00-00 00:00:00', '$2y$10$30cAFVMqmcP8v5xDUgtIWOiKeiX5hxhs.Cjwb1YTFObWQfNLbZg1S', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'CARMEN SAMO', 'csamoandrade@gmail.com', '0000-00-00 00:00:00', '$2y$10$SmDx9B6x.A4UR01H4ru6Reus7gg6C3L5d4U/SG05wcJArSiR2ICYm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'CLAUDIA PATRICIA', 'quirogaferrufinop@gmail.com', '0000-00-00 00:00:00', '$2y$10$ZRZ1KCZC3ArjvnJM.W/YpOK.5rlopXFChKOTnBJ0HEO.pcFyTR1G6', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'NANCY HUAYTA ADIVIRI', 'nanynanita87@gmail.com', '0000-00-00 00:00:00', '$2y$10$RYt/NrWchrcP9yZxpwEQ7uGKGaRWsrgoFF3J8jdTIi9NUnKSQwTT6', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'HERMES', 'hermes.rivera50@gmail.com', '0000-00-00 00:00:00', '$2y$10$h2CM.s4vILJwi/jyzklNN.QRfs11nCfR7mf9KEwgoBoLGCYtftYgm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'ALEX CÁCERES', 'metanoia.alex@gmail.com', '0000-00-00 00:00:00', '$2y$10$psRqCOV8Ht0t9BgZJthxdu2lp6RsTZGhH2ntiCrJH0y6ozmghvbKC', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'NICOLAS ZALLES', 'zalles@gmail.com', '0000-00-00 00:00:00', '$2y$10$13Gtr2HCN7tX1CrJAmOA9.p5fR9qQmLfWhobYIUOo0emrkyed/xD.', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'DIEGO MIGUEL SORIA ARIAS', 'micky.soria@outlook.es', '0000-00-00 00:00:00', '$2y$10$56TOLgzDYS7Gw91gt0QmGupgcQqsKbut66DW9CPyWaeu86bh8ID3m', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'VANESSA VILLARROEL', 'vaneza_k.v.f@hotmail.com', '0000-00-00 00:00:00', '$2y$10$5siNGVncUFOXCaSA/yP83O6Efk8wXGPj0KWCna.SxZTrDtUFoaCHO', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'MARÍA BELÉN', 'mariabelengonzalesarteaga@gmail.com', '0000-00-00 00:00:00', '$2y$10$zHJcaRvf5TBSja9815DeT.Jp.VaZsmfw3FHxnxoEwnNRx0hZ1cLGG', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'TAIS LORIA', 'tachloriav@gmail.com', '0000-00-00 00:00:00', '$2y$10$aIrJ4q4o/UAA/xydzJWUPe3XjGL8p4mZzz2LQo4w8yREA5RcQBBhu', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'MAURICIO RIVERA ROSALES', 'mauricoto2rivera@gmail.com', '0000-00-00 00:00:00', '$2y$10$hli6y17/obXEg5.2.87kxemp9Pe8.AAFshlUVfti2PbHeqwlCliwS', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'RUDY', 'rudy_alaca@gmail.com', '0000-00-00 00:00:00', '$2y$10$x9mWGtjyM.n3MlXhf53Ipef37KbuXKom4FA2QQTpkP/GVChyMrWje', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'VICTOR HUGO', 'victorhugo2425@gmail.com', '0000-00-00 00:00:00', '$2y$10$GWC0G2chHF9HztM0jhYoJeR6nrp.I/zHiaF/l61OxR47zEVX.QKPu', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'MARIELA MOLINA DELGADILLO', 'maye.moli.del@gmail.com', '0000-00-00 00:00:00', '$2y$10$MrFhavT1DG2QqmYshM8HR.6uqutrupogFNDX1p8bNUlY0uYHkBscu', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'ALAN VERA', 'alanoc7@gmail.com', '0000-00-00 00:00:00', '$2y$10$8wBiDwYSLnhnAu1qaAXAJOGRczIzGPu5SIZmBmuqu6NavG7V865wS', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'EDRIN', 'edrinsidney@gmail.com', '0000-00-00 00:00:00', '$2y$10$wqIUT.cHJWFCoji6g1H3pu69mF1vMlXXk0NLcDhQdlPfb.BuKi2om', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'LEONEL ANGEL RODRIGUEZ AGUADO', 'ingleonelrodriguez2020@gmailcom', '0000-00-00 00:00:00', '$2y$10$MSHzQeccfsd9LKxkpUWq8e7DdSy6cvK4o/VZ7Cb17daBLmP6ACH2e', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'TATIANA DURAN', 'paquete1984@gmail.com', '0000-00-00 00:00:00', '$2y$10$/rjUGXvggKAu9Kx9P8LFH.1bb.qUQKGHjgeDqRBPdXE8jUJtQ5oGS', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'MAURICIO MANSILLA SEVERICH', 'mmauriciomansilla@hotmail.com', '0000-00-00 00:00:00', '$2y$10$iCoB6wWE8iKBftfgG4.5H.vFmnJjncY88lh2O9zgvMAvR4AyHjrpe', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'BRUNO', 'bruno.perez.vidal@live.com', '0000-00-00 00:00:00', '$2y$10$HEgNeSt8i45X5jWZkh0VnO0QjovVuWfns8CmdP7SFP4fWsP1182HC', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'JUAN DE DIOS CHUMA', 'lokitoloko0810@gmail.com', '0000-00-00 00:00:00', '$2y$10$Q1qMiSxwRiOSn613vDNnFu3O2XkFpdmYdGvcCNmcxgwEIHvzgZeje', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'JHON', 'yainot.jb@gmail.com', '0000-00-00 00:00:00', '$2y$10$gAhea0n0M9QTag2v4Tx8ru81aD7uniSYsxPOnkdas7KstFCrj0miC', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'AHIAS', '755ahiflow46341@gmail.com', '0000-00-00 00:00:00', '$2y$10$UHW4JhQAzd96zihpMgCHXu9dk.GFN9GkFt.6bXnFqTmSDHakfdSuS', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'SERGIO ARTURO ACEBEY', 'meliodas.stark147@gmail.com', '0000-00-00 00:00:00', '$2y$10$oWW/wY2lssw.w8oAMFLwN.NrB06IA.gXtxH9aXQsXmBYAvjgx85Zy', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'ROBERTO', 'robebe32.z@gmail.com', '0000-00-00 00:00:00', '$2y$10$txC/3gObOEJ6XkdMQygjuuQPYw68O0LOARoXDCMsWXaMNxwbxbbk.', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'KUPER', 'wakabola8@gmail.com', '0000-00-00 00:00:00', '$2y$10$aq9si6glIxxSqiQ4FdDPYO9wliOwu3oDNXGNfv0fjq.SLL3Q7Jyie', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'KEVIN', 'kriveratorres556@gmail.com', '0000-00-00 00:00:00', '$2y$10$7HPb/1q5M0r/nol3N7NLuuo16FloCzMfnzny5PiCAbNkMTV6RY85S', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'ANDRÉS', 'salazarmarquez83@gmail.com', '0000-00-00 00:00:00', '$2y$10$tIJkGdhSilVQb98E6Obkq.2Ohk0z/tvhXRd.RnUgKtX7XDjAL7KMm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'JAZMINE', 'jazmine.jun@gmail.com', '0000-00-00 00:00:00', '$2y$10$2rIh4JeNp5xrnsLMD9zJCeIwbgvulCt6.fqQdk/VqQqEgHzGPw2y6', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'CARLOS HERRERA', 'carloshv001@gmail.com', '0000-00-00 00:00:00', '$2y$10$iG6Z1ZsHcsxzw1jaMGs1c.KOirCjbqt9N63gOfHXv2CQp2ggVsNAK', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'GALARZA CUELLAR', 'galarzaleo999@gmail.com', '0000-00-00 00:00:00', '$2y$10$Ae4eGnIflEs3.69KcWTc3ORZCkuA8IbAo7GKsiWSfc5qpOBLoZBby', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'LEIDY ROJAS', 'leidy_rojas_rodriguez@hotmail.com', '0000-00-00 00:00:00', '$2y$10$.0TnSvUeDUrElrqrABhNyOMeuobd9Rsk3ODgXCKoiDymcbwU8W6EG', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'MAICOL ANDRES GARZON ALVAREZ', 'maicolandresgarzonalvarez25@gmail.com', '0000-00-00 00:00:00', '$2y$10$7TqS9sckH0y3KfBhSU.1POIDjeq3qf4TJdaluShpWvT.2EGT0gXRO', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'ALVARO ORTIZ HEREDIA', 'allrtiz66@gmail.com', '0000-00-00 00:00:00', '$2y$10$9.2xmBX1pJHC1NagzWt2UuA.xvB2r1Ou5a3lAqUfmAZkzgK4njpbG', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'VICTOR ALFONSO ROJAS SAAVEDRA', 'victor-oil.engineer@hotmail.com', '0000-00-00 00:00:00', '$2y$10$PN1twcM4Ib8OtSO.BCS4u.E8BIgVLe8get7TXz23ZMjR1Ldo/j.Xu', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'MIGUEL ROJAS', 'rojas1.saavedra2@gmail.com', '0000-00-00 00:00:00', '$2y$10$ad.UER6cB8pchQ.Ssk8L1ukaT7hmiWkqSygSQzVSNruOMSXIvI50S', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'IRENIA MAYUCO', 'irenia152009@hotmail.com', '0000-00-00 00:00:00', '$2y$10$N9UzKWnRcOik/NHbESXdzu9JdVL7W3Vj8cG9nA3qOiGBfND2BOwmm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'EDUARDO CONDORI', 'falcon13101990@gmail.com', '0000-00-00 00:00:00', '$2y$10$2WIt9V8sBRNbG5nVYsvm8.W36iIpb8UExkXHNwIBPmCxJtiTtEkjm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'RODRIGO CARDONA', 'cardonabaure@gmail.com', '0000-00-00 00:00:00', '$2y$10$gXAtX1RFaylwOd7.SIy1TO2XfVYMLB110cckG2uLLU87XQhty3LlC', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'SOFIA', 'sofiasalvatierra34@gmail.com', '0000-00-00 00:00:00', '$2y$10$IcNs46xHZ8WGLe.qamHF..ODx9lsAOrYkCH7MBrIVramwMJ8lh1NC', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'ANDREA PAREDES RIBERA', 'paredes_andreita@outlook.com', '0000-00-00 00:00:00', '$2y$10$IzlkYr81OCG9aocTSA/HpuCuamwhCkQh.a0dZzDL1AtOC5xdRxskC', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'MARVIN', 'marvin_davalos@hotmail.com', '0000-00-00 00:00:00', '$2y$10$2zuR.JrJZiCFjfbfj6OgduEsAdig29qVgO5P2N2A9bwMI2X1k59xW', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'EZEQUIEL MENDOZA', 'ezeromeo86@gmail.com', '0000-00-00 00:00:00', '$2y$10$/3Sp31XDFOuz2JlASZB4vOOnSiE5gIUgBqxkQ063qrT46j0K6Q4Iy', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'ALEJANDRA', 'alemsaguez444@gmail.com', '0000-00-00 00:00:00', '$2y$10$udVerTwPsDliURatVUWpdOLWt5IzxsNxlupfRTjPQleFq6/mnLVa.', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'JANNINE CABRERA', 'jannine.cabrera@gmail.com', '0000-00-00 00:00:00', '$2y$10$gDcTa2m1ghmEp.SjsBzWt.aEHCOBi6iHXvPAzdYFmZQwJ.ZdDfZZO', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'YASIENDY', 'yasiendyms@gmail.com', '0000-00-00 00:00:00', '$2y$10$LxBlzkB1CloJqq.mjT0P6ejpzNQn95DJ/Zu/SH9hnz9McwyXS44VK', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'KELLY', 'kelisyta27diplomado@gmail.com', '0000-00-00 00:00:00', '$2y$10$oL.UE7F9Ie3fKZQNfYDTjOM.DprM4jAVTUNTlqbg28iRYMQRKdcbq', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'CHARLY', 'jzambrana-es1@udabol.edu.bo', '0000-00-00 00:00:00', '$2y$10$7ndyutCPZHzfWb1Se9mEUeJYLRLo87tgaO16T6R/bdOXPyF4OiOSW', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'VANIA SANTI DE PEREYRA', 'vaniapereyra@hotmail.com', '0000-00-00 00:00:00', '$2y$10$syLw4WNhzBiC5KgAljgJke.slF8kR.ZPaw6hTC5pco.a8DgVV3Pke', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'MANUEL MERCADO', 'manu_el_3@hotmail.com', '0000-00-00 00:00:00', '$2y$10$YmZZnOxgaG0.HE.wFZiqfu55.Qfi.z9/HkM/qkicAPdX2vJ1yfzYq', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'ALAN', 'alansitojjj876@gmail.com', '0000-00-00 00:00:00', '$2y$10$I0y4stNVQbLq/GO59/EqJOy4ralnQ/v255bCFohhKhfhSjk00Y/TG', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'TEJAYA CÉSPEDES JOSE LUIS', 'tejayajoseluis@gmail.com', '0000-00-00 00:00:00', '$2y$10$DQZZP8Z.U451qob57pdZ1ehHmuJJ4KUEnuIPN8063e8CFmmWWoG1G', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'NANCY', 'nancy_kefer86@hotmail.com', '0000-00-00 00:00:00', '$2y$10$5xf48/YtTF6nYWgNgnjFF.jg.A2QfUkJZbE6xg/FFaaJUz36aOEy6', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'JOSELIN TORO', 'joselin9505@gmail.com', '0000-00-00 00:00:00', '$2y$10$eYc3KIaRr8OI1VSghO2xvO2aWmNrCvSz4S8mIo.GlyGCQRN3hf3m2', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'PAOLA CR', 'ccrrppaa@gmail.com', '0000-00-00 00:00:00', '$2y$10$sBjSZHqh3HrA66nHF/H2huYmqranp.tu5TGuDQoWEVhUep.FjvuL.', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'ROSA DEL VILLAR', 'mamuchisx2@gmail.com', '0000-00-00 00:00:00', '$2y$10$9ysbLRh2hqnsHfAWktofZuv7bkNorBJ.R5pym16SFBo94EIsBxaZO', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'LAURENT GONZÁLEZ', 'llgf8@icloud.com', '0000-00-00 00:00:00', '$2y$10$QHX1i5lrxcZdfVIzkp4ZNO.E6bUIaeH6FyXevq57if2u3DNK/XGIG', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'KARLA TOLEDO', 'karla3586@hotmail.com', '0000-00-00 00:00:00', '$2y$10$Lb0QfqX.Si9KmZ8ZmlM3ieljIiwDZYKaeoNBJXflmIr5z7Yk4Naam', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'MARGOTH VILLCA', 'apazamargoth79@gmail.com', '0000-00-00 00:00:00', '$2y$10$NLKdYYqO7XHE4awSddl93OYdGLw3GXG6PpoGGj4Y1ES/oZIwwFvte', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'MARISSA', 'maachan072096@gmail.com', '0000-00-00 00:00:00', '$2y$10$HJ0gUMQFE/uLZc7rSCENcOaSNTCpatTt0YQRD7AeQfAs4./jIvvlu', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'GABRIELA TORRICO MEDINA', 'gabrielatm_14@hotmail.com', '0000-00-00 00:00:00', '$2y$10$f1o7iolUHNl3BHbtgW4Gqea59zq908FXemYybgllyYoFVaKiXtAMy', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'DIEGO ALEJANDRO', 'tkdiego25@gmail.com', '0000-00-00 00:00:00', '$2y$10$/DuklibBKM145XMuQU5mxuCEL9rR7.gPVsSeXB3pHDlGSdvFCxtda', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'DUNIA PARI QUISPE', 'dyd_computer@hotmail.com', '0000-00-00 00:00:00', '$2y$10$gcLjgJAB4eSTlKok.lNxnuoJNQWUgHfl1aa5CWd8cnsxocVCQ1wny', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'UNION CENTRO VETERINARIO SRL', 'abaptista@union.com.bo', '0000-00-00 00:00:00', '$2y$10$me4zJLuf4jwnC3zv6.Zs4.DyMFLCC0ao24HaIRJuNZsvawNRXnVLy', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'FREDDY JUNIOR OLIVARES SUBELZA', 'freddy.olivares.subelza@gmail.com', '0000-00-00 00:00:00', '$2y$10$yIQ3WVHDKrePQOOMfH9dl.dgRudWZUXLWlRxneoik5Qj2DD2jr4tu', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'FABIO MARCHETTI', 'fabio.marchetti88@gmail.com', '0000-00-00 00:00:00', '$2y$10$/YT2Zn0o/tB1OsjEUbZshusw6m7cRxIzcBCkWxGxTVMvon7kobhrm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'ALVARO MONTERO', 'alvaromonterobecerra@gmail.com', '0000-00-00 00:00:00', '$2y$10$DYeyKLOkowCqvfMF0ArABuqO4UdI2XTaoALyJ2qjR.zhcAk4979ei', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'FRANZ VARGAS', 'franzvargas.21@gmail.com', '0000-00-00 00:00:00', '$2y$10$GQ.XkFiRxoRQmqy6oB0Ii.Bx1sqOLUsV2MpAXGbP1K6swU/Mte3kK', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'MIGUEL ANGEL AVALOS PINAYA', 'maapinaya@gmail.com', '0000-00-00 00:00:00', '$2y$10$PtumMGapCK/uMmYCPYBXtu9rxNGcobOi0vuPOimzdxtV/wwu1qFBm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'RENÉ MÉNDEZ MALDONADO', 'nequitto@gmail.com', '0000-00-00 00:00:00', '$2y$10$rnIj1DHaFx/jPrUh2x8mN.sL.R2CZllq0j2R411BoMFtUk4xmOKua', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'FRANZ VARGAS', 'fz1990salvador@gmail.com', '0000-00-00 00:00:00', '$2y$10$WcrpZ8Kx2hYwTJXz7LDrkOVs78bT23oRLnVLjkHzMO/PtehWdn6BO', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'DANTE', 'dantemontenegro26@gmail.com', '0000-00-00 00:00:00', '$2y$10$Grba0WvH574UuFs99ps91uDBNSf3F7uM1Ru9suXscqMXevncHSHcW', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'NICOLE JIMENEZ', 'nicole.jm92@gmail.com', '0000-00-00 00:00:00', '$2y$10$SMwSiI2ViyM1730vUSTvBOT3Q2QYjdf4hEDsk1MV9aff0XbS6h1xS', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'JOSEFINA', 'josefinaluceroarias@hotmail.com', '0000-00-00 00:00:00', '$2y$10$M40eRH/53ZuC/cmYfPkWIOQ6yaorfCSn/tAL1YBCtp1MVG.nnqm8u', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'JURGEN STORL', 'jstorl@aerstorm.com', '0000-00-00 00:00:00', '$2y$10$oe4KlKUwa.rpyiF0wgUmJu0VjuGmmLM9wTHLwIjFSpbo/Jq6vVLFm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'RICARDO PACHECO VILLAGOMES', 'rikipachecovillagomes1@gmail.com', '0000-00-00 00:00:00', '$2y$10$ctZko1AApcBI.PCaUpNlf.LknQNGdu3Q2BCynJMg2TLgcfbwhof3i', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'XAVIER AUZA', 'xavier.auza@hotmail.com', '0000-00-00 00:00:00', '$2y$10$NIfSlg17TfTidxmNDyAsyu1K4Y.CGusZJTMdU86eDyINjU60/bwGC', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'FRANKLIN FRANZHEK FIORILO', 'franzhekfiorilo@gmail.com', '0000-00-00 00:00:00', '$2y$10$bueQiEXe6ql2rH1TjKmfU.QyAKkobMUKnb9Hni63LB7j.MQ7MqJry', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'ANA', 'anacamacho5590@gmail.com', '0000-00-00 00:00:00', '$2y$10$CNDY7mwn0Q2cHvz4MmmokuLrbYw4MhRq0OVu7olC37sJcQQj5IQw.', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'ROGER ARAUZ', 'arauzsroger@gmail.com', '0000-00-00 00:00:00', '$2y$10$PNcXr0QIO9BZOzDGX3.PaOyCDN7VkdeHh7rvWNCivg32wNnnmeeeK', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'LIZETH MENDOZA ENRIQUEZ', 'lizethmmendozae@gmail.com', '0000-00-00 00:00:00', '$2y$10$XrdruFjTOyeG4Pf9HjK6Ye/9RHMoMb0JorRttw.2ftGT/PhyzwySK', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'DANIA SOSSA', 'daniaysossa@gmail.com', '0000-00-00 00:00:00', '$2y$10$Ajj8k2I8AFdTvSp9is21De1PZo0UMLL.vOnU5r60z0PIwYM/zafDG', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'OSVALDO CUELLAR VARANI', 'osvalcv@hotmail.com', '0000-00-00 00:00:00', '$2y$10$n7IX925lFNn7HLnc.xGZRei9h/QYKO4/ryD7rfE9P65l8NcyyCx.q', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'JUAN JOSÉ BARRANCO BECERRA', 'barrancobecerra@gmail.com', '0000-00-00 00:00:00', '$2y$10$EkgqcmvkiQirugBgbazQLusyEBwyC1PAVjd94iP0Cos5WdxlwpFM.', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'SHIRLEY HUARACHI HUARACHI MONTERO', 'shirleycita2296@gmail.com', '0000-00-00 00:00:00', '$2y$10$xp/tgkTcUf6vKpY34SwtCOrwBdns/hmcNJV17.UkOumb/HtHbINle', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'LADIMIRO', 'locotrak@gmail.com', '0000-00-00 00:00:00', '$2y$10$R5d5GW6jnOfegfErnDfZhO31.v9ckTxOF1RaaV4l0HcJ6/hrx2/lm', NULL, NULL, NULL, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, '1000000', '10200FD@gmail.com', NULL, '$2y$10$TfWnuQpDQm/5frP8ECjA5.cbj6z.ze01lzhfzZx4e4EzmDEK2THa.', NULL, NULL, NULL, NULL, NULL, '2021-12-23 03:48:03', '2021-12-23 03:48:03'),
(166, '1000000*', '102300FD@gmail.com', NULL, '$2y$10$j4JlBXnqh5b8lE.2Xap2ruqBsMHWzw74cIRX87fDHk36gflqThVUK', NULL, NULL, NULL, NULL, NULL, '2021-12-23 03:50:16', '2021-12-23 03:50:16'),
(167, '1000000', '10200F6D@gmail.com', NULL, '$2y$10$5FU0lHgTrPYq1W6Btd2vVOl/U6R2KwljdMfKGJB3jlqonbGXXxoNu', NULL, NULL, NULL, NULL, NULL, '2021-12-24 18:24:11', '2021-12-24 18:24:11'),
(168, '1000000', '10200F69D@gmail.com', NULL, '$2y$10$SWAjrXN0.H3Iqho2UNaEd.tU4bRRdBWG1Te9CBuE96OlbeAh1BaEe', NULL, NULL, NULL, NULL, NULL, '2021-12-24 18:25:11', '2021-12-24 18:25:11'),
(169, 'Usuario de prueba', '1@1.com', NULL, '$2y$10$4JSRFJTa40kTzy.sTsBlk.Dh.3D6mhUxrpLYNTbiguT0nvWxRlDre', NULL, NULL, NULL, NULL, NULL, '2022-02-10 08:34:05', '2022-02-10 08:34:05'),
(170, 'Usuario', 'usuario23@gmail.com', NULL, '$2y$10$21CIR5KT3wHtj2La49OxFuY3zRcUd/8/Lior6Tq0UJTE2zA3lk28u', NULL, NULL, NULL, NULL, NULL, '2022-02-12 21:13:23', '2022-02-12 21:13:23'),
(171, 'Sara Mendez', 'sara.mendez@gmail.com', NULL, '$2y$10$4MbfsFJ7QNBlxqcO0m.9UOn6DLPN0c1z7HyXpUOYn7x7SXfIJUU4a', NULL, NULL, NULL, NULL, NULL, '2022-03-24 20:54:35', '2022-03-24 20:54:35'),
(172, 'Pame Carrillo', 'duabyakosky.pamela@gmail.com', NULL, '$2y$10$TwOZ7ANQU7xS0s4nBtjiNux8eteYg5x7S1NCLAhoBek6NbOhQoB8q', NULL, NULL, NULL, NULL, NULL, '2022-03-25 00:08:54', '2022-03-25 00:08:54'),
(173, 'Amilkar', 'amilkar.doc@gmail.com', NULL, '$2y$10$LXzcXyOjgANYYPmcDj3mM.v4RDwpIaWIKStrSSa1GwEugpyOdjuwq', NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:34:16', '2022-03-25 01:34:16'),
(174, 'Pame Gutierrez', 'duabyakosky.pam@gmail.com', NULL, '$2y$10$4Iwx3eFrWIxDQEw5zJ8ruOwsQIJBRzl8kWzesvXG3sbQyzpt72zQa', NULL, NULL, NULL, NULL, NULL, '2022-05-10 03:30:53', '2022-05-10 03:30:53'),
(175, 'Pame Carrillo', 'pmcarrillo@gmail.com', NULL, '$2y$10$lQgXOIrJZmdJgPzuv2Ja0e5JLFXyQFUDIAJ7LgMZrJQsdQzAg0f5.', NULL, NULL, NULL, NULL, NULL, '2022-05-11 01:34:18', '2022-05-11 01:34:18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `brand_category`
--
ALTER TABLE `brand_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_category_brand_id_foreign` (`brand_id`),
  ADD KEY `brand_category_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `delivery_methods`
--
ALTER TABLE `delivery_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `delivery_method_municipality`
--
ALTER TABLE `delivery_method_municipality`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `delivery_method_pay_method`
--
ALTER TABLE `delivery_method_pay_method`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departaments`
--
ALTER TABLE `departaments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `municipalities`
--
ALTER TABLE `municipalities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `municipalities_province_id_foreign` (`province_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_departament_id_foreign` (`departament_id`),
  ADD KEY `orders_province_id_foreign` (`province_id`),
  ADD KEY `orders_municipality_id_foreign` (`municipality_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pay_methods`
--
ALTER TABLE `pay_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indices de la tabla `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinces_departament_id_foreign` (`departament_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indices de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `brand_category`
--
ALTER TABLE `brand_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `delivery_methods`
--
ALTER TABLE `delivery_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `delivery_method_municipality`
--
ALTER TABLE `delivery_method_municipality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT de la tabla `delivery_method_pay_method`
--
ALTER TABLE `delivery_method_pay_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `departaments`
--
ALTER TABLE `departaments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=831;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `municipalities`
--
ALTER TABLE `municipalities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `pay_methods`
--
ALTER TABLE `pay_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;

--
-- AUTO_INCREMENT de la tabla `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `brand_category`
--
ALTER TABLE `brand_category`
  ADD CONSTRAINT `brand_category_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `brand_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `municipalities`
--
ALTER TABLE `municipalities`
  ADD CONSTRAINT `municipalities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_departament_id_foreign` FOREIGN KEY (`departament_id`) REFERENCES `departaments` (`id`),
  ADD CONSTRAINT `orders_municipality_id_foreign` FOREIGN KEY (`municipality_id`) REFERENCES `municipalities` (`id`),
  ADD CONSTRAINT `orders_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Filtros para la tabla `provinces`
--
ALTER TABLE `provinces`
  ADD CONSTRAINT `provinces_departament_id_foreign` FOREIGN KEY (`departament_id`) REFERENCES `departaments` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
