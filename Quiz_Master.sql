-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 17-11-2023 a las 12:32:57
-- Versión del servidor: 8.1.0
-- Versión de PHP: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Quiz Master`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categoria`
--

CREATE TABLE `Categoria` (
  `CodCat` int NOT NULL,
  `NomCat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Categoria`
--

INSERT INTO `Categoria` (`CodCat`, `NomCat`) VALUES
(1, 'Ciencia'),
(2, 'Historia'),
(3, 'Deportes'),
(4, 'Entretenimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contiene`
--

CREATE TABLE `contiene` (
  `CodJue` int NOT NULL,
  `CodPre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `contiene`
--

INSERT INTO `contiene` (`CodJue`, `CodPre`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juega`
--

CREATE TABLE `juega` (
  `CodUsu` int NOT NULL,
  `CodJue` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `juega`
--

INSERT INTO `juega` (`CodUsu`, `CodJue`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Juego`
--

CREATE TABLE `Juego` (
  `CodJue` int NOT NULL,
  `Puntos` int NOT NULL,
  `FechaInicio` datetime NOT NULL,
  `FechaFin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Juego`
--

INSERT INTO `Juego` (`CodJue`, `Puntos`, `FechaInicio`, `FechaFin`) VALUES
(1, 100, '2023-01-01 10:00:00', '2023-01-01 11:00:00'),
(2, 200, '2023-02-01 10:00:00', '2023-02-01 11:00:00'),
(3, 300, '2023-03-01 10:00:00', '2023-03-01 11:00:00'),
(4, 400, '2023-04-01 10:00:00', '2023-04-01 11:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pregunta`
--

CREATE TABLE `Pregunta` (
  `CodPre` int NOT NULL,
  `TextoPre` text NOT NULL,
  `RespuestaCor` text NOT NULL,
  `ValorPuntos` int NOT NULL,
  `CodCat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Pregunta`
--

INSERT INTO `Pregunta` (`CodPre`, `TextoPre`, `RespuestaCor`, `ValorPuntos`, `CodCat`) VALUES
(1, '¿Cuál es el elemento químico con el número atómico 1?', 'Hidrógeno', 10, 1),
(2, '¿Quién fue el primer hombre en pisar la luna?', 'Neil Armstrong', 10, 2),
(3, '¿Cuál es el deporte más popular en el mundo?', 'Fútbol', 10, 3),
(4, '¿Cuál es el país más grande del mundo?', 'Canadá', 10, 4),
(5, '¿Cuál es el planeta más grande del sistema solar?', 'Júpiter', 10, 1),
(6, '¿Quién fue el primer presidente de los Estados Unidos?', 'George Washington', 10, 2),
(7, '¿Cuál es el deporte más popular en España?', 'Fútbol', 10, 3),
(8, '¿Cuál es el país más poblado del mundo?', 'China', 10, 4),
(9, '¿Cuál es el elemento químico con el número atómico 118?', 'Oganessón', 10, 1),
(10, '¿Quién fue la primera mujer en pisar la luna?', 'Eileen Collins', 10, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `CodUsu` int NOT NULL,
  `NomUsu` varchar(255) NOT NULL,
  `Contraseña` varchar(255) NOT NULL,
  `CorreoUsu` varchar(255) NOT NULL,
  `Puntuacion` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`CodUsu`, `NomUsu`, `Contraseña`, `CorreoUsu`, `Puntuacion`) VALUES
(1, 'JuanGarcia', 'Contraseña123', 'juangarcia@example.es', 500),
(2, 'AnaMartinez', 'Contraseña456', 'anamartinez@example.es', 600),
(3, 'CarlosGomez', 'Contraseña789', 'carlosgomez@example.es', 700),
(4, 'MariaLopez', 'Contraseña012', 'marialopez@example.es', 800),
(5, 'PedroSanchez', 'Contraseña345', 'pedrosanchez@example.es', 900),
(6, 'IsabelFernandez', 'Contraseña678', 'isabelfernandez@example.es', 1000),
(7, 'JavierGonzalez', 'Contraseña901', 'javiergonzalez@example.es', 1100),
(8, 'CarmenRodriguez', 'Contraseña234', 'carmenrodriguez@example.es', 1200),
(9, 'FranciscoPerez', 'Contraseña567', 'franciscoperez@example.es', 1300),
(10, 'TeresaRamirez', 'Contraseña890', 'teresaramirez@example.es', 1400);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Categoria`
--
ALTER TABLE `Categoria`
  ADD PRIMARY KEY (`CodCat`);

--
-- Indices de la tabla `contiene`
--
ALTER TABLE `contiene`
  ADD PRIMARY KEY (`CodJue`,`CodPre`),
  ADD KEY `CodPre` (`CodPre`);

--
-- Indices de la tabla `juega`
--
ALTER TABLE `juega`
  ADD PRIMARY KEY (`CodUsu`,`CodJue`),
  ADD KEY `CodJue` (`CodJue`);

--
-- Indices de la tabla `Juego`
--
ALTER TABLE `Juego`
  ADD PRIMARY KEY (`CodJue`);

--
-- Indices de la tabla `Pregunta`
--
ALTER TABLE `Pregunta`
  ADD PRIMARY KEY (`CodPre`),
  ADD KEY `CodCat` (`CodCat`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`CodUsu`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contiene`
--
ALTER TABLE `contiene`
  ADD CONSTRAINT `contiene_ibfk_1` FOREIGN KEY (`CodJue`) REFERENCES `Juego` (`CodJue`),
  ADD CONSTRAINT `contiene_ibfk_2` FOREIGN KEY (`CodPre`) REFERENCES `Pregunta` (`CodPre`);

--
-- Filtros para la tabla `juega`
--
ALTER TABLE `juega`
  ADD CONSTRAINT `juega_ibfk_1` FOREIGN KEY (`CodUsu`) REFERENCES `Usuario` (`CodUsu`),
  ADD CONSTRAINT `juega_ibfk_2` FOREIGN KEY (`CodJue`) REFERENCES `Juego` (`CodJue`);

--
-- Filtros para la tabla `Pregunta`
--
ALTER TABLE `Pregunta`
  ADD CONSTRAINT `Pregunta_ibfk_1` FOREIGN KEY (`CodCat`) REFERENCES `Categoria` (`CodCat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
