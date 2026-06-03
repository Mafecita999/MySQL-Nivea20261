CREATE DATABASE  IF NOT EXISTS `streamflix` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `streamflix`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: streamflix
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo_español` varchar(150) NOT NULL,
  `titulo_original` varchar(150) NOT NULL,
  `director` varchar(150) NOT NULL,
  `año` int NOT NULL,
  `duracion` int NOT NULL,
  `genero` varchar(150) NOT NULL,
  `calificacion` decimal(3,1) NOT NULL,
  `sinopsis` text NOT NULL,
  `idioma` varchar(150) DEFAULT 'ingles',
  `destacada` tinyint(1) DEFAULT '0',
  `fecha_agregada` date DEFAULT (curdate()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'El Padrino','The Godfather','Francis Ford Coppola',1972,175,'Drama',9.2,'La historia de la familia Corleone en el mundo de la mafia italiana.','Inglés',1,'2026-06-03'),(2,'Pulp Fiction','Pulp Fiction','Quentin Tarantino',1994,154,'Crimen',8.9,'Historias entrelazadas de criminales en Los Ángeles.','Inglés',1,'2026-06-03'),(3,'El Caballero de la Noche','The Dark Knight','Christopher Nolan',2008,152,'Acción',9.0,'Batman enfrenta al caótico Joker en Gotham City.','Inglés',1,'2026-06-03'),(4,'Inception','Inception','Christopher Nolan',2010,148,'Ciencia Ficción',8.8,'Un ladrón que roba secretos del subconsciente durante el sueño.','Inglés',1,'2026-06-03'),(5,'Forrest Gump','Forrest Gump','Robert Zemeckis',1994,142,'Drama',8.8,'La vida extraordinaria de un hombre simple que presencia eventos históricos.','Inglés',1,'2026-06-03'),(6,'Matrix','The Matrix','Lana y Lilly Wachowski',1999,136,'Ciencia Ficción',8.7,'Un programador descubre que la realidad es una simulación.','Inglés',0,'2026-06-03'),(7,'El Señor de los Anillos: La Comunidad del Anillo','The Lord of the Rings: The Fellowship of the Ring','Peter Jackson',2001,178,'Fantasía',8.8,'Frodo inicia su viaje para destruir el Anillo Único.','Inglés',1,'2026-06-03'),(8,'Gladiador','Gladiator','Ridley Scott',2000,155,'Acción',8.5,'Un general romano busca venganza contra el emperador corrupto.','Inglés',0,'2026-06-03'),(9,'El Laberinto del Fauno','El Laberinto del Fauno','Guillermo del Toro',2006,118,'Fantasía',8.2,'Una niña descubre un mundo mágico durante la Guerra Civil Española.','Español',0,'2026-06-03'),(10,'Interestelar','Interstellar','Christopher Nolan',2014,169,'Ciencia Ficción',8.6,'Exploradores viajan por un agujero de gusano buscando un nuevo hogar.','Inglés',0,'2026-06-03'),(11,'Parásitos','Gisaengchung','Bong Joon-ho',2019,132,'Thriller',8.6,'Una familia pobre infiltra la casa de una familia rica.','Coreano',1,'2026-06-03'),(12,'Tiempos Violentos','Reservoir Dogs','Quentin Tarantino',1992,99,'Crimen',8.3,'Un atraco sale mal y los criminales sospechan de un traidor.','Inglés',0,'2026-06-03'),(13,'El Club de la Pelea','Fight Club','David Fincher',1999,139,'Drama',8.8,'Un hombre insomne forma un club clandestino de pelea.','Inglés',0,'2026-06-03'),(14,'La Lista de Schindler','Schindler\'s List','Steven Spielberg',1993,195,'Drama',9.0,'La historia real de un empresario que salvó a más de mil judíos.','Inglés',1,'2026-06-03'),(15,'Toy Story','Toy Story','John Lasseter',1995,81,'Animación',8.3,'Los juguetes de Andy cobran vida cuando él no está.','Inglés',0,'2026-06-03');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'streamflix'
--

--
-- Dumping routines for database 'streamflix'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-03 11:59:18
