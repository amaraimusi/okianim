-- MySQL dump 10.16  Distrib 10.1.30-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: okianim
-- ------------------------------------------------------
-- Server version	10.1.30-MariaDB

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
-- Table structure for table `anim_ctgs`
--

DROP TABLE IF EXISTS `anim_ctgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anim_ctgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anim_ctg_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '動物カテゴリ名',
  `note` text CHARACTER SET utf8 NOT NULL COMMENT '備考',
  `sort_no` int(11) DEFAULT '0' COMMENT '順番',
  `delete_flg` tinyint(1) DEFAULT '0' COMMENT '無効フラグ',
  `update_user` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新者',
  `ip_addr` varchar(40) CHARACTER SET utf8 DEFAULT NULL COMMENT 'IPアドレス',
  `created` datetime DEFAULT NULL COMMENT '生成日時',
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='動物カテゴリー';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anim_ctgs`
--

LOCK TABLES `anim_ctgs` WRITE;
/*!40000 ALTER TABLE `anim_ctgs` DISABLE KEYS */;
INSERT INTO `anim_ctgs` VALUES (1,'海水魚','',1,0,'kenji_uehara','local','2018-09-10 14:36:00','2018-09-10 05:53:49'),(2,'淡水魚','',2,0,'kenji_uehara','local','2018-09-10 14:36:00','2018-09-10 05:53:49'),(3,'鳥類','',3,0,'kenji_uehara','local','2018-09-10 14:36:00','2018-09-10 05:53:49'),(4,'哺乳類','',4,0,'kenji_uehara','local','2018-09-10 14:36:00','2018-09-10 05:53:49'),(5,'爬虫類','',5,0,'kenji_uehara','local','2018-09-10 14:36:00','2018-09-10 05:53:49'),(6,'両生類','',6,0,'kenji_uehara','local','2018-09-10 14:36:00','2018-09-10 05:53:49'),(7,'軟体動物','',7,0,'kenji_uehara','local','2018-09-10 14:36:00','2018-09-10 05:53:49'),(8,'虫','',8,0,'kenji_uehara','local','2018-09-10 14:36:00','2018-09-10 05:53:49'),(9,'甲殻類','',9,0,'kenji_uehara','local','2018-09-10 14:36:00','2018-09-10 05:53:49'),(10,'菌類','',10,0,'','::1','2018-09-10 15:58:28','2018-09-10 06:58:28');
/*!40000 ALTER TABLE `anim_ctgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oki_animals`
--

DROP TABLE IF EXISTS `oki_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oki_animals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `animal_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '動物名',
  `anim_ctg_id` int(11) DEFAULT NULL COMMENT '動物カテゴリ',
  `place` varchar(255) DEFAULT NULL COMMENT '場所',
  `img_fn` varchar(256) CHARACTER SET utf8 DEFAULT NULL COMMENT '動物画像',
  `note` text CHARACTER SET utf8 NOT NULL COMMENT '備考',
  `sort_no` int(11) DEFAULT '0' COMMENT '順番',
  `delete_flg` tinyint(1) DEFAULT '0' COMMENT '無効フラグ',
  `update_user` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新者',
  `ip_addr` varchar(40) CHARACTER SET utf8 DEFAULT NULL COMMENT 'IPアドレス',
  `created` datetime DEFAULT NULL COMMENT '生成日時',
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COMMENT='沖縄動物';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oki_animals`
--

LOCK TABLES `oki_animals` WRITE;
/*!40000 ALTER TABLE `oki_animals` DISABLE KEYS */;
INSERT INTO `oki_animals` VALUES (1,'ヨシノボリの仲間',2,'大宜味村源河川','1498312069338.jpg','',1,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-10 05:50:09'),(2,'ウミヘビの仲間',5,'羽地内海','20170402_125229.jpg','ガーラ釣り中に釣りあげる',2,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-10 05:50:09'),(3,'カメムシの仲間',8,'本部町','DSC_0010.jpg','バンシルーの木にて。見かけない種。',3,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-10 05:50:09'),(4,'アオムネスジタマムシ',8,'沖縄県北部','DSC_0017.jpg','飛来し腕にとまった。',4,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:23:23'),(5,'クマネズミ',4,'本部町','DSC_0033.jpg','体の割には目、耳が大きく、尾も長め。おそらくドブネズミではなくクマネズミ。老猫に捕らえられた。',5,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-10 05:50:09'),(6,'シリケンイモリ',6,'与那覇岳','DSC_0037 (1).jpg','与那覇岳の登山道。イボイモリと見間違えるほどゴツイ個体。',6,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-10 05:50:09'),(7,'ビッグキャット',4,'北谷町吉原','DSC_0037.jpg','今まで見た中で最大級の猫。',7,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:23:34'),(8,'アオスジアゲハの幼虫',8,'今帰仁村','DSC_0054 (1).jpg','ヤブニッケイの木にて確認。',8,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-10 05:50:09'),(9,'イシガケチョウ',8,'今帰仁村大井川','DSC_0054.jpg','枯沢の中にて確認',9,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:23:42'),(10,'ベイトフィッシュ',1,'羽地内海','DSC_0056.jpg','夜間の波打ち際で大量の群れを成している。',10,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-10 05:50:09'),(11,'タイワンカブト',8,'本部町','DSC_0071.jpg','近頃見かけなくなったが、いる場所にはいる。',11,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-10 05:50:09'),(12,'ガーラ',1,'羽地内海','DSC_0104.jpg','ルアーフィッシングにて釣りあげる。',12,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-10 05:50:09'),(13,'アオムネスジタマムシ',8,'今帰仁村与那嶺','DSC_0122.jpg','建物の壁にとまっていた。',13,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-10 05:50:09'),(14,'ベイトフィッシュ',1,'羽地内海','DSC_0131.jpg','10cmくらいの小魚。夜間に捕獲。',14,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-10 05:50:09'),(15,'コメツキガニの仲間',9,'羽地内海','DSC_0176.jpg','',15,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:23:54'),(16,'カニの仲間',9,'羽地内海','DSC_0188.jpg','',16,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:24:00'),(17,'リュウキュウアオヘビ',5,'比地大滝','DSC_0213.jpg','とても人馴れしている。',17,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:24:07'),(18,'キノボリトカゲ',5,'沖縄県北部','DSC_0224.jpg','山地にて',18,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:24:35'),(19,'イカの仲間',7,'羽地内海','DSC_0421.jpg','',19,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:24:42'),(20,'イカの仲間',7,'沖縄県北部','DSC_0504.jpg','',20,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-10 05:50:10'),(21,'ハゼの仲間',2,'源河川','DSC_0542.jpg','',21,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-10 05:50:10'),(22,'謎のイモムシ',8,'沖縄北部','DSC_0550.jpg','登山中に確認。今まで見たことがない種。',22,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:24:49'),(23,'地域アヒル',3,'今帰仁村湧川','DSC_0679.jpg','人馴れしたアヒル。川の中にいるが誰かに飼われているかもしれない。',23,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:24:56'),(24,'コチ',1,'羽地内海','DSC_0687.jpg','ガーラ釣り中に釣れた。',24,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:25:03'),(25,'クロダイの仲間',1,'本部町','DSC_0700.jpg','',25,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:25:08'),(26,'カマキリの仲間',8,'沖縄県北部','DSC_0748.jpg','',26,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:25:17'),(27,'ヒヨドリの子供？',3,'本部町','DSC_0874.jpg','猫に捕らえられたヒヨドリのヒナと思われる。猫をかなり厳しく叱りつける。いまのところ猫は鳥を捕ってこなくなった。',27,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:25:23'),(28,'カレハガの幼虫',8,'本部半島','DSC_0881.jpg','大型の毛虫。ゴミ捨て場にて確認。',28,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:25:31'),(29,'イトトンボの仲間',8,'本部町','DSC_1012.jpg','指を差し出すととまった。',29,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:25:37'),(30,'タイの仲間',1,'本部町沿海','DSC_1013.jpg','ボート釣りにて',30,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:25:45'),(31,'ミナミクロダイ',1,'本部町','DSC_1033.jpg','',31,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:25:53'),(32,'ベッコウバチの仲間',8,'今帰仁村天底','DSC_1056.jpg','民家にてクモを運んでいるところ。',32,0,'kenji_uehara','local','0000-00-00 00:00:00','2018-09-15 23:25:58');
/*!40000 ALTER TABLE `oki_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT 'ユーザー名',
  `password` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT 'パスワード',
  `role` varchar(20) CHARACTER SET latin1 DEFAULT NULL COMMENT '権限',
  `sort_no` int(11) DEFAULT '0' COMMENT '順番',
  `delete_flg` tinyint(4) DEFAULT '0' COMMENT '削除フラグ',
  `update_user` varchar(50) CHARACTER SET latin1 DEFAULT NULL COMMENT '更新ユーザー',
  `ip_addr` varchar(40) CHARACTER SET latin1 DEFAULT NULL COMMENT '更新IPアドレス',
  `created` datetime DEFAULT NULL COMMENT '作成日時',
  `modified` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='ユーザー';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-16  8:28:07
