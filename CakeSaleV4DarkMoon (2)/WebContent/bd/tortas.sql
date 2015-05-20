-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: tortas
-- ------------------------------------------------------
-- Server version	5.6.23-log
create database tortas;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acceso`
--


DROP TABLE IF EXISTS `acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acceso` (
  `idAcceso` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `ruta` varchar(45) NOT NULL,
  PRIMARY KEY (`idAcceso`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categoriainsumo`
--

DROP TABLE IF EXISTS `categoriainsumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoriainsumo` (
  `idCategoriaInsumo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoriaInsumo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categoriaproducto`
--

DROP TABLE IF EXISTS `categoriaproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoriaproducto` (
  `idCategoriaProducto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoriaProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `distrito`
--

DROP TABLE IF EXISTS `distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distrito` (
  `idDistrito` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idDistrito`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estadodetallepedido`
--

DROP TABLE IF EXISTS `estadodetallepedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadodetallepedido` (
  `idEstadoDetallePedido` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEstadoDetallePedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estadopedido`
--

DROP TABLE IF EXISTS `estadopedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadopedido` (
  `idEstadoPedido` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idEstadoPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historialpedido`
--

DROP TABLE IF EXISTS `historialpedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historialpedido` (
  `idHistorial Pedido` int(11) NOT NULL AUTO_INCREMENT,
  `estadoActual` varchar(45) DEFAULT NULL,
  `estadoNuevo` varchar(45) DEFAULT NULL,
  `fechaModificacion` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `id_pedido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idHistorial Pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `historialproducto`
--

DROP TABLE IF EXISTS `historialproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historialproducto` (
  `idHistorialProducto` int(11) NOT NULL AUTO_INCREMENT,
  `precioActual` varchar(45) DEFAULT NULL,
  `precioNuevo` varchar(45) DEFAULT NULL,
  `FechaModificacion` varchar(45) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  `id_producto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idHistorialProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `insumo`
--

DROP TABLE IF EXISTS `insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insumo` (
  `idInsumo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  `imagen` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `estado` int(11) NOT NULL,
  `idCategoriaInsumo` int(11) NOT NULL,
  PRIMARY KEY (`idInsumo`),
  KEY `fk_Insumo_CategoriaInsumo1_idx` (`idCategoriaInsumo`),
  CONSTRAINT `fk_Insumo_CategoriaInsumo1` FOREIGN KEY (`idCategoriaInsumo`) REFERENCES `categoriainsumo` (`idCategoriaInsumo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido` (
  `idPedido` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente_idCliente` int(11) NOT NULL,
  `fecha Pedido` date NOT NULL,
  `fecha Entrega` date NOT NULL,
  `Total` double NOT NULL,
  `destinatario` varchar(45) NOT NULL,
  `lugar de entrega` date NOT NULL,
  `dedicatoria` varchar(45) DEFAULT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idEstadoPedido` int(11) NOT NULL,
  PRIMARY KEY (`idPedido`),
  KEY `fk_Pedido_EstadoPedido1_idx` (`idEstadoPedido`),
  CONSTRAINT `fk_Pedido_EstadoPedido1` FOREIGN KEY (`idEstadoPedido`) REFERENCES `estadopedido` (`idEstadoPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedido_has_insumo`
--

DROP TABLE IF EXISTS `pedido_has_insumo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_has_insumo` (
  `idPedido` int(11) NOT NULL,
  `idInsumo` int(11) NOT NULL,
  `precio` double DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPedido`,`idInsumo`),
  KEY `fk_Pedido_has_Insumo_Insumo1_idx` (`idInsumo`),
  KEY `fk_Pedido_has_Insumo_Pedido1_idx` (`idPedido`),
  CONSTRAINT `fk_Pedido_has_Insumo_Insumo1` FOREIGN KEY (`idInsumo`) REFERENCES `insumo` (`idInsumo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_has_Insumo_Pedido1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pedido_has_producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `idProducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio` double NOT NULL,
  `imagen_bytes` longblob NOT NULL,
  `imagen_nombre` text NOT NULL,
  `imagen_content_type` text NOT NULL,
  `estado` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `idTipoProducto` int(11) NOT NULL,
  `idCategoriaProducto` int(11) NOT NULL,
  `idSubCategoriaProducto` int(11) NOT NULL,
  `idUsuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `fk_Producto_CategoriaProducto1_idx` (`idCategoriaProducto`),
  KEY `fk_Producto_SubCategoriaProducto1_idx` (`idSubCategoriaProducto`),
  KEY `fk_Producto_TipoProducto1_idx` (`idTipoProducto`),
  CONSTRAINT `fk_Producto_CategoriaProducto1` FOREIGN KEY (`idCategoriaProducto`) REFERENCES `categoriaproducto` (`idCategoriaProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_SubCategoriaProducto1` FOREIGN KEY (`idSubCategoriaProducto`) REFERENCES `subcategoriaproducto` (`idSubCategoriaProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_TipoProducto1` FOREIGN KEY (`idTipoProducto`) REFERENCES `tipoproducto` (`idTipoProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TABLE IF EXISTS `pedido_has_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedido_has_producto` (
  `idPedido` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Precio` double NOT NULL,
  `idEstadoDetallePedido` int(11) NOT NULL,
  PRIMARY KEY (`idPedido`,`idProducto`),
  KEY `fk_Pedido_has_Producto_Producto1_idx` (`idProducto`),
  KEY `fk_Pedido_has_Producto_Pedido_idx` (`idPedido`),
  KEY `fk_Pedido_has_Producto_EstadoDetallePedido1_idx` (`idEstadoDetallePedido`),
  CONSTRAINT `fk_Pedido_has_Producto_EstadoDetallePedido1` FOREIGN KEY (`idEstadoDetallePedido`) REFERENCES `estadodetallepedido` (`idEstadoDetallePedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_has_Producto_Pedido` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedido_has_Producto_Producto1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `producto`
--



--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rol_acceso`
--

DROP TABLE IF EXISTS `rol_acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol_acceso` (
  `idRol` int(11) NOT NULL,
  `idAcceso` int(11) NOT NULL,
  PRIMARY KEY (`idRol`,`idAcceso`),
  KEY `fk_Rol_has_Acceso_Acceso1_idx` (`idAcceso`),
  KEY `fk_Rol_has_Acceso_Rol1_idx` (`idRol`),
  CONSTRAINT `fk_Rol_has_Acceso_Acceso1` FOREIGN KEY (`idAcceso`) REFERENCES `acceso` (`idAcceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Rol_has_Acceso_Rol1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subcategoriaproducto`
--

DROP TABLE IF EXISTS `subcategoriaproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategoriaproducto` (
  `idSubCategoriaProducto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `idCategoriaProducto` int(11) NOT NULL,
  PRIMARY KEY (`idSubCategoriaProducto`),
  KEY `fk_SubCategoriaProducto_CategoriaProducto1_idx` (`idCategoriaProducto`),
  CONSTRAINT `fk_SubCategoriaProducto_CategoriaProducto1` FOREIGN KEY (`idCategoriaProducto`) REFERENCES `categoriaproducto` (`idCategoriaProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipoproducto`
--

DROP TABLE IF EXISTS `tipoproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoproducto` (
  `idTipoProducto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `cell` varchar(45) NOT NULL,
  `fechaRegistro` date NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `dni` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `estado` int(11) NOT NULL,
  `idDistrito` int(11) NOT NULL,
  `idRol` int(11) NOT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `fk_usuario_Rol1_idx` (`idRol`),
  KEY `fk_usuario_Distrito1_idx` (`idDistrito`),
  CONSTRAINT `fk_usuario_Distrito1` FOREIGN KEY (`idDistrito`) REFERENCES `distrito` (`idDistrito`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_Rol1` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-18 16:00:16
