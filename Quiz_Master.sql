-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 07-12-2023 a las 16:39:44
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
-- Base de datos: `Quiz_Master`
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
-- Estructura de tabla para la tabla `Pregunta`
--

CREATE TABLE `Pregunta` (
  `CodPre` int NOT NULL,
  `TextoPre` text NOT NULL,
  `RespuestaCor` text NOT NULL,
  `ValorPuntos` int NOT NULL,
  `CodCat` int DEFAULT NULL,
  `OpcionIncorrecta1` varchar(255) NOT NULL,
  `OpcionIncorrecta2` varchar(255) NOT NULL,
  `OpcionIncorrecta3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Pregunta`
--

INSERT INTO `Pregunta` (`CodPre`, `TextoPre`, `RespuestaCor`, `ValorPuntos`, `CodCat`, `OpcionIncorrecta1`, `OpcionIncorrecta2`, `OpcionIncorrecta3`) VALUES
(11, '¿Cuántos planetas hay en nuestro sistema solar?', '8', 10, 1, '7', '9', '10'),
(12, '¿Cuál es el símbolo químico del oro?', 'Au', 10, 1, 'Ag', 'Cu', 'Fe'),
(13, '¿Cuál es el hueso más largo del cuerpo humano?', 'Fémur', 10, 1, 'Húmero', 'Tibia', 'Radio'),
(14, '¿Cuál es el proceso natural por el cual el agua cambia de estado líquido a gaseoso?', 'Ebullición', 10, 1, 'Congelación', 'Condensación', 'Sublimación'),
(15, '¿Qué gas necesitan las plantas para realizar la fotosíntesis?', 'Dióxido de carbono (CO2)', 10, 1, 'Oxígeno (O2)', 'Nitrógeno (N2)', 'Hidrógeno (H2)'),
(16, '¿Cuál es la capital de Francia?', 'París', 10, 2, 'Roma', 'Berlín', 'Madrid'),
(17, '¿En qué año comenzó la Segunda Guerra Mundial?', '1939', 10, 2, '1941', '1943', '1945'),
(18, '¿Cuál es el río más largo del mundo?', 'Amazonas', 10, 2, 'Nilo', 'Yangtsé', 'Mississippi'),
(19, '¿Quién escribió \"Don Quijote de la Mancha\"?', 'Miguel de Cervantes', 10, 2, 'Gabriel García Márquez', 'William Shakespeare', 'Leo Tolstoy'),
(20, '¿Cuál es el océano más grande del mundo?', 'Océano Pacífico', 10, 2, 'Océano Atlántico', 'Océano Índico', 'Océano Antártico'),
(21, '¿Quién fue el primer presidente de los Estados Unidos?', 'George Washington', 10, 2, 'Thomas Jefferson', 'John Adams', 'Benjamin Franklin'),
(22, '¿En qué año se firmó la Declaración de Independencia de los Estados Unidos?', '1776', 10, 2, '1789', '1765', '1800'),
(23, '¿Quién fue el líder de la Revolución Rusa en 1917?', 'Vladimir Lenin', 10, 2, 'Joseph Stalin', 'Leon Trotsky', 'Mikhail Gorbachev'),
(24, '¿Cuál fue el evento que desencadenó la Revolución Francesa?', 'Toma de la Bastilla', 10, 2, 'Batalla de Waterloo', 'Ejecución de Luis XVI', 'Concordato de 1801'),
(25, '¿En qué año llegó Cristóbal Colón a América?', '1492', 10, 2, '1500', '1510', '1485'),
(26, '¿Cuál fue la antigua capital del Imperio Romano?', 'Roma', 10, 2, 'Atenas', 'Cartago', 'Constantinopla'),
(27, '¿Quién fue William Shakespeare?', 'Dramaturgo y poeta inglés', 10, 2, 'Científico renombrado', 'Pintor famoso', 'Músico talentoso'),
(28, '¿En qué año terminó la Segunda Guerra Mundial?', '1945', 10, 2, '1939', '1941', '1943'),
(29, '¿Quién fue Mahatma Gandhi?', 'Líder pacifista indio', 10, 2, 'Emperador chino', 'Explorador europeo', 'Presidente estadounidense'),
(30, '¿Cuál fue el último faraón de Egipto?', 'Cleopatra', 10, 2, 'Ramsés II', 'Akenatón', 'Hatshepsut'),
(31, '¿En qué deporte se utiliza una pelota y una canasta?', 'Baloncesto', 10, 3, 'Fútbol', 'Voleibol', 'Golf'),
(32, '¿Cuántos jugadores hay en un equipo de fútbol?', '11', 10, 3, '10', '12', '9'),
(33, '¿En qué deporte se utiliza un guante y una pelota pequeña?', 'Béisbol', 10, 3, 'Tenis', 'Golf', 'Rugby'),
(34, '¿Cuál es el evento deportivo más grande del mundo?', 'Juegos Olímpicos', 10, 3, 'Copa Mundial de Fútbol', 'Super Bowl', 'Tour de Francia'),
(35, '¿En qué deporte se corre más rápido?', 'Atletismo', 10, 3, 'Ciclismo', 'Natación', 'Esquí alpino'),
(36, '¿Cuál es el deporte acuático que se practica con una tabla y una vela?', 'Windsurf', 10, 3, 'Surf', 'Natación sincronizada', 'Esquí acuático'),
(37, '¿Cuál es el deporte nacional de Japón?', 'Sumo', 10, 3, 'Judo', 'Karate', 'Kendo'),
(38, '¿En qué deporte se utiliza un casco y una bicicleta?', 'Ciclismo', 10, 3, 'Motocross', 'BMX', 'Mountain Bike'),
(39, '¿Cuál es el deporte de equipo más antiguo?', 'Fútbol', 10, 3, 'Baloncesto', 'Críquet', 'Hockey'),
(40, '¿En qué deporte se utiliza una red y una pelota pequeña?', 'Tenis de mesa', 10, 3, 'Badminton', 'Vóley playa', 'Squash'),
(41, '¿Quién interpretó a Jack en la película \"Titanic\"?', 'Leonardo DiCaprio', 10, 4, 'Tom Cruise', 'Brad Pitt', 'Johnny Depp'),
(42, '¿Cuál es el nombre del mago protagonista de la saga \"Harry Potter\"?', 'Harry Potter', 10, 4, 'Dumbledore', 'Voldemort', 'Snape'),
(43, '¿En qué ciudad se desarrolla la trama de la serie \"Friends\"?', 'Nueva York', 10, 4, 'Los Ángeles', 'Chicago', 'Londres'),
(44, '¿Quién es conocido como \"El rey del pop\"?', 'Michael Jackson', 10, 4, 'Elvis Presley', 'Prince', 'Madonna'),
(45, '¿Cuál es la película animada de Disney con una princesa que vive bajo el mar?', 'La Sirenita', 10, 4, 'Cenicienta', 'Blancanieves', 'Mulan'),
(46, '¿Cuál es el nombre del robot de la película \"WALL-E\"?', 'EVE', 10, 4, 'R2-D2', 'C-3PO', 'Bender'),
(47, '¿En qué año se estrenó la primera película de \"Star Wars\"?', '1977', 10, 4, '1980', '1983', '1990'),
(48, '¿Quién es el director de la trilogía \"El Señor de los Anillos\"?', 'Peter Jackson', 10, 4, 'Christopher Nolan', 'Steven Spielberg', 'Quentin Tarantino'),
(49, '¿Cuál es la serie de televisión sobre zombis basada en un cómic?', 'The Walking Dead', 10, 4, 'Breaking Bad', 'Stranger Things', 'Game of Thrones'),
(50, '¿Quién es la autora de la saga de libros \"Harry Potter\"?', 'J.K. Rowling', 10, 4, 'Stephen King', 'George R.R. Martin', 'J.R.R. Tolkien');

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
(10, 'TeresaRamirez', 'Contraseña890', 'teresaramirez@example.es', 1400),
(11, 'dani', 'dani', 'Dani@gmail.com', 0),
(14, 'Roberto', '1234', 'Roberto@gmail.com', 0),
(15, 'Juan', 'juan', 'Juan@gmail.com', 0),
(16, 'pauliitadinamiita', 'pauliiita', 'paula@gmail.com', 0),
(18, 'julio', 'pepillo', 'julio@gmail.com', 0),
(19, 'pepe', 'pepe', 'pili@gmail.com', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Categoria`
--
ALTER TABLE `Categoria`
  ADD PRIMARY KEY (`CodCat`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Categoria`
--
ALTER TABLE `Categoria`
  MODIFY `CodCat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `Pregunta`
--
ALTER TABLE `Pregunta`
  MODIFY `CodPre` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `CodUsu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Pregunta`
--
ALTER TABLE `Pregunta`
  ADD CONSTRAINT `Pregunta_ibfk_1` FOREIGN KEY (`CodCat`) REFERENCES `Categoria` (`CodCat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
