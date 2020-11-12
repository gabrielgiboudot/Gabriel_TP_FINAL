-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: tp_banco
-- ------------------------------------------------------
-- Server version	5.7.32-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas` (
  `NroDeCuenta` int(11) NOT NULL AUTO_INCREMENT,
  `IdTipoDeCuenta` int(11) NOT NULL,
  `FechaCreacion` datetime DEFAULT NULL,
  `CBU` varchar(50) NOT NULL,
  `Saldo` decimal(9,4) NOT NULL DEFAULT '10000.0000',
  PRIMARY KEY (`NroDeCuenta`,`IdTipoDeCuenta`),
  KEY `IdTipoDeCuenta` (`IdTipoDeCuenta`),
  CONSTRAINT `cuentas_ibfk_1` FOREIGN KEY (`IdTipoDeCuenta`) REFERENCES `tiposdecuentas` (`IdTipoDeCuenta`)
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
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `IdDireccion` int(11) NOT NULL AUTO_INCREMENT,
  `Direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdDireccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccionporcliente`
--

DROP TABLE IF EXISTS `direccionporcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccionporcliente` (
  `IdUsuario` int(11) NOT NULL,
  `IdDireccion` int(11) NOT NULL,
  `IdLocalidad` int(11) NOT NULL,
  PRIMARY KEY (`IdUsuario`,`IdDireccion`),
  KEY `IdDireccion` (`IdDireccion`),
  KEY `IdLocalidad` (`IdLocalidad`),
  CONSTRAINT `direccionporcliente_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `usuarios` (`IdUsuario`),
  CONSTRAINT `direccionporcliente_ibfk_2` FOREIGN KEY (`IdDireccion`) REFERENCES `direcciones` (`IdDireccion`),
  CONSTRAINT `direccionporcliente_ibfk_3` FOREIGN KEY (`IdLocalidad`) REFERENCES `localidades` (`IdLocalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccionporcliente`
--

LOCK TABLES `direccionporcliente` WRITE;
/*!40000 ALTER TABLE `direccionporcliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccionporcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `generos` VALUES (1,'Masculino'),(2,'Femenino'),(3,'n/d');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidades`
--

DROP TABLE IF EXISTS `localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localidades` (
  `IdLocalidad` int(11) NOT NULL AUTO_INCREMENT,
  `DescripcionLocalidad` varchar(50) DEFAULT NULL,
  `IdProvincia` int(11) NOT NULL,
  PRIMARY KEY (`IdLocalidad`),
  KEY `IdProvincia` (`IdProvincia`),
  CONSTRAINT `localidades_ibfk_1` FOREIGN KEY (`IdProvincia`) REFERENCES `provincias` (`IdProvincia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidades`
--

LOCK TABLES `localidades` WRITE;
/*!40000 ALTER TABLE `localidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `localidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos` (
  `IdMovimiento` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` datetime NOT NULL,
  `Detalle` varchar(50) DEFAULT NULL,
  `Importe` decimal(5,4) NOT NULL,
  `IdTipoMovimiento` int(11) NOT NULL,
  PRIMARY KEY (`IdMovimiento`),
  KEY `IdTipoMovimiento` (`IdTipoMovimiento`),
  CONSTRAINT `movimientos_ibfk_1` FOREIGN KEY (`IdTipoMovimiento`) REFERENCES `tiposdemovimientos` (`IdTipoMovimiento`)
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
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincias` (
  `IdProvincia` int(11) NOT NULL AUTO_INCREMENT,
  `DescripcionProvincia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdProvincia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonosporcliente`
--

DROP TABLE IF EXISTS `telefonosporcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonosporcliente` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `NumeroDeTelefono` varchar(50) NOT NULL,
  PRIMARY KEY (`IdUsuario`,`NumeroDeTelefono`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonosporcliente`
--

LOCK TABLES `telefonosporcliente` WRITE;
/*!40000 ALTER TABLE `telefonosporcliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefonosporcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposdecuentas`
--

DROP TABLE IF EXISTS `tiposdecuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `DNI` varchar(11) NOT NULL,
  `Cuil` varchar(50) DEFAULT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `NombreUsuario` varchar(50) NOT NULL,
  `Contraseña` varchar(50) NOT NULL,
  `IdGenero` int(11) NOT NULL,
  `ESTADO` bit(1) NOT NULL,
  `IdTipoDeUsuario` int(11) NOT NULL,
  PRIMARY KEY (`IdUsuario`),
  KEY `IdGenero` (`IdGenero`),
  KEY `IdTipoDeUsuario` (`IdTipoDeUsuario`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`IdGenero`) REFERENCES `generos` (`IdGenero`),
  CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`IdTipoDeUsuario`) REFERENCES `tiposdeusuarios` (`IdTipoDeUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'40145862','27401458620','Martin','Perez','1990-06-03','martinperez1990@gmail.com','martin1990','martin123',1,_binary '',1),(2,'41586932','20415869321','Juana','Morales','1992-12-01','moralesjuana92@hotmail.com','juana1992','juana123',2,_binary '',1),(3,'36958222','26369582224','Pablo','Argon','1984-02-15','pargon84@banco.com.ar','argon1984','argon123',1,_binary '',2),(4,'40586999','20405869991','Cristian','Castro','1998-06-03','cristiangabrielcastro@gmail.com','criss0076','cristian123',1,_binary '',2);
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

-- Dump completed on 2020-11-11 22:28:33
