-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2022 a las 21:06:09
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `codigoCliente` int(4) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`codigoCliente`, `Nombre`, `Apellidos`, `direccion`, `telefono`) VALUES
(1, 'Juan Sebastian', 'Cabrera Salazar', 'Calle 14 #27-06', '3133246040'),
(2, 'Carlos Andres', 'Castro Polo', 'Calle 22 #14-A2', '3125468796'),
(3, 'Camilo Andres', 'Polo Celeste', 'calle 12 #22-15', '3124568749'),
(4, 'Maria del', 'Pilar Agudelo', 'calle 12 #45-12', '3215465789'),
(5, 'Sebastian', 'Ramirez Castillo', 'Carrera 22 #A12-15', '3251648796'),
(6, 'Sandra Lorena', 'Salazar Pastrana', 'Calle 14 #27-06', '3128007156'),
(7, 'Alvaro', 'CAbrera Serrano', 'Calle 14 #27-06', '3142666990'),
(8, 'Jeysson Stiven', 'Cabrera Salazar', 'Calle 14 #27-06 AP 103', '3168454689'),
(9, 'Jesus Esteban', 'Delgado Murcia', 'Calle 24 #26-22', '3265154781'),
(10, 'Jesus Angel', 'Moreno Gonzalez', 'Carre 12 A15 #25-12', '3251654879'),
(11, 'Mariana', 'Guerrero Salazar', 'Calle 12 #45-21 AV 2', '3156457894'),
(12, 'Zinthya Tamra', 'Olaya Vargaz', 'Carre 22 #15-16', '3256148754'),
(13, 'Alejandra', 'Martinez Gonzalez', 'Calle 12 #25-06', '3123947452'),
(14, 'Mara Camilar', 'Puentes Gonzalez', 'Calle 15 #42-02', '3251648794'),
(15, 'Angie', 'Guadalupe Verdugo', 'Calle 15 #42-06', '3216548794'),
(16, 'Maria Valentina', 'Flores Martinez', 'Carrera 25 A12 #15-02', '3122939017'),
(17, 'Miguel Angel', 'Suaza Zapata', 'Carrera 12 Av. palmas #21-12', '3265148795'),
(18, 'Jesus Bernardo', 'Rubiano Mendez', 'Calle 15 #12-06', '3125654894'),
(19, 'July Tatiana', 'Velez Montero', 'Calle 15 #16-23', '3126791220'),
(20, 'Stiven', 'Gonzalez Masmela', 'calle 15 #45-12', '3121351428');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `codigoProducto` int(4) NOT NULL,
  `codigoCliente` int(4) NOT NULL,
  `Date_Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codigoProducto` int(4) NOT NULL,
  `existencias` int(10) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `codigoProveedor` int(40) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `dirrecion` varchar(40) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`codigoProveedor`, `Nombre`, `Apellidos`, `dirrecion`, `telefono`) VALUES
(1, 'Maria Valentina', 'Lizcano Garcia', 'Calle 12 #15-15', '312561549'),
(2, 'Maria Jose', 'Ramirez Soles', 'Calle 15 #15-45', '3124584987'),
(3, 'Juan Pablo', 'Andrades', 'Calle 15 #45-12', '3124578942'),
(4, 'Maria de Pilar', 'Agudelo Pinzon', 'Calle 18 #25-15', '3254187965'),
(5, 'Jesus Angel', 'Moreno Gonzalez', 'calle 59 #22-66', '3013141818'),
(6, 'Hasbleidy', 'Quesada Guarnizo', 'Calle 45 #26-25', '3251549876'),
(7, 'Daniel Felipe', 'Lugo Diaz', 'Calle 25 #45-16', '3215468975'),
(8, 'Hasbleidy', 'Quesada Guarnizo', 'Calle 45 #26-25', '3251549876'),
(9, 'Jesus Armando', 'Benavidez Soles', 'Calle 22 #45-25', '3124615489'),
(10, 'Hasbleidy', 'Quesada Guarnizo', 'Calle 45 #26-25', '3251549876'),
(11, 'Maria Camila', 'Velez Ramirez', 'Calle 15 #45-23', '3215454789'),
(12, 'Carlos Stiven', 'Benavidez Loreno', 'Calle 15 #25-35', '3125461879'),
(13, 'Maria del Campo', 'Salazar Gonzalez', 'Calle 24 #25-02', '3245615489');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codigoCliente`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD KEY `compra_producto` (`codigoProducto`),
  ADD KEY `compra_cliemte` (`codigoCliente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigoProducto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`codigoProveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codigoCliente` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `codigoProducto` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `codigoProveedor` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_cliemte` FOREIGN KEY (`codigoCliente`) REFERENCES `cliente` (`codigoCliente`),
  ADD CONSTRAINT `compra_producto` FOREIGN KEY (`codigoProducto`) REFERENCES `producto` (`codigoProducto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
