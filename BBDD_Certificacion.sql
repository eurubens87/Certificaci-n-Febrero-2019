-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aspirantes`
--

DROP TABLE IF EXISTS `aspirantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `aspirantes` (
  `DNI` int(11) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `fnac` varchar(45) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `examen_medico` varchar(2) DEFAULT NULL,
  `documentacion_ok` varchar(2) DEFAULT NULL,
  `escuela_Nombre_escuela` varchar(50) NOT NULL,
  PRIMARY KEY (`DNI`,`escuela_Nombre_escuela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspirantes`
--

LOCK TABLES `aspirantes` WRITE;
/*!40000 ALTER TABLE `aspirantes` DISABLE KEYS */;
INSERT INTO `aspirantes` VALUES (32941521,'Ruben Andres','Caceres','Rivadavia 665','30/10/2012','masculino','NO','SI','Escuela número 31'),(34666782,'Silvina','Lezcano','Entre Ríos 504','16/11/2009','femenino','NO','SI','Colegio Nacional General San Martín'),(35467876,'Natalia','Ferzel','Copenague 334','19/07/2010','femenino','NO','SI','Escuela número 31'),(38123634,'Juan Matías','Sommaruga','Sarmiento 889','12/12/2014','masculino','NO','SI','Colegio Nacional General San Martín'),(38777321,'Juan Manuel','Fernández','San Martín 775','30/10/2013','masculino','NO','SI','Colegio Nacional General San Martín');
/*!40000 ALTER TABLE `aspirantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aspirantes_has_competencias`
--

DROP TABLE IF EXISTS `aspirantes_has_competencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `aspirantes_has_competencias` (
  `aspirantes_DNI` int(11) NOT NULL,
  `aspirantes_escuela_Nombre_escuela` varchar(50) NOT NULL,
  `competencias_idCompetencias` int(11) NOT NULL,
  `competencias_categorias_nombre_categoria` varchar(45) NOT NULL,
  `competencias_disciplinas_disciplina` varchar(45) NOT NULL,
  `competencias_torneos_idTorneos` int(11) NOT NULL,
  `competencias_torneos_sedes_idSedes` int(11) NOT NULL,
  `compitio` varchar(2) DEFAULT NULL,
  `resultado` int(11) DEFAULT NULL,
  PRIMARY KEY (`aspirantes_DNI`,`aspirantes_escuela_Nombre_escuela`,`competencias_idCompetencias`,`competencias_categorias_nombre_categoria`,`competencias_disciplinas_disciplina`,`competencias_torneos_idTorneos`,`competencias_torneos_sedes_idSedes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspirantes_has_competencias`
--

LOCK TABLES `aspirantes_has_competencias` WRITE;
/*!40000 ALTER TABLE `aspirantes_has_competencias` DISABLE KEYS */;
INSERT INTO `aspirantes_has_competencias` VALUES (32941521,'Escuela número 31',6,'Infantiles Varones','100 metros llanos',1,1,'NO',NULL),(32941521,'Escuela número 31',7,'Infantiles Varones','300 metros con posta',1,1,'NO',NULL),(32941521,'Escuela número 31',8,'Infantiles Varones','50 metros con vallas',1,1,'NO',NULL),(34666782,'Colegio Nacional General San Martín',11,'Menores Mujeres','100 metros llanos',1,1,'NO',NULL),(34666782,'Colegio Nacional General San Martín',15,'Menores Mujeres','salto en alto',1,1,'NO',NULL),(35467876,'Escuela número 31',11,'Menores Mujeres','100 metros llanos',1,1,'NO',NULL),(35467876,'Escuela número 31',13,'Menores Mujeres','50 metros con vallas',1,1,'NO',NULL),(35467876,'Escuela número 31',14,'Menores Mujeres','500 metros con posta',1,1,'NO',NULL),(38123634,'Colegio Nacional General San Martín',6,'Infantiles Varones','100 metros llanos',1,1,'NO',NULL),(38123634,'Colegio Nacional General San Martín',7,'Infantiles Varones','300 metros con posta',1,1,'NO',NULL),(38123634,'Colegio Nacional General San Martín',10,'Infantiles Varones','salto en alto',1,1,'NO',NULL),(38777321,'Colegio Nacional General San Martín',6,'Infantiles Varones','100 metros llanos',1,1,'NO',NULL),(38777321,'Colegio Nacional General San Martín',7,'Infantiles Varones','300 metros con posta',1,1,'NO',NULL),(38777321,'Colegio Nacional General San Martín',8,'Infantiles Varones','50 metros con vallas',1,1,'NO',NULL);
/*!40000 ALTER TABLE `aspirantes_has_competencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categorias` (
  `nombre_categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`nombre_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES ('Infantiles Mujeres'),('Infantiles Varones'),('Menores Mujeres'),('Menores Varones');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competencias`
--

DROP TABLE IF EXISTS `competencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `competencias` (
  `idCompetencias` int(11) NOT NULL AUTO_INCREMENT,
  `categorias_nombre_categoria` varchar(45) NOT NULL,
  `disciplinas_disciplina` varchar(45) NOT NULL,
  `torneos_idTorneos` int(11) NOT NULL,
  `torneos_sedes_idSedes` int(11) NOT NULL,
  PRIMARY KEY (`idCompetencias`,`categorias_nombre_categoria`,`disciplinas_disciplina`,`torneos_idTorneos`,`torneos_sedes_idSedes`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competencias`
--

LOCK TABLES `competencias` WRITE;
/*!40000 ALTER TABLE `competencias` DISABLE KEYS */;
INSERT INTO `competencias` VALUES (2,'Infantiles Mujeres','300 metros con posta',1,1),(3,'Infantiles Mujeres','50 metros con vallas',1,1),(4,'Infantiles Mujeres','500 metros con posta',1,1),(5,'Infantiles Mujeres','salto en alto',1,1),(6,'Infantiles Varones','100 metros llanos',1,1),(7,'Infantiles Varones','300 metros con posta',1,1),(8,'Infantiles Varones','50 metros con vallas',1,1),(9,'Infantiles Varones','500 metros con posta',1,1),(10,'Infantiles Varones','salto en alto',1,1),(11,'Menores Mujeres','100 metros llanos',1,1),(12,'Menores Mujeres','300 metros con posta',1,1),(13,'Menores Mujeres','50 metros con vallas',1,1),(14,'Menores Mujeres','500 metros con posta',1,1),(15,'Menores Mujeres','salto en alto',1,1),(16,'Menores Varones','100 metros llanos',1,1),(17,'Menores Varones','300 metros con posta',1,1),(18,'Menores Varones','50 metros con vallas',1,1),(19,'Menores Varones','500 metros con posta',1,1);
/*!40000 ALTER TABLE `competencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `disciplinas` (
  `disciplina` varchar(45) NOT NULL,
  PRIMARY KEY (`disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` VALUES ('100 metros llanos'),('300 metros con posta'),('50 metros con vallas'),('500 metros con posta'),('salto en alto');
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escuela`
--

DROP TABLE IF EXISTS `escuela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `escuela` (
  `Nombre_escuela` varchar(50) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Nombre_escuela`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escuela`
--

LOCK TABLES `escuela` WRITE;
/*!40000 ALTER TABLE `escuela` DISABLE KEYS */;
INSERT INTO `escuela` VALUES ('Colegio Carbó',NULL,NULL),('Colegio Corazón de María',NULL,NULL),('Colegio del Carmen',NULL,NULL),('Colegio Monserrat',NULL,NULL),('Colegio Nacional General San Martín',NULL,NULL),('Escuela 37',NULL,NULL),('Escuela Agrotécnica número 23 ',NULL,NULL),('Escuela Normal Superior número 10',NULL,NULL),('Escuela número 31',NULL,NULL),('Instituto Hellen Keller',NULL,NULL);
/*!40000 ALTER TABLE `escuela` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sedes`
--

DROP TABLE IF EXISTS `sedes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sedes` (
  `idSedes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSedes`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  UNIQUE KEY `direccion_UNIQUE` (`direccion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sedes`
--

LOCK TABLES `sedes` WRITE;
/*!40000 ALTER TABLE `sedes` DISABLE KEYS */;
INSERT INTO `sedes` VALUES (1,'Club Sokol','Belgrano 558','3644-678976');
/*!40000 ALTER TABLE `sedes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `torneos`
--

DROP TABLE IF EXISTS `torneos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `torneos` (
  `idTorneos` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `sedes_idSedes` int(11) NOT NULL,
  PRIMARY KEY (`idTorneos`,`sedes_idSedes`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torneos`
--

LOCK TABLES `torneos` WRITE;
/*!40000 ALTER TABLE `torneos` DISABLE KEYS */;
INSERT INTO `torneos` VALUES (1,'Torneo del Bicentenario','2013-10-19',1);
/*!40000 ALTER TABLE `torneos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-27  0:44:16
