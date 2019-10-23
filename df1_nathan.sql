-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-10-2019 a las 14:27:50
-- Versión del servidor: 5.7.27-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `df1_nathan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Asignar_Rol`
--

CREATE TABLE `Asignar_Rol` (
  `cod_asignar` int(11) NOT NULL,
  `cod_user` int(11) NOT NULL,
  `cod_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Asignar_Rol`
--

INSERT INTO `Asignar_Rol` (`cod_asignar`, `cod_user`, `cod_rol`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Aulas`
--

CREATE TABLE `Aulas` (
  `cod_aula` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Aulas`
--

INSERT INTO `Aulas` (`cod_aula`, `descripcion`) VALUES
(200, 'Aula del libro de chistes de golf'),
(201, 'Aula cuadrada de cinco esquinas'),
(202, 'Aula de homeopatía'),
(203, 'Aula \'te echo de menos\''),
(204, 'Aula de las puertas de cemento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Franja_Horaria`
--

CREATE TABLE `Franja_Horaria` (
  `cod_franja` int(11) NOT NULL,
  `hora` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Franja_Horaria`
--

INSERT INTO `Franja_Horaria` (`cod_franja`, `hora`) VALUES
(1, '08:30'),
(2, '09:25'),
(3, '10:20'),
(4, '11:45'),
(5, '12:40'),
(6, '13:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Reservas`
--

CREATE TABLE `Reservas` (
  `cod_reserva` int(11) NOT NULL,
  `cod_aula` int(11) NOT NULL,
  `cod_franja` int(11) NOT NULL,
  `cod_user` int(11) NOT NULL,
  `dia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Roles`
--

CREATE TABLE `Roles` (
  `cod_rol` int(11) NOT NULL,
  `descripcion` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Roles`
--

INSERT INTO `Roles` (`cod_rol`, `descripcion`) VALUES
(1, 'Profesor'),
(2, 'Administrador general'),
(3, 'Administrador de aula');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
  `cod_user` int(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `apellidos` varchar(35) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`cod_user`, `nombre`, `apellidos`, `email`, `password`) VALUES
(1, 'Nathaniel', 'Lucas Olmo', 'dawnathanstroso@gmail.com', '1'),
(2, 'Isabel', 'de Marcos López', 'isa@gmail.com', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Asignar_Rol`
--
ALTER TABLE `Asignar_Rol`
  ADD PRIMARY KEY (`cod_asignar`);

--
-- Indices de la tabla `Aulas`
--
ALTER TABLE `Aulas`
  ADD PRIMARY KEY (`cod_aula`);

--
-- Indices de la tabla `Franja_Horaria`
--
ALTER TABLE `Franja_Horaria`
  ADD PRIMARY KEY (`cod_franja`);

--
-- Indices de la tabla `Reservas`
--
ALTER TABLE `Reservas`
  ADD PRIMARY KEY (`cod_reserva`);

--
-- Indices de la tabla `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`cod_rol`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  ADD PRIMARY KEY (`cod_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Asignar_Rol`
--
ALTER TABLE `Asignar_Rol`
  MODIFY `cod_asignar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `Reservas`
--
ALTER TABLE `Reservas`
  MODIFY `cod_reserva` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `cod_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
