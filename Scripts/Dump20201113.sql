CREATE DATABASE  IF NOT EXISTS `tp_banco` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tp_banco`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: tp_banco
-- ------------------------------------------------------
-- Server version	5.1.73-community

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
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentas` (
  `NroDeCuenta` int(11) NOT NULL AUTO_INCREMENT,
  `IdTipoDeCuenta` int(11) NOT NULL,
  `FechaCreacion` date DEFAULT NULL,
  `CBU` varchar(50) NOT NULL,
  `Saldo` decimal(10,0) NOT NULL DEFAULT '10000',
  `IdUsuario` int(11) NOT NULL,
  PRIMARY KEY (`NroDeCuenta`,`IdTipoDeCuenta`),
  KEY `IdTipoDeCuenta` (`IdTipoDeCuenta`),
  KEY `IdUsuario` (`IdUsuario`),
  CONSTRAINT `cuentas_ibfk_1` FOREIGN KEY (`IdTipoDeCuenta`) REFERENCES `tiposdecuentas` (`IdTipoDeCuenta`),
  CONSTRAINT `cuentas_ibfk_2` FOREIGN KEY (`IdUsuario`) REFERENCES `usuarios` (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadosdeprestamo`
--

DROP TABLE IF EXISTS `estadosdeprestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estadosdeprestamo` (
  `IdEstado` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadosdeprestamo`
--

LOCK TABLES `estadosdeprestamo` WRITE;
/*!40000 ALTER TABLE `estadosdeprestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadosdeprestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generos` (
  `IdGenero` int(11) NOT NULL AUTO_INCREMENT,
  `DescripcionGenero` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Masculino'),(2,'Femenino'),(3,'n/a');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientos` (
  `IdMovimiento` int(11) NOT NULL AUTO_INCREMENT,
  `IdUsuario` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Detalle` varchar(50) DEFAULT NULL,
  `Importe` decimal(5,4) NOT NULL,
  `IdTipoMovimiento` int(11) NOT NULL,
  PRIMARY KEY (`IdMovimiento`),
  KEY `IdTipoMovimiento` (`IdTipoMovimiento`),
  KEY `IdUsuario` (`IdUsuario`),
  CONSTRAINT `movimientos_ibfk_1` FOREIGN KEY (`IdTipoMovimiento`) REFERENCES `tiposdemovimientos` (`IdTipoMovimiento`),
  CONSTRAINT `movimientos_ibfk_2` FOREIGN KEY (`IdUsuario`) REFERENCES `usuarios` (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamoporcuota`
--

DROP TABLE IF EXISTS `prestamoporcuota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestamoporcuota` (
  `IdPrestamo` int(11) NOT NULL,
  `NroCuota` tinyint(4) NOT NULL,
  `FechaPago` date NOT NULL,
  `Estado` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`IdPrestamo`,`NroCuota`),
  CONSTRAINT `prestamoporcuota_ibfk_1` FOREIGN KEY (`IdPrestamo`) REFERENCES `prestamos` (`IdPrestamo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamoporcuota`
--

LOCK TABLES `prestamoporcuota` WRITE;
/*!40000 ALTER TABLE `prestamoporcuota` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamoporcuota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestamos` (
  `IdPrestamo` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `ImporteConIntereses` decimal(5,4) NOT NULL,
  `ImporteSolicitado` decimal(5,4) NOT NULL,
  `PlazoDePago` int(11) NOT NULL,
  `ValorCuotaMensual` decimal(5,4) NOT NULL,
  `CantidadDeCuotas` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  `IdEstado` int(11) NOT NULL,
  PRIMARY KEY (`IdPrestamo`),
  KEY `IdUsuario` (`IdUsuario`),
  KEY `IdEstado` (`IdEstado`),
  CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `usuarios` (`IdUsuario`),
  CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`IdEstado`) REFERENCES `estadosdeprestamo` (`IdEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposdecuentas`
--

DROP TABLE IF EXISTS `tiposdecuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiposdecuentas` (
  `IdTipoDeCuenta` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdTipoDeCuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposdecuentas`
--

LOCK TABLES `tiposdecuentas` WRITE;
/*!40000 ALTER TABLE `tiposdecuentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiposdecuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposdemovimientos`
--

DROP TABLE IF EXISTS `tiposdemovimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiposdemovimientos` (
  `IdTipoMovimiento` int(11) NOT NULL AUTO_INCREMENT,
  `DescripcionTipoDeMovimiento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdTipoMovimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposdemovimientos`
--

LOCK TABLES `tiposdemovimientos` WRITE;
/*!40000 ALTER TABLE `tiposdemovimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiposdemovimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposdeusuarios`
--

DROP TABLE IF EXISTS `tiposdeusuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiposdeusuarios` (
  `IdTipoDeUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `DescripcionTipoDeUsuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdTipoDeUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposdeusuarios`
--

LOCK TABLES `tiposdeusuarios` WRITE;
/*!40000 ALTER TABLE `tiposdeusuarios` DISABLE KEYS */;
INSERT INTO `tiposdeusuarios` VALUES (1,'Cliente'),(2,'Administrador');
/*!40000 ALTER TABLE `tiposdeusuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `DNI` varchar(11) NOT NULL,
  `Cuil` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `NombreUsuario` varchar(50) NOT NULL,
  `Contraseña` varchar(50) NOT NULL,
  `IdGenero` int(11) NOT NULL,
  `ESTADO` bit(1) NOT NULL,
  `IdTipoDeUsuario` int(11) NOT NULL,
  `NumeroDeTelefono` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdUsuario`),
  UNIQUE KEY `NombreUsuario_UNIQUE` (`NombreUsuario`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `IdGenero` (`IdGenero`),
  KEY `IdTipoDeUsuario` (`IdTipoDeUsuario`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`IdGenero`) REFERENCES `generos` (`IdGenero`),
  CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`IdTipoDeUsuario`) REFERENCES `tiposdeusuarios` (`IdTipoDeUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'20586214','27205862141','Sofia','Marco','1990-12-01','sofiamarco1990@gmail.com','Sofia0076','sofia123',2,'',1,'1168545236','Formosa 123'),(2,'40586222','21405862224','Agustin','Juarez','1985-06-03','agusjuarez_1985@hotmail.com','Agus0076','agus123',1,'',1,'1186952499','Cordoba 148'),(3,'26985147','27269851477','Cristian','Castro','1998-06-03','cristiangabrielcastro@gmail.com','Criss0076','cris123',1,'',2,'1124589651','San Luis 285');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-13 14:13:27
