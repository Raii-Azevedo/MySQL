CREATE DATABASE  IF NOT EXISTS `Universidade` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `Universidade`;
-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Universidade
-- ------------------------------------------------------
-- Server version	10.4.6-MariaDB

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
-- Table structure for table `Aluno`
--

DROP TABLE IF EXISTS `Aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aluno` (
  `MAT` int(11) NOT NULL,
  `Nome` text DEFAULT NULL,
  `Endereço` varchar(40) DEFAULT NULL,
  `Cidade` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aluno`
--

LOCK TABLES `Aluno` WRITE;
/*!40000 ALTER TABLE `Aluno` DISABLE KEYS */;
INSERT INTO `Aluno` VALUES (2015010101,'JOSE DE ALENCAR','RUA DAS ALMAS','NATAL'),(2015010102,'JOÃO JOSÉ','AVENIDA RUY CARNEIRO','JOÃO PESSOA'),(2015010103,'MARIA JOAQUINA','RUA CARROSSEL','RECIFE'),(2015010104,'MARIA DAS DORES','RUA DAS LADEIRAS','FORTALEZA'),(2015010105,'JOSUÉ CLAUDINO DOS SANTOS','CENTRO','NATAL'),(2015010106,'JOSUÉLISSON CLAUDINO DOS SANTOS','CENTRO','NATAL');
/*!40000 ALTER TABLE `Aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Disciplina`
--

DROP TABLE IF EXISTS `Disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Disciplina` (
  `COD_DISC` varchar(20) NOT NULL,
  `Nome_Disc` text DEFAULT NULL,
  `CargaH` int(11) DEFAULT NULL,
  PRIMARY KEY (`COD_DISC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Disciplina`
--

LOCK TABLES `Disciplina` WRITE;
/*!40000 ALTER TABLE `Disciplina` DISABLE KEYS */;
INSERT INTO `Disciplina` VALUES ('BD','BANCO DE DADOS',100),('ENG','ENGENHARIA DE SOFTWARE',80),('POO','PROGRAMAÇÃO COM ACESSO A BANCO DE DADOS',100),('WEB','AUTORIA WEB',50);
/*!40000 ALTER TABLE `Disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Historico`
--

DROP TABLE IF EXISTS `Historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Historico` (
  `MAT` int(11) NOT NULL,
  `COD_Disc` int(11) NOT NULL,
  `COD_Turma` int(11) NOT NULL,
  `COD_Prof` varchar(20) NOT NULL,
  `Ano` year(4) DEFAULT NULL,
  `Frequencia` int(11) DEFAULT NULL,
  `Nota` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`MAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Historico`
--

LOCK TABLES `Historico` WRITE;
/*!40000 ALTER TABLE `Historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `Historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Professores`
--

DROP TABLE IF EXISTS `Professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Professores` (
  `COD_Prof` varchar(20) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `Endereço` varchar(30) DEFAULT NULL,
  `Cidade` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`COD_Prof`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professores`
--

LOCK TABLES `Professores` WRITE;
/*!40000 ALTER TABLE `Professores` DISABLE KEYS */;
INSERT INTO `Professores` VALUES ('122135','ADORILSON BEZERRA','AVENIDA SALGADO FILHO','NATAL'),('192011','DIEGO OLIVEIRA','AVENIDA ROBERTO FREIRE','NATAL'),('212131','NICKERSON FERREIRA','RUA MANAÍRA','JOÃO PESSOA');
/*!40000 ALTER TABLE `Professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Turma`
--

DROP TABLE IF EXISTS `Turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Turma` (
  `COD_Disc` text DEFAULT NULL,
  `COD_Turma` int(11) NOT NULL,
  `COD_Prof` varchar(20) NOT NULL,
  `Ano` year(4) DEFAULT NULL,
  `Horario` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Turma`
--

LOCK TABLES `Turma` WRITE;
/*!40000 ALTER TABLE `Turma` DISABLE KEYS */;
INSERT INTO `Turma` VALUES (NULL,1,'212131',2015,'11H-12H'),(NULL,2,'212131',2015,'13H-14H'),(NULL,1,'192011',2015,'08H-09H'),(NULL,1,'192011',2015,'07H-08H'),(NULL,1,'122135',2015,'10H-11H'),('BD',1,'212131',2015,'11H-12H'),('BD',2,'212131',2015,'13H-14H'),('POO',1,'192011',2015,'08H-09H'),('WEB',1,'192011',2015,'07H-08H'),('ENG',1,'122135',2015,'10H-11H');
/*!40000 ALTER TABLE `Turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-02 17:02:18
