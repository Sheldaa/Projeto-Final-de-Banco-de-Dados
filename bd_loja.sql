CREATE DATABASE  IF NOT EXISTS `loja_acessorios` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `loja_acessorios`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: loja_acessorios
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'João Silva','Rua dos Girassóis, 123','9123456789','joao.silva@gmail.com'),(2,'Maria Souza','Avenida das Palmeiras, 456','9987654321','maria.souza@gmail.com'),(3,'Carlos Santos','Rua Paulino Pinheiros, 789','9456123789','carlos.santos@gmail.com'),(4,'Ana Oliveira','Avenida das Acácias, 987','9321987654','ana.oliveira@gmail.com'),(5,'Pedro Lima','Rua Risoleta Gil, 654','9789123456','pedro.lima@gmail.com'),(6,'Sandra Ferreira','Avenida das Rosas, 321','9654987321','sandra.ferreira@gmail.com'),(7,'José Pereira','Rua Bastos Cravel, 654','9873216549','jose.pereira@gmail.com'),(8,'Lúcia Costa','Avenida Filomena Assis, 789','9321654987','lucia.costa@gmail.com'),(9,'Rafael Santos','Rua das Tulipas, 456','9654321987','rafael.santos@gmail.com'),(10,'Fernanda Lima','Avenida Santos Ateneu, 123','9321789654','fernanda.lima@gmail.com'),(11,'Mariana Oliveira','Rua São Paolo, 987','9789654321','mariana.oliveira@gmail.com'),(12,'Daniel Almeida','Avenida dos Jardins, 654','9321456987','daniel.almeida@gmail.com'),(13,'Cristina Costa','Rua das Hortênsias, 321','9654789123','cristina.costa@gmail.com'),(14,'Ricardo Santos','Avenida Duque Farias, 654','9871234569','ricardo.santos@gmail.com'),(15,'Laura Pereira','Rua Roseilde Acaz, 789','9456789321','laura.pereira@gmail.com'),(16,'Fábio Souza','Avenida Paulo Bastos, 456','9789321654','fabio.souza@gmail.com'),(17,'Isabela Lima','Rua das Bromélias, 789','9654321789','isabela.lima@gmail.com'),(18,'Gustavo Oliveira','Avenida Lírio Campal, 321','9321654789','gustavo.oliveira@gmail.com'),(19,'Carolina Silva','Rua Bastos Cravel, 987','9654987123','carolina.silva@gmail.com'),(20,'Henrique Costa','Avenida Araújo de Castro, 654','9876543219','henrique.costa@gmail.com'),(21,'Natália Santos','Rua Osório Batista, 321','321987654','natalia.santos@gmail.com'),(22,'Paulo Oliveira','Avenida Vieira Sales, 654','654321987','paulo.oliveira@gmail.com'),(23,'Mariana Lima','Rua Osório Batista, 789','987321654','mariana.lima@gmail.com'),(24,'Roberto Almeida','Avenida Lírio Campal, 321','921654987','roberto.almeida@gmail.com'),(25,'Aline Castro','Avenida Lírio Campal, 182','951658987','aline.castro@gmail.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,19,80),(2,20,80),(3,21,80),(4,22,80),(5,23,80),(6,24,80),(7,9,20),(8,10,20),(9,11,20),(10,12,20),(11,16,20),(12,17,20),(13,18,20),(14,1,40),(15,2,40),(16,3,40),(17,4,40),(18,5,40),(19,6,40),(20,13,40),(21,14,40),(22,15,40),(23,25,40),(24,26,40),(25,27,40),(26,28,40),(27,7,30),(28,8,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',19),(2,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',20),(3,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',21),(4,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',22),(5,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',23),(6,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',24),(8,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',1),(9,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',2),(10,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',3),(11,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',4),(12,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',5),(13,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',6),(14,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',13),(15,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',14),(16,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',15),(17,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',25),(18,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',26),(19,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',27),(20,'Village Ouro','Avenida Paulo Ferreira, 415','992345678','village.atacado@gmail.com',28),(23,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',9),(24,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',10),(25,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',11),(26,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',12),(27,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',16),(28,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',17),(29,'La Biju - Atacado','Rua Roselita Bastos','992345675','labiju.contato@gmail.com',18),(30,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',7),(31,'Casa dos Tecidos','Rua Anísio Albuquerque, 211','997867177','casadostecidos@gmail.com',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,1,2,'2023-06-01'),(2,1,3,1,'2023-06-02'),(3,2,2,1,'2023-06-01'),(4,2,5,3,'2023-06-03'),(5,3,4,1,'2023-06-02'),(6,3,8,2,'2023-06-04'),(7,4,6,1,'2023-06-03'),(8,4,9,1,'2023-06-05'),(9,5,7,2,'2023-06-04'),(10,5,12,1,'2023-06-06'),(11,6,10,1,'2023-06-01'),(12,6,15,3,'2023-06-03'),(13,7,11,2,'2023-06-02'),(14,7,18,1,'2023-06-04'),(15,8,14,1,'2023-06-03'),(16,8,22,2,'2023-06-05'),(17,9,16,1,'2023-06-04'),(18,9,25,1,'2023-06-06'),(19,10,21,2,'2023-06-05'),(20,10,28,1,'2023-06-07'),(21,1,1,2,'2023-06-01'),(22,1,3,1,'2023-06-02'),(23,2,2,1,'2023-06-01'),(24,2,5,3,'2023-06-03'),(25,3,4,1,'2023-06-02'),(26,3,8,2,'2023-06-04'),(27,4,6,1,'2023-06-03'),(28,4,9,1,'2023-06-05'),(29,5,7,2,'2023-06-04'),(30,5,12,1,'2023-06-06'),(31,6,10,1,'2023-06-01'),(32,6,15,3,'2023-06-03'),(33,7,11,2,'2023-06-02'),(34,7,18,1,'2023-06-04'),(35,8,14,1,'2023-06-03'),(36,8,22,2,'2023-06-05'),(37,9,16,1,'2023-06-04'),(38,9,25,1,'2023-06-06'),(39,10,21,2,'2023-06-05'),(40,10,28,1,'2023-06-07');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendaspormes`
--

LOCK TABLES `vendaspormes` WRITE;
/*!40000 ALTER TABLE `vendaspormes` DISABLE KEYS */;
INSERT INTO `vendaspormes` VALUES (1,1,2023,10,19),(2,1,2023,10,20),(3,1,2023,10,21),(4,1,2023,10,22),(5,1,2023,10,23),(6,1,2023,10,24),(8,1,2023,15,9),(9,1,2023,15,10),(10,1,2023,15,11),(11,1,2023,15,12),(12,1,2023,15,16),(13,1,2023,15,17),(14,1,2023,15,18),(15,1,2023,32,1),(16,1,2023,32,2),(17,1,2023,32,3),(18,1,2023,32,4),(19,1,2023,32,5),(20,1,2023,32,6),(21,1,2023,32,13),(22,1,2023,32,14),(23,1,2023,32,15),(24,1,2023,32,25),(25,1,2023,32,26),(26,1,2023,32,27),(27,1,2023,32,28),(30,1,2023,20,7),(31,1,2023,20,8),(33,2,2023,50,19),(34,2,2023,50,20),(35,2,2023,50,21),(36,2,2023,50,22),(37,2,2023,50,23),(38,2,2023,50,24),(40,2,2023,28,1),(41,2,2023,28,2),(42,2,2023,28,3),(43,2,2023,28,4),(44,2,2023,28,5),(45,2,2023,28,6),(46,2,2023,28,13),(47,2,2023,28,14),(48,2,2023,28,15),(49,2,2023,28,25),(50,2,2023,28,26),(51,2,2023,28,27),(52,2,2023,28,28),(55,2,2023,15,7),(56,2,2023,15,8);
/*!40000 ALTER TABLE `vendaspormes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07 22:13:03
