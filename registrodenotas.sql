CREATE DATABASE  IF NOT EXISTS `registrodenotas` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `registrodenotas`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: registrodenotas
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos` (
  `idalumno` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(200) DEFAULT NULL,
  `apellidos` varchar(200) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `eliminado` char(1) DEFAULT '0',
  PRIMARY KEY (`idalumno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'Anna','white','74451200','Anna@s.com','1');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grados`
--

DROP TABLE IF EXISTS `grados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grados` (
  `idgrado` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `eliminado` char(1) DEFAULT '0',
  PRIMARY KEY (`idgrado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grados`
--

LOCK TABLES `grados` WRITE;
/*!40000 ALTER TABLE `grados` DISABLE KEYS */;
INSERT INTO `grados` VALUES (1,'Primer grado demo','1'),(2,'Segundo','0');
/*!40000 ALTER TABLE `grados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inasistencias`
--

DROP TABLE IF EXISTS `inasistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inasistencias` (
  `idinasistencia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  `eliminado` char(1) DEFAULT '0',
  PRIMARY KEY (`idinasistencia`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inasistencias`
--

LOCK TABLES `inasistencias` WRITE;
/*!40000 ALTER TABLE `inasistencias` DISABLE KEYS */;
INSERT INTO `inasistencias` VALUES (1,'demo demo','1'),(2,'Nose','1'),(3,'Otra otra','1'),(4,'Primer Trimestre','0'),(5,'1','0');
/*!40000 ALTER TABLE `inasistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maestros`
--

DROP TABLE IF EXISTS `maestros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maestros` (
  `idmaestro` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `dui` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `especialidad` varchar(100) DEFAULT NULL,
  `eliminado` char(1) DEFAULT '0',
  PRIMARY KEY (`idmaestro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maestros`
--

LOCK TABLES `maestros` WRITE;
/*!40000 ALTER TABLE `maestros` DISABLE KEYS */;
INSERT INTO `maestros` VALUES (1,'Rafael','Parada','San Pedro Nonualco','02144569-0','74561210','rafa@gmail.com','Programación','1');
/*!40000 ALTER TABLE `maestros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias` (
  `idmateria` int(11) NOT NULL AUTO_INCREMENT,
  `materia` varchar(200) DEFAULT NULL,
  `eliminado` char(1) DEFAULT '0',
  PRIMARY KEY (`idmateria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Bases de datos','0'),(2,'Progrmacion I','0'),(3,'Progrmacion orientada a objetos','0'),(4,'Algoritmos 1','0'),(5,'Algoritmos 2','0'),(6,'Arquitectura de computadoras','1');
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiasgrados`
--

DROP TABLE IF EXISTS `materiasgrados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiasgrados` (
  `idmateriasgrado` int(11) NOT NULL AUTO_INCREMENT,
  `idgrado` int(11) DEFAULT NULL,
  `idmateria` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmateriasgrado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiasgrados`
--

LOCK TABLES `materiasgrados` WRITE;
/*!40000 ALTER TABLE `materiasgrados` DISABLE KEYS */;
INSERT INTO `materiasgrados` VALUES (1,2,1),(3,2,2);
/*!40000 ALTER TABLE `materiasgrados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matricula` (
  `idmatricula` int(11) NOT NULL AUTO_INCREMENT,
  `idgrado` int(11) DEFAULT NULL,
  `idalumno` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmatricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notastrimestre`
--

DROP TABLE IF EXISTS `notastrimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notastrimestre` (
  `idnotastrimestre` int(11) NOT NULL AUTO_INCREMENT,
  `idalumno` int(11) DEFAULT NULL,
  `idtrimestre` int(11) DEFAULT NULL,
  `idmateria` int(11) DEFAULT NULL,
  `nota` float DEFAULT NULL,
  PRIMARY KEY (`idnotastrimestre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notastrimestre`
--

LOCK TABLES `notastrimestre` WRITE;
/*!40000 ALTER TABLE `notastrimestre` DISABLE KEYS */;
/*!40000 ALTER TABLE `notastrimestre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secciones`
--

DROP TABLE IF EXISTS `secciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secciones` (
  `idseccion` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `eliminado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idseccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secciones`
--

LOCK TABLES `secciones` WRITE;
/*!40000 ALTER TABLE `secciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `secciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trimestres`
--

DROP TABLE IF EXISTS `trimestres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trimestres` (
  `idtrimestre` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `eliminado` char(1) DEFAULT '0',
  PRIMARY KEY (`idtrimestre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trimestres`
--

LOCK TABLES `trimestres` WRITE;
/*!40000 ALTER TABLE `trimestres` DISABLE KEYS */;
INSERT INTO `trimestres` VALUES (1,'Trimestre update','2010','1'),(2,'Segundo Trimestre','2023','0');
/*!40000 ALTER TABLE `trimestres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) DEFAULT NULL,
  `apellido` varchar(500) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Rafael adal','Parada G','rparada','$2b$10$nbSDK7kZVVeqDPUKD.O1KuVy40DxqL06r1QV.0vA1vg8x7BtXvE4i'),(2,'Alex ','Cast','vcastillo','$2b$10$fgMHbWFJLElI6u6kUrAWzONWl7w08R3kM0snf2DLqTuUO6CcPcUtG'),(3,'acastillo','Victor Alex','Castillo Mancia','$2b$10$ofaT2OtmHrzNHIB9IPJ.pOUBU9IkBRThwACmOM/ngk0vcOefXD3G2'),(4,'alopez','Alex','Lopezz','$2b$10$f1e883AE2F4tGMhlk0Os8.xRTXKASZ8hQ1XQJ57EE5uLUF4nt6AYO'),(5,'aaa','Victor Alex','Castillo Mancia','$2b$10$nk9r.v7Ty6PKlCCxP2AbCusqoI9LpRtaSs/4qN0DeI89HFAerT0zK'),(6,'Alex','Castillo','mmm','$2b$10$1M66tTlX5dKBnLn6.Q8U1OFSjNBbtdXRZPW2R/yWT72MFtBs2vW7.'),(7,'Victor Alex','Castillo Mancia','cccc','$2b$10$s/NYwF8Uu.XhBooUSftXUefBvNdnznInUPdn62T.nXdcr.LliSGiG'),(8,'alex','alex','alex','$2b$10$m/AnDTKlydGPbT0Taflc4OAv8WzyA1ZzbdePaZIbozzg1d9ZwB5qm'),(9,'dsa','das','asdas','$2b$10$5t.Z60cMOM97LGcrAdzAku.N7oOA.UZE28w/xz19OiLP0FfmYBbvG'),(10,'sad','dsa','dsad','$2b$10$.tOmWUowOnnduD4hUO2il.RBuPCJ2/AHOqU4suNAdeUn2XkNAbFA.'),(11,'sss','sss','sda','$2b$10$8nP5fe9mJ5noHyj8b2Jq0uQc86Jny1KwSwpyqCunJq7KWjNU8bCQe'),(12,'Maria','Perezz','mmaria','$2b$10$nrSnLRfViQS7Yy5ewrYhNOV0QQJQCC9gXMZXkMv9JsH7Y7vz6NkuS'),(13,'sssa','sssa','sssa','$2b$10$ae79T7gyj8DDzUB4bwPfN.5L7IIVjWZSEqMldz6wNtl5P4JjjbR.W');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valores`
--

DROP TABLE IF EXISTS `valores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valores` (
  `idvalor` int(11) NOT NULL AUTO_INCREMENT,
  `valor` varchar(200) DEFAULT NULL,
  `eliminado` char(1) DEFAULT '0',
  PRIMARY KEY (`idvalor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valores`
--

LOCK TABLES `valores` WRITE;
/*!40000 ALTER TABLE `valores` DISABLE KEYS */;
INSERT INTO `valores` VALUES (1,'Honestidad','0'),(2,'Sinceridades','1');
/*!40000 ALTER TABLE `valores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-25 21:57:30
