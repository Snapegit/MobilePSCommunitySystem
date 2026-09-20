-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl42235296
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `cl42235296`
--

/*!40000 DROP DATABASE IF EXISTS `cl42235296`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl42235296` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl42235296`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshejirenwu`
--

DROP TABLE IF EXISTS `discussshejirenwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshejirenwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712634234539 DEFAULT CHARSET=utf8 COMMENT='设计任务评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshejirenwu`
--

LOCK TABLES `discussshejirenwu` WRITE;
/*!40000 ALTER TABLE `discussshejirenwu` DISABLE KEYS */;
INSERT INTO `discussshejirenwu` VALUES (1712634234538,'2024-04-09 03:43:54',1712634169624,1712634194851,'file/1712634184043.jpg','1111','发的挖恶妇','');
/*!40000 ALTER TABLE `discussshejirenwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxuexiziyuan`
--

DROP TABLE IF EXISTS `discussxuexiziyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxuexiziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学习资源评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxuexiziyuan`
--

LOCK TABLES `discussxuexiziyuan` WRITE;
/*!40000 ALTER TABLE `discussxuexiziyuan` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussxuexiziyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712634207775 DEFAULT CHARSET=utf8 COMMENT='设计作品分享';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (31,'2024-04-09 03:33:50','帖子标题1','帖子内容1',0,'用户名1','file/forumAvatarurl1.jpg,file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg','开放',1),(32,'2024-04-09 03:33:50','帖子标题2','帖子内容2',0,'用户名2','file/forumAvatarurl2.jpg,file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg','开放',2),(33,'2024-04-09 03:33:50','帖子标题3','帖子内容3',0,'用户名3','file/forumAvatarurl3.jpg,file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg','开放',3),(34,'2024-04-09 03:33:50','帖子标题4','帖子内容4',0,'用户名4','file/forumAvatarurl4.jpg,file/forumAvatarurl5.jpg,file/forumAvatarurl6.jpg','开放',4),(36,'2024-04-09 03:33:50','帖子标题6','帖子内容6',0,'用户名6','file/forumAvatarurl6.jpg,file/forumAvatarurl7.jpg,file/forumAvatarurl8.jpg','开放',6),(1712633897945,'2024-04-09 03:38:17',NULL,'<p>福娃额发我发我额fwaefawfaw</p>',31,'','file/1712633861123.jpg',NULL,1712633871534),(1712634139240,'2024-04-09 03:42:18','问啊凤娃恶妇哇哦','<p>福娃额发恶妇f</p>',0,'',NULL,'开放',1712633871534),(1712634207774,'2024-04-09 03:43:27',NULL,'<p>我饿范围分为we</p>',1712634139240,'','file/1712634184043.jpg',NULL,1712634194851);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-04-09 03:33:50','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common50\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-discover\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"}],\"fontClass\":\"icon-common4\",\"menu\":\"管理员管理\",\"unicode\":\"&#xedab;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user7\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"设计作品分享\",\"tableName\":\"forum\"}],\"fontClass\":\"icon-common44\",\"menu\":\"设计作品分享\",\"unicode\":\"&#xef28;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"学习资源\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziyuan\"}],\"fontClass\":\"icon-common27\",\"menu\":\"学习资源管理\",\"unicode\":\"&#xee2c;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"设计任务\",\"menuJump\":\"列表\",\"tableName\":\"shejirenwu\"},{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"设计任务接单\",\"menuJump\":\"列表\",\"tableName\":\"shejirenwujiedan\"},{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"设计任务完成\",\"menuJump\":\"列表\",\"tableName\":\"shejirenwuwancheng\"}],\"fontClass\":\"icon-common9\",\"menu\":\"任务信息管理\",\"unicode\":\"&#xedc9;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看评论\"],\"menu\":\"学习资源\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziyuan\"}],\"menu\":\"学习资源管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看评论\",\"接单\"],\"menu\":\"设计任务\",\"menuJump\":\"列表\",\"tableName\":\"shejirenwu\"}],\"menu\":\"任务信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-paint\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的发布\",\"menuJump\":\"14\",\"tableName\":\"forum\"}],\"fontClass\":\"icon-common44\",\"menu\":\"设计作品分享\",\"unicode\":\"&#xef28;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"设计任务\",\"menuJump\":\"列表\",\"tableName\":\"shejirenwu\"},{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"删除\",\"完成\"],\"menu\":\"设计任务接单\",\"menuJump\":\"列表\",\"tableName\":\"shejirenwujiedan\"},{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"设计任务完成\",\"menuJump\":\"列表\",\"tableName\":\"shejirenwuwancheng\"}],\"fontClass\":\"icon-common9\",\"menu\":\"任务信息管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common48\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xef65;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-vipcard\",\"buttons\":[\"查看评论\"],\"menu\":\"学习资源\",\"menuJump\":\"列表\",\"tableName\":\"xuexiziyuan\"}],\"menu\":\"学习资源管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看评论\",\"接单\"],\"menu\":\"设计任务\",\"menuJump\":\"列表\",\"tableName\":\"shejirenwu\"}],\"menu\":\"任务信息管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shejirenwu`
--

DROP TABLE IF EXISTS `shejirenwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shejirenwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renwumingcheng` varchar(200) NOT NULL COMMENT '任务名称',
  `renwutupian` longtext COMMENT '任务图片',
  `renwuleixing` varchar(200) NOT NULL COMMENT '任务类型',
  `xuyaoshijian` datetime NOT NULL COMMENT '需要时间',
  `renwuxiangqing` longtext COMMENT '任务详情',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `renwuzhuangtai` varchar(200) DEFAULT NULL COMMENT '任务状态',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712634169625 DEFAULT CHARSET=utf8 COMMENT='设计任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shejirenwu`
--

LOCK TABLES `shejirenwu` WRITE;
/*!40000 ALTER TABLE `shejirenwu` DISABLE KEYS */;
INSERT INTO `shejirenwu` VALUES (71,'2024-04-09 03:33:50','任务名称1','file/shejirenwuRenwutupian1.jpg,file/shejirenwuRenwutupian2.jpg,file/shejirenwuRenwutupian3.jpg','任务类型1','2024-04-09 11:33:50','任务详情1','用户账号1','用户姓名1','已接单',1),(72,'2024-04-09 03:33:50','任务名称2','file/shejirenwuRenwutupian2.jpg,file/shejirenwuRenwutupian3.jpg,file/shejirenwuRenwutupian4.jpg','任务类型2','2024-04-09 11:33:50','任务详情2','用户账号2','用户姓名2','已接单',2),(73,'2024-04-09 03:33:50','任务名称3','file/shejirenwuRenwutupian3.jpg,file/shejirenwuRenwutupian4.jpg,file/shejirenwuRenwutupian5.jpg','任务类型3','2024-04-09 11:33:50','任务详情3','用户账号3','用户姓名3','已接单',3),(74,'2024-04-09 03:33:50','任务名称4','file/shejirenwuRenwutupian4.jpg,file/shejirenwuRenwutupian5.jpg,file/shejirenwuRenwutupian6.jpg','任务类型4','2024-04-09 11:33:50','任务详情4','用户账号4','用户姓名4','已接单',4),(75,'2024-04-09 03:33:50','任务名称5','file/shejirenwuRenwutupian5.jpg,file/shejirenwuRenwutupian6.jpg,file/shejirenwuRenwutupian7.jpg','任务类型5','2024-04-09 11:33:50','任务详情5','用户账号5','用户姓名5','已接单',5),(76,'2024-04-09 03:33:50','任务名称6','file/shejirenwuRenwutupian6.jpg,file/shejirenwuRenwutupian7.jpg,file/shejirenwuRenwutupian8.jpg','任务类型6','2024-04-09 11:33:50','任务详情6','用户账号6','用户姓名6','已接单',6),(1712634169624,'2024-04-09 03:42:48','大范围阿发我','file/1712634161928.jpg','飞娃儿','2024-04-09 11:42:32','<p>哇发我额范围阿帆哇恶妇</p>','111','李阳','已接单',1);
/*!40000 ALTER TABLE `shejirenwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shejirenwujiedan`
--

DROP TABLE IF EXISTS `shejirenwujiedan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shejirenwujiedan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renwumingcheng` varchar(200) NOT NULL COMMENT '任务名称',
  `renwutupian` longtext COMMENT '任务图片',
  `renwuleixing` varchar(200) NOT NULL COMMENT '任务类型',
  `xuyaoshijian` datetime NOT NULL COMMENT '需要时间',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `shejishizhanghao` varchar(200) DEFAULT NULL COMMENT '设计师账号',
  `shejishixingming` varchar(200) DEFAULT NULL COMMENT '设计师姓名',
  `jiedanshijian` datetime DEFAULT NULL COMMENT '接单时间',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712634227809 DEFAULT CHARSET=utf8 COMMENT='设计任务接单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shejirenwujiedan`
--

LOCK TABLES `shejirenwujiedan` WRITE;
/*!40000 ALTER TABLE `shejirenwujiedan` DISABLE KEYS */;
INSERT INTO `shejirenwujiedan` VALUES (81,'2024-04-09 03:33:50','任务名称1','file/shejirenwujiedanRenwutupian1.jpg,file/shejirenwujiedanRenwutupian2.jpg,file/shejirenwujiedanRenwutupian3.jpg','任务类型1','2024-04-09 11:33:50','用户姓名1','用户账号1','设计师账号1','设计师姓名1','2024-04-09 11:33:50','已完成'),(82,'2024-04-09 03:33:50','任务名称2','file/shejirenwujiedanRenwutupian2.jpg,file/shejirenwujiedanRenwutupian3.jpg,file/shejirenwujiedanRenwutupian4.jpg','任务类型2','2024-04-09 11:33:50','用户姓名2','用户账号2','设计师账号2','设计师姓名2','2024-04-09 11:33:50','已完成'),(83,'2024-04-09 03:33:50','任务名称3','file/shejirenwujiedanRenwutupian3.jpg,file/shejirenwujiedanRenwutupian4.jpg,file/shejirenwujiedanRenwutupian5.jpg','任务类型3','2024-04-09 11:33:50','用户姓名3','用户账号3','设计师账号3','设计师姓名3','2024-04-09 11:33:50','已完成'),(84,'2024-04-09 03:33:50','任务名称4','file/shejirenwujiedanRenwutupian4.jpg,file/shejirenwujiedanRenwutupian5.jpg,file/shejirenwujiedanRenwutupian6.jpg','任务类型4','2024-04-09 11:33:50','用户姓名4','用户账号4','设计师账号4','设计师姓名4','2024-04-09 11:33:50','已完成'),(85,'2024-04-09 03:33:50','任务名称5','file/shejirenwujiedanRenwutupian5.jpg,file/shejirenwujiedanRenwutupian6.jpg,file/shejirenwujiedanRenwutupian7.jpg','任务类型5','2024-04-09 11:33:50','用户姓名5','用户账号5','设计师账号5','设计师姓名5','2024-04-09 11:33:50','已完成'),(86,'2024-04-09 03:33:50','任务名称6','file/shejirenwujiedanRenwutupian6.jpg,file/shejirenwujiedanRenwutupian7.jpg,file/shejirenwujiedanRenwutupian8.jpg','任务类型6','2024-04-09 11:33:50','用户姓名6','用户账号6','设计师账号6','设计师姓名6','2024-04-09 11:33:50','已完成'),(1712634227808,'2024-04-09 03:43:47','大范围阿发我','file/1712634161928.jpg','飞娃儿','2024-04-09 11:42:32','李阳','111','1111','李留','2024-04-09 11:43:38','已完成');
/*!40000 ALTER TABLE `shejirenwujiedan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shejirenwuwancheng`
--

DROP TABLE IF EXISTS `shejirenwuwancheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shejirenwuwancheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `renwumingcheng` varchar(200) NOT NULL COMMENT '任务名称',
  `renwutupian` longtext COMMENT '任务图片',
  `renwuleixing` varchar(200) NOT NULL COMMENT '任务类型',
  `xuyaoshijian` datetime NOT NULL COMMENT '需要时间',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `shejishizhanghao` varchar(200) DEFAULT NULL COMMENT '设计师账号',
  `shejishixingming` varchar(200) DEFAULT NULL COMMENT '设计师姓名',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712634251412 DEFAULT CHARSET=utf8 COMMENT='设计任务完成';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shejirenwuwancheng`
--

LOCK TABLES `shejirenwuwancheng` WRITE;
/*!40000 ALTER TABLE `shejirenwuwancheng` DISABLE KEYS */;
INSERT INTO `shejirenwuwancheng` VALUES (91,'2024-04-09 03:33:50','任务名称1','file/shejirenwuwanchengRenwutupian1.jpg,file/shejirenwuwanchengRenwutupian2.jpg,file/shejirenwuwanchengRenwutupian3.jpg','任务类型1','2024-04-09 11:33:50','用户姓名1','用户账号1','设计师账号1','设计师姓名1','2024-04-09 11:33:50'),(92,'2024-04-09 03:33:50','任务名称2','file/shejirenwuwanchengRenwutupian2.jpg,file/shejirenwuwanchengRenwutupian3.jpg,file/shejirenwuwanchengRenwutupian4.jpg','任务类型2','2024-04-09 11:33:50','用户姓名2','用户账号2','设计师账号2','设计师姓名2','2024-04-09 11:33:50'),(93,'2024-04-09 03:33:50','任务名称3','file/shejirenwuwanchengRenwutupian3.jpg,file/shejirenwuwanchengRenwutupian4.jpg,file/shejirenwuwanchengRenwutupian5.jpg','任务类型3','2024-04-09 11:33:50','用户姓名3','用户账号3','设计师账号3','设计师姓名3','2024-04-09 11:33:50'),(94,'2024-04-09 03:33:50','任务名称4','file/shejirenwuwanchengRenwutupian4.jpg,file/shejirenwuwanchengRenwutupian5.jpg,file/shejirenwuwanchengRenwutupian6.jpg','任务类型4','2024-04-09 11:33:50','用户姓名4','用户账号4','设计师账号4','设计师姓名4','2024-04-09 11:33:50'),(95,'2024-04-09 03:33:50','任务名称5','file/shejirenwuwanchengRenwutupian5.jpg,file/shejirenwuwanchengRenwutupian6.jpg,file/shejirenwuwanchengRenwutupian7.jpg','任务类型5','2024-04-09 11:33:50','用户姓名5','用户账号5','设计师账号5','设计师姓名5','2024-04-09 11:33:50'),(96,'2024-04-09 03:33:50','任务名称6','file/shejirenwuwanchengRenwutupian6.jpg,file/shejirenwuwanchengRenwutupian7.jpg,file/shejirenwuwanchengRenwutupian8.jpg','任务类型6','2024-04-09 11:33:50','用户姓名6','用户账号6','设计师账号6','设计师姓名6','2024-04-09 11:33:50'),(1712634251411,'2024-04-09 03:44:10','大范围阿发我','file/1712634161928.jpg','飞娃儿','2024-04-09 11:42:32','李阳','111','1111','李留','2024-04-09 11:44:02');
/*!40000 ALTER TABLE `shejirenwuwancheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712634221417 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1712633886148,'2024-04-09 03:38:05',52,'xuexiziyuan','资源名称2','file/xuexiziyuanFengmian2.jpg','1',NULL,NULL,1712633871534),(1712634221416,'2024-04-09 03:43:40',1712634169624,'shejirenwu','大范围阿发我','file/1712634161928.jpg','1',NULL,NULL,1712634194851);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','u83lqjddco49u3jf61rrafiesokqdm0p','2024-04-09 03:36:55','2024-04-09 04:45:18'),(2,1712633871534,'111','yonghu','用户','mjs88vvdoowssupe3l5q5aqlq8tmny9j','2024-04-09 03:37:55','2024-04-09 04:44:31'),(3,1712634194851,'1111','yonghu','用户','2jolt0tswawl8n3mreq4my7hzjfjvexq','2024-04-09 03:43:19','2024-04-09 04:43:20');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-04-09 03:33:50','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiziyuan`
--

DROP TABLE IF EXISTS `xuexiziyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiziyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziyuanmingcheng` varchar(200) NOT NULL COMMENT '资源名称',
  `fengmian` longtext COMMENT '封面',
  `ziyuanleixing` varchar(200) NOT NULL COMMENT '资源类型',
  `ziyuanjianshu` longtext COMMENT '资源简述',
  `ziyuanxiangqing` longtext COMMENT '资源详情',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712633833181 DEFAULT CHARSET=utf8 COMMENT='学习资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiziyuan`
--

LOCK TABLES `xuexiziyuan` WRITE;
/*!40000 ALTER TABLE `xuexiziyuan` DISABLE KEYS */;
INSERT INTO `xuexiziyuan` VALUES (51,'2024-04-09 03:33:50','资源名称1','file/xuexiziyuanFengmian1.jpg,file/xuexiziyuanFengmian2.jpg,file/xuexiziyuanFengmian3.jpg','资源类型1','资源简述1','资源详情1',1),(52,'2024-04-09 03:33:50','资源名称2','file/xuexiziyuanFengmian2.jpg,file/xuexiziyuanFengmian3.jpg,file/xuexiziyuanFengmian4.jpg','资源类型2','资源简述2','资源详情2',3),(53,'2024-04-09 03:33:50','资源名称3','file/xuexiziyuanFengmian3.jpg,file/xuexiziyuanFengmian4.jpg,file/xuexiziyuanFengmian5.jpg','资源类型3','资源简述3','资源详情3',3),(54,'2024-04-09 03:33:50','资源名称4','file/xuexiziyuanFengmian4.jpg,file/xuexiziyuanFengmian5.jpg,file/xuexiziyuanFengmian6.jpg','资源类型4','资源简述4','资源详情4',4),(55,'2024-04-09 03:33:50','资源名称5','file/xuexiziyuanFengmian5.jpg,file/xuexiziyuanFengmian6.jpg,file/xuexiziyuanFengmian7.jpg','资源类型5','资源简述5','资源详情5',5),(56,'2024-04-09 03:33:50','资源名称6','file/xuexiziyuanFengmian6.jpg,file/xuexiziyuanFengmian7.jpg,file/xuexiziyuanFengmian8.jpg','资源类型6','资源简述6','资源详情6',6),(1712633833180,'2024-04-09 03:37:13','福娃恶妇','file/1712633827757.jpg','飞娃儿','哇发文','<p>哇哦福娃额福娃恶妇哇哦</p>',0);
/*!40000 ALTER TABLE `xuexiziyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `touxiang` longtext COMMENT '头像',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1712634194852 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2024-04-09 03:33:50','file/yonghuTouxiang1.jpg','用户账号1','123456','用户姓名1','男','19819881111'),(42,'2024-04-09 03:33:50','file/yonghuTouxiang2.jpg','用户账号2','123456','用户姓名2','男','19819881112'),(43,'2024-04-09 03:33:50','file/yonghuTouxiang3.jpg','用户账号3','123456','用户姓名3','男','19819881113'),(44,'2024-04-09 03:33:50','file/yonghuTouxiang4.jpg','用户账号4','123456','用户姓名4','男','19819881114'),(45,'2024-04-09 03:33:50','file/yonghuTouxiang5.jpg','用户账号5','123456','用户姓名5','男','19819881115'),(46,'2024-04-09 03:33:50','file/yonghuTouxiang6.jpg','用户账号6','123456','用户姓名6','男','19819881116'),(1712633871534,'2024-04-09 03:37:51','file/1712633861123.jpg','111','111','李阳','男','13212121212'),(1712634194851,'2024-04-09 03:43:14','file/1712634184043.jpg','1111','1111','李留','男','13121212121');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09 12:59:58
