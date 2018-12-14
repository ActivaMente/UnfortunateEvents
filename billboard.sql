-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2018 a las 18:47:50
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `billboard`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums`
--

CREATE TABLE `albums` (
  `idAlbums` int(11) NOT NULL,
  `Album` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Lanzamiento` int(11) NOT NULL,
  `Portada` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Descripcion` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `Artistas_idArtistas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `albums`
--

INSERT INTO `albums` (`idAlbums`, `Album`, `Lanzamiento`, `Portada`, `Descripcion`, `Artistas_idArtistas`) VALUES
(1, 'The Gratest', 2016, '08.png', 'Numero #1 en 5 paises de Europa', 1),
(2, 'One in A Millon', 2018, '03.png', 'DJ', 2),
(3, 'Completement fou', 2014, '12.png', 'Numero #1 en Francia', 3),
(4, 'Little Broken Hearts', 2012, '11.png', 'La Mejor Voz Femenina del Jazz', 4),
(5, 'Crush', 2014, '07.png', 'Grupo mundial del K-Pop', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums_has_canciones`
--

CREATE TABLE `albums_has_canciones` (
  `Albums_idAlbums` int(11) NOT NULL,
  `Canciones_idCanciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `albums_has_canciones`
--

INSERT INTO `albums_has_canciones` (`Albums_idAlbums`, `Canciones_idCanciones`) VALUES
(1, 1),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(4, 21),
(4, 22),
(4, 23),
(4, 24),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(5, 29),
(5, 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `idArtistas` int(11) NOT NULL,
  `Artista` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `Nacimiento` year(4) NOT NULL,
  `Origen` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `Imagen` varchar(450) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Generos_idGeneros` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`idArtistas`, `Artista`, `Nacimiento`, `Origen`, `Imagen`, `Generos_idGeneros`) VALUES
(1, 'SIA', 1983, 'â€ŽAustraliana', '12.jpg', 1),
(2, 'Matoma', 1991, 'Noruego', '03.jpg', 2),
(3, 'Yelle', 1983, 'Francesa', '09.jpg', 3),
(4, 'Norah Jones', 1979, 'Estadounidense', '08.jpg', 4),
(5, '2NE1', 2009, 'Korea', '11.jpg', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `idCanciones` int(11) NOT NULL,
  `Cancion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Archivo` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Enlace` varchar(250) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`idCanciones`, `Cancion`, `Archivo`, `Enlace`) VALUES
(1, 'Move Your Body', NULL, 'https://www.youtube.com/watch?v=0GoGcVs6pbU'),
(4, 'Cheap Thrills', 'Sia - Cheap Thrills.mp3', NULL),
(5, 'Confetti', 'Sia - Confetti.mp3', NULL),
(6, 'Jesus Wept', 'Sia - Jesus Wept.mp3', NULL),
(7, 'Midnight Decisions', 'Sia - Midnight Decisions.mp3', NULL),
(8, 'The Greatest', 'Sia - The Greatest.mp3', NULL),
(9, 'Sunday Morning', NULL, 'https://www.youtube.com/watch?v=jpKG9Cu38p8'),
(10, 'Lights Go Down', 'Matoma - Lights Go Down.mp3', NULL),
(11, 'Lonely', 'Matoma - Lonely.mp3', NULL),
(12, 'slow', 'Matoma - Slow.mp3', NULL),
(13, 'Staying Up', 'Matoma - Staying Up.mp3', NULL),
(15, 'Completement fou', NULL, 'https://www.youtube.com/watch?v=13o1i-cgTOA'),
(16, 'Ba$$in', 'Yelle - Ba$$in.mp3', NULL),
(17, 'Coca sans bulles', 'Yelle - Coca sans bulles.mp3', NULL),
(18, 'Les soupirs et les refrains', 'Yelle - Les soupirs et les refrains.mp3', NULL),
(19, 'Nuit de baise I', 'Yelle - Nuit de baise I.mp3', NULL),
(20, 'Nuit de baise II', 'Yelle - Nuit de baise II.mp3', NULL),
(21, 'Miriam', NULL, 'https://www.youtube.com/watch?v=MZgkClKE6hQ'),
(22, '4 Broken Hearts', 'Norah Jones - 4 Broken Hearts.mp3', NULL),
(23, 'Happy Pills', 'Norah Jones - Happy Pills.mp3', NULL),
(24, 'Say Goodbye', 'Norah Jones - Say Goodbye.mp3', NULL),
(25, 'Do You Love Me', NULL, 'https://www.youtube.com/watch?v=HRTb81FpWq0'),
(26, 'Baby I Miss You', '2NE1 - Baby I Miss You.mp3', NULL),
(27, 'Crush', '2NE1 - Crush.mp3', NULL),
(28, 'Gotta Be You', '2NE1 - Gotta Be You.mp3', NULL),
(29, 'Happy', '2NE1 - Happy.mp3', NULL),
(30, 'Scream', '2NE1 - Scream.mp3', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `idGeneros` int(11) NOT NULL,
  `Genero` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `Imagen` varchar(450) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`idGeneros`, `Genero`, `Imagen`) VALUES
(1, 'INDIE', '01.jpg'),
(2, 'ELECTRO', '02.jpg'),
(3, 'POP', '07.jpg'),
(4, 'JAZZ', '04.jpg'),
(5, 'K-POP', '03.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idRoles` int(11) NOT NULL,
  `Roll-nombre` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRoles`, `Roll-nombre`) VALUES
(1, 'administrador'),
(2, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `clave` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `image` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Roles_idRoles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombre`, `clave`, `image`, `Roles_idRoles`) VALUES
(1, 'Pablo', '1234', 'user-astronaut.svg', 1),
(2, 'German', '1234', 'user-astronaut.svg', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`idAlbums`,`Artistas_idArtistas`),
  ADD UNIQUE KEY `idAlbums_UNIQUE` (`idAlbums`),
  ADD UNIQUE KEY `Descripcion_UNIQUE` (`Descripcion`),
  ADD UNIQUE KEY `Portada_UNIQUE` (`Portada`),
  ADD KEY `fk_Albums_Artistas1_idx` (`Artistas_idArtistas`);

--
-- Indices de la tabla `albums_has_canciones`
--
ALTER TABLE `albums_has_canciones`
  ADD PRIMARY KEY (`Albums_idAlbums`,`Canciones_idCanciones`),
  ADD KEY `fk_Albums_has_Canciones_Canciones1_idx` (`Canciones_idCanciones`),
  ADD KEY `fk_Albums_has_Canciones_Albums1_idx` (`Albums_idAlbums`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`idArtistas`,`Generos_idGeneros`),
  ADD UNIQUE KEY `idArtistas_UNIQUE` (`idArtistas`),
  ADD UNIQUE KEY `Nombre_UNIQUE` (`Artista`),
  ADD KEY `fk_Artistas_Generos1_idx` (`Generos_idGeneros`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`idCanciones`),
  ADD UNIQUE KEY `idCanciones_UNIQUE` (`idCanciones`),
  ADD UNIQUE KEY `Cancion_UNIQUE` (`Cancion`),
  ADD UNIQUE KEY `Enlace_UNIQUE` (`Enlace`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`idGeneros`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRoles`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`,`Roles_idRoles`),
  ADD UNIQUE KEY `usuarioscol_UNIQUE` (`nombre`),
  ADD KEY `fk_usuario_Roles1_idx` (`Roles_idRoles`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albums`
--
ALTER TABLE `albums`
  MODIFY `idAlbums` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `idArtistas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `idCanciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `idGeneros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idRoles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `fk_Albums_Artistas1` FOREIGN KEY (`Artistas_idArtistas`) REFERENCES `artistas` (`idArtistas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `albums_has_canciones`
--
ALTER TABLE `albums_has_canciones`
  ADD CONSTRAINT `fk_Albums_has_Canciones_Albums1` FOREIGN KEY (`Albums_idAlbums`) REFERENCES `albums` (`idAlbums`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Albums_has_Canciones_Canciones1` FOREIGN KEY (`Canciones_idCanciones`) REFERENCES `canciones` (`idCanciones`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD CONSTRAINT `fk_Artistas_Generos1` FOREIGN KEY (`Generos_idGeneros`) REFERENCES `generos` (`idGeneros`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_Roles1` FOREIGN KEY (`Roles_idRoles`) REFERENCES `roles` (`idRoles`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
