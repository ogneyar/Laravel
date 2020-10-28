-- MySQL dump 10.10
--
-- Host: us-cdbr-iron-east-05.cleardb.net    Database: heroku_2c1ffd3166781bf
-- ------------------------------------------------------
-- Server version	5.6.42-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `avtozakaz_mediagroup`
--

DROP TABLE IF EXISTS `avtozakaz_mediagroup`;
CREATE TABLE `avtozakaz_mediagroup` (
  `id` int(10),
  `id_client` bigint(20),
  `media_group_id` bigint(20),
  `format_file` varchar(20),
  `file_id` varchar(200),
  `url` varchar(200)
)/*! engine=InnoDB */;

--
-- Table structure for table `avtozakaz_ojidanie`
--

DROP TABLE IF EXISTS `avtozakaz_ojidanie`;
CREATE TABLE `avtozakaz_ojidanie` (
  `id_client` bigint(20),
  `ojidanie` varchar(200),
  `last` varchar(200),
  `flag` tinyint(1)
)/*! engine=InnoDB */;

--
-- Table structure for table `avtozakaz_pzmarket`
--

DROP TABLE IF EXISTS `avtozakaz_pzmarket`;
CREATE TABLE `avtozakaz_pzmarket` (
  `id_client` bigint(20),
  `id_zakaz` varchar(50),
  `kuplu_prodam` varchar(100),
  `nazvanie` varchar(500),
  `url_nazv` varchar(200),
  `valuta` varchar(100),
  `gorod` varchar(200),
  `username` varchar(200),
  `doverie` tinyint(1),
  `otdel` varchar(100),
  `format_file` varchar(20),
  `file_id` varchar(200),
  `url_podrobno` varchar(200),
  `status` varchar(20),
  `podrobno` blob,
  `url_tgraph` varchar(200),
  `foto_album` tinyint(1),
  `url_info_bot` varchar(200),
  `date` bigint(20)
)/*! engine=InnoDB */;

--
-- Table structure for table `avtozakaz_users`
--

DROP TABLE IF EXISTS `avtozakaz_users`;
CREATE TABLE `avtozakaz_users` (
  `id_client` bigint(20),
  `first_name` varchar(500),
  `last_name` varchar(500),
  `user_name` varchar(200),
  `status` varchar(10)
)/*! engine=InnoDB */;

--
-- Table structure for table `chat_garant`
--

DROP TABLE IF EXISTS `chat_garant`;
CREATE TABLE `chat_garant` (
  `id_p2p` bigint(20) auto_increment,
  `id_garant` bigint(20),
  `garant_username` varchar(30),
  `id_chat` bigint(20),
  `chat_url` varchar(30),
  `id_admin_group` bigint(20),
  PRIMARY KEY (`id_p2p`)
)/*! engine=InnoDB */;

--
-- Table structure for table `culc`
--

DROP TABLE IF EXISTS `culc`;
CREATE TABLE `culc` (
  `id_client` int(20),
  `id` int(20),
  `knopka` varchar(10),
  `flag` tinyint(1),
  `zpt` tinyint(1)
)/*! engine=InnoDB */;

--
-- Table structure for table `garant_users`
--

DROP TABLE IF EXISTS `garant_users`;
CREATE TABLE `garant_users` (
  `id_client` int(20),
  `name` varchar(200),
  `username` varchar(100),
  `status` varchar(20),
  `flag` int(10)
)/*! engine=InnoDB */;

--
-- Table structure for table `info_users`
--

DROP TABLE IF EXISTS `info_users`;
CREATE TABLE `info_users` (
  `id_client` bigint(20),
  `first_name` varchar(500),
  `last_name` varchar(500),
  `user_name` varchar(200),
  `status` varchar(20)
)/*! engine=InnoDB */;

--
-- Table structure for table `market_ojidanie`
--

DROP TABLE IF EXISTS `market_ojidanie`;
CREATE TABLE `market_ojidanie` (
  `id_client` bigint(20),
  `ojidanie` varchar(200),
  `last` varchar(200),
  `flag` tinyint(1)
)/*! engine=InnoDB */;

--
-- Table structure for table `obrabotka_zayavok`
--

DROP TABLE IF EXISTS `obrabotka_zayavok`;
CREATE TABLE `obrabotka_zayavok` (
  `id_client` int(20),
  `id_zakaz` varchar(20),
  `vibor` varchar(20),
  `monet` varchar(20),
  `kol_monet` double,
  `valuta` varchar(20),
  `cena` double,
  `itog` double,
  `bank` text,
  `flag_isp` tinyint(1),
  `id_chat` bigint(20),
  `id_admin_chat` bigint(20),
  `client_username` varchar(20)
)/*! engine=InnoDB */;

--
-- Table structure for table `pzmarkt`
--

DROP TABLE IF EXISTS `pzmarkt`;
CREATE TABLE `pzmarkt` (
  `id` int(20),
  `otdel` varchar(100),
  `format` varchar(20),
  `file_id` varchar(200),
  `url` varchar(100),
  `kuplu_prodam` varchar(100),
  `nazvanie` varchar(255),
  `valuta` varchar(100),
  `gorod` varchar(200),
  `username` varchar(200),
  `doverie` varchar(100),
  `podrobno` varchar(100),
  `time` int(20)
)/*! engine=InnoDB */;

--
-- Table structure for table `site_users`
--

DROP TABLE IF EXISTS `site_users`;
CREATE TABLE `site_users` (
  `login` varchar(100),
  `password` varchar(100),
  `email` varchar(200),
  `podtverjdenie` varchar(10),
  `vremya` bigint(20),
  `svyazi` varchar(100),
  `svyazi_data` varchar(100),
  `token` varchar(100)
)/*! engine=InnoDB */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(20),
  `id_client` int(20),
  `name_client` text,
  `status` text,
  `flag` tinyint(1) DEFAULT '0'
)/*! engine=InnoDB */;

--
-- Table structure for table `variables`
--

DROP TABLE IF EXISTS `variables`;
CREATE TABLE `variables` (
  `id_bota` bigint(20),
  `nazvanie` varchar(100),
  `soderjimoe` varchar(200),
  `opisanie` varchar(500),
  `vremya` bigint(20)
)/*! engine=InnoDB */;

--
-- Table structure for table `vk_url`
--

DROP TABLE IF EXISTS `vk_url`;
CREATE TABLE `vk_url` (
  `id` bigint(20),
  `url` varchar(200),
  `url_vk` varchar(200),
  `vk_file` varchar(200)
)/*! engine=InnoDB */;

--
-- Table structure for table `zakaz_message`
--

DROP TABLE IF EXISTS `zakaz_message`;
CREATE TABLE `zakaz_message` (
  `client_id` bigint(20),
  `message_id_in` bigint(20),
  `message_id_out` bigint(20),
  `date` bigint(20),
  `flag` tinyint(1)
)/*! engine=InnoDB */;

--
-- Table structure for table `zakaz_users`
--

DROP TABLE IF EXISTS `zakaz_users`;
CREATE TABLE `zakaz_users` (
  `id_client` bigint(20),
  `first_name` varchar(500),
  `last_name` varchar(500),
  `user_name` varchar(200),
  `status` varchar(20)
)/*! engine=InnoDB */;

--
-- Table structure for table `zayavka`
--

DROP TABLE IF EXISTS `zayavka`;
CREATE TABLE `zayavka` (
  `id_client` int(20),
  `id_zakaz` int(20),
  `vibor` varchar(20),
  `monet` varchar(20),
  `kol_monet` double,
  `valuta` varchar(20),
  `cena` double,
  `itog` double,
  `bank` text,
  `flag_isp` tinyint(1)
)/*! engine=InnoDB */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

