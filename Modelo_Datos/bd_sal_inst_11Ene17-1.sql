-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2017 at 04:09 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_sal_inst`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_componente_comp`
--

CREATE TABLE `t_componente_comp` (
  `id_componente_comp` int(11) NOT NULL,
  `nomenclatura` varchar(45) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `serial` varchar(45) NOT NULL,
  `num_inventario` varchar(20) DEFAULT NULL,
  `posicion` varchar(45) DEFAULT NULL,
  `t_usuarios_id_usuario` int(11) NOT NULL,
  `t_marca_id_marca` int(11) NOT NULL,
  `t_modelo_id_modelo` int(11) NOT NULL,
  `t_partecomp_id_partecomp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_componente_comp`
--

INSERT INTO `t_componente_comp` (`id_componente_comp`, `nomenclatura`, `ip`, `serial`, `num_inventario`, `posicion`, `t_usuarios_id_usuario`, `t_marca_id_marca`, `t_modelo_id_modelo`, `t_partecomp_id_partecomp`) VALUES
(1, 'SMFDSMD', 'SDMFS,MD', 'SDF MSD,M', 'SDFSD', 'SDFDS ,M', 30, 11, 11, 3),
(2, 'TIC51DD01LMXR1', '192.1.207.150', 'F5PLDP1', '104000032156', 'ASESOR 20', 59, 11, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_datos_config`
--

CREATE TABLE `t_datos_config` (
  `id_datos_config` int(11) NOT NULL,
  `nomenclatura` varchar(45) NOT NULL,
  `gpo_trabajo` varchar(45) NOT NULL,
  `direccion_ip` varchar(45) NOT NULL,
  `submascara` varchar(45) NOT NULL,
  `puerta_enlace` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_departamento`
--

CREATE TABLE `t_departamento` (
  `id_depto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `horario` varchar(45) DEFAULT NULL,
  `ubicacion` mediumtext,
  `gerencia_id_gerencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_departamento`
--

INSERT INTO `t_departamento` (`id_depto`, `nombre`, `horario`, `ubicacion`, `gerencia_id_gerencia`) VALUES
(38, 'Crédito y Cobranza', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 1),
(40, 'Cobranza Extrajudicial', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 1),
(41, 'Cobranza a Canales de Distribución', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 1),
(42, 'Control de Fraude Celular', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 1),
(43, 'Mesa de Control de Portabilidad Numérica', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 1),
(44, 'Comisiones', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 1),
(45, 'Mesa de Control', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 1),
(46, 'Desarrollo a Distribuidores Tijuana', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 2),
(47, 'Desarrollo a Distribuidores Mexicali', '9:00 AM - 6:00 PM', '', 2),
(48, 'Desarrollo a Distribuidores La Paz', '9:00 AM - 6:00 PM', '', 2),
(49, 'Telefonía Interna de Prepago', '9:00 AM - 6:00 PM', '', 2),
(50, 'Cadenas Comerciales', '9:00 AM - 6:00 PM', '', 2),
(51, 'Captación e Inducción de Nuevos DATs', '9:00 AM - 6:00 PM', '', 2),
(52, 'Fuerza de Ventas', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 2),
(53, 'CVT Otay y Loma Bonita', '9:00 AM - 6:00 PM', '', 2),
(54, 'CCT Río y Galerías', '9:00 AM - 6:00 PM', '', 2),
(55, 'CVT Foráneos La Paz y Mexicali', '9:00 AM - 6:00 PM', '', 2),
(56, 'CAD Mexicali', '9:00 AM - 6:00 PM', '', 2),
(57, 'CAD La Paz', '9:00 AM - 6:00 PM', '', 2),
(58, 'CAD Tijuana', '9:00 AM - 6:00 PM', 'Radiomóvil DIPSA, S.A. de C.V. - Telcel\nCalle Coral # 117, Centro Ind. Bustamente\nTijuana, B.C.', 2),
(59, 'Publicidad y Mercadotecnia', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 5),
(60, 'Capacitación Comercial', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 5),
(61, 'Jumbotron', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 5),
(62, 'Distribución', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 5),
(63, 'Servicio Técnico', '9:00 AM - 6:00 PM', '', 3),
(64, 'CAC 5 y 10', '9:00 AM - 6:00 PM', '', 3),
(65, 'CAC Playas', '9:00 AM - 6:00 PM', '', 3),
(66, 'CAC Río', '9:00 AM - 6:00 PM', '', 3),
(67, 'CAC Macroplaza / STT Tijuana', '9:00 AM - 6:00 PM', '', 3),
(68, 'CAC Monarca', '9:00 AM - 6:00 PM', '', 3),
(69, 'CAC Santa Fe', '9:00 AM - 6:00 PM', '', 3),
(70, 'CAC Plaza Río', '9:00 AM - 6:00 PM', '', 3),
(71, 'CAC Paseo 2000', '9:00 AM - 6:00 PM', '', 3),
(72, 'CAC Otay', '9:00 AM - 6:00 PM', '', 3),
(73, 'CAC Tecate', '9:00 AM - 6:00 PM', '', 3),
(74, 'CAC Rosarito', '9:00 AM - 6:00 PM', '', 3),
(75, 'CAC Ensenada I', '9:00 AM - 6:00 PM', '', 3),
(76, 'CAC Ensenada II', '9:00 AM - 6:00 PM', '', 3),
(77, 'CAC Mexicali I', '9:00 AM - 6:00 PM', '', 3),
(78, 'CAC Mexicali II', '9:00 AM - 6:00 PM', '', 3),
(79, 'CAC Mexicali III', '9:00 AM - 6:00 PM', '', 3),
(80, 'CAC Mexicali IV', '9:00 AM - 6:00 PM', '', 3),
(81, 'CAC San Luis Río Colorado', '9:00 AM - 6:00 PM', '', 3),
(82, 'CAC La Paz I', '9:00 AM - 6:00 PM', '', 3),
(83, 'CAC La Paz II', '9:00 AM - 6:00 PM', '', 3),
(84, 'CAC La Paz III', '9:00 AM - 6:00 PM', '', 3),
(85, 'CAC Ciudad Constitución', '9:00 AM - 6:00 PM', '', 3),
(86, 'CAC Cabo San Lucas', '9:00 AM - 6:00 PM', '', 3),
(87, 'CAC San José del Cabo', '9:00 AM - 6:00 PM', '', 3),
(88, 'Operación de CAC´s', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 3),
(89, 'Admon. y Desarrollo de CACs', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 3),
(90, 'Telefónico *264', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 4),
(91, 'Telefónico *111', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 4),
(92, 'Servicio a Clientes Corporativos', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 4),
(93, 'Campañas de Portabilidad', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 4),
(94, 'Telemarketing Corporativo', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 4),
(95, 'Campañas Proactivas Telefónicas', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 4),
(96, 'Telefónico Tecnológico', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 4),
(97, 'Capacitación y Calidad en el Servicio', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 4),
(98, 'Ingresos', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 6),
(99, 'Egresos', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 6),
(100, 'Contabilidad', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 6),
(101, 'Compras', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 6),
(102, 'Cajas', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 6),
(103, 'Almacén', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 6),
(104, 'SAP', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 6),
(105, 'Ventas Corporativas Tijuana', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 7),
(106, 'Ventas Corporativas Mexicali', '9:00 AM - 6:00 PM', '', 7),
(107, 'Ventas Corporativas La Paz', '9:00 AM - 6:00 PM', '', 7),
(108, 'Transmisión de Datos', '9:00 AM - 6:00 PM', '', 7),
(109, 'Ventas en Sinergia', '9:00 AM - 6:00 PM', '', 7),
(110, 'Personal', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 8),
(111, 'Administración de Recursos Humanos', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 8),
(112, 'Desarrollo a Distribuidores Integradores Datos', '9:00 AM - 6:00 PM', '', 9),
(113, 'Ventas Aplicación de Datos Tijuana', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 9),
(114, 'Ventas Aplicación de Datos Mexicali', '9:00 AM - 6:00 PM', '', 9),
(115, 'Ventas Aplicación de Datos Cabo San Lucas', '9:00 AM - 6:00 PM', '', 9),
(116, 'Desarrollo Dist. Integración de Datos', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 9),
(117, 'Ventas PYMES', '9:00 AM - 6:00 PM', '', 10),
(118, 'Ventas en Sinergia PYMES', '9:00 AM - 6:00 PM', '', 10),
(119, 'Conmutación', '9:00 AM - 6:00 PM', '', 11),
(120, 'Proyect Manager', '9:00 AM - 6:00 PM', '', 11),
(121, 'Radiofrecuencia', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 11),
(122, 'Transmisión', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 11),
(123, 'Calidad del Servicio y Optimización', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 12),
(124, 'Integración y Atención a Quejas VIP', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 12),
(125, 'Trafico, Evaluación y Desempeño de la Planta', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 12),
(126, 'Gestión y Administración de Inmuebles', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 13),
(127, 'Construcción', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 13),
(128, 'Expansión', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 13),
(129, 'Planta Física', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 13),
(130, 'Aceptación de Sitios', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\r\n BLVD. SANCHEZ TABOADA \r\nESQ. MISION DE MULEGE ZONA \r\nURBANA RIO TIJUANA \r\nTIJUANA BAJA CALIFORNIA C.P. 22010\r\n', 13),
(131, 'CCR', '24 HRS', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 14),
(132, 'Logística', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 14),
(133, 'Prepago', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 14),
(134, 'Zona Lomas', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 14),
(135, 'Zona Otay', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 14),
(136, 'Zona Villareal', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 14),
(137, 'Zona Tecate', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 14),
(138, 'Zona La Paz', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 14),
(139, 'Zona Bahía', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 14),
(140, 'Zona Mexicali', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 14),
(141, 'JURIDICO', '9:00 AM - 6:00 PM', 'RADIOMOVIL DIPSA, EDIFICIO ALFER\n BLVD. SANCHEZ TABOADA \nESQ. MISION DE MULEGE ZONA \nURBANA RIO TIJUANA \nTIJUANA BAJA CALIFORNIA C.P. 22010\n', 15),
(142, 'GERENTE PLAZA MEXICALI', '9:00 AM - 6:00 PM', '', 16),
(143, 'GERENTE PLAZA LA PAZ', '9:00 AM - 6:00 PM', '', 17),
(144, 'IMPLANTACION COORD EXPANSION', '9:00 AM - 18:00 PM', 'EDIFICIO ALFER', 13),
(145, 'OYM', '9:00 AM - 6:00 PM', 'EDIFICIO ALFER', 14);

-- --------------------------------------------------------

--
-- Table structure for table `t_epo_anterior`
--

CREATE TABLE `t_epo_anterior` (
  `id_epo_anterior` int(11) NOT NULL,
  `componente` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `serie` varchar(45) NOT NULL,
  `num_inv` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_epo_cajas`
--

CREATE TABLE `t_epo_cajas` (
  `id_epo_cajas` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `serie` varchar(45) NOT NULL,
  `inventario` varchar(45) DEFAULT NULL,
  `t_usuarios_id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_epo_nuevo`
--

CREATE TABLE `t_epo_nuevo` (
  `id_epo_nuevo` int(11) NOT NULL,
  `componente` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `serie` varchar(45) NOT NULL,
  `num_inv` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_espef_cpu`
--

CREATE TABLE `t_espef_cpu` (
  `id_espef_cpu` int(11) NOT NULL,
  `procesador` varchar(20) NOT NULL,
  `velocidad` varchar(20) NOT NULL,
  `memoria` varchar(20) NOT NULL,
  `disco_duro` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_gerencia`
--

CREATE TABLE `t_gerencia` (
  `id_gerencia` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_gerencia`
--

INSERT INTO `t_gerencia` (`id_gerencia`, `nombre`) VALUES
(1, 'OPERACIONES'),
(2, 'COMERCIAL'),
(3, 'SERVICIO A CLIENTES PERSONALIZADOS'),
(4, 'SERVICIO A CLIENTES TELEFONICOS'),
(5, 'DESARROLLO COMERCIAL'),
(6, 'ADMINISTRACION Y FINANZAS'),
(7, 'VENTAS CORPORATIVAS'),
(8, 'RECURSOS HUMANOS'),
(9, 'VENTAS APLICACION DE DATOS'),
(10, 'VENTAS PYMES'),
(11, 'INGENIERIA'),
(12, 'ING. DE CALIDAD DEL SERVICIO Y OPTIMIZACION'),
(13, 'IMPLATACION Y CONSTRUCCION'),
(14, 'OPERACION Y MANTENIMIENTO'),
(15, 'JURIDICO'),
(16, 'GERENTE PLAZA MEXICALI'),
(17, 'GERENTE PLAZA LA PAZ');

-- --------------------------------------------------------

--
-- Table structure for table `t_inst_salida`
--

CREATE TABLE `t_inst_salida` (
  `id_inst_salida` int(11) NOT NULL COMMENT 'Esta tabla contendra el formato de instalación y salida.\n',
  `observaciones` tinytext NOT NULL,
  `t_inst_salidacol` varchar(45) DEFAULT NULL,
  `t_datos_config_id_datos_config` int(11) DEFAULT NULL,
  `t_componente_comp_id_componente_comp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_inventario_temporal`
--

CREATE TABLE `t_inventario_temporal` (
  `id_inventario_temporal` int(11) NOT NULL,
  `Componente` varchar(3) DEFAULT NULL,
  `Nomenclatura` varchar(20) DEFAULT NULL,
  `IP` varchar(20) DEFAULT NULL,
  `Marca_g` varchar(20) DEFAULT NULL,
  `Modelo_g` varchar(30) DEFAULT NULL,
  `Serie_g` varchar(20) DEFAULT NULL,
  `Inventario_g` varchar(15) DEFAULT NULL,
  `Marca_m` varchar(20) DEFAULT NULL,
  `Modelo_m` varchar(15) DEFAULT NULL,
  `Serie_m` varchar(30) DEFAULT NULL,
  `Inventario_m` varchar(15) DEFAULT NULL,
  `Marca_t` varchar(15) DEFAULT NULL,
  `Modelo_t` varchar(15) DEFAULT NULL,
  `Serie_t` varchar(35) DEFAULT NULL,
  `Marca_r` varchar(15) DEFAULT NULL,
  `Modelo_r` varchar(15) DEFAULT NULL,
  `Serie_r` varchar(35) DEFAULT NULL,
  `Serie_Pila` varchar(45) DEFAULT NULL,
  `Usuario_Univ` varchar(20) DEFAULT NULL,
  `Posicion` varchar(45) DEFAULT NULL,
  `Ubicacion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_inventario_temporal`
--

INSERT INTO `t_inventario_temporal` (`id_inventario_temporal`, `Componente`, `Nomenclatura`, `IP`, `Marca_g`, `Modelo_g`, `Serie_g`, `Inventario_g`, `Marca_m`, `Modelo_m`, `Serie_m`, `Inventario_m`, `Marca_t`, `Modelo_t`, `Serie_t`, `Marca_r`, `Modelo_r`, `Serie_r`, `Serie_Pila`, `Usuario_Univ`, `Posicion`, `Ubicacion`) VALUES
(2401, 'L', 'TCO264F01LMXR1', '192.1.203.59', 'HP', 'PROBOOK 645 G1', '5CG6121H8X', '104000032890', '', '', '', '', '', '', '', '', '', '', '6DKFE10WY9R2HA', '', 'GERENCIA COMERCIAL', 'PLANTA BAJA -ALFER'),
(2402, 'L', '', '192.1.209.81', 'HP', 'PROBOOK 640 G2', '5CG6312YLS', '104000033162', '', '', '', '', '', '', '', '', '', '', 'INTERNA', '', 'JEFE RADIO FRECUENCIA', 'PRIMER PISO -ALFER'),
(2403, 'I', 'NO TIENE', 'USB', 'HP', 'OFFICEJET PRO 8100', 'CN27NBK0G2', '105000031210', '', '', '', '', '', '', '', '', '', '', '', '', 'SEC.GERENCIA FINZ', 'TERCER PISO - ALFER '),
(2404, 'I', 'NO TIENE', 'USB', 'HP', 'OFFICEJET PRO 8100', 'CN4CBHV1B1', '105000031688', '', '', '', '', '', '', '', '', '', '', '', '', 'JEF. COMPRAS', 'TERCER PISO - ALFER '),
(2405, 'I', 'MXTAFCORPOFI04', '10.0.156.146', 'LEXMARK', 'MX711DE', '746325990184X', '105000031341', '', '', '', '', '', '', '', '', '', '', '', '', 'DEPTO.COMPRAS', 'TERCER PISO - ALFER '),
(2406, 'I', 'MXTAFCORPOFI03', '10.0.156.144', 'LEXMARK', 'MX711DE', '74635C6600CHH', '105000031774', '', '', '', '', '', '', '', '', '', '', '', '', 'CONTB-INGRESOS', 'TERCER PISO - ALFER '),
(2407, 'I', 'NO TIENE', 'PARELELO', 'EPSON', 'FX-2190', 'FCTY172299', '105000031366', '', '', '', '', '', '', '', '', '', '', '', '', 'EGRESOS', 'TERCER PISO - ALFER '),
(2408, 'I', 'NO TIENE', 'USB', 'HP', 'PHOTOSMART C7280', 'MY84CH23VN', '105000030936', '', '', '', '', '', '', '', '', '', '', '', '', 'JEF. EGRESOS', 'TERCER PISO - ALFER '),
(2409, 'I', 'MXTAFCORPOFI01', '10.0.156.145', 'LEXMARK', 'MX711DE', '746325990181T', '105000031296', '', '', '', '', '', '', '', '', '', '', '', '', 'EGRESOS', 'TERCER PISO - ALFER '),
(2410, 'I', 'MXTAFCORPOFI02', '10.0.156.143', 'LEXMARK', 'X656DE', '79G2FNL', '105000031160', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJAS', 'TERCER PISO - ALFER '),
(2411, 'I', 'NO TIENE', 'USB', 'HP', 'PHOTOSMART C7280', 'MY85KHH0ZH', '105000030821', '', '', '', '', '', '', '', '', '', '', '', '', 'JEFATURA CAJAS', 'TERCER PISO - ALFER '),
(2412, 'I', 'NO TIENE', 'USB', 'HP', 'OFFICEJET PRO 8100', 'CN27NBK0NX', '105000031209', '', '', '', '', '', '', '', '', '', '', '', '', 'SEC. DIRECC', 'TERCER PISO - ALFER '),
(2413, 'I', 'NO TIENE', '10.0.156.141', 'HP', 'LASERJET 5000 COLOR', 'CNCCF41089', '105000031332', '', '', '', '', '', '', '', '', '', '', '', '', 'SECRET DIRECC', 'TERCER PISO - ALFER '),
(2414, 'I', '', 'USB', 'CANNON', 'DR-2050C', 'DL336619', '105000030316', '', '', '', '', '', '', '', '', '', '', '', '', 'SECRETARIA GERENCIA FINANZAS', 'TERCER PISO - ALFER '),
(2415, 'C', 'CACPLAAC01DMX01', '10.0.169.119', 'DELL', 'OptiPlex 9010                 ', 'C67T6Y1        ', '104000032208', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-301U', '104000032208', 'DELL', 'KB522', 'CN-0XCRRN-75131-3CN-00JG-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-36S-0PJD', '', '', 'ALMACEN 1', 'CAC PLAYAS'),
(2416, 'C', 'CACPLAAC02DMX01', '10.0.169.120', 'DELL', 'OptiPlex 960                  ', 'DXJ3JL1        ', '104000031407', 'DELL', 'E170S', 'CN-0U072N-64180-9AB-2FSS', '104000031407', 'DELL', 'L30U', 'CN-0N243F-73571-9AU-05J0-A01', 'DELL', 'MS111-L', 'CN-09RRC7-44751-084-00PE', '', '', 'ALMACEN 2', 'CAC PLAYAS'),
(2417, 'C', 'CACPLAAS01DMX01', '10.0.169.101', 'DELL', 'OptiPlex 9010                 ', 'C78W6Y1        ', '104000032307', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0E0U', '104000032307', 'DELL', 'KB212-B', 'CN-0DJ462-71581-366-06GW-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-36S-0PJX', '', '', 'BARRA 1', 'CAC PLAYAS'),
(2418, 'C', 'CACPLAAS02DMX01', '10.0.169.102', 'DELL', 'OptiPlex 960                  ', 'GGGJDP1        ', '104000031661', 'DELL', 'E170S', 'CN-0N445N-74261-11S-1CFU', '104000031661', 'DELL', 'L30U', 'CN-0N243F-73571-0BK-0116-A01', 'DELL', 'MS-111-P', 'CN-011D3V-71581-113-0SBZ', '', '', 'BARRA 2', 'CAC PLAYAS'),
(2419, 'C', 'CACPLAAS03DMX01', '10.0.169.103', 'DELL', 'OptiPlex 960                  ', 'GGFLDP1        ', '104000031667', 'DELL', 'E170S', 'CN-0N445N-74261-11S-0EWU', '104000031667', 'DELL', 'L30U', 'CN-0N243F-73571-0BK-0103-A01', 'DELL', 'MS-111-P', 'CN-011D3V-71581-113-0SCO', '', '', 'BARRA 3', 'CAC PLAYAS'),
(2420, 'C', 'CACPLAAS04DMX01', '10.0.169.104', 'DELL', 'OptiPlex 960                  ', 'GGDMDP1        ', '104000031663', 'DELL', 'E170S', 'CN-0N445N-74261-11S-1C6U', '104000031663', 'DELL', 'L30U', 'CN-0N243F-73571-0BK-0112-A01', 'DELL', 'MS-111-P', 'CN-011D3V-71581-113-0ZPX', '', '', 'BARRA 4', 'CAC PLAYAS'),
(2421, 'C', 'CACPLAAS05DMX01', '10.0.169.105', 'DELL', 'OptiPlex 960                  ', 'GGDHDP1        ', '104000031662', 'DELL', 'E170S', 'CN-0N445N-74261-11S-1C7U', '104000031662', 'DELL', 'L30U', 'CN-0N243F-73571-0BK-0115-A01', 'DELL', 'MS-111-P', 'CN-011D3V-71581-113-0SC7', '', '', 'BARRA 5', 'CAC PLAYAS'),
(2422, 'C', 'CACPLAAS06DMX01', '10.0.169.106', 'DELL', 'OptiPlex 960                  ', 'GGGFDP1        ', '104000031664', 'DELL', 'E170S', 'CN-0N445N-74261-11S-1C4U', '104000031664', 'DELL', 'L30U', 'CN-0N243F-73571-0BK-0117-A01', 'DELL', 'M-VDEL1', 'ILEGIBLE', '', '', 'BARRA 6', 'CAC PLAYAS'),
(2423, 'C', 'CACPLAAS07DMX01', '10.0.169.107', 'HP', 'EliteDesk 705 G1 SFF', 'MXL5452MSC     ', '104000032864', 'HP', 'V193B', '3CQ54937GZ', '104000032864', 'HP', 'KU-1156', 'BDMHE0C5Y8S648', 'HP', 'MOFYUO', 'FCMHH0AKZ9H4LM', '', '', 'BARRA 7', 'CAC PLAYAS'),
(2424, 'C', 'CACPLAAS08DMX01', '10.0.169.108', 'HP', 'Compaq dc7800p', 'MXJ8320875     ', '104000031273', 'HP', 'L1710', '3CQ8280V69', '104000031273', 'HP', 'KU-0316', 'BDALC0N5Y5C18O', 'HP', 'M-VDEL1', 'ILEGIBLE', '', '', 'BARRA 8', 'CAC PLAYAS'),
(2425, 'C', 'CACPLAAS09DMX01', '10.0.169.109', 'DELL', 'OptiPlex 9010                 ', 'C15X6Y1        ', '104000032209', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2YPU', '104000032209', 'DELL', 'KB212-B', 'CN-0DJ462-71581-367-02JX-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-48B-0KTB', '', '', 'BARRA 9', 'CAC PLAYAS'),
(2426, 'C', 'CACPLAAS10DMX01', '10.0.169.110', 'DELL', 'OptiPlex 9010                 ', 'C76W6Y1        ', '104000032210', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-08HU', '104000032210', 'DELL', 'KB522', 'CN-OXCRRN-75131-3CN-00JO-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35R-0B4P', '', '', 'BARRA 10', 'CAC PLAYAS'),
(2427, 'C', 'CACPLAAS11DMX01', '10.0.169.111', 'DELL', 'OptiPlex 960                  ', 'GG4LDP1        ', '104000031665', 'DELL', 'E170S', 'CN-0N445N-74261-11S-1CHU', '104000031665', 'DELL', 'L30U', 'CN-0N243F-73571-0BK-012C-A01', 'DELL', 'MS111-P', 'CN-011D3V-71581-113-0SDT', '', '', 'BARRA 11', 'CAC PLAYAS'),
(2428, 'C', 'CACPLAAS12DMX01', '10.0.169.112', 'DELL', 'OptiPlex 9010                 ', 'C61V6Y1        ', '104000032211', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-08FU', '104000032211', 'DELL', 'KB522', 'CN-0XCRRN-75131-3CN-00LU-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-0PJV', '', '', 'BARRA 12', 'CAC PLAYAS'),
(2429, 'C', 'CACPLAAS13DMX01', '10.0.169.113', 'DELL', 'OptiPlex 9010                 ', 'C5XT6Y1        ', '104000032212', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-08JU', '104000032212', 'DELL', 'KB212-B', 'CN-0DJ462-71581-367-06TM-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35R-0B50', '', '', 'BARRA 13', 'CAC PLAYAS'),
(2430, 'C', 'CACPLAAS14DMX01', '10.0.169.114', 'DELL', 'OptiPlex 960                  ', 'F5QHDP1        ', '104000031629', 'DELL', 'E170S', 'CN-0N445N-74261-11S-155U', '104000032629', 'DELL', 'L30U', 'CN-0N243F-73571-0BK-017P-A01', 'DELL', 'MS111-L', 'CN-09RRC7-44751-08S-17RR', '', '', 'BARRA 14', 'CAC PLAYAS'),
(2431, 'C', 'CACPLAAS16DMX01', '10.0.169.116', 'DELL', 'OptiPlex 9010                 ', 'C85W6Y1        ', '104000032306', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-34FU', '104000032306', 'DELL', 'KB212-B', 'CN-0DJ462-71581-367-02KC-A00', 'DELL', 'MS111-L', 'CN-09RRC7-44751-08Q-13JA', '', '', 'MODULO A', 'CAC PLAYAS'),
(2432, 'C', 'CACPLAAS17DMX01', '10.0.169.117', 'DELL', 'OptiPlex 960                  ', 'F5SGDP1        ', '104000031630', 'DELL', 'E170S', 'CN-0N445N-74261-11S-1A1U', '104000031630', 'DELL', 'L30U', 'CN-0M243F-73571-0BK-00Z0-A01', 'DELL', 'MS111-L', 'CN-09RRC7-44751-08S-18FH', '', '', 'MODULO C', 'CAC PLAYAS'),
(2433, 'C', 'CACPLACA01DMX01', '10.0.169.124', 'HP', 'COMPAQ PRO  6305 SFF', 'MXL3492H2N', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA 01', 'CAC PLAZA RIO'),
(2434, 'C', 'CACPLACA02DMX01', '10.0.169.125', 'DELL', 'OptiPlex 960                  ', '74D0PN1        ', '104000031564', 'DELL', 'E170S', 'CN-0U072N-64180-09G-508C', '104000031564', 'DELL', 'L30U', 'CN-0N243F-73571-0AD-0129-A01', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-0PJS', '', '', 'CAJA 2', 'CAC PLAYAS'),
(2435, 'C', 'CACPLACA03DMX01', '10.0.169.126', 'DELL', 'OptiPlex 960                  ', '74L0PN1        ', '104000031585', 'DELL', 'E170S', 'CN-0U072N-64180-09G-4ZZC', '104000031585', 'DELL', 'L30U', 'CN-0N243F-73571-0AD-012H-A01', 'DELL', 'MS111-L', 'CN-09RRC7-44751-08Q-13EK', '', '', 'CAJA 3', 'CAC PLAYAS'),
(2436, 'C', 'CACPLAJE01DMX01', '10.0.169.30', 'DELL', 'OPTIPLEX 990', 'J5WMXQ1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'JEFATURA', 'CAC PLAYAS'),
(2437, 'C', 'CACPLARE01DMX01', '10.0.169.118', 'DELL', 'OptiPlex 9010                 ', 'C63W6Y1        ', '104000032213', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-08LU', '104000032213', 'DELL', 'KB212-B', 'CN-0DJ462-71581-366-01RX-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-0PJM', '', '', 'RECEPCION', 'CAC PLAYAS'),
(2438, 'C', 'CACPLAST01DMX01', '10.0.169.121', 'DELL', 'OptiPlex 960', 'GGDFDP1', '104000031668', 'DELL', 'E170S', 'CN-0N445N-74261-11S-1N7U', '104000031668', 'DELL', 'RT7D50', 'CN-0W7646-37172-4CO-046H', 'DELL', 'DX-WMSE', '8G04A003042', '', '', 'SOPORTE TECNICO 1', 'CAC PLAYAS'),
(2439, 'C', 'CACPLAST02DMX01', '10.0.169.122', 'DELL', 'OptiPlex 960                  ', 'GGFJDP1        ', '104000031669', 'DELL', 'E170S', 'CN-0N445N-74261-11S-1YRU', '104000031669', 'HP', 'L30U', 'CN-0N243F-73571-0BK-01F9-A01', 'DELL', 'MS111-P', 'CN-011D3V-71581-113-0SD4', '', '', 'SOPORTE TECNICO 2', 'CAC PLAYAS'),
(2440, 'C', 'CACPLAST03DMX01', '10.0.169.123', 'DELL', 'OptiPlex 960                  ', 'F5SHDP1        ', '104000031643', 'DELL', 'E170S', 'CN-0N445N-74261-11T-4GYU', '104000031643', 'DELL', 'L30U', 'CN-0N243F-73571-0BK-01FH-A01', 'DELL', 'MS111-P', 'CN-011D3V-71581-113-0ZPL', '', '', 'SOPORTE TECNICO 3', 'CAC PLAYAS'),
(2441, 'C', 'CACPLASU01DMX01', '10.0.169.100', 'DELL', 'OptiPlex 9010                 ', 'CH8W6Y1        ', '104000032340', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-338U', '104000032340', 'DELL', 'KB212-B', 'CN-ODJ462-71581-366-00C9-A00', 'DELL', 'MS-111-L', 'CN-09RRC7-48729-35R-0B4K', '', '', 'SUPERVISOR', 'CAC PLAYAS'),
(2442, 'C', 'MXCACPLACOR01  ', '10.0.169.252', 'DELL', 'OptiPlex 990                  ', '54MGJQ1        ', '104000031733', 'DELL', 'E170S', 'CN-0U072N-64180-13U-20QC      ', '104000031733', 'DELL', 'Y-U0003-DEL5', 'CN-0U474D-44751-0BR-02RD-A01', 'MICROSOFT', 'WHEEL MOUSE OPT', '56180', '', '', 'SERVIDOR IMPRESORAS', 'CAC PLAYAS'),
(2443, 'C', 'SERVCAMPLAYAS  ', '10.0.169.65 ', 'DELL', 'OptiPlex GX280                ', 'FLRWS71        ', '104000030391', 'DELL', 'E551   ', '95WUP28M80TU', '104000031493', 'MICROSOFT', 'KC-0405', '7619800520935', 'DELL', 'M-VDEL1', 'ILEGIBLE', '', '', 'SERVIDOR CAMARAS', 'CAC PLAYAS'),
(2444, 'C', 'FUENTE DANADA - MODU', '', 'DELL', 'OPTIPLEX 960', 'GG4FDP1', '104000031660', 'HP', 'E170SB', 'CN-0N44SN-74261-11S-1CKU', '104000031660', 'NO ESTA', 'FISICAMENTE', '', 'NO ESTA', 'FISICAMENTE', '', '', '', 'MODULO B', 'CAC PLAYAS'),
(2445, 'C', 'RADIOMOV-A4CE90', '192.168.1.206', 'DELL', 'OPTIPLEX GX 620', '629TS91', '104000030713', 'DELL', 'E176FP, E170S', '6418062P0H3S, HF0K314E06RL', '104000030713', 'DELL', 'SK-8135', 'CN-0DJ375-71616-772-0YVV-A00', 'DELL', 'M-UVDEL1', 'HCP60603525', '', '', 'DESBLOQUEO', 'CAC PLAYAS'),
(2446, 'C', 'ELITEDESK-PC', '192.168.1.229', 'HP', 'ELITEDESK 705 G1 SFF', 'MXL5242FPD', '104000033079', 'HP', 'V193B', '3CQ5270PHR', '104000033079', 'HP', 'KB57211', 'BDMHE0CHH8B26L', 'HP', 'MOFYUO', 'FCMHH0AKZ8JP33', '', '', 'DESBLOQUEO', 'CAC PLAYAS'),
(2447, 'I', 'MXTACPLACOR01', '10.0.169.222', 'HP', 'LASERJET M401DNE', 'PHGFC22250', '105000031544', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 1 Y 2', 'CAC PLAYAS'),
(2448, 'I', 'MXTACPLACOR02', '10.0.169.223', 'HP', 'LASERJET M401DNE', 'VNB4N12885', '105000031250', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 3 Y 4', 'CAC PLAYAS'),
(2449, 'I', 'MXTACPLACOR03', '10.0.169.224', 'HP', 'LASERJET M401DNE', 'PHGFF21321', '105000031575', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 5 Y 6', 'CAC PLAYAS'),
(2450, 'I', 'MXTACPLACOR04', '10.0.169.225', 'HP', 'LASERJET M401DNE', 'PHGFG20449', '105000031705', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 7 Y 8', 'CAC PLAYAS'),
(2451, 'I', 'MXTACPLACOR05', '10.0.169.226', 'HP', 'LASERJET M401DNE', 'PHGFG20443', '105000031706', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 9 Y 10', 'CAC PLAYAS'),
(2452, 'I', 'MXTACPLACOR06', '10.0.169.227', 'HP', 'LASERJET M401DNE', 'VNB4M15480', '105000031324', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 11 Y 12', 'CAC PLAYAS'),
(2453, 'I', 'MXTACPLACOR07', '10.0.169.228', 'HP', 'LASERJET M401DNE', 'PHGFC42137', '105000031640', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 13 Y 14', 'CAC PLAYAS'),
(2454, 'I', 'MXTACPLACOR08', '10.0.169.232', 'HP', 'LASERJET P4015', 'CNDYB43907', '105000031120', '', '', '', '', '', '', '', '', '', '', '', '', 'MODULO C', 'CAC PLAYAS'),
(2455, 'IT', '', 'USB', 'EPSON ', 'TM-T90P', 'DBLG151086', '105000030787', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA 3', 'CAC PLAYAS'),
(2456, 'IT', '', 'USB', 'EPSON ', 'TM-T90P', 'DBLG151103', '105000030788', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA 2', 'CAC PLAYAS'),
(2457, 'IT', '', 'USB', 'EPSON ', 'TM-T88V', 'MXKF357260', '105000031499', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA 1', 'CAC PLAYAS'),
(2458, 'I', 'MXTACPLACOR10', '10.0.169.230', 'LEXMARK', 'MX711', '74633699054T9', '105000031519', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJAS', 'CAC PLAYAS'),
(2459, 'IT', '', 'USB', 'EPSON ', 'TM-T88V', 'MXKF352870', '105000031409', '', '', '', '', '', '', '', '', '', '', '', '', 'RECEPCION', 'CAC PLAYAS'),
(2460, 'I', '', 'USB', 'HP', 'OFFICEJET PRO 8100', 'CN42IFV16S', '105000031576', '', '', '', '', '', '', '', '', '', '', '', '', 'JEFATURA', 'CAC PLAYAS'),
(2461, 'I', 'MXTACPLACOR11', '10.0.169.231', 'HP', 'LASERJET M401DNE', 'XXXXXXXXX', '105000031445', '', '', '', '', '', '', '', '', '', '', '', '', 'SERTEC', 'CAC PLAYAS'),
(2462, 'I', 'MXTACPLACOR09', '10.0.169.229', 'HP', 'LASERJET M402DN', 'PHBQF27784', '105000031866', '', '', '', '', '', '', '', '', '', '', '', '', 'ALMACEN ', 'CAC PLAYAS'),
(2463, 'E', '', '10.0.169.219', 'XEROX', 'DOCUMATE 3125', '4BAHL70698', '105000031672', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA', 'CAC PLAYAS'),
(2464, 'L', 'TELCEL-PC', 'INFINITUM', 'DELL', 'LATITUDE E6420', '7T81BS1', '104000031910', '', '', '', '', '', '', '', '', '', '', '05CGM4KR-71276-213-017R-A02', '', 'DESBLOQUEO', 'CAC PLAYAS'),
(2465, 'C', 'CACRIOAC01DMX01     ', '10.0.127.138', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51525N0', '104000031274', 'HP                 ', 'V193B', '3CQ5140DCK              ', '104000031274', 'HP', 'KB57211', 'BDMHE0CHH7W7T2', 'HP', 'SM-2022', 'CT-FCMHH0CJP7XKCS', '', '', 'ALMACEN 01', 'CAC RIO'),
(2466, 'C', 'CACRIOAC02DMX01     ', '10.0.127.139', 'DELL', 'OptiPlex 9010          ', 'C0GV6Y1', '104000032310', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37E-06VU      ', '104000032310', 'DELL', 'KB-4021', 'CN-0DJ462-71581-367-02ME-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35Q-01VW', '', '', 'ALMACEN 02', 'CAC RIO'),
(2467, 'C', 'CACRIOAC03DMX01     ', '10.0.127.140', 'DELL', 'OptiPlex 9010          ', 'C3RT6Y1        ', '104000032311', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37E-073U      ', '104000032311', 'DELL', 'KB-4021', 'CN-0DJ462-71581-366-01GP-A00', 'DELL', 'MS111-L', 'CN-09RRC748729-5R-0B4D', '', '', 'ALMACEN 03', 'CAC RIO'),
(2468, 'C', 'CACRIOAS02DMX01     ', '10.0.127.102', 'LENOVO         ', 'A002LM             ', 'MJ01PGDE       ', '104000032772', 'LENOVO          ', 'E 1922 WD    ', 'V900FL74                ', '104000032772', 'LENOVO', 'SK-8825', '5099247', 'LENOVO', 'N-U0025-O', 'HS422HA34HX', '', '', 'BARRA 02', 'CAC RIO'),
(2469, 'C', 'CACRIOAS03DMX01     ', '10.0.127.103', 'DELL', 'OptiPlex 9010          ', 'C9FW6Y1        ', '104000032191', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37D-303U      ', '104000032191', 'DELL', 'KB4021', 'CN-0DJ462-71581-52B-07BL-A01', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-0PJ5', '', '', 'BARRA 03', 'CAC RIO'),
(2470, 'C', 'CACRIOAS04DMX01     ', '10.0.127.104', 'DELL', 'OptiPlex 9010          ', 'C9CT6Y1        ', '104000032193', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37E-087U      ', '104000032193', 'DELL', 'KB4021', 'CN-0DJ462-71581-366-04RU-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-0PLE', '', '', 'BARRA 04', 'CAC RIO'),
(2471, 'C', 'CACRIOAS05DMX01     ', '10.0.127.105', 'DELL', 'OptiPlex 9010          ', 'C2ZV6Y1        ', '104000032175', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37D-30CU      ', '104000032175', 'DELL', 'KB4021         ', 'CN-0DJ462-71581-366-01M9-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-350-024U', '', '', 'BARRA 05', 'CAC RIO'),
(2472, 'C', 'CACRIOAS06DMX01     ', '10.0.127.106', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524TQ     ', '1.04E+11', 'HP                  ', 'V193B          ', '3CQ5140C5T                    ', '104000032924', 'HP', 'KB57211', 'BDMHE0CHH7W0X3', 'HP', 'SM-2022', 'FCMHH0CJP7XK2R', '', '', 'BARRA 06', 'CAC RIO'),
(2473, 'C', 'CAC510AS07DMX01     ', '10.0.127.107', 'DELL', 'OptiPlex 9010          ', 'C3ZV6Y1        ', '104000032176', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37D-2YMU      ', '104000032176', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-05P8-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-0PLJ', '', '', 'BARRA 07', 'CAC 5 Y 10'),
(2474, 'C', 'CACRIOAS08DMX01     ', '10.0.127.108', 'DELL', 'OptiPlex 9010          ', 'C2YT6Y1        ', '104000032177', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37E-08MU      ', '104000032177', 'DELL', 'KB4021', 'CN-DJ462-71581-367-03HM-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-OPLQ', '', '', 'BARRA 08', 'CAC RIO'),
(2475, 'C', 'CACRIOAS09DMX01     ', '10.0.127.109', 'DELL', 'OptiPlex 990           ', '3B0TXQ1        ', '104000031747', 'DELL', 'E170S     ', 'CN-0HF0K3-64180-14E-05RL      ', '104000031747', 'DELL', 'KB522', 'CN-0XCRRN-75131-41G-00RE-A01', 'DELL', 'M-UAV-DEL8', 'LZ113BW12W4', '', '', 'BARRA 09', 'CAC RIO'),
(2476, 'C', 'CACRIOAS10DMX01     ', '10.0.127.110', 'DELL', 'OptiPlex 990           ', '3BBZXQ1        ', '104000031748', 'DELL', 'E170S     ', 'CN-0HF0K3-64180-14F-0DTS      ', '104000031748', 'DELL', 'NY-U0003-DEL5', 'CN-0U474D-44751-15L-00UF-A02', 'DELL', 'M-UAV-DEL8', 'LZ113BW12VL', '', '', 'BARRA 10', 'CAC RIO'),
(2477, 'C', 'CACRIOAS11DMX01     ', '10.0.127.111', 'DELL', 'OptiPlex 990           ', 'J5TKXQ1        ', '104000031749', 'DELL', 'E170S     ', 'CN-0HF0K3-64180-14E-05ZL      ', '104000031749', 'DELL', 'KB522', 'CN-0XCRRN-75131-3C8-00ON-A00 ', 'DELL', 'MOCZUL', 'K0J00C73', '', '', 'BARRA 11', 'CAC RIO'),
(2478, 'C', 'CACRIOAS12DMX01     ', '10.0.127.112', 'DELL', 'OptiPlex 9010          ', 'C97T6Y1        ', '104000032178', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37E-07FU      ', '104000032178', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-03DU-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35R-0B2K', '', '', 'BARRA 12', 'CAC RIO'),
(2479, 'C', 'CACRIOAS13DMX01     ', '10.0.127.113', 'DELL', 'OptiPlex 9010          ', 'CHZV6Y1        ', '104000032179', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37D-2YRU      ', '104000032179', 'DELL', 'KB4021', 'CN-0DJ462-71581-366-06V0-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35R-0XGR', '', '', 'BARRA 13', 'CAC RIO'),
(2480, 'C', 'CACRIOAS14DMX01     ', '10.0.127.114', 'DELL', 'OptiPlex 9010          ', 'CB2X6Y1        ', '104000032180', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37E-08KU      ', '104000032180', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-05P7-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35R-0B5C', '', '', 'BARRA 14', 'CAC RIO'),
(2481, 'C', 'CACRIOAS15DMX01     ', '10.0.127.115', 'DELL', 'OptiPlex 9010          ', 'CCMV6Y1        ', '104000032181', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37D-2YLU      ', '104000032181', 'DELL', 'KB4021', 'CN-0DJ462-71581-2C3-004S-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35R-0B4R', '', '', 'BARRA 15', 'CAC RIO'),
(2482, 'C', 'CACRIOAS16DMX01     ', '10.0.127.116', 'DELL', 'OptiPlex 9010          ', 'C9TT6Y1        ', '104000032194', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37D-306U      ', '104000032194', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-06TJ-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35R-0B46', '', '', 'BARRA 16', 'CAC RIO'),
(2483, 'C', 'CACRIOAS17DMX01     ', '10.0.127.117', 'DELL', 'OptiPlex 990 ', 'J5SKXQ1        ', '104000031750', 'DELL', 'E170S     ', 'CN-0HF0K3-64180-14E-06VL      ', '104000031750', 'DELL', 'NY-U0003-DEL5', 'CN-0U474D-44751-15L-01TR-A02', 'DELL', 'MOCZUL', 'K0J00C6P', '', '', 'BARRA 17', 'CAC RIO'),
(2484, 'C', 'CACRIOAS18DMX01     ', '10.0.127.118', 'DELL', 'OptiPlex 9010          ', 'CHQW6Y1        ', '104000032182', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37E-089U      ', '104000032182', 'DELL', 'KB4021', 'CN-0DJ462-71581-5AC-00BC-A01', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35Q-01QJ', '', '', 'BARRA 18', 'CAC RIO'),
(2485, 'C', 'CACRIOAS19DMX01     ', '10.0.127.119', 'DELL', 'OptiPlex 9010          ', 'C2MV6Y1        ', '104000032309', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37E-06DU      ', '104000032309', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-058T-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-0TKU', '', '', 'BARRA 19', 'CAC RIO'),
(2486, 'C', 'CACRIOAS20DMX01', '10.0.127.120', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524TP', '104000032926', 'HP', 'V193B', '3CQ5140DD3     ', '104000032926', 'HP', 'KB57211', 'BDMHE0CHH7W7TQ', 'DELL', 'SM-2022', 'FCMHH0CJP7XKB3', '', '', 'BARRA 20', 'CAC RIO'),
(2487, 'C', 'CACRIOAS21DMX01     ', '10.0.127.121', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524T8     ', '104000032918', 'HP                 ', 'V193B', '3CQ5140CJJ              ', '104000032918', 'HP', 'KB57211', 'BDMHE0CHH7W5T0', 'HP', 'SM-2022', 'FCMHH0CJP7XKCR', '', '', 'BARRA 21', 'CAC RIO'),
(2488, 'C', 'CACRIOAS22DMX01     ', '10.0.127.122', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524SM     ', '104000032923', 'HP                  ', 'V193B          ', '3CQ5140CJM                    ', '104000032923', 'HP', 'KB57211', 'BDMHE0CHH7W5T1', 'HP', 'SM-2022', 'FCMHHC0CJP7XHD8', '', '', 'BARRA 22', 'CAC RIO'),
(2489, 'C', 'CACRIOAS23DMX01     ', '10.0.127.123', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524YC     ', '104000032920', 'HP                 ', 'V193B', '3CQ5140DCP              ', '104000032920', 'HP', 'KB57211', 'BDMHE0CHH7W73T', 'DELL', 'SM-2022', 'FCMHH0CJP7XKYC', '', '', 'BARRA 23', 'CAC RIO'),
(2490, 'C', 'CACRIOAS24DMX01     ', '10.0.127.124', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524SN     ', '104000032919', 'HP                 ', 'V193B', '3CQ5140CHP              ', '104000032919', 'HP', 'KB57211', 'BDMHE0CHH7W7SE', 'HP', 'SM-2022', 'FCMHH0CJP7XBK', '', '', 'BARRA 24', 'CAC RIO'),
(2491, 'C', 'CACRIOAS25DMX01     ', '10.0.127.125', 'DELL', 'OptiPlex 9010          ', 'CB0V6Y1        ', '104000032183', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37E-081U      ', '104000032183', 'DELL', 'KB4021', 'CN-0DJ462-71581-366-01MJ-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35R-12X6', '', '', 'BARRA 25', 'CAC RIO'),
(2492, 'C', 'CACRIOAS26DMX01     ', '10.0.127.126', 'DELL', 'OptiPlex 9010          ', 'C53T6Y1        ', '104000032184', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37E-086U      ', '104000032184', 'DELL', 'KB4021', 'CN-0DJ462-71581-46R-0308-A01', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35S-OPLG', '', '', 'BARRA 26', 'CAC RIO'),
(2493, 'C', 'CACRIOAS27DMX01     ', '10.0.127.127', 'DELL', 'OptiPlex 9010          ', 'C3KV6Y1        ', '104000032185', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37D-2YUU      ', '104000032185', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-02HM-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-45U-0KR6', '', '', 'BARRA 27', 'CAC RIO'),
(2494, 'C', 'CACRIOAS28DMX01     ', '10.0.127.128', 'DELL', 'OptiPlex 9010          ', 'C25W6Y1        ', '104000032312', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37E-06UU      ', '104000032312', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-03GT-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35Q-01VG', '', '', 'BARRA 28', 'CAC RIO'),
(2495, 'C', 'CACRIOAS29DMX01     ', '10.0.127.129', 'DELL', 'OptiPlex 9010          ', 'CJZS6Y1        ', '104000032186', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37E-088U      ', '104000032186', 'DELL', 'SK-8135', 'CN-0DJ375-71616-7AS-09PXQ-A01', 'DELL', 'MS-111L', 'CN-0DJ462-71581-36S-0PKJ', '', '', 'BARRA 29', 'CAC RIO'),
(2496, 'C', 'CACRIOAS30DMX01     ', '10.0.127.130', 'DELL', 'OptiPlex 9010          ', 'CCDW6Y1        ', '104000032198', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37D-30AU      ', '104000032198', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-06QT-A01', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35Q01-???', '', '', 'BARRA 30', 'CAC RIO'),
(2497, 'C', 'CACRIOAS31DMX01     ', '10.0.127.131', 'DELL', 'OptiPlex 9010          ', 'C4QT6Y1        ', '104000032196', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37E-08DU      ', '104000032196', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-03DH-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35S-0PLB', '', '', 'BARRA 31', 'CAC RIO'),
(2498, 'C', 'CACRIOAS32DMX01     ', '10.0.127.132', 'LENOVO         ', 'A002LM             ', 'MJ01PGHK       ', '104000032759', 'LENOVO          ', 'E 1922 WD    ', 'V900FL78                ', '104000032759', 'LENOVO', 'SK-8825', '5093849', 'LENOVO', 'M-U0025-O', 'HS422HA34H4', '', '', 'BARRA 32', 'CAC RIO'),
(2499, 'C', 'CACRIOAS33DMX01', '10.0.127.133', 'LENOVO', 'A002LM', 'MJ01PG7B', '104000032760', 'LENOVO', 'E 1922 WD', 'V900FL72', '104000032760', 'LENOVO', 'SK-8825', '5099257', 'LENOVO', 'M-U0025-O', 'HS422HA34K5', '', '', 'BARRA 33', 'CAC RIO'),
(2500, 'C', 'CACRIOAS34DMX01', '10.0.127.154', 'LENOVO', 'THINKCENTRE M79', 'MJ01PNX9', '', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 34', 'CAC RIO'),
(2501, 'C', 'CACRIOAS35DMX01', '10.0.127.155', 'LENOVO', 'A002LM', 'MJ01PG82', '104000032762', 'LENOVO', 'E 1922 WD', 'V900FL71', '104000032762', 'LENOVO', 'SK-8825', '5099258', 'LENOVO', 'M-U0025-O', 'HS422HA34K7', '', '', 'BARRA 35', 'CAC RIO'),
(2502, 'C', 'CACRIOAS36DMX01     ', '10.0.127.156', 'LENOVO         ', 'A002LM             ', 'MJ01PNPR       ', '104000032763', 'LENOVO          ', 'E 1922 WD    ', 'V900FL65                ', '104000032763', 'LENOVO', 'KB1021', '1702', 'LENOVO', 'M-U0025-O', 'HS420HA1SK9', '', '', 'BARRA 36', 'CAC RIO'),
(2503, 'C', 'CACRIOAS37DMX01     ', '10.0.127.157', 'LENOVO         ', 'A002LM             ', 'MJ01PGDG       ', '104000032764', 'LENOVO          ', 'E 1922 WD    ', 'V900FL87                ', '104000032764', 'LENOVO', 'SK-8825', '5099248', 'LENOVO', 'M-U0025-O', 'HS422HA34HG', '', '', 'BARRA 37', 'CAC RIO'),
(2504, 'C', 'CACRIOAS38DMX01     ', '10.0.127.158', 'LENOVO         ', 'A002LM             ', 'MJ01PNX5       ', '104000032765', 'LENOVO          ', 'E 1922 WD      ', 'V900FL6H                      ', '104000032765', 'LENOVO', 'KB1021', '1595', 'LENOVO', 'M-U0025-O', 'HS421HA112E', '', '', 'BARRA 38', 'CAC RIO'),
(2505, 'C', 'CACRIOAS39DMX01     ', '10.0.127.159', 'LENOVO         ', 'A002LM             ', 'MJ01PP2J       ', '104000032766', 'LENOVO          ', 'E 1922 WD      ', 'V900FL76                      ', '104000032766', 'LENOVO', 'KB1021', '1560', 'LENOVO', 'M-U0025-O', 'HS421HAI378', '', '', 'BARRA 39', 'CAC RIO'),
(2506, 'C', 'CACRIOAS40DMX01     ', '10.0.127.160', 'LENOVO         ', 'A002LM             ', 'MJ01PNSK       ', '104000032767', 'LENOVO          ', 'E 1922 WD    ', 'V900FL5Z                ', '104000032767', 'LENOVO', 'KB1021', '1653', 'LENOVO', 'M-U0025-O', 'HS421HA111B', '', '', 'BARRA 40', 'CAC RIO'),
(2507, 'C', 'CACRIOAS41DMX01     ', '10.0.127.161', 'LENOVO         ', 'A002LM             ', 'MJ01PGA5       ', '104000032768', 'LENOVO          ', 'E 1922 WD      ', 'V900FL6P                      ', '104000032768', 'LENOVO', 'SK-8825', '5096260', 'LENOVO', 'M-U0025-O', 'HS422HA34KC', '', '', 'BARRA 41', 'CAC RIO'),
(2508, 'C', 'CACRIOAS42DMX01     ', '10.0.127.162', 'LENOVO         ', 'A002LM             ', 'MJ01PGDD       ', '104000032769', 'LENOVO          ', 'E 1922 WD      ', 'V900FM7L                      ', '104000032769', 'LENOVO', 'SK-8825', '5099294', 'LENOVO', 'M-U0025-O', 'HS423HA0VNX', '', '', 'BARRA 42', 'CAC RIO'),
(2509, 'C', 'CACRIOAS43DMX01     ', '10.0.127.163', 'LENOVO         ', 'A002LM             ', 'MJ01PG8Q       ', '104000032770', 'LENOVO          ', 'E 1922 WD    ', 'V9004L4Y                ', '104000032770', 'LENOVO', 'SK-8825', '5099294', 'LENOVO', 'M-U0025-O', 'HS423HA0VNX', '', '', 'BARRA 43', 'CAC RIO'),
(2510, 'C', 'CACRIOAS44DMX01', '10.0.127.164', 'LENOVO', 'A002LM             ', 'MJ01PGAP', '104000032771', 'LENOVO', 'E 1922 WD    ', 'V900FL6M', '104000032771', 'LENOVO', 'SK-8825', '5099254', 'LENOVO', 'M-U0025-O', 'HS423HA00R4', '', '', 'BARRA 44', 'CAC RIO'),
(2511, 'C', 'CACRIOAS46DMX01     ', '10.0.127.166', 'DELL', 'OptiPlex 9010          ', 'C43T6Y1        ', '104000032189', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37F-209U      ', '104000032189', 'DELL', 'KB-4021', 'CN-0DJ462-71581-367-06TG-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35S-0PLW', '', '', 'MODULO A (AS46)', 'CAC RIO'),
(2512, 'C', 'CACRIOAS47DMX01     ', '10.0.127.167', 'DELL', 'OptiPlex 9010          ', 'C9YW6Y1        ', '104000032195', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37E-08EU      ', '104000032195', 'DELL', 'KB212-B', 'CN-0DJ462-71581-53D-000I-A01', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35S-0PJF', '', '', 'MODULO B (AS47)', 'CAC RIO'),
(2513, 'C', 'CACRIOAS48DMX01     ', '10.0.127.168', 'DELL', 'OptiPlex 990           ', '3B0SXQ1        ', '104000031752', 'DELL', 'E170SC    ', 'CN-0HF0K3-64180-16A-188C      ', '104000031752', 'DELL', 'KB522', 'CN-0XCRRN-751313-42M-00L9-A01', 'DELL', 'M-UAV-DEL8', 'LZ402DJ067G', '', '', 'MODULO C', 'CAC RIO'),
(2514, 'C', 'CACRIOCA01DMX01', '10.0.127.146', 'HP', 'ELITEDESK 705 G1 SFF', 'MXL52226WQ', '104000032972', 'HP', 'V193B', '3CQ5140S3D', '104000032972', 'HP', 'KB57211', 'BDMHE0CHH7W1EA', 'HP', 'SM-2022', 'FCMHH0C9Z8F0ZK', '', '', 'CAJA 1', 'CAC RIO'),
(2515, 'C', 'CACRIOCA02DMX01     ', '10.0.127.147', 'HP', 'HP Compaq Pro 6305 SFF ', 'MXL3492H2W     ', '104000032570', 'HP                 ', 'LV1911      ', '6CM34311NW              ', '104000032570', 'HP', 'KU-0316', 'BDALC0N5Y518L', 'HP', 'M-U0031-O', 'FCGLF0ECW5MJ1G', '', '', 'CAJA2', 'CAC RIO'),
(2516, 'C', 'CACRIOCA03DMX01     ', '10.0.127.148', 'DELL', 'OptiPlex 960           ', '74MZNN1        ', '104000031566', 'DELL', 'E170S', 'CN-0U072N-64180-09G-51FC', '1040000031566', 'DELL', 'L30U', 'CN-0N243F-73571-0AD-01B8-A01', 'DELL', 'MS-111L', 'CN-09RRC7-44751-08Q-13JF', '', '', 'CAJA 3', 'CAC RIO'),
(2517, 'C', 'CACRIOCA04DMX01     ', '10.0.127.149', 'HP', 'HP Compaq Pro 6305 SFF ', 'MXL3492H2C     ', '104000032571', 'HP                 ', 'LV1911      ', '6CM34313FS              ', '1040000032571', 'HP', 'KU-0316', 'BDALC0N5YC17E', 'HP', 'MOFXUO', 'FCGLF0EH5KIGU', '', '', 'CAJA 4', 'CAC RIO'),
(2518, 'C', 'CACRIOCA05DMX01     ', '10.0.127.150', 'HP', 'HP Compaq Pro 6305 SFF ', 'MXL3492H1R     ', '104000032569', 'HP                 ', 'LV1911      ', '6CM34311PM              ', '104000032569', 'HP', 'KU-0316', 'BDALC0N5Y5C17T', 'HP', 'MOFXUO', 'FCGLF0EHD5KII2', '', '', 'CAJA 5', 'CAC RIO'),
(2519, 'C', 'CACRIOJE01DMX01     ', '10.0.127.30 ', 'DELL', 'OptiPlex 9010          ', 'CHST6Y1        ', '104000032437', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37F-1J9U      ', '104000032437', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-01L9A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35Q-01VR', '', '', 'JEFATURA', 'CAC RIO'),
(2520, 'C', 'CACRIORE01DMX01     ', '10.0.127.170', 'DELL', 'OptiPlex 9010          ', 'C98W6Y1        ', '104000032188', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37D-307U      ', '104000032188', 'HP', 'KU-0316', 'CN-0DJ462-71581-39F-012K-A01', 'DELL', 'MS-111L', 'CN-09RRC7-48729-53H-0CW', '', '', 'RECEPCION', 'CAC RIO'),
(2521, 'C', 'CACRIOST01DMX01', '10.0.127.141', 'DELL', 'OptiPlex 990           ', '3BBWXQ1', '104000031751', 'DELL', 'E170SC    ', 'CN-0HF0K3-64180-169-0FXC', '104000031751', 'DELL', 'KB522', 'CN-0HF0K3-64180-169-0FXC', 'DELL', 'M-UAV-DEL8', 'LZ120B30A1V', '', '', 'SERTEC 01', 'CAC RIO'),
(2522, 'C', 'CACRIOST02DMX01     ', '10.0.127.142', 'DELL', 'OptiPlex 9010          ', '6STQVV1        ', '104000032037', 'DELL', 'E170SB    ', 'CN-0JCT73-74261-293-0N7U      ', '104000032037', 'DELL', 'KB212-B', 'CN-0KHCC7-71616-288-082J-A00', 'DELL', 'MS-111L', 'CN-09RRC7-44751-26O-0F4Q', '', '', 'SERTEC 02', 'CAC RIO'),
(2523, 'C', 'CACRIOST03DMX01     ', '10.0.127.143', 'HP', 'HP EliteDesk 705 G1 SFF', 'MXL51524PL     ', '104000032922', 'HP                  ', 'V193B          ', '3CQ5140DC9                    ', '104000032922', 'HP', 'KB57211', 'BMHE0CHH7W7TN', 'HP', 'SM-2022', 'FCMHH0CJP7XKBM', '', '', 'SERTEC 03', 'CAC RIO'),
(2524, 'C', 'CACRIOST04DMX01     ', '10.0.127.144', 'DELL', 'OptiPlex 9010          ', '5JVTNW1        ', '104000032100', 'DELL', 'E170S     ', 'CN-0JCT73-74261-2A4-1GKU      ', '104000032100', 'DELL', 'KB522', 'CN-0586GK-75131-259-01UN-A03', 'DELL', 'MS-111L', 'CN-09RRC7-48729-2AF-0B92', '', '', 'SERTEC 04', 'CAC RIO'),
(2525, 'C', 'CACRIOSU01DMX01     ', '10.0.127.151', 'DELL', 'OptiPlex 9010          ', 'F3NBTW1        ', '104000032135', 'DELL', 'E1912H    ', 'CN-0R16JC-72872-2BU-A3LM      ', '104000032135', 'DELL', 'KB212-B', 'CN-0DJ462-71581-366-06HJ-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-3AZ-0MJ7', '', '', 'SUPERVISOR 1', 'CAC RIO'),
(2526, 'C', 'CACRIOSU02DMX01 ', '10.0.127.152', 'DELL', 'OptiPlex 9010          ', 'C26W6Y1        ', '104000032215', 'DELL', 'E1713S    ', 'CN-0HX1KW-74261-37D-2YNU      ', '104000032215', 'DELL', 'KB212-B', 'CN-0DJ462-71581-367-02K4-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-53J-0M0S', '', '', 'SUPERVISOR 2', 'CAC RIO'),
(2527, 'C', 'PRODIGY-RIO2 ', '192.168.1.76', 'DELL', 'OPTIPLEX 990', '3B9WXQ1', '104000031753', 'DELL', 'E170SC', 'CN-0HF0K3-64180-14E-06RL', '104000031753', 'DELL', 'L30U', 'CN-0N243F-73571-9AU-056A-A01', 'DELL', 'M-UAVDEL8', 'LZ113BW11YR', '', '', 'SERTEC-DESBLOQUEOS', 'CAC RIO'),
(2528, 'C', 'INFINITUM-RIO', '192.168.1.75', 'Hewlett-Packard', 'HP EliteDesk 705 G1 SFF', 'MXL5242HSJ     ', '104000033077', 'HP                 ', 'HP V193b       ', '3CQ5270PK4              ', '104000033077', 'HP', 'KU-1156', 'BDMHE0C5Y8N92R', 'HP', 'MOFYUO', 'FCMHH0AKZ8KQ9T', '', '', 'DESBLOQUEOS', 'CAC RIO'),
(2529, 'I', '', 'USB', 'HP', 'OFFICEJET PRO 8100', 'CN4CNHN0NW', '105000031750', '', '', '', '', '', '', '', '', '', 'JEFATURA', '', '', 'BARRA 1 Y 2', 'CAC RIO'),
(2530, 'IT', '', 'USB', 'EPSON', 'TM-T88V', 'MXKF389695', '105000031424', '', '', '', '', '', '', '', '', '', 'CAJA 01', '', '', 'BARRA 3 Y 4', 'CAC RIO'),
(2531, 'IT', '', 'USB', 'EPSON ', 'TM-T88V', 'MXKF357312', '105000031463', '', '', '', '', '', '', '', '', '', 'CAJA3', '', '', 'BARRA 5 Y 6', 'CAC RIO'),
(2532, 'IT', '', 'USB', 'EPSON', 'TM-T88V', 'MXKF352573', '105000031496', '', '', '', '', '', '', '', '', '', 'CAJA04', '', '', 'BARRA 7 Y 8', 'CAC RIO'),
(2533, 'IT', '', 'USB', 'EPSON', 'TM-T88V', 'MXKF357347', '105000031456', '', '', '', '', '', '', '', '', '', 'CAJA05', '', '', 'BARRA 9 Y 10', 'CAC RIO'),
(2534, 'IT', '', '', 'EPSON', 'TM-T88IV', 'J4B6301795', '105000030754', '', '', '', '', '', '', '', '', '', 'RELOJ CHECADOR', '', '', 'BARRA 11 Y 12', 'CAC RIO'),
(2535, 'I', 'MXTACRIOCOR00', '10.0.127.219', 'HP', 'LASERJET M401DNE', 'CNB9089195', '105000031083', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 13 Y 14', 'CAC RIO'),
(2536, 'I', 'MXTACRIOCOR01', '10.0.127.220', 'HP', 'LASERJET M401DNE', 'VNG4813970', '105000031523', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 15 Y 16', 'CAC RIO'),
(2537, 'I', 'MXTACRIOCOR02', '10.0.127.221', 'HP', 'LASERJET M401DNE', 'PHGFB42262', '105000031647', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 17 Y 18', 'CAC RIO'),
(2538, 'I', 'MXTACRIOCOR03', '10.0.127.222', 'HP', 'LASERJET M401DNE', 'PHGFB42260', '105000031648', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 19 Y 20', 'CAC RIO'),
(2539, 'I', 'MXTACRIOCOR04', '10.0.127.223', 'HP', 'LASERJET M401DNE', 'PHGFG22816', '105000031639', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 21 Y 22', 'CAC RIO'),
(2540, 'I', 'MXTACRIOCOR05', '10.0.127.224', 'HP', 'LASERJET M401DNE', 'VNB3B01454', '105000031268', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 23 Y 24', 'CAC RIO'),
(2541, 'I', 'MXTACRIOCOR06', '10.0.127.225', 'HP', 'LASERJET M401DNE', 'PHGFB42254', '105000031651', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 25 Y 26', 'CAC RIO'),
(2542, 'I', 'MXTACRIOCOR07', '10.0.127.226', 'HP', 'LASERJET M401DNE', 'PHGFG22110', '105000031606', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 28 Y 29', 'CAC RIO'),
(2543, 'I', 'MXTACRIOCOR08', '10.0.127.227', 'HP', 'LASERJET M401DNE', 'PHGFD20142', '105000031558', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 30 Y 31', 'CAC RIO'),
(2544, 'L', 'MXTACRIOCOR09', '10.0.127.228', 'HP', 'LASERJET P2055DN', 'CNB9096078', '105000031089', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 32 Y 33', 'CAC RIO'),
(2545, 'I', 'MXTACRIOCOR10', '10.0.127.229', 'HP', 'LASERJET M401DNE', 'PHGFB69022', '105000031777', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 35 Y 36', 'CAC RIO'),
(2546, 'I', 'MXTACRIOCOR11', '10.0.127.230', 'HP', 'LASERJET M401DNE', 'PHGFD20171', '105000031564', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 38 Y 39', 'CAC RIO'),
(2547, 'L', 'MXTACRIOCOR12', '10.0.127.231', 'HP', 'LASERJET P2055DN', 'VNB3R12887', '105000031182', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 40 Y 41', 'CAC RIO'),
(2548, 'I', 'MXTACRIOCOR13', '10.0.127.232', 'HP', 'LASERJET M401DNE', 'VNB3X15772', '105000031213', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 42 Y 43', 'CAC RIO'),
(2549, 'I', 'MXTACRIOCOR14', '10.0.127.233', 'HP', 'LASERJET M401DNE', 'PHGFC42136', '105000031638', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 44 Y 45', 'CAC RIO'),
(2550, 'I', 'MXTACRIOCOR15', '10.0.127.234', 'HP', 'LASERJET M401DNE', 'PHGFB42259', '105000031641', '', '', '', '', '', '', '', '', '', '', '', '', 'MODULO "A"', 'CAC RIO'),
(2551, 'I', 'MXTACRIOCOR23', '10.0.127.242', 'HP', 'LASERJET M401DNE', 'PHGFB42257', '105000031642', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 33 Y 34', 'CAC RIO'),
(2552, 'I', 'MXTACRIOCOR24', '10.0.127.243', 'HP', 'LASERJET M401DNE', 'PHGFB42261', '105000031643', '', '', '', '', '', '', '', '', '', '', '', '', 'MODULO "B"', 'CAC RIO'),
(2553, 'I', 'MXTACRIOCOR25', '10.0.127.244', 'HP', 'LASERJET M401DNE', 'PHGFB42264', '105000031644', '', '', '', '', '', '', '', '', '', '', '', '', 'SERTEC', 'CAC RIO'),
(2554, 'I', 'MXTACRIOCOR26', '10.0.127.245', 'HP', 'LASERJET M401DNE', 'PHGFB42263', '105000031645', '', '', '', '', '', '', '', '', '', '', '', '', 'ALMACEN', 'CAC RIO'),
(2555, 'I', 'MXTACRIOCOR27', '10.0.127.246', 'HP', 'LASERJET M401DNE', 'PHGFB42258', '105000031646', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJAS', 'CAC RIO'),
(2556, 'I', 'NO TIENE', 'USB', 'HP', 'LASERJET M401DNE', 'VNG4813960', '105000031517', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAC RIO'),
(2557, 'I', 'NO TIENE', 'USB', 'HP', 'LASERJET M401DNE', 'VNB5P02173', '105000031505', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAC RIO'),
(2558, 'I', 'NO TIENE', 'USB', 'HP', 'LASERJET 2420', 'CNGKB30157', '105000030261', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAC RIO'),
(2559, 'I', 'MXTACRIOCOR21', '10.0.127.240', 'HP', 'LASERJET M401DNE', 'VNB4M15264', '105000031282', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAC RIO'),
(2560, 'I', 'MXTACRIOCOR19', '10.0.127.238', 'HP', 'LASERJET M603', 'CNBCD2N1H3', '105000031173', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAC RIO'),
(2561, 'I', 'MXTACRIOCOR20', '10.0.127.239', 'LEXMARK', '656DE', '79G68V6', '105000031241', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAC RIO'),
(2562, 'E', '', '10.0.127.217', 'XEROX', 'DOCUMATE 272i', '715TW1074B5N1300152', '105000031687', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA TRASERA', 'CAC RIO'),
(2563, 'E', '', '10.0.127.218', 'XEROX', 'DOCUMATE 3125', '55DU630423', '105000031771', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA TRASERA', 'CAC RIO'),
(2564, 'E', '', '10.0.127.213', 'XEROX', 'DOCUMATE 3125', '4BAHL70699', '105000031662', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA TRASERA', 'CAC RIO'),
(2565, 'E', 'CACRIO3GLMX01', 'INFINITUM', 'Hewlett-Packard', 'HP ProBook 645 G1', '5CG5240PTP     ', '104000032809', '', '', '', '', '', '', '', '', '', '', 'CT-6DKFKC4GW8N7Z8', '', 'SERTEC', 'CAC RIO'),
(2566, 'C', 'CACROSAC01DMX01', '10.8.17.44  ', 'DELL', 'OptiPlex 9010         ', 'C0WW6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-0KPU', '104000032238', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-03O0-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35Q-0265', '', '', 'ALMACEN ', 'CAC ROSARITO'),
(2567, 'C', 'CACROSAC02DMX01', '10.8.17.45  ', 'DELL', 'OptiPlex 9010         ', 'C0MT6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0GFU', '104000032239', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-02CM-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-03AS', '', '', 'ALMACEN ', 'CAC ROSARITO'),
(2568, 'C', 'CACROSAC03DMX01', '10.8.17.48  ', 'DELL', 'OptiPlex 960          ', 'CX2RKM1        ', '1.04E+11', 'DELL', 'E170S', 'CN-0N445N-74261-05D-0YGC', '104000031489', 'DELL', 'L30U', 'CN-0N243F-73571-028-013I-A01', 'DELL', 'MOC5UO', 'ILEGIBLE', '', '', 'ALMACEN ', 'CAC ROSARITO'),
(2569, 'C', 'CACROSAS01DMX01', '10.8.17.11  ', 'DELL', 'OptiPlex 9010         ', 'C2RV6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-HX1KW-74261-37E-0FUU', '104000032240', 'DELL', 'KB4021', ' CN-0DJ462-71581-367-06SY-A00      ', 'DELL', 'MS-111-L', 'CN-09RRC7-48729-355-0DK0', '', '', 'BARRA 1', 'CAC ROSARITO'),
(2570, 'C', 'CACROSAS02DMX01', '10.8.17.12  ', 'DELL', 'OptiPlex 9010         ', 'G15RRW1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-31S-4UJU', '104000032140', 'DELL', 'KB4021', 'CN-0C639N-71616-2CR-0BOK-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-2C1-0T9W', '', '', 'BARRA 2', 'CAC ROSARITO'),
(2571, 'C', 'CACROSAS03DMX01', '10.8.17.13  ', 'DELL', 'OptiPlex 9010         ', 'C05V6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0CWU', '104000032241', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-057M-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-03A0', '', '', 'BARRA 3', 'CAC ROSARITO'),
(2572, 'C', 'CACROSAS04DMX01', '10.8.17.14  ', 'DELL', 'OptiPlex 9010         ', 'C26V6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-328U', '104000032242', 'DELL', 'KB4021', 'CN-0DJ462-71581-4BC-00DY-A01', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35Q-026F', '', '', 'BARRA 4', 'CAC ROSARITO'),
(2573, 'C', 'CACROSAS05DMX01', '10.8.17.15  ', 'DELL', 'OptiPlex 9010         ', 'C6BV6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-32KU', '104000032243', 'DELL', 'KB4021', 'CN-0DJ462-71581-366-06ZL-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-0EMC', '', '', 'BARRA 5', 'CAC ROSARITO'),
(2574, 'C', 'CACROSAS06DMX01', '10.8.17.16  ', 'DELL', 'OptiPlex 9010         ', 'C33W6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0GKU', '104000032256', 'DELL', 'KB4021', 'CN-0DJ462-71581-366-01S2-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35R-0B4E', '', '', 'BARRA 6', 'CAC ROSARITO'),
(2575, 'C', 'CACROSAS07DMX01', '10.8.17.17  ', 'DELL', 'OptiPlex 9010         ', 'C2CV6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0D1U', '104000032244', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-0514-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-0DKE', '', '', 'BARRA 7', 'CAC ROSARITO'),
(2576, 'C', 'CACROSAS08DMX01', '10.8.17.18  ', 'DELL', 'OptiPlex 9010         ', 'C2SV6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0GHU', '104000032245', 'DELL', 'KB4021', 'CN-0DJ462-71581-44F-0085-A01', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35R-0C60', '', '', 'BARRA 8', 'CAC ROSARITO'),
(2577, 'C', 'CACROSAS11DMX01', '10.8.17.21  ', 'DELL', 'OptiPlex 9010         ', 'CJ4T6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-06FU', '104000032247', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-0648-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35Q-02R5', '', '', 'BARRA 11', 'CAC ROSARITO'),
(2578, 'C', 'CACROSAS12DMX01', '10.8.17.22  ', 'DELL', 'OptiPlex 9010         ', 'C0HV6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-32PU', '104000032248', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-05RF-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35Q-0WCK', '', '', 'BARRA 12', 'CAC ROSARITO'),
(2579, 'C', 'CACROSAS13DMX01', '10.8.17.23  ', 'DELL', 'OptiPlex 9010         ', 'C4NV6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0CEU', '104000032249', 'DELL', 'KB4021', 'CN-0DJ462-71581-366-01RV-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-0PJ6', '', '', 'BARRA 13', 'CAC ROSARITO'),
(2580, 'C', 'CACROSAS14DMX01', '10.8.17.24  ', 'DELL', 'OptiPlex 9010         ', 'C38V6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-337U', '104000032250', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-06RG-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35R-0B2N', '', '', 'BARRA 14', 'CAC ROSARITO'),
(2581, 'C', 'CACROSAS15DMX01', '10.8.17.25  ', 'DELL', 'OptiPlex 9010         ', 'C49W6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0GRU', '104000032251', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-05MN-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35R-0B4N', '', '', 'BARRA 15', 'CAC ROSARITO'),
(2582, 'C', 'CACROSAS16DMX01', '10.8.17.26  ', 'DELL', 'OptiPlex 990          ', '3CC7KS1        ', '1.04E+11', 'DELL', 'E170S', 'CN-0HF0K3-64180-217-1QKL', '104000031935', 'DELL', 'KB4021', 'CN-0KHCC7-71616-1CJ-06FO-A00', 'DELL', 'MOCZUL', 'K1A003PG', '', '', 'BARRA 16', 'CAC ROSARITO'),
(2583, 'C', 'CACROSAS17DMX01', '10.8.17.27  ', 'DELL', 'OptiPlex 990          ', '3CR7KS1        ', '1.04E+11', 'DELL', 'E170S', 'CN-0HF0K3-64180-217-1V2L', '104000031950', 'DELL', 'L30U', 'CN-0N243F-73571-0C4-02P0-A01', 'DELL', 'UAV-DEL8', 'LZ402DJ069K', '', '', 'BARRA 17', 'CAC ROSARITO'),
(2584, 'C', 'CACROSAS18DMX01', '10.8.17.28  ', 'DELL', 'OptiPlex 9010         ', 'DRK47V1        ', '1.04E+11', 'DELL', 'E170S', 'CN-0HF0K3-64180-23S-4Q1L', '104000032010', 'DELL', 'KB4021', 'CN-0KHCC7-71616-26K-027F-A00', 'DELL', 'MOCZUL', 'K1A003PJ', '', '', 'BARRA 18', 'CAC ROSARITO'),
(2585, 'C', 'CACROSAS19DMX01', '10.8.17.29  ', 'DELL', 'OptiPlex 9010         ', 'DRL87V1        ', '1.04E+11', 'DELL', 'E170S', 'CN-0HF0K3-64180-25V-08ZL', '104000032011', 'DELL', 'KB4021', 'CN-0KHCC7-71616-26K-084I-A00', 'DELL', 'MS111-L', 'CN-09RRC7-44751-25T-0MXS', '', '', 'BARRA 19', 'CAC ROSARITO'),
(2586, 'C', 'CACROSAS20DMX01', '10.8.17.35  ', 'DELL', 'OptiPlex 9010         ', 'C1CT6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-06EU', '104000032246', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-05RC-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35Q-026W', '', '', 'BARRA 20', 'CAC ROSARITO'),
(2587, 'C', 'CACROSCA01DMX01', '10.8.17.40  ', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492G9H     ', '1.04E+11', 'HP', 'LV1911', '6CM34311PY', '104000032577', 'HP', 'KU-0316', 'BDALC0N5Y5C18Q', 'HP', 'M-U0031-O', 'FCGLF0ECW5XY5H', '', '', 'CAJAS', 'CAC ROSARITO'),
(2588, 'C', 'CACROSCA02DMX01', '10.8.17.41  ', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492H0X     ', '1.04E+11', 'HP', 'LV1911', '6CM34311PV', '104000032579', 'HP', 'KU-0316', 'BDALC0N5Y5C17R', 'HP', 'MOFXUO', 'FCGLF0EHP5KIHB', '', '', 'CAJAS', 'CAC ROSARITO'),
(2589, 'C', 'CACROSCA03DMX01', '10.8.17.42  ', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492GD4     ', '1.04E+11', 'HP', 'LV1911', '6CM34313FZ', '104000032578', 'HP', 'KU-0316', 'BDALC0N5Y5C1AM', 'HP', 'M-U0031-0', 'FCGLF0ECW5QFW5', '', '', 'CAJAS', 'CAC ROSARITO'),
(2590, 'C', 'CACROSJE01DMX01', '10.8.17.30  ', 'DELL', 'OptiPlex 9010         ', 'C6CT6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2WRU', '104000032296', 'DELL', 'KB4021', 'CN-0DJ462-71581-366-06I2-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-0PKE', '', '', 'JEFATURA', 'CAC ROSARITO'),
(2591, 'C', 'CACROSRE01DMX01', '10.8.17.36  ', 'DELL', 'OptiPlex 9010', 'C53X6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0P4U', '104000032253', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-056A-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35R-0B2L', '', '', 'RECEPCION', 'CAC ROSARITO'),
(2592, 'C', 'LISTA DE PRECIOS', '', 'DELL', 'OptiPlex 9010', 'C31X6Y1', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0PFU', '104000032252', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-0567-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35R-0B4J', '', '', 'RECEPCION', 'CAC ROSARITO'),
(2593, 'C', 'CACROSST01DMX01', '10.8.17.46  ', 'DELL', 'OptiPlex 9010         ', 'C2WW6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0CYU', '104000032254', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-06UV-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-0PJN', '', '', 'SERTEC ', 'CAC ROSARITO'),
(2594, 'C', 'CACROSST02DMX01', '10.8.17.47  ', 'DELL', 'OptiPlex 9010         ', '9MGGRW1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-31S-42UU', '104000032168', 'DELL', 'L30U', 'CN-0N243F-73571-0BK-00HH-A01', 'DELL', 'MS111-L', 'CN-09RRC7-44751-08S-16R1', '', '', 'SERTEC ', 'CAC ROSARITO');
INSERT INTO `t_inventario_temporal` (`id_inventario_temporal`, `Componente`, `Nomenclatura`, `IP`, `Marca_g`, `Modelo_g`, `Serie_g`, `Inventario_g`, `Marca_m`, `Modelo_m`, `Serie_m`, `Inventario_m`, `Marca_t`, `Modelo_t`, `Serie_t`, `Marca_r`, `Modelo_r`, `Serie_r`, `Serie_Pila`, `Usuario_Univ`, `Posicion`, `Ubicacion`) VALUES
(2595, 'C', 'CACROSST03DMX01', '10.8.17.49', 'DELL', 'OptiPlex 960      ', 'F5XFDP1', '1.04E+11', 'DELL', 'E173FP', 'CN-0F5035-64180-58E-2Q75', '104000030615', 'DELL', 'KB4021', 'CN-0C639N-71616-2CB-05JP-A00', 'DELL', 'MS111-L', 'CN-011D3V-71581-2C3-0BKR', '', '', 'SERTEC ', 'CAC ROSARITO'),
(2596, 'C', 'PICHU-D5E17225F', '192.168.1.64', 'DELL', 'Optiplex GX620', '65ZXY91', '1.04E+11', 'DELL', 'E176FP', 'CN-0CC639-72872-63O-2G75', '104000030730', 'DELL', 'SK-8135', 'CN-0DJ375-71616-772-0YYL', 'MICROSOFT', 'M0-5013U', '1MHYX010020305701', '', '', 'SERTEC ', 'CAC ROSARITO'),
(2597, 'E', 'INFINITUM-ROS', 'AUTOMATICA', 'HP', 'EliteDesk 705', 'MXL5242HSK', '1.04E+11', 'HP', 'V193b', '3CQ5270PKV', '104000033087', 'HP', 'KB-57211', 'BDMHE0CHH8B2GX', 'HP', 'MOFYUO', 'FCMHH0AKZ8K5JS', '', '', 'SERTEC ', 'CAC ROSARITO'),
(2598, 'C', 'CACROSSU01DMX01', '10.8.17.19  ', 'DELL', 'OptiPlex 9010         ', 'C05X6Y1        ', '1.04E+11', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0DPU', '104000032308', 'DELL', 'KB522', 'CN-0XCRRN-75131-3CN-00JJ-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-35S-0TJU', '', '', 'BARRA 9', 'CAC ROSARITO'),
(2599, 'C', 'MXCACROSCOR01  ', '10.8.17.50  ', 'DELL', 'OptiPlex 990          ', '54PJ6V1        ', '1.04E+11', 'DELL', 'E170S', 'CN-0HF0K3-64180-23S-3VEL', '104000032021', 'DELL', 'KB4021', 'CN-0KHCC7-71616-25T-07L3-A00', 'DELL', 'MS111-L', 'CN-09RRC7-44751-25V-009J', '', '', 'SITE', 'CAC ROSARITO'),
(2600, 'C', 'SERVCAMROS     ', '10.8.17.65  ', 'DELL', 'OptiPlex GX280        ', '2R85B71        ', 'ILEGIBLE', 'DELL', 'E156FP', 'Y999861I398L', '104000030776', 'DELL', 'SK-8135', 'CN-CDJ375-71616-756-0R0C', 'ACTECK', 'AM-950', '65701', '', '', 'SITE', 'CAC ROSARITO'),
(2601, NULL, 'MXTACROSCOR19', '10.8.17.225', 'HP', 'LaserJet 400 M401 dne', 'PHGFG20448', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'ALMACEN', 'CAC ROSARITO'),
(2602, NULL, 'MXTACROSCOR01', '10.8.17.226', 'HP', 'LaserJet 400 M401 dne', 'PHGFC58470', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 1/2', 'CAC ROSARITO'),
(2603, NULL, 'MXTACROSCOR02', '10.8.17.227', 'HP', 'LaserJet 400 M401 dne', 'PHGFC58477', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 3/4', 'CAC ROSARITO'),
(2604, NULL, 'MXTACROSCOR03', '10.8.17.228', 'HP', 'LaserJet 400 M401 dne', 'VNB5P02427', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 5/6', 'CAC ROSARITO'),
(2605, NULL, 'MXTACROSCOR04', '10.8.17.229', 'HP', 'LaserJet 400 M401 dne', 'PHGFC58468', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 7/8', 'CAC ROSARITO'),
(2606, NULL, 'MXTACROSCOR06', '10.8.17.231', 'HP', 'LaserJet 400 M401 dne', 'PHGFC58475', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 11/12', 'CAC ROSARITO'),
(2607, NULL, 'MXTACROSCOR07', '10.8.17.232', 'HP', 'LaserJet 400 M401 dne', 'PHGFC58447', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 13/14', 'CAC ROSARITO'),
(2608, NULL, 'MXTACROSCOR08', '10.8.17.233', 'HP', 'LaserJet 400 M401 dne', 'VNG3704439', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 15/16', 'CAC ROSARITO'),
(2609, NULL, 'MXTACROSCOR09', '10.8.17.234', 'HP', 'LaserJet 400 M401 dne', 'VNB4F15332', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 17/18', 'CAC ROSARITO'),
(2610, NULL, 'MXTACROSCOR10', '10.8.17.235', 'HP', 'LaserJet 400 M401 dne', 'PHGFC58472', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'TRAS BARRA 19/20', 'CAC ROSARITO'),
(2611, 'I', '', '10.8.17.224', 'LEXMARK', 'MX711', '7463479905W53', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJAS', 'CAC ROSARITO'),
(2612, 'I', '', 'USB', 'HP', 'OfficeJet Pro 8100', 'CN4CNHV0NY', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'JEFATURA', 'CAC ROSARITO'),
(2613, NULL, 'MXTACROSCOR21', '10.8.17.223', 'HP', 'LaserJet 400 M401 dne', 'PHGFC58474', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'SERVICIO TECNICO', 'CAC ROSARITO'),
(2614, 'IT', '', '', 'EPSON', 'TM-T88IV', 'J4BG004949', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'CHECADOR', 'CAC ROSARITO'),
(2615, 'IT', '', '', 'EPSON', 'TM-T88V', 'MXKF354584', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'RECEPCION', 'CAC ROSARITO'),
(2616, 'IT', '', '', 'EPSON', 'TM-T88V', 'MXDF230244', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA 01', 'CAC ROSARITO'),
(2617, 'IT', '', '', 'EPSON', 'TM-T88V', 'MXKF352841', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA 02', 'CAC ROSARITO'),
(2618, 'IT', '', '', 'EPSON', 'TM-T88V', 'MXKF352821', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA 03', 'CAC ROSARITO'),
(2619, 'E', '', 'USB', 'HP', 'ScanJet 2400', 'CN74JSR121', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'JEFATURA', 'CAC ROSARITO'),
(2620, 'E', '', '10.8.17.219', 'XEROX', 'DocuMate 272', '715TW1074C5N1300112', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'TRAS BARRAS', 'CAC ROSARITO'),
(2621, 'E', '', '10.8.17.218', 'XEROX', 'DocuMate 3125', '4BAHL70672', '1.05E+11', '', '', '', '', '', '', '', '', '', '', '', '', 'TRAS BARRAS', 'CAC ROSARITO'),
(2622, 'C', 'CACTKTAC01DMX01', '10.8.15.40  ', 'DELL', 'OptiPlex 9010          ', 'C6FV6Y1        ', '1040-32221', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2YKU      ', '1040-32221     ', 'DELL         ', 'KB4021        ', 'CN-0DJ462-71581-367-06UX-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-35R-0B40', '', '', '', 'CAC ROSARITO'),
(2623, 'C', 'CACTKTAC02DMX01', '10.8.15.43  ', 'DELL', 'OptiPlex 9010          ', '9LSGRW1        ', '1040-32169     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-31S-5PGU      ', '1040-32169     ', 'DELL         ', 'SK-8120       ', 'CN-0C639N-71616-2BQ-01UH-A00', 'DELL       ', 'MS111-L     ', 'CN-011D3V-71581-2C3-0BZ3', '', '', '', 'CAC ROSARITO'),
(2624, 'C', 'CACTKTAC03DMX01', '10.8.15.44  ', 'DELL', 'OptiPlex 960           ', 'CX2QKM1        ', '1040-31490     ', 'DELL', 'E170S', 'CN-0N445N-74261-05A-275C      ', '1040-31490     ', 'DELL         ', 'L30U          ', 'CN-0N243F-73571-04H-0096-A01', 'DELL       ', 'MOC5UO      ', 'J0J03TOT', '', '', '', 'CAC ROSARITO'),
(2625, 'C', 'CACTKTAS04DMX01', '10.8.15.14  ', 'DELL', 'OptiPlex 960           ', '2XZ3SL1        ', '1040-31463     ', 'DELL', 'E170S', 'CN-0U072N-64180-03A-0DEU      ', '1040-31463     ', 'DELL         ', 'L30U          ', 'CN-0N243F-73571-01T-01PL-A01', 'DELL       ', 'MOC5UO      ', 'I1F04HOE', '', '', '', 'CAC ROSARITO'),
(2626, 'C', 'CACTKTAS05DMX01', '10.8.15.15  ', 'DELL', 'OptiPlex 9010          ', 'C0GT6Y1        ', '1040-32226     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0PDU      ', '1040-32226     ', 'DELL         ', 'KB4021        ', 'CN-0DJ462-71581-367-065V-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-488-0R05', '', '', '', 'CAC ROSARITO'),
(2627, 'C', 'CACTKTAS06DMX01', '10.8.15.16  ', 'DELL', 'OptiPlex 9010          ', 'BZTT6Y1        ', '1040-32227     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0GDU      ', '1040-32227     ', 'DELL         ', 'KB4021        ', 'CN-0DJ462-71581-61I-098M-A01', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-49G-07QS', '', '', '', 'CAC ROSARITO'),
(2628, 'C', 'CACTKTAS08DMX01', '10.8.15.18  ', 'DELL', 'OptiPlex 9010          ', 'C2FV6Y1        ', '1040-32228     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0GGU      ', '1040-32228     ', 'DELL         ', 'KB4021        ', 'CN-0DJ462-71581-367-05I5-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-35Q-01WP', '', '', '', 'CAC ROSARITO'),
(2629, 'C', 'CACTKTAS09DMX01', '10.8.15.19  ', 'DELL', 'OptiPlex 9010          ', 'C2MW6Y1        ', '1040-32229     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0GEU      ', '1040-32229     ', 'DELL         ', 'KB4021        ', 'CN-0DJ462-71581-367-05I1-A00', 'DELL       ', 'MS111-L     ', 'CN-0RGR5X-48729-419-0106', '', '', '', 'CAC ROSARITO'),
(2630, 'C', 'CACTKTAS10DMX01', '10.8.15.20  ', 'DELL', 'OptiPlex 9010          ', 'C0CW6Y1        ', '1040-32230     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0P5U      ', '1040-32230     ', 'DELL         ', 'KB4021        ', 'CN-0DJ462-71581-366-01W0-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-47A-090F', '', '', '', 'CAC ROSARITO'),
(2631, 'C', 'CACTKTAS11DMX01', '10.8.15.21  ', 'DELL', 'OptiPlex 9010          ', 'C2GT6Y1        ', '1040-32231     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0F8U      ', '1040-32231     ', 'DELL         ', 'KB4021        ', 'CN-0DJ462-71581-366-01UC-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-58U-01Z1', '', '', '', 'CAC ROSARITO'),
(2632, 'C', 'CACTKTAS12DMX01', '10.8.15.22  ', 'DELL', 'OptiPlex 9010          ', 'CJ8V6Y1        ', '1040-32232     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0CUU      ', '1040-32232     ', 'DELL         ', 'KB4021        ', 'CN-0DJ462-71581-367-01LW-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-35Q-02H2', '', '', '', 'CAC ROSARITO'),
(2633, 'C', 'CACTKTAS13DMX01', '10.8.15.23  ', 'DELL', 'OptiPlex 9010          ', 'C0NV6Y1        ', '1040-32233     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-334U      ', '1040-32233     ', 'DELL         ', 'KB4021        ', 'CN-0DJ462-71581-367-050N-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-35S-0DKN', '', '', '', 'CAC ROSARITO'),
(2634, 'C', 'CACTKTAS14DMX01', '10.8.15.24  ', 'DELL', 'OptiPlex 9010          ', 'C64T6Y1        ', '1040-32222     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-08AU      ', '1040-32222     ', 'DELL         ', 'KB4021        ', 'CN-0DJ462-71581-366-01RW-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-53H-00X9', '', '', '', 'CAC ROSARITO'),
(2635, 'C', 'CACTKTAS15DMX01', '10.8.15.25  ', 'DELL', 'OptiPlex 9010          ', 'C1JW6Y1        ', '1040-32223     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-07UU      ', '1040-32223     ', 'DELL         ', 'KB522', 'CN-0XCRRN-75131-3CN-00JH-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-48U-0DNZ', '', '', '', 'CAC ROSARITO'),
(2636, 'C', 'CACTKTAS16DMX01', '10.8.15.13  ', 'DELL', 'OptiPlex 9010          ', 'C63X6Y1        ', '1040-32224     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-07YU      ', '1040-32224     ', 'DELL         ', 'KB4021        ', 'CN-0DJ462-71581-367-06TE-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-53I-0ATL', '', '', '', 'CAC ROSARITO'),
(2637, 'C', 'CACTKTAS20DMX01', '10.8.15.34  ', 'DELL', 'OptiPlex 9010          ', 'C1NV6Y1        ', '1040-32225     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-33AU      ', '1040-32225     ', 'DELL         ', 'KB4021        ', 'CN-0DJ462-71581-367-057N-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-431-0GRJ', '', '', '', 'CAC ROSARITO'),
(2638, 'C', 'CACTKTAS21DMX01', '10.8.15.33  ', 'DELL', 'OptiPlex 960           ', '2XZCSL1        ', '1040-31462     ', 'DELL', 'E170S', 'CN-0U072N-64180-03A-1MLU      ', '1040-31462     ', 'DELL         ', 'L30U          ', 'CN-0N243F-73571-01T-01V8-A01', 'DELL       ', 'M-UVDEL1    ', 'HCD54011056', '', '', '', 'CAC ROSARITO'),
(2639, 'C', 'CACTKTCA01DMX01', '10.8.15.39  ', 'HP', 'HP EliteDesk 705 G1 SFF', 'MXL537253B     ', '1040-32823', 'HP', 'V193B ', '3CQ5310WDJ              ', '1040-32823', 'HP', 'KU-1156', 'BDMHE0C5Y8N3R9', 'HP         ', 'SM-2022', 'FCMHH0C9Z8LA4F', '', '', '', 'CAC ROSARITO'),
(2640, 'C', 'CACTKTCA02DMX01', '10.8.15.38  ', 'DELL', 'OptiPlex 960           ', '74F0PN1        ', '1040-31571     ', 'DELL', 'E170S', 'CN-0U072N-64180-09K-0GBC      ', '1040-31571     ', 'DELL         ', 'L30U          ', 'CN-0N243F-73571-0AD-01DF-A01', 'DELL       ', 'M-BAC-DEL5', 'HC7150B0TPT', '', '', '', 'CAC ROSARITO'),
(2641, 'C', 'CACTKTCA03DMX01', '10.8.15.37  ', 'DELL', 'OptiPlex 960           ', '74F1PN1        ', '1040-31572     ', 'DELL', 'E178FP', 'CN-0RY97976R9AYS            ', 'ILEGIBLE-TECATE', 'DELL         ', 'L30U          ', 'CN-0N243F-73571-0AD-01HV-A01', 'HP         ', 'M-UAE96     ', 'ILEGIBLE STOCK OUTSOURCING', '', '', '', 'CAC ROSARITO'),
(2642, 'C', 'CACTKTJE01DMX01', '10.8.15.30  ', 'DELL', 'OptiPlex 9010          ', 'BZVT6Y1        ', '1040-32234     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-332U      ', '1040-32234     ', 'DELL         ', 'SK-8120       ', 'CN-0C639N-71616-34H-0DJB-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-35I-0AN2', '', '', '', 'CAC ROSARITO'),
(2643, 'C', 'CACTKTRE01DMX01', '10.8.15.36  ', 'DELL', 'OptiPlex 9010          ', 'C10V6Y1        ', '1040-32235     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0P3U      ', '1040-32235     ', 'DELL         ', 'L30U          ', 'CN-0XCRRN-75131-3CN-00LT-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-45U-0SFH', '', '', '', 'CAC ROSARITO'),
(2644, 'C', 'CACTKTST01DMX01', '10.8.15.41  ', 'DELL', 'OptiPlex 9010          ', 'C2KW6Y1        ', '1040-32236     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0G7U      ', '1040-32236     ', 'DELL         ', 'KB4021        ', 'CN-0DJ462-71581-367-045Z-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-35S-0DKS', '', '', '', 'CAC ROSARITO'),
(2645, 'C', 'CACTKTST02DMX01', '10.8.15.42  ', 'DELL', 'OptiPlex 960           ', 'DWJ3JL1        ', '1040-31402     ', 'DELL', 'E170S', 'CN-0U072N-64180-9AB-2G5S      ', '1040-31402     ', 'DELL         ', 'L30U          ', 'CN-0N243F-73571-9AU-0569-A01', 'DELL       ', 'MOC5UO      ', 'I1302OIM', '', '', '', 'CAC ROSARITO'),
(2646, 'C', 'CACTKTSU01DMX01', '10.8.15.17  ', 'DELL', 'OptiPlex 9010          ', 'C1ST6Y1        ', '1040-32237     ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-335U      ', '1040-32237     ', 'DELL         ', 'KB421         ', 'CN-0DJ462-71581-367-05CX-A00', 'DELL       ', 'MS111-L     ', 'CN-09RRC7-48729-44K-1BQM', '', '', '', 'CAC ROSARITO'),
(2647, 'C', 'MXCACTKTCOR01  ', '10.8.15.50  ', 'DELL', 'OptiPlex 990           ', '3CZ4KS1        ', '1040-31937     ', 'DELL', 'E170S', 'CN-0HF0K3-64180-217-1SLL      ', '1040-31937     ', 'DELL         ', 'SK-8120       ', 'CN-0KHCC7-71616-1CJ-06FF-A00', 'DELL       ', 'MOCZUL', 'K1A003PP', '', '', '', 'CAC ROSARITO'),
(2648, 'E', 'DESBLOQUEOS', 'DINAMICA', 'HP', 'ELITEDESK 705', 'MXL5242DRM', '1040-33086', 'HP', 'V193B ', '3CQ5270PKM', '1040-33086', 'HP', 'KB57211', 'BDMHE0CHH8B3HQ', 'HP         ', 'MOFYUO', 'FCMHH0AKZ8QN5K', '', '', '', 'CAC ROSARITO'),
(2649, 'C', 'DESBLOQUEOS', 'DINAMICA', 'DELL', 'OPTIPLEX GX620', '239TS91', '1040-30708', 'DELL', 'E177FPc', 'CN-0FJ181-64180-68A-110C', '1040-30831', 'DELL         ', 'SK-1835', 'CN-0N6244-71616-617-00Q9', '—       ', '—       ', '—   ', '', '', '', 'CAC ROSARITO'),
(2650, 'I', 'MXTACTKTCOR01', '10.8.15.224', 'HP', 'LaserJet 400 M401dne', 'PHGFC58252', '1050-31727', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 14 y 15', 'CAC ROSARITO'),
(2651, 'I', 'MXTACTKTCOR02', '10.8.15.225', 'HP', 'LaserJet 400 M401dne', 'PHGFG33172', '1050-31716', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 16 y 17', 'CAC ROSARITO'),
(2652, 'I', 'MXTACTKTCOR03', '10.8.15.226', 'HP', 'LaserJet 400 M401dne', 'PHGFC58253', '1050-31728', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 4 y 5', 'CAC ROSARITO'),
(2653, 'I', 'MXTACTKTCOR04', '10.8.15.227', 'HP', 'LaserJet 400 M401dne', 'PHGFG20455', '1050-31707', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 6 y 7', 'CAC ROSARITO'),
(2654, 'I', 'MXTACTKTCOR05', '10.8.15.228', 'HP', 'LaserJet 400 M401dne', 'PHGFC58251', '1050-31729', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 8 y 9', 'CAC ROSARITO'),
(2655, 'I', 'MXTACTKTCOR06', '10.8.15.229', 'HP', 'LaserJet 400 M401dne', 'PHGFD54625', '1050-31730', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 10 y 11', 'CAC ROSARITO'),
(2656, 'I', 'MXTACTKTCOR07', '10.8.15.230', 'HP', 'LaserJet 400 M401dne', 'PHGFD54626', '1050-31734', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 12 y 13', 'CAC ROSARITO'),
(2657, 'I', 'MXTACTKTCOR08', '10.8.15.231', 'HP', 'LaserJet 400 M401dne', 'PHGFC58261', '1050-31731', '', '', '', '', '', '', '', '', '', '', '', '', 'Modulo A', 'CAC ROSARITO'),
(2658, 'I', 'MXTACTKTCOR12', '10.8.15.220', 'HP', 'LaserJet 400 M401dne', 'PHGFD54627', '1050-31735', '', '', '', '', '', '', '', '', '', '', '', '', 'Atrás de barra 11 y 12', 'CAC ROSARITO'),
(2659, 'I', 'MXTACTKTCOR13', '10.8.15.221', 'HP', 'LaserJet 400 M401dne', 'PHGFC58258', '1050-31732', '', '', '', '', '', '', '', '', '', '', '', '', 'Almacen', 'CAC ROSARITO'),
(2660, 'I', 'MXTACTKTCOR14', '10.8.15.222', 'HP', 'LaserJet 4250', 'CNRXG63532', '1050-ILEGIBLE', '', '', '', '', '', '', '', '', '', '', '', '', 'Cajas', 'CAC ROSARITO'),
(2661, 'I', 'MXTACTKTCOR15', '10.8.15.223', 'HP', 'LaserJet 400 M401dne', 'PHGFD54624', '1050-31733', '', '', '', '', '', '', '', '', '', '', '', '', 'Servicio Tecnico', 'CAC ROSARITO'),
(2662, 'I', '', 'LOCAL', 'HP', '5940', 'CN56G1Z1QZ', '1050-30306', '', '', '', '', '', '', '', '', '', '', '', '', 'JEFATURA', 'CAC ROSARITO'),
(2663, 'IT', '', 'LOCAL', 'Epson', 'TM-T88V', 'MXKF357291', '1050-ILEGIBLE', '', '', '', '', '', '', '', '', '', '', '', '', 'Caja 1', 'CAC ROSARITO'),
(2664, 'I', '', 'LOCAL', 'Bixolon', 'SRP-F312', 'ELKNJKA15110346', '1050-31840', '', '', '', '', '', '', '', '', '', '', '', '', 'Caja 2', 'CAC ROSARITO'),
(2665, 'IT', '', 'LOCAL', 'Epson', 'TM-T88V', 'MXKF387675', '1050-31588', '', '', '', '', '', '', '', '', '', '', '', '', 'Caja 3', 'CAC ROSARITO'),
(2666, 'I', '', 'LOCAL', 'Bixolon', 'SRP-F312', 'ELKNJKA16030102', '1050-31847', '', '', '', '', '', '', '', '', '', '', '', '', 'Recepcion', 'CAC ROSARITO'),
(2667, 'IT', '', 'LOCAL', 'Epson', 'TM-T88V', 'J4BG004946', 'ILEGIBLE', '', '', '', '', '', '', '', '', '', '', '', '', 'Checador', 'CAC ROSARITO'),
(2668, 'E', '', '10.8.15.218', 'XEROX', 'DOCUMATE 3125', '4BAHL70700', '1050-31673', '', '', '', '', '', '', '', '', '', '', '', '', 'ATRÁS 4 Y 5', 'CAC ROSARITO'),
(2669, 'E', '', '10.8.15.219', 'XEROX', 'DOCUMATE 272', '737TW1079B5N1400139', '1050-30877', '', '', '', '', '', '', '', '', '', '', '', '', 'ATRÁS 9 Y 10', 'CAC ROSARITO'),
(2670, 'I', '', 'LOCAL', 'HP', 'SCANJET G4050', 'CN246AB11Z', '1050-31187', '', '', '', '', '', '', '', '', '', '', '', '', 'JEFATURA', 'CAC ROSARITO'),
(2671, 'I', 'CACTKT3GLMX01', 'DINAMICA', 'HP', 'PROBOOK 6445', '5CG5240ST6', '1040-32808', '', '', '', '', '', '', '', '', '', '', '6DKFKC4GW8O27F', '', 'SERVICIO TECNICO', 'CAC ROSARITO'),
(2672, 'C', 'CACABOAC01DMX01', '192.1.207.135', 'DELL', 'OptiPlex 960             ', 'C2HQJM1        ', '1', 'DELL', 'E177FP', '6418067U05WL            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2673, 'C', 'CACABOAC02DMX01', '192.1.207.136', 'DELL', 'OptiPlex 960             ', '2XJ3JL1        ', '2', 'DELL', 'E170S', 'CN-0U072N-64180-9AB-2EWS', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2674, 'C', 'CACABOAC03DMX01', '192.1.207.137', 'DELL', 'OptiPlex 960             ', 'F5TKDP1        ', '3', 'DELL', 'E170S', 'CN-0N445N-74261-11S-19WU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2675, 'C', 'CACABOAS02DMX01', '192.1.207.101', 'DELL', 'OptiPlex 9010            ', 'JWVLCX1        ', '4', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2P7U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2676, 'C', 'CACABOAS03DMX01', '192.1.207.103', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524V3     ', '5', 'HP', 'V193B', '3CQ5140DF5              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2677, 'C', 'CACABOAS04DMX01', '192.1.207.104', 'DELL', 'OptiPlex 9010            ', 'JWSYCX1        ', '6', 'DELL', 'E1713S', 'CN-0JWRMG-64180-2CB-1A1U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2678, 'C', 'CACABOAS05DMX01', '192.1.207.105', 'DELL', 'OptiPlex 9010            ', 'JT7V7Y1        ', '7', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-34AU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2679, 'C', 'CACABOAS06DMX01', '192.1.207.106', 'DELL', 'OptiPlex 9010            ', 'F4WYCX1        ', '8', 'DELL', 'E1713S', 'CN-0JWRMG-64180-2CB-17PU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2680, 'C', 'CACABOAS07DMX01', '192.1.207.107', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492GBN     ', '9', 'HP', 'LV1911', '6CM34232NK              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2681, 'C', 'CACABOAS08DMX01', '192.1.207.108', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492H1J     ', '10', 'HP', 'LV1911', '6CM34232N6              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2682, 'C', 'CACABOAS09DMX01', '192.1.207.109', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492H1M     ', '11', 'HP', 'LV1911', '6CM35221TT              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2683, 'C', 'CACABOAS10DMX01', '192.1.207.110', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492GC5     ', '12', 'HP', 'LV1911', '6CM34313XF              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2684, 'C', 'CACABOAS11DMX01', '192.1.207.111', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492G9G     ', '13', 'HP', 'LV1911', '6CM34313XP              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2685, 'C', 'CACABOAS12DMX01', '192.1.207.112', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492GB6     ', '14', 'HP', 'LV1911', '6CM34233R1              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2686, 'C', 'CACABOAS13DMX01', '192.1.207.113', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492G9N     ', '15', 'HP', 'LV1911', '6CM35220GY              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2687, 'C', 'CACABOAS14DMX01', '192.1.207.114', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492H10     ', '16', 'HP', 'LV1911', '6CM35220GZ              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2688, 'C', 'CACABOAS15DMX01', '192.1.207.115', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492GBR     ', '17', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2P7U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2689, 'C', 'CACABOAS16DMX01', '192.1.207.116', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492GBH     ', '18', 'HP', 'LV1911', '6CM34232NL              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2690, 'C', 'CACABOAS17DMX01', '192.1.207.117', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492GB2     ', '19', 'HP', 'LV1911', '6CM34233R0              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2691, 'C', 'CACABOAS18DMX01', '192.1.207.118', 'DELL', 'OptiPlex 960             ', '2YH9SL1        ', '20', 'DELL', 'E170S', 'CN-0JCT73-74261-25A-2JCL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2692, 'C', 'CACABOAS19DMX01', '192.1.207.119', 'HP', 'Compaq Pro 6305 SFF', 'MXL3492GCG     ', '21', 'HP', 'LV1911', '6CM35220GQ              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2693, 'C', 'CACABOAS20DMX01', '192.1.207.150', 'DELL', 'OptiPlex 960             ', 'F5PLDP1        ', '22', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2FFU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2694, 'C', 'CACABOAS21DMX01', '192.1.207.121', 'DELL', 'OptiPlex 9010            ', 'CH5W6Y1        ', '23', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2FUU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2695, 'C', 'CACABOAS22DMX01', '192.1.207.122', 'HP', 'EliteDesk 705 G1 SFF', 'MXL5452P0M     ', '24', 'HP', 'V193B', '3CQ54937HC              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2696, 'C', 'CACABOAS23DMX01', '192.1.207.123', 'DELL', 'OptiPlex 9010            ', 'CDDV6Y1        ', '25', 'DELL', 'E170S', 'CN-0HF0K3-64180-14E-06EL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2697, 'C', 'CACABOAS24DMX01', '192.1.207.124', 'DELL', 'OptiPlex 990             ', '3B8XXQ1        ', '26', 'DELL', 'E170S', 'CN-0HF0K3-64180-14E-06PL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2698, 'C', 'CACABOAS25DMX01', '192.1.207.125', 'DELL', 'OptiPlex 9010            ', 'CK3T6Y1        ', '27', 'DELL', 'E170S', 'CN-0HF0K3-64180-14E-05PL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2699, 'C', 'CACABOAS26DMX01', '192.1.207.126', 'DELL', 'OptiPlex 960             ', 'F5RHDP1        ', '28', 'DELL', 'E1713S', 'CN-0JWRMG-64180-2CB-184U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2700, 'C', 'CACABOAS27DMX01', '192.1.207.127', 'DELL', 'OptiPlex 9010            ', '5DKVNW1        ', '29', 'DELL', 'E170S', 'CN-0U072N-64180-03A-13ZU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2701, 'C', 'CACABOAS28DMX01', '192.1.207.128', 'DELL', 'OptiPlex 9010            ', 'C4FV6Y1        ', '30', 'DELL', 'E170S', 'CN-0N445N-74261-161-255L', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2702, 'C', 'CACABOAS29DMX01', '192.1.207.129', 'HP', 'Compaq Pro 6305 SFF', 'MXL41001H9     ', '31', 'HP', 'LV1911', '6CM4032S9F              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2703, 'C', 'CACABOAS30DMX01', '192.1.207.130', 'DELL', 'OptiPlex 960             ', '2YHBSL1        ', '32', 'DELL', 'E170S', 'CN-0U072N-64180-03A-0MLU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2704, 'C', 'CACABOAS31DMX01', '192.1.207.131', 'DELL', 'OptiPlex 990             ', '3B7XXQ1        ', '33', 'DELL', 'E176FP', '641805AG054C            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2705, 'C', 'CACABOAS33DMX01', '192.1.207.102', 'DELL', 'OptiPlex 9010            ', 'CHDT6Y1        ', '34', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-0P2U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2706, 'C', 'CACABOCA01DMX01', '192.1.207.142', 'DELL', 'OptiPlex 9010            ', 'CH7T6Y1        ', '35', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0NVU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2707, 'C', 'CACABOCA02DMX01', '192.1.207.143', 'DELL', 'OptiPlex 9010            ', 'CK9V6Y1        ', '36', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37F-1H5U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2708, 'C', 'CACABOCA03DMX01', '192.1.207.144', 'DELL', 'OptiPlex 9010            ', 'CJ9T6Y1        ', '37', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-0N3U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2709, 'C', 'CACABOCA04DMX01', '192.1.207.145', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52226VJ     ', '38', 'HP', 'V193B', '3CQ5140SNR              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2710, 'C', 'CACABOJE01DMX01', '192.1.207.30 ', 'DELL', 'OptiPlex 9010            ', 'JWTVCX1        ', '39', 'DELL', 'E1713S', 'CN-0JWRMG-64180-2CB-182U ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2711, 'C', 'CACABORE01DMX01', '192.1.207.166', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524PG     ', '40', 'HP', 'V193B', '3CQ5140CHH              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2712, 'C', 'CACABOST01DMX01', '192.1.207.138', 'DELL', 'OptiPlex 9010            ', 'CH1T6Y1        ', '41', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37F-1GKU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2713, 'C', 'CACABOST02DMX01', '192.1.207.139', 'DELL', 'OptiPlex 9010            ', 'C3LW6Y1        ', '42', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2P6U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2714, 'C', 'CACABOST03DMX01', '192.1.207.140', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524TF     ', '43', 'HP', 'V193B', '3CQ5140CK8              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2715, 'C', 'CACABOSU01DMX01', '192.1.207.146', 'DELL', 'OptiPlex 9010            ', 'JWTJCX1        ', '44', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2FTU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2716, 'C', 'CACABOSU02DMX01', '192.1.207.132', 'DELL', 'OptiPlex 990             ', '54CL6V1        ', '45', 'DELL', 'E170S', 'CN-0N445N-74261-161-2KRL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC CABO'),
(2717, 'C', 'CACSNJAC01DMX01', '10.1.7.40   ', 'DELL', 'OptiPlex 990           ', 'J61RXQ1        ', '46', 'DELL', 'E170S', 'CN-0HF0K3-64180-14E-05HL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2718, 'C', 'CACSNJAC02DMX01', '10.1.7.38   ', 'DELL', 'OptiPlex 990           ', 'J63PXQ1        ', '47', 'DELL', 'E170S', 'CN-0N445N-74261-161-2KML', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2719, 'C', 'CACSNJAC03DMX01', '10.1.7.39   ', 'DELL', 'OptiPlex 960           ', 'CX2SKM1        ', '48', 'DELL', 'E170S', 'CN-0N445N-74261-05C-1MGC', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2720, 'C', 'CACSNJAS01DMX01', '10.1.7.11   ', 'DELL', 'OptiPlex 990           ', 'J60LXQ1        ', '49', 'DELL', 'E170S', 'CN-0HF0K3-64180-14F-0CXS', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2721, 'C', 'CACSNJAS02DMX01', '10.1.7.12   ', 'DELL', 'OptiPlex 990           ', 'J5TNXQ1        ', '50', 'DELL', 'E170S', 'CN-0N445N-64180-161-260L', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2722, 'C', 'CACSNJAS04DMX01', '10.1.7.14   ', 'DELL', 'OptiPlex 990           ', 'J61QXQ1        ', '51', 'DELL', 'E170S', 'CN-0HF0K3-64180-14F-0DLS', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2723, 'C', 'CACSNJAS05DMX01', '10.1.7.15   ', 'DELL', 'OptiPlex 990           ', 'J5SNXQ1        ', '52', 'DELL', 'E170S', 'CN-0HF0K3-64180-14E-070L', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2724, 'C', 'CACSNJAS06DMX01', '10.1.7.16   ', 'DELL', 'OptiPlex 990           ', 'J5TMXQ1        ', '53', 'DELL', 'E170S', 'CN-0HF0K3-64180-14E-07ML', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2725, 'C', 'CACSNJAS07DMX01', '10.1.7.17   ', 'DELL', 'OptiPlex 990           ', 'J5QRXQ1        ', '54', 'DELL', 'E170S', 'CN-0N445N-74261-161-2H9L', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2726, 'C', 'CACSNJAS08DMX01', '10.1.7.18   ', 'DELL', 'OptiPlex 990           ', '3B0VXQ1        ', '55', 'DELL', 'E170S', 'CN-0HF0K3-64180-14E-06WL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2727, 'C', 'CACSNJAS09DMX01', '10.1.7.19   ', 'DELL', 'OptiPlex 990           ', 'J5SRXQ1        ', '56', 'DELL', 'E170S', 'CN-0N445N-74180-161-25VL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2728, 'C', 'CACSNJAS10DMX01', '10.1.7.20   ', 'DELL', 'OptiPlex 990           ', 'J65MXQ1        ', '57', 'DELL', 'E173FP', '641805861TZS', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2729, 'C', 'CACSNJAS11DMX01', '10.1.7.21   ', 'DELL', 'OptiPlex 990           ', 'J5SMXQ1        ', '58', 'DELL', 'E170S', 'CN-0HF0K3-64180-14E-07QL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2730, 'C', 'CACSNJAS12DMX01', '10.1.7.22   ', 'DELL', 'OptiPlex 960           ', 'F5QFDP1        ', '59', 'DELL', 'E173FP', '641805880RES', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2731, 'C', 'CACSNJAS13DMX01', '10.1.7.23   ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL5452MS1     ', '60', 'HP ', 'V193B', '3CQ54937HM', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2732, 'C', 'CACSNJAS14DMX01', '10.1.7.24   ', 'DELL', 'OptiPlex 960           ', '2Y76SL1        ', '61', 'DELL', 'E170S', 'CN-0U072N-64180-03A-051U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2733, 'C', 'CACSNJAS15DMX01', '10.1.7.25   ', 'DELL', 'OptiPlex 960           ', '2XZ7SL1        ', '62', 'DELL', 'E170S', 'CN-0U072N-64180-03A-0E6U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2734, 'C', 'CACSNJAS17DMX01', '10.1.7.31   ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL537253Q     ', '63', 'HP', 'V193B', '3CQ5440NSJ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2735, 'C', 'CACSNJCA01DMX01', '10.1.7.26   ', 'DELL', 'OptiPlex 960           ', '74DZNN1        ', '64', 'DELL', 'E170S', 'CN-0U072N-64180-09K-0G5C', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2736, 'C', 'CACSNJCA02DMX01', '10.1.7.27   ', 'DELL', 'OptiPlex 960           ', '74X0PN1        ', '65', 'DELL', 'E170S', 'CN-0U072N-64180-09G-509C', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2737, 'C', 'CACSNJCA03DMX01', '10.1.7.28   ', 'DELL', 'OptiPlex 960           ', '74F2PN1        ', '66', 'DELL', 'E170S', 'CN-0U072N-64180-09G-51EC', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2738, 'C', 'CACSNJJE01DMX01', '10.1.7.30   ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524S3     ', '67', 'HP', 'V193B', '3CQ5140DF9', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2739, 'C', 'CACSNJRE01DMX01', '10.1.7.33   ', 'DELL', 'OptiPlex 990           ', '39YRXQ1        ', '68', 'DELL', 'E170S', 'CN-0HF0K3-64180-14E-067L', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2740, 'C', 'CACSNJST01DMX01', '10.1.7.35   ', 'DELL', 'OptiPlex 990           ', '3B7ZXQ1        ', '69', 'DELL', 'E170S', 'CN-0N445N-74261-161-2K8L', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2741, 'C', 'CACSNJST02DMX01', '10.1.7.36   ', 'DELL', 'OptiPlex 990           ', 'J5ZPXQ1        ', '70', 'DELL', 'E170S', 'CN-0HF0K3-64180-14E-07FL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2742, 'C', 'CACSNJST03DMX01', '10.1.7.37   ', 'DELL', 'OptiPlex 960           ', 'F5SFDP1        ', '71', 'DELL', 'E170S', 'CN-0N445N-74261-11T-4HLU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2743, 'C', 'CACSNJSU01DMX01', '10.1.7.41   ', 'DELL', 'OptiPlex 9010          ', 'CC5W6Y1        ', '72', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-08NU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN JOSE'),
(2744, 'C', 'TAT91D601DMX01', '10.1.34.108 ', 'DELL', 'OptiPlex 990', 'CYXYHS1        ', '73', 'DELL', 'E170S', 'CN-0HF0K3-64180-1CL-17HL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAE LOS CABOS'),
(2745, 'C', 'TVC81F001DMX01', '10.1.34.100 ', 'LENOVO    ', '10CVA002LM  ', 'MJ01PNSR       ', '74', 'LENOVO', 'E 1922 WD', 'V9_00FM7W', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAE LOS CABOS'),
(2746, 'L', 'TGE50E001LMX01', '10.1.34.31  ', 'DELL', 'Latitude E6420   ', '92ZWYN1        ', '75', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAE LOS CABOS'),
(2747, 'L', 'TGEE0CE01LMX01', '10.1.34.105 ', 'DELL', 'Latitude E6430   ', 'BX9NTY1        ', '76', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAE LOS CABOS'),
(2748, 'L', 'TVC8E0201LMX01', '10.1.34.110 ', 'DELL', 'Latitude E6430   ', '1GGRRY1        ', '77', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAE LOS CABOS'),
(2749, 'L', 'TVC29ED01LMX01', '10.1.34.30  ', 'HP', 'ProBook 645 G1', '5CG4290LVB     ', '78', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAE LOS CABOS'),
(2750, 'L', 'TVCC73F01LMX01', '10.1.34.102 ', 'HP', 'ProBook 645 G1', '5CG4290MDH     ', '79', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAE LOS CABOS'),
(2751, 'L', 'TVCC48901LMX01', '10.1.34.101 ', 'DELL', 'Latitude E6430   ', '44LRRY1        ', '80', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAE LOS CABOS'),
(2752, 'L', 'TVCD66301LMX01', '10.1.34.165 ', 'HP', 'ProBook 645 G1', '5CG5385JPB     ', '81', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAE LOS CABOS'),
(2753, 'C', 'CACMX1AC01DMX01', '192.1.204.61 ', 'DELL', 'OptiPlex 990      ', 'J5C1KS1', '104000031930', 'DELL', 'E170S          ', 'CN-0HF0K3-64180-217-1RTL', '104000031930', 'DELL', 'KB212-B', 'CN-0KHCC7-71616-1CJ-071T-A00', 'DELL', 'MOCZUL', 'K19008RF', '', '', 'ALMACEN (AC01)', 'CAC MEXICALI 1'),
(2754, 'C', 'CACMX1AC02DMX01', '192.1.204.76 ', 'DELL', 'OptiPlex 9010          ', 'JSSS7Y1        ', '82', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37E-0E4U      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2755, 'C', 'CACMX1AC03DMX01', '192.1.204.60 ', 'DELL', 'OptiPlex 960           ', 'CX1VKM1        ', '83', 'DELL', 'E170S          ', 'CN-0N445N-74261-05C-2L2C', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2756, 'C', 'CACMX1AS03DMX01', '192.1.204.33 ', 'DELL', 'OptiPlex 9010          ', 'C39V6Y1        ', '84', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37D-0VJU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2757, 'C', 'CACMX1AS05DMX01', '192.1.204.35 ', 'DELL', 'OptiPlex 9010          ', 'JT9R7Y1        ', '85', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37D-33WU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2758, 'C', 'CACMX1AS06DMX01', '192.1.204.36 ', 'DELL', 'OptiPlex 960           ', 'D0J4DP1        ', '86', 'DELL', 'E170S          ', 'CN-0N445N-74261-11T-4GDU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2759, 'C', 'CACMX1AS07DMX01', '192.1.204.37 ', 'DELL', 'OptiPlex 9010          ', 'C0HW6Y1        ', '87', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37D-0VNU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2760, 'C', 'CACMX1AS08DMX01', '192.1.204.38 ', 'DELL', 'OptiPlex 9010          ', 'C4FT6Y1        ', '88', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37D-0NYU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2761, 'C', 'CACMX1AS09DMX01', '192.1.204.39 ', 'DELL', 'OptiPlex 960           ', 'F5PFDP1        ', '89', 'DELL', 'E170S          ', 'CN-0N445N-74261-11T-4GRU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2762, 'C', 'CACMX1AS10DMX01', '192.1.204.40 ', 'DELL', 'OptiPlex 960           ', 'F5WKDP1        ', '90', 'DELL', 'E170S          ', 'CN-0N445N-74261-11T-4GCU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2763, 'C', 'CACMX1AS11DMX01', '192.1.204.41 ', 'DELL', 'OptiPlex 960           ', 'D0M6DP1        ', '91', 'DELL', 'E170S          ', 'CN-0N445N-74261-11T-4GMU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2764, 'C', 'CACMX1AS12DMX01', '192.1.204.42 ', 'DELL', 'OptiPlex 9010          ', 'C46X6Y1        ', '92', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37D-0PKU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2765, 'C', 'CACMX1AS13DMX01', '192.1.204.43 ', 'DELL', 'OptiPlex 9010          ', 'C01X6Y1        ', '93', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37D-0NMU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2766, 'C', 'CACMX1AS14DMX01', '192.1.204.44 ', 'DELL', 'OptiPlex 960           ', 'D0K4DP1        ', '94', 'DELL', 'E170S          ', 'CN-0N445N-74261-11S-0NDU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2767, 'C', 'CACMX1AS15DMX01', '192.1.204.45 ', 'DELL', 'OptiPlex 9010          ', 'C4VT6Y1        ', '95', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37D-0PHU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2768, 'C', 'CACMX1AS16DMX01', '192.1.204.46 ', 'DELL', 'OptiPlex 9010          ', 'JT2R7Y1        ', '96', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37E-0DNU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2769, 'C', 'CACMX1AS17DMX01', '192.1.204.47 ', 'DELL', 'OptiPlex 9010          ', 'C5LT6Y1        ', '97', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37D-0W2U      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2770, 'C', 'CACMX1AS18DMX01', '192.1.204.48 ', 'DELL', 'OptiPlex 9010          ', 'C2XT6Y1        ', '98', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37D-0P7U      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2771, 'C', 'CACMX1AS19DMX01', '192.1.204.49 ', 'DELL', 'OptiPlex 960           ', 'D0N7DP1        ', '99', 'DELL', 'E170S          ', 'CN-0N445N-74261-11T-4G3U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2772, 'C', 'CACMX1AS20DMX01', '192.1.204.50 ', 'DELL', 'OptiPlex 9010          ', 'C5NW6Y1        ', '100', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37D-0PJU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2773, 'C', 'CACMX1AS21DMX01', '192.1.204.51 ', 'DELL', 'OptiPlex 9010          ', 'C3TT6Y1        ', '101', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37D-0W4U      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2774, 'C', 'CACMX1AS22DMX01', '192.1.204.52 ', 'DELL', 'OptiPlex 960           ', '2Z0BSL1        ', '102', 'DELL', 'E170S          ', 'CN-0U072N-64180-03A-13LU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2775, 'C', 'CACMX1AS23DMX01', '192.1.204.53 ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51525NK     ', '103', 'HP', 'V193b          ', '3CQ5140CKN                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2776, 'C', 'CACMX1AS28DMX01', '192.1.204.58 ', 'DELL', 'OptiPlex 960           ', '2YZBSL1        ', '104000031453', 'DELL', 'E170S          ', 'CN-0U072N-64180-03A-0D3U', '104000031453', 'DELL', 'KB212-B', 'CN-0DJ462-71581-366-0516-A00', 'LOGITECH', 'M-SBF96', 'HCB60205002', '', '', 'BARRA 27', 'CAC MEXICALI 1'),
(2777, 'C', 'CACMX1CA01DMX01', '192.1.204.71 ', 'HP', 'Compaq Pro 6305 SFF ', 'MXL3492GCD     ', '104', 'HP', 'LV1911         ', '6CM34311NZ                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2778, 'C', 'CACMX1CA02DMX01', '192.1.204.72 ', 'HP', 'Compaq Pro 6305 SFF ', 'MXL3492GCL     ', '105', 'HP', 'LV1911         ', '6CM34311PH                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2779, 'C', 'CACMX1CA03DMX01', '192.1.204.73 ', 'HP', 'Compaq Pro 6305 SFF ', 'MXL3492GD5     ', '106', 'HP', 'LV1911         ', '6CM34311NV                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2780, 'C', 'CACMX1CA04DMX01', '192.1.204.74 ', 'HP', 'Compaq Pro 6305 SFF ', 'MXL3492GCH     ', '107', 'HP', 'LV1911         ', '6CM34311NY                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2781, 'C', 'CACMX1JE01DMX01', '192.1.204.30 ', 'DELL', 'OptiPlex 990           ', '3F39KS1        ', '108', 'DELL', 'E170S          ', 'CN-0HF0K3-64180-217-1RXL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2782, 'C', 'CACMX1RE01DMX01', '192.1.204.70 ', 'DELL', 'OptiPlex 9010          ', 'C3ZW6Y1        ', '109', 'DELL', 'E1713S         ', 'CN-0JWRMG-64180-367-0N5U      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2783, 'C', 'CACMX1ST01DMX01', '192.1.204.77 ', 'DELL', 'OptiPlex 9010          ', 'C4YT6Y1        ', '104000032381', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37D-0P3U      ', '104000032381', 'DELL', 'KB212-B', 'CN-0DJ462-71581-366-0511-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-3CB-0PHZ', '', '', 'SERVICIO TECNICO', 'CAC MEXICALI 1');
INSERT INTO `t_inventario_temporal` (`id_inventario_temporal`, `Componente`, `Nomenclatura`, `IP`, `Marca_g`, `Modelo_g`, `Serie_g`, `Inventario_g`, `Marca_m`, `Modelo_m`, `Serie_m`, `Inventario_m`, `Marca_t`, `Modelo_t`, `Serie_t`, `Marca_r`, `Modelo_r`, `Serie_r`, `Serie_Pila`, `Usuario_Univ`, `Posicion`, `Ubicacion`) VALUES
(2784, 'C', 'CACMX1ST02DMX01', '192.1.204.78 ', 'DELL', 'OptiPlex 9010          ', 'JT4N7Y1        ', '104000032371', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37E-0DLU      ', '104000032371', 'DELL', 'KB212-B', 'CN-0C639N-71616-35D-04H2-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-369-080E', '', '', 'SERVICIO TECNICO', 'CAC MEXICALI 1'),
(2785, 'C', 'CACMX1ST03DMX01', '192.1.204.79 ', 'DELL', 'OptiPlex 9010          ', 'JT8V7Y1        ', '104000032372', 'DELL', 'E1713S         ', 'CN-0HX1KW-74261-37D-33TU', '104000032372', 'DELL', 'KB212-B', 'CN-0C639N-71616-35D-0601-A00', 'DELL', 'MS111-L', 'CN-09RRC7-48729-369-0810', '', '', 'SERVICIO TECNICO', 'CAC MEXICALI 1'),
(2786, 'C', 'CACMX1SU01DMX01', '192.1.204.54 ', 'DELL', 'OptiPlex 990      ', 'BYRFJQ1', '104000031731', 'DELL', 'E170S          ', 'CN-0U072N-64180-12J-16WL', '104000031731', 'DELL', 'SK-8115', 'CN-0DJ415-71616-682-11ZF', 'DELL', 'M-BAC-DEL5', 'HC7140C05LK', '', '', 'BARRA 24', 'CAC MEXICALI 1'),
(2787, 'C', 'CACMX1SU02DMX01', '192.1.204.34 ', 'DELL', 'OptiPlex 990           ', '56JFJQ1        ', '104000031725', 'DELL', 'E170S          ', 'CN-0U072N-64180-13T-42YC', '104000031725', 'DELL', 'Y-U0003-DEL5', 'CN-0U474D-44751-0BR-00I4-A01', 'DELL', 'M-UAVDEL1', 'BORRADA', '', '', 'BARRA 04', 'CAC MEXICALI 1'),
(2788, 'C', 'INFINITUM-MXL1 ', '192.168.1.102', 'HP', 'EliteDesk 705 G1 SFF', 'MXL5242FQ5     ', '104000033090', 'HP', 'V193b          ', '3CQ5270PKR                ', '104000033090', 'HP', '672647-163', 'BDMHE0CVB8H13N', 'HP', '672652-001', 'FCMHH0CQW8A087', '', '', 'SERVICIO TECNICO', 'CAC MEXICALI 1'),
(2789, 'C', 'MXCACMX1COR01  ', '192.1.204.130', 'DELL', 'OptiPlex 990           ', '3F44KS1        ', '110', '—                   ', '—              ', '—                         ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2790, 'C', 'SERVCAMMXL1    ', '192.1.204.65 ', 'DELL', 'OptiPlex GX280         ', 'B4MY971        ', '111', 'DELL', 'DELL E773s, DEL', 'Y13524B8FFUD, U072N0AB4CAU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 1'),
(2791, 'L', 'CACMX1LMX01    ', '', 'HP', 'ProBook 645 G1 ', '5CG51025SC   ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAC MEXICALI 1'),
(2792, 'C', 'CACMX2AC02DMX01', '10.9.8.59   ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524PF     ', '112', 'HP', 'V193B', '3CQ5140DDQ                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2793, 'C', 'CACMX2AC03DMX01', '10.9.8.76   ', 'DELL', 'OptiPlex 960           ', 'F5TGDP1        ', '113', 'DELL', 'E170S', 'CN-0N445N-74261-11T-4GPU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2794, 'C', 'CACMX2AS02DMX01', '10.9.8.12   ', 'DELL', 'OptiPlex 960           ', 'D0M4DP1        ', '114', 'DELL', 'E170S', 'CN-0N445N-74261-11S-1DAU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2795, 'C', 'CACMX2AS03DMX01', '10.9.8.13   ', 'DELL', 'OptiPlex 9010          ', 'C5GV6Y1        ', '115', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-0L0U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2796, 'C', 'CACMX2AS04DMX01', '10.9.8.14   ', 'DELL', 'OptiPlex 9010          ', 'C44T6Y1        ', '116', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-0VRU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2797, 'C', 'CACMX2AS05DMX01', '10.9.8.15   ', 'DELL', 'OptiPlex 9010          ', 'C02X6Y1        ', '117', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-0P8U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2798, 'C', 'CACMX2AS06DMX01', '10.9.8.16   ', 'DELL', 'OptiPlex 9010          ', 'C0PW6Y1        ', '118', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-0P0U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2799, 'C', 'CACMX2AS07DMX01', '10.9.8.17   ', 'DELL', 'OptiPlex 9010          ', '6TXQVV1        ', '119', 'DELL', 'E170S', 'CN-0JCT73-74261-27P-2VJU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2800, 'C', 'CACMX2AS08DMX01', '10.9.8.18   ', 'DELL', 'OptiPlex 9010          ', 'C0BV6Y1        ', '120', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-0VKU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2801, 'C', 'CACMX2AS09DMX01', '10.9.8.19   ', 'DELL', 'OptiPlex 9010          ', 'C0TW6Y1        ', '121', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-0VTU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2802, 'C', 'CACMX2AS10DMX01', '10.9.8.20   ', 'DELL', 'OptiPlex 9010          ', 'C2PV6Y1        ', '122', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-0W1U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2803, 'C', 'CACMX2AS11DMX01', '10.9.8.21   ', 'DELL', 'OptiPlex 9010          ', 'C03W6Y1        ', '123', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-0VUU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2804, 'C', 'CACMX2AS12DMX01', '10.9.8.22   ', 'DELL', 'OptiPlex 9010          ', 'C5JV6Y1        ', '124', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-0P5U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2805, 'C', 'CACMX2AS13DMX01', '10.9.8.23   ', 'DELL', 'OptiPlex 9010          ', 'C06T6Y1        ', '125', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-0PLU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2806, 'C', 'CACMX2AS14DMX01', '10.9.8.24   ', 'DELL', 'OptiPlex 9010          ', 'C4ZS6Y1        ', '126', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2W9U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2807, 'C', 'CACMX2AS15DMX01', '10.9.8.25   ', 'DELL', 'OptiPlex 9010          ', 'C48T6Y1        ', '127', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-05YU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2808, 'C', 'CACMX2AS16DMX01', '10.9.8.26   ', 'DELL', 'OptiPlex 990           ', '970H0R1        ', '128', 'DELL', 'E170S', 'CN-0U072N-64180-15D-0J8L', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2809, 'C', 'CACMX2AS17DMX01', '10.9.8.27   ', 'DELL', 'OptiPlex 9010          ', 'C0KT6Y1        ', '129', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-0P9U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2810, 'C', 'CACMX2AS18DMX01', '10.9.8.28   ', 'DELL', 'OptiPlex 960           ', '2YZ9SL1        ', '130', 'DELL', 'E176FP', 'CC63963N26EL              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2811, 'C', 'CACMX2AS20DMX01', '10.9.8.33   ', 'DELL', 'OptiPlex 960           ', '2YZCSL1        ', '—              ', 'DELL', 'E170S', 'CN-0U072N-64180-03A-0BQU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2812, 'C', 'CACMX2CA01DMX01', '10.9.8.42   ', 'HP', 'Compaq Pro 6305 SFF ', 'MXL3492H0C     ', '—              ', 'HP', 'LV1911', '6CM34313F6                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2813, 'C', 'CACMX2CA02DMX01', '10.9.8.43   ', 'HP', 'Compaq Pro 6305 SFF ', 'MXL3492GD9     ', '—              ', 'HP', 'LV1911', '6CM34313FR                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2814, 'C', 'CACMX2CA03DMX01', '10.9.8.44', 'DELL', 'OPTIPLEX 960', 'C0FPJM1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA 03', 'CAC MEXICALI 2'),
(2815, 'C', 'CACMX2CA04DMX01', '10.9.8.46   ', 'DELL', 'OptiPlex 9010          ', 'CJ2T6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37F-0MTU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2816, 'C', 'CACMX2JE01DMX01', '10.9.8.30   ', 'DELL', 'OptiPlex 960           ', '2XMFNN1        ', '—              ', 'DELL', 'E170S', 'CN-0N445N-74261-0A6-0WDB', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2817, 'C', 'CACMX2RE01DMX01', '10.9.8.45   ', 'DELL', 'OptiPlex 960           ', 'D0K8DP1        ', '—              ', 'DELL', 'E170S', 'CN-0N445N-74261-06L-1T5C', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2818, 'C', 'CACMX2ST01DMX01', '10.9.8.40   ', 'DELL', 'OptiPlex 9010          ', 'C3YT6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2W7U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2819, 'C', 'CACMX2ST02DMX01', '10.9.8.41   ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524TW     ', '—              ', 'HP', 'V193B', '3CQ5140CJ9                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2820, 'C', 'CACMX2ST03DMX01', '10.9.8.47   ', 'DELL', 'OptiPlex 990           ', '54GN6V1        ', '—              ', 'DELL', 'E170S', 'CN-0HF0K3-64180-245-31DU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2821, 'C', 'CACMX2SU01DMX01', '10.9.8.11   ', 'DELL', 'OptiPlex 9010          ', '9M0HRW1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-31S-5R9U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2822, 'C', 'INFINITUM-MXL2 ', '192.168.1.64', 'HP', 'EliteDesk 705 G1 SFF', 'MXL5242FM9     ', '—              ', 'HP', 'V193B', '3CQ5270PKT                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2823, 'C', 'MXCACMX2COR01  ', '10.9.8.55   ', 'DELL', 'OptiPlex 990           ', '3BQ7KS1        ', '—              ', 'DELL', 'E170S', 'CN-0HF0K3-64180-217-1S1L', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2824, 'C', 'SERVCAMMXL2    ', '10.9.8.65   ', 'DELL', 'OptiPlex GX280         ', '9L2GZ61        ', '—              ', 'DELL', 'DELL E773s, DEL', 'Y13524CUF2VU, 64180698372L', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 2'),
(2825, 'L', 'CACMX23GLMX01', '', 'HP', 'ProBook 645 G1', '5CG51025TG     ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAC MEXICALI 2'),
(2826, 'C', 'CACMX3AC01DMX01', '10.9.9.41   ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524YW     ', '—              ', 'HP', 'V193B      ', '3CQ5140CJV              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2827, 'C', 'CACMX3AC02DMX01', '10.9.9.42   ', 'DELL', 'OptiPlex 990           ', 'BYLGJQ1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-11F-1K5C', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2828, 'C', 'CACMX3AC03DMX01', '10.9.9.43   ', 'DELL', 'OptiPlex 960           ', 'CX1WKM1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-05C-2JWC', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2829, 'C', 'CACMX3AS01DMX01', '10.9.9.11   ', 'DELL', 'OptiPlex 990           ', 'BYMDJQ1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-13V-1GLC', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2830, 'C', 'CACMX3AS02DMX01', '10.9.9.12   ', 'DELL', 'OptiPlex 990           ', 'BYWCJQ1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-13V-0A5C', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2831, 'C', 'CACMX3AS03DMX01', '10.9.9.13   ', 'DELL', 'OptiPlex 990           ', 'BYXGJQ1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-13V-1GUC', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2832, 'C', 'CACMX3AS04DMX01', '10.9.9.14   ', 'DELL', 'OptiPlex 990           ', 'BYWDJQ1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-11M-0L0S', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2833, 'C', 'CACMX3AS05DMX01', '10.9.9.15   ', 'DELL', 'OptiPlex 960           ', '2Y86SL1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-03A-182U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2834, 'C', 'CACMX3AS06DMX01', '10.9.9.16   ', 'DELL', 'OptiPlex 990           ', 'BYMFJQ1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-13V-09ZC', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2835, 'C', 'CACMX3AS07DMX01', '10.9.9.17   ', 'DELL', 'OptiPlex 990           ', 'BYPFJQ1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-11E-1V5C', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2836, 'C', 'CACMX3AS08DMX01', '10.9.9.18   ', 'DELL', 'OptiPlex 990           ', 'BYWFJQ1        ', '—              ', 'DELL', 'DELL E176FP    ', '641806370AAC            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2837, 'C', 'CACMX3AS09DMX01', '10.9.9.19   ', 'DELL', 'OptiPlex 990           ', 'BYVDJQ1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-11F-1PVC', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2838, 'C', 'CACMX3AS10DMX01', '10.9.9.20   ', 'DELL', 'OptiPlex 990           ', 'BYJGJQ1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-13V-1H9C', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2839, 'C', 'CACMX3AS11DMX01', '10.9.9.21   ', 'DELL', 'OptiPlex 990           ', 'BYQGJQ1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-11M-0KVS', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2840, 'C', 'CACMX3AS12DMX01', '10.9.9.22   ', 'DELL', 'OptiPlex 990           ', 'BYXFJQ1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-11F-1PWC', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2841, 'C', 'CACMX3AS13DMX01', '10.9.9.23   ', 'DELL', 'OptiPlex 990           ', 'BYSGJQ1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-11M-0D7S', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2842, 'C', 'CACMX3AS15DMX01', '10.9.9.25   ', 'DELL', 'OptiPlex 960           ', 'F5RJDP1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0HF0K3-64180-19F-5VHU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2843, 'C', 'CACMX3AS16DMX01', '10.9.9.26   ', 'DELL', 'OptiPlex 960           ', 'F5PHDP1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-11T-4G7U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2844, 'C', 'CACMX3AS17DMX01', '10.9.9.27   ', 'DELL', 'OptiPlex 9010          ', 'DRJ57V1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0HF0K3-64180-25V-04JL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2845, 'C', 'CACMX3AS21DMX01', '10.9.9.32   ', 'DELL', 'OptiPlex 990           ', 'BYQDJQ1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-11T-4G8U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2846, 'C', 'CACMX3JE01DMX01', '10.9.9.30   ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL537253T     ', '—              ', 'HP', 'V193B      ', '3CQ5310YPZ              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2847, 'C', 'CACMX3RE01DMX01', '10.9.9.33   ', 'DELL', 'OptiPlex 960           ', '2YM8SL1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-03A-1GHU', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2848, 'C', 'CACMX3ST01DMX01', '10.9.9.38   ', 'DELL', 'OptiPlex 3020          ', 'J9K7L02        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-13V-1RGC', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2849, 'C', 'CACMX3ST02DMX01', '10.9.9.39   ', 'HP', 'HP ProDesk 405 G1 MT   ', 'MXL43236YX     ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-13T-421C', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2850, 'C', 'CACMX3ST03DMX01', '10.9.9.40   ', 'DELL', 'OptiPlex 960           ', '7WJ3JL1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-9AB-251S', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2851, 'C', 'CACMX3SU01DMX01', '10.9.9.29   ', 'DELL', 'OptiPlex 960           ', '2XLCNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-234B      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2852, 'C', 'CACMX3SU02DMX01', '10.9.9.28   ', 'DELL', 'OptiPlex 9010          ', '6SGQVV1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0JCT73-74261-25C-06EU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2853, 'C', 'SERTEC-PC      ', '192.168.1.76', 'HP', 'EliteDesk 705 G1 SFF', 'MXL5242HS4     ', '—              ', 'HP', 'DELL E176FP    ', '6418062P0GZS            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2854, 'C', 'TINEXSN09DMX01 ', '10.9.9.31   ', 'HP', 'HP ProDesk 405 G1 MT   ', 'MXL43236W6     ', 'PONER DATOS COR', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-13V-2HGC      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 3'),
(2855, 'L', 'CACMX33GLMX01', '192.168.1.90', 'HP', 'ProBook 645 G1', '5CG51025XL     ', '—              ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAC MEXICALI 3'),
(2856, 'C', 'CACMX4AC01DMX01', '10.9.14.53   ', 'DELL', 'OptiPlex 960           ', '2WSFNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-12AB      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2857, 'C', 'CACMX4AC02DMX01', '10.9.14.54   ', 'DELL', 'OptiPlex 960           ', 'B164BP1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-0BU-1J5U', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2858, 'C', 'CACMX4AC03DMX01', '10.9.14.56   ', 'DELL', 'OptiPlex 960           ', '2WRCNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-1MTB      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2859, 'C', 'CACMX4AS01DMX01', '10.9.14.11   ', 'DELL', 'OptiPlex 960           ', 'JH26NN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-0F1B      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2860, 'C', 'CACMX4AS02DMX01', '10.9.14.12   ', 'DELL', 'OptiPlex 9010          ', 'DSK57V1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0HF0K3-64180-23S-4NNL      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2861, 'C', 'CACMX4AS03DMX01', '10.9.14.13   ', 'DELL', 'OptiPlex 960           ', 'JH33NN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-27LB      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2862, 'C', 'CACMX4AS04DMX01', '10.9.14.14   ', 'DELL', 'OptiPlex 960           ', '2WLDNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-1GWB      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2863, 'C', 'CACMX4AS05DMX01', '10.9.14.15   ', 'DELL', 'OptiPlex 9010          ', 'DSGD7V1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0HF0K3-64180-245-2BAU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2864, 'C', 'CACMX4AS06DMX01', '10.9.14.16   ', 'HP', 'HP EliteDesk 705 G1 SFF', 'MXL5452MFB     ', '—              ', 'HP', 'V193B', '3CQ54937HK                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2865, 'C', 'CACMX4AS07DMX01', '10.9.14.17   ', 'DELL', 'OptiPlex 960           ', '2WSCNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-27JB      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2866, 'C', 'CACMX4AS08DMX01', '10.9.14.18   ', 'DELL', 'OptiPlex 9010          ', 'DSP67V1        ', '—              ', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-3BT-2M0L      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2867, 'C', 'CACMX4AS10DMX01', '10.9.14.20   ', 'DELL', 'OptiPlex 960           ', '2WLCNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-12EB      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2868, 'C', 'CACMX4AS12DMX01', '10.9.14.22   ', 'DELL', 'OptiPlex 960           ', '2WLFNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-0MCB      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2869, 'C', 'CACMX4AS14DMX01', '10.9.14.24   ', 'DELL', 'OptiPlex 960           ', '74C1PN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-0AB-4BJU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2870, 'C', 'CACMX4AS15DMX01', '10.9.14.25   ', 'HP', 'HP EliteDesk 705 G1 SFF', 'MXL5242DQM     ', '—              ', 'HP', 'V193B', '3CQ5270PSZ                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2871, 'C', 'CACMX4AS16DMX01', '10.9.14.26   ', 'DELL', 'OptiPlex 960           ', '2WNCNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-12CB      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2872, 'C', 'CACMX4AS17DMX01', '10.9.14.27   ', 'DELL', 'OptiPlex 9010          ', 'C0CV6Y1        ', '—              ', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37D-0KRU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2873, 'C', 'CACMX4AS19DMX01', '10.9.14.29   ', 'DELL', 'OptiPlex 960           ', '2WSBNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-1H1B      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2874, 'C', 'CACMX4AS21DMX01', '10.9.14.31   ', 'DELL', 'OptiPlex 960           ', 'JH13NN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-2FDB      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2875, 'C', 'CACMX4AS23DMX01', '10.9.14.33   ', 'DELL', 'OptiPlex 960           ', '2WMCNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-0K7B      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2876, 'C', 'CACMX4AS24DMX01', '10.9.14.34   ', 'DELL', 'OptiPlex 960           ', '2WQDNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0AB-06HB      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2877, 'C', 'CACMX4AS25DMX01', '10.9.14.35   ', 'DELL', 'OptiPlex 960           ', '2WQCNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0JCT73-74261-14P 4RYL      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2878, 'C', 'CACMX4AS27DMX01', '10.9.14.37   ', 'DELL', 'OptiPlex 960           ', 'JH24NN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-0F4B      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2879, 'C', 'CACMX4AS34DMX01', '10.9.14.58   ', 'DELL', 'OptiPlex 9010          ', 'C32T6Y1        ', '—              ', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37D-2YJU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2880, 'C', 'CACMX4CA01DMX01', '10.9.14.46   ', 'DELL', 'OptiPlex 960           ', '73N1PN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-09N-0E4C      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2881, 'C', 'CACMX4CA02DMX01', '10.9.14.47   ', 'DELL', 'OptiPlex 960           ', '73P1PN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-09N-0E1C      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2882, 'C', 'CACMX4CA03DMX01', '10.9.14.48   ', 'DELL', 'OptiPlex 960           ', '2WQFNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-0AB-5JXU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2883, 'C', 'CACMX4CA04DMX01', '10.9.14.49   ', 'DELL', 'OptiPlex 960           ', '73NZNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-09N-0DRC      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2884, 'C', 'CACMX4CA05DMX01', '10.9.14.50   ', 'HP', 'HP EliteDesk 705 G1 SFF', 'MXL5452MDL     ', '—              ', 'HP', 'V193B', '3CQ54126XY                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2885, 'C', 'CACMX4JE01DMX01', '10.9.14.30   ', 'DELL', 'OptiPlex 990           ', '3DY7KS1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0HF0K3-64180-217-1TKL      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2886, 'C', 'CACMX4ST01DMX01', '10.9.14.51   ', 'DELL', 'OptiPlex 960           ', '2WMDNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-1H7B      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2887, 'C', 'CACMX4ST03DMX01', '10.9.14.55   ', 'DELL', 'OptiPlex 960           ', '2WKFNN1        ', '—              ', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-0A6-1N5B      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2888, 'C', 'CACMX4SU01DMX01', '10.9.14.19   ', 'DELL', 'OptiPlex 960           ', 'D0J8DP1        ', '—              ', 'DELL', 'DELL E176FP    ', '6418062F82WS              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2889, 'C', 'INFINITUM-MXL4 ', '192.168.1.230', 'HP', 'HP EliteDesk 705 G1 SFF', 'MXL5242HTT     ', '—              ', 'HP', 'V193B', '3CQ5270PJ4                ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2890, 'C', 'MXCACMX4COR01  ', '10.9.14.60   ', 'DELL', 'OptiPlex 960           ', 'JGZ3NN1        ', '—              ', '—                   ', 'falta monitor', '—                         ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2891, 'C', 'RADIOMOV-4DAE0F', '192.168.1.154', 'DELL', 'OptiPlex GX620         ', 'D29TS91        ', '—              ', 'DELL', 'DELL E176FP, DE', '6418062P0GQS, VHPX32CJAACL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC MEXICALI 4'),
(2892, 'C', 'CACSLCAC01DMX01', '192.1.212.136', 'DELL ', 'OptiPlex 960                  ', 'D0M3DP1        ', '—              ', 'DELL', 'E170S', 'CN-0N445N-74261-11S-17MU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2893, 'C', 'CACSLCAC02DMX01', '192.1.212.137', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524PD     ', '—              ', 'HP', 'V193B', '3CQ5140DDV              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2894, 'C', 'CACSLCAS02DMX01', '192.1.212.102', 'DELL ', 'OptiPlex 990                  ', '3B6SXQ1        ', '—              ', 'DELL', 'P170S', 'VHPX32BR079L            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2895, 'C', 'CACSLCAS03DMX01', '192.1.212.103', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524P7     ', '—              ', 'HP', 'V193B', '3CQ5140CK2              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2896, 'C', 'CACSLCAS04DMX01', '192.1.212.104', 'DELL ', 'OptiPlex 9010                 ', '6CWBSW1        ', '—              ', 'DELL', 'E1912H', 'CN-0R16JC-72872-2BT-DUUM      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2897, 'C', 'CACSLCAS05DMX01', '192.1.212.105', 'DELL ', 'OptiPlex 9010                 ', 'C5FV6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2VPU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2898, 'C', 'CACSLCAS06DMX01', '192.1.212.106', 'DELL ', 'OptiPlex 9010                 ', 'C3XT6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-06KU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2899, 'C', 'CACSLCAS07DMX01', '192.1.212.107', 'DELL ', 'OptiPlex 9010                 ', '6CG1SW1        ', '—              ', 'DELL', 'E170S', 'CN-0JCT73-74261-2A5-03FU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2900, 'C', 'CACSLCAS08DMX01', '192.1.212.108', 'DELL ', 'OptiPlex 960                  ', '2Y77SL1        ', '—              ', 'DELL', 'E170S', 'CN-0U072N-64180-03A-057U      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2901, 'C', 'CACSLCAS10DMX01', '192.1.212.110', 'DELL ', 'OptiPlex 9010                 ', 'C3RW6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-06HU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2902, 'C', 'CACSLCAS11DMX01', '192.1.212.111', 'HP', 'Compaq dc7800p', 'MXJ8240BQR     ', '—              ', 'HP', 'L1710          ', 'CNC803NZYD              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2903, 'C', 'CACSLCAS12DMX01', '192.1.212.112', 'DELL ', 'OptiPlex 9010                 ', 'C5GW6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-06AU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2904, 'C', 'CACSLCAS13DMX01', '192.1.212.113', 'DELL ', 'OptiPlex 960                  ', '2Y7BSL1        ', '—              ', 'DELL', 'E170S', 'CN-0U072N-64180-03A-0JWU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2905, 'C', 'CACSLCAS14DMX01', '192.1.212.114', 'DELL ', 'OptiPlex 9010                 ', 'C52W6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-064U      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2906, 'C', 'CACSLCAS16DMX01', '192.1.212.116', 'DELL ', 'OptiPlex 9010                 ', '6CCBSW1        ', '—              ', 'DELL', 'E1912H', 'CN-0R16JC-72872-2C6-DC7M      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2907, 'C', 'CACSLCAS17DMX01', '192.1.212.117', 'DELL ', 'OptiPlex 9010                 ', 'C3LV6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2WGU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2908, 'C', 'CACSLCAS18DMX01', '192.1.212.118', 'DELL ', 'OptiPlex 960                  ', 'F5WFDP1        ', '—              ', 'DELL', 'E170S', 'CN-0N445N-74261-11S-19HU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2909, 'C', 'CACSLCAS19DMX01', '192.1.212.119', 'DELL ', 'OptiPlex 9010                 ', '5DSWNW1        ', '—              ', 'DELL', 'E170S', 'CN-0JCT73-74261-2A5-040U      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2910, 'C', 'CACSLCAS20DMX01', '192.1.212.120', 'DELL ', 'OptiPlex 9010                 ', '5DJTNW1        ', '—              ', 'DELL', 'E170S', 'CN-0JCT73-74261-2A5-061U      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2911, 'C', 'CACSLCAS21DMX01', '192.1.212.121', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51525NQ     ', '—              ', 'HP', 'V193B', '3CQ5140CK4              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2912, 'C', 'CACSLCAS22DMX01', '192.1.212.122', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524YM     ', '—              ', 'HP', 'V193B', '3CQ5140CJH              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2913, 'C', 'CACSLCAS23DMX01', '192.1.212.123', 'DELL ', 'OptiPlex 9010                 ', 'C4TV6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2WCU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2914, 'C', 'CACSLCAS25DMX01', '192.1.212.130', 'DELL ', 'OptiPlex 9010                 ', 'C4MT6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2WNU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2915, 'C', 'CACSLCCA01DMX01', '192.1.212.141', 'DELL ', 'OptiPlex 745                  ', '8BGLXD1        ', '—              ', 'DELL', 'E170S', 'CN-0HF0K3-64180-2AR-478L      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2916, 'C', 'CACSLCCA02DMX01', '192.1.212.142', 'DELL ', 'OptiPlex 9010                 ', 'C7CV6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-36K-240U      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2917, 'C', 'CACSLCCA03DMX01', '192.1.212.143', 'HP', 'ELITE DESK 705 G1 BM SFF', 'MXL52226X3     ', '—              ', 'HP', 'V193B', '3CQ5140SP6              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2918, 'C', 'CACSLCCA04DMX01', '192.1.212.144', 'DELL ', 'OptiPlex 960                  ', '4Y97WL1        ', '—              ', 'DELL', 'E170S', 'CN-0U072N-64180-9C2-419U      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2919, 'C', 'CACSLCJE01DMX01', '192.1.212.30 ', 'DELL ', 'OptiPlex 9010                 ', 'C4HW6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-06PU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2920, 'C', 'CACSLCRE01DMX01', '192.1.212.132', 'DELL ', 'OptiPlex 9010                 ', 'C42T6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-06NU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2921, 'C', 'CACSLCST01DMX01', '192.1.212.139', 'DELL ', 'OptiPlex 9010                 ', 'G17TRW1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-31S-4V2U      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2922, 'C', 'CACSLCST02DMX01', '192.1.212.140', 'HP', 'EliteDesk 705 G1 SFF', 'MXL51524ZB     ', '—              ', 'HP', 'V193B', '3CQ5140CB5              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2923, 'C', 'CACSLCST03DMX01', '192.1.212.145', 'DELL ', 'OptiPlex 960                  ', 'F5SJDP1        ', '—              ', 'DELL', 'E170S', 'CN-0N445N-74261-11S-06MU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2924, 'C', 'CACSLCSTINDMX01', '192.168.1.64 ', 'DELL ', 'OptiPlex GX620                ', '101FB81        ', '—              ', 'DELL', 'DELL E176FP, HP', '6418062P0FZS, 3CQ4161N3R', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2925, 'C', 'CACSLCSU01DMX01', '192.1.212.101', 'DELL ', 'OptiPlex 9010                 ', 'C5FT6Y1        ', '—              ', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37D-2WKU      ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2926, 'C', 'INFINITUM-SLR  ', '192.168.1.65 ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL5242FPF     ', '—              ', 'HP', 'P201           ', '3CQ4161N3R              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2927, 'C', 'MXCACSLCCOR01  ', '192.1.212.125', 'DELL ', 'OptiPlex 745                  ', '2YX2JD1        ', '—              ', '—                   ', '—              ', '—                       ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC SAN LUIS RIO COLORADO'),
(2928, 'C', 'CACLP1AC01DMX01', '10.1.5.143  ', 'DELL', 'OptiPlex 9010          ', 'C35V6Y1        ', '104000032416', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37D-2UUU      ', '104000032416', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-02M6', 'DELL', 'MS-111L', 'CN-09RRC7-48729-12WW', '', '', 'ALMACEN 1', 'CAC LA PAZ 1'),
(2929, 'C', 'CACLP1AC02DMX01', '10.1.5.144  ', 'DELL', 'OptiPlex 9010          ', 'C4ST6Y1        ', '104000032423', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37E-061U      ', '104000032423', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-03LR – A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35S-0PKC', '', '', 'ALMACEN 2', 'CAC LA PAZ 1'),
(2930, 'C', 'CACLP1AC03DMX01', '10.1.5.145  ', 'DELL', 'OptiPlex 960           ', 'CX2VKM1        ', '104000031487', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-05D-0YNC      ', '104000031487', 'DELL', 'L30U', 'CN-0N243F-73571-04H-00KO-A01', 'DELL', 'MOABBO', 'J0J03ONF', '', '', 'ALMACEN 3', 'CAC LA PAZ 1'),
(2931, 'C', 'CACLP1AS05DMX01', '10.1.5.105  ', 'DELL', 'OptiPlex 9010          ', 'C4NW6Y1        ', '104000032418', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37D-2WLU      ', '104000032418', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-03LQ-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35Q-07HT', '', '', 'BARRA 5', 'CAC LA PAZ 1'),
(2932, 'C', 'CACLP1AS06DMX01', '10.1.5.106  ', 'DELL', 'OptiPlex 9010          ', 'C5QT6Y1        ', '104000032424', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37E-06JU      ', '104000032424', 'DELL', 'KB4021', 'CN-0DJ462-71581-4A0-0499-A01', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35Q-07NC', '', '', 'BARRA 6', 'CAC LA PAZ 1'),
(2933, 'C', 'CACLP1AS07DMX01', '10.1.5.107  ', 'DELL', 'OptiPlex 9010          ', 'C45T6Y1        ', '104000032419', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37E-066U      ', '104000032419', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-05Q5-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35S-0PKA', '', '', 'BARRA 7', 'CAC LA PAZ 1'),
(2934, 'C', 'CACLP1AS08DMX01', '10.1.5.108  ', 'DELL', 'OptiPlex 9010          ', 'CH1V6Y1        ', '104000032425', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37D-2NYU      ', '104000032425', 'DELL', 'KB4021', 'CN-0DJ462-71581-366-04UE-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35Q-03GR', '', '', 'BARRA 8', 'CAC LA PAZ 1'),
(2935, 'C', 'CACLP1AS09DMX01', '10.1.5.109  ', 'DELL', 'OptiPlex 9010          ', 'C5PV6Y1        ', '104000032426', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37D-2P5U      ', '104000032426', 'DELL', 'KB4021', 'CN-0DJ462-71581-366-06I3-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35R-12X9', '', '', 'BARRA 9', 'CAC LA PAZ 1'),
(2936, 'C', 'CACLP1AS10DMX01', '10.1.5.110  ', 'DELL', 'OptiPlex 9010          ', 'CK6X6Y1        ', '104000032427', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37D-2FAU      ', '104000032427', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-01K1-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-365-00RA', '', '', 'BARRA 10', 'CAC LA PAZ 1'),
(2937, 'C', 'CACLP1AS11DMX01', '10.1.5.111  ', 'DELL', 'OptiPlex 960           ', 'HJPJDP1        ', '104000031652', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-11S-1AEU      ', '104000031652', 'DELL', 'L30U', 'CN-0N243F-73571-0C4-03F0-A01', 'DELL', 'MS-111L', 'CN-09RRC7-48729-45R-09XQ', '', '', 'BARRA 11', 'CAC LA PAZ 1'),
(2938, 'C', 'CACLP1AS12DMX01', '10.1.5.112  ', 'DELL', 'OptiPlex 9010          ', 'C3ZS6Y1        ', '104000032417', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37D-2WDU      ', '104000032417', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-066N-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35Q-07HB', '', '', 'BARRA 12', 'CAC LA PAZ 1'),
(2939, 'C', 'CACLP1AS13DMX01', '10.1.5.113  ', 'HP', 'HP EliteDesk 705 G1 SFF', 'MXL51524PJ     ', '104000032903', 'HP                 ', 'HP V193b       ', '3CQ5140CKB              ', '104000032903', 'HP', 'KB527211', 'BDMHE0CHH7W1J7', 'HP', 'SM-2022', 'FCMHH0CJP7XKD9', '', '', 'BARRA 13', 'CAC LA PAZ 1'),
(2940, 'C', 'CACLP1AS14DMX01', '10.1.5.114  ', 'DELL', 'OptiPlex 960           ', 'GG5GDP1        ', '104000031650', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-12G-02YL', '104000031650', 'DELL', 'L30U', 'CN-0N243F-73571-0BK-0197-A01', 'DELL', 'MS-111L', 'CN-011D3V-71581-113-0S9A', '', '', 'BARRA 14', 'CAC LA PAZ 1'),
(2941, 'C', 'CACLP1AS15DMX01', '10.1.5.115  ', 'DELL', 'OptiPlex 9010          ', 'CJ5W6Y1        ', '104000032428', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37D-2FGU      ', '104000032428', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-06T7-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-0XHF', '', '', 'BARRA 15', 'CAC LA PAZ 1'),
(2942, 'C', 'CACLP1AS16DMX01', '10.1.5.116  ', 'DELL', 'OptiPlex 960           ', 'HJLLDP1        ', '104000031653', 'DELL', 'DELL E176FP    ', 'CN-0CC639-72872-65K-64FI', '104000030765', 'DELL', 'L30U', 'CN-0N243F-73571-OBK-00LV-A01', 'DELL', 'MS-111L', 'CN-011D3V-71581-113-23FP', '', '', 'BARRA 16', 'CAC LA PAZ 1'),
(2943, 'C', 'CACLP1AS17DMX01', '10.1.5.117  ', 'DELL', 'OptiPlex 960           ', 'HJNKDP1        ', '104000031657', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-11S-1CCU      ', '104000031657', 'DELL', 'L30U', 'CN-0N243F-73571-OBK-01FK-A01', 'DELL', 'MS-111L', 'CN-011D3V-71581-113-23GR', '', '', 'BARRA 17', 'CAC LA PAZ 1');
INSERT INTO `t_inventario_temporal` (`id_inventario_temporal`, `Componente`, `Nomenclatura`, `IP`, `Marca_g`, `Modelo_g`, `Serie_g`, `Inventario_g`, `Marca_m`, `Modelo_m`, `Serie_m`, `Inventario_m`, `Marca_t`, `Modelo_t`, `Serie_t`, `Marca_r`, `Modelo_r`, `Serie_r`, `Serie_Pila`, `Usuario_Univ`, `Posicion`, `Ubicacion`) VALUES
(2944, 'C', 'CACLP1AS18DMX01', '10.1.5.118  ', 'DELL', 'OptiPlex 9010          ', 'C4WV6Y1        ', '104000032420', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37E-068U      ', '104000032420', 'DELL', 'KB-212-B', 'CN-0DJ462-71581-367-02M7-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35R-12VE', '', '', 'BARRA 18', 'CAC LA PAZ 1'),
(2945, 'C', 'CACLP1AS19DMX01', '10.1.5.119  ', 'DELL', 'OptiPlex 960           ', 'HJMGDP1        ', '104000031656', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-11S-0F6U      ', '104000031656', 'DELL', 'L30U', 'CN-0N243F-73571-0C4-03F1-A01', 'DELL', 'MS-111L', 'CN-011D3V-71581-113-239C', '', '', 'BARRA 19', 'CAC LA PAZ 1'),
(2946, 'C', 'CACLP1AS40DMX01', '10.1.5.140  ', 'DELL', 'OptiPlex 9010          ', 'C44W6Y1        ', '104000032421', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37D-2WFU      ', '104000032421', 'DELL', 'KB4021', 'CN-0DJ462-71581-366-06U5-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35S-0PK7', '', '', 'KIOSKO', 'CAC LA PAZ 1'),
(2947, 'C', 'CACLP1AS41DMX01', '10.1.5.141  ', 'HP', 'HP EliteDesk 705 G1 SFF', 'MXL51524RD     ', '104000032904', 'HP                 ', 'HP V193b       ', '3CQ5140CKC              ', '104000032904', 'HP', 'KB527211', 'BDMHE0CHH7W1J9', 'HP', 'SM-2022', 'FCMHH0CJP7XKDA', '', '', 'MODULO B', 'CAC LA PAZ 1'),
(2948, 'C', 'CACLP1CA01DMX01', '10.1.5.151  ', 'DELL', 'OptiPlex 960           ', 'C1MPJM1        ', '104000031477', 'DELL', 'DELL E170S     ', 'CN-0U072N-64180-04E-1M9S      ', '104000031477', 'DELL', 'L30U', 'ILEGIBLE NUMERO DE SERIE', 'DELL', 'MOCZUL', 'J0702HFM', '', '', 'CAJA 1', 'CAC LA PAZ 1'),
(2949, 'C', 'CACLP1CA02DMX01', '10.1.5.152  ', 'DELL', 'OptiPlex 9010          ', 'CJHV6Y1        ', '104000032471', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37F-0MPU      ', '104000032471', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-01TI-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-0XHX', '', '', 'CAJA 2', 'CAC LA PAZ 1'),
(2950, 'C', 'CACLP1CA03DMX01', '10.1.5.153  ', 'DELL', 'OptiPlex 9010          ', 'CK2W6Y1        ', '104000032470', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37F-0P6U      ', '104000032470', 'DELL', 'KB4021', 'CN-0DJ462-71581-367-01KD-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-00S0', '', '', 'CAJA 3', 'CAC LA PAZ 1'),
(2951, 'C', 'CACLP1CA04DMX01', '10.1.5.154  ', 'DELL', 'OptiPlex 9010          ', 'CHGV6Y1        ', '104000032472', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37F-1H6U      ', '104000032472', 'DELL', 'KB-212-B', 'CN-0DJ462-71581-367-063Y-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-0XGZ', '', '', 'CAJA 4', 'CAC LA PAZ 1'),
(2952, 'C', 'CACLP1JE01DMX01', '10.1.5.30   ', 'DELL', 'OptiPlex 960           ', 'GG3JDP1        ', ' 104000031651', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-11S-1C9U      ', ' 104000031651', 'DELL', 'L30U', 'CN-0N243F-73571-OBK-0193-A01', 'DELL', 'MS-111L', 'CN-011D3V-71581-113-0SDV', '', '', 'JEFATURA', 'CAC LA PAZ 1'),
(2953, 'C', 'CACLP1RE01DMX01', '10.1.5.32   ', 'DELL', 'OptiPlex 9010          ', 'C3DW6Y1        ', '104000032422', 'DELL', 'DELL E1713S    ', 'CN-0HX1KW-74261-37D-2WMU      ', '104000032422', 'DELL', 'KB4021', 'CN-0DJ462-71581-366-06H1-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-35S-0PJZ', '', '', 'RECEPCION', 'CAC LA PAZ 1'),
(2954, 'C', 'CACLP1ST01DMX01', '10.1.5.147  ', 'DELL', 'OptiPlex 990           ', '3CS6KS1        ', '104000031942', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-11S-1CDU      ', '104000031942', 'DELL', 'KB4021', 'CN-0KHCC7-71616-1CJ-01BO-A00', 'DELL', 'MOCZUL', 'K1A003ZT', '', '', 'SERTEC 1', 'CAC LA PAZ 1'),
(2955, 'C', 'CACLP1ST02DMX01', '10.1.5.148  ', 'DELL', 'OptiPlex 960           ', 'HJLHDP1        ', '104000031654', 'DELL', 'DELL E170S     ', 'CN-0N445N-74261-11S-1CEU      ', '104000031654', 'DELL', 'L30U', 'CN-0N243F-73571-0BK-01FQ-A01', 'DELL', 'MS-111L', 'CN-011D3V-71581-113-2395', '', '', 'SERTEC 2', 'CAC LA PAZ 1'),
(2956, 'C', 'CACLP1ST04DMX01', '10.1.5.149  ', 'DELL', 'OptiPlex 960           ', 'HJPGDP1        ', '104000031658', 'DELL', 'DELL E170S     ', 'CN-0HF0K3-64180-217-1QZL      ', '104000031658', 'DELL', 'L30U', 'CN-0N243F-73571-0BK-011C-A01', 'DELL', 'MOABBO', 'NUMERO DE SERIE ILEGIBLE', '', '', 'SERTEC 3', 'CAC LA PAZ 1'),
(2957, 'C', 'CACLP1SU01DMX01', '10.1.5.101  ', 'DELL', 'OptiPlex 9010          ', '9RWZBZ1        ', 'RC0000000902', 'DELL', 'DELL E1713S    ', 'CN-0JWRMG-64180-3AC-0VSU      ', 'RC0000000902', 'DELL', 'KB4021', 'CN-0C639N-71616-39E-00XR-A00', 'DELL', 'MS-111L', 'CN-09RRC7-48729-39A-1GS8 ', '', '', 'SUPERVISOR 1', 'CAC LA PAZ 1'),
(2958, 'C', 'CACLP1SU02DMX01', '10.1.5.123  ', 'DELL', 'OptiPlex 990           ', '96Q70R1        ', '104000031839', 'DELL', 'DELL E170S     ', 'CN-0HF0K3-64180-176-0AVU      ', '104000031839', 'DELL', 'NY-U003-DEL5', 'CN-0U474D-44751-0BR-02GN-A01', 'DELL', 'M-UAV-DEL8', 'LZ12BB30MLP', '', '', 'SUPERVISOR 2', 'CAC LA PAZ 1'),
(2959, 'C', 'INFINITUM-LPZ1 ', '192.168.1.93', 'HP', 'HP EliteDesk 705 G1 SFF', 'MXL5242GY7     ', '104000033095', 'HP                 ', 'HP V193b       ', '3CQ5270PJW              ', '104000033095', 'HP', 'KB527211', 'BDMHE0CHH8B31N', 'HP', 'MOFYUO', 'FCMHH0AKZ8GN3I', '', '', 'EQUIPO PARA LIBERACION', 'CAC LA PAZ 1'),
(2960, 'C', 'MXCACLP1COR01  ', '10.1.5.31   ', 'DELL', 'OptiPlex 990           ', '3DZ7KS1        ', '104000031941', 'DELL', 'DELL E170S     ', 'CN-0HF0K3-64180-217-1UXL      ', '104000031941', 'DELL', 'RT7D50', 'ILEGIBLE NUMERO DE SERIE', 'DELL', 'MOCZUL', 'K1A003GS', '', '', 'SERVIDOR DE IMPRESIÓN', 'CAC LA PAZ 1'),
(2961, 'I', 'MXTACLP1COR 11', '10.1.5.232', 'HP', 'PRO 400 M401', 'VNB3B18005', '1050-31273', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 1 Y 2', 'CAC LA PAZ 1'),
(2962, 'I', 'MXTACLP1COR 10', '10.1.5.231', 'HP', 'PRO M402', 'PHBQC00195', '105000031787', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 19 Y 20', 'CAC LA PAZ 1'),
(2963, 'I', 'MXTACLP1COR 09', '10.1.5.230', 'HP', 'PRO 400 M401', 'VNB3X25267', '1050-31261', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 17 Y 18', 'CAC LA PAZ 1'),
(2964, 'I', 'MXTACLP1COR 08', '10.1.5.229', 'HP', 'PRO M402', 'PHBQD27703', '1050-31861', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 15 Y 16 ', 'CAC LA PAZ 1'),
(2965, 'I', 'MXTACLP1COR 07', '10.1.5.228', 'HP', 'PRO M402', 'PHBQF27289', '1050-31842', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 13 Y 14', 'CAC LA PAZ 1'),
(2966, 'I', 'MXTACLP1COR 06', '10.1.5.227', 'HP', 'PRO M402', 'PHBQD27705', '1050-31864', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 11 Y 12', 'CAC LA PAZ 1'),
(2967, 'I', 'MXTACLP1COR 05', '10.1.5.226', 'HP', 'PRO M402', 'PHBQF26391', '1050-31863', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 9 Y 10', 'CAC LA PAZ 1'),
(2968, 'I', 'MXTACLP1COR 04', '10.1.5.225', 'HP', 'PRO 400 M401', 'PHGFG20447', '1050-31694', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 7 Y 8', 'CAC LA PAZ 1'),
(2969, 'I', 'MXTACLP1COR 03', '10.1.5.224', 'HP', 'PRO 400 M401', 'VNB3X25099', '1050-31234', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 5 Y 6', 'CAC LA PAZ 1'),
(2970, 'I', 'MXTACLP1COR 13', '10.1.5.223', 'HP', 'LEXMARK', '7463479905T9B', '1050-31520', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJAS', 'CAC LA PAZ 1'),
(2971, 'I', 'MXTACLP1COR 15', '10.1.5.234', 'HP', 'PRO 400 M401', 'PHGFB22464 ', '1050-31545', '', '', '', '', '', '', '', '', '', '', '', '', 'SERTEC', 'CAC LA PAZ 1'),
(2972, 'I', '', '', 'HP', 'LASERJET 4250 DTNE', 'JPGGL07243', '105000030311', '', '', '', '', '', '', '', '', '', '', '', '', 'ALMACEN', 'CAC LA PAZ I'),
(2973, 'I', 'JEFATURA', 'S/N', 'HP', 'OFFICEJET PRO 8100 ', 'CN27NBK0GH', '1050-31208', '', '', '', '', '', '', '', '', '', '', '', '', 'JEFATURA', 'CAC LA PAZ 1'),
(2974, 'E', '', '10.1.5.219', 'XEROX', 'DOCUMATE 272', '737TW1079B5N1400034', '1050-30874', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 30', 'CAC LA PAZ 1'),
(2975, 'E', '', '10.1.5.217', 'XEROX', 'DOCUMATE 3125', '4BAHL70704', '1050-31667', '', '', '', '', '', '', '', '', '', '', '', '', 'A UN COSTADO DE BARRA 1', 'CAC LA PAZ 1'),
(2976, 'E', 'CACLP13GLMX01', '192.168.1.88', 'HP', 'HP ProBook 645 G1    ', '5CG5240SYR', '1040-32810', '', '', '', '', '', '', '', '', '', '', '6DKFE08WY8OC0H', '', 'SERTEC', 'CAC LA PAZ 1'),
(2977, 'C', 'CACLP2AC01DMX01', '10.1.13.45  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52227BZ     ', '—              ', 'HP', 'V194', '3CQ6072NJP              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2978, 'C', 'CACLP2AC02DMX01', '10.1.13.46  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52225TR     ', '—              ', 'HP', 'V193B', '3CQ5140SPP              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2979, 'C', 'CACLP2AC03DMX01', '10.1.13.47  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52225KL     ', '—              ', 'HP', 'V193B', '3CQ5140S3Q              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2980, 'C', 'CACLP2AS03DMX01', '10.1.13.13  ', 'DELL', 'OptiPlex 9010          ', '6V5RVV1        ', '—              ', 'DELL', 'E170S', 'JCT7327P1NFU            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2981, 'C', 'CACLP2AS04DMX01', '10.1.13.14  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52225K4     ', '—              ', 'HP', 'V193B', '3CQ5140SP5              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2982, 'C', 'CACLP2AS05DMX01', '10.1.13.15  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52225KZ     ', '—              ', 'HP', 'V193B', '3CQ5140SNW              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2983, 'C', 'CACLP2AS06DMX01', '10.1.13.16  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52225KW     ', '—              ', 'HP', 'L1710', 'CNC907QV1P              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2984, 'C', 'CACLP2AS07DMX01', '10.1.13.17  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52226HF     ', '—              ', 'HP', 'V193B', '3CQ5140SPC              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2985, 'C', 'CACLP2AS08DMX01', '10.1.13.18  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52225KK     ', '—              ', 'HP', 'V193B', '3CQ5140SPN              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2986, 'C', 'CACLP2AS09DMX01', '10.1.13.19  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL522265S     ', '—              ', 'HP', 'V193B', '3CQ5140S55              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2987, 'C', 'CACLP2AS10DMX01', '10.1.13.20  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52226GB     ', '—              ', 'HP', 'V193B', '3CQ5140SNS              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2988, 'C', 'CACLP2AS11DMX01', '10.1.13.21  ', 'DELL', 'OptiPlex 9010          ', 'CKGV6Y1        ', '—              ', 'DELL', 'E1713S', 'HX1KW37D2F2U            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2989, 'C', 'CACLP2AS12DMX01', '10.1.13.22  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL5222605     ', '—              ', 'HP', 'V193B', '3CQ5140S3B              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2990, 'C', 'CACLP2AS13DMX01', '10.1.13.23  ', 'DELL', 'OptiPlex 9010          ', 'DSF97V1        ', '—              ', 'DELL', 'E170S', 'N445N07Q1RHB            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2991, 'C', 'CACLP2AS14DMX01', '10.1.13.24  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52226FG     ', '—              ', 'HP', 'V193B', '3CQ5140S43              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2992, 'C', 'CACLP2AS15DMX01', '10.1.13.25  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL5222612     ', '—              ', 'HP', 'V193B', '3CQ5140SPF              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2993, 'C', 'CACLP2AS16DMX01', '10.1.13.26  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52226HQ     ', '—              ', 'HP', 'V193B', '3CQ5140S5M              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2994, 'C', 'CACLP2AS17DMX01', '10.1.13.27  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52225KJ     ', '—              ', 'HP', 'V193B', '3CQ5140S56              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2995, 'C', 'CACLP2AS18DMX01', '10.1.13.28  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52225WP     ', '—              ', 'HP', 'V193B', '3CQ5140S5K              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2996, 'C', 'CACLP2AS19DMX01', '10.1.13.29  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52226J1     ', '—              ', 'HP', 'V193B', '3CQ5140S5D              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2997, 'C', 'CACLP2AS20DMX01', '10.1.13.56  ', 'DELL', 'OptiPlex 990           ', '39YYXQ1        ', '—              ', 'DELL', 'E170S', 'HF0K314E065L            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2998, 'C', 'CACLP2AS21DMX01', '10.1.13.31  ', 'DELL', 'OptiPlex 990           ', 'HZ3CVR1        ', '—              ', 'DELL', 'E170S', 'HF0K319F624U            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(2999, 'C', 'CACLP2AS22DMX01', '10.1.13.32  ', 'DELL', 'OptiPlex 9010          ', 'DRQ97V1        ', '—              ', 'DELL', 'E170S', 'HF0K323S3VLL            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3000, 'C', 'CACLP2AS23DMX01', '10.1.13.33  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL5222696     ', '—              ', 'HP', 'V193B', '3CQ5140S3T              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3001, 'C', 'CACLP2AS24DMX01', '10.1.13.34  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52226H2     ', '—              ', 'HP', 'V193B', '3CQ5140S5P              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3002, 'C', 'CACLP2AS31DMX01', '10.1.13.53  ', 'DELL', 'OptiPlex 990           ', '3BS3KS1        ', '—              ', 'DELL', 'E170S', 'HF0K32171TBL            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3003, 'C', 'CACLP2AS32DMX01', '10.1.13.55  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52226H9     ', '—              ', 'HP', 'V194', '3CQ6072R4N              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3004, 'C', 'CACLP2AS35DMX01', '10.1.13.52  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52225T6     ', '—              ', 'HP', 'V193B', '3CQ5140S51              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3005, 'C', 'CACLP2CA01DMX01', '10.1.13.41  ', 'DELL', 'OptiPlex 9010          ', 'C58T6Y1        ', '—              ', 'DELL', 'E1713S', 'HX1KW37F0MRU            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3006, 'C', 'CACLP2CA02DMX01', '10.1.13.42  ', 'DELL', 'OptiPlex 9010          ', 'C5HW6Y1        ', '—              ', 'DELL', 'E1713S', 'HX1KW37F1GLU            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3007, 'C', 'CACLP2CA03DMX01', '10.1.13.43  ', 'DELL', 'OptiPlex 9010          ', 'CK5V6Y1        ', '—              ', 'DELL', 'E1713S', 'HX1KW37E0G4U            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3008, 'C', 'CACLP2CA04DMX01', '10.1.13.44  ', 'DELL', 'OptiPlex 960           ', '6Y97WL1        ', '—              ', 'DELL', 'E170S', 'U072N9C240VU            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3009, 'C', 'CACLP2JE01DMX01', '10.1.13.30  ', 'DELL', 'OptiPlex 9010          ', '9QWZBZ1        ', '—              ', 'DELL', 'E1713S', 'JWRMG3AC0T2U            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3010, 'C', 'CACLP2RE01DMX01', '10.1.13.51  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL522267Z     ', '—              ', 'HP', 'V193B', '3CQ5140S3Y              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3011, 'C', 'CACLP2ST01DMX01', '10.1.13.48  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL52225KG     ', '—              ', 'HP', 'V193B', '3CQ5140S57              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3012, 'C', 'CACLP2ST02DMX01', '10.1.13.49  ', 'HP', 'EliteDesk 705 G1 SFF', 'MXL522267G     ', '—              ', 'HP', 'V193B', '3CQ5140SP1              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3013, 'C', 'CACLP2ST03DMX01', '10.1.13.50  ', 'DELL', 'OptiPlex 990           ', '54HP6V1        ', '—              ', 'DELL', 'E170S', 'JCT7325A2H9L            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3014, 'C', 'CACLP2SU01DMX01', '10.1.13.12  ', 'DELL', 'OptiPlex 960           ', 'HJLJDP1        ', '—              ', 'DELL', 'E170S', 'JCT732120URU            ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3015, 'C', 'CACLP2SU02DMX01', '10.1.13.36', 'DELL', 'OPTIPLEX 990', 'HZ4JVR1', '104000031855', '', '', '', '', '', '', '', '', '', '', '', '', 'SUPERVISOR 02', 'CAC LA PAZ II'),
(3016, 'C', 'INFINITUM-LPZ2 ', '192.168.1.67', 'HP', 'EliteDesk 705 G1 SFF', 'MXL5242HTC     ', '—              ', 'HP', 'V193B', '3CQ5270PJR              ', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 2'),
(3017, 'C', 'CACLP3AC01DMX01', '10.1.61.39  ', 'DELL', 'OptiPlex 9010', '9R91CZ1        ', '—              ', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0T8U', '—              ', 'DELL', 'KB212-B', 'CN-0C639N-71616-39E-0451-A00', 'DELL', 'DZL-MSIII-L', '39D-00FF', '', '', '', 'CAC LA PAZ 3'),
(3018, 'C', 'CACLP3AC02DMX01', '10.1.61.38  ', 'DELL', 'OptiPlex 9010', '9RPZBZ1        ', '—              ', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0TAU', '—              ', 'DELL', 'KB212-B', 'CN-0C639N-71616-39E-00UD-A00', 'DELL', 'DZL-MSIII-L', '39D-00FV', '', '', '', 'CAC LA PAZ 3'),
(3019, 'C', 'CACLP3AS01DMX01', '10.1.61.11  ', 'DELL', 'OptiPlex 9010', '9RH0CZ1        ', 'RC00-0901', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0VJU', 'RC00-0901', 'DELL', 'KB212-B', '', 'DELL', 'DZL-MSIII-L', '39E-04FV', '', '', '', 'CAC LA PAZ 3'),
(3020, 'C', 'CACLP3AS03DMX01', '10.1.61.13  ', 'DELL', 'OptiPlex 9010', '9RWYBZ1        ', 'RC00-0903', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0N2U', 'RC00-0903', 'DELL', 'KB212-B', 'CN-OC639N-71616-39E-00XT-A00', 'DELL', 'DZL-MSIII-L', '39A-1GSE', '', '', '', 'CAC LA PAZ 3'),
(3021, 'C', 'CACLP3AS04DMX01', '10.1.61.14  ', 'DELL', 'OptiPlex 9010', '9RXYBZ1        ', 'RC00-0905', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0RMU', 'RC00-0905', 'DELL', 'KB212-B', '', 'DELL', 'DZL-MSIII-L', '39A-1JWK', '', '', '', 'CAC LA PAZ 3'),
(3022, 'C', 'CACLP3AS05DMX01', '10.1.61.15  ', 'DELL', 'OptiPlex 9010', '9QR1CZ1        ', 'RC00-0910', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0S9U', 'RC00-0910', 'DELL', 'KB212-B', 'CN-0DJ462-71581-4CB-008E-A01', 'DELL', 'DZL-MSIII-L', '39D-00G4', '', '', '', 'CAC LA PAZ 3'),
(3023, 'C', 'CACLP3AS06DMX01', '10.1.61.16  ', 'DELL', 'OptiPlex 9010', '9QTYBZ1        ', 'RC00-0911', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0SCU', 'RC00-0911', 'DELL', 'KB212-B', 'CN-0C639N-71616-39E-02JR-A00', 'DELL', 'DZL-MSIII-L', '39D-0067', '', '', '', 'CAC LA PAZ 3'),
(3024, 'C', 'CACLP3AS07DMX01', '10.1.61.17  ', 'DELL', 'OptiPlex 9010', '9QWYBZ1        ', 'RC00-0912', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0SGU', 'RC00-0912', 'DELL', 'KB212-B', 'CN-0FJ46-71581-3CC-0021-A01', 'DELL', 'DZL-MSIII-L', '39D-00FV', '', '', '', 'CAC LA PAZ 3'),
(3025, 'C', 'CACLP3AS08DMX01', '10.1.61.18  ', 'DELL', 'OptiPlex 9010', '9RH1CZ1        ', 'RC00-0913', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0T6U', 'RC00-0913', 'DELL', 'KB212-B', 'CN-0C639N-71616-39E-02SS-A00', 'DELL', 'DZL-MSIII-L', '39D-00GC', '', '', '', 'CAC LA PAZ 3'),
(3026, 'C', 'CACLP3AS09DMX01', '10.1.61.19  ', 'DELL', 'OptiPlex 9010', '9RXZBZ1        ', 'RC00-0914', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0VVU', 'RC00-0914', 'DELL', 'KB212-B', 'CN-0C639N-71616-39R-0XPJ-A00      ', 'DELL', 'DZL-MSIII-L', '39A-1KMV', '', '', '', 'CAC LA PAZ 3'),
(3027, 'C', 'CACLP3AS10DMX01', '10.1.61.20  ', 'DELL', 'OptiPlex 9010', '9S01CZ1        ', 'RC00-0915', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0VZU', 'RC00-0915', 'DELL', 'KB212-B', 'CN-0C639N-71616-39R-0XPE-A00', 'DELL', 'DZL-MSIII-L', '39C-0EZV', '', '', '', 'CAC LA PAZ 3'),
(3028, 'C', 'CACLP3AS11DMX01', '10.1.61.21  ', 'DELL', 'OptiPlex 9010', '9S0ZBZ1        ', 'RC00-0916', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0W0U', 'RC00-0916', 'DELL', 'KB212-B', 'CN-0C639N-71616-39R-0Y1Z-A00', 'DELL', 'DZL-MSIII-L', '39F-06HR', '', '', '', 'CAC LA PAZ 3'),
(3029, 'C', 'CACLP3AS12DMX01', '10.1.61.22  ', 'DELL', 'OptiPlex 9010', '9S10CZ1        ', 'RC00-0917', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0W1U', 'RC00-0917', 'DELL', 'KB212-B', 'CN-0C639N-71616-39R-0XON-A00', 'DELL', 'DZL-MSIII-L', '39A-1LX4', '', '', '', 'CAC LA PAZ 3'),
(3030, 'C', 'CACLP3AS13DMX01', '10.1.61.23  ', 'DELL', 'OptiPlex 9010', '9QV0CZ1        ', 'RC00-0918', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0RSU', 'RC00-0918', 'DELL', 'KB212-B', 'CN-0C639N-71616-39E-0286-A00', 'DELL', 'DZL-MSIII-L', '39A-1JX0', '', '', '', 'CAC LA PAZ 3'),
(3031, 'C', 'CACLP3AS14DMX01', '10.1.61.124 ', 'DELL', 'OptiPlex 9010', '9R51CZ1        ', 'RC00-0919', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0RZU', 'RC00-0919', 'DELL', 'KB212-B', 'CN-0C639N-71616-39E-03P3-A00', 'DELL', 'DZL-MSIII-L', '39A-1JXR', '', '', '', 'CAC LA PAZ 3'),
(3032, 'C', 'CACLP3CA01DMX01', '10.1.61.34  ', 'DELL', 'OptiPlex 9010', '9R3ZBZ1        ', 'RC00-0897', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0EZU', 'RC00-0897', 'DELL', 'KB212-B', 'CN-0C639N-71616-39R-0SYM-A00', 'DELL', 'DZL-MSIII-L', '39F-0FC5', '', '', '', 'CAC LA PAZ 3'),
(3033, 'C', 'CACLP3CA02DMX01', '10.1.61.35  ', 'DELL', 'OptiPlex 9010', '9QNZBZ1        ', 'RC00-0898', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0RLU', 'RC00-0898', 'DELL', 'KB212-B', 'CN-0C639N-71616-39E-00XV-A00', 'DELL', 'DZL-MSIII-L', '39A-1JW4', '', '', '', 'CAC LA PAZ 3'),
(3034, 'C', 'CACLP3CA03DMX01', '10.1.61.36  ', 'DELL', 'OptiPlex 9010', '9QCZBZ1        ', 'RC00-0900', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0UDU', 'RC00-0900', 'DELL', 'KB212-B', 'CN-0C639N-71616-39E-00QM-A00', 'DELL', 'DZL-MSIII-L', '39A-1KRM', '', '', '', 'CAC LA PAZ 3'),
(3035, 'C', 'CACLP3CA04DMX01', '10.1.61.37  ', 'DELL', 'OptiPlex 9010', '9RX1CZ1        ', 'RC00-0904', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0QMU', 'RC00-0904', 'DELL', 'KB212-B', 'CN-0C639N-71616-39E-00XV-A00', 'DELL', 'DZL-MSIII-L', '39A-1JVH', '', '', '', 'CAC LA PAZ 3'),
(3036, 'C', 'CACLP3JE01DMX01', '10.1.61.30  ', 'DELL', 'OptiPlex 990 ', '56LFJQ1        ', '—              ', 'DELL', 'E170S', 'CN-0U072N-64180-12J-17DL', '—              ', '—            ', '—             ', '—            ', '—          ', '—           ', '—', '', '', '', 'CAC LA PAZ 3'),
(3037, 'C', 'CACLP3RE01DMX01', '10.1.61.33  ', 'DELL', 'OptiPlex 9010', '9RW1CZ1        ', 'RC00-0920', 'DELL', 'E1713S', 'CN-0JWRMG-64180-3AC-0S4U', 'RC00-0920', 'DELL', 'KB212-B', '—            ', 'DELL', 'DZL-MSIII-L', '39F-0LAK', '', '', '', 'CAC LA PAZ 3'),
(3038, 'C', 'CACLP3SU01DMX01', '10.1.61.12  ', 'DELL', 'OptiPlex 990 ', '965G0R1        ', '1040-31840', 'DELL', 'E170S', 'CN-0HF0K3-64180-176-0WEL', '1040-31840', 'DELL', '—             ', '—            ', 'DELL', '—           ', '—', '', '', '', 'CAC LA PAZ 3'),
(3039, 'C', 'KIOSKOLPZ3     ', '10.1.61.25  ', 'DELL', 'OptiPlex 9010', 'C6SW6Y1        ', '1040-32304', 'DELL', 'E1713S', 'CN-0HX1KW-74261-37E-06YU', '1040-32304', 'DELL', '—             ', '—            ', 'DELL', '—           ', '—', '', '', '', 'CAC LA PAZ 3'),
(3040, 'I', 'MXTACLP3COR01', '10.1.61.220', 'HP', 'LASERJET PRO  M402dn', 'PHBQC24371', '105000031869', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 2 Y 3', 'CAC LA PAZ 3'),
(3041, 'I', 'MXTACLP3COR02', '10.1.61.221', 'HP', 'LASERJET PRO  M401dne', 'VNB5P03195', '105000031414', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 4 y 5', 'CAC LA PAZ 3'),
(3042, 'I', 'MXTACLP3COR03', '10.1.61.222', 'HP', 'LASERJET PRO  M401dne', 'VNG4X02220', '105000031420', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 6 Y 7', 'CAC LA PAZ 3'),
(3043, 'I', 'MXTACLP3COR04', '10.1.61.223', 'HP', 'LASERJET PRO  M401dne', 'VNB5P03189', '105000031417', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 8 Y 9', 'CAC LA PAZ 3'),
(3044, 'I', 'MXTACLP3COR05', '10.1.61.224', 'HP', 'LASERJET PRO  M401dne', 'VNB5P03187', '105000031419', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 10 Y 11', 'CAC LA PAZ 3'),
(3045, 'I', 'MXTACLP3COR06', '10.1.61.225', 'HP', 'LASERJET PRO  M401dne', 'VNG4X02222', '105000031413', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 12 Y 13', 'CAC LA PAZ 3'),
(3046, 'I', 'MXTACLP3COR07', '10.1.61.226', 'HP', 'LASERJET PRO  M401dne', 'VNB5P03198', '105000031418', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 14', 'CAC LA PAZ 3'),
(3047, 'I', 'MXTACLP3COR08', '10.1.61.227', 'HP', 'LASERJET PRO  M401dne', 'VNG4X09341', '105000031415', '', '', '', '', '', '', '', '', '', '', '', '', 'DETRAS BARRA', 'CAC LA PAZ 3'),
(3048, 'I', 'MXTACLP3COR10', '10.1.61.229', 'HP', 'LASERJET PRO  M401dne', 'VNG4X02224', '105000031416', '', '', '', '', '', '', '', '', '', '', '', '', 'ALMACEN', 'CAC LA PAZ 3'),
(3049, NULL, 'MXTACLP3COR09', '10.1.61.228', 'LEXMARK', ' MX711D ', '74633699047PF ', '105000031503', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJAS', 'CAC LA PAZ 3'),
(3050, 'I', 'N/A', 'N/A', 'HP', 'PRO 8100', 'CN3ANEVJRF', '105000031421', '', '', '', '', '', '', '', '', '', '', '', '', 'JEFATURA', 'CAC LA PAZ 3'),
(3051, 'E', '', '10.1.61.219', 'XEROX', 'DOCUMATE 3125', '3ARHL30679', '105000031423', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA ENTRE 1 Y 2', 'CAC LA PAZ 3'),
(3052, 'E', '', '10.1.61.218', 'XEROX', 'DOCUMATE 3125', '4BAHL70622', '105000031518', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 13 Y 14', 'CAC LA PAZ 3'),
(3053, 'C', '', '', 'Dell', 'Optiplex 990', '795WMS1', '104000031946', '', '', '', '', '', '', '', 'DELL', 'MS-111L', 'CN-09RRC7-44751-22Q-05RC', '', '', 'JEFATURA DE TECNOLOGIA TELEFONICO', 'ALFER'),
(3054, 'C', 'CCTRIOCA01DMX01', '10.0.17.15', 'DELL', 'OPTIPLEX 960', '74D2PN1', '104000031575', 'DELL', 'E170C', 'CN-0U072N-64180-0AB4-BHU', '104000031575', 'DELL', 'N30U', 'CN-0N243F-73571-0AD-01C8-A01', 'DELL', 'MS-111-L', 'CN-09RRRC744751-094-0M69', '', '', 'CAJA 01', 'CCT PLAZA RIO'),
(3055, 'C', 'CCTRIOCA02DMX01', '10.0.17.16', 'DELL', 'OPTIPLEX 960', '74KZNN1', '104000031574', 'DELL', 'E170SC', 'CN-0U72N-64180-09VG-502C', '104000031574', 'DELL', 'SK-8135', 'CN-0DJ375-71616-718-1865', 'DELL', 'MS-111-L', 'CN-09RRC7-44751-08Q-133S', '', '', 'CAJA02', 'CCT PLAZA RIO'),
(3056, 'I', '', '10.0.17.221', 'HP-I', 'LASERJET P4015', 'CNDY816425', '10500031003', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJAS', 'CCT PLAZA RIO'),
(3057, 'C', 'CCTRIOVT01DMX01', '10.0.17.11', 'DELL', 'OPTIPLEX 9010', 'C78G6Y1', '104000032494', 'DELL', 'E1713SC', 'CN-0JURMG-64180-367-0NXU', '104000032494', 'DELL', 'KB-212', 'CN-0XCRRN-75131-3CN-00JN-A00', 'DELL', 'MS-111-L', 'CN-09RR674729-25R-12WM', '', '', 'VENTAS 01', 'CCT PLAZA RIO'),
(3058, 'C', 'CCTRIOVT02DMX01', '10.0.17.12', 'DELL', 'OPTIPLEX 9010', 'C8126Y1', '104000032498', 'DELL', 'E170SC', 'CN-0HX1KW74281-T6I-258U', '104000032498', 'DELL', 'KB-212', 'CN-0DJ462-71581366-05WI-A00', 'DELL', 'MS-111-L', 'CN-09RRC7-4872935-Q0238', '', '', 'VENTAS 02', 'CCT PLAZA RIO'),
(3059, 'C', 'CCTRIOVT03DMX01', '10.0.17.13', 'DELL', 'OPTIPLEX 9010', 'C64W6Y1', '104000032497', 'DELL', 'E1713S', 'CN-0HXHKW-74261-36I-259U', '104000032497', 'DELL', 'KB-212', 'ODJ462-71581-366-06WE-A06', 'DELL', 'MS-111-L', 'CN-09RRC748729-35U-0J8H', '', '', 'VENTAS 03', 'CCT PLAZA RIO'),
(3060, 'E', 'USAB', '', 'XEROX-E', 'DOCUMATE 3125', '44EHL50293', '105000031567', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CCT PLAZA RIO'),
(3061, 'C', 'CCTRIOAC01DMX01', '10.0.17.19', 'HP', 'ELITEDESK 705 G1', 'MXL5242HS9', '104000033074', 'HP', '193V', '3CQ3270PK6', '104000033074', 'HP', 'SM-2022', 'FCMHH0CQW8A07R', 'HP', 'KU-156', 'BDMHE0CVB8H14E', '', '', 'ALMACEN ', 'CCT PLAZA RIO'),
(3062, 'C', '', '10.0.17.220', 'HP-I', 'P2055DN', 'VNB3R12878', '105000031185', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3063, 'C', '', '10.0.132.138', '', 'Dell Optiplex 9010', '5GVVNW1', '104000032089', '', '', '', '', '', '', '', '', '', '', '', '', 'RECEPCION 1 :', 'CAC MONARCA'),
(3064, 'C', '', '10.0.132.71', '', 'Dell Optiplex 9010', 'CM3W6Y1', '104000032446', '', '', '', '', '', '', '', '', '', '', '', '', 'RECEPCION 2', 'CAC MONARCA'),
(3065, 'IT', '', '', '', 'Epson TM-T88V', 'MXKF164513', '105000031734', '', '', '', '', '', '', '', '', '', '', '', '', 'Recepcion', 'CAC MONARCA'),
(3066, 'C', '', '10.0.132.105', '', 'Dell Optiplex 9010', 'CDJ16Y1', '104000032447', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 5', 'CAC MONARCA'),
(3067, 'I', '', '10.0132.222', '', 'HP LJ 401dne', 'VNG5K02682', '105000031377', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 5 y 6', 'CAC MONARCA'),
(3068, 'C', '', '10.0.132.106', '', 'Dell Optiplex 9010', 'CL8T6Y1', '104000032448', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 6   ', 'CAC MONARCA'),
(3069, 'C', '', '10.0.132.107', '', 'Dell Optiplex 9010', 'CM9V6Y1', '104000032449', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 7', 'CAC MONARCA'),
(3070, 'I', '', '10.0.132.223', '', 'HP LJ 401dne', 'VNG5K02686', '105000031378', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 7 y 8', 'CAC MONARCA'),
(3071, 'C', '', '10.0.132.224', '', 'Dell Optiplex 9010', 'CGQW6Y1', '104000032450', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 8   ', 'CAC MONARCA'),
(3072, NULL, '', '10.0.132.109', '', 'Dell Optiplex  9010', 'CGGW6Y1', '104000032451', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 9   ', 'CAC MONARCA'),
(3073, 'I', '', '10.0.132.224', '', 'HP LJ 401 dne', 'VNG5K02694', '105000031379', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 9 y 10', 'CAC MONARCA'),
(3074, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3075, 'C', '', '10.0.132.110', '', 'Dell Optiplex 9010', 'CM0W6X1', '104000032453', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 11   ', 'CAC MONARCA'),
(3076, 'I', '', '10.0.132.225', '', 'HP LJ 401 dne', 'VNG5K02680', '105000031380', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 11 y 12', 'CAC MONARCA'),
(3077, 'C', '', '10.0.132.112', '', 'Dell Optiplex 9010', 'CDLV6Y1', '104000032454', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 12  ', 'CAC MONARCA'),
(3078, 'C', '', '10.0.132.113', '', 'Dell Optiplex 9010', 'CQ8W6Y1', '104000032455', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 13  ', 'CAC MONARCA'),
(3079, 'I', '', '10.0.132.226', '', 'HP LJ 401dne', 'VNG5K02698', '105000031381', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 13 y 14     ', 'CAC MONARCA'),
(3080, 'C', '', '', '', 'Dell Optiplex 9010', 'CCXT6Y1', '104000032456', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 14  ', 'CAC MONARCA'),
(3081, 'C', '', '', '', 'Dell Optiplex 9010', 'CG2T6Y1', '104000032457', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 15 ', 'CAC MONARCA'),
(3082, 'I', '', '10.0.132.227', '', 'HP LJ 401 dne', 'VNG5K02687', '105000031382', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 15 y 16', 'CAC MONARCA'),
(3083, 'C', '', '', '', 'Dell Optiplex 9010', 'CD2V6Y1', '104000032458', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 16', 'CAC MONARCA'),
(3084, 'C', 'CACMONAS17DMX01', '10.0.132.117', 'DELL', 'OPTIPLEX 9010', 'CDFW6Y1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ASESOR 17', 'CAC MONARCA'),
(3085, 'I', '', '', '', 'HP LJ 401 dne', 'VNG5K02676', '105000031383', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 17 y 18', 'CAC MONARCA'),
(3086, 'C', '', '', '', 'Dell Optiplex 9010', 'CDQV6Y1', '104000032460', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 18', 'CAC MONARCA'),
(3087, 'C', '', '', '', 'Dell Optiplex 9010', 'CDLW6Y1', '104000032461', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 19', 'CAC MONARCA'),
(3088, 'I', '', '10.0.132.229', '', 'HP LJ 401 dne', 'VNG4J02763', '105000031384', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 19 y 20', 'CAC MONARCA'),
(3089, 'C', '', '', '', 'Dell Optiplex 9010', 'C3FW6Y1', '104000032462', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 20', 'CAC MONARCA'),
(3090, 'C', '', '', '', 'Dell Optiplex 9010', 'CJ5X6Y1', '10400002463', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 21', 'CAC MONARCA'),
(3091, 'I', '', '10.0.132.230', '', 'HP LJ 401 dne', 'VNG5K02691', '105000031385', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 21 y 22 ', 'CAC MONARCA'),
(3092, 'C', '', '', '', 'Dell Optiplex 9010', 'CH4W6Y1 ', '104000032464', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 22', 'CAC MONARCA'),
(3093, 'E', '', '10.0.132.135', '', 'Xerox Documete 3125', '3ARHL30292', '105000031395', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA TRASERA', 'CAC MONARCA'),
(3094, 'I', '', '10.0.132.241', '', 'HP LaserJet Pro M401dne', 'VNG4X06888', '105000031392', '', '', '', '', '', '', '', '', '', '', '', '', '', 'CAC MONARCA'),
(3095, 'C', '', '10.0.132.145', '', 'Dell Optiplex 9010', 'CHNV6Y1', '104000032465', '', '', '', '', '', '', '', '', '', '', '', '', 'Caja 1', 'CAC MONARCA'),
(3096, 'C', 'CACMONCA02DMX01', '10.0.132.146', '', 'Dell Optiplex 9010', 'CJFV6Y1', '104000032466', '', '', '', '', '', '', '', '', '', '', '', '', 'Caja 2', 'CAC MONARCA'),
(3097, 'C', '', '10.0.132.147', '', 'Dell Optiplex 9010', 'C3JV6Y1', '104000032467', '', '', '', '', '', '', '', '', '', '', '', '', 'Caja 3', 'CAC MONARCA'),
(3098, 'C', 'CACMONCA04DMX01', '10.0.132.148', 'DELL', 'OPTIPLEX 9010', 'CK3X6Y1', '104000032468', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA 04', 'CAC MONARCA'),
(3099, 'I', '', '', '', 'Lexmark X656 de', '79G65X8', '105000031269', '', '', '', '', '', '', '', '', '', '', '', '', 'Caja', 'CAC MONARCA'),
(3100, 'IT', '', '', '', 'EPSON TM-T88V', 'MXKF164454', '105000031770', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA 1', 'CAC MONARCA'),
(3101, 'IT', '', '', '', 'EPSON TM-T88V', 'MXKF164451', '105000031371', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA 2', 'CAC MONARCA'),
(3102, 'IT', '', '', '', 'EPSON TM-T88V', 'MXKF164455', '105000031372', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA 3', 'CAC MONARCA'),
(3103, 'IT', '', '', '', 'EPSON TM-T88V', 'MXKF164456', '105000031373', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA 4', 'CAC MONARCA'),
(3104, 'I', '', '', '', 'LEXMARK MX711de', '7463369902M05 ', '105000031389', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJA', 'CAC MONARCA'),
(3105, 'C', '', '', '', 'Dell Optiplex 9010', 'CFYW6Y1', '104000032443', '', '', '', '', '', '', '', '', '', '', '', '', 'ALMACEN:', 'CAC MONARCA'),
(3106, 'C', '', '', '', 'Dell Optiplex 9010', 'CDGW6Y1', '104000032444', '', '', '', '', '', '', '', '', '', '', '', '', 'ALMACEN:', 'CAC MONARCA'),
(3107, 'C', '', '', '', 'Dell Optiplex 9010', 'CFZS6Y1', '10400032445', '', '', '', '', '', '', '', '', '', '', '', '', 'ALMACEN:', 'CAC MONARCA'),
(3108, 'I', '', '10.0.132.239', '', 'HP LJ 401dne', 'VNG5K02697', '105000031387', '', '', '', '', '', '', '', '', '', '', '', '', 'ALMACEN:', 'CAC MONARCA'),
(3109, 'I', '', '', '', 'HP LJ 401dne', 'VNG5K02689', '105000031388', '', '', '', '', '', '', '', '', '', '', '', '', 'SERTEC:', 'CAC MONARCA'),
(3110, 'C', '', '', '', 'Dell Optiplex 9010', 'C32V6Y1', '104000032441', '', '', '', '', '', '', '', '', '', '', '', '', 'SERTEC:', 'CAC MONARCA'),
(3111, 'C', '', '', '', 'Dell Optiplex 9010', 'C54V6Y1', '104000032442', '', '', '', '', '', '', '', '', '', '', '', '', 'SERTEC:', 'CAC MONARCA'),
(3112, 'C', '', '', '', 'HP EliteDesk 705 G1 SFF', 'MXL5242DP2', '104000033081', '', 'V193B', '3CQ5270PHS', '1.04E+11', 'HP', 'KB57211', 'BDMHE0HH8J0CG', '', 'SM-2021', 'FCMHH0AKZ8GN3X', '', '', 'SERTEC:', 'CAC MONARCA'),
(3113, 'C', '', '', '', 'Dell Optiplex  GX620', '829T591', '104000030718', '', 'E176FPC', 'CN-0MC040-64180-62P-0G1S', '1.04E+11', 'DELL', 'SK-8135', 'CN-0DJ375-71616-77T-02I0', '', 'MS-111L', 'CN-09RRC7-48729-35Q-024Y', '', '', 'SERTEC:', 'CAC MONARCA'),
(3114, 'C', '', '', '', 'Dell Optiplex 9010', 'C58W6Y1', '104000032438', '', 'Dell E1713SB', 'CN-0HX1KW-74261-37F-0LEU', '1.04E+11', 'DELL', 'Dell KB212-B', 'CN-0D462-71581-367-02K7-A00', 'DELL', 'MS-111l', 'CN-09RRC7-48729-35S-02MK', '', '', 'MODULO B', 'CAC MONARCA'),
(3115, 'I', '', '', '', 'HP LJ M401dne', 'VNG5K02685', '105000031386', '', '', '', '', '', '', '', '', '', '', '', '', 'MODULO B', 'CAC MONARCA'),
(3116, 'C', '', '', '', 'Dell Optiplex 9010', 'C4JV6Y1', '104000032439', '', '', '', '', '', '', '', '', '', '', '', '', 'MODULO C', 'CAC MONARCA'),
(3117, 'I', '', 'USB', '', 'HP LJ M401dne', 'VNB5P04002', '105000031393', '', '', '', '', '', '', '', '', '', '', '', '', 'MODULO C', 'CAC MONARCA'),
(3118, 'C', '', '', '', 'Dell Optiplex 990', '3BX8KS1', '104000032296', '', '', '', '', '', '', '', '', '', '', '', '', 'JEFATURA', 'CAC MONARCA'),
(3119, 'I', '', '', '', 'HP OFFICEJET Pro 8100', 'CN3A8EVGX1', '105000031394', '', '', '', '', '', '', '', '', '', '', '', '', 'JEFATURA', 'CAC MONARCA'),
(3120, 'IT', '', '', '', 'Epson TM-88IV', 'J4BG301794', '105000030756', '', '', '', '', '', '', '', '', '', '', '', '', 'RELOJ CHECADOR', 'CAC MONARCA'),
(3177, 'I', 'MXTACPRICOR12', '10.0.40.231', 'HP', 'LASERJET PRO 400', 'PHGFF21251', '105000031569', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 29 y 30', 'CAC PLAZA RIO '),
(3178, 'I', 'MXTACPRICOR16', '10.0.40.235', 'HP', 'LASERJET PRO 402DE', 'PHGBQB13749', '105000031814', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 27 y 28', 'CAC PLAZA RIO '),
(3179, 'I', 'NO TIENE', 'USB', 'HP', 'LASERJET PRO 2015DN', 'CNBJN84797', '105000030591', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 25 y 26', 'CAC PLAZA RIO '),
(3180, 'I', 'MXTACPRICOR09', '10.0.40.228', 'HP', 'LASERJET PRO 400DN', 'VNB3H22757', '105000031305', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 23 y 24', 'CAC PLAZA RIO '),
(3181, 'I', 'MXTACPRICOR08', '10.0.40.227', 'HP', 'LASERJET PRO 400DN', 'PHGFF21052', '105000031577', '', '', '', '', '', '', '', '', '', '', '', '', 'Barra 21 y 22', 'CAC PLAZA RIO '),
(3182, 'I', 'MXTACPRICOR07', '10.0.40.226', 'HP', 'LASERJET PRO 400DNE', 'VNB3H22756', '105000031304', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 19 Y 20', 'CAC PLAZA RIO '),
(3183, 'I', 'MXTACPRICOR05', '10.0.40.224', 'HP', 'LASERJET PRO 400DNE', 'PHGFF21244', '105000031550', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 15 Y 16', 'CAC PLAZA RIO '),
(3184, 'I', 'MXTACPRICOR04', '10.0.40.223', 'HP', 'LASERJET PRO 400DNE', 'PHGFF21230', '105000031556', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 12 Y 13', 'CAC PLAZA RIO '),
(3185, 'I', 'MXTACPRICOR03', '10.0.40.222', 'HP', 'LASERJET PRO 400DNE', 'VNB5P03186', '105000031443', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 10 Y 11', 'CAC PLAZA RIO '),
(3186, 'I', 'MXTACPRICOR02', '10.0.40.221', 'HP', 'LASERJET PRO 400DNE', 'PHGFC58201', '105000031726', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 8 Y 9', 'CAC PLAZA RIO '),
(3187, 'I', 'MXTACPRICOR01', '10.0.40.220', 'HP', 'LASERJET PRO 400DNE', 'VNB3H17812', '105000031306', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 6 Y 7', 'CAC PLAZA RIO '),
(3188, 'I', '', '10.0.40.237', 'HP', 'LASERJET PRO 400DNE', 'PHGFG22155', 'NO TIENE', '', '', '', '', '', '', '', '', '', '', '', '', 'ALMACEN', 'CAC PLAZA RIO '),
(3189, 'I', '', '10.0.40.238', 'HP', 'LASERJET PRO 400DNE', 'PHGFB42255', '105000031652', '', '', '', '', '', '', '', '', '', '', '', '', 'SERTEC', 'CAC PLAZA RIO '),
(3190, 'I', '', '10.0.40.239', 'LEXMARK', 'X656DE', '79GG5X8', '105000031269', '', '', '', '', '', '', '', '', '', '', '', '', 'CAJAS', 'CAC PLAZA RIO '),
(3191, 'I', '', 'USB', 'HP', 'OFFICEJET8100', 'CN421F1M8', '105000031571', '', '', '', '', '', '', '', '', '', '', '', '', 'JEFATURA', 'CAC PLAZA RIO '),
(3192, 'C', 'CACPRIAS01DMX01', '10.0.40.21', 'DELL', 'OPTIPLEX 9010', 'C0ST6Y1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ASESOR 1', 'CAC PLAZA RIO'),
(3193, 'C', '', '192.1.203.191', 'HP', 'ELITEDESK 705 G1', 'MXL5220WC2', '104000032992', 'HP', 'V193B', '3CQ5140SP0', '104000032992', '', '', '', '', '', '', '', '', '', 'ALFER 1ER PISO CAPACITACION'),
(3194, 'L', 'TIC121B01DMXR1', '192.1.209.62', 'HP', 'PROBOOK 645 G1', '5CG514065Q', '', '', '', '', '', '', '', '', '', '', '', '', 'TIC121B', 'JEFATURA - ADMON INMUEBLE', 'ALFER - 1ER PISO'),
(3195, 'C', 'CACPRIAS28DMX01', '10.0.40.38', 'HP', 'ELITEDESK 705 G1 SFF', 'MXL51524TN', '', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 28', 'CAC PLAZA RIO'),
(3196, 'C', 'CACPRIAS08DMX01', '10.0.40.12', 'DELL', 'OPTIPLEX 960', 'F5XLDP1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 28', 'CAC PLAZA RIO'),
(3197, 'C', '', '192.1.209.237', 'HP', 'COMPAQ PRO 6305 SFF', 'MXL428291Q', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ANALISTA MESA CONTROL', 'ALFER 2DO PISO'),
(3198, 'C', 'CACPRIAS16DMX01', '10.0.40.20', 'DELL', 'OPTIPLEX 9010', 'C13T6Y1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ASESOR 16', 'CAC PLAZA RIO'),
(3199, 'C', 'TOP54A901DMXR1', '192.1.209.216', 'DELL', 'OPTIPLEX 990', 'J5BNXQ1', '104000031826', '', '', '', '', '', '', '', 'HP', 'M-UAE96', 'F93A90H5BW72W', '', 'TOP54A9', 'COMISIONES', 'ALFER - 2DO. PISO'),
(3200, 'C', 'TOPE71801DMXR1', '192.1.203.52', 'DELL', 'OPTIPLEX 9010', 'C6RV6Y1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ANALISTA', 'ALFER - 2DO. PISO'),
(3201, 'C', 'CACPRIAS31DMX01', '10.0.40.36', 'DELL', 'OPTIPLEX 960', '2Y7CSL1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 31', 'CAC PLAZA RIO'),
(3202, 'C', 'CACPRIAC02DMX01', '10.0.40.42', 'DELL', 'OPTIPLEX 9010', 'C0XT6Y1', '104000032277', '', '', '', '', '', '', '', '', '', '', '', 'TACE3D0', 'ALMACEN02', 'CAC PLAZA RIO'),
(3203, 'C', 'CACPRIAC03DMX01', '10.0.40.49', 'DELL', 'OPTIPLEX 960', 'CWQQKM1', '104000031483', '', '', '', '', '', '', '', '', '', '', '', 'TAC63E8', 'ALMACEN03', 'CAC PLAZA RIO'),
(3204, 'I', '', '10.0.146.113', '', '', 'PHGFF21130', '104000031580', '', '', '', '', '', '', '', '', '', '', '', '', 'TELEFONICO 2', 'CAE RIO'),
(3205, 'I', '', '10.0.146.112', '', '', 'VNG4X13392', '', '', '', '', '', '', '', '', '', '', '', '', '', 'TELEFONICO 1', 'CAE RIO'),
(3206, 'C', 'CACPRIAS18DMX01', '10.0.40.23', 'DELL', 'OPTIPLEX 9010', 'C03T6Y1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 18', 'CAC PLAZA RIO'),
(3207, 'C', 'TVC48C801DMXR1', '10.0.146.67', 'HP', 'COMPAQ PRO 6305 SFF', 'MXL41001FN', '', '', '', '', '', '', '', '', '', '', '', '', '48C8', 'ANALISTA', 'CAE RIO'),
(3208, 'L', 'TIS238401LMXR1', '192.1.209.41', 'DELL', 'LATITUDE E6430', 'DYD0XY1', '', '', '', '', '', '', '', '', '', '', '', '', '2384', 'JEFATURA CONMUTACION', 'ALFER - 1ER PISO'),
(3209, 'C', 'TOP079401DMXR1', '192.1.203.60', 'DELL', 'OPTIPLEX 9010', 'JWR5DX1', '', '', '', '', '', '', '', '', '', '', '', '', '794', 'JEFATURA OPERACIONES', 'ALFER 2DO PISO'),
(3210, 'C', 'TVC45EA01LMX01', '10.1.7.43', 'DELL', 'LATITUDE E6410', '43KJCS1', '', '', '', '', '', '', '', '', '', '', '', '', 'TVC45EA', 'ANALISTA VENTAS', 'CAE LOS CABOS'),
(3211, 'C', 'TOP5BC501DMXR1', '192.1.209.194', 'DELL', 'OPTIPLEX 9010', 'JWV5DX1', '', '', '', '', '', '', '', '', '', '', '', '', 'TOP5BC5', 'ANALISTA CREDITO Y COBRANZA', 'ALFER - 2DO. PISO'),
(3212, 'C', 'TR120D401LMXR1', '192.1.209.37', 'DELL', 'LATITUDE E6430', 'DBRQTZ1', '', '', '', '', '', '', '', '', '', '', '', '', 'TR120D4', 'JEFATURA ING. TRAFICO', 'ALFER - 1ER. PISO'),
(3213, 'C', 'TGED82D01LMXR1', '192.1.202.144', 'DELL', 'LATITUDE E6430', 'JPXL7W1', '', '', '', '', '', '', '', '', '', '', '', '', 'TGED82D', 'ANALISTA APLICACIÓN DATOS', 'ALFER - 1er. PISO'),
(3214, 'C', 'TCO5DB801DMXR1', '10.0.156.149', 'HP', 'COMPAQ PRO 6305 SFF', 'MXL41001HP', '104000032654', '', '', '', '', '', '', '', '', '', '', '', 'TCO5DB8', 'ANALISTA ATENCION DISTRIB', 'ALFER - 1er. PISO'),
(3215, 'I', '', '10.0.156.149', 'LEXMARK', 'MX711', 'CAB16179476A', '', '', '', '', '', '', '', '', '', '', '', '', '', 'MERCADOTECNIA', 'ALFER - 1er. PISO'),
(3216, 'L', 'TGE32D501LMXR1', '192.1.202.142', 'DELL', 'LATITUDE E6430', 'DKCQTZ1', '', '', '', '', '', '', '', '', '', '', '', '', 'TGE32D5', 'JEFATURA DISTRIB.', 'ALFER - 1er. PISO'),
(3217, 'L', 'TGE3ACD01LMXR1', '192.1.202.140', 'DELL', 'LATITUDE E6430', 'F6CQTZ1', '', '', '', '', '', '', '', '', '', '', '', '', 'TGE3ACD', '', 'ALFER - 1er. PISO'),
(3218, 'L', 'TGE550201LMXR1', '192.1.202.139', 'DELL', 'LATITUDE E6430', '5NNQTZ1', '', '', '', '', '', '', '', '', '', '', '', '', 'TGE5502', 'ANALISTA DISTRIB.', 'ALFER - 1er. PISO'),
(3219, 'L', 'TIC03D901LMXR1', '192.1.209.66', 'DELL', 'LATITUDE E6430', 'GWCQTZ1', '', '', '', '', '', '', '', '', '', '', '', '', 'TIC03D9', 'GERENTE IMP. Y CONTRUCC', 'ALFER - 2do. PISO'),
(3220, 'L', 'TAC5C4201LMXR1', '192.1.202.164', 'DELL', 'LATITUDE E6430', '1B3N7W1', '', '', '', '', '', '', '', '', '', '', '', '', 'TAC5C42', 'JEFE OPERACIONES CACS', 'ALFER - 2do. PISO'),
(3221, 'C', 'TOPE1D901DMXR1', '192.1.209.240', 'DELL', 'OPTIPLEX 990', '97J20R1', '', '', '', '', '', '', '', '', '', '', '', '', 'TOPE1D9', 'ANALISTA - MESA DE CONTROL', 'ALFER - 2do. PISO'),
(3222, 'C', 'TOP1D1E01DMXR1', '192.1.209.246', 'DELL', 'OPTIPLEX 990', 'J5JNXQ1', '', '', '', '', '', '', '', '', '', '', '', '', 'TOP1D1E', 'ANALISTA - MESA DE CONTROL', 'ALFER - 2do. PISO'),
(3223, 'L', 'TR13EF601LMXR1', '192.1.209.140', 'DELL', 'LATITUDE E6430', '8LQ4CW1', '', '', '', '', '', '', '', '', '', '', '', '', '3EF6', 'JEFATURA INTEGRACION', 'ALFER - 1er. PISO'),
(3224, 'C', 'TGR72EC01DMX01', '192.1.21.78', 'HP', 'COMPAQ PRO 6305 SFF', 'MXL41901J8', '', '', '', '', '', '', '', '', '', '', '', '', '72EC', 'ANALISTA DISTRIBUIDORES', 'ALMACEN CENTRAL 5 Y 10'),
(3225, 'L', 'TOM205701LMXR1', '192.1.209.173', 'LENOVO', '20DEA00SLM', 'PF0421JC', '', '', '', '', '', '', '', '', '', '', '', '', '2057', 'ANALISTA OYM', 'ALFER - 1er. PISO'),
(3226, 'L', 'TOL689301LMXR1', '10.0.146.43', 'HP', 'PROBOOK 645 G1', '5CG514065H', '', '', '', '', '', '', '', '', '', '', '', '', '6893', 'ANALISTA VENTAS PYMES ', 'CAE RIO'),
(3227, 'L', 'TOL1A7C01LMXR1', '10.0.146.42', 'HP', 'PROBOOK 645 G1', '5CG514063W', '', '', '', '', '', '', '', '', '', '', '', '', '1A7C', 'GERENTE VENTAS PYMES', 'CAE RIO'),
(3228, 'L', 'TOLE4701LMXR1', '10.0.146.73', 'HP', 'PROBOOK 645 G1', '5CG5140607', '', '', '', '', '', '', '', '', '', '', '', '', 'E470', 'ANALISTA VENTAS PYMES ', 'CAE RIO'),
(3229, 'L', 'TOL869901LMXR1', '10.0.146.75', 'HP', 'PROBOOK 645 G1', '5CG5140606', '', '', '', '', '', '', '', '', '', '', '', '', '8699', 'ANALISTA VENTAS PYMES ', 'CAE RIO'),
(3230, 'L', 'TOLDE9301LMXR1', '10.0.146.70', 'HP', 'PROBOOK 645 G1', '5CG514064V', '', '', '', '', '', '', '', '', '', '', '', '', 'DE9E', 'ANALISTA VENTAS PYMES ', 'CAE RIO'),
(3231, 'L', 'TOLC48501LMXR1', '10.0.146.71', 'HP', 'PROBOOK 645 G1', '5CG5140623', '', '', '', '', '', '', '', '', '', '', '', '', 'C485', 'ANALISTA VENTAS PYMES ', 'CAE RIO');
INSERT INTO `t_inventario_temporal` (`id_inventario_temporal`, `Componente`, `Nomenclatura`, `IP`, `Marca_g`, `Modelo_g`, `Serie_g`, `Inventario_g`, `Marca_m`, `Modelo_m`, `Serie_m`, `Inventario_m`, `Marca_t`, `Modelo_t`, `Serie_t`, `Marca_r`, `Modelo_r`, `Serie_r`, `Serie_Pila`, `Usuario_Univ`, `Posicion`, `Ubicacion`) VALUES
(3232, 'L', 'TOLD72E01LMXR1', '10.0.146.72', 'HP', 'PROBOOK 645 G1', '5CG5140682', '', '', '', '', '', '', '', '', '', '', '', '', 'D72E', 'ANALISTA VENTAS PYMES ', 'CAE RIO'),
(3233, 'L', 'TOLE3C901LMX01', '10.9.13.104', 'HP', 'PROBOOK 645 G1', '5CG4290M9X', '', '', '', '', '', '', '', '', '', '', '', '', 'E3C9', 'ANALISTA VENTAS PYMES ', 'CAE MEXICALI'),
(3234, 'L', 'TOLD65D01LMX01', '10.9.13.107', 'HP', 'PROBOOK 645 G1', '5CG514068K', '', '', '', '', '', '', '', '', '', '', '', '', 'D65D', 'ANALISTA VENTAS PYMES ', 'CAE MEXICALI'),
(3235, 'L', 'TOL17D801LMXR1', '10.0.146.44', 'HP', 'PROBOOK 645 G1', '5CG4290LVF', '', '', '', '', '', '', '', '', '', '', '', '', '17D8', 'ANALISTA DE VENTAS PYME', 'CAE RIO'),
(3236, 'C', 'CACSLCAS33DMX01', '192.1.212.133', 'HP', 'OPTIPLEX 960', 'D0M7DP1', '', '', '', '', '', '', '', '', '', '', '', '', '', 'BARRA 33', 'CAC SAN LUIS RIO COLORADO'),
(3237, 'L', 'TR11A5D011MXR1', '192.1.209.36', 'DELL', 'LATITUDE E6430', '1Z24CW1', '', '', '', '', '', '', '', '', '', '', '', '', 'TR11A5D', 'GERENTE', 'ALFER - 1er. PISO'),
(3238, 'L', 'TGE28BF01LMXR1', '192.1.203.73', 'DELL', 'LATITUDE E6430', '9XGQTZ1', '104000032701', '', '', '', '', '', '', '', '', '', '', '', '', 'GERENTE APLICACIÓN DATOS', 'ALFER -1er PSIO'),
(3239, 'C', 'TISAA0501DMXR1', '192.1.202.220', 'HP', 'COMPAQ 6305 SFF', 'MXL407082X', '', '', '', '', '', '', '', '', '', '', '', '', 'AA05', 'ANALISTA ', 'ALFER - 1er. PISO'),
(3240, 'L', 'TIC 7FBA01LMXR1', '192.1.209.158', 'DELL', 'LATITUDE E6430', '8PNTY1', '', '', '', '', '', '', '', '', '', '', '', '', '7FBA', 'JEFATURA CALIDAD Y SERV', 'ALFER - 1er. PISO'),
(3241, 'L', 'TIC51DD01LMXR1', '192.1.209.117', 'DELL', 'LATITUDE E6420', '93Y4BS1', '', '', '', '', '', '', '', '', '', '', '', '', '51DD', '', 'ALFER - 1er. PISO'),
(3242, 'L', 'TOM121C01LMXR1', '192.1.209.31', 'DELL', 'LATITUDE E6420', '3MYB6R1', '', '', '', '', '', '', '', '', '', '', '', '', 'TOM121C', 'JEFE OYM', 'ALFER - 1er. PISO'),
(3243, 'D', 'TAT91D801DMXR1', '10.0.146.33', 'HP', 'COMPAQ PRO 6305 SFF', 'MXL41001GX', '', '', '', '', '', '', '', '', '', '', '', '', 'TAT91D8', 'ASESOR', 'CAE RIO'),
(3244, 'L', 'TGE1E2F01LMXR1', '192.1.202.141', 'DELL', 'LATITUDE E6430', '6NYL7W1', '', '', '', '', '', '', '', '', '', '', '', '', 'TGE1E2F', 'JEFATURA ', 'ALFER - 1er PISO'),
(3245, 'L', 'TVC22BD01LMX01', '10.9.13.114', 'DELL', 'LATITUDE E6430', 'DK8HNX1', '', '', '', '', '', '', '', '', '', '', '', '', 'TVC22BD', 'ANALISTA', 'CAE MEXICALI');

-- --------------------------------------------------------

--
-- Table structure for table `t_marca`
--

CREATE TABLE `t_marca` (
  `id_marca` int(11) NOT NULL,
  `descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_marca`
--

INSERT INTO `t_marca` (`id_marca`, `descripcion`) VALUES
(9, 'DELL'),
(11, 'WESTERN DIGITAL'),
(14, 'XEROX');

-- --------------------------------------------------------

--
-- Table structure for table `t_modelo`
--

CREATE TABLE `t_modelo` (
  `id_modelo` int(11) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `procesador` varchar(20) DEFAULT NULL,
  `velocidad` varchar(20) DEFAULT NULL,
  `memoria` varchar(20) DEFAULT NULL,
  `disco_duro` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_modelo`
--

INSERT INTO `t_modelo` (`id_modelo`, `descripcion`, `procesador`, `velocidad`, `memoria`, `disco_duro`) VALUES
(1, 'ELITEDESK 705 G1', NULL, NULL, NULL, NULL),
(2, 'OPTIPLEX 990', NULL, NULL, NULL, NULL),
(7, 'OPTIPLEX 745', NULL, NULL, NULL, NULL),
(9, 'NOM PROCESADOR 44', '', '', '', ''),
(10, 'VENTILADOR DE CHASIS', '', '', '', ''),
(11, 'HDTG', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_paq_instalados`
--

CREATE TABLE `t_paq_instalados` (
  `id_paq_instalados` int(11) NOT NULL,
  `nombre_programa` varchar(60) NOT NULL,
  `t_programas_inst_id_programas_inst` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_partecomp`
--

CREATE TABLE `t_partecomp` (
  `id_partecomp` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_partecomp`
--

INSERT INTO `t_partecomp` (`id_partecomp`, `descripcion`) VALUES
(1, 'DISCO DURO'),
(3, 'PANTALLAS');

-- --------------------------------------------------------

--
-- Table structure for table `t_permisos`
--

CREATE TABLE `t_permisos` (
  `id_permisos` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `clave` varchar(45) NOT NULL,
  `privilegio` int(11) NOT NULL,
  `t_departamento_id_depto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_programas_inst`
--

CREATE TABLE `t_programas_inst` (
  `id_programas_inst` int(11) NOT NULL,
  `nom_paq_prog` varchar(45) DEFAULT NULL,
  `t_componente_comp_id_componente_comp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_puesto`
--

CREATE TABLE `t_puesto` (
  `id_puesto` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_puesto`
--

INSERT INTO `t_puesto` (`id_puesto`, `nombre`) VALUES
(1, 'Jefatura'),
(2, 'Supervisor'),
(3, 'Asesor '),
(4, 'Analista'),
(10, 'Gerente'),
(11, 'GERENTE-AREA');

-- --------------------------------------------------------

--
-- Table structure for table `t_usuarios`
--

CREATE TABLE `t_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario_universal` varchar(15) DEFAULT NULL,
  `num_usuario` int(11) DEFAULT NULL,
  `nombre_emp` varchar(45) NOT NULL,
  `num_ext` varchar(15) DEFAULT NULL,
  `num_tel` varchar(15) DEFAULT NULL,
  `correo_electronico` varchar(50) DEFAULT NULL,
  `comentarios` tinytext,
  `t_puesto_id_puesto` int(11) NOT NULL,
  `t_departamento_id_depto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_usuarios`
--

INSERT INTO `t_usuarios` (`id_usuario`, `usuario_universal`, `num_usuario`, `nombre_emp`, `num_ext`, `num_tel`, `correo_electronico`, `comentarios`, `t_puesto_id_puesto`, `t_departamento_id_depto`) VALUES
(1, 'UNIVERSAL X', 9999999, 'EMPLEADO PRUEBA ASIGNAR TODO LA LONGUITUD DEL', '9999', '999-999-99-99', 'nombre.apellido@mail.telce.com', 'PRUEBAS DE ESCRITURA ', 4, 81),
(3, 'UNIV 222', 120222, 'NOMBRE 2222', '9999', 'TEL 2222', 'CORREO ELECTRONICO 2222', 'COMENTARIOS 2222', 10, 64),
(4, 'UNIVERSAL 3333', 33333, 'NOMBRE 3333', '9999', 'TELEFONO 333', 'CORREO ELECTRONICO 333', 'COMENTARIO 333', 2, 130),
(5, 'UNIVERSAL', 9090, 'ZETA NOMBRE USUARIO', '9999', 'LKAJKA', 'ASDA', 'SA,MDN,MANDS', 2, 136),
(6, 'DKDJF', 939304, 'AZUCENA', '2356', '999-999-99-99', 'ASDAD', 'COMENTARIOS', 3, 130),
(10, '', 0, 'Sandra Ruth Tirado Sánchez', '3356', '', '', '', 1, 38),
(11, '', 0, 'REYNA SELENE ALVEREZ VALEZUELA ', '', '', 'reyna.valenzuela@mail.telcel.com', '', 4, 42),
(17, '', 0, 'Annel Alejandra Hernández Beltrán', '', '', '', '', 2, 78),
(18, '', 0, 'Francisco Javier López Jáuregui', '', '', '', '', 2, 79),
(19, '', 0, 'Cinthia Lorena Quintero Trejo', '', '', '', '', 2, 79),
(20, '', 0, 'Laura Galván Mora', '6351', '', '', '', 1, 42),
(21, '', 0, 'Mildred Rivera Rocha', '3316', '', '', '', 1, 43),
(22, '', 0, 'Mildred Rivera Rocha', '3316', '', '', '', 1, 43),
(23, '', 0, 'Nallely María Graciela Buen Abad Cárdenas', '6354', '', '', '', 1, 44),
(24, '', 0, 'Víctor Francisco de la Garza Lara', '6355', '', '', '', 1, 45),
(25, '', 0, 'Francisco Xavier Galván Cervantes', '', '664-628-0026', '', '', 1, 46),
(26, '', 0, 'Ezequiel Villalba Ochoa', '', '686-569-0047', '', '', 1, 47),
(27, '', 0, 'Marcos Kakuei Fong Coronado', '', '612-127-0067', '', '', 1, 48),
(28, '', 0, 'Benito Hernández Reyes', '2202', '', '', '', 1, 49),
(29, '', 0, 'Claudia Crystal Caballero Castro', '', '664-628-0028', '', '', 1, 50),
(30, '', 0, 'Alberto Martínez Lozano', '', '664-674-0086', '', '', 1, 51),
(31, '', 0, 'José Cruz Ayala Flores', '', '664-119-3973', '', '', 1, 52),
(32, '', 0, 'Rosa María Campos Torres', '', '664-628-0086', '', '', 1, 53),
(33, '', 0, 'Rosa María Campos Torres', '', '664-628-0086', '', '', 1, 54),
(34, '', 0, 'Donato Ernesto García López', '', '664-368-9200', '', '', 1, 55),
(35, '', 0, 'Fernanda Irma Noriega Estupiñán ', '', '686-569-0015', '', '', 1, 58),
(36, '', 0, 'Marco Antonio Guluarte Arce', '', '612-159-0200', '', '', 1, 57),
(37, '', 0, 'Cecilia Becerra Lew', '', '664-628-0098', '', '', 1, 58),
(38, '', 0, 'Gustavo Antonio Díaz Sánchez', '', '664-628-0029', '', '', 1, 59),
(39, '', 0, 'Karla Alejandra Flores Sigala', '', '664-120-0059', '', '', 1, 60),
(40, '', 0, 'Hugo Barajas', '', '664-386-4853', '', '', 1, 61),
(41, '', 0, 'Roberto Emilio Ramírez Rodríguez', '', '664-628-0060', '', '', 1, 62),
(42, '', 0, 'Arturo Vázquez Ríos', '', '664-628-0042', '', '', 1, 63),
(43, '', 0, 'Patricia González González', '', '664-674-0041', '', '', 1, 64),
(44, '', 0, 'Isis Urania Velasco Murillo', '', '', '', '', 2, 64),
(45, '', 0, 'Jose de Jesús García España', '', '', '', '', 2, 64),
(46, '', 0, 'José Gabriel Ruiz Ávila', '', '664-386-0200', '', '', 1, 65),
(47, '', 0, 'María de la Luz Valles Barrios', '', '', '', '', 2, 65),
(48, '', 0, 'Francisco Javier Escobar Ibarra', '', '664-628-2400', '', '', 1, 66),
(49, '', 0, 'Isidro Alberto Leyzaola Solano', '', '', '', '', 2, 66),
(50, '', 0, 'Lázaro Edgar Manuel Bautista Saavedra', '', '', '', '', 2, 66),
(51, '', 0, 'Hermelinda Armas Rodríguez', '', '664-666-0046', '', '', 1, 67),
(52, '', 0, 'Mireya Alejandra Narvaiz Ramos', '', '', '', '', 2, 67),
(53, '', 0, 'Elvia Jacqueline Regalado Moreno', '', '', '', '', 2, 67),
(54, '', 0, 'Carlos Alejandro Carrillo Pérez(STT) ', '', '', '', '', 2, 67),
(55, '', 0, 'Zahira Yazmín Rodríguez Curiel', '', '664-666-0032', '', '', 1, 68),
(56, '', 0, 'Patricia Macías Silva', '', '', '', '', 2, 68),
(57, '', 0, 'Jorge Salvador Figueroa Montaño', '', '664-120-0022', '', '', 1, 69),
(58, '', 0, 'Elvira Núñez Serafín', '', '', '', '', 2, 69),
(59, '', 0, 'Fernando Amador González', '', '664-375-5550', '', '', 1, 70),
(60, '', 0, 'Daniel Alberto Martínez González', '', '', '', '', 2, 70),
(61, '', 0, 'María Luisa Campos Rodríguez', '', '', '', '', 2, 70),
(62, '', 0, 'Carlos Alberto Yáñez Quintero', '', '664-628-0044', '', '', 1, 71),
(63, '', 0, 'Juan Manuel González Partida', '', '', '', '', 2, 71),
(64, '', 0, 'Cinthya Victoria Naranjo Gamez', '', '664-151-6900', '', '', 1, 72),
(65, '', 0, 'María Isabel Delgadillo Becerra', '', '', '', '', 2, 72),
(66, '', 0, 'Claudia María Meza Angulo', '', '', '', '', 2, 72),
(67, '', 0, 'Francisco Javier Flores Chávez', '', '665-851-5010', '', '', 1, 73),
(68, '', 0, 'David Rivera González', '', '', '', '', 2, 73),
(69, '', 0, 'Andrés Gilberto Gómez Ruiz', '', '661-112-4000', '', '', 1, 74),
(70, '', 0, 'Edhelmi Javier Castillo Camarillo', '', '', '', '', 2, 74),
(71, '', 0, 'Luis Alberto Juárez Muñuzuri', '', '646-171-5008', '', '', 1, 75),
(72, '', 0, 'Ismael Herrera Mejía', '', '', '', '', 2, 75),
(73, '', 0, 'Myrna Johanna Chávez Ramos', '', '', '', '', 2, 75),
(74, '', 0, 'Luis Alejandro Xoconostle Herrera', '', '646-151-4151', '', '', 1, 76),
(75, '', 0, 'Marcos Eduardo Vásquez Lopez', '', '', '', '', 2, 76),
(76, '', 0, 'María Fernanda Martín Uro', '', '686-221-9632', '', '', 1, 77),
(77, '', 0, 'Cesar Armando Ayala Díaz', '', '', '', '', 2, 77),
(78, '', 0, 'Rosa Iliana Urquijo Meza', '', '', '', '', 2, 77),
(79, '', 0, 'Cristina Nohemí Vergara Gutiérrez', '', '686-569-0005', '', '', 1, 78),
(80, '', 0, 'Omar Jaid Bertrand Angulo', '', '686-221-4483', '', '', 1, 79),
(81, '', 0, 'Santiago Álvarez Alfaro', '', '686-221-4494', '', '', 1, 80),
(82, '', 0, 'Liliana Escamilla Núñez', '', '', '', '', 2, 80),
(83, '', 0, 'Virginia Robles Salazar', '', '653-538-0042', '', '', 1, 81),
(84, '', 0, 'Oscar Arturo Acosta Núñez', '', '', '', '', 2, 81),
(85, '', 0, 'Pilar Corona Ortega', '', '612-157-9469', '', '', 1, 82),
(86, '', 0, 'Evangelina Rivera Manríquez', '', '', '', '', 2, 82),
(87, '', 0, 'Maxim Rojas Curiel', '', '', '', '', 2, 82),
(88, '', 0, 'Rosalinda Quijano Salinas', '', '612-127-0008', '', '', 1, 83),
(89, '', 0, 'Inés Yuriana López García', '', '', '', '', 2, 83),
(90, '', 0, 'Elsa Armida Guadalupe León León', '', '', '', '', 2, 83),
(91, '', 0, 'Rene Alberto Castro Bravo', '', '612-104-7258', '', '', 1, 79),
(92, 'TOP54A9', 21673, 'EMILIO LARA GUERRERO', '', '', 'emilio.lara@mail.telcel.com', '', 4, 44),
(93, '', 0, 'ADRIANA LEON CASTRO', '', '', 'adriana.leon@mail.telcel.com', '', 2, 83),
(94, 'TACE3D0', 0, 'ARMANDO MORENO BRACAMONTES', '1011', '', 'armando.bracamontes@mail.telcel.com', '', 4, 70),
(95, 'TAC63E8', 0, 'GABRIEL ADRIAN CASTILLO LOPEZ', '1011', '', 'gabriel.castillo@mail.telcel.com', '', 4, 70),
(96, '6893', 0, 'FABIAN GUTIERREZ', '', '', '', 'IP : 10.0.146.43', 4, 117),
(97, '1A7C', 0, 'FERNANDO CAMACHO', '', '', '', 'IP: 10.0.146.42', 10, 117),
(98, 'E4701', 0, 'ANA LAURA CALVILLO', '', '', '', 'IP. 10.0.146.73', 4, 117),
(99, '8699', 0, 'NANCY MENDOZA LONA', '', '', '', 'IP : 10.0.146.75', 4, 117),
(100, 'DE9E', 0, 'SAUL MONARES CHAVEZ', '', '', '', 'IP : 10.0.146.70', 4, 117),
(101, 'C485', 0, 'ANGEL SALTO', '', '', '', 'IP: 10.0.146.71\r\nTOLC48501LMXR1\r\n', 4, 117),
(102, 'D72E', 0, 'MANUEL MARTINEZ', '', '', '', 'IP: 10.0.146.72\r\nTOLD72E01LMXR1\r\n', 4, 117),
(103, 'E3C9', 0, 'JAZMIN CASTRO ', '', '', '', 'IP: 10.9.13.104\r\nTOLE3C901LMX01', 4, 117),
(104, 'D23F', 0, 'MARY GUICHO', '', '', '', 'IP: 10.9.13.103\r\nTOLD23FF01LMX01\r\n', 4, 117),
(105, 'D65D', 0, 'USI CRYSTEL LEON', '', '', '', 'IP: 10.9.13.107\r\nTOLD65D01LMX01\r\n', 4, 117),
(106, '17D8', 0, 'JUDITH BARRERAS', '', '', '', 'IP : 10.0.146.44\r\nTOL17D801LMXR1', 1, 117),
(107, 'ti7FBA', 0, 'FRANCISCO RAUDRY FLORES', '', '', '', 'IP: 192.1.209.158\r\n', 4, 144),
(108, 'TOM121C', 4636, 'SAMUEL FELIPE HAYASHI ROJAS', '', '', '', 'IP: 192.1.209.31', 1, 145),
(109, 'TR11A5D', 6749, 'RAUL LIZARRAGA SALGADO', '', '', '', 'IP: 192.1.209.36', 10, 123),
(110, 'TIC51DD', 20957, 'ROBERT ORDOÑEZ HERNANDEZ', '2296', '', '', 'IP : 192.1.209.117', 4, 144),
(111, 'TAT91D8', 37336, 'PAULA GEORGINA GONZALEZ TORRES', '', '', '', 'IP: 10.0.146.33', 4, 92),
(112, 'TGE1E2F', 7727, 'CARLOS CESAR NERI GARCIA', '3382', '', '', 'IP : 3382', 1, 113);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_componente_comp`
--
ALTER TABLE `t_componente_comp`
  ADD PRIMARY KEY (`id_componente_comp`),
  ADD KEY `fk_t_inventarios_t_usuarios1_idx` (`t_usuarios_id_usuario`),
  ADD KEY `fk_t_componente_comp_t_marca1_idx` (`t_marca_id_marca`),
  ADD KEY `fk_t_componente_comp_t_modelo1_idx` (`t_modelo_id_modelo`),
  ADD KEY `fk_t_componente_comp_t_partecomp1_idx` (`t_partecomp_id_partecomp`);

--
-- Indexes for table `t_datos_config`
--
ALTER TABLE `t_datos_config`
  ADD PRIMARY KEY (`id_datos_config`);

--
-- Indexes for table `t_departamento`
--
ALTER TABLE `t_departamento`
  ADD PRIMARY KEY (`id_depto`),
  ADD KEY `fk_departamento_gerencia_idx` (`gerencia_id_gerencia`);

--
-- Indexes for table `t_epo_anterior`
--
ALTER TABLE `t_epo_anterior`
  ADD PRIMARY KEY (`id_epo_anterior`);

--
-- Indexes for table `t_epo_cajas`
--
ALTER TABLE `t_epo_cajas`
  ADD PRIMARY KEY (`id_epo_cajas`),
  ADD KEY `fk_epo_cajas_t_usuarios1_idx` (`t_usuarios_id_usuario`);

--
-- Indexes for table `t_epo_nuevo`
--
ALTER TABLE `t_epo_nuevo`
  ADD PRIMARY KEY (`id_epo_nuevo`);

--
-- Indexes for table `t_espef_cpu`
--
ALTER TABLE `t_espef_cpu`
  ADD PRIMARY KEY (`id_espef_cpu`);

--
-- Indexes for table `t_gerencia`
--
ALTER TABLE `t_gerencia`
  ADD PRIMARY KEY (`id_gerencia`);

--
-- Indexes for table `t_inst_salida`
--
ALTER TABLE `t_inst_salida`
  ADD PRIMARY KEY (`id_inst_salida`),
  ADD KEY `fk_t_inst_salida_t_datos_config1_idx` (`t_datos_config_id_datos_config`),
  ADD KEY `fk_t_inst_salida_t_componente_comp1_idx` (`t_componente_comp_id_componente_comp`);

--
-- Indexes for table `t_inventario_temporal`
--
ALTER TABLE `t_inventario_temporal`
  ADD PRIMARY KEY (`id_inventario_temporal`);

--
-- Indexes for table `t_marca`
--
ALTER TABLE `t_marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indexes for table `t_modelo`
--
ALTER TABLE `t_modelo`
  ADD PRIMARY KEY (`id_modelo`);

--
-- Indexes for table `t_paq_instalados`
--
ALTER TABLE `t_paq_instalados`
  ADD PRIMARY KEY (`id_paq_instalados`),
  ADD KEY `fk_t_paq_instalados_t_programas_inst1_idx` (`t_programas_inst_id_programas_inst`);

--
-- Indexes for table `t_partecomp`
--
ALTER TABLE `t_partecomp`
  ADD PRIMARY KEY (`id_partecomp`);

--
-- Indexes for table `t_permisos`
--
ALTER TABLE `t_permisos`
  ADD PRIMARY KEY (`id_permisos`),
  ADD KEY `fk_t_permisos_t_departamento1_idx` (`t_departamento_id_depto`);

--
-- Indexes for table `t_programas_inst`
--
ALTER TABLE `t_programas_inst`
  ADD PRIMARY KEY (`id_programas_inst`),
  ADD KEY `fk_t_programas_inst_t_componente_comp1_idx` (`t_componente_comp_id_componente_comp`);

--
-- Indexes for table `t_puesto`
--
ALTER TABLE `t_puesto`
  ADD PRIMARY KEY (`id_puesto`);

--
-- Indexes for table `t_usuarios`
--
ALTER TABLE `t_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_t_usuarios_t_puesto1_idx` (`t_puesto_id_puesto`),
  ADD KEY `fk_t_usuarios_t_departamento1_idx` (`t_departamento_id_depto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_componente_comp`
--
ALTER TABLE `t_componente_comp`
  MODIFY `id_componente_comp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `t_datos_config`
--
ALTER TABLE `t_datos_config`
  MODIFY `id_datos_config` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_departamento`
--
ALTER TABLE `t_departamento`
  MODIFY `id_depto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `t_epo_anterior`
--
ALTER TABLE `t_epo_anterior`
  MODIFY `id_epo_anterior` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_epo_cajas`
--
ALTER TABLE `t_epo_cajas`
  MODIFY `id_epo_cajas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_epo_nuevo`
--
ALTER TABLE `t_epo_nuevo`
  MODIFY `id_epo_nuevo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_espef_cpu`
--
ALTER TABLE `t_espef_cpu`
  MODIFY `id_espef_cpu` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_gerencia`
--
ALTER TABLE `t_gerencia`
  MODIFY `id_gerencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `t_inst_salida`
--
ALTER TABLE `t_inst_salida`
  MODIFY `id_inst_salida` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Esta tabla contendra el formato de instalación y salida.\n';
--
-- AUTO_INCREMENT for table `t_inventario_temporal`
--
ALTER TABLE `t_inventario_temporal`
  MODIFY `id_inventario_temporal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3246;
--
-- AUTO_INCREMENT for table `t_marca`
--
ALTER TABLE `t_marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `t_modelo`
--
ALTER TABLE `t_modelo`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `t_paq_instalados`
--
ALTER TABLE `t_paq_instalados`
  MODIFY `id_paq_instalados` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_partecomp`
--
ALTER TABLE `t_partecomp`
  MODIFY `id_partecomp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `t_permisos`
--
ALTER TABLE `t_permisos`
  MODIFY `id_permisos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_programas_inst`
--
ALTER TABLE `t_programas_inst`
  MODIFY `id_programas_inst` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_puesto`
--
ALTER TABLE `t_puesto`
  MODIFY `id_puesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `t_usuarios`
--
ALTER TABLE `t_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_componente_comp`
--
ALTER TABLE `t_componente_comp`
  ADD CONSTRAINT `fk_t_componente_comp_t_marca1` FOREIGN KEY (`t_marca_id_marca`) REFERENCES `t_marca` (`id_marca`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_t_componente_comp_t_modelo1` FOREIGN KEY (`t_modelo_id_modelo`) REFERENCES `t_modelo` (`id_modelo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_t_componente_comp_t_partecomp1` FOREIGN KEY (`t_partecomp_id_partecomp`) REFERENCES `t_partecomp` (`id_partecomp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_t_inventarios_t_usuarios1` FOREIGN KEY (`t_usuarios_id_usuario`) REFERENCES `t_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_departamento`
--
ALTER TABLE `t_departamento`
  ADD CONSTRAINT `fk_departamento_gerencia` FOREIGN KEY (`gerencia_id_gerencia`) REFERENCES `t_gerencia` (`id_gerencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_epo_cajas`
--
ALTER TABLE `t_epo_cajas`
  ADD CONSTRAINT `fk_epo_cajas_t_usuarios1` FOREIGN KEY (`t_usuarios_id_usuario`) REFERENCES `t_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_inst_salida`
--
ALTER TABLE `t_inst_salida`
  ADD CONSTRAINT `fk_t_inst_salida_t_componente_comp1` FOREIGN KEY (`t_componente_comp_id_componente_comp`) REFERENCES `t_componente_comp` (`id_componente_comp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_t_inst_salida_t_datos_config1` FOREIGN KEY (`t_datos_config_id_datos_config`) REFERENCES `t_datos_config` (`id_datos_config`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_paq_instalados`
--
ALTER TABLE `t_paq_instalados`
  ADD CONSTRAINT `fk_t_paq_instalados_t_programas_inst1` FOREIGN KEY (`t_programas_inst_id_programas_inst`) REFERENCES `t_programas_inst` (`id_programas_inst`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_permisos`
--
ALTER TABLE `t_permisos`
  ADD CONSTRAINT `fk_t_permisos_t_departamento1` FOREIGN KEY (`t_departamento_id_depto`) REFERENCES `t_departamento` (`id_depto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_programas_inst`
--
ALTER TABLE `t_programas_inst`
  ADD CONSTRAINT `fk_t_programas_inst_t_componente_comp1` FOREIGN KEY (`t_componente_comp_id_componente_comp`) REFERENCES `t_componente_comp` (`id_componente_comp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `t_usuarios`
--
ALTER TABLE `t_usuarios`
  ADD CONSTRAINT `fk_t_usuarios_t_departamento1` FOREIGN KEY (`t_departamento_id_depto`) REFERENCES `t_departamento` (`id_depto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_t_usuarios_t_puesto1` FOREIGN KEY (`t_puesto_id_puesto`) REFERENCES `t_puesto` (`id_puesto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
