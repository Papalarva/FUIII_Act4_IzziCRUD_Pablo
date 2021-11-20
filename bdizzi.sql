-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2021 a las 04:55:20
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdizzi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contraseña` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `codigo_postal`, `correo`, `contraseña`) VALUES
(1, 'Edgar', 'Pablo', 32674, 'papalarva1@gmail.com', 'Contraseña1234'),
(3, 'Anel Nicole', 'Hernandez Sanchez', 43124, 'hernandez_nicole_sanchez@gmail.com', 'Pasteldecarne1234'),
(4, 'Cesar', 'Renteria', 43456, 'renteriaCesarRenteria@gmail.com', 'Chocolateblanco'),
(5, 'Leslie', 'Gaytan', 32764, 'mileth2807@gmail.com', 'Lamusicaesvida'),
(6, 'Edgar', 'Pablo', 32674, 'papalarva1@gmail.com', 'Contraseña1234'),
(7, 'Irwing', 'Genaro', 32675, 'palomablanca@gmail.com', 'Contraseña897'),
(9, 'Angel David', 'Sandoval', 54645, 'AngelSandoval@gmail.com', 'AngelDavid2985'),
(10, 'Sofia', 'Martinez', 26859, 'pandequeso@gmail.com', 'frijolessinqueso');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
