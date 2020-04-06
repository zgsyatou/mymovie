-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: ceshi
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add movie type',7,'add_movietype'),(26,'Can change movie type',7,'change_movietype'),(27,'Can delete movie type',7,'delete_movietype'),(28,'Can view movie type',7,'view_movietype'),(29,'Can add movie',8,'add_movie'),(30,'Can change movie',8,'change_movie'),(31,'Can delete movie',8,'delete_movie'),(32,'Can view movie',8,'view_movie'),(33,'Can add read num',9,'add_readnum'),(34,'Can change read num',9,'change_readnum'),(35,'Can delete read num',9,'delete_readnum'),(36,'Can view read num',9,'view_readnum'),(37,'Can add read detail',10,'add_readdetail'),(38,'Can change read detail',10,'change_readdetail'),(39,'Can delete read detail',10,'delete_readdetail'),(40,'Can view read detail',10,'view_readdetail'),(41,'Can add comment',11,'add_comment'),(42,'Can change comment',11,'change_comment'),(43,'Can delete comment',11,'delete_comment'),(44,'Can view comment',11,'view_comment'),(45,'Can add like record',12,'add_likerecord'),(46,'Can change like record',12,'change_likerecord'),(47,'Can delete like record',12,'delete_likerecord'),(48,'Can view like record',12,'view_likerecord'),(49,'Can add like count',13,'add_likecount'),(50,'Can change like count',13,'change_likecount'),(51,'Can delete like count',13,'delete_likecount'),(52,'Can view like count',13,'view_likecount'),(53,'Can add profile',14,'add_profile'),(54,'Can change profile',14,'change_profile'),(55,'Can delete profile',14,'delete_profile'),(56,'Can view profile',14,'view_profile'),(57,'Can add o auth relationship',15,'add_oauthrelationship'),(58,'Can change o auth relationship',15,'change_oauthrelationship'),(59,'Can delete o auth relationship',15,'delete_oauthrelationship'),(60,'Can view o auth relationship',15,'view_oauthrelationship'),(61,'Can add notification',16,'add_notification'),(62,'Can change notification',16,'change_notification'),(63,'Can delete notification',16,'delete_notification'),(64,'Can view notification',16,'view_notification'),(65,'Can add collect record',17,'add_collectrecord'),(66,'Can change collect record',17,'change_collectrecord'),(67,'Can delete collect record',17,'delete_collectrecord'),(68,'Can view collect record',17,'view_collectrecord'),(69,'Can add collect count',18,'add_collectcount'),(70,'Can change collect count',18,'change_collectcount'),(71,'Can delete collect count',18,'delete_collectcount'),(72,'Can view collect count',18,'view_collectcount');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$yRcd36yr7wGZ$jTGDiwQN8KluaDRn2NDBCEncZv65x/xkzTTHTxSieXg=','2020-04-03 10:46:22.782677',1,'zgs','','','',1,1,'2020-04-01 13:04:36.579930');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collected_collectcount`
--

DROP TABLE IF EXISTS `collected_collectcount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `collected_collectcount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `collect_num` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collected_collectcou_content_type_id_c6cdf707_fk_django_co` (`content_type_id`),
  CONSTRAINT `collected_collectcou_content_type_id_c6cdf707_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collected_collectcount`
--

LOCK TABLES `collected_collectcount` WRITE;
/*!40000 ALTER TABLE `collected_collectcount` DISABLE KEYS */;
INSERT INTO `collected_collectcount` VALUES (1,1,1,8),(2,2,1,8),(3,3,0,8),(4,4,0,8),(5,7,0,8),(6,6,0,8),(7,5,0,8),(8,10,0,8),(9,9,1,8);
/*!40000 ALTER TABLE `collected_collectcount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collected_collectrecord`
--

DROP TABLE IF EXISTS `collected_collectrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `collected_collectrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `collect_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collected_collectrec_content_type_id_1a34541c_fk_django_co` (`content_type_id`),
  KEY `collected_collectrecord_user_id_d1eb7143_fk_auth_user_id` (`user_id`),
  CONSTRAINT `collected_collectrec_content_type_id_1a34541c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `collected_collectrecord_user_id_d1eb7143_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collected_collectrecord`
--

LOCK TABLES `collected_collectrecord` WRITE;
/*!40000 ALTER TABLE `collected_collectrecord` DISABLE KEYS */;
INSERT INTO `collected_collectrecord` VALUES (2,1,'2020-04-02 03:20:10.130471',8,1),(3,2,'2020-04-02 05:16:35.742327',8,1),(4,9,'2020-04-03 10:23:35.809823',8,1);
/*!40000 ALTER TABLE `collected_collectrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `top_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_comment_user_id_f0937c94_fk_auth_user_id` (`comment_user_id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_top_id_39386a14_fk_comment_comment_id` (`top_id`),
  CONSTRAINT `comment_comment_comment_user_id_f0937c94_fk_auth_user_id` FOREIGN KEY (`comment_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_top_id_39386a14_fk_comment_comment_id` FOREIGN KEY (`top_id`) REFERENCES `comment_comment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (1,1,'<p>ahkjfkhjk&nbsp;</p>','2020-04-02 10:19:32.398656',1,8,NULL,NULL,NULL),(2,1,'<p>kjafdas&nbsp;</p>','2020-04-02 11:46:21.100450',1,8,NULL,NULL,NULL),(3,1,'<p>afg</p>','2020-04-02 11:46:27.149881',1,8,NULL,NULL,NULL),(4,1,'<p>gasga</p>','2020-04-02 11:46:34.277242',1,8,1,1,1),(5,9,'<p>好喜欢这部动漫</p>','2020-04-03 10:23:14.330004',1,8,NULL,NULL,NULL);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-04-01 13:05:08.802414','1','爱情//动作',1,'[{\"added\": {}}]',7,1),(2,'2020-04-01 13:05:32.325857','1','爱情//动作',3,'',7,1),(3,'2020-04-01 13:05:48.878743','2','爱情/动作',1,'[{\"added\": {}}]',7,1),(4,'2020-04-01 13:07:02.227191','1','<Movie: <django.db.models.query_utils.DeferredAttribute object at 0x000001970EE50448>>',1,'[{\"added\": {}}]',8,1),(5,'2020-04-01 13:16:04.297194','3','剧情/动作',1,'[{\"added\": {}}]',7,1),(6,'2020-04-01 13:19:31.425703','4','剧情/爱情',1,'[{\"added\": {}}]',7,1),(7,'2020-04-01 13:23:32.511241','2','<Movie: <django.db.models.query_utils.DeferredAttribute object at 0x000001970EE50448>>',1,'[{\"added\": {}}]',8,1),(8,'2020-04-03 07:46:30.773395','5','剧情',1,'[{\"added\": {}}]',7,1),(9,'2020-04-03 07:52:22.516126','3','<Movie: <django.db.models.query_utils.DeferredAttribute object at 0x000001A14CC404C8>>',1,'[{\"added\": {}}]',8,1),(10,'2020-04-03 07:59:12.338424','6','剧情/喜剧',1,'[{\"added\": {}}]',7,1),(11,'2020-04-03 08:01:10.968457','4','<Movie: <django.db.models.query_utils.DeferredAttribute object at 0x000001A14CC404C8>>',1,'[{\"added\": {}}]',8,1),(12,'2020-04-03 09:55:37.193672','7','剧情 / 冒险',1,'[{\"added\": {}}]',7,1),(13,'2020-04-03 09:59:19.908149','5','<Movie: <django.db.models.query_utils.DeferredAttribute object at 0x000001A14CC404C8>>',1,'[{\"added\": {}}]',8,1),(14,'2020-04-03 10:00:12.073065','8','剧情 / 运动',1,'[{\"added\": {}}]',7,1),(15,'2020-04-03 10:01:56.433763','6','<Movie: <django.db.models.query_utils.DeferredAttribute object at 0x000001A14CC404C8>>',1,'[{\"added\": {}}]',8,1),(16,'2020-04-03 10:02:45.414758','9','喜剧',1,'[{\"added\": {}}]',7,1),(17,'2020-04-03 10:10:03.827334','7','<Movie: <django.db.models.query_utils.DeferredAttribute object at 0x000001A14CC404C8>>',1,'[{\"added\": {}}]',8,1),(18,'2020-04-03 10:14:43.864763','10','剧情 / 悬疑 / 犯罪',1,'[{\"added\": {}}]',7,1),(19,'2020-04-03 10:16:52.435787','8','<Movie: <django.db.models.query_utils.DeferredAttribute object at 0x000001A14CC404C8>>',1,'[{\"added\": {}}]',8,1),(20,'2020-04-03 10:18:04.422063','11','爱情 / 动画 / 奇幻',1,'[{\"added\": {}}]',7,1),(21,'2020-04-03 10:19:37.614880','9','<Movie: <django.db.models.query_utils.DeferredAttribute object at 0x000001A14CC404C8>>',1,'[{\"added\": {}}]',8,1),(22,'2020-04-03 10:21:50.697858','10','<Movie: <django.db.models.query_utils.DeferredAttribute object at 0x000001A14CC404C8>>',1,'[{\"added\": {}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(18,'collected','collectcount'),(17,'collected','collectrecord'),(11,'comment','comment'),(5,'contenttypes','contenttype'),(13,'like','likecount'),(12,'like','likerecord'),(8,'movie','movie'),(7,'movie','movietype'),(16,'notifications','notification'),(10,'ReadCount','readdetail'),(9,'ReadCount','readnum'),(6,'sessions','session'),(15,'user','oauthrelationship'),(14,'user','profile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-04-01 12:43:40.917355'),(2,'contenttypes','0002_remove_content_type_name','2020-04-01 12:43:43.723297'),(3,'ReadCount','0001_initial','2020-04-01 13:01:01.162074'),(4,'auth','0001_initial','2020-04-01 13:01:09.825832'),(5,'admin','0001_initial','2020-04-01 13:01:28.506644'),(6,'admin','0002_logentry_remove_auto_add','2020-04-01 13:01:32.355321'),(7,'admin','0003_logentry_add_action_flag_choices','2020-04-01 13:01:32.524834'),(8,'auth','0002_alter_permission_name_max_length','2020-04-01 13:01:35.640256'),(9,'auth','0003_alter_user_email_max_length','2020-04-01 13:01:36.159918'),(10,'auth','0004_alter_user_username_opts','2020-04-01 13:01:36.441472'),(11,'auth','0005_alter_user_last_login_null','2020-04-01 13:01:37.943433'),(12,'auth','0006_require_contenttypes_0002','2020-04-01 13:01:38.078111'),(13,'auth','0007_alter_validators_add_error_messages','2020-04-01 13:01:38.291502'),(14,'auth','0008_alter_user_username_max_length','2020-04-01 13:01:40.136508'),(15,'auth','0009_alter_user_last_name_max_length','2020-04-01 13:01:42.188767'),(16,'auth','0010_alter_group_name_max_length','2020-04-01 13:01:43.136885'),(17,'auth','0011_update_proxy_permissions','2020-04-01 13:01:43.388455'),(18,'collected','0001_initial','2020-04-01 13:01:44.852154'),(19,'comment','0001_initial','2020-04-01 13:01:52.921179'),(20,'like','0001_initial','2020-04-01 13:02:06.593811'),(21,'movie','0001_initial','2020-04-01 13:02:15.002463'),(22,'movie','0002_movie_movie_img','2020-04-01 13:02:20.823656'),(23,'movie','0003_movie_scriptiwirter','2020-04-01 13:02:21.928654'),(24,'notifications','0001_initial','2020-04-01 13:02:22.832270'),(25,'notifications','0002_auto_20150224_1134','2020-04-01 13:02:35.579966'),(26,'notifications','0003_notification_data','2020-04-01 13:02:36.169714'),(27,'notifications','0004_auto_20150826_1508','2020-04-01 13:02:36.401095'),(28,'notifications','0005_auto_20160504_1520','2020-04-01 13:02:36.535769'),(29,'notifications','0006_indexes','2020-04-01 13:02:38.985866'),(30,'notifications','0007_add_timestamp_index','2020-04-01 13:02:39.724176'),(31,'notifications','0008_index_together_recipient_unread','2020-04-01 13:02:41.618468'),(32,'sessions','0001_initial','2020-04-01 13:02:42.445546'),(33,'user','0001_initial','2020-04-01 13:02:44.810852'),(34,'movie','0004_auto_20200403_1544','2020-04-03 07:45:00.072100');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('alj2m4o79gxbzuz16p4nyc8h6wth43q4','NDYwMzA3ZDA0OGZhZGZjMDU5NDI5YjdkM2FlYjY3NWI5NjY5NjQ2MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDdkZjFhNWM2ZjJhMWU1MjBlOGI0MGE1MWIyZjM5NTY1NjI3NDczIn0=','2020-04-16 11:46:06.350679'),('dl1fs5i8zncr6xw7j7nowp287l8zgof0','NDYwMzA3ZDA0OGZhZGZjMDU5NDI5YjdkM2FlYjY3NWI5NjY5NjQ2MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDdkZjFhNWM2ZjJhMWU1MjBlOGI0MGE1MWIyZjM5NTY1NjI3NDczIn0=','2020-04-15 13:04:56.956877'),('f8bvvyjzy0d78b5vt9innaa3u6d1nw9b','NDYwMzA3ZDA0OGZhZGZjMDU5NDI5YjdkM2FlYjY3NWI5NjY5NjQ2MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDdkZjFhNWM2ZjJhMWU1MjBlOGI0MGE1MWIyZjM5NTY1NjI3NDczIn0=','2020-04-16 10:18:23.044700'),('gpojfjn2rfhd311lr879s3w78fd8upuu','NDYwMzA3ZDA0OGZhZGZjMDU5NDI5YjdkM2FlYjY3NWI5NjY5NjQ2MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDdkZjFhNWM2ZjJhMWU1MjBlOGI0MGE1MWIyZjM5NTY1NjI3NDczIn0=','2020-04-17 07:43:03.291310'),('wexnbc3y147gf344e19iwcea31gy070i','NDYwMzA3ZDA0OGZhZGZjMDU5NDI5YjdkM2FlYjY3NWI5NjY5NjQ2MTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNDdkZjFhNWM2ZjJhMWU1MjBlOGI0MGE1MWIyZjM5NTY1NjI3NDczIn0=','2020-04-17 10:46:22.914891');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_likecount`
--

DROP TABLE IF EXISTS `like_likecount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `like_likecount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `like_num` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `like_likecount_content_type_id_90868da7_fk_django_co` (`content_type_id`),
  CONSTRAINT `like_likecount_content_type_id_90868da7_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_likecount`
--

LOCK TABLES `like_likecount` WRITE;
/*!40000 ALTER TABLE `like_likecount` DISABLE KEYS */;
INSERT INTO `like_likecount` VALUES (1,1,1,8),(2,2,1,8),(3,1,0,11),(4,3,0,11),(5,2,0,11),(6,4,0,11),(7,3,0,8),(8,4,0,8),(9,7,0,8),(10,6,0,8),(11,5,0,8),(12,10,0,8),(13,9,1,8),(14,8,0,8),(15,5,1,11);
/*!40000 ALTER TABLE `like_likecount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_likerecord`
--

DROP TABLE IF EXISTS `like_likerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `like_likerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `like_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `like_likerecord_content_type_id_82d1fb74_fk_django_co` (`content_type_id`),
  KEY `like_likerecord_user_id_37f7dd3f_fk_auth_user_id` (`user_id`),
  CONSTRAINT `like_likerecord_content_type_id_82d1fb74_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `like_likerecord_user_id_37f7dd3f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_likerecord`
--

LOCK TABLES `like_likerecord` WRITE;
/*!40000 ALTER TABLE `like_likerecord` DISABLE KEYS */;
INSERT INTO `like_likerecord` VALUES (1,2,'2020-04-01 13:44:41.662600',8,1),(7,1,'2020-04-02 10:25:35.093681',8,1),(9,9,'2020-04-03 10:22:56.175291',8,1),(10,5,'2020-04-03 10:23:16.628175',11,1);
/*!40000 ALTER TABLE `like_likerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_movie`
--

DROP TABLE IF EXISTS `movie_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movie_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `realse` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `douban` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IMDb` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timelong` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daoyan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actor` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `movie_type_id` int(11) NOT NULL,
  `movie_img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scriptiwirter` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_movie_author_id_97802672_fk_auth_user_id` (`author_id`),
  KEY `movie_movie_movie_type_id_37dc4394_fk_movie_movietype_id` (`movie_type_id`),
  CONSTRAINT `movie_movie_author_id_97802672_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `movie_movie_movie_type_id_37dc4394_fk_movie_movietype_id` FOREIGN KEY (`movie_type_id`) REFERENCES `movie_movietype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_movie`
--

LOCK TABLES `movie_movie` WRITE;
/*!40000 ALTER TABLE `movie_movie` DISABLE KEYS */;
INSERT INTO `movie_movie` VALUES (1,'攀登者','中国','汉语','2019-9-30','6.3/10','5.4/10','125分钟','李仁港','吴京\\章子怡\\井柏然\\张译\\胡歌\\成龙\\陈龙\\刘少锋','<p>hkjshdfajksv</p>','2020-04-01 13:07:02.226193','2020-04-01 13:07:02.226193',1,2,'movie/攀登者.jpg','阿莱|\\尚英\\李仁港'),(2,'小妇人/她们(台)','美国','英语','2019-12-25(美国) / 2020(中国大陆)','8.0/10','8.2/10','135分钟','格蕾塔·葛韦格 Greta Gerwig','西尔莎·罗南 / 艾玛·沃森 / 佛罗伦斯·珀 / 伊莱扎·斯坎伦 / 劳拉·邓恩 / 蒂莫西·柴勒梅德 / 梅丽尔·斯特里普 / 鲍勃·奥登科克 / 詹姆斯·诺顿 / 路易·加瑞尔 / 克里斯·库','<p>电影改编自世界名著《小妇人》，由奥斯卡提名最佳导演格雷塔.葛伟格执导，直击当代女性困惑。作为2020年颁奖季热门，影片聚齐两代神仙阵容&ldquo;世纪大同框&rdquo;&mdash;&mdash;金球奖最佳女主&ldquo;伯德小姐&rdquo;西尔莎&middot;罗南与屡获提名的超人气演员&ldquo;甜茶&rdquo;再度携手诠释错过的真爱，&ldquo;赫敏&rdquo;艾玛&middot;沃森与&ldquo;黑寡妇师妹&rdquo;罗伦斯&middot;珀联袂呈现手足情深，三获奥斯卡的老戏骨梅尔&middot;斯特里普与四次金球奖得主劳拉&middot;邓恩倾力加盟。导演葛伟格用细腻又颇具新意的叙事手法，为这部经典文学名作带来充满活力的现代风格</p>','2020-04-01 13:23:32.510245','2020-04-01 13:23:32.510245',1,4,'movie/小妇人.jpg','格蕾塔·葛韦格 / 路易莎·梅·奥尔科特'),(3,'7号房的礼物','土耳其 Turkey','土耳其语 Turki','2019-10-10(德国/丹麦/法国/荷兰) / 2019-10-11(土耳其/英国/奥地','无评分','8.3/10','132分钟','Mehmet Ada Öztekin','Aras Bulut Iynemli / Nisa Sofiya Aksongur / Deniz Baysal / Celile Toyon Uysal / Ilker Aksum / Mesut Akusta / Yurdaer Okur / Sarp Akkaya / Yildiray Sahinler / Deniz Celiloglu / Gulcin Kultur Sahin / Fe','<p><span style=\"background-color:#ffffff; color:#333333\">一个被错误指控谋杀的精神病父亲和他可爱的六岁女儿之间的温情故事。改编自2013年韩国电影《7号房的礼物》。</span></p>','2020-04-03 07:52:22.513516','2020-04-03 07:52:22.513516',1,5,'movie/7号房.png','Kubilay Tat / Özge Efendioglu'),(4,'爸爸很漂亮','韩国','韩语','2019-11-21(韩国)','6.1/10','无评分','92分钟','朴秀民PARK Soo-min','김명국 / 백서빈 / 손민지 / 진선미','<p>韩国电影#爸爸很漂亮#在2017年12月10日举行的第二届台湾国际电影节(FFIFA)上，荣获陪审团大奖(FFIFA Award of Grand Jury Board)和最佳导演奖(Best Director)后，在海外电影节上接连获奖。该片在2018年4月6日印度举办的第二届酷儿电影节(BQFF)上也获得了最佳作品奖和最佳男主角奖。此外，该片还获得美国CINEMAFEST最佳作品奖、2017伦敦劳动电影节(LLFF)外国人电影奖、特伦顿电影节(Trenton Film Festival)最佳作品奖、印度诺伊达国际电影节(Noida International Film Festival)最佳作品奖等。<br />\r\n电影#爸爸很漂亮#主要讲述了一个普通家庭的父亲，阴差阳错地发现了一个男扮女装的&ldquo;夏威夷&rdquo;俱乐部后，意外开始新生活的家庭喜剧故事。电影由朴秀民导演执导，Kim Myeongguk、Back Seobin、Son Minji、Jin Seonmi等担任主演。<br />\r\n该电影由UB Contents和共感电影公司共同制作。是2015年釜山影像委员会前期制作支援作品，也是2016年电影振兴委员会后期制作支援作品。</p>','2020-04-03 08:01:10.968457','2020-04-03 08:01:10.968457',1,6,'movie/爸爸很漂亮.jpg','0'),(5,'野性的呼唤/极地守护犬(港/台)/绝境长征/荒野的呼唤','美国,加拿大','英语,法语','2020-02-21(美国) / 2020(中国大陆)','7.1/10','6.8/10','110分钟','克里斯·桑德斯 Chris Sander','哈里森·福特 / 丹·史蒂文斯 / 凯伦·吉兰 / 布莱德利·惠特福德 / 珍·路易莎·凯利 / 泰瑞·诺塔里 / 卡卡琪 / 奥玛·希 / 科林·伍德尔 / 韦斯·布朗 / 安东尼·莫利纳利 / 布拉德·格林奎斯特 / 亚当·弗格斯 / 阿莱克斯·索洛维茨 / 卡尔·马金恩 / 希瑟·麦克普什 / 哈尔·戴恩 / G·拉里·巴特勒 / 桑蒂尔·亚历克西斯·瓦奎兹 / 特洛伊·迪林格','<p>影片改编自杰克&middot;伦敦同名小说，导演克里斯&middot;桑德斯([疯狂原始人])，编剧迈克尔&middot;格林[(异形：契约])。该片以克朗岱克淘金热为背景，围绕淘金者约翰&middot;桑顿(福特饰)的历险故事展开。</p>','2020-04-03 09:59:19.901863','2020-04-03 09:59:19.901863',1,7,'movie/狗.jpg','迈克尔·格林 / 杰克·伦敦'),(6,'回归之路','美国','英语','2020-03-06(美国)','6.7/10','7.1/10','108分钟','布拉德·英格尔斯比 / 加文·欧康诺','本·阿弗莱克 / 詹妮娜·加万卡 / 麦可拉·沃金丝 / 瑞秋·卡帕尼 / 艾尔·马德里加尔 / 海耶斯·麦克阿瑟 / 阿夫拉姆·D·于斯特 / 泰勒·奥马利 / 马修·格拉夫 / 托德·斯塔什维克 / 玛琳娜·福特 / 英卡·基特 / 格林·特鲁曼 / 梅尔文·格雷格 / TK·卡特 / 卢卡斯·盖奇 / 杰雷米·拉特福德 / 小索尔·韦雷斯 / 克里斯·布鲁诺 / 克里斯汀·霍恩 / 布兰登·','<p>一个曾经的篮球明星在与酒瘾作斗争时失去了妻子与家庭，为了能够找回自我选择回到母校为一支高中篮球队做教练，同时也要继续防止自己再次被酒瘾控制。</p>','2020-04-03 10:01:56.431565','2020-04-03 10:01:56.431565',1,8,'movie/回顾之路.jpg','布拉德·英格尔斯比 / 加文·欧康诺'),(7,'大赢家','中国大陆','汉语普通话','2020-03-20(中国大陆)','6.8/10','6.3/10','暂无','于淼','大鹏 / 柳岩 / 代乐乐 / 张子贤 / 田雨 / 孟鹤堂 / 陶慧 / 许娣 / 王戈 / 杜源 / 阿如那 / 张绍荣 / 张帆 / 夏甄 / 杨砚铎 / 臧鸿飞 / 李萍 / 乔晟一 / 孟非 / 屈菁菁 / 腾格尔 / 叶晞月 / 杜维瀚','<p>在银行同事们眼里，严谨（大鹏饰）是个十足的怪咖，凡事认真恪守原则，总是得罪行长，以至于连累大家奖金泡汤。一次偶然的机会，银行接到公安局举办的抢劫演习的任务，大家都想糊弄过去早点回家，严瑾却认认真真当起了&ldquo;劫匪&rdquo;&hellip;&hellip;</p>','2020-04-03 10:10:03.827334','2020-04-03 10:10:03.827334',1,9,'movie/打印架.jpg','李潇 / 于淼 / 王思'),(8,'误杀','中国大陆','汉语普通话','2019-12-13(中国大陆) / 2019-12-07(大规模点映)','6.8/10','7.7/10','112分钟','杨薇薇 / 翟培 / 李鹏 / 范凯华','肖央 / 谭卓 / 陈冲 / 姜皓文 / 秦沛 / 边天扬 / 许文姗 / 张熙然 / 施名帅 / 黄健玮 类型: 剧情 / 悬疑 / 犯罪','<p>李维杰与妻子阿玉来泰打拼17年，膝下育有两个女儿，年届四十的他靠开设网络公司为生，为人也颇得小镇居民的好感，而这一切美好却被突如其来的不速之客打破。这个充斥走私，贩毒活动的边陲小镇，各种权力交织碾压公平正义。李维杰的大女儿被督察长的儿子强暴，因反抗误杀对方。李维杰曾亲眼 目睹督察长滥用私刑，深知法律无用，为了维护女儿，捍卫家人，李维杰埋尸掩盖一切证据，在时间与空间的交错缝隙中，与警方在身心层面，展开了殊死一搏的较量。</p>','2020-04-03 10:16:52.434863','2020-04-03 10:16:52.434863',1,10,'movie/误杀.jpg','杨薇薇 / 翟培 / 李鹏 / 范凯华 / 秦语谦 / 雷声'),(9,'白蛇：缘起','中国大陆 / 美国','汉语普通话','2019-01-11(中国大陆)','8.0/10','7.1/10','99分钟','黄家康 / 赵霁','张喆 / 杨天翔 / 唐小喜 / 刘薇 / 张遥函 / 郑小璞 / 张博恒 / 张赫 / 马程 / 程寅 / 陈霖生 / 惠龙 / 林强 / 章斌','<p>幽暗洞中，白蛇（张喆 配音）苦苦修炼却不得其法，小青见此情景，将发髻上的碧玉簪子取下，令白蛇攥在手中。那一刻，五百年前的记忆瞬间苏醒。五百年前，晚唐君主昏聩庸碌，掌握邪术的国师只手遮天，命令天下百姓捕蛇修法。为了拯救族群，白蛇冒险行刺，结果却遭遇挫败，还失去了记忆。当她再度醒来，发现自己被一个专门捕蛇的村落所救下，而那个胆小却善良的青年许宣（杨天翔 配音）则吸引了白蛇的注意。与此同时，国师派出爪牙四处追寻白蛇的下落，而蛇族更误解白蛇叛逃人类，接二连三派出杀手。<br />\r\n五百年后的一段姻缘，早在这乱世之间便已缔结&hellip;&hellip;</p>','2020-04-03 10:19:37.612869','2020-04-03 10:19:37.612869',1,11,'movie/白蛇_缘起.jpg','大毛'),(10,'我和我的祖国','中国','汉语普通话','2019-09-30(中国大陆)','7.9/10','6.5/10','155分钟','陈凯歌 / 张一白 / 管虎 / 薛晓路','黄渤 / 张译 / 韩昊霖 / 杜江 / 葛优 / 刘昊然 / 宋佳 / 王千源 / 任素汐 / 吴京 / 朱一龙 / 王东 / 陈飞宇 / 佟丽娅 / 欧豪 / 张嘉译 / 惠英红 / 龚蓓苾 / 田壮壮 / 韩东君 / 辛柏青 / 周冬雨 / 任达华 / 江珊 / 王砚辉 / 耿乐 / 姜武 / 梁静 / 佟大为 / 魏晨 / 胡军 / 王天辰 / 彭昱畅 / 罗海琼 / 郭丞 / 周依然 /','<p>七位导演分别取材新中国成立70周年以来，祖国经历的无数个历史性经典瞬间。讲述普通人与国家之间息息相关密不可分的动人故事。聚焦大时代大事件下，小人物和国家之间，看似遥远实则密切的关联，唤醒全球华人共同回忆。</p>','2020-04-03 10:21:50.692804','2020-04-03 10:21:50.692804',1,5,'movie/我和我的祖国.jpg','文宁 / 修梦迪 / 薛晓路 / 何可可 / 徐峥 / 管虎 / 张冀');
/*!40000 ALTER TABLE `movie_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_movietype`
--

DROP TABLE IF EXISTS `movie_movietype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movie_movietype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_movietype`
--

LOCK TABLES `movie_movietype` WRITE;
/*!40000 ALTER TABLE `movie_movietype` DISABLE KEYS */;
INSERT INTO `movie_movietype` VALUES (2,'爱情/动作'),(3,'剧情/动作'),(4,'剧情/爱情'),(5,'剧情'),(6,'剧情/喜剧'),(7,'剧情 / 冒险'),(8,'剧情 / 运动'),(9,'喜剧'),(10,'剧情 / 悬疑 / 犯罪'),(11,'爱情 / 动画 / 奇幻');
/*!40000 ALTER TABLE `movie_movietype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
INSERT INTO `my_cache_table` VALUES (':1:seven_berfor_cache','gASVnQoAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAxtb3ZpZS5tb2RlbHOUjAVNb3ZpZZSTlIwDX2RilE6MBl9oaW50c5R9lIwFcXVlcnmUjBpkamFuZ28uZGIubW9kZWxzLnNxbC5xdWVyeZSMBVF1ZXJ5lJOUKYGUfZQoaAVoCIwOYWxpYXNfcmVmY291bnSUfZQojAttb3ZpZV9tb3ZpZZRLBIwUUmVhZENvdW50X3JlYWRkZXRhaWyUSwN1jAlhbGlhc19tYXCUjAtjb2xsZWN0aW9uc5SMC09yZGVyZWREaWN0lJOUKVKUKGgUjCNkamFuZ28uZGIubW9kZWxzLnNxbC5kYXRhc3RydWN0dXJlc5SMCUJhc2VUYWJsZZSTlCmBlH2UKIwKdGFibGVfbmFtZZRoFIwLdGFibGVfYWxpYXOUaBR1YmgVaBuMBEpvaW6Uk5QpgZR9lChoIGgVjAxwYXJlbnRfYWxpYXOUaBRoIWgVjAlqb2luX3R5cGWUjApJTk5FUiBKT0lOlIwJam9pbl9jb2xzlIwCaWSUjAlvYmplY3RfaWSUhpSFlIwKam9pbl9maWVsZJSMImRqYW5nby5jb250cmliLmNvbnRlbnR0eXBlcy5maWVsZHOUjApHZW5lcmljUmVslJOUKYGUfZQojAVmaWVsZJSMF2RqYW5nby5kYi5tb2RlbHMuZmllbGRzlIwLX2xvYWRfZmllbGSUk5SMBW1vdmlllGgHjAxyZWFkX2RldGFpbHOUh5RSlGgFjBBSZWFkQ291bnQubW9kZWxzlIwKUmVhZERldGFpbJSTlIwMcmVsYXRlZF9uYW1llIwBK5SMEnJlbGF0ZWRfcXVlcnlfbmFtZZROjBBsaW1pdF9jaG9pY2VzX3RvlH2UjAtwYXJlbnRfbGlua5SJjAlvbl9kZWxldGWUjBlkamFuZ28uZGIubW9kZWxzLmRlbGV0aW9ulIwKRE9fTk9USElOR5STlIwLc3ltbWV0cmljYWyUiYwIbXVsdGlwbGWUiHVijAhudWxsYWJsZZSIjBFmaWx0ZXJlZF9yZWxhdGlvbpROdWJ1jBBleHRlcm5hbF9hbGlhc2VzlI+UjAl0YWJsZV9tYXCUfZQoaBRdlGgUYWgVXZRoFWF1jAxkZWZhdWx0X2NvbHOUiYwQZGVmYXVsdF9vcmRlcmluZ5SIjBFzdGFuZGFyZF9vcmRlcmluZ5SIjAx1c2VkX2FsaWFzZXOUj5SMEGZpbHRlcl9pc19zdGlja3mUiYwIc3VicXVlcnmUiYwGc2VsZWN0lIwcZGphbmdvLmRiLm1vZGVscy5leHByZXNzaW9uc5SMA0NvbJSTlCmBlH2UKIwRX2NvbnN0cnVjdG9yX2FyZ3OUaBRoN2g4aAeMBXRpdGxllIeUUpSGlH2UhpSMDG91dHB1dF9maWVsZJRoY4wFYWxpYXOUaBSMBnRhcmdldJRoY3ViaF0pgZR9lChoYGgUaDdoOGgHaCqHlFKUhpR9lIaUaGdobWhoaBRoaWhtjBJjb250YWluc19hZ2dyZWdhdGWUiXVihpSMBXdoZXJllIwaZGphbmdvLmRiLm1vZGVscy5zcWwud2hlcmWUjAlXaGVyZU5vZGWUk5QpgZR9lCiMCGNoaWxkcmVulF2UKIwYZGphbmdvLmRiLm1vZGVscy5sb29rdXBzlIwSR3JlYXRlclRoYW5PckVxdWFslJOUKYGUfZQojANsaHOUaF0pgZR9lChoYGgVaDeMCVJlYWRDb3VudJRoPYwEZGF0ZZSHlFKUhpR9lIaUaGdohmhoaBVoaWiGaHGJdWKMA3Joc5SMCGRhdGV0aW1llIwEZGF0ZZSTlEMEB+QDG5SFlFKUjBRiaWxhdGVyYWxfdHJhbnNmb3Jtc5RdlGhxiXViaHuMCExlc3NUaGFulJOUKYGUfZQoaIBogWiKaI1DBAfkBAOUhZRSlGiRXZRocYl1YmWMCWNvbm5lY3RvcpSMA0FORJSMB25lZ2F0ZWSUiWhxiXVijAt3aGVyZV9jbGFzc5RodowIZ3JvdXBfYnmUaF5oaoaUjAhvcmRlcl9ieZSMDS1yZWFkX251bV9zdW2UhZSMCGxvd19tYXJrlEsAjAloaWdoX21hcmuUSweMCGRpc3RpbmN0lImMD2Rpc3RpbmN0X2ZpZWxkc5QpjBFzZWxlY3RfZm9yX3VwZGF0ZZSJjBhzZWxlY3RfZm9yX3VwZGF0ZV9ub3dhaXSUiYwdc2VsZWN0X2Zvcl91cGRhdGVfc2tpcF9sb2NrZWSUiYwUc2VsZWN0X2Zvcl91cGRhdGVfb2aUKYwOc2VsZWN0X3JlbGF0ZWSUiYwJbWF4X2RlcHRolEsFjA12YWx1ZXNfc2VsZWN0lGhhaCqGlIwMX2Fubm90YXRpb25zlGgZKVKUjAxyZWFkX251bV9zdW2UjBtkamFuZ28uZGIubW9kZWxzLmFnZ3JlZ2F0ZXOUjANTdW2Uk5QpgZR9lChoYIwWcmVhZF9kZXRhaWxzX19yZWFkX251bZSFlH2UhpRopomMBmZpbHRlcpROjBJzb3VyY2VfZXhwcmVzc2lvbnOUXZRoXSmBlH2UKGhgaBVoN2iDaD2MCHJlYWRfbnVtlIeUUpSGlH2UhpRoZ2jDaGhoFWhpaMOMFV9vdXRwdXRfZmllbGRfb3Jfbm9uZZRow2hxiXViYYwFZXh0cmGUfZSMCmlzX3N1bW1hcnmUiWhnaMN1YnOMFmFubm90YXRpb25fc2VsZWN0X21hc2uUj5QoaLKQjBhfYW5ub3RhdGlvbl9zZWxlY3RfY2FjaGWUaBkpUpRosmi2c4wKY29tYmluYXRvcpROjA5jb21iaW5hdG9yX2FsbJSJjBBjb21iaW5lZF9xdWVyaWVzlCmMBl9leHRyYZROjBFleHRyYV9zZWxlY3RfbWFza5SPlIwTX2V4dHJhX3NlbGVjdF9jYWNoZZROjAxleHRyYV90YWJsZXOUKYwOZXh0cmFfb3JkZXJfYnmUKYwQZGVmZXJyZWRfbG9hZGluZ5QokZSIhpSME19maWx0ZXJlZF9yZWxhdGlvbnOUfZSMDWV4cGxhaW5fcXVlcnmUiYwOZXhwbGFpbl9mb3JtYXSUTowPZXhwbGFpbl9vcHRpb25zlH2UjA1fbG9va3VwX2pvaW5zlF2UKGgUaBVljApiYXNlX3RhYmxllGgUdWKMDV9yZXN1bHRfY2FjaGWUXZQofZQoaGGMCeaUgOeZu+iAhZRoKksBaLJLBHV9lChoYYwV5bCP5aaH5Lq6L+WlueS7rCjlj7AplGgqSwJosksCdWWMDl9zdGlja3lfZmlsdGVylImMCl9mb3Jfd3JpdGWUiYwZX3ByZWZldGNoX3JlbGF0ZWRfbG9va3Vwc5QpjA5fcHJlZmV0Y2hfZG9uZZSJjBZfa25vd25fcmVsYXRlZF9vYmplY3RzlH2UjA9faXRlcmFibGVfY2xhc3OUaACMDlZhbHVlc0l0ZXJhYmxllJOUjAdfZmllbGRzlGhhaCqGlIwPX2RqYW5nb192ZXJzaW9ulIwDMi4ylHViLg==','2020-04-03 10:52:36.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications_notification`
--

DROP TABLE IF EXISTS `notifications_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notifications_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unread` tinyint(1) NOT NULL,
  `actor_object_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `target_object_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_object_object_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `action_object_content_type_id` int(11) DEFAULT NULL,
  `actor_content_type_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `target_content_type_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `emailed` tinyint(1) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co` (`action_object_content_type_id`),
  KEY `notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co` (`actor_content_type_id`),
  KEY `notifications_notifi_target_content_type__ccb24d88_fk_django_co` (`target_content_type_id`),
  KEY `notifications_notification_deleted_b32b69e6` (`deleted`),
  KEY `notifications_notification_emailed_23a5ad81` (`emailed`),
  KEY `notifications_notification_public_1bc30b1c` (`public`),
  KEY `notifications_notification_unread_cce4be30` (`unread`),
  KEY `notifications_notification_timestamp_6a797bad` (`timestamp`),
  KEY `notifications_notification_recipient_id_unread_253aadc9_idx` (`recipient_id`,`unread`),
  CONSTRAINT `notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co` FOREIGN KEY (`action_object_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co` FOREIGN KEY (`actor_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notifi_target_content_type__ccb24d88_fk_django_co` FOREIGN KEY (`target_content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `notifications_notification_recipient_id_d055f3f0_fk_auth_user_id` FOREIGN KEY (`recipient_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_notification`
--

LOCK TABLES `notifications_notification` WRITE;
/*!40000 ALTER TABLE `notifications_notification` DISABLE KEYS */;
INSERT INTO `notifications_notification` VALUES (14,'info',0,'1','[zgs]点赞了你的《白蛇：缘起》',NULL,NULL,'9','2020-04-03 10:22:56.179472',1,12,4,1,NULL,0,0,'{\"url\": \"/movie/9\"}'),(15,'info',0,'1','[zgs]评论了你的《白蛇：缘起》',NULL,NULL,'5','2020-04-03 10:23:14.499210',1,11,4,1,NULL,0,0,'{\"url\": \"/movie/9#comment_5\"}'),(16,'info',0,'1','[zgs]点赞了你的评论\"好喜欢这部动漫\"',NULL,NULL,'10','2020-04-03 10:23:16.635056',1,12,4,1,NULL,0,0,'{\"url\": \"/movie/9\"}');
/*!40000 ALTER TABLE `notifications_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readcount_readdetail`
--

DROP TABLE IF EXISTS `readcount_readdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `readcount_readdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ReadCount_readdetail_content_type_id_7083f343_fk_django_co` (`content_type_id`),
  CONSTRAINT `ReadCount_readdetail_content_type_id_7083f343_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readcount_readdetail`
--

LOCK TABLES `readcount_readdetail` WRITE;
/*!40000 ALTER TABLE `readcount_readdetail` DISABLE KEYS */;
INSERT INTO `readcount_readdetail` VALUES (1,'2020-04-01',1,1,8),(2,'2020-04-01',1,2,8),(3,'2020-04-02',3,1,8),(4,'2020-04-02',1,2,8),(5,'2020-04-03',2,1,8),(6,'2020-04-03',2,2,8),(7,'2020-04-03',2,3,8),(8,'2020-04-03',1,4,8),(9,'2020-04-03',1,7,8),(10,'2020-04-03',1,6,8),(11,'2020-04-03',1,5,8),(12,'2020-04-03',1,10,8),(13,'2020-04-03',1,9,8);
/*!40000 ALTER TABLE `readcount_readdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readcount_readnum`
--

DROP TABLE IF EXISTS `readcount_readnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `readcount_readnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ReadCount_readnum_content_type_id_df6f8904_fk_django_co` (`content_type_id`),
  CONSTRAINT `ReadCount_readnum_content_type_id_df6f8904_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readcount_readnum`
--

LOCK TABLES `readcount_readnum` WRITE;
/*!40000 ALTER TABLE `readcount_readnum` DISABLE KEYS */;
INSERT INTO `readcount_readnum` VALUES (1,6,1,8),(2,4,2,8),(3,2,3,8),(4,1,4,8),(5,1,7,8),(6,1,6,8),(7,1,5,8),(8,1,10,8),(9,1,9,8);
/*!40000 ALTER TABLE `readcount_readnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_oauthrelationship`
--

DROP TABLE IF EXISTS `user_oauthrelationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_oauthrelationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oauth_type` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_oauthrelationship_user_id_7fef1477_fk_auth_user_id` (`user_id`),
  CONSTRAINT `user_oauthrelationship_user_id_7fef1477_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_oauthrelationship`
--

LOCK TABLES `user_oauthrelationship` WRITE;
/*!40000 ALTER TABLE `user_oauthrelationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_oauthrelationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-05 17:11:23
