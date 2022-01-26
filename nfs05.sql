-- MySQL dump 10.19  Distrib 10.3.31-MariaDB, for debian-linux-gnueabihf (armv8l)
--
-- Host: localhost    Database: nfs_project
-- ------------------------------------------------------
-- Server version	10.3.31-MariaDB-0+deb10u1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE nfs05;
USE nfs05;
--
-- Table structure for table `agence`
--

DROP TABLE IF EXISTS `agence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agence`
--

LOCK TABLES `agence` WRITE;
/*!40000 ALTER TABLE `agence` DISABLE KEYS */;
INSERT INTO `agence` VALUES (1,'A0923','Alpes-Maritimes'),(2,'A0801','Bas-Rhin'),(3,'A0238','Bouches-du-Rhone'),(4,'A0786','Essonne'),(5,'A0216','Finistere'),(6,'A0724','Gironde'),(7,'A0973','Haute-Garonne'),(8,'A0691','Hauts-de-Seine'),(9,'A0538','Herault'),(10,'A0617','Ille-et-Vilaine'),(11,'A0473','Isere'),(12,'A0512','Loire-Atlantique'),(13,'A0143','Maine-et-Loire'),(14,'A0179','Moselle'),(15,'A0468','Nord'),(16,'A0804','Oise'),(17,'A0615','Paris'),(18,'A0664','Pas-de-Calais'),(19,'A0477','Rhone'),(20,'A0392','Seine-et-Marne'),(21,'A0528','Seine-Maritime'),(22,'A0465','Seine-Saint-Denis'),(23,'A0742','Val-de-Marne'),(24,'A0314','Val-d\'Oise'),(25,'A0347','Var'),(26,'A0791','Yvelines');
/*!40000 ALTER TABLE `agence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agence_article`
--

DROP TABLE IF EXISTS `agence_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agence_article` (
  `id_agence` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_agence`,`id_article`),
  KEY `FK_AGENCE_ARTICLE_agence` (`id_agence`),
  KEY `FK_AGENCE_ARTICLE_article` (`id_article`),
  CONSTRAINT `FK_AGENCE_ARTICLE_agence` FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id`),
  CONSTRAINT `FK_AGENCE_ARTICLE_article` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agence_article`
--

LOCK TABLES `agence_article` WRITE;
/*!40000 ALTER TABLE `agence_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `agence_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  KEY `FK_article_categorie` (`id_categorie`),
  CONSTRAINT `FK_article_categorie` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'P915874199','Lorem',1),(2,'P204985733','ipsum',4),(3,'P277306097','dolor',4),(4,'P771573319','sit',3),(5,'P025948336','amet.',3),(6,'P815021753','Ut',1),(7,'P997263787','exercitationem',2),(8,'P541253707','dolore',2),(9,'P714477208','hic',1),(10,'P948624947','sunt',2),(11,'P599693146','libero',2),(12,'P152590917','et',1),(13,'P963875180','temporibus',3),(14,'P361603178','facilis',6),(15,'P916390382','et',3),(16,'P497142408','voluptatibus',3),(17,'P736540925','voluptas.',4),(18,'P191277432','Est',5),(19,'P746764416','voluptates',3),(20,'P159989816','earum',6),(21,'P559655862','quo',2),(22,'P318309894','adipisci',1),(23,'P912581914','reiciendis',1),(24,'P607979918','ut',5),(25,'P302153880','rerum',5),(26,'P686829680','fuga',2),(27,'P527686789','qui',5),(28,'P577944935','aliquid',2),(29,'P306664342','delectus',3),(30,'P799486934','sit',1),(31,'P077441678','illum',2),(32,'P988747618','veritatis',6),(33,'P711413086','eum',6),(34,'P590822606','culpa',3),(35,'P819873806','nemo',3),(36,'P326901244','aut',3),(37,'P174884831','sequi',1),(38,'P893720456','deleniti.',5),(39,'P943947817','Ut',6),(40,'P038577747','facere',6),(41,'P361045317','velit',2),(42,'P689493373','a',6),(43,'P364330947','distinctio',5),(44,'P753174648','eius',5),(45,'P672880429','in',3),(46,'P104878232','aliquam',4),(47,'P505749906','molestias',2),(48,'P214114866','ut',3),(49,'P553324642','consequatur',3),(50,'P124278642','commodi',5),(51,'P961419315','ut',2),(52,'P434260683','Quis',6),(53,'P287045500','officia',4),(54,'P132445482','qui',3),(55,'P801090942','voluptatem',1),(56,'P608118295','odit',4),(57,'P637318679','est',4),(58,'P362238543','voluptatibus',6),(59,'P899236708','repudiandae.',4),(60,'P409467944','Ut',2),(61,'P349629626','harum',4),(62,'P519744327','quis',5),(63,'P549832791','qui',5),(64,'P189931005','magnam',5),(65,'P300156683','consequatur',6),(66,'P930990429','ea',3),(67,'P754482129','doloremque',6),(68,'P979439388','incidunt',1),(69,'P633750587','sit',3),(70,'P230434800','alias',5),(71,'P250922272','quod.\n\nSed',3),(72,'P563306989','nihil',5),(73,'P063768162','libero',2),(74,'P628919873','hic',3),(75,'P953294913','asperiores',4),(76,'P879714975','deserunt',4),(77,'P538690166','et',6),(78,'P054305936','quia',1),(79,'P655459213','ipsa',2),(80,'P114378290','ut',5),(81,'P605513841','quod',1),(82,'P684434367','aliquid.',1),(83,'P605630341','Aut',2),(84,'P974848637','odit',3),(85,'P057352192','velit',1),(86,'P362215082','ut',1),(87,'P639018864','maxime',4),(88,'P108449108','aliquam',2),(89,'P625188976','et',2),(90,'P800597587','maxime',1),(91,'P127421039','eaque',6),(92,'P235312464','est',4),(93,'P794299237','dolores',2),(94,'P265558822','neque',2),(95,'P944896430','aut',3),(96,'P927805717','dolorum',3),(97,'P804339323','tenetur',1),(98,'P238279499','ut',2),(99,'P778379555','veritatis',3),(100,'P177059310','vitae',3),(101,'P550157917','ut',2),(102,'P219611684','tempore',4),(103,'P447584703','reiciendis.',1),(104,'P579088495','Eos',3),(105,'P552688397','nobis',2),(106,'P026176529','omnis',3),(107,'P472817484','sit',2),(108,'P285557867','fuga',4),(109,'P009336913','adipisci',1),(110,'P190010993','et',2),(111,'P922044261','fugit',2),(112,'P040188355','omnis',1),(113,'P434809023','qui',3),(114,'P053480084','repudiandae',1),(115,'P962973379','magni',1),(116,'P654426675','et',6),(117,'P383213271','molestiae',5),(118,'P952786361','magni',3),(119,'P614292024','qui',5),(120,'P213101066','temporibus',1),(121,'P222629292','nobis',1),(122,'P473843290','aut',1),(123,'P701328608','iure',6),(124,'P085113202','quae.\n\nId',1),(125,'P321580215','sint',3),(126,'P352561502','quia',4),(127,'P798066894','et',4),(128,'P932649996','neque',5),(129,'P269049328','iste',6),(130,'P547296682','hic',5),(131,'P929335460','quis',1),(132,'P004787286','iste',2),(133,'P235930081','et',1),(134,'P165288578','repellendus',1),(135,'P118652680','molestiae',2),(136,'P097397694','et',5),(137,'P131030462','odio',1),(138,'P362959261','rerum',2),(139,'P421704949','eum',2),(140,'P019646992','voluptate',4),(141,'P833120147','atque',1),(142,'P106659789','est',2),(143,'P033938536','illo',2),(144,'P849713343','exercitationem.',6),(145,'P146751141','Ea',6),(146,'P184615705','voluptatibus',5),(147,'P482825133','reprehenderit',3),(148,'P860278582','aut',1),(149,'P852917540','tempora',1),(150,'P683751987','nisi',6),(151,'P860007348','sit',2),(152,'P248780808','aperiam',3),(153,'P663882028','dolores',4),(154,'P573067749','33',6),(155,'P873692691','commodi',6),(156,'P649260238','consequatur',6),(157,'P625223149','quo',1),(158,'P178335061','dolores',3),(159,'P016005890','odio.',2),(160,'P545024298','Est',6),(161,'P677103852','quidem',1),(162,'P750446397','autem',4),(163,'P720920460','ut',4),(164,'P353263142','consectetur',3),(165,'P603554362','amet',5),(166,'P957982412','ut',6),(167,'P979249007','veritatis',5),(168,'P022297828','vero?\n\nAut',4),(169,'P173742151','tempora',2),(170,'P801817305','blanditiis',4),(171,'P487860100','est',3),(172,'P033848619','commodi',4),(173,'P705662823','magni',1),(174,'P426768293','ex',2),(175,'P016853024','necessitatibus',4),(176,'P803960272','deleniti',4),(177,'P969242322','et',4),(178,'P434330823','molestiae',1),(179,'P263927180','saepe',3),(180,'P016643463','eos',1),(181,'P291435807','totam',3),(182,'P407248676','sunt',4),(183,'P161935989','ex',6),(184,'P587933951','internos',1),(185,'P453861819','galisum!',5),(186,'P505507271','Eum',6),(187,'P165950929','facilis',3),(188,'P313232866','galisum',1),(189,'P068311573','id',5),(190,'P401859296','quia',5),(191,'P804361795','maiores',3),(192,'P816231119','vel',6),(193,'P668070239','nostrum',6),(194,'P891657871','perferendis',2),(195,'P454078667','ad',1),(196,'P595419753','molestiae',5),(197,'P614862798','recusandae',5),(198,'P288054760','quo',3),(199,'P595685439','nulla',6),(200,'P114262946','beatae',2),(201,'P784258446','ut',4),(202,'P578503422','voluptatibus',6),(203,'P539741801','galisum',2),(204,'P963198772','ut',2),(205,'P196768488','neque',3),(206,'P094246157','galisum?',3),(207,'P880925351','Et',1),(208,'P121888316','perferendis',3),(209,'P966665557','reprehenderit',6),(210,'P467662869','et',5),(211,'P438317705','tenetur',3),(212,'P788599949','explicabo',3),(213,'P628046660','sit',3),(214,'P774433485','voluptatem',4),(215,'P988027474','ipsa',5),(216,'P616836949','eos',5),(217,'P120102355','nemo',5),(218,'P750000958','iusto.',2),(219,'P389697755','Quo',1),(220,'P698485932','molestias',5),(221,'P323336425','corrupti',3),(222,'P521224362','in',4),(223,'P636112565','eligendi',6),(224,'P616889772','totam',3),(225,'P176111196','et',6),(226,'P029886694','saepe',6),(227,'P621099915','illo',6),(228,'P015839521','qui',2),(229,'P215897894','fugiat',4),(230,'P031970938','fugit',2),(231,'P512161040','et',6),(232,'P464892415','voluptatem',6),(233,'P787978988','facere',5),(234,'P545217727','vel',5),(235,'P362151703','earum',1),(236,'P175105363','dolore.\n\nQui',6),(237,'P789071737','molestiae',5),(238,'P420042628','totam',5),(239,'P732997962','id',6),(240,'P404861954','quia',4),(241,'P825315916','dolorem',5),(242,'P911993751','sit',1),(243,'P084021036','ipsa',3),(244,'P684123960','fugit',6),(245,'P168556721','quo',3),(246,'P790411756','nemo',2),(247,'P446388648','explicabo.',3),(248,'P860708003','Qui',2),(249,'P964374104','possimus',3),(250,'P239746541','voluptas',6),(251,'P305610426','aut',3),(252,'P808812539','omnis',4),(253,'P127231449','dolores',5),(254,'P209719656','sit',3),(255,'P666903964','omnis',1),(256,'P705360886','alias',4),(257,'P526092567','qui',4),(258,'P514380211','magnam',3),(259,'P993623384','necessitatibus.',1),(260,'P424976317','33',2),(261,'P144011465','facilis',1),(262,'P445128407','temporibus',6),(263,'P793607671','rem',5),(264,'P632653165','voluptatum',1),(265,'P782442842','doloremque',3),(266,'P014254746','in',4),(267,'P723945238','eligendi',5),(268,'P576961981','architecto',2),(269,'P712974223','et',3),(270,'P833985205','quia',6),(271,'P031003386','provident',6),(272,'P653061347','est',3),(273,'P172296608','quia',1),(274,'P902299032','quis',3),(275,'P994605366','aut',1),(276,'P266129764','dolores',6),(277,'P346832752','repellat',6),(278,'P935774501','eum',2),(279,'P638374279','esse',2),(280,'P384547925','nisi.\n\nNon',6),(281,'P007616820','impedit',4),(282,'P884440356','natus',6),(283,'P399351352','ut',1),(284,'P343435721','dolorem',3),(285,'P519124582','optio',2),(286,'P565315779','ea',1),(287,'P269205181','dolor',5),(288,'P650078597','doloribus',2),(289,'P442777472','non',5),(290,'P263651604','explicabo',1),(291,'P989925632','deleniti',1),(292,'P158673379','qui',2),(293,'P823590032','quam',1),(294,'P641930054','dicta',4),(295,'P738880205','ea',6),(296,'P768610895','iusto',6),(297,'P626413890','iste.',2),(298,'P826236798','Nam',3),(299,'P251942349','reiciendis',6),(300,'P781001385','dolore',6),(301,'P149179906','et',4),(302,'P402895409','fugit',3),(303,'P566937355','nobis',1),(304,'P626000582','et',1),(305,'P429190877','nisi',4),(306,'P267952668','modi',2),(307,'P052190742','in',6),(308,'P457095737','quod',4),(309,'P128906488','fugit',2),(310,'P273245262','est',3),(311,'P979506876','corporis',3),(312,'P077798625','dolores.',5),(313,'P450472529','Aut',6),(314,'P018966801','neque',4),(315,'P743416449','laboriosam',1),(316,'P660181875','aut',3),(317,'P070660056','inventore',1),(318,'P372754688','numquam',3),(319,'P651793304','aut',3),(320,'P140702487','dicta',5),(321,'P748132552','similique',2),(322,'P318555333','eum',3),(323,'P348379037','beatae',5),(324,'P786229220','voluptatem.',1),(325,'P886009017','Nam',6),(326,'P071357459','reiciendis',5),(327,'P698760276','neque',2),(328,'P279729033','id',2),(329,'P302364367','enim',2),(330,'P672634767','excepturi',4),(331,'P456080768','ut',5),(332,'P262499570','autem',6),(333,'P944255575','harum',4),(334,'P933779197','ut',6),(335,'P836129292','debitis',1),(336,'P379308901','tenetur',3),(337,'P388156658','quo',6),(338,'P802856619','dolorum',1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campagne`
--

DROP TABLE IF EXISTS `campagne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campagne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campagne`
--

LOCK TABLES `campagne` WRITE;
/*!40000 ALTER TABLE `campagne` DISABLE KEYS */;
/*!40000 ALTER TABLE `campagne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (1,'C084','001'),(2,'C084','002'),(3,'C065','003'),(4,'C074','004'),(5,'C075','005'),(6,'C056','006');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chaineproduction`
--

DROP TABLE IF EXISTS `chaineproduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chaineproduction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaineproduction`
--

LOCK TABLES `chaineproduction` WRITE;
/*!40000 ALTER TABLE `chaineproduction` DISABLE KEYS */;
INSERT INTO `chaineproduction` VALUES (1,'W055','241395061'),(2,'W006','543055113'),(3,'W065','541956484'),(4,'W008','206362248'),(5,'W048','183243199'),(6,'W013','648895306'),(7,'W024','352980800'),(8,'W080','413163828'),(9,'W028','989353602'),(10,'W000','632491509'),(11,'W016','137873305'),(12,'W082','113709718'),(13,'W063','851366873'),(14,'W067','596178674'),(15,'W049','837897623'),(16,'W044','696979828'),(17,'W074','491397681'),(18,'W037','675431467'),(19,'W064','164843934'),(20,'W010','165470794'),(21,'W058','792627991'),(22,'W061','923591860'),(23,'W032','832686597'),(24,'W078','359556993'),(25,'W093','752839423'),(26,'W034','876984807');
/*!40000 ALTER TABLE `chaineproduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chaineproduction_operation`
--

DROP TABLE IF EXISTS `chaineproduction_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chaineproduction_operation` (
  `id_operation` int(11) NOT NULL,
  `id_chaineproduction` int(11) NOT NULL,
  PRIMARY KEY (`id_operation`,`id_chaineproduction`),
  KEY `FK_CHAINEPRODUCTION_OPERATION_operation` (`id_operation`),
  KEY `FK_CHAINEPRODUCTION_OPERATION_chaineProduction` (`id_chaineproduction`),
  CONSTRAINT `FK_CHAINEPRODUCTION_OPERATION_chaineProduction` FOREIGN KEY (`id_chaineproduction`) REFERENCES `chaineproduction` (`id`),
  CONSTRAINT `FK_CHAINEPRODUCTION_OPERATION_operation` FOREIGN KEY (`id_operation`) REFERENCES `operation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chaineproduction_operation`
--

LOCK TABLES `chaineproduction_operation` WRITE;
/*!40000 ALTER TABLE `chaineproduction_operation` DISABLE KEYS */;
INSERT INTO `chaineproduction_operation` VALUES (1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,12),(1,13),(1,14),(1,16),(1,17),(1,19),(1,20),(1,22),(1,23),(1,24),(1,25),(1,26),(2,2),(2,3),(2,4),(2,6),(2,8),(2,9),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,17),(3,19),(3,21),(3,23),(3,24),(3,26),(4,1),(4,2),(4,5),(4,7),(4,14),(4,15),(4,20),(4,23),(5,1),(5,5),(5,7),(5,12),(5,14),(5,15),(5,20),(5,24),(6,1),(6,2),(6,12),(6,13),(6,15),(6,23),(6,24),(7,2),(7,3),(7,4),(7,5),(7,8),(7,9),(7,10),(7,11),(7,12),(7,13),(7,14),(7,16),(7,18),(7,19),(7,20),(7,21),(7,24),(7,25),(8,1),(8,5),(8,7),(8,12),(8,13),(8,14),(8,15),(8,20),(8,23),(8,24);
/*!40000 ALTER TABLE `chaineproduction_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabrication`
--

DROP TABLE IF EXISTS `fabrication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabrication` (
  `id_article` int(11) NOT NULL,
  `id_operation` int(11) NOT NULL,
  `id_composant1` int(11) NOT NULL,
  `quantite1` int(11) NOT NULL,
  `id_composant2` int(11) DEFAULT NULL,
  `quantite2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_article`),
  KEY `FK_ligneArticle_operation` (`id_operation`),
  KEY `FK_ligneArticle_article` (`id_article`),
  KEY `fk__article2_idx` (`id_composant1`),
  KEY `fk__article3_idx` (`id_composant2`),
  CONSTRAINT `FK_ligneArticle_operation` FOREIGN KEY (`id_operation`) REFERENCES `operation` (`id`),
  CONSTRAINT `fk__article1` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk__article2` FOREIGN KEY (`id_composant1`) REFERENCES `article` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk__article3` FOREIGN KEY (`id_composant2`) REFERENCES `article` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabrication`
--

LOCK TABLES `fabrication` WRITE;
/*!40000 ALTER TABLE `fabrication` DISABLE KEYS */;
INSERT INTO `fabrication` VALUES (1,7,166,9,NULL,NULL),(2,2,34,2,NULL,NULL),(3,8,212,4,244,4),(4,5,13,3,335,8),(5,3,255,8,NULL,NULL),(6,8,115,6,109,7),(7,4,46,2,240,10),(8,6,54,9,198,2),(9,5,253,6,93,2),(10,6,225,1,275,1),(11,1,162,1,NULL,NULL),(12,3,264,2,NULL,NULL),(13,6,87,10,155,2),(14,1,240,4,NULL,NULL),(15,3,234,8,NULL,NULL),(16,8,140,6,294,1),(17,8,149,3,143,5),(18,1,110,8,NULL,NULL),(19,1,131,7,NULL,NULL),(20,6,166,3,133,6),(21,3,221,9,NULL,NULL),(22,3,91,5,NULL,NULL),(23,4,77,4,86,9),(24,8,278,2,315,1),(25,4,141,2,80,9),(26,1,146,8,NULL,NULL),(27,8,259,8,148,3),(28,2,306,1,NULL,NULL),(29,3,69,2,NULL,NULL),(30,1,76,10,NULL,NULL),(31,2,181,7,NULL,NULL),(32,2,287,10,NULL,NULL),(33,2,38,4,NULL,NULL),(34,3,191,7,NULL,NULL),(35,3,218,10,NULL,NULL),(36,6,250,7,130,10),(37,1,11,5,NULL,NULL),(38,7,309,2,NULL,NULL),(39,3,271,1,NULL,NULL),(40,8,226,9,38,7),(41,2,332,1,NULL,NULL),(42,8,256,10,117,3),(43,1,127,10,NULL,NULL),(44,4,69,3,196,5),(45,6,213,2,254,4),(46,4,45,5,179,9),(47,5,128,2,98,4),(48,4,71,1,123,5),(49,8,312,6,146,5),(50,8,261,2,258,2),(51,1,133,3,NULL,NULL),(52,8,195,7,59,5),(53,7,43,2,NULL,NULL),(54,8,65,9,215,1),(55,6,155,4,138,8),(56,6,218,8,264,8),(57,2,165,7,NULL,NULL),(58,3,99,1,NULL,NULL),(59,6,300,8,17,4),(60,8,152,2,76,5),(61,5,243,5,2,1),(62,6,315,10,157,4),(63,5,61,6,326,5),(64,4,3,9,36,5),(65,7,328,7,NULL,NULL),(66,2,82,10,NULL,NULL),(67,4,68,5,94,9),(68,3,271,4,NULL,NULL),(69,4,14,9,97,5),(70,8,287,9,154,9),(71,7,205,5,NULL,NULL),(72,1,197,10,NULL,NULL),(73,2,261,9,NULL,NULL),(74,3,177,3,NULL,NULL),(75,2,35,3,NULL,NULL),(76,5,281,3,247,2),(77,7,172,3,NULL,NULL),(78,7,282,5,NULL,NULL),(79,2,247,2,NULL,NULL),(80,2,174,2,NULL,NULL),(81,2,232,2,NULL,NULL),(82,7,81,4,NULL,NULL),(83,4,53,1,217,1),(84,8,145,1,142,1),(85,8,288,10,6,10),(86,6,174,7,276,7),(87,7,276,9,NULL,NULL),(88,7,338,2,NULL,NULL),(89,8,46,10,120,1),(90,2,179,9,NULL,NULL),(91,2,96,5,NULL,NULL),(92,2,113,9,NULL,NULL),(93,6,326,3,204,1),(94,6,286,3,254,4),(95,4,273,9,91,2),(97,1,134,4,NULL,NULL),(98,7,103,9,NULL,NULL),(99,2,311,10,NULL,NULL),(100,8,146,10,22,10),(101,5,279,6,290,10),(102,4,145,6,36,1),(103,7,281,2,NULL,NULL),(104,7,244,2,NULL,NULL),(105,8,192,5,191,10),(106,5,214,1,293,10),(107,8,115,10,70,5),(108,8,187,6,297,1),(109,7,88,3,NULL,NULL),(110,6,202,4,245,2),(111,3,75,3,NULL,NULL),(112,1,277,5,NULL,NULL),(113,3,193,1,NULL,NULL),(114,2,74,6,NULL,NULL),(115,7,77,10,NULL,NULL),(116,4,192,4,329,9),(117,6,280,2,291,8),(118,6,204,9,223,1),(119,5,208,8,139,7),(120,1,263,10,NULL,NULL),(121,5,327,9,285,8),(122,3,53,5,NULL,NULL),(123,7,240,6,NULL,NULL),(124,1,139,2,NULL,NULL),(125,3,115,1,NULL,NULL),(126,2,281,6,NULL,NULL),(127,6,269,3,38,7),(128,2,206,7,NULL,NULL),(129,3,136,6,NULL,NULL),(130,8,187,7,4,9),(131,1,132,10,NULL,NULL),(132,4,22,7,102,3),(133,3,311,10,NULL,NULL),(134,1,132,8,NULL,NULL),(135,5,165,3,58,7),(136,3,110,10,NULL,NULL),(137,7,175,8,NULL,NULL),(138,2,151,10,NULL,NULL),(139,6,44,3,96,9),(140,3,36,7,NULL,NULL),(141,5,230,9,319,9),(142,7,90,1,NULL,NULL),(143,3,337,8,NULL,NULL),(144,5,138,4,250,1),(145,5,308,3,324,10),(146,3,36,6,NULL,NULL),(147,6,184,7,26,7),(148,3,203,8,NULL,NULL),(149,8,6,4,179,1),(150,6,67,2,79,7),(151,8,259,8,56,6),(152,1,258,7,NULL,NULL),(153,8,263,6,59,1),(154,4,268,10,271,3),(155,5,79,2,318,2),(156,6,165,10,219,1),(157,3,269,3,NULL,NULL),(158,1,283,7,NULL,NULL),(159,2,319,8,NULL,NULL),(160,1,203,5,NULL,NULL),(161,2,88,8,NULL,NULL),(162,5,257,2,178,4),(163,6,314,8,322,8),(164,1,153,10,NULL,NULL),(165,2,77,4,NULL,NULL),(166,2,333,5,NULL,NULL),(167,2,214,3,NULL,NULL),(168,6,327,7,226,5),(169,7,214,8,NULL,NULL),(170,4,47,8,54,5),(171,5,276,5,203,6),(172,1,93,10,NULL,NULL),(173,2,97,9,NULL,NULL),(174,8,91,6,118,5),(175,2,46,3,NULL,NULL),(176,2,284,9,NULL,NULL),(177,4,283,5,136,10),(178,5,170,5,333,3),(179,4,177,7,51,8),(180,1,223,6,NULL,NULL),(181,4,207,8,106,6),(182,5,37,6,291,8),(183,6,190,4,86,2),(184,5,104,2,304,9),(185,8,318,1,146,5),(186,8,129,8,154,1),(187,4,171,1,268,4),(188,7,278,6,NULL,NULL),(189,1,232,6,NULL,NULL),(190,5,337,6,23,10),(191,4,25,9,269,8),(192,6,199,2,196,5),(193,2,320,7,NULL,NULL),(194,8,284,2,107,8),(195,4,239,2,59,3),(196,4,67,5,321,4),(197,8,302,6,130,2),(198,1,333,4,NULL,NULL),(199,7,160,8,NULL,NULL),(200,6,11,5,219,6),(201,3,69,3,NULL,NULL),(202,7,36,6,NULL,NULL),(203,6,128,7,61,3),(204,2,54,1,NULL,NULL),(205,8,66,7,236,9),(206,4,196,2,151,4),(207,7,40,8,NULL,NULL),(208,2,83,5,NULL,NULL),(209,6,262,4,29,4),(210,2,317,8,NULL,NULL),(211,6,104,5,101,2),(212,7,89,1,NULL,NULL),(213,8,192,6,17,6),(216,4,311,2,133,6),(217,8,197,2,206,9),(219,4,214,10,105,6),(220,1,224,10,NULL,NULL),(221,2,111,9,NULL,NULL),(222,5,247,4,242,2),(223,5,87,7,165,6),(224,4,170,8,156,10),(225,7,215,9,NULL,NULL),(226,8,57,7,205,10),(227,2,152,3,NULL,NULL),(228,1,31,6,NULL,NULL),(229,5,20,3,287,6),(230,5,262,2,181,3),(231,6,142,3,122,1),(233,3,287,6,NULL,NULL),(234,3,323,10,NULL,NULL),(235,5,307,10,216,9),(237,2,13,5,NULL,NULL),(238,4,165,1,85,8),(239,6,110,10,194,6),(240,4,160,6,206,3),(241,7,123,6,NULL,NULL),(242,8,72,9,55,6),(244,7,42,2,NULL,NULL),(245,5,147,7,312,1),(246,1,273,8,NULL,NULL),(248,1,119,2,NULL,NULL),(249,6,15,7,201,4),(250,5,106,6,156,8),(251,8,279,10,296,5),(252,1,37,8,NULL,NULL),(253,3,141,2,NULL,NULL),(254,7,107,9,NULL,NULL),(255,6,59,5,117,10),(256,2,187,8,NULL,NULL),(257,8,62,5,336,6),(258,7,271,1,NULL,NULL),(259,1,330,5,NULL,NULL),(260,7,328,9,NULL,NULL),(261,2,46,6,NULL,NULL),(262,1,302,4,NULL,NULL),(263,2,328,4,NULL,NULL),(264,6,38,5,196,4),(265,4,168,8,54,5),(266,3,180,4,NULL,NULL),(267,1,338,7,NULL,NULL),(268,1,271,8,NULL,NULL),(270,7,300,6,NULL,NULL),(271,2,155,6,NULL,NULL),(272,2,221,8,NULL,NULL),(273,8,257,10,64,8),(274,2,312,5,NULL,NULL),(275,1,228,3,NULL,NULL),(276,1,65,1,NULL,NULL),(277,7,185,9,NULL,NULL),(278,5,70,10,232,7),(279,5,215,10,225,8),(280,6,41,7,63,10),(281,2,78,7,NULL,NULL),(282,4,94,9,297,10),(283,3,126,8,NULL,NULL),(284,2,26,7,NULL,NULL),(285,1,335,9,NULL,NULL),(288,6,50,10,23,6),(289,5,187,9,149,9),(290,3,318,7,NULL,NULL),(291,3,327,9,NULL,NULL),(292,5,19,6,194,8),(294,1,258,8,NULL,NULL),(295,8,22,9,325,5),(296,6,322,6,121,3),(297,3,262,10,NULL,NULL),(298,4,239,6,300,6),(299,3,278,2,NULL,NULL),(300,1,93,9,NULL,NULL),(301,5,283,3,310,4),(302,1,265,7,NULL,NULL),(303,8,181,2,144,5),(304,1,63,6,NULL,NULL),(305,8,121,9,5,2),(306,6,318,6,310,1),(307,4,293,1,147,8),(308,6,254,1,273,2),(309,7,92,2,NULL,NULL),(310,3,290,10,NULL,NULL),(311,2,277,5,NULL,NULL),(313,6,199,8,253,7),(314,8,284,6,106,9),(315,8,338,7,309,7),(316,8,219,7,65,5),(317,3,219,10,NULL,NULL),(321,1,155,2,NULL,NULL),(322,6,79,5,81,6),(323,2,231,3,NULL,NULL),(324,5,14,7,75,7),(325,7,165,1,NULL,NULL),(329,5,29,6,43,3),(330,1,21,2,NULL,NULL),(331,5,131,10,43,4),(332,4,159,1,30,6),(333,1,220,6,NULL,NULL),(334,8,324,6,41,3),(336,2,101,3,NULL,NULL),(337,6,171,8,110,9);
/*!40000 ALTER TABLE `fabrication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournisseur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur_article`
--

DROP TABLE IF EXISTS `fournisseur_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournisseur_article` (
  `id_fournisseur` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  PRIMARY KEY (`id_fournisseur`,`id_article`),
  KEY `FK_FOURNISSEUR_ARTICLE_fournisseur` (`id_fournisseur`),
  KEY `FK_FOURNISSEUR_ARTICLE_article` (`id_article`),
  CONSTRAINT `FK_FOURNISSEUR_ARTICLE_article` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`),
  CONSTRAINT `FK_FOURNISSEUR_ARTICLE_fournisseur` FOREIGN KEY (`id_fournisseur`) REFERENCES `fournisseur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur_article`
--

LOCK TABLES `fournisseur_article` WRITE;
/*!40000 ALTER TABLE `fournisseur_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `fournisseur_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lignecampagne`
--

DROP TABLE IF EXISTS `lignecampagne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lignecampagne` (
  `id_article` int(11) NOT NULL,
  `id_campagne` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  PRIMARY KEY (`id_article`,`id_campagne`),
  KEY `FK_LIGNECAMPAGNE_article` (`id_article`),
  KEY `FK_LIGNECAMPAGNE_campagne` (`id_campagne`),
  CONSTRAINT `FK_LIGNECAMPAGNE_article` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`),
  CONSTRAINT `FK_LIGNECAMPAGNE_campagne` FOREIGN KEY (`id_campagne`) REFERENCES `campagne` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lignecampagne`
--

LOCK TABLES `lignecampagne` WRITE;
/*!40000 ALTER TABLE `lignecampagne` DISABLE KEYS */;
/*!40000 ALTER TABLE `lignecampagne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation`
--

DROP TABLE IF EXISTS `operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `delai` int(11) NOT NULL,
  `delaiInstallation` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation`
--

LOCK TABLES `operation` WRITE;
/*!40000 ALTER TABLE `operation` DISABLE KEYS */;
INSERT INTO `operation` VALUES (1,'O09','Perçage',2,0),(2,'O05','Pollissage',3,0),(3,'O08','Vernissage',2,0),(4,'O06','Collage',5,0),(5,'O07','Vissage',4,0),(6,'O07','Assemblage',6,0),(7,'O06','Pliage',4,0),(8,'O09','Sertissage',4,0);
/*!40000 ALTER TABLE `operation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-25 21:56:39
