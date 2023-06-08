CREATE DATABASE  IF NOT EXISTS `loja_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `loja_db`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: loja_db
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'João Silva','Rua dos Girassóis, 123','912345678','joao.silva@gmail.com'),(2,'Maria Souza','Avenida das Palmeiras, 456','998765432','maria.souza@gmail.com'),(3,'Carlos Santos','Rua Paulino Pinheiros, 789','945612378','carlos.santos@gmail.com'),(4,'Ana Oliveira','Avenida das Acácias, 987','932198765','ana.oliveira@gmail.com'),(5,'Pedro Lima','Rua Risoleta Gil, 654','978912345','pedro.lima@gmail.com'),(6,'Sandra Ferreira','Avenida das Rosas, 321','965498732','sandra.ferreira@gmail.com'),(7,'José Pereira','Rua Bastos Cravel, 654','987321654','jose.pereira@gmail.com'),(8,'Lúcia Costa','Avenida Filomena Assis, 789','932165498','lucia.costa@gmail.com'),(9,'Rafael Santos','Rua das Tulipas, 456','965432197','rafael.santos@gmail.com'),(10,'Fernanda Lima','Avenida Santos Ateneu, 123','932178965','fernanda.lima@gmail.com'),(11,'Mariana Oliveira','Rua São Paolo, 987','978965431','mariana.oliveira@gmail.com'),(12,'Daniel Almeida','Avenida dos Jardins, 654','932145698','daniel.almeida@gmail.com'),(13,'Cristina Costa','Rua das Hortênsias, 321','965478912','cristina.costa@gmail.com'),(14,'Ricardo Santos','Avenida Duque Farias, 654','987123459','ricardo.santos@gmail.com'),(15,'Laura Pereira','Rua Roseilde Acaz, 789','945678931','laura.pereira@gmail.com'),(16,'Fábio Souza','Avenida Paulo Bastos, 456','978932164','fabio.souza@gmail.com'),(17,'Isabela Lima','Rua das Bromélias, 789','965432179','isabela.lima@gmail.com'),(18,'Gustavo Oliveira','Avenida Lírio Campal, 321','932165489','gustavo.oliveira@gmail.com'),(19,'Carolina Silva','Rua Bastos Cravel, 987','965498723','carolina.silva@gmail.com'),(20,'Henrique Costa','Avenida Araújo de Castro, 654','987643219','henrique.costa@gmail.com'),(21,'Natália Santos','Rua Osório Batista, 321','921987654','natalia.santos@gmail.com'),(22,'Paulo Oliveira','Avenida Vieira Sales, 654','954321987','paulo.oliveira@gmail.com'),(23,'Mariana Lima','Rua Osório Batista, 789','987321654','mariana.lima@gmail.com'),(24,'Roberto Almeida','Avenida Lírio Campal, 321','921654987','roberto.almeida@gmail.com'),(25,'Aline Castro','Avenida Lírio Campal, 182','978836327','aline.castro@gmail.com'),(26,'Pietra castro','Rua dos Girassóis, 1289','912523439','pietra.castro@gmail.com'),(27,'Mariana Souza','Avenida das Palmeiras, 406','998765467','mariana.souza@gmail.com'),(28,'Carlos André','Rua Paulino Pinheiros, 779','997867543','carlos.andre@gmail.com'),(29,'Anélia Laís','Avenida das Acácias, 997','993456321','ane.lais@gmail.com'),(30,'Paloma lima','Rua Risoleta Gil, 658','992356756','paloma.lima@gmail.com'),(31,'Salete Ferreira','Avenida das Rosas, 334','994567855','salete.ferreira@gmail.com'),(32,'Josefa Pereira','Rua Bastos Cravel, 121','997854312','josefa.pereira@gmail.com'),(33,'Luana Costa','Avenida Filomena Assis, 290','994557632','luana.costa@gmail.com'),(34,'Rafaela Santos','Rua das Tulipas, 156','967865197','rafaela.santos@gmail.com'),(35,'Felícia Lima','Avenida Santos Ateneu, 183','932198745','felícia.lima@gmail.com'),(36,'Alice Oliveira','Rua São Paolo, 162','978125431','alice.oliveira@gmail.com'),(37,'Daniela Almeida','Avenida dos Jardins, 124','931145698','dani.almeida@gmail.com'),(38,'Cristielen Costa','Rua das Hortênsias, 221','987478912','cris.costa@gmail.com'),(39,'Rita Santos','Avenida Duque Farias, 614','900123459','rita.santos@gmail.com'),(40,'Larisse Pereira','Rua Roseilde Acaz, 129','945018931','lari.pereira@gmail.com'),(41,'Paty Castrp','Rua dos Girassóis, 129','912551439','paty.castro@gmail.com'),(42,'Marilia Souza','Avenida das Palmeiras, 4061','991265467','marilia.souza@gmail.com'),(43,'Carlos alessandro','Rua Paulino Pinheiros, 799','997007543','carlos.ale@gmail.com'),(44,'Aymee Bastos','Avenida das Acácias, 917','955456321','aymee.b@gmail.com'),(45,'Paloma lima','Rua Risoleta Gil, 608','9923567096','paloma.lima@gmail.com'),(46,'Samila Ferreira','Avenida das Rosas, 301','922567855','samila.ferreira@gmail.com'),(47,'Joselita Pereira','Rua Bastos Cravel, 001','990054312','joselita.pereira@gmail.com'),(48,'Luana Carvalho','Avenida Filomena Assis, 190','994002632','luana.carv@gmail.com'),(49,'Raissa Santos','Rua das Tulipas, 116','967865197','rai.santos@gmail.com'),(50,'Fátima Lima','Avenida Santos Ateneu, 122','930818745','fat.lima@gmail.com'),(51,'Bárbara Oliveira','Rua São Paolo, 162','978109431','barb.oliveira@gmail.com'),(52,'Pâmela Brioso','Avenida dos Jardins, 104','931142598','pamela.bri@gmail.com'),(53,'Cláudia Costa','Rua das Hortênsias, 201','982678912','claudia.costa@gmail.com'),(54,'Haylee Santos','Avenida Duque Farias, 614','900122559','hay.santos@gmail.com'),(55,'Márcia Pereira','Rua Roseilde Acaz, 329','905018931','mmarcia.pereira@gmail.com'),(56,'Paola','Rua das Flores, 123','912345678','paola11@gmail.com'),(57,'Samia','Avenida Central, 456','923456789','samia12@gmail.com'),(58,'Alessandra','Travessa das Acácias, 987','934567890','alessandra00@gmail.com'),(59,'Beatriz','Rua da Liberdade, 789','945678901','beatriz12@gmail.com'),(60,'Bruna','Alameda dos Girassóis, 654','956789012','bruna12@gmail.com'),(61,'Thalita','Rua dos Coqueiros, 321','967890123','thalita11@gmail.com'),(62,'Abigail','Avenida Principal, 567','978901234','abigail12@gmail.com'),(63,'Ariane','Rua do Sol, 890','989012345','ariane@gmail.com'),(64,'Adriana','Rua São João, 234','990123456','adriana@gmail.com'),(65,'Karina','Avenida das Palmeiras, 567','901234567','karina@gmail.com'),(66,'Cátia','Rua das Margaridas, 890','912345678','catia@gmail.com'),(67,'Carla','Travessa da Esperança, 123','923456789','carla@gmail.com'),(68,'Clarisse','Alameda das Oliveiras, 456','934567890','clarisse@gmail.com'),(69,'Paulina','Rua da Paz, 789','945678901','paulina@gmail.com'),(70,'Irlene','Rua dos Ipês, 987','956789012','irlene@gmail.com'),(71,'Ingrid','Avenida Central, 654','967890123','ingrid@gmail.com'),(72,'Ariadna','Rua dos Lírios, 321','978901234','ariadna@gmail.com'),(73,'Ellen','Alameda dos Cravos, 567','989012345','ellen@gmail.com'),(74,'Gabriele','Travessia dos Girassóis, 890','912345678','gabriele@gmail.com'),(75,'Victória','Rua Principal Firmino, 234','901234567','victoria@gmail.com'),(76,'Priscila','Avenida do Sol, 567','923456789','priscila@gmail.com'),(77,'Bianca','Travessa São Pedro, 890','934567890','bianca@gmail.com'),(78,'Késia','Rua das Orquídeas, 123','945678901','kesia@gmail.com'),(79,'Nayane','Alameda das Rosas, 456','990123456','nayane@gmail.com'),(80,'Délia','Rua dos Amores, 789','945678901','delia@gmail.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clientemaispedidosbijuterias`
--

DROP TABLE IF EXISTS `clientemaispedidosbijuterias`;
/*!50001 DROP VIEW IF EXISTS `clientemaispedidosbijuterias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientemaispedidosbijuterias` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `total_pedidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produto_id` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `produto_id` (`produto_id`),
  CONSTRAINT `estoque_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,19,500),(2,20,500),(3,21,500),(4,22,500),(5,23,500),(6,24,500),(7,9,500),(8,10,500),(9,11,500),(10,12,500),(11,16,500),(12,17,500),(13,18,500),(14,1,500),(15,2,500),(16,3,500),(17,4,500),(18,5,500),(19,6,500),(20,13,500),(21,14,500),(22,15,500),(23,25,500),(24,26,500),(25,27,500),(26,28,500),(27,7,250),(28,8,250);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `produto_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `produto_id` (`produto_id`),
  CONSTRAINT `fornecedor_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',19),(2,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',20),(3,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',21),(4,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',22),(5,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',23),(6,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',24),(8,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',9),(9,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',10),(10,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',11),(11,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',12),(12,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',16),(13,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',17),(14,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',18),(15,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',1),(16,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',2),(17,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',3),(18,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',4),(19,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',5),(20,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',6),(21,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',13),(22,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',14),(23,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',15),(24,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',25),(25,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',26),(26,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',27),(27,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',28),(30,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',7),(31,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',8);
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `produto_id` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `data_pedido` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `produto_id` (`produto_id`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,11,17,6,'2023-06-02'),(2,11,23,7,'2023-06-04'),(3,12,19,5,'2023-06-03'),(4,12,26,4,'2023-06-05'),(5,13,13,7,'2023-06-04'),(6,13,27,2,'2023-06-06'),(7,14,15,5,'2023-06-05'),(8,14,22,6,'2023-06-07'),(9,15,20,5,'2023-06-06'),(10,15,22,3,'2023-06-08'),(11,16,10,2,'2023-06-02'),(12,16,16,3,'2023-06-04'),(13,17,12,2,'2023-06-03'),(14,17,24,4,'2023-06-05'),(15,18,11,3,'2023-06-04'),(16,18,21,2,'2023-06-06'),(17,19,9,1,'2023-06-05'),(18,19,28,1,'2023-06-07'),(19,20,8,2,'2023-06-06'),(20,20,25,1,'2023-06-08'),(21,21,6,1,'2023-06-03'),(22,21,14,3,'2023-06-05'),(23,22,5,2,'2023-06-04'),(24,22,18,2,'2023-06-06'),(25,23,3,7,'2023-06-05'),(26,23,22,2,'2023-06-07'),(27,24,1,1,'2023-06-06'),(28,24,7,1,'2023-06-08'),(29,25,2,2,'2023-06-07'),(30,25,19,8,'2023-06-09'),(31,51,1,12,'2023-06-06'),(32,50,2,10,'2023-06-07'),(33,31,3,7,'2023-06-08'),(34,30,1,8,'2023-06-06'),(35,27,2,8,'2023-06-07'),(36,45,3,11,'2023-06-08'),(37,45,1,3,'2023-06-06'),(38,40,2,9,'2023-06-07'),(39,40,3,8,'2023-06-08'),(40,40,1,7,'2023-06-06'),(41,40,2,3,'2023-06-07'),(42,40,3,7,'2023-06-08'),(43,38,1,5,'2023-06-06'),(44,26,2,3,'2023-06-07'),(45,21,3,1,'2023-06-08'),(46,57,1,12,'2023-06-06'),(47,58,2,10,'2023-06-07'),(48,60,3,7,'2023-06-08'),(49,59,1,8,'2023-06-06'),(50,9,2,8,'2023-06-07'),(51,62,3,11,'2023-06-08'),(52,55,1,3,'2023-06-06'),(53,63,2,9,'2023-06-07'),(54,63,3,8,'2023-06-08'),(55,63,1,7,'2023-06-06'),(56,63,2,3,'2023-06-07'),(57,63,3,7,'2023-06-08'),(58,54,1,5,'2023-06-06'),(59,52,2,3,'2023-06-07'),(60,52,3,1,'2023-06-08'),(61,75,21,3,'2023-06-06'),(62,61,22,2,'2023-06-07'),(63,69,5,1,'2023-06-08'),(64,70,7,4,'2023-06-09'),(65,72,8,2,'2023-06-10'),(66,43,5,3,'2023-06-11'),(67,45,28,1,'2023-06-12'),(68,80,20,2,'2023-06-13'),(69,73,19,3,'2023-06-14'),(70,76,17,2,'2023-06-15'),(71,77,12,1,'2023-06-16'),(72,31,14,2,'2023-06-17'),(73,58,11,3,'2023-06-18'),(74,77,13,1,'2023-06-19'),(75,66,15,2,'2023-06-20'),(76,67,7,1,'2023-06-21'),(77,62,7,3,'2023-06-22'),(78,63,8,2,'2023-06-23'),(79,76,10,1,'2023-06-24'),(80,76,2,2,'2023-06-25'),(81,76,7,3,'2023-06-26'),(82,76,6,1,'2023-06-27');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  `preco` decimal(10,2) NOT NULL,
  `setor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `setor_id` (`setor_id`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`setor_id`) REFERENCES `setor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Colar concha','Colar de concha dourado',15.00,3),(2,'Colar lua','Colar de meia lua dourado',16.00,3),(3,'Colar mar','Colar com símbolo de onda prata',17.00,3),(4,'Colar coração','Colar coração preenchido com pedras',14.00,3),(5,'Colar flores','Colar com pedras coloridas',15.00,3),(6,'Colar borboletas','Colar com borboleta rosa',16.00,3),(7,'Ecobag','Ecobag 35x30x20 com estampa da preferência do cliente',20.00,4),(8,'Mini Ecobag','Mini ecobag 30x20x10',16.00,4),(9,'Bracelete Sereia','Bracelete dourado',10.00,2),(10,'Bracelete Sol','Bracelete prata',10.00,2),(11,'Bracelete Bichinhos','Bracelete dourado',12.00,2),(12,'Bracelete pérolas','Bracelete prata com pérolas',12.00,2),(13,'Ponto de Luz','Colar dourado com pedra única',20.00,3),(14,'Argola prata','argora prata, tamanho 7.5cm de diâmetro',15.00,3),(15,'Argola dourada','argola dourada, tamanho 7.5cm de diâmetro',15.00,3),(16,'Brinco antialérgico Flor','antialérgico com flor dourada',6.00,2),(17,'Brinco Antialérgico estrela','antialérgico com estrela prata',6.00,2),(18,'Brinco Antialérgico Safira','Antialérgico com pedra azul',6.00,2),(19,'Tapa-Olho','feito de cetim, cor da preferência do cliente',8.00,1),(20,'Touca','dupla face, cor da preferência do cliente',12.00,1),(21,'Scrunchie','feita de cetim, cor da preferência do cliente',4.00,1),(22,'Kit Scrunchies','Cinco unidades em cores variadas',18.00,1),(23,'Robe','feito de cetim, tamanhos M, G e GG',20.00,1),(24,'Modelador de cachos','feito de cetim, preenchido com algodão',18.00,1),(25,'Pulseira Berloque','Contém 3 pingentes pratas inclusos',35.00,3),(26,'Pulseira Pendula','Pulseira folheada à ouro',23.00,3),(27,'Pulseira com nome','Pulseira folheada à ouro',25.00,3),(28,'Pulseira cadeado','contém pingente de cadeado e chave',15.00,3);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `quantidadepedidoscliente`
--

DROP TABLE IF EXISTS `quantidadepedidoscliente`;
/*!50001 DROP VIEW IF EXISTS `quantidadepedidoscliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quantidadepedidoscliente` AS SELECT 
 1 AS `cliente_id`,
 1 AS `cliente_nome`,
 1 AS `quantidade_pedidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `setor`
--

DROP TABLE IF EXISTS `setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor`
--

LOCK TABLES `setor` WRITE;
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
INSERT INTO `setor` VALUES (1,'cetim'),(2,'bijuterias'),(3,'folheados'),(4,'Ecobags');
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendaspormes`
--

DROP TABLE IF EXISTS `vendaspormes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendaspormes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `quantidade` int DEFAULT NULL,
  `produto_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `produto_id` (`produto_id`),
  CONSTRAINT `vendaspormes_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendaspormes`
--

LOCK TABLES `vendaspormes` WRITE;
/*!40000 ALTER TABLE `vendaspormes` DISABLE KEYS */;
INSERT INTO `vendaspormes` VALUES (1,1,2023,10,19),(2,1,2023,10,20),(3,1,2023,10,21),(4,1,2023,10,22),(5,1,2023,10,23),(6,1,2023,10,24),(8,1,2023,15,9),(9,1,2023,15,10),(10,1,2023,15,11),(11,1,2023,15,12),(12,1,2023,15,16),(13,1,2023,15,17),(14,1,2023,15,18),(15,1,2023,32,1),(16,1,2023,32,2),(17,1,2023,32,3),(18,1,2023,32,4),(19,1,2023,32,5),(20,1,2023,32,6),(21,1,2023,32,13),(22,1,2023,32,14),(23,1,2023,32,15),(24,1,2023,32,25),(25,1,2023,32,26),(26,1,2023,32,27),(27,1,2023,32,28),(30,1,2023,20,7),(31,1,2023,20,8),(33,2,2023,50,19),(34,2,2023,50,20),(35,2,2023,50,21),(36,2,2023,50,22),(37,2,2023,50,23),(38,2,2023,50,24),(40,2,2023,20,9),(41,2,2023,20,10),(42,2,2023,20,11),(43,2,2023,20,12),(44,2,2023,20,16),(45,2,2023,20,17),(46,2,2023,20,18),(47,2,2023,28,1),(48,2,2023,28,2),(49,2,2023,28,3),(50,2,2023,28,4),(51,2,2023,28,5),(52,2,2023,28,6),(53,2,2023,28,13),(54,2,2023,28,14),(55,2,2023,28,15),(56,2,2023,28,25),(57,2,2023,28,26),(58,2,2023,28,27),(59,2,2023,28,28);
/*!40000 ALTER TABLE `vendaspormes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `clientemaispedidosbijuterias`
--

/*!50001 DROP VIEW IF EXISTS `clientemaispedidosbijuterias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientemaispedidosbijuterias` AS select `c`.`id` AS `id`,`c`.`nome` AS `nome`,count(`p`.`id`) AS `total_pedidos` from (((`cliente` `c` join `pedidos` `p` on((`c`.`id` = `p`.`cliente_id`))) join `produto` `pr` on((`p`.`produto_id` = `pr`.`id`))) join `setor` `s` on((`pr`.`setor_id` = `s`.`id`))) where (`s`.`nome` = 'Bijuterias') group by `c`.`id`,`c`.`nome` order by `total_pedidos` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `quantidadepedidoscliente`
--

/*!50001 DROP VIEW IF EXISTS `quantidadepedidoscliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `quantidadepedidoscliente` AS select `c`.`id` AS `cliente_id`,`c`.`nome` AS `cliente_nome`,count(`p`.`id`) AS `quantidade_pedidos` from (`cliente` `c` left join `pedidos` `p` on((`c`.`id` = `p`.`cliente_id`))) group by `c`.`id`,`c`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-08 13:43:09
