CREATE DATABASE  IF NOT EXISTS `z_wallet` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `z_wallet`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 10.0.0.200    Database: z_wallet
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `bank_config`
--

DROP TABLE IF EXISTS `bank_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_config` (
  `bank_code` varchar(20) NOT NULL,
  `withdraw_min` bigint NOT NULL,
  `withdraw_max` bigint NOT NULL,
  `topup_min` bigint NOT NULL,
  `topup_max` bigint NOT NULL,
  PRIMARY KEY (`bank_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_config`
--

LOCK TABLES `bank_config` WRITE;
/*!40000 ALTER TABLE `bank_config` DISABLE KEYS */;
INSERT INTO `bank_config` VALUES ('msb',10000,50000000,10000,50000000);
/*!40000 ALTER TABLE `bank_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_mapping`
--

DROP TABLE IF EXISTS `bank_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_mapping` (
  `userid` varchar(50) NOT NULL,
  `fulllname` varchar(45) DEFAULT NULL,
  `f6cardno` varchar(6) DEFAULT NULL,
  `l4cardno` varchar(4) DEFAULT NULL,
  `bank_token` varchar(100) DEFAULT NULL,
  `card_name` varchar(45) DEFAULT NULL,
  `bank_code` varchar(45) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `card_number` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`,`card_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_mapping`
--

LOCK TABLES `bank_mapping` WRITE;
/*!40000 ALTER TABLE `bank_mapping` DISABLE KEYS */;
INSERT INTO `bank_mapping` VALUES ('1584784717714','NGUYEN VAN A','501971','3742','0365590786:21ea55dcfcb8aa1f','MSB','msb',1,'5019717010103742');
/*!40000 ALTER TABLE `bank_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile_card`
--

DROP TABLE IF EXISTS `mobile_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobile_card` (
  `card_number` varchar(50) NOT NULL,
  `seri_number` varchar(50) NOT NULL,
  `card_type` varchar(10) NOT NULL,
  `order_id` bigint NOT NULL,
  `status` int NOT NULL,
  `amount` bigint NOT NULL,
  PRIMARY KEY (`card_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile_card`
--

LOCK TABLES `mobile_card` WRITE;
/*!40000 ALTER TABLE `mobile_card` DISABLE KEYS */;
INSERT INTO `mobile_card` VALUES ('511694006503554','10005908326766','VT',1585817493051,2,20000),('511694006503555','10005908326767','VT',1587269482127,2,20000),('511694006503556','10005908326768','VT',1587269689481,2,20000),('511694006503557','10005908326769','VT',1587269909430,2,20000),('511694006503558','10005908326770','VT',1589022517151,2,20000),('511694006503561','10005908326766','VINA',1589024730637,2,20000),('511694006503562','10005908326767','VINA',1589024780657,2,20000),('511694006503563','10005908326768','VINA',0,1,20000),('511694006503564','10005908326769','VINA',0,1,20000),('511694006503565','10005908326770','VINA',0,1,20000);
/*!40000 ALTER TABLE `mobile_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobile_card_order`
--

DROP TABLE IF EXISTS `mobile_card_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobile_card_order` (
  `order_id` bigint NOT NULL,
  `amount` bigint DEFAULT NULL,
  `card_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobile_card_order`
--

LOCK TABLES `mobile_card_order` WRITE;
/*!40000 ALTER TABLE `mobile_card_order` DISABLE KEYS */;
INSERT INTO `mobile_card_order` VALUES (1585817493051,20000,'VT'),(1587269482127,20000,'VT'),(1587269689481,20000,'VT'),(1587269909430,20000,'VT'),(1589022517151,20000,'VT'),(1589024730637,20000,'VT'),(1589024780657,20000,'VT');
/*!40000 ALTER TABLE `mobile_card_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_transfer_order`
--

DROP TABLE IF EXISTS `money_transfer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_transfer_order` (
  `order_id` bigint NOT NULL,
  `amount` bigint NOT NULL,
  `receiver_phone` varchar(45) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_transfer_order`
--

LOCK TABLES `money_transfer_order` WRITE;
/*!40000 ALTER TABLE `money_transfer_order` DISABLE KEYS */;
INSERT INTO `money_transfer_order` VALUES (1585400409439,100000,'0365535079'),(1588255147577,100000,'0365535079'),(1588255236047,100000,'0365535079'),(1588255282925,100000,'0365535079'),(1589022246592,100000,'0365535080'),(1589022285906,100000,'0365535080'),(1589022383543,100000,'0365535080'),(1589022495511,100000,'0365535080'),(1589023962347,100000,'0365535080'),(1589024003355,100000,'0365535080'),(1589024458520,100000,'0365535080'),(1589024669475,100000,'0365535080'),(1589024701900,100000,'0365535080');
/*!40000 ALTER TABLE `money_transfer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `transaction_id` bigint NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `source_of_fund` int DEFAULT NULL,
  `charge_time` bigint DEFAULT NULL,
  `amount` bigint DEFAULT NULL,
  `status` int DEFAULT NULL,
  `service_type` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1584880240806,1,'1584784717714',1,1588251103680,100,1,1),(1584880273330,2,'1584784717714',1,1588251103681,100,1,1),(1584880299280,3,'1584784717714',1,1588251103682,100,1,1),(1584880351940,4,'1584784717714',1,1588251103683,100,0,1),(1584880381944,5,'1584784717714',1,1588251103684,100,1,1),(1584880520439,6,'1584784717714',2,1588251103685,100,1,1),(1584880595421,7,'1584784717714',2,1588251103686,100,1,1),(1584880631177,8,'1584784717714',2,1588251103687,9999969933,0,1),(1585450745438,1585450672795,'1584784717714',2,1588251103688,100,1,2),(1585450834543,1585450782799,'1584784717714',2,1588251103689,100,1,2),(1585450965390,1585450959375,'1584784717714',2,1588251103690,100,1,2),(1585457374879,1585457313965,'1584784717714',1,1588251103691,100,1,2),(1585457424994,1585457419036,'1584784717714',1,1588251103692,100,1,2),(1585457463697,1585457457134,'1584784717714',1,1588251103693,100,1,2),(1585457580550,1585457518287,'1584784717714',1,1588251103694,100000,1,2),(1587269555825,1587269482127,'1584784717714',1,1588251103695,20000,1,4),(1587269694771,1587269689481,'1584784717714',1,1588251103696,20000,1,4),(1587269916722,1587269909430,'1584784717714',1,1588251103697,20000,1,4),(1588515845303,1588515714669,'1584784717714',1,1588515845308,20000,1,1),(1589020474180,1589020432833,'1584784717714',1,1589020474189,20000,1,1),(1589020559005,1589020553483,'1584784717714',1,1589020559015,20000,1,1),(1589020641157,1589020634184,'1584784717714',1,1589020641160,20000,1,1),(1589020718874,1589020713152,'1584784717714',1,1589020718876,20000,1,1),(1589020820403,1589020815970,'1584784717714',1,1589020820408,20000,1,1),(1589020954707,1589020950117,'1584784717714',1,1589020954712,20000,1,1),(1589020984431,1589020978754,'1584784717714',1,1589020984434,20000,1,1),(1589021185416,1589021177682,'1584784717714',1,1589021185424,20000,1,1),(1589021317418,1589021312475,'1584784717714',1,1589021317425,20000,1,1),(1589021417185,1589021392718,'1584784717714',2,1589021417188,100000,1,2),(1589021465367,1589021460153,'1584784717714',2,1589021465369,100000,1,2),(1589021521981,1589021516283,'1584784717714',2,1589021522102,100000,1,2),(1589021588959,1589021580230,'1584784717714',2,1589021589082,100000,1,2),(1589021673681,1589021667073,'1584784717714',2,1589021673822,100000,1,2),(1589021800996,1589021783052,'1584784717714',1,1589021800998,20000,1,1),(1589021846742,1589021837076,'1584784717714',1,1589021846744,20000,1,1),(1589021879903,1589021864164,'1584784717714',1,1589021879905,20000,1,1),(1589021986942,1589021978829,'1584784717714',1,1589021989741,20000,1,1),(1589022173211,1589022163422,'1584784717714',1,1589022173218,20000,1,1),(1589022253481,1589022246592,'1584784717714',1,1589022253485,20000,1,3),(1589022291166,1589022285906,'1584784717714',1,1589022291168,20000,1,3),(1589022388834,1589022383543,'1584784717714',1,1589022388840,20000,1,3),(1589022502880,1589022495511,'1584784717714',1,1589022502886,20000,1,3),(1589022536955,1589022517151,'1584784717714',1,1589022536957,20000,1,4),(1589023493837,1589023462177,'1584784717714',1,1589023493843,20000,1,1),(1589023524175,1589023517943,'1584784717714',1,1589023524176,20000,1,1),(1589023530810,1589023517943,'1584784717714',1,1589023530812,20000,1,2),(1589023551277,1589023546116,'1584784717714',1,1589023551278,20000,1,2),(1589023568171,1589023562418,'1584784717714',1,1589023568173,20000,1,2),(1589023595547,1589023581669,'1584784717714',2,1589023595551,100000,1,2),(1589023865206,1589023850674,'1584784717714',1,1589023865212,20000,1,1),(1589023912166,1589023906097,'1584784717714',1,1589023912171,20000,1,1),(1589023937714,1589023931759,'1584784717714',2,1589023937717,100000,1,2),(1589023988642,1589023962347,'1584784717714',1,1589023988643,20000,1,3),(1589024015352,1589024003355,'1584784717714',2,1589024015354,100000,1,3),(1589024466085,1589024458520,'1584784717714',1,1589024466090,20000,1,3),(1589024579680,1589024572550,'1584784717714',1,1589024579684,20000,1,3),(1589024607595,1589024591105,'1584784717714',1,1589024607598,20000,1,3),(1589024686850,1589024669475,'1584784717714',1,1589024686855,20000,1,3),(1589024709324,1589024701900,'1584784717714',2,1589024709327,100000,1,3),(1589024739244,1589024730637,'1584784717714',2,1589024739246,100000,1,4),(1589024763482,1589024757030,'1584784717714',1,1589024763485,20000,1,3),(1589024788440,1589024780657,'1584784717714',1,1589024788443,20000,1,4);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_history`
--

DROP TABLE IF EXISTS `transaction_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_history` (
  `user_id` varchar(45) NOT NULL,
  `transaction_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  `amount` bigint NOT NULL,
  `service_type` int NOT NULL,
  `sourceof_fund` int NOT NULL,
  `timemilliseconds` bigint NOT NULL,
  `txndetail` varchar(1028) NOT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`user_id`,`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_history`
--

LOCK TABLES `transaction_history` WRITE;
/*!40000 ALTER TABLE `transaction_history` DISABLE KEYS */;
INSERT INTO `transaction_history` VALUES ('1584784717714',1589023912166,1589023906097,20000,1,1,1589023912256,'{\"bankName\":\"MSB\",\"cardNo\":\"***3742\"}',1),('1584784717714',1589023937714,1589023931759,100000,2,2,1589023938298,'{\"bankName\":\"MSB\",\"cardNo\":\"***3742\"}',1),('1584784717714',1589024686850,1589024669475,20000,3,1,1589024686931,'{\"receiverName\":\"Nguyen Quoc Thai\"}',1),('1584784717714',1589024709324,1589024701900,100000,3,2,1589024709906,'{\"receiverName\":\"Nguyen Quoc Thai\",\"bankName\":\"MSB\",\"cardNo\":\"***3742\"}',1),('1584784717714',1589024739244,1589024730637,100000,4,2,1589024739866,'{\"cardType\":\"VT\",\"cardNumber\":\"511694006503561\"}',1),('1584784717714',1589024788440,1589024780657,20000,4,1,1589024788492,'{\"cardType\":\"VT\",\"cardNumber\":\"511694006503562\"}',1),('1584784717715',1589024686850,1589024669475,20000,3,1,1589024687066,'{\"senderName\":\"Nguyen Quoc Thai\"}',1),('1584784717715',1589024709324,1589024701900,100000,3,2,1589024709994,'{\"senderName\":\"Nguyen Quoc Thai\"}',1);
/*!40000 ALTER TABLE `transaction_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notify`
--

DROP TABLE IF EXISTS `user_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_notify` (
  `notify_id` bigint NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `service_type` int NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` varchar(1048) NOT NULL,
  `create_date` bigint NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`notify_id`),
  UNIQUE KEY `id_UNIQUE` (`notify_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notify`
--

LOCK TABLES `user_notify` WRITE;
/*!40000 ALTER TABLE `user_notify` DISABLE KEYS */;
INSERT INTO `user_notify` VALUES (1588254094273,'1584784717714',5,'Liên kết ngân hàng MSB','{\"bankCode\":\"msb\",\"first6CardNo\":\"501971\",\"last6CardNo\":\"3742\"}',1588254094278,1),(1588254418426,'1584784717714',6,'Hủy liên kết ngân hàng MSB','{\"bankCode\":\"msb\",\"first6CardNo\":\"501971\",\"last6CardNo\":\"3742\"}',1588254418431,1),(1588254428637,'1584784717714',5,'Liên kết ngân hàng MSB','{\"bankCode\":\"msb\",\"first6CardNo\":\"501971\",\"last6CardNo\":\"3742\"}',1588254428638,1),(1588255292399,'1584784717714',3,'Nhận tiền từ Nguyen Quoc Thai','{\"amount\":100000,\"status\":1,\"orderid\":\"1588255282925\",\"transactionid\":\"103\",\"sender\":\"Nguyen Quoc Thai\"}',1588255292405,1),(1588255732065,'1584784717714',7,'Xác thực thông tin tài khoản thành công','{\"status\":1,\"comment\":\"AAAAAAAAA\"}',1588255732069,1),(1588255760272,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255760272,1),(1588255776179,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255776179,1),(1588255779243,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255779243,1),(1588255780258,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255780258,1),(1588255798042,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255798049,1),(1588255800441,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255800441,1),(1588255802138,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255802138,1),(1588255803286,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255803286,1),(1588255803953,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255803953,1),(1588255804286,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255804286,1),(1588255804476,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255804476,1),(1588255804697,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255804697,1),(1588255805027,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255805027,1),(1588255806210,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255806210,1),(1588255806394,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255806394,1),(1588255806645,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255806645,1),(1588255806957,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255806957,1),(1588255807156,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255807157,1),(1588255807348,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255807348,1),(1588255807543,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255807543,1),(1588255807761,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255807761,1),(1588255807939,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255807939,1),(1588255808177,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255808177,1),(1588255808361,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255808361,1),(1588255808574,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255808574,1),(1588255808785,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255808785,1),(1588255808979,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255808979,1),(1588255809174,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255809174,1),(1588255809383,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255809383,1),(1588255809544,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255809544,1),(1588255809737,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255809737,1),(1588255809925,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255809925,1),(1588255810165,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255810165,1),(1588255810347,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255810347,1),(1588255810525,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255810525,1),(1588255810727,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255810727,1),(1588255810910,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255810910,1),(1588255811116,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255811116,1),(1588255811305,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255811305,1),(1588255811510,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255811510,1),(1588255811679,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255811679,1),(1588255811880,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255811880,1),(1588255812075,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255812075,1),(1588255812276,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255812276,1),(1588255812883,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255812883,1),(1588255813293,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255813293,1),(1588255813515,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255813515,1),(1588255813743,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255813743,1),(1588255813929,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255813929,1),(1588255814124,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255814124,1),(1588255814284,'1584784717714',7,'Xác thực thông tin tài khoản thất bại','{\"status\":2,\"comment\":\"AAAAAAAAA\"}',1588255814284,1),(1588513297125,'1584784717714',6,'Hủy liên kết ngân hàng MSB','{\"bankCode\":\"msb\",\"first6CardNo\":\"501971\",\"last6CardNo\":\"3742\"}',1588513297131,1),(1588515415535,'1584784717714',6,'Hủy liên kết ngân hàng MSB','{\"bankCode\":\"msb\",\"first6CardNo\":\"501971\",\"last6CardNo\":\"3742\"}',1588515415540,1),(1588515420689,'1584784717714',5,'Liên kết ngân hàng MSB','{\"bankCode\":\"msb\",\"first6CardNo\":\"501971\",\"last6CardNo\":\"3742\"}',1588515420690,1),(1588515425660,'1584784717714',6,'Hủy liên kết ngân hàng MSB','{\"bankCode\":\"msb\",\"first6CardNo\":\"501971\",\"last6CardNo\":\"3742\"}',1588515425660,1),(1588515688045,'1584784717714',5,'Liên kết ngân hàng MSB','{\"bankCode\":\"msb\",\"first6CardNo\":\"501971\",\"last6CardNo\":\"3742\"}',1588515688049,1),(1589022256610,'1584784717715',3,'Nhận tiền từ Nguyen Quoc Thai','{\"amount\":100000,\"status\":1,\"orderid\":\"1589022246592\",\"transactionid\":\"1589022253481\",\"sender\":\"Nguyen Quoc Thai\"}',1589022256617,1),(1589022291295,'1584784717715',3,'Nhận tiền từ Nguyen Quoc Thai','{\"amount\":100000,\"status\":1,\"orderid\":\"1589022285906\",\"transactionid\":\"1589022291166\",\"sender\":\"Nguyen Quoc Thai\"}',1589022291299,1),(1589022389027,'1584784717715',3,'Nhận tiền từ Nguyen Quoc Thai','{\"amount\":100000,\"status\":1,\"orderid\":\"1589022383543\",\"transactionid\":\"1589022388834\",\"sender\":\"Nguyen Quoc Thai\"}',1589022389035,1),(1589022503081,'1584784717715',3,'Nhận tiền từ Nguyen Quoc Thai','{\"amount\":100000,\"status\":1,\"orderid\":\"1589022495511\",\"transactionid\":\"1589022502880\",\"sender\":\"Nguyen Quoc Thai\"}',1589022503089,1),(1589023988750,'1584784717715',3,'Nhận tiền từ Nguyen Quoc Thai','{\"amount\":100000,\"status\":1,\"orderid\":\"1589023962347\",\"transactionid\":\"1589023988642\",\"sender\":\"Nguyen Quoc Thai\"}',1589023988755,1),(1589024016065,'1584784717715',3,'Nhận tiền từ Nguyen Quoc Thai','{\"amount\":100000,\"status\":1,\"orderid\":\"1589024003355\",\"transactionid\":\"1589024015352\",\"sender\":\"Nguyen Quoc Thai\"}',1589024016069,1),(1589024466252,'1584784717715',3,'Nhận tiền từ Nguyen Quoc Thai','{\"amount\":100000,\"status\":1,\"orderid\":\"1589024458520\",\"transactionid\":\"1589024466085\",\"sender\":\"Nguyen Quoc Thai\"}',1589024466257,1),(1589024687005,'1584784717715',3,'Nhận tiền từ Nguyen Quoc Thai','{\"amount\":100000,\"status\":1,\"orderid\":\"1589024669475\",\"transactionid\":\"1589024686850\",\"sender\":\"Nguyen Quoc Thai\"}',1589024687010,1),(1589024709956,'1584784717715',3,'Nhận tiền từ Nguyen Quoc Thai','{\"amount\":100000,\"status\":1,\"orderid\":\"1589024701900\",\"transactionid\":\"1589024709324\",\"sender\":\"Nguyen Quoc Thai\"}',1589024709960,1);
/*!40000 ALTER TABLE `user_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet_topup_order`
--

DROP TABLE IF EXISTS `wallet_topup_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet_topup_order` (
  `order_id` bigint NOT NULL,
  `amount` bigint NOT NULL,
  PRIMARY KEY (`order_id`,`amount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet_topup_order`
--

LOCK TABLES `wallet_topup_order` WRITE;
/*!40000 ALTER TABLE `wallet_topup_order` DISABLE KEYS */;
INSERT INTO `wallet_topup_order` VALUES (1585390573726,100000),(1585450959375,100000),(1589021667073,100000),(1589023581669,100000),(1589023931759,100000);
/*!40000 ALTER TABLE `wallet_topup_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet_user`
--

DROP TABLE IF EXISTS `wallet_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet_user` (
  `user_id` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(125) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `cmnd` varchar(20) DEFAULT NULL,
  `pin` varchar(6) DEFAULT NULL,
  `cmnd_font_img` varchar(128) DEFAULT NULL,
  `cmnd_back_img` varchar(128) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `verify` int DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet_user`
--

LOCK TABLES `wallet_user` WRITE;
/*!40000 ALTER TABLE `wallet_user` DISABLE KEYS */;
INSERT INTO `wallet_user` VALUES ('1584784717714','0365535079','HCM','01/02/2001','Nguyen Quoc Thai','312198889','123456','a55ceff4-fc76-4fc8-b093-f973e10f560b','a55ceff4-fc76-4fc8-b093-f973e10f560b','a55ceff4-fc76-4fc8-b093-f973e10f560b',2),('1584784717715','0365535080','HCM','01/02/2001','Nguyen Quoc Thai','312198889','123456','a55ceff4-fc76-4fc8-b093-f973e10f560b','a55ceff4-fc76-4fc8-b093-f973e10f560b','a55ceff4-fc76-4fc8-b093-f973e10f560b',2);
/*!40000 ALTER TABLE `wallet_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_order`
--

DROP TABLE IF EXISTS `withdraw_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraw_order` (
  `order_id` bigint NOT NULL,
  `f6cardno` varchar(6) NOT NULL,
  `l4cardno` varchar(4) NOT NULL,
  `amount` bigint NOT NULL,
  `bankcode` varchar(10) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_order`
--

LOCK TABLES `withdraw_order` WRITE;
/*!40000 ALTER TABLE `withdraw_order` DISABLE KEYS */;
INSERT INTO `withdraw_order` VALUES (1585390895990,'501971','3742',100000,'msb'),(1588515714669,'501971','3742',100000,'msb'),(1589020432833,'501971','3742',100000,'msb'),(1589020815970,'501971','3742',100000,'msb'),(1589020950117,'501971','3742',100000,'msb'),(1589020978754,'501971','3742',100000,'msb'),(1589021177682,'501971','3742',100000,'msb'),(1589021312475,'501971','3742',100000,'msb'),(1589023462177,'501971','3742',100000,'msb'),(1589023850674,'501971','3742',100000,'msb'),(1589023906097,'501971','3742',100000,'msb');
/*!40000 ALTER TABLE `withdraw_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `z_wallet`
--

DROP TABLE IF EXISTS `z_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_wallet` (
  `user_id` varchar(50) NOT NULL,
  `balance` bigint NOT NULL,
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `transaction_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `z_wallet`
--

LOCK TABLES `z_wallet` WRITE;
/*!40000 ALTER TABLE `z_wallet` DISABLE KEYS */;
INSERT INTO `z_wallet` VALUES ('1212121212',100,'2020-03-21 12:35:35',121212122),('1212121212',300,'2020-03-21 12:36:01',1212121223),('1212121212',400,'2020-03-21 12:36:15',1212121244),('1212121212',300,'2020-03-21 13:20:46',1212121254),('1584784717714',91020092,'2020-03-28 10:00:07',1),('1584784717714',91120092,'2020-03-28 10:16:35',2),('1584784717714',91220092,'2020-03-28 13:03:47',100),('1584784717714',91259792,'2020-04-30 14:00:06',101),('1584784717714',91359792,'2020-04-30 14:00:46',102),('1584784717714',91459792,'2020-04-30 14:01:32',103),('1584784717714',200,'2020-03-22 12:29:19',121212121),('1584784717714',100,'2020-03-22 12:30:41',1584880240806),('1584784717714',90920192,'2020-03-22 12:32:54',1584880273330),('1584784717714',90920092,'2020-03-22 12:33:02',1584880381944),('1584784717714',91320092,'2020-03-29 03:02:50',1585450965390),('1584784717714',91319992,'2020-03-29 04:49:35',1585457374879),('1584784717714',91319892,'2020-03-29 04:50:25',1585457424994),('1584784717714',91319792,'2020-03-29 04:51:04',1585457463697),('1584784717714',91219792,'2020-03-29 04:53:01',1585457580550),('1584784717714',91199792,'2020-04-19 04:12:36',1587269555825),('1584784717714',91179792,'2020-04-19 04:14:55',1587269694771),('1584784717714',91159792,'2020-04-19 04:18:37',1587269916722),('1584784717714',91439792,'2020-05-03 14:24:05',1588515845303),('1584784717714',91419792,'2020-05-09 10:34:34',1589020474180),('1584784717714',91399792,'2020-05-09 10:35:59',1589020559005),('1584784717714',91379792,'2020-05-09 10:37:42',1589020641157),('1584784717714',91359792,'2020-05-09 10:38:39',1589020718874),('1584784717714',91339792,'2020-05-09 10:40:20',1589020820403),('1584784717714',91319792,'2020-05-09 10:42:35',1589020954707),('1584784717714',91299792,'2020-05-09 10:43:04',1589020984431),('1584784717714',91279792,'2020-05-09 10:46:25',1589021185416),('1584784717714',91259792,'2020-05-09 10:48:37',1589021317418),('1584784717714',91359792,'2020-05-09 10:54:35',1589021673681),('1584784717714',91339792,'2020-05-09 10:56:41',1589021800996),('1584784717714',91319792,'2020-05-09 10:57:27',1589021846742),('1584784717714',91299792,'2020-05-09 10:58:00',1589021879903),('1584784717714',91279792,'2020-05-09 10:59:59',1589021986942),('1584784717714',91259792,'2020-05-09 11:02:53',1589022173211),('1584784717714',91239792,'2020-05-09 11:04:14',1589022253481),('1584784717714',91219792,'2020-05-09 11:04:51',1589022291166),('1584784717714',91199792,'2020-05-09 11:06:29',1589022388834),('1584784717714',91179792,'2020-05-09 11:08:23',1589022502880),('1584784717714',91159792,'2020-05-09 11:08:57',1589022536955),('1584784717714',91139792,'2020-05-09 11:24:54',1589023493837),('1584784717714',91119792,'2020-05-09 11:25:24',1589023524175),('1584784717714',91099792,'2020-05-09 11:25:31',1589023530810),('1584784717714',91079792,'2020-05-09 11:25:51',1589023551277),('1584784717714',91059792,'2020-05-09 11:26:08',1589023568171),('1584784717714',91159792,'2020-05-09 11:26:36',1589023595547),('1584784717714',91139792,'2020-05-09 11:31:05',1589023865206),('1584784717714',91119792,'2020-05-09 11:31:52',1589023912166),('1584784717714',91219792,'2020-05-09 11:32:18',1589023937714),('1584784717714',91199792,'2020-05-09 11:33:09',1589023988642),('1584784717714',91179792,'2020-05-09 11:41:06',1589024466085),('1584784717714',91159792,'2020-05-09 11:43:00',1589024579680),('1584784717714',91139792,'2020-05-09 11:43:28',1589024607595),('1584784717714',91119792,'2020-05-09 11:44:47',1589024686850),('1584784717714',91099792,'2020-05-09 11:46:04',1589024763482),('1584784717714',91079792,'2020-05-09 11:46:28',1589024788440),('1584784717715',100000,'2020-05-09 11:04:17',1589022253481),('1584784717715',200000,'2020-05-09 11:04:51',1589022291166),('1584784717715',300000,'2020-05-09 11:06:29',1589022388834),('1584784717715',400000,'2020-05-09 11:08:23',1589022502880),('1584784717715',500000,'2020-05-09 11:33:09',1589023988642),('1584784717715',600000,'2020-05-09 11:33:36',1589024015352),('1584784717715',700000,'2020-05-09 11:41:06',1589024466085),('1584784717715',800000,'2020-05-09 11:44:47',1589024686850),('1584784717715',900000,'2020-05-09 11:45:10',1589024709324);
/*!40000 ALTER TABLE `z_wallet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-09 18:49:00
