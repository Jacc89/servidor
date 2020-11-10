-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2020 a las 16:21:21
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `demo_angular7_crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `category` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `title` varchar(24) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `article`
--

INSERT INTO `article` (`id`, `category`, `title`) VALUES
(172, 'ahora', 'hilda'),
(173, 'hola hola', 'resultado'),
(174, 'prueva 435', 'hola ya sirvio'),
(175, '345', 'prueba '),
(176, '2345', '234288999'),
(177, '1233123', 'SA'),
(178, 'fs', 'fs');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id`, `fecha`, `ip`, `usuario`, `estado`) VALUES
(100, '2020-10-22 21:38:41', '127.0.0.0', 'Defaul', '[object Object]'),
(101, '2020-10-22 21:43:02', '127.0.0.0', 'Defaul', '{\"title\":\"prueba\",\"id\":\"165484'),
(102, '2020-10-22 21:45:43', '127.0.0.0', 'Defaul', 'test'),
(103, '2020-10-22 21:53:18', '127.0.0.0', 'Defaul', 'test'),
(104, '2020-10-22 21:55:34', '127.0.0.0', 'Defaul', '[object Object]'),
(105, '2020-10-22 21:59:23', '127.0.0.0', 'Defaul', '{\"title\":\"que\",\"category\":\"ins'),
(106, '2020-10-22 22:00:17', '127.0.0.0', 'Defaul', '{\"title\":\"prueba uno\",\"categor'),
(107, '2020-10-22 22:03:32', '127.0.0.0', 'Defaul', '{\"title\":\"ahora\",\"category\":\"con un text largoooo\"}'),
(108, '2020-10-22 22:17:32', '127.0.0.0', 'Defaul', '{\"title\":\"fd\",\"category\":\"df\"}'),
(109, '2020-10-22 22:27:28', '127.0.0.0', 'Defaul', ' Se elimino JSON.stringify(articleData)'),
(110, '2020-10-22 22:30:19', '127.0.0.0', 'Defaul', ' Se elimino{\"articleId\":145}'),
(111, '2020-10-22 22:32:16', '127.0.0.0', 'Defaul', ' Se creo el  {\"title\":\"er\",\"category\":\"er\"}'),
(112, '2020-10-22 22:33:29', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"rer\",\"category\":\"rer\"}'),
(113, '2020-10-22 22:34:31', '127.0.0.0', 'Defaul', 'he was created  {\"id\":null,\"title\":\"dwd\",\"category\":\"dwd\"}'),
(114, '2020-10-22 22:35:17', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"cdd\",\"category\":\"cdc\"}'),
(115, '2020-10-22 22:42:34', '127.0.0.0', 'Defaul', ' Se actualizo {\"title\":\"rere\",\"category\":\"mkdmck\"}'),
(116, '2020-10-22 22:43:11', '127.0.0.0', 'Defaul', ' Se actualizo {\"title\":\"rere\",\"category\":\"mkdmck\"}'),
(117, '2020-10-22 22:50:09', ' ip user:undefi', 'Defaul', 'he was created  {\"title\":\"rerer\",\"category\":\"rerer\"}'),
(118, '2020-10-22 22:51:22', ' ip user:undefined', 'Defaul', 'he was created  {\"title\":\"4444\",\"category\":\"6666\"}'),
(119, '2020-10-22 22:57:48', '', 'Defaul', 'he was created  {\"title\":\"3434\",\"category\":\"67565\"}'),
(120, '2020-10-22 22:59:55', '127.0.0.0undefined', 'Defaul', 'he was created  {\"title\":\"rerer\",\"category\":\"34534\"}'),
(121, '2020-10-22 23:03:13', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"343423\",\"category\":\"234234\"}'),
(122, '2020-10-22 23:04:03', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":165}'),
(123, '2020-10-22 23:07:25', '127.0.0.0', 'Defaul', ' Se actualizo {\"title\":\"rerer\",\"category\":\"34534\"}'),
(124, '2020-10-22 23:07:48', '127.0.0.0', 'Defaul', ' Se actualizo {\"title\":\"rerer\",\"category\":\"789878\"}'),
(125, '2020-10-23 14:29:44', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"ghg\",\"category\":\"ff\"}'),
(126, '2020-10-23 14:35:37', '127.0.0.0', 'Defaul', ' Se actualizo {\"title\":\"ghg\",\"category\":\"ff\"}'),
(127, '2020-10-23 15:10:15', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"prueba1\",\"category\":\"123\"}'),
(128, '2020-10-23 17:28:29', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":167,\"title\":\"prueba1\",\"category\":\"123\"}'),
(129, '2020-10-23 17:29:44', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":167,\"title\":\"prueba1\",\"category\":\"345\"}'),
(130, '2020-10-23 17:31:33', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":false,\"title\":false,\"category\":false}'),
(131, '2020-10-23 17:44:42', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":false,\"title\":true,\"category\":false}'),
(132, '2020-10-23 17:46:29', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":false,\"title\":true,\"category\":false}'),
(133, '2020-10-23 17:47:34', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":false,\"title\":\"4234234\",\"category\":\"789878\"}'),
(134, '2020-10-23 17:48:27', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":167,\"title\":\"prueba333\",\"category\":\"345\"}'),
(135, '2020-10-23 17:58:42', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":164,\"title\":\"tato\",\"category\":\"789878\"}'),
(136, '2020-10-23 19:36:12', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":163,\"title\":\"444\",\"category\":\"33\"}'),
(137, '2020-10-23 19:36:19', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":163,\"title\":\"444\",\"category\":\"33\"}'),
(138, '2020-10-23 19:50:27', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":164,\"title\":\"tato\",\"category\":\"yui\"}'),
(139, '2020-10-23 19:56:21', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":164,\"title\":\"tato\",\"category\":\"6789\"}'),
(140, '2020-10-23 19:59:24', '127.0.0.0', 'Defaul', ' Se actualizo 164'),
(141, '2020-10-23 20:00:02', '127.0.0.0', 'Defaul', ' Se actualizo 163'),
(142, '2020-10-23 20:02:56', '127.0.0.0', 'Defaul', ' Se actualizo undefined'),
(143, '2020-10-23 20:03:45', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":false,\"title\":\"prueba32\",\"category\":\"345\"}'),
(144, '2020-10-23 21:08:34', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":160,\"title\":false,\"category\":false}'),
(145, '2020-10-23 21:58:33', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"modi\",\"category\":\"678\"}'),
(146, '2020-10-26 15:19:41', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"prueba5\",\"category\":\"09876\"}'),
(147, '2020-10-26 15:19:44', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":true,\"category\":true}'),
(148, '2020-10-26 15:24:03', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":\"prueba5\",\"category\":\"trt\"}'),
(149, '2020-10-26 15:35:58', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":\"prueba5\",\"category\":\"5674\"}'),
(150, '2020-10-26 15:37:17', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":168,\"title\":\"modi\",\"category\":\"678\"}'),
(151, '2020-10-26 15:45:45', '127.0.0.0', 'Defaul', ' Se actualizo {\"resut\":true}'),
(152, '2020-10-26 16:33:00', '127.0.0.0', 'Defaul', ' Se actualizo {\"result\":true,\"id\":167,\"title\":\"pruebatest\",\"category\":\"345\"}'),
(153, '2020-10-26 17:35:24', '127.0.0.0', 'Defaul', ' Se actualizo undefined'),
(154, '2020-10-26 17:37:31', '127.0.0.0', 'Defaul', ' Se actualizo 163'),
(155, '2020-10-26 17:41:57', '127.0.0.0', 'Defaul', ' Se actualizo \"162function (value, options) {\\n        var _this = this;\\n        if (options === void 0) { options = {}; }\\n        this._checkAllValuesPresent(value);\\n        Object.keys(value).forEach(function (name) {\\n            _this._throwIfControlMissing(name);\\n            _this.controls[name].setValue(value[name], { onlySelf: true, emitEvent: options.emitEvent });\\n        });\\n        this.updateValueAndValidity(options);\\n    }\"'),
(156, '2020-10-26 17:42:01', '127.0.0.0', 'Defaul', ' Se actualizo \"162function (value, options) {\\n        var _this = this;\\n        if (options === void 0) { options = {}; }\\n        this._checkAllValuesPresent(value);\\n        Object.keys(value).forEach(function (name) {\\n            _this._throwIfControlMissing(name);\\n            _this.controls[name].setValue(value[name], { onlySelf: true, emitEvent: options.emitEvent });\\n        });\\n        this.updateValueAndValidity(options);\\n    }\"'),
(157, '2020-10-26 17:45:43', '127.0.0.0', 'Defaul', ' Se actualizo {\"result\":169}'),
(158, '2020-10-26 19:03:37', '127.0.0.0', 'Defaul', ' Se actualizo {\"result\":167}'),
(159, '2020-10-26 20:22:17', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":161}'),
(160, '2020-10-26 20:22:17', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":161}'),
(161, '2020-10-26 20:22:18', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":160}'),
(162, '2020-10-26 20:22:18', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":159}'),
(163, '2020-10-26 20:22:18', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":159}'),
(164, '2020-10-26 20:22:19', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":159}'),
(165, '2020-10-26 20:22:19', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":162}'),
(166, '2020-10-26 20:22:19', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":163}'),
(167, '2020-10-26 20:22:20', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":164}'),
(168, '2020-10-26 20:22:20', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":166}'),
(169, '2020-10-26 20:22:20', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":167}'),
(170, '2020-10-26 20:22:22', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":155}'),
(171, '2020-10-26 20:22:22', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":156}'),
(172, '2020-10-26 20:22:22', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":157}'),
(173, '2020-10-26 20:22:26', '127.0.0.0', 'Defaul', ' Se actualizo {\"result\":158}'),
(174, '2020-10-26 21:18:45', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"prueba7\",\"category\":\"1234\"}'),
(175, '2020-10-26 21:18:51', '127.0.0.0', 'Defaul', ' Se actualizo {\"result\":170}'),
(176, '2020-10-26 23:03:32', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"sdsdd\",\"category\":\"sds\"}'),
(177, '2020-10-26 23:04:00', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"sdsdd\",\"category\":\"sds\"}'),
(178, '2020-10-27 15:15:27', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"sdsdd\",\"category\":\"1234\"}'),
(179, '2020-10-27 15:26:28', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba21\",\"category\":\"666666666666\"}'),
(180, '2020-10-27 15:27:28', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba21\",\"category\":\"3333\"}'),
(181, '2020-10-27 15:27:34', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba21\",\"category\":\"3333\"}'),
(182, '2020-10-27 15:27:35', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba21\",\"category\":\"3333\"}'),
(183, '2020-10-27 15:27:39', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":170,\"title\":\"prueba77\",\"category\":\"09876\"}'),
(184, '2020-10-27 15:27:53', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":\"prueba6\",\"category\":\"123456\"}'),
(185, '2020-10-27 15:30:24', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba21\",\"category\":\"3333\"}'),
(186, '2020-10-27 15:53:23', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":\"prueba6\",\"category\":\"123456\"}'),
(187, '2020-10-27 15:54:29', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba21\",\"category\":\"67676\"}'),
(188, '2020-10-27 15:58:08', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba21\",\"category\":\"56565\"}'),
(189, '2020-10-27 16:00:09', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba21\",\"category\":\"tytyt\"}'),
(190, '2020-10-27 16:00:58', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba21\",\"category\":\"ahora\"}'),
(191, '2020-10-27 16:01:47', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":170,\"title\":\"prueba77\",\"category\":\"09876\"}'),
(192, '2020-10-27 16:03:22', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":170,\"title\":\"prueba90\",\"category\":\"09876\"}'),
(193, '2020-10-27 16:03:57', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":170,\"title\":\"prueba90\",\"category\":\"ahita\"}'),
(194, '2020-10-27 16:05:48', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":true,\"category\":true}'),
(195, '2020-10-27 16:06:34', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":false,\"category\":false}'),
(196, '2020-10-27 16:07:04', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":false,\"category\":false}'),
(197, '2020-10-27 16:08:03', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":false,\"category\":false}'),
(198, '2020-10-27 16:08:53', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":false,\"category\":false}'),
(199, '2020-10-27 16:09:48', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":\"prueba198\",\"category\":false}'),
(200, '2020-10-27 16:10:54', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":\"prueba1988888\",\"category\":false}'),
(201, '2020-10-27 16:11:27', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":170,\"title\":\"prueba90\",\"category\":false}'),
(202, '2020-10-27 16:11:45', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":170,\"title\":\"prueb\",\"category\":false}'),
(203, '2020-10-27 16:12:21', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":\"prueba1988888\",\"category\":\"porueba289tttt\"}'),
(204, '2020-10-27 16:26:03', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":\"prueba1988888\",\"category\":\"porueba28\"}'),
(205, '2020-10-27 17:38:25', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":\"prueba1988\",\"category\":\"porueba28\"}'),
(206, '2020-10-27 17:38:37', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":169,\"title\":\"prueba1\",\"category\":\"porueba28\"}'),
(207, '2020-10-27 17:40:54', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":170,\"title\":\"prueb\",\"category\":\"ahita\"}'),
(208, '2020-10-27 17:42:02', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":170,\"title\":\"alexa\",\"category\":\"ahita\"}'),
(209, '2020-10-27 17:43:27', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba21\",\"category\":\"ahora\"}'),
(210, '2020-10-27 17:43:43', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba210\",\"category\":\"ahora\"}'),
(211, '2020-10-27 17:44:46', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba210\",\"category\":\"ahora\"}'),
(212, '2020-10-27 19:31:31', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba210\",\"category\":\"ahoraya\"}'),
(213, '2020-10-27 19:45:48', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"prueba222\",\"category\":\"tree\"}'),
(214, '2020-10-27 19:52:17', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba210\",\"category\":\"ahorahhh\"}'),
(215, '2020-10-27 19:54:20', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba210\",\"category\":\"ahorrrrr\"}'),
(216, '2020-10-27 19:56:25', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba210\",\"category\":\"ahorrrrr\"}'),
(217, '2020-10-27 19:57:30', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"pruuuuuuueba\",\"category\":\"ahorrrrr\"}'),
(218, '2020-10-27 19:59:37', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":172,\"title\":\"prueba222\",\"category\":\"tree\"}'),
(219, '2020-10-27 20:03:27', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"re\",\"category\":\"hola\"}'),
(220, '2020-10-27 20:04:50', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":173,\"title\":\"re\",\"category\":\"hola\"}'),
(221, '2020-10-27 20:13:14', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":172,\"title\":\"prueba22\",\"category\":\"tree\"}'),
(222, '2020-10-27 20:15:11', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":172,\"title\":\"hilda\",\"category\":\"tree\"}'),
(223, '2020-10-27 20:17:21', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba\",\"category\":\"ahorrrrr\"}'),
(224, '2020-10-27 20:26:24', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":172,\"title\":\"hilda\",\"category\":\"tree\"}'),
(225, '2020-10-27 20:27:55', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":172,\"title\":\"hilda\",\"category\":\"tree\"}'),
(226, '2020-10-27 20:31:19', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":173,\"title\":\"resultado\",\"category\":\"hola\"}'),
(227, '2020-10-27 20:33:09', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":168,\"title\":\"modificar\",\"category\":\"5678\"}'),
(228, '2020-10-27 21:32:05', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":173,\"title\":\"resultado\",\"category\":\"hola\"}'),
(229, '2020-10-27 21:35:22', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"hola\",\"category\":\"prueva 435\"}'),
(230, '2020-10-27 21:35:25', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":174,\"title\":\"hola\",\"category\":\"prueva 435\"}'),
(231, '2020-10-27 21:37:23', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":173,\"title\":\"resultado\",\"category\":\"hola\"}'),
(232, '2020-10-27 21:38:55', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":172,\"category\":\"tree\",\"title\":\"hilda\"}'),
(233, '2020-10-27 21:40:59', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":172,\"category\":\"tree\",\"title\":\"hilda\"}'),
(234, '2020-10-27 21:42:45', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":173,\"category\":\"hola\",\"title\":\"resultado\"}'),
(235, '2020-10-27 21:44:29', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":172,\"category\":\"tree\",\"title\":\"hilda\"}'),
(236, '2020-10-27 21:45:29', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":172,\"category\":\"tree\",\"title\":\"hilda\"}'),
(237, '2020-10-27 21:45:43', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":172,\"category\":\"tree\",\"title\":\"hilda\"}'),
(238, '2020-10-27 21:59:00', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":172,\"title\":\"hilda\",\"category\":\"tree\"}'),
(239, '2020-10-27 21:59:54', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":173,\"title\":\"resultado\",\"category\":\"hola\"}'),
(240, '2020-10-27 22:02:31', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":171,\"title\":\"prueba\",\"category\":\"ahorrrrr\"}'),
(241, '2020-10-29 17:11:08', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"rer\",\"category\":\"re\"}'),
(242, '2020-10-29 17:11:10', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":175,\"title\":\"rer\",\"category\":\"re\"}'),
(243, '2020-10-29 17:11:26', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":175,\"title\":\"rer\",\"category\":\"re\"}'),
(244, '2020-10-29 17:13:22', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":175,\"title\":\"rer\",\"category\":\"re\"}'),
(245, '2020-10-29 17:15:06', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":175,\"title\":\"rer\",\"category\":\"re\"}'),
(246, '2020-10-29 17:17:10', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":175,\"title\":\"rer\",\"category\":\"re\"}'),
(247, '2020-10-29 17:17:13', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":175,\"title\":\"rer\",\"category\":\"re\"}'),
(248, '2020-10-29 17:19:55', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":175,\"title\":\"rer\",\"category\":\"re\"}'),
(249, '2020-10-29 17:22:34', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":175,\"title\":\"rer\",\"category\":\"uuuuuuuuuuuuu\"}'),
(250, '2020-10-30 21:14:00', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":175,\"title\":\"tttttt\",\"category\":\"uuuuuuuuuuuuu\"}'),
(251, '2020-11-03 16:19:21', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"dsf\",\"category\":\"dsf\"}'),
(252, '2020-11-03 16:37:35', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":176,\"title\":\"dsf\",\"category\":\"dsf\"}'),
(253, '2020-11-05 16:47:27', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":176,\"title\":\"pppppp\",\"category\":\"2345\"}'),
(254, '2020-11-05 18:17:16', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":158}'),
(255, '2020-11-05 18:17:16', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":158}'),
(256, '2020-11-05 18:17:17', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":168}'),
(257, '2020-11-05 18:17:17', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":169}'),
(258, '2020-11-05 18:17:18', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":170}'),
(259, '2020-11-05 18:17:18', '127.0.0.0', 'Defaul', ' Se elimino {\"articleId\":171}'),
(260, '2020-11-05 18:17:21', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":172,\"title\":\"hilda\",\"category\":\"treeuuuuuuuuuuuu\"}'),
(261, '2020-11-09 21:31:52', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"XS\",\"category\":\"X\"}'),
(262, '2020-11-09 21:32:03', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\" B\",\"category\":\"B\"}'),
(263, '2020-11-09 21:32:54', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"ASD\",\"category\":\"234\"}'),
(264, '2020-11-09 21:35:26', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"SA\",\"category\":\"sa\"}'),
(265, '2020-11-09 21:35:45', '127.0.0.0', 'Defaul', ' Se actualizo {\"id\":177,\"title\":\"SA\",\"category\":\"sa\"}'),
(266, '2020-11-10 19:24:26', '127.0.0.0', 'Defaul', 'he was created  {\"title\":\"fs\",\"category\":\"fs\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
