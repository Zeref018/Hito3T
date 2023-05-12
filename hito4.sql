-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-05-2023 a las 11:12:24
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hito4`
--

CREATE TABLE `hito4` (
  `sessions` int(11) NOT NULL,
  `competiciones` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nivel` varchar(100) NOT NULL,
  `peso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hito4`
--

INSERT INTO `hito4` (`sessions`, `competiciones`, `nombre`, `nivel`, `peso`) VALUES
(9, 9, 'Alejandro', 'intermediate', '81-89'),
(9, 10, 'Alejandro', 'intermediate', '73-80'),
(12, 8, 'Alejandro', 'intermediate', '81-89'),
(11, 0, 'Alejandro', 'beginner', '66-72'),
(8, 0, 'Alejandro', 'beginner', 'Lightweight'),
(9, 7, 'sergio', 'intermediate', 'Middleweight'),
(11, 0, 'alessandro', 'beginner', 'Middleweight'),
(10, 7, 'alessandro', 'intermediate', 'Middleweight');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
