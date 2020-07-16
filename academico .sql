-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2020 a las 00:46:37
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificador`
--

CREATE TABLE `identificador` (
  `ci` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_completo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fechanac` date NOT NULL,
  `foto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `depto` varchar(5) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `identificador`
--

INSERT INTO `identificador` (`ci`, `nombre_completo`, `fechanac`, `foto`, `depto`) VALUES
('2343454', 'maria rojas caballero', '2000-01-08', 'maria.jpg', 'lp'),
('4777949', 'juan jimmy castañeta gavincha', '1987-08-13', 'juan.jpg', 'lp'),
('6081435', 'isabel lopez gutierrez', '1996-05-07', 'isabel1.jpg', 'cbba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id_nota` int(30) NOT NULL,
  `ci` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `materia` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nota` float NOT NULL,
  `depto` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id_nota`, `ci`, `materia`, `nota`, `depto`) VALUES
(1, '4777949', 'inf-111', 20, 'lp'),
(2, '6081435', 'inf-111', 67, 'cbba'),
(3, '8777940', 'inf-111', 56, 'or'),
(4, '8777940', 'inf-112', 67, 'or');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ci` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `color` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ci`, `usuario`, `clave`, `color`) VALUES
('2343454', 'maria', '12345678', 'orange'),
('4777949', 'juan', '123456', 'orange'),
('6081435', 'isabel', '1234567', 'orange');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `identificador`
--
ALTER TABLE `identificador`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
