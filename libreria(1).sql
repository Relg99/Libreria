-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2019 a las 20:20:11
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `ID_Comentario` int(11) NOT NULL,
  `Comentario` varchar(255) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `FK_Libro` int(11) DEFAULT NULL,
  `FK_User` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentario`
--

INSERT INTO `comentario` (`ID_Comentario`, `Comentario`, `Fecha`, `FK_Libro`, `FK_User`) VALUES
(1, 'Uno de los mejores libros que he leído, sin duda abrió mis chakras. Era increíble imaginar a Macondo y sus personajes.', '2019-10-02', 1, 2),
(2, 'Uno de los mejores libros, me regresa a mi infancia, cuando mi madre me leía este libro y me sentía yo como el principito.', '2019-10-11', 8, 1),
(3, 'Que excitante conocer los fetiches de Grenouille. Hizo que me imaginara cada uno de los olores como el los sentía y el final, sin duda de lo mejor. ', '2019-10-02', 4, 3),
(4, 'Me hizo sentir fatal la forma en que el personaje narra como ahora su familia le tenía miedo, asco y como se olvidaron de él. Imprescindible en el librero.', '2019-10-18', 2, 3),
(5, 'Todo un clásico de la literatura universal entretenido y fácil de leer. Una buena forma de introducirse en la lectura de obras clásicas.', '2019-10-25', 7, 2),
(6, 'Interesante análisis sobre el poder y la relación con las diferentes clases sociales. Atemporal.', '2019-10-24', 9, 1),
(7, 'Buen libro.', '2019-10-31', 5, 1),
(8, 'Muy bueno, mucho mejor que las aventuras de Tom Sawyer, la historia es algo más amena porque es menos repetitiva con algunos asuntos, y además tiene mucho más fondo, buena crítica contra la sociedad americana de entonces y el racismo, muestra la huida de ', '2019-11-07', 6, 1),
(9, 'Es interesante imaginar a los personajes y navegar en este viaje.', '2019-08-09', 3, 2),
(10, 'Esta obra, además de abarcar el ámbito psicológico, cabe resaltar que aborda la sociedad rusa del siglo XIX lo más realista que puedo expresar Dostoievski, con todas las decadencias sociales de la sociedad zarista, supo como abordarlas sin sentirse forzad', '2019-10-05', 10, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `Libro_ID` int(11) NOT NULL,
  `Titulo` varchar(50) DEFAULT NULL,
  `Autor` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`Libro_ID`, `Titulo`, `Autor`) VALUES
(1, 'Cien años de soledad', 'Gabriel Garcia Marquez'),
(2, 'La metamorfosis', 'Franz Kafka'),
(3, 'Veinte mil leguas de viaje submarino', 'Julio Verne'),
(4, 'El perfume', 'Patrick Süskind'),
(5, 'Guerra y Paz', 'Leon Tolstoi'),
(6, 'Las Aventuras de Huckleberry Finn', 'Mark Twain'),
(7, 'Hamlet', 'William Shakespeare'),
(8, 'El Principito', 'Antoine de Saint Exupery'),
(9, '1984', 'George Orwell'),
(10, 'Crimen y Castigo', 'Fiodor Dostoievski');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Usuario_ID` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `ApellidoPaterno` varchar(70) DEFAULT NULL,
  `ApellidoMaterno` varchar(70) DEFAULT NULL,
  `nick` varchar(50) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `Login` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Usuario_ID`, `Nombre`, `ApellidoPaterno`, `ApellidoMaterno`, `nick`, `password`, `Login`) VALUES
(1, 'Ricardo', 'Alfonso', 'Martinez', 'Richi', '1234', 0),
(2, 'Mario', 'Guillermino', 'Opresor', 'Trunco', '1234', 0),
(3, 'Andre', 'Blas', 'Monterrubio', 'Novato', '1234', 0),
(4, 'Alan', 'Lomeli', 'Polla', 'Alana', '123', 0),
(5, 'Alan', 'Lomelis', 'Polla2', 'Alanaza', '123', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`ID_Comentario`),
  ADD KEY `FK_Libro` (`FK_Libro`),
  ADD KEY `FK_User` (`FK_User`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`Libro_ID`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Usuario_ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `ID_Comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `Libro_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Usuario_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`FK_User`) REFERENCES `usuario` (`Usuario_ID`),
  ADD CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`FK_Libro`) REFERENCES `libro` (`Libro_ID`),
  ADD CONSTRAINT `comentario_ibfk_3` FOREIGN KEY (`FK_User`) REFERENCES `usuario` (`Usuario_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
