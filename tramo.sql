-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-06-2014 a las 11:28:35
-- Versión del servidor: 5.5.34-0ubuntu0.13.04.1
-- Versión de PHP: 5.4.9-4ubuntu2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tramo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estacion`
--

CREATE TABLE IF NOT EXISTS `estacion` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `tramo` varchar(50) NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=163 ;

--
-- Volcado de datos para la tabla `estacion`
--

INSERT INTO `estacion` (`id`, `nombre`, `tramo`, `orden`) VALUES
(1, 'san pablo', 't1', 1),
(2, 'neptuno', 't1', 2),
(3, 'pajaritos', 't1', 3),
(4, 'las rejas', 't1', 4),
(5, 'ecuador', 't1', 5),
(6, 'san alberto hurtado', 't1', 6),
(7, 'u. de santiago', 't1', 7),
(8, 'estacion central', 't1', 8),
(9, 'u.l.a', 't1', 9),
(10, 'republica', 't1', 10),
(11, 'los heroes', 't1', 11),
(12, 'los heroes', 't2', 1),
(13, 'la moneda', 't2', 2),
(14, 'universidad de chile', 't2', 3),
(15, 'universidad de chile', 't3', 1),
(16, 'santa lucia', 't3', 2),
(17, 'u.catolica', 't3', 3),
(18, 'baquedano', 't3', 4),
(19, 'baquedano', 't4', 1),
(20, 'salvador', 't4', 2),
(21, 'm.montt', 't4', 3),
(22, 'p.de valdivia', 't4', 4),
(23, 'los leones', 't4', 5),
(24, 'los leones', 't5', 1),
(25, 'tobalaba ', 't5', 2),
(26, 'tobalaba', 't6', 1),
(27, 'el golf ', 't6', 2),
(28, 'alcantara', 't6', 3),
(29, 'escuela militar', 't6', 4),
(30, 'manquehue', 't6', 5),
(31, 'h.de magallanes', 't6', 6),
(32, 'los dominicos', 't6', 7),
(33, 'la cisterna', 't7', 1),
(34, 'el parron', 't7', 2),
(35, 'lo ovalle', 't7', 3),
(36, 'ciudad del niño', 't7', 4),
(37, 'departamental', 't7', 5),
(38, 'lo vial', 't7', 6),
(39, 'san miguel', 't7', 7),
(40, 'el llano', 't7', 8),
(41, 'franklin', 't7', 9),
(42, 'franklin', 't8', 1),
(43, 'rondizonni', 't8', 2),
(44, 'parque ohiggins', 't8', 3),
(45, 'toesca', 't8', 4),
(46, 'los heroes', 't8', 5),
(47, 'los heroes', 't9', 1),
(48, 'santa ana', 't9', 2),
(49, 'santa ana', 't10', 1),
(50, 'puente cal y canto', 't10', 2),
(51, 'puente cal y canto ', 't11', 1),
(52, 'patronato', 't11', 2),
(53, 'cerro blanco', 't11', 3),
(54, 'cementerios', 't11', 4),
(55, 'einstein', 't11', 5),
(56, 'dorsal', 't11', 6),
(57, 'zapadores', 't11', 7),
(58, 'vespucio norte', 't11', 8),
(59, 'huechuraba', 't12', 1),
(60, 'cardenal caro', 't12', 2),
(61, 'vivaceta', 't12', 3),
(62, 'conchali', 't12', 4),
(63, 'plaza chacabuco', 't12', 5),
(64, 'hospitales', 't12', 6),
(65, 'puente cal y canto ', 't12', 7),
(66, 'puente cal y canto ', 't13', 1),
(67, 'santa ana', 't13', 2),
(68, 'puente cal y canto ', 't14', 1),
(69, 'catedral', 't14', 2),
(70, 'universidad de chile', 't14', 3),
(71, 'universidad de chile', 't15', 1),
(72, '10 de julio', 't15', 2),
(73, 'matta', 't15', 3),
(74, 'irarrazabal', 't15', 4),
(75, 'irarrazabal', 't16', 1),
(76, 'monseñor eyzaguirre', 't16', 2),
(77, 'carmelitas', 't16', 3),
(78, 'carmelitas', 't17', 1),
(79, 'chile españa', 't17', 2),
(80, 'diagonal oriente', 't17', 3),
(81, 'plaza egaña', 't17', 4),
(82, 'plaza egaña', 't18', 1),
(83, 'larrain', 't18', 2),
(84, 'plaza puente alto', 't19', 1),
(85, 'las mercedes', 't19', 2),
(86, 'protectora de la infancia', 't19', 3),
(87, 'hospital sotero del rio', 't19', 4),
(88, 'elisa corrrea', 't19', 5),
(89, 'los quillayes', 't19', 6),
(90, 'san jose de la estrella', 't19', 7),
(91, 'trinidad', 't19', 8),
(92, 'rojas magallanes', 't19', 9),
(93, 'vicente valdes', 't19', 10),
(94, 'vicente valdes', 't20', 1),
(95, 'vicuna mackenna', 't20', 2),
(96, 'vicuna mackenna ', 't21', 1),
(97, 'macul', 't21', 2),
(98, 'las torres', 't21', 3),
(99, 'quilin', 't21', 4),
(100, 'los presidentes', 't21', 5),
(101, 'grecia', 't21', 6),
(102, 'plaza egaña', 't21', 7),
(103, 'plaza egaña', 't22', 1),
(104, 'simon bolivar', 't22', 2),
(105, 'prinicipe de gales', 't22', 3),
(106, 'francisco bilbao', 't22', 4),
(107, 'cristobal colon ', 't22', 5),
(108, 'tobalaba', 't22', 6),
(109, 'vicuna mackenna ', 't23', 1),
(110, 'santa julia', 't23', 2),
(111, 'las granjas', 't23', 3),
(112, 'santa rosa', 't23', 4),
(113, 'san ramon', 't23', 5),
(114, 'la cisterna', 't23', 6),
(115, 'vicente valdes', 't24', 1),
(116, 'bellaviste de la florida', 't24', 2),
(117, 'mirador', 't24', 3),
(118, 'pedrero', 't24', 4),
(119, 'san joaquin', 't24', 5),
(120, 'camino agricola', 't24', 6),
(121, 'carlos valdovinos', 't24', 7),
(122, 'rodrigo de araya', 't24', 8),
(123, 'nuble', 't24', 9),
(124, 'nuble', 't25', 1),
(125, 'irarrazabal', 't25', 2),
(126, 'irarrazabal', 't26', 1),
(127, 'santa isabel', 't26', 2),
(128, 'p.bustamante', 't26', 3),
(129, 'baquedano', 't26', 4),
(130, 'baquedano', 't27', 1),
(131, 'bellas artes', 't27', 2),
(132, 'plaza de armas', 't27', 3),
(133, 'santa ana', 't27', 4),
(134, 'santa ana', 't28', 1),
(135, 'cumming', 't28', 2),
(136, 'quinta normal', 't28', 3),
(137, 'gruta de lourdes', 't28', 4),
(138, 'blanqueado', 't28', 5),
(139, 'lo prado', 't28', 6),
(140, 'san pablo', 't28', 7),
(141, 'san pablo', 't29', 1),
(142, 'pudahuel', 't29', 2),
(143, 'barrancas', 't29', 3),
(144, 'laguna sur', 't29', 4),
(145, 'las parcelas', 't29', 5),
(146, 'monte tabor', 't29', 6),
(147, 'el sol', 't29', 7),
(148, 'santiago bueras', 't29', 8),
(149, 'plaza maipu', 't29', 9),
(150, 'cerrillos', 't30', 1),
(151, 'lo valledor', 't30', 2),
(152, 'club hipico', 't30 ', 3),
(153, 'franklin', 't30', 4),
(154, 'franklin', 't31', 1),
(155, 'bio bio', 't31', 2),
(156, 'nuble', 't31', 3),
(157, 'nuble', 't32', 1),
(158, 'estadio nacional', 't32', 2),
(159, 'carmelitas', 't32', 3),
(160, 'carmelitas', 't33', 1),
(161, 'ines de suarez', 't33', 2),
(162, 'los leones', 't33', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramo`
--

CREATE TABLE IF NOT EXISTS `tramo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tramo` varchar(100) NOT NULL,
  `peso` int(11) NOT NULL,
  `inicio` varchar(100) NOT NULL,
  `fin` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Volcado de datos para la tabla `tramo`
--

INSERT INTO `tramo` (`id`, `tramo`, `peso`, `inicio`, `fin`) VALUES
(1, 't1', 11, 'san pablo', 'los heroes'),
(2, 't2', 3, 'los heroes', 'universidad de chile'),
(3, 't3', 4, 'universidad de chile', 'baquedano'),
(4, 't4', 5, 'baquedano', 'los leones'),
(5, 't5', 2, 'los leones', 'tobalaba'),
(6, 't6', 7, 'tobalaba', 'los dominicos'),
(7, 't7', 9, 'la cisterna', 'franklin'),
(8, 't8', 5, 'franklin', 'los heroes'),
(9, 't9', 2, 'los heroes', 'santa ana'),
(10, 't10', 2, 'santa ana', 'puente cal y canto'),
(11, 't11', 8, 'puente cal y canto', 'vespucio norte'),
(12, 't12', 7, 'huechuraba', 'puente cal y canto'),
(13, 't13', 2, '----', '----'),
(14, 't14', 3, 'puente cal y canto', 'universidad de chile'),
(15, 't15', 4, 'universidad de chile', 'irarrazabal'),
(16, 't16', 3, 'irarrazabal', 'carmelitas'),
(17, 't17', 4, 'carmelitas', 'plaza egaña'),
(18, 't18', 2, 'plaza egaña', 'larrain'),
(19, 't19', 10, 'plaza puente alto', 'vicente valdes'),
(20, 't20', 2, 'vicente valdes', 'vicuna mackenna'),
(21, 't21', 8, 'vicuna mackenna', 'plaza egaña'),
(22, 't22', 6, 'plaza egaña', 'tobalaba'),
(23, 't23', 6, 'vicuna mackenna', 'la cisterna'),
(24, 't24', 9, 'vicente valdes', 'nuble'),
(25, 't25', 2, 'nuble', 'irarrazabal'),
(26, 't26', 4, 'irarrazabal', 'baquedano'),
(27, 't27', 4, 'baquedano', 'santa ana'),
(28, 't28', 7, 'santa ana', 'san pablo'),
(29, 't29', 9, 'san pablo', 'plaza de maipu'),
(30, 't30', 4, 'cerrillos', 'franklin'),
(31, 't31', 3, 'franklin', 'nuble'),
(32, 't32', 3, 'nuble', 'carmelitas'),
(33, 't33', 3, 'carmelitas', 'los leones');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
