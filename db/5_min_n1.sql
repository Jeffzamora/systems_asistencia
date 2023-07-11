-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2023 a las 05:29:28
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `5.min_n1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_list`
--

CREATE TABLE `admin_list` (
  `admin_id` int(11) NOT NULL,
  `fullname` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admin_list`
--

INSERT INTO `admin_list` (`admin_id`, `fullname`, `username`, `password`, `type`, `status`, `date_created`) VALUES
(1, 0, 'admin', '4b67deeb9aba04a5b54632ad19934f26', 1, 1, '2021-10-10 21:49:47'),
(2, 0, 'jusuario', '618ce4bf8c5940435d32a48618198a98', 2, 1, '2021-10-10 22:04:42'),
(3, 0, 'pusuario', '9193ae44bc5f731c47d3dc78cdeaf3b8', 2, 1, '2021-10-11 07:02:10'),
(4, 0, 'jadministrador', 'a482eaf4499c9685a393cc2b3f583023', 1, 1, '2021-10-11 07:04:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendance_list`
--

CREATE TABLE `attendance_list` (
  `attendance_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `device_type` text NOT NULL,
  `att_type` text NOT NULL,
  `ip` text NOT NULL,
  `location` text NOT NULL,
  `json_data` text NOT NULL,
  `imagen` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `attendance_list`
--

INSERT INTO `attendance_list` (`attendance_id`, `employee_id`, `device_type`, `att_type`, `ip`, `location`, `json_data`, `imagen`, `date_created`) VALUES
(1, 1, 'desktop', 'IN', '161.18.6.167', '3.2311,-76.4167', '{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2021-10-10 17:02:00'),
(2, 1, 'desktop', 'OUT', '161.18.6.167', '3.2311,-76.4167', '{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2021-10-10 17:08:00'),
(3, 1, 'desktop', 'IN', '161.18.6.167', '3.2311,-76.4167', '{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2021-10-10 20:22:00'),
(4, 1, 'desktop', 'L_IN', '161.18.6.167', '3.2311,-76.4167', '{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2021-10-10 20:58:00'),
(5, 1, 'desktop', 'OUT', '161.18.6.167', '3.2311,-76.4167', '{`ip`:`161.18.6.167`,`city`:`Puerto Tejada`,`region`:`Cauca`,`country`:`CO`,`loc`:`3.2311,-76.4167`,`org`:`AS3816 COLOMBIA TELECOMUNICACIONES S.A. ESP`,`postal`:`191501`,`timezone`:`America/Bogota`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2021-10-10 20:59:00'),
(6, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:49:00'),
(7, 1, 'desktop', 'L_IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:49:00'),
(8, 1, 'desktop', 'L_OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:49:00'),
(9, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:49:00'),
(10, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:49:00'),
(11, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:53:00'),
(12, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:53:00'),
(13, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:55:00'),
(14, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:58:00'),
(15, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:59:00'),
(16, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:59:00'),
(17, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 04:59:00'),
(18, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:00:00'),
(19, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:03:00'),
(20, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:04:00'),
(21, 1, 'desktop', '', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:04:00'),
(22, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:05:00'),
(23, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:05:00'),
(24, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:05:00'),
(25, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:05:00'),
(26, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:06:00'),
(27, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:06:00'),
(28, 1, 'desktop', 'L_OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:06:00'),
(29, 1, 'desktop', 'L_IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:07:00'),
(30, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:07:00'),
(31, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:09:00'),
(32, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:10:00'),
(33, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:10:00'),
(34, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:11:00'),
(35, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:12:00'),
(36, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:14:00'),
(37, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:14:00'),
(38, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:15:00'),
(39, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:15:00'),
(40, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:16:00'),
(41, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:18:00'),
(42, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:18:00'),
(43, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:19:00'),
(44, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:19:00'),
(45, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:20:00'),
(46, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:22:00'),
(47, 1, 'desktop', 'OUT', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:23:00'),
(48, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:23:00'),
(49, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:23:00'),
(50, 1, 'desktop', 'IN', '186.77.197.197', '12.1328,-86.2504', '{`ip`:`186.77.197.197`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 05:24:00'),
(51, 1, 'desktop', 'IN', '190.212.134.92', '12.1328,-86.2504', '{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-02-28 20:53:00'),
(52, 1, 'desktop', 'IN', '190.212.134.92', '12.1328,-86.2504', '{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-03-01 00:38:00'),
(53, 1, 'desktop', 'OUT', '190.212.134.92', '12.1328,-86.2504', '{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-03-01 00:38:00'),
(54, 1, 'desktop', 'IN', '190.212.134.92', '12.1328,-86.2504', '{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-03-01 00:39:00'),
(55, 1, 'desktop', 'IN', '190.212.134.92', '12.1328,-86.2504', '{`ip`:`190.212.134.92`,`hostname`:`92-134-212-190.enitel.net.ni`,`city`:`Managua`,`region`:`Managua Department`,`country`:`NI`,`loc`:`12.1328,-86.2504`,`org`:`AS14754 Telgua`,`timezone`:`America/Managua`,`readme`:`https://ipinfo.io/missingauth`}', NULL, '2023-03-01 03:12:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `department_list`
--

CREATE TABLE `department_list` (
  `department_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` text NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `department_list`
--

INSERT INTO `department_list` (`department_id`, `name`, `status`, `date_created`) VALUES
(1, 'Tecnologías de La Información', '1', '2021-10-10 21:55:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_list`
--

CREATE TABLE `employee_list` (
  `employee_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `employee_code` text NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `address` text NOT NULL,
  `status` text NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `employee_list`
--

INSERT INTO `employee_list` (`employee_id`, `department_id`, `position_id`, `employee_code`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `email`, `password`, `address`, `status`, `date_created`) VALUES
(1, 1, 1, '121212E1', 'Juan', 'Andrés', 'Empleado', 'Male', '3062589471', 'jempleado@cweb.com', 'f186570fc58d1f94aaaa7cda7eafbb0d', 'Calle 34 N 21 43', '1', '2021-10-10 21:58:14'),
(2, 1, 1, '121212E2', 'Pablo', '', 'Empleado', 'Male', '3243452311', 'pempleado@cweb.com', 'f96233ca8a3fad46c8044f1369050faa', 'Calle 54 N 33 21', '1', '2021-10-11 06:59:21'),
(4, 1, 1, '12363656', 'Juan', '', 'Perez', 'Male', '11222', 'juan@perez', '57493b75c6830f3d545eaba3c9f6c3a0', 'Managua', '1', '2023-02-28 09:46:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `position_list`
--

CREATE TABLE `position_list` (
  `position_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` text NOT NULL DEFAULT 1,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `position_list`
--

INSERT INTO `position_list` (`position_id`, `name`, `status`, `date_created`) VALUES
(1, 'Técnico de Soporte Nivel 1', '1', '2021-10-10 21:56:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_list`
--
ALTER TABLE `admin_list`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indices de la tabla `attendance_list`
--
ALTER TABLE `attendance_list`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indices de la tabla `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`department_id`);

--
-- Indices de la tabla `employee_list`
--
ALTER TABLE `employee_list`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indices de la tabla `position_list`
--
ALTER TABLE `position_list`
  ADD PRIMARY KEY (`position_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_list`
--
ALTER TABLE `admin_list`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `attendance_list`
--
ALTER TABLE `attendance_list`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `department_list`
--
ALTER TABLE `department_list`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `employee_list`
--
ALTER TABLE `employee_list`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `position_list`
--
ALTER TABLE `position_list`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `attendance_list`
--
ALTER TABLE `attendance_list`
  ADD CONSTRAINT `attendance_list_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_list` (`employee_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `employee_list`
--
ALTER TABLE `employee_list`
  ADD CONSTRAINT `employee_list_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `position_list` (`position_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_list_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`department_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
