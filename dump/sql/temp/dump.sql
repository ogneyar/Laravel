
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





--
-- Dumping data for table `avtozakaz_mediagroup`
--


/*!40000 ALTER TABLE `avtozakaz_mediagroup` DISABLE KEYS */;
LOCK TABLES `avtozakaz_mediagroup` WRITE;
INSERT INTO `avtozakaz_mediagroup` VALUES (32,351009636,12645278284397186,'фото','AgACAgIAAxkBAAIMtl429EnTvktU8jCJHd5Z1KPrT1zJAAI9rTEbbU65SeBFf51iGyG1_HhcDwAEAQADAgADeAADm_8EAAEYBA','https://t.me/tester_media_pzmarket/15');
INSERT INTO `avtozakaz_mediagroup` VALUES (32,351009636,12645278284397186,'фото','AgACAgIAAxkBAAIMt1429Ek_vdldTbGPiS9zvkM27JmmAAI-rTEbbU65SbiW_KJL0nBbFJbCDwAEAQADAgADeAADlPIDAAEYBA','https://t.me/tester_media_pzmarket/15');
INSERT INTO `avtozakaz_mediagroup` VALUES (32,351009636,12645278284397186,'фото','AgACAgIAAxkBAAIMuF429EmFDVWOxInYai48hkd5r32zAAJ9rDEbujy4SYgHFzOTsNFdtpHCDwAEAQADAgADeQADX_UDAAEYBA','https://t.me/tester_media_pzmarket/15');
UNLOCK TABLES;
/*!40000 ALTER TABLE `avtozakaz_mediagroup` ENABLE KEYS */;

--
-- Dumping data for table `avtozakaz_ojidanie`
--


/*!40000 ALTER TABLE `avtozakaz_ojidanie` DISABLE KEYS */;
LOCK TABLES `avtozakaz_ojidanie` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `avtozakaz_ojidanie` ENABLE KEYS */;

--
-- Dumping data for table `avtozakaz_pzmarket`
--


/*!40000 ALTER TABLE `avtozakaz_pzmarket` DISABLE KEYS */;
LOCK TABLES `avtozakaz_pzmarket` WRITE;
INSERT INTO `avtozakaz_pzmarket` VALUES (351009636,'28','#продам','Маяк','https://t.me/tester_podrobno/28','PZM','#Весь_мир #Россия #Ростов_на_Дону','@Ogneyar_ya',0,'#недвижимость','фото','AgACAgIAAxkBAAILul417QU2x0Zof0fGLfPC3XZSbjvZAAKlrDEbCxuxSZ4OFGN58CTFdQrBDgAEAQADAgADeQADMFICAAEYBA','https://t.me/tester_podrobno/28','одобрен','Светит отлично, даже превосходно, очень рекомендую!\n\nНедорого.\n\nТорг уместен.','https://i.ibb.co/4RrFHjR/file-14.jpg',0,NULL,1590092966);
INSERT INTO `avtozakaz_pzmarket` VALUES (351009636,'32','#продам','Калифорнию.','https://t.me/tester_podrobno/32','₽ / PZM','#Калифорния','@Ogneyar_ya',0,'#для_дома_и_дачи','фото','AgACAgIAAxkBAAIMsF429DqPvGm5Agb6iOTdXRYHVXoQAAI_rTEbbU65SeyZy-k7XYyl6mXLDgAEAQADAgADeAADRrUBAAEYBA','https://t.me/tester_podrobno/32','одобрен','Город и округ в штате Калифорния, США, названный в честь католического святого Франциска Ассизского. Население в 2010 году составляло 815 358 человек, это четвёртый по численности населения город Калифорнии и двенадцатый в США. Площадь Сан-Франциско составляет 600,6 км², из них суши - 121,4 км², воды - 479,2 км². Сан-Франциско расположен на северной оконечности полуострова Сан-Франциско. Большую часть своей истории он являлся самым населённым и важным городом области залива Сан-Франциско.','https://i.ibb.co/rfSvSfm/file-16.jpg',1,NULL,NULL);
INSERT INTO `avtozakaz_pzmarket` VALUES (276795315,'40','#продам','Сок','https://t.me/tester_podrobno/40','₽ / PZM','#Ростов_на_Дону','@DJRADA',0,'#продукты_питания','фото','AgACAgIAAxkBAAIOe144E7t8S3jCOXF2SP2ksQWGmjgSAAKBrDEblI7BScDSeiHkoQZMPPjADgAEAQADAgADeQAD2mQCAAEYBA','https://t.me/tester_podrobno/40','одобрен','Грейпфрут\nЛимон\nЛайм\nУникальный вкус!\nБез добавления красителей и консервантов','https://i.ibb.co/QbVrXmq/file-24.jpg',0,'https://t.me/check_user_infobot?start=276795315',NULL);
INSERT INTO `avtozakaz_pzmarket` VALUES (298466355,'45','#продам','Железные сапоги','https://t.me/tester_podrobno/45','₽ / PZM','#Россия','@Otrad_Ya',1,'#транспорт','фото','AgACAgIAAxkBAAIRvF4_vW__RP-mRvkgROxzZ0BTeATsAAJ7rDEbEwoAAUp1H-HTJ9YslLipwg8ABAEAAwIAA3gAA7NEBAABGAQ','https://t.me/tester_podrobno/45','одобрен','Вот раньше была рыба, в воду без трусов не зайдёшь.','https://i.ibb.co/8rrvx3M/file-29.jpg',0,'https://t.me/check_user_infobot?start=298466355',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (276795315,'57','#продам','Кайф комп','https://t.me/tester_podrobno/57','PZM','#Россия','@DJRADA',0,'#бытовая_электроника','фото','AgACAgIAAxkBAAIWX15EROFGwprDO6rYiOBgKzXK31Y-AAIbrTEbuTUgSge69oHHSL1ndkXLDgAEAQADAgADeQADviwCAAEYBA','https://t.me/tester_podrobno/57','одобрен','Много много всего интересного','https://i.ibb.co/59kThZP/file-42.jpg',0,'https://t.me/check_user_infobot?start=276795315',1582833674);
INSERT INTO `avtozakaz_pzmarket` VALUES (298466355,'59','#продам','Пром','https://t.me/tester_podrobno/59','PZM','#Россия','@Otrad_Ya',0,'#услуги','фото','AgACAgIAAxkBAAIm915QRAM-IBRY7dFxsA_sEZmkosQaAAIerTEbLgqISqE5iV4ZhRkVhoHBDwAEAQADAgADeQADUcEEAAEYBA','https://t.me/tester_podrobno/59','одобрен','аааааааааааааааааааааааар','https://i.ibb.co/WxhjBRb/file-67.jpg',0,'https://t.me/check_user_infobot?start=298466355',1581619088);
INSERT INTO `avtozakaz_pzmarket` VALUES (298466355,'35','#продам','️Вентилятор','https://youtu.be/INBSF-8Jzn8','️₽ / PZM','️#Россия','@Otrad_Ya',1,'#бытовая_электроника','фото','AgACAgIAAxkBAAInNV5QULtgk4bSy7eLdoPDxKmoF1x0AAJsrDEbKrOBSgoSyrB9D-j0tv5QkS4AAwEAAwIAA3gAA2ttAAIYBA','https://t.me/tester_podrobno/35','перенесён','Это просто необходимая вещь в каждом доме.\nВентилятор, своими руками\nПриеду лично в любой город и вручу вам лично.\nЭто же просто ✨✨✨✨✨супер✨✨✨✨✨💥💥💥💥\n🔥🔥🔥🔥🔥','https://i.ibb.co/kqQRgVM/file-69.jpg',0,'',1582319656);
INSERT INTO `avtozakaz_pzmarket` VALUES (0,'816','#продаю','Сувенирная монета💎💎PRIZM💎💎','https://t.me/podrobno_s_PZP/816','₽ / PZM','#Вязьма #Россия','@matrosoff33',0,'#хобби_и_отдых','фото','AgACAgIAAxkBAAInS15Q5bfpNQpU-y47NFqJ12CeLG2hAALlrDEbl4MxSL1J7Wjb34am12XBDwAEAQADAgADeQAD5kMCAAEYBA','https://t.me/podrobno_s_PZP/816','перенесён','','https://i.ibb.co/rFkwzrz/file-70.jpg',0,'',1582279995);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'93','#продам','Халеб','https://t.me/tester_podrobno/93','₽ / PZM','#матрица','@Ogneyar_ya',0,'#продукты_питания','фото','AgACAgIAAxkBAAInwF5SWXWj8Uptdj3nugMlfE7a_zaYAAJYrDEbRhWQSmqqpjS1AAHfxtIJcZEuAAMBAAMCAAN5AAQyAAIYBA','https://t.me/tester_podrobno/93','одобрен','tt','https://i.ibb.co/Jvh7hVS/file-72.jpg',0,'https://t.me/check_user_infobot?start=1038937592',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'94','#продам','впвапуквп','https://hot.chili.pop','PZM','#Россия','@Ogneyar_ya',1,'#недвижимость','фото','AgACAgIAAxkBAAIn615Sdmpj9k5pao90lanCD5WtcMFYAAIkrDEbbX6RSjXFzuFpKuRucWTBDwAEAQADAgADeAADK9YEAAEYBA','https://t.me/tester_podrobno/94','одобрен','вввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввв','https://i.ibb.co/BcSSZj4/file-73.jpg',0,'https://t.me/check_user_infobot?start=1038937592',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'95','#куплю','Абрикос','https://t.me/tester_podrobno/95','PZM','#Ростов_на_Дону','@Ogneyar_ya',1,'#красота_и_здоровье','фото','AgACAgIAAxkBAAIoiF5SydKmeqTg9XkFwg-gwKIdFCa_AAKrrjEbRhWYSiH9yu4wtFgYOXlcDwAEAQADAgADeQADt-QFAAEYBA','https://t.me/tester_podrobno/95','одобрен','аааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааа','https://i.ibb.co/nmkLQ4M/file-74.jpg',0,'https://t.me/check_user_infobot?start=1038937592',1597515034);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'96','#куплю','Корм, не в коня.','https://t.me/tester_podrobno/96','PZM','#Весь_мир #Россия #Ростов_на_Дону','@Ogneyar_ya',0,'#продукты_питания','фото','AgACAgIAAxkBAAIow15XlJsf0owcLQNx0aOmiEvEmwTjAALErDEbAZfBStjUC9daCLUoF8TCDwAEAQADAgADeQADoR8EAAEYBA','https://t.me/tester_podrobno/96','одобрен','аааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааааа','https://i.ibb.co/NyGMgNL/file-75.jpg',0,'https://t.me/check_user_infobot?start=1038937592',1591035902);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'105','#продам','gggggggggggggggggggg','https://t.me/tester_podrobno/105','PZM','#Ростов_на_Дону','@Ogneyar_ya',0,'#животные','фото','AgACAgIAAxkBAAIqeF5YFfJJ-XCHo7vxJrMKRXkM88GIAAJsrTEbAZfBSpkwQbqgYLZxw2nBDwAEAQADAgADeAAD9_0EAAEYBA','https://t.me/tester_podrobno/105','одобрен','жжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжжж','https://i.ibb.co/W0PZX4G/file-84.jpg',0,'https://t.me/check_user_infobot?start=1038937592',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (304710488,'106','#куплю','Носовой платок','https://t.me/tester_podrobno/106','₴ / PZM','#весь_мир','@PRIZMarket_admin',0,'#личные_вещи','фото','AgACAgIAAxkBAAIquF5YXViN6zZ590NuYOwgIevAtNQ6AAJtrTEbrTLBSlmQoi9xF0jQfcjCDwAEAQADAgADeQAD_h8EAAEYBA','https://t.me/tester_podrobno/106','одобрен','Это же для зелёной жижи. Если так подумать кусок тряпки. И всё же мне нужен красивый кусок тряпки. И так что б не дорого. За призм.','https://i.ibb.co/2FjhTQm/file-85.jpg',0,'https://t.me/check_user_infobot?start=304710488',1582849535);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'107','#куплю','Фывапролджэйцукенгшщзхъя','http://ddddddddddddddddd.com/zzzzzzzzzzzzzzzzzzz/ccccccccccccccc/ccc.html','PZM','#Россия #Ростов_на_Дону','@Ogneyar_ya',1,'#для_бизнеса','фото','AgACAgIAAxkBAAIrLV5jfpf3UIRGHph-Od56KVUg95gYAAIorDEbIbwhS6KWBZ3gxXtYA654kS4AAwEAAwIAA3gAA_KpAAIYBA','https://t.me/tester_podrobno/107','одобрен','zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzчччччччччччччччччччччччччччччччччччччччччччччсссссссссссссссссссссссссссссссссссссссссссцццццццццццццццццццццццццццццццццццццццццццццццццццццццццццццмммммммммммммммммммммммммммммммммммммммммммммммммммммммммммммм','https://i.ibb.co/Wtz4XXr/file-86.jpg',0,'https://t.me/check_user_infobot?start=1038937592',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'108','#продам','Дизайнерское решение!','https://t.me/tester_podrobno/108','₽ / PZM','#Весь_мир #Россия #Ростов_на_Дону','@Ogneyar_ya',1,'#для_бизнеса','фото','AgACAgIAAxkBAAIrUF5uLlxCiZQNr0WNX9fi9LuyVd64AALeqzEbZkNxS6g7SQuaRSjn5CnBDgAEAQADAgADeQADjgQEAAEYBA','https://t.me/tester_podrobno/108','одобрен','Ну чего тут описывать? Риал гуд дизайн проект мега сайта! Никогда такого небыло, и вот опять) Пикассо отдыхает вместе с Сальвадором Дали!','https://i.ibb.co/rtgtxvr/file-87.jpg',0,'https://t.me/check_user_infobot?start=1038937592',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'110','#куплю','Хз','https://t.me/tester_podrobno/110','£ / PZM','#Ростов_на_Дону','@Ogneyar_ya',1,'#хобби_и_отдых','фото','AgACAgIAAxkBAAIrbF5_5VdBiv2dN67lXeCvdtJ4w-ilAAKVrzEbMckBSDvYLy57zx1VPxDBDgAEAQADAgADeAADc4QEAAEYBA','https://t.me/tester_podrobno/110','одобрен','Ооееееееееееееееппп\n\nОоееееееееееееееппп\n\nОоееееееееееееееппп\n\nОоееееееееееееееппп\n\nОоееееееееееееееппп\n\nОоееееееееееееееппп\n\nОоееееееееееееееппп\n\nОоееееееееееееееппп','https://i.ibb.co/st34wrp/file-88.jpg',0,'https://t.me/check_user_infobot?start=1038937592',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'111','#продам','ыыыыыы','https://rul.ru','PZM','#Ростов_на_Дону','@Ogneyar_ya',1,'#для_дома_и_дачи','фото','AgACAgIAAxkBAAIrkF6YVpjAya33Pl0nbUMF6_rZKvcbAAJFrTEbl1bASGaSp9bzc3B3bza_ki4AAwEAAwIAA3kAA-7sAAIYBA','https://t.me/tester_podrobno/111','одобрен','ппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп','https://i.ibb.co/q1cr9rY/file-89.jpg',0,'https://t.me/check_user_infobot?start=1038937592',1597610333);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'112','#продам','Название','https://mysite.ru/supersite/','₽ / PZM','#Весь_мир #Россия #Ростов_на_Дону','@Ogneyar_ya',0,'#недвижимость','фото','AgACAgIAAxkBAAIryF6kX6ShvyfT6BEN60TElZnLuXViAAKbrjEbpxwhSYvq5vaLWY7kRMXCDwAEAQADAgADeQAD4T8GAAEZBA','https://t.me/tester_podrobno/112','одобрен','арпрррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррррр','https://i.ibb.co/7W1Njvq/file-90.jpg',0,'https://t.me/check_user_infobot?start=1038937592',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (351009636,'113','#куплю','Чёнить','https://t.me/tester_podrobno/113','PZM',' #Ростов_на_Дону','@Tester_Botoff',0,'#продукты_питания','фото','AgACAgIAAxkBAAIsYF6yWMHRHuYaiBSkKorSq-QUyyxXAAJXrjEbnn6QSSsRP5jII_ekfBjBDgAEAQADAgADeQAD2eIFAAEZBA','https://t.me/tester_podrobno/113','одобрен','Вааааще чёнить чтоб было ОК) Ну или чёнить ещё, но чтоб ваааааасщееее агонь)\n\nЕсли бы да кабы то ляляля\n\nПпррппапрррппраппроппаа','https://i.ibb.co/rH1dZ8Y/file-91.jpg',0,'https://t.me/check_user_infobot?start=351009636',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (351009636,'114','#продам','Вааще чёнить','https://t.me/tester_podrobno/114','£ / PZM',' #Ростов_на_Дону','@TesterBotoff',0,'#хобби_и_отдых','фото','AgACAgIAAxkBAAIsgV6yWxVSRQYEKWQ5rbTYPlZwgThRAAJZrjEbnn6QSSc0rvfDebSnkJJykS4AAwEAAwIAA3kAA8DgAgABGQQ','https://t.me/tester_podrobno/114','одобрен','Ну как Вы и просили, самое свежее ваааааще чёнить)\n\nБебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебебе','https://i.ibb.co/fdRpFZH/file-92.jpg',0,'https://t.me/check_user_infobot?start=351009636',1588747149);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'115','#продам','ХЗ','https://t.me/tester_podrobno/115','₽ / PZM',' #Ростов_на_Дону','@Ogneyar_ya',0,'#недвижимость','фото','AgACAgIAAxkBAAIsnV6yybuhOZc_c1gUkiUsKM2oOhpRAAKsrjEb26uQSQIOMYIopPuVdM5Xky4AAwEAAwIAA3gAAxsBAAIZBA','https://t.me/tester_podrobno/115','одобрен','ДДДДДДДДДДДДддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддддд','https://i.ibb.co/9ZXbRWT/file-93.jpg',0,'https://t.me/check_user_infobot?start=1038937592',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'126','#продам','Вввввввввввввввв','https://t.me/tester_podrobno/126','€ / PZM',' #Ростов_на_Дону','@Ogneyar_ya',0,'#для_бизнеса','фото','AgACAgIAAxkBAAItdl64TvE0CL7pl7MlwMcd4D_HnHAWAAIFsDEbUuHBSQgnuic4EUBaLUjLDgAEAQADAgADeQADP3EFAAEZBA','https://t.me/tester_podrobno/126','одобрен','ВВВВВВВВВВВВВВВВВВВВВВВВВВВВВвввввввввввввввввввввввввввввввввввввввВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВввввввввввввввввввввввввввввввввввввввввввввввввввввВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВВ','https://i.ibb.co/3r33WP6/file-94.jpg',0,'https://t.me/check_user_infobot?start=1038937592',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'127','#продам','Лот должен дублироваться в icq new.','https://t.me/tester_podrobno/127','PZM',' #Ростов_на_Дону','@Ogneyar_ya',0,'#недвижимость','фото','AgACAgIAAxkBAAIuG165DokfZQyJIuPQRYI-StcEqgABgwACMa0xG8bByUkvVHGmzFgl7Xa1g5IuAAMBAAMCAAN5AANNRQEAARkE','https://t.me/tester_podrobno/127','одобрен','Ну чего описывать?\n\nСейчас проверю, если опубликуется в аське лот в тестовом варианте, то сделаю уже публикацию всех  лотов с канала)','https://i.ibb.co/0DnRTYK/file-98.jpg',0,'https://t.me/check_user_infobot?start=1038937592',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'135','#продаю','Хлеборезка','https://t.me/tester_podrobno/135','PZM','#РостовНаДону','Пуппет',0,'#услуги','фото','AgACAgIAAx0CTjAcFAACB-hevUaP4pgDBnVusrs2Z3WIv7GJDQAC36wxG8l56EnPBrH-IQ6RdzoJwQ4ABAEAAwIAA3kAA20XBgABGQQ','https://t.me/tester_podrobno/135','одобрен','ЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙЙ','https://i.ibb.co/yY3BTQk/file-99.jpg',0,'https://wa.me/79510909090',1589462442);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'5ebd7374be1cd','#продаю','Ogneyar','','PZM','#РостовНаДону','Лллллллл',0,'#услуги','фото','','','','врваптукаеитккиватруапппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппппп','https://boxbuket.s3.eu-west-3.amazonaws.com/temp5ebd7374be1cd.jpg',0,'https://teleg.link/TesterBotoff',1589474165);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'5ebd78170a8b2','#продаю','Хлеборезка','','PZM','#РостовНаДону','5ebd6f72e8866',0,'#услуги','фото','','','','dddddddddddddddddddddddddddddвввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввв','https://boxbuket.s3.eu-west-3.amazonaws.com/temp5ebd78170a8b2.jpg',0,'https://teleg.link/TesterBotoff',1589475352);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'139','#продаю','Хлеборезка','https://t.me/tester_podrobno/139','PZM','#РостовНаДону','1586521015',1,'#услуги','фото','AgACAgIAAx0CUZN2QQACIRtevXonEcyXiirGK7QT4Uv54PCa8gACJ68xGxcN6UnH8y2Ji_VO71Jiyw4ABAEAAwIAA3gAA1yZBQABGQQ','https://t.me/tester_podrobno/139','одобрен','ввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввв','https://i.ibb.co/87kztzJ/temp5ebd7a215ff25.jpg',0,'https://teleg.link/TesterBotoff',1589475874);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'140','#продаю','Хлеборезка','https://t.me/tester_podrobno/140','PZM','#РостовНаДону','ДлинныйЛогин',1,'#услуги','фото','AgACAgIAAx0CUZN2QQACIR1evYBBo3JlKZRazLQiXwZh2xX_6QAC8q4xGxcN8UloV743SS9g_wHFwg8ABAEAAwIAA3kABA0HAAEZBA','https://t.me/tester_podrobno/140','одобрен','ыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыыы','https://i.ibb.co/VH2FVKs/temp5ebd80332f41d.jpg',0,'https://teleg.link/TesterBotoff',1589477428);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'143','#продаю','Ложки для мёда','www.youtube.com/channel/UCXo_PcOU2E-ek-pbdDGUYLA','Рубль / PZM','#Россия #РостовНаДону','Огнеяр',1,'#для_дома_и_дачи','фото','AgACAgIAAx0CUZN2QQACIVlewCFdct55uIu-ijAAAaS5veZsoK4AAvCtMRsAAY0BSszGZQABcS3XERRtTJEuAAMBAAMCAAN5AAOQnQMAARkE','https://t.me/tester_podrobno/143','одобрен','Ложки для мёда.\n\nЛожка \"медовая\", ручной работы, под заказ.\n\nСтоимость одной ложки длиной 15-16 см: 300 руб. (в PRIZM на момент сделки)\n\nЗа опт скидка 10% (от 10 шт)\n\nСделка только через гаранта.\n\n\nhttps://www.youtube.com/channel/UCXo_PcOU2E-ek-pbdDGUYLA\n👆 👆 👆 мой ютуб канал -  ХуторянинЪ\n\nt.me/hutor_yanin\n👆 👆 👆 ХуторянинЪ - мой телеграм-канал\n\nhttps://ok.ru/ya13th\n👆 👆 👆 моя страница в ОдноКлассниках \n\nhttps://vk.com/st13th\n👆 👆 👆 моя страница во ВКонтакте \n\nhttps://www.instagram.com/ogneyar_ya\n👆 👆 👆 моя страница в инстаграм\n\nhttps://icq.im/hutoryanin\n👆 👆 👆 мой канал в icq new','https://i.ibb.co/TgDSNry/temp5ec0214c495ef.jpg',0,'https://wa.me/77773333333',1602395297);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'144','#продаю','Красивая картина','https://t.me/tester_podrobno/144','PZM','Хэжжжтеги тута','Огнеяр',1,'#услуги','фото','AgACAgIAAx0CUZN2QQACIWBewDEU-Z054rhv3AitqhPvcaUaCQACBa4xGwABjQFKPhTNknzOhLJNX8sOAAQBAAMCAAN5AANouQUAARkE','https://t.me/tester_podrobno/144','одобрен','Забирайте даром)','https://i.ibb.co/VN8ZhcC/temp5ec030f85c87a.jpg',0,'https://wa.me/77773333333',1597516623);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'145','#продаю','Воздух','https://t.me/tester_podrobno/145','Рубль / PZM','#Россия','Логин',1,'#личные_вещи','фото','AgACAgIAAx0CUZN2QQACIWJewDh2wgAB6YOL-CV4EPQ9WyX_6h0AAgWuMRsAAY0BSj4UzZJ8zoSyTV_LDgAEAQADAgADeQADaLkFAAEZBA','https://t.me/tester_podrobno/145','одобрен','Много ногой много много много много много много много много много много много много много много много много много много много много много много много воздуха','https://i.ibb.co/VN8ZhcC/temp5ec030f85c87a.jpg',0,'https://teleg.link/DJRADA',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'148','#продаю','Носок ','https://t.me/tester_podrobno/148','PZM','#Ростов_на_Дону ','Otrad_ya',0,'#личные_вещи','фото','AgACAgIAAx0CUZN2QQACIX9ewXHtDUte7ttikLbuG_Qcp3kcswACN64xG1UmEErwfg-nUC9SODAswQ4ABAEAAwIAA3kAA4YwBgABGQQ','https://t.me/tester_podrobno/148','одобрен','Стал оплот полил порт полил потом мотор порт политолог потом потом попросила просто жить дарили воин плод роль придал при','https://i.ibb.co/ZT65Qp5/temp5ec171489227a.jpg',0,'https://wa.me/79001250652',1589807796);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'150','#куплю','Дом','https://prizmarket.ru','Рубль / PZM','#Россия #РостовНаДону','Огнеяр',0,'#недвижимость','фото','AgACAgIAAx0CUZN2QQACJ3BewsdgCeJCPio9_92_BcY9_Y0MgQAC8q0xG-d8GUqEA3-hGlefWbr0wA4ABAEAAwIAA3gAA1E_BgABGQQ','https://t.me/tester_podrobno/150','одобрен','Шикарный дом на берегу озера.','https://i.ibb.co/tHsPF84/5ec2c71c0869ejpg.jpg',0,'https://wa.me/77773333333',1591027359);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'154','#продаю','Табурет','https://t.me/tester_podrobno/154','PZM','#Казахстан','Огнеяр',0,'#услуги','фото','AgACAgIAAx0CUZN2QQACKFRewtRsfyb1g_vcUsxNkpkaoggGGwACHa4xG-d8GUostynmym7NJf4owQ4ABAEAAwIAA3kAA8NABgABGQQ','https://t.me/tester_podrobno/154','одобрен','Табуретос как бурритос пакупайтес невзначайто) ','http://f0430377.xsph.ru/image/test5ec2d419a77a9.jpg',0,'https://wa.me/77773333333',1590904125);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'155','#продаю','Кодобок','https://t.me/tester_podrobno/155','PZM','#Россия','Тестер',0,'#продукты_питания','фото','AgACAgIAAx0CUZN2QQACMCFew1YcATlPpMb2cDpaIC9Ogu_CvgACo60xG-d8IUonlFPsxhHHMpi7wg8ABAEAAwIAA3kAAzArBwABGQQ','https://t.me/tester_podrobno/155','одобрен','Колобок колобок я тебя съем сказала лиса и съела и была очень довольная и сытая, счастливая при счастливая. ','http://f0430377.xsph.ru/image/test5ec355f08ea9a.jpg',0,'https://teleg.link/Tester_Botoff',1603826739);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'156','#продаю','','https://t.me/tester_podrobno/156','PZM','','Огнеяр',0,'#услуги','фото','AgACAgIAAx0CUZN2QQACpGley4mwypmSfP_-sVjBw5pzHwSGpQAC5q0xG6LwYErjZApmBCi-8Jwp7pEuAAMBAAMCAAN4AAPxUgIAARkE','https://t.me/tester_podrobno/156','одобрен','','http://f0430377.xsph.ru/image/test5ecb897c82396.jpg',0,'https://wa.me/77773333333',1603826699);
INSERT INTO `avtozakaz_pzmarket` VALUES (351009636,'157','#куплю','хрен','https://t.me/tester_podrobno/157','PZM',' #Ростов_на_Дону','@TesterBotoff',0,'#животные','фото','AgACAgIAAxkBAAIwyV7LijWH7J-dl1FBlkNmP-ht02YZAAIUrTEbVqpZSkPGkPF3-_kpIG1MkS4AAwEAAwIAA3gAA9_oAwABGQQ','https://t.me/tester_podrobno/157','одобрен','ееееееееееееееееееееееее\nееееееееееееееееееееееее\nееееееееееееееееееееееее\nееееееееееееееееееееееее\nееееееееееееееееееееееее\nееееееееееееееееееееееее\nееееееееееееееееееееееее\nееееееееееееееееееееееее','https://i.ibb.co/p47Bq5f/file-102.jpg',0,'https://t.me/check_user_infobot?start=351009636',1590397530);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'158','#продаю','Мед. маски','https://t.me/tester_podrobno/158','PZM','#Россия','Тестер',0,'#личные_вещи','фото','AgACAgIAAx0CUZN2QQACuTxezM7d4l8VJvyWa_iN3FdThTmqAAOHsDEbQq5gSgJWGTTIkW28dHjrki4AAwEAAwIAA3kAA23ZAQABGQQ','https://t.me/tester_podrobno/158','одобрен','Маски супер, на любой вкус и цвет гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы гы','http://f0430377.xsph.ru/image/test5eccce159d6e7.jpg',0,'https://teleg.link/Tester_Botoff',1590480343);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'159','#продаю','Кето еда','https://t.me/tester_podrobno/159','PZM','#Россия','Огнеяр',0,'#продукты_питания','фото','AgACAgIAAx0CUZN2QQACuT9ezM71xC_UTR9YcaoAAQwiusMMUlcAAoiwMRtCrmBKVPMRuUppmnODG7mSLgADAQADAgADeQAD8HQCAAEZBA','https://t.me/tester_podrobno/159','одобрен','Наивкуснейшая еда, на любой вкус, бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе бе ','http://f0430377.xsph.ru/image/test5eccceaecbdc4.jpg',0,'https://wa.me/77773333333',1590480521);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'160','#продам','ррр','https://t.me/tester_podrobno/160','PZM',' #Ростов_на_Дону','@Ogneyar_ya',0,'#животные','фото','AgACAgIAAxkBAAIw_l7R6SxfJgZyUmeDxeDDDa1OL0DFAAI6rTEbPCOQSq5aD49jYQSqDzi_ki4AAwEAAwIAA3kAA1OiAgABGQQ','https://t.me/tester_podrobno/160','одобрен','к','https://i.ibb.co/DCfysRy/file-103.jpg',0,'https://t.me/check_user_infobot?start=1038937592',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (351009636,'161','#продам','пппр','https://t.me/tester_podrobno/161','PZM',' #Ростов_на_Дону','@TesterBotoff',0,'#для_бизнеса','фото','AgACAgIAAxkBAAIxGF7R6hQWltwy5A4VBBApEPmsccA0AAJQrjEbRnKRSqftnCJrpc3hRvXhkS4AAwEAAwIAA3kAAwSNAgABGQQ','https://t.me/tester_podrobno/161','одобрен','еннрпаапргерпипарриргрргмрппшппеннрпаапргерпипарриргрргмрппшппеннрпаапргерпипарриргрргмрппшппеннрпаапргерпипарриргрргмрппшппеннрпаапргерпипарриргрргмрппшпп','https://i.ibb.co/djfJFjK/file-104.jpg',0,'https://t.me/check_user_infobot?start=351009636',1590815363);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'162','#продам','Чё нить','https://t.me/tester_podrobno/162','PZM',' #Ростов_на_Дону','@Ogneyar_ya',1,'#животные','видео','BAACAgIAAxkBAAIxQl7SiXGP2AgOMrShzYb8ZQxQSyI3AALqBwACPCOQSmbGYfk_CaKMGQQ','https://t.me/tester_podrobno/162','одобрен','вввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввввв','',0,'https://t.me/check_user_infobot?start=1038937592',0);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'165','#продаю','Хлеб ','https://t.me/tester_podrobno/165','PZM','#Россия','Огнеяр',0,'#услуги','фото','AgACAgIAAx0CUZN2QQABAcIZXt5PzYDjiQPrFX-dZkzPGho5h-wAAnOuMRum1vlKiAMsB0KzZHpvq3iRLgADAQADAgADeQADckgEAAEaBA','https://t.me/tester_podrobno/165','одобрен','прошла по пенопласту шиной а оно\nпрошла по пенопласту шиной а онопрошла по пенопласту шиной а оно\nпрошла по пенопласту шиной а онопрошла по пенопласту шиной а онопрошла по пенопласту шиной а онопрошла по пенопласту шиной а онопрошла по пенопласту шиной а оно','http://f0430377.xsph.ru/image/test5ede4f53a262d.jpg',0,'https://wa.me/77773333333',1591627572);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'169','#продаю','Подсвечник','https://t.me/tester_podrobno/169','Рубль / PZM',' #Россия #РнД #РостовНаДону','Огнеяр',1,'#для_дома_и_дачи','фото','AgACAgIAAx0CUZN2QQABBvJbX1n88FkWaMroT9mQfNMPvlWV_s0AAiauMRuNpdBKyYrUaf6bNGKVrOuXLgADAQADAgADeQAD2nkAAhsE','https://t.me/tester_podrobno/169','одобрен','Здравствуйте все 🖐\n\nПриобретайте экслюзивный подсвечник, штучная работа, работа под заказ, цена договорная. Принимается оплата в PRIZM. (доставка почтой России оплачивается отдельно)\n\nСсылки на соц. сети мастера смотрите ниже \n👇👇👇\n\nhttps://www.youtube.com/c/ХуторянинЪ\n👆 👆 👆 канал ХуторянинЪ на Youtube 😉\n\nhttps://t.me/hutor_yanin\n👆 👆 👆 канал  ХуторянинЪ в Telegram 😉\n\nhttps://www.instagram.com/hutor_yanin/\n👆 👆 👆 страница ХуторянинЪ в Instagram 😉\n\nhttps://vk.com/club198545483\n👆 👆 👆 страница ХуторянинЪ в VKontakte 😉\n\nhttps://ok.ru/group/64240788504623\n👆 👆 👆 страница ХуторянинЪ в ОК 😉\n\nhttps://icq.im/hutoryanin\n👆 👆 👆 канал ХуторянинЪ в ICQnew 😉\n\nhttps://www.facebook.com/groups/649701642614016/?ref=share\n👆 👆 👆 группа ХуторянинЪ в Facebook 😉\n\nhttps://yandex.ru/chat/#/join/317765f5-498a-4010-ba49-2f766c134385\n👆 👆 👆 канал ХуторянинЪ в Яндекс  😉\n\nhttps://invite.viber.com/?g2=AQBw4bOeGtYqR0wXcLMpZvsnYqNQw60KFF2aA6i%2B6o0lCXCfSYGrnty3J9%2FAqJt%2B\n👆 👆 👆 сообщество ХуторянинЪ в Viber 😉','http://f0430377.xsph.ru/image/test5f59fcd65515a.jpg',0,'https://wa.me/77773333333',1599732951);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'170','#продаю','Хрен','https://t.me/tester_podrobno/170','PZM',' #Россия','Огнеяр',0,'#услуги','фото','AgACAgIAAx0CUZN2QQABBvrvX2HnJgsTQptHtcCXhD8Ft2z5tY4AAmWzMRte-xBLnrQ9620teHbA1teXLgADAQADAgADeQAD130AAhsE','https://t.me/tester_podrobno/170','одобрен','Хрен хренище не хреновый) ','http://f0430377.xsph.ru/image/test5f61e70cdd05d.jpg',0,'https://wa.me/77773333333',1600251661);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'173','#продаю','Всё','https://t.me/tester_podrobno/173','PZM','№ппп','Огнеяр',0,'#услуги','фото','AgACAgIAAx0CUZN2QQABBxFVX3M1tF4Uri1mdcM6a65neS5ksDUAAq-uMRttR5hLT46w8bamNefg4tqXLgADAQADAgADeAADgfMAAhsE','https://t.me/tester_podrobno/173','одобрен','ивапиапр','http://f0430377.xsph.ru/image/test5f72079c4ac57.png',0,'https://wa.me/77773333333',1602406621);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'174','#продаю','Крупу','https://t.me/tester_podrobno/174','PZM',' #Россия #РостовНаДону','Огнеяр',0,'#услуги','фото','AgACAgIAAx0CUZN2QQABB0GKX4M0fBlGWwyb84Ue6UneGeM5Y0kAAv2uMRuX9RhI6hdprzMAAYHDshnKly4AAwEAAwIAA3gAA3Z4AQABGwQ','https://t.me/tester_podrobno/174','одобрен','манную','https://beget.prizmarket.online/image/test5f832c44eb478.jpg',0,'https://wa.me/77773333333',1602434552);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'175','#продаю','кашу','https://t.me/tester_podrobno/175','PZM',' #Россия','Огнеяр',1,'#услуги','фото','AgACAgIAAxkBAAIx8F-DOugOczNLkin_jcSP3g7-JKCkAAJurzEbfXcYSEWHuwyJWUImxW9TmC4AAwEAAwIAA3kAA_uSAQABGwQ','https://t.me/tester_podrobno/175','одобрен','манную','https://i.ibb.co/Hg8GLvB/file-106.jpg',0,'https://wa.me/77773333333',1602435229);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'176','#продаю','Налима','https://t.me/tester_podrobno/176','PZM',' #Россия','Огнеяр',1,'#услуги','фото','AgACAgIAAxkBAAIyBl-DSTHGEFXmt907MljmkoPq5HS0AAL2rjEbUOkhSCOcNqQ59aegsE_1lC4AAwEAAwIAA3gAAzGHBQABGwQ','https://t.me/tester_podrobno/176','одобрен','мясистого','https://i.ibb.co/6FdcBj5/file-107.jpg',0,'https://wa.me/77773333333',1602439327);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'177','#продаю','test','https://t.me/tester_podrobno/177','PZM',' #Россия','Огнеяр',0,'#услуги','фото','AgACAgIAAx0CUZN2QQABB0M8X4NN3aicqkSRpY3akrcHTEo1SyAAAjywMRu-WBlIaud1DxoiTbgdxA6YLgADAQADAgADeQADh6cBAAEbBA','https://t.me/tester_podrobno/177','одобрен','ytest','http://f0430377.xsph.ru/image/test5f834dc0b2fad.jpg',0,'https://wa.me/77773333333',1602440641);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'178','#продаю','testy','https://t.me/tester_podrobno/178','PZM',' #Россия','Огнеяр',0,'#услуги','фото','','https://t.me/tester_podrobno/178','одобрен','teeeeesssstttttyyyyy','http://beget.prizmarket.online/image/test5f835ec4d1b53.jpg',0,'https://wa.me/77773333333',1602444997);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'179','#продаю','testy7','https://t.me/tester_podrobno/179','PZM',' #Россия','Огнеяр',0,'#услуги','фото','','https://t.me/tester_podrobno/179','одобрен','tttttteeeeeeeeesssssstttttt','http://z95182mk.beget.tech/image/test5f83605dcde63.jpg',0,'https://wa.me/77773333333',1602445406);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'180','#продаю','Норм название','https://t.me/tester_podrobno/180','PZM',' #hhh','Огнеяр',0,'#услуги','фото','AgACAgIAAx0CUZN2QQABB0SFX4yTE39V4wABYUWkTSZREFrVMz3AAAIcsDEbjphgSMb8C-UIaQjPQAXZli4AAwEAAwIAA3kAA-aXAgABGwQ','https://t.me/tester_podrobno/180','одобрен','веро5впнснобсяыкоьлмолссооеннрпаапргерпипарриргрргмрппшппеннрпаапргерпипарриргрргмрппшппеннрпаапргерпипарриргрргмрппшппеннрпаапргерпипарриргрргмрппшппеннрпаапргерпипарриргрргмрппшппеннрпаапргерпипарриргрргмрппшппеннрпаапргерпипарриргрргмрппшппеннрпаапргерпипарриргрргмрппшппеннрпаапргерпипарриргрргмрппшппеннрпаапргерпипарриргрргмрппшпп','http://f0430377.xsph.ru/image/test5f8c91a7a9ba8.jpg',0,'https://wa.me/77773333333',1603826707);
INSERT INTO `avtozakaz_pzmarket` VALUES (1038937592,'181','#куплю','ддд','https://t.me/tester_podrobno/181','£ / PZM',' #Весь_мир #Россия #Ростов_на_Дону','@Ogneyar_ya',0,'#недвижимость','фото','AgACAgIAAxkBAAIyil-SrYDMoVqIo4VYOcad3qB1CMoAA4-uMRsIuJBI6GNcAAEa8ael5IQelS4AAwEAAwIAA3gAA2-tBQABGwQ','https://t.me/tester_podrobno/181','одобрен','гггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггггг','https://i.ibb.co/fvgnQG8/file-108.jpg',0,'https://t.me/check_user_infobot?start=1038937592',1603448222);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'184','#продаю','ЫЫЫЫЫЫЫЫа','https://t.me/tester_podrobno/184','Рубль / PZM / PZM',' #Россия #РостовНаДону','Огнеяр',0,'#услуги','фото','AgACAgIAAx0CUZN2QQABB0TZX5K4EAvomDmaGVmewejB26vljB0AAgyxMRu775FIbjM-NewI_vXua_uULgADAQADAgADeAADTRYGAAEbBA','https://t.me/tester_podrobno/184','одобрен','ЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫЫААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААААА','http://f0430377.xsph.ru/image/test5f92b6888af15.jpg',0,'https://wa.me/77773333333',1603450505);
INSERT INTO `avtozakaz_pzmarket` VALUES (7,'185','#продаю','www','https://t.me/tester_podrobno/185','Ваще пофиг какая',' #Россия #РостовНаДону','Огнеяр',1,'#услуги','фото','AgACAgIAAx0CUZN2QQABB0UCX5K8eXNFrletH3BVkwHRFDgKc6cAAgyxMRu775FIbjM-NewI_vXua_uULgADAQADAgADeAADTRYGAAEbBA','https://t.me/tester_podrobno/185','одобрен','ууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууууу','http://f0430377.xsph.ru/image/test5f92bc320486b.jpg',0,'https://wa.me/77773333333',1603451954);
UNLOCK TABLES;
/*!40000 ALTER TABLE `avtozakaz_pzmarket` ENABLE KEYS */;

--
-- Dumping data for table `avtozakaz_users`
--


/*!40000 ALTER TABLE `avtozakaz_users` DISABLE KEYS */;
LOCK TABLES `avtozakaz_users` WRITE;
INSERT INTO `avtozakaz_users` VALUES (298466355,'Otrad',NULL,'@Otrad_ya','admin');
INSERT INTO `avtozakaz_users` VALUES (276795315,'Rada',NULL,'@DJRADA','admin');
INSERT INTO `avtozakaz_users` VALUES (298466355,'Ѿрадъ(Отрадъ) рода Якълѣвы, сын Валерия и Sъвенирады','','@Otrad_Ya','admin');
INSERT INTO `avtozakaz_users` VALUES (276795315,'Родославия','','@DJRADA','client');
INSERT INTO `avtozakaz_users` VALUES (304710488,'Друг ™','','@PRIZMarket_admin','client');
INSERT INTO `avtozakaz_users` VALUES (351009636,'Тестер_Ботофф','','@Tester_Botoff','client');
INSERT INTO `avtozakaz_users` VALUES (1038937592,'Огнеяр','','@Ogneyar_ya','admin');
INSERT INTO `avtozakaz_users` VALUES (351009636,'Тестер_Ботофф','','@TesterBotoff','client');
UNLOCK TABLES;
/*!40000 ALTER TABLE `avtozakaz_users` ENABLE KEYS */;

--
-- Dumping data for table `chat_garant`
--


/*!40000 ALTER TABLE `chat_garant` DISABLE KEYS */;
LOCK TABLES `chat_garant` WRITE;
INSERT INTO `chat_garant` VALUES (41,1038937592,'@Ogneyar_ya',-1001328422724,'@rrttyyqq',-1001168996585);
UNLOCK TABLES;
/*!40000 ALTER TABLE `chat_garant` ENABLE KEYS */;

--
-- Dumping data for table `culc`
--


/*!40000 ALTER TABLE `culc` DISABLE KEYS */;
LOCK TABLES `culc` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `culc` ENABLE KEYS */;

--
-- Dumping data for table `garant_users`
--


/*!40000 ALTER TABLE `garant_users` DISABLE KEYS */;
LOCK TABLES `garant_users` WRITE;
INSERT INTO `garant_users` VALUES (351009636,'Огънеяръ','Ogneyar_ya','client',0);
INSERT INTO `garant_users` VALUES (1038937592,'Тестер_Ботофф','Tester_Botoff','client',0);
INSERT INTO `garant_users` VALUES (298466355,'Ѿрадъ(Отрадъ) рода Якълѣвы, сын Валерия и Sъвенирады','@Otrad_Ya','client',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `garant_users` ENABLE KEYS */;

--
-- Dumping data for table `info_users`
--


/*!40000 ALTER TABLE `info_users` DISABLE KEYS */;
LOCK TABLES `info_users` WRITE;
INSERT INTO `info_users` VALUES (351009636,'Огънеяръ','','@Ogneyar_ya','client');
INSERT INTO `info_users` VALUES (298466355,'Отрадъ','','@Otrad_ya','admin');
INSERT INTO `info_users` VALUES (276795315,'Родославия','','@DJRADA','admin');
INSERT INTO `info_users` VALUES (636897229,'Алексей','Лесных','@lessad108','client');
INSERT INTO `info_users` VALUES (818183895,'Димитрий','Ерошев','@Dimitry64','client');
INSERT INTO `info_users` VALUES (805988898,'Михаил','','@MikhailSpN','client');
INSERT INTO `info_users` VALUES (638966599,'Денис Сергеевич','Кулёмин','@ZCG89','client');
INSERT INTO `info_users` VALUES (927278299,'ТестерИнфоБота','','@Ne_wTest_Bot','client');
INSERT INTO `info_users` VALUES (304710488,'Друг ™','','@PRIZMarket_admin','client');
INSERT INTO `info_users` VALUES (1038937592,'Тестер_Ботофф','','@Gggyyydd','client');
INSERT INTO `info_users` VALUES (1038937592,'Тестер','Ботофф','@TesterBotoff','client');
INSERT INTO `info_users` VALUES (907728355,'PZMarket','','@Prizm_market_bot','client');
INSERT INTO `info_users` VALUES (298466355,'Ѿрадъ(Отрадъ) рода Якълѣвы, сын Валерия и Sъвенирады','','@Otrad_Ya','client');
INSERT INTO `info_users` VALUES (1052297281,'ТестерЗаказБота','','@TesterZakazBot','client');
INSERT INTO `info_users` VALUES (2556444,'Brommie🎄','⚡️Savor','@onelock','client');
INSERT INTO `info_users` VALUES (352226006,'Developmen','','@D_Mamadjonov','client');
INSERT INTO `info_users` VALUES (635793263,'Mirafzal','Shavkatov','@Mirafzal_Shavkatov','client');
INSERT INTO `info_users` VALUES (1038937592,'Тестер','Ботофф','@TesterBotoffZ','client');
INSERT INTO `info_users` VALUES (351009636,'Огънеяръ','\'','@Ogneyar_ya','client');
INSERT INTO `info_users` VALUES (351009636,'Огънеяръ','💲','@Ogneyar_ya','client');
INSERT INTO `info_users` VALUES (351009636,'Огънеяръ','💲i\'m niGGa💲','@Ogneyar_ya','client');
INSERT INTO `info_users` VALUES (1011417080,'ТестерАвтоЗаказБота','','@TesterAvtoZakazBot','client');
INSERT INTO `info_users` VALUES (1038937592,'Огнеяр','','@Ogneyar_ya','client');
INSERT INTO `info_users` VALUES (475440299,'Принимаем заказы PZM','','@Zakaz_prizm_bot','client');
INSERT INTO `info_users` VALUES (351009636,'Тестер_Ботофф','','@Tester_Botoff','client');
INSERT INTO `info_users` VALUES (351009636,'Тестер_Ботофф','','@TesterBotoff','client');
INSERT INTO `info_users` VALUES (1387434863,'Operator','InfoBot','@operbotinfo','client');
INSERT INTO `info_users` VALUES (93372553,'BotFather','','@BotFather','client');
INSERT INTO `info_users` VALUES (1224906863,'ХуторянинЪ (тест бот)','','@hutoryanin_test_bot','client');
UNLOCK TABLES;
/*!40000 ALTER TABLE `info_users` ENABLE KEYS */;

--
-- Dumping data for table `market_ojidanie`
--


/*!40000 ALTER TABLE `market_ojidanie` DISABLE KEYS */;
LOCK TABLES `market_ojidanie` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `market_ojidanie` ENABLE KEYS */;

--
-- Dumping data for table `obrabotka_zayavok`
--


/*!40000 ALTER TABLE `obrabotka_zayavok` DISABLE KEYS */;
LOCK TABLES `obrabotka_zayavok` WRITE;
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.250','куплю','PZM',8,'$',2,16,'ВТБ',0,-1001328422724,-1001168996585,'@Ogneyar_ya');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.252','куплю','PZM',8,'$',2,16,'ВТБ',0,-1001328422724,-1001168996585,'@Ogneyar_ya');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.254','куплю','PZM',8,'$',2,16,'ВТБ',0,-1001328422724,-1001168996585,'@Ogneyar_ya');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.257','куплю','PZM',8,'$',2,16,'ВТБ',0,-1001328422724,-1001168996585,'@Ogneyar_ya');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.266','куплю','PZM',8,'$',2,16,'ВТБ',0,-1001328422724,-1001168996585,'@Ogneyar_ya');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.269','куплю','PZM',8,'$',2,16,'ВТБ',0,-1001328422724,-1001168996585,'@Ogneyar_ya');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.274','куплю','PZM',8,'$',2,16,'ВТБ',1,-1001328422724,-1001168996585,'@Ogneyar_ya');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.277','продам','PZM',5,'$',6,30,'QIWI',1,-1001328422724,-1001168996585,'@Ogneyar_ya');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.282','продам','PZM',5,'$',6,30,'QIWI',0,-1001328422724,-1001168996585,'@Ogneyar_ya');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.288','продам','PZM',5,'$',6,30,'QIWI',1,-1001328422724,-1001168996585,'@Ogneyar_ya');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.290','продам','PZM',8,'₽',2,16,'Сбербанк',0,-1001328422724,-1001168996585,'@Ogneyar_ya');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.292','продам','PZM',8,'₽',2,16,'Сбербанк',1,-1001328422724,-1001168996585,'@TesterBotoff');
INSERT INTO `obrabotka_zayavok` VALUES (1038937592,'31.297','продам','PZM',9,'$',0.9,8.1,'Тинькофф, Сбербанк',1,-1001328422724,-1001168996585,'@TesterBotoff');
INSERT INTO `obrabotka_zayavok` VALUES (1038937592,'41.4257','продам','PZM',30,'₽',20,600,'Тинькофф',1,-357641416,-338869745,'@TesterBotoff');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.299','продам','PZM',2,'$',0.5,1,'Тинькофф, Альфа',1,-1001328422724,-1001168996585,'@Ogneyar_ya');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.301','продам','PZM',2,'$',0.5,1,'Тинькофф, Альфа',1,-1001328422724,-1001168996585,'@Ogneyar_ya');
INSERT INTO `obrabotka_zayavok` VALUES (351009636,'31.312','куплю','PZM',96,'₽',3,288,'Сбербанк',1,-1001328422724,-1001168996585,'@Ogneyar_ya');
UNLOCK TABLES;
/*!40000 ALTER TABLE `obrabotka_zayavok` ENABLE KEYS */;

--
-- Dumping data for table `pzmarkt`
--


/*!40000 ALTER TABLE `pzmarkt` DISABLE KEYS */;
LOCK TABLES `pzmarkt` WRITE;
INSERT INTO `pzmarkt` VALUES (143,'#для_дома_и_дачи','photo','AgACAgIAAx0CUZN2QQABBzrBX4KdDyTCkIaIEGLw3OdZVB6ONhkAAvCtMRsAAY0BStn_8VJxEyjbFG1MkS4AAwEAAwIAA3kAA5CdAwABGwQ','http://www.youtube.com/channel/UCXo_PcOU2E-ek-pbdDGUYLA','#продаю','Ложки для мёда','Рубль / PZM','#Россия #РостовНаДону','Огнеяр','✅ PRIZMarket доверяет❗️','https://t.me/tester_podrobno/143',1602395409);
INSERT INTO `pzmarkt` VALUES (173,'#услуги','photo','AgACAgIAAx0CUZN2QQABBz3cX4LL7tU0WKyZPFYso7zDp1nh9TgAAq-uMRttR5hL0SBajaZyM2zg4tqXLgADAQADAgADeAADgfMAAhsE','https://t.me/tester_podrobno/173','#продаю','Всё','PZM','№ппп','Огнеяр','0','https://t.me/tester_podrobno/173',1602407408);
INSERT INTO `pzmarkt` VALUES (174,'#услуги','photo','AgACAgIAAx0CUZN2QQABB0HGX4M3wI_tlGMRG5tK1MBOwtYdwiIAAv2uMRuX9RhIR8RvQGnfN7OyGcqXLgADAQADAgADeAADdngBAAEbBA','https://t.me/tester_podrobno/174','#продаю','Крупу','PZM',' #Россия #РостовНаДону','Огнеяр','0','https://t.me/tester_podrobno/174',1602435010);
INSERT INTO `pzmarkt` VALUES (175,'#услуги','photo','AgACAgIAAx0CUZN2QQABB0IYX4M8c6B394jBx-2zH2Mx9guVrXEAAm6vMRt9dxhIVFnYC9GEOE7Fb1OYLgADAQADAgADeQAD-5IBAAEbBA','https://t.me/tester_podrobno/175','#продаю','кашу','PZM',' #Россия','Огнеяр','✅ PRIZMarket доверяет❗️','https://t.me/tester_podrobno/175',1602436213);
INSERT INTO `pzmarkt` VALUES (176,'#услуги','photo','AgACAgIAAx0CUZN2QQABB0MKX4NKgnwTt4UzrbcGwIKxYWfDpSQAAvauMRtQ6SFI3S9Macm1MTewT_WULgADAQADAgADeAADMYcFAAEbBA','https://t.me/tester_podrobno/176','#продаю','Налима','PZM',' #Россия','Огнеяр','✅ PRIZMarket доверяет❗️','https://t.me/tester_podrobno/176',1602439811);
INSERT INTO `pzmarkt` VALUES (177,'#услуги','photo','AgACAgIAAx0CUZN2QQABB0NXX4NPM1LJ2iJ4nrlaOjyCMHiWxR8AAjywMRu-WBlIf71yCC0y4GMdxA6YLgADAQADAgADeQADh6cBAAEbBA','https://t.me/tester_podrobno/177','#продаю','test','PZM',' #Россия','Огнеяр','0','https://t.me/tester_podrobno/177',1602441013);
INSERT INTO `pzmarkt` VALUES (181,'#недвижимость','photo','AgACAgIAAx0CUZN2QQABB0TMX5KwsfdIoA0NV5JfqqYZ1iKy9y4AAo-uMRsIuJBIJaa2mUzQdCTkhB6VLgADAQADAgADeAADb60FAAEbBA','https://t.me/tester_podrobno/181','#куплю','ддд','£ / PZM',' #Весь_мир #Россия #Ростов_на_Дону','@Ogneyar_ya','0','https://t.me/tester_podrobno/181',1603449010);
INSERT INTO `pzmarkt` VALUES (184,'#услуги','photo','AgACAgIAAx0CUZN2QQABB0TlX5K6xpHJMNH6xojL-FwkqPOZl10AAgyxMRu775FIpPAvD5Pc8ETua_uULgADAQADAgADeAADTRYGAAEbBA','https://t.me/tester_podrobno/184','#продаю','ЫЫЫЫЫЫЫЫа','Рубль / PZM / PZM',' #Россия #РостовНаДону','Огнеяр','0','https://t.me/tester_podrobno/184',1603451592);
INSERT INTO `pzmarkt` VALUES (185,'#услуги','photo','AgACAgIAAx0CUZN2QQABB0UsX5K-w37-rTgqfM_e-P6YPBhaMr0AAgyxMRu775FIpPAvD5Pc8ETua_uULgADAQADAgADeAADTRYGAAEbBA','https://t.me/tester_podrobno/185','#продаю','www','Ваще пофиг какая',' #Россия #РостовНаДону','Огнеяр','✅ PRIZMarket доверяет❗️','https://t.me/tester_podrobno/185',1603452613);
INSERT INTO `pzmarkt` VALUES (180,'#услуги','photo','AgACAgIAAx0CUZN2QQABB1r7X5ibdc1mf5sSbSICwy0xTszzzHkAAhywMRuOmGBIUry1t6AJ5UhABdmWLgADAQADAgADeQAD5pcCAAEbBA','https://t.me/tester_podrobno/180','#продаю','Норм название','PZM',' #hhh','Огнеяр','0','https://t.me/tester_podrobno/180',1603836791);
INSERT INTO `pzmarkt` VALUES (155,'#продукты_питания','photo','AgACAgIAAx0CUZN2QQABB1r8X5ibfQl19EuQVp9OvbwcKq9lhvMAAqOtMRvnfCFKTmIv8yuPxs2Yu8IPAAQBAAMCAAN5AAMwKwcAARsE','https://t.me/tester_podrobno/155','#продаю','Кодобок','PZM','#Россия','Тестер','0','https://t.me/tester_podrobno/155',1603836799);
UNLOCK TABLES;
/*!40000 ALTER TABLE `pzmarkt` ENABLE KEYS */;

--
-- Dumping data for table `site_users`
--


/*!40000 ALTER TABLE `site_users` DISABLE KEYS */;
LOCK TABLES `site_users` WRITE;
INSERT INTO `site_users` VALUES ('Огнеяр','1111','ya13th@mail.ru','true',1586521015,'WhatsApp','+77773333333','777');
INSERT INTO `site_users` VALUES ('Тестер','1111','ogneyar-ne@ya.ru','true',1587039828,'Telegram','@Tester_Botoff','999');
INSERT INTO `site_users` VALUES ('Otrad_ya','Zvjvjnj2112','Otrad7ya@gmail.com','true',1588792939,'WhatsApp','+79001250652','888');
INSERT INTO `site_users` VALUES ('ДлинныйЛогин','1111','prizmarkt@ya.ru','true',1589477284,'Telegram','@TesterBotoff','5ebd7fa4e8e78');
INSERT INTO `site_users` VALUES ('Логин','54922','Rodoslavia@yandex.ru','true',1589651918,'Telegram','@DJRADA','5ec029ceec5a5');
INSERT INTO `site_users` VALUES ('','','','null',1590080887,'null','null','5ec6b577d1a96');
INSERT INTO `site_users` VALUES ('ККККККККК','1111','yaya13th@yandex.ru','null',1590393178,'null','null','5ecb795adc5d4');
INSERT INTO `site_users` VALUES ('','','','null',1590580979,'null','null','5ece56f3d3310');
INSERT INTO `site_users` VALUES ('','','','null',1590652016,'null','null','5ecf6c70c44a4');
UNLOCK TABLES;
/*!40000 ALTER TABLE `site_users` ENABLE KEYS */;

--
-- Dumping data for table `users`
--


/*!40000 ALTER TABLE `users` DISABLE KEYS */;
LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (2,298466355,'Otrad','admin',0);
INSERT INTO `users` VALUES (3,1038937592,'ТестерБотофф','admin',0);
INSERT INTO `users` VALUES (4,821333082,'Дока','client',0);
INSERT INTO `users` VALUES (5,304710488,'Друг ™','admin',0);
INSERT INTO `users` VALUES (6,940466581,'Лихогоръ','client',0);
INSERT INTO `users` VALUES (7,776092033,'Огънерада','client',0);
INSERT INTO `users` VALUES (8,276795315,'Родославия','client',0);
INSERT INTO `users` VALUES (8,351009636,'Тестер_Ботофф\'','client',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

--
-- Dumping data for table `variables`
--


/*!40000 ALTER TABLE `variables` DISABLE KEYS */;
LOCK TABLES `variables` WRITE;
INSERT INTO `variables` VALUES (983003157,'курс PZM','0.0077','USD',1599046937);
INSERT INTO `variables` VALUES (983003157,'курс PZM','0.57','RUB',1599046937);
INSERT INTO `variables` VALUES (983003157,'курс РКАЦ','5','RUB',1587233370);
INSERT INTO `variables` VALUES (11,'событие','1200','номер последнего события',0);
INSERT INTO `variables` VALUES (0,'курс PZM','0.0227','USD',1589864405);
INSERT INTO `variables` VALUES (0,'курс PZM','1.65','RUB',1589864405);
INSERT INTO `variables` VALUES (8,'таймер','старт','таймер запущен',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `variables` ENABLE KEYS */;

--
-- Dumping data for table `vk_url`
--


/*!40000 ALTER TABLE `vk_url` DISABLE KEYS */;
LOCK TABLES `vk_url` WRITE;
INSERT INTO `vk_url` VALUES (143,'https://sun9-18.userapi.com/c857636/v857636854/1fca99/jsq1Xz7BSjE.jpg','https://vk.com/photo-190150616_457239046','photo-190150616_457239046');
INSERT INTO `vk_url` VALUES (150,'https://sun9-29.userapi.com/c206716/v206716761/13077b/s9pYcwnhi3M.jpg','https://vk.com/photo-190150616_457239047','photo-190150616_457239047');
INSERT INTO `vk_url` VALUES (127,'https://sun9-19.userapi.com/c813024/v813024989/c9fa8/cQMYVRd_L78.jpg','https://vk.com/photo-190150616_457239048','photo-190150616_457239048');
INSERT INTO `vk_url` VALUES (96,'https://sun9-9.userapi.com/c858232/v858232035/20a0d1/YmboH1K468Q.jpg','https://vk.com/photo-190150616_457239049','photo-190150616_457239049');
INSERT INTO `vk_url` VALUES (165,'https://sun9-38.userapi.com/c858520/v858520029/1b067b/Swt4IqDX0oQ.jpg','https://vk.com/photo-190150616_457239051','photo-190150616_457239051');
INSERT INTO `vk_url` VALUES (144,'https://sun9-46.userapi.com/Lo2MNxP-fik5bgkHHqjpkItfvUreV5WTCzGfCw/wuaSc7NWgEM.jpg','https://vk.com/photo-190150616_457239057','photo-190150616_457239057');
INSERT INTO `vk_url` VALUES (95,'https://sun9-76.userapi.com/qy4KRZ_6Iv0dU8EQZ-09d2rx-QpF9CcXi9Q4jQ/giVQASh7wZE.jpg','https://vk.com/photo-190150616_457239058','photo-190150616_457239058');
INSERT INTO `vk_url` VALUES (111,'https://sun9-76.userapi.com/qy4KRZ_6Iv0dU8EQZ-09d2rx-QpF9CcXi9Q4jQ/giVQASh7wZE.jpg','https://vk.com/photo-190150616_457239059','photo-190150616_457239059');
INSERT INTO `vk_url` VALUES (169,'https://sun9-33.userapi.com/7QRNwqEPWFL-d8atJCceIUGfr5P0xyRyQGucqw/JOzhnRZfAd4.jpg','https://vk.com/photo-190150616_457239060','photo-190150616_457239060');
INSERT INTO `vk_url` VALUES (170,'https://sun9-48.userapi.com/930yJ3I4Y4hUVhrBGhgidoJEUn2pS7PL67kNlA/nrE3uoLR9L0.jpg','https://vk.com/photo-190150616_457239061','photo-190150616_457239061');
INSERT INTO `vk_url` VALUES (173,'https://sun9-33.userapi.com/5Dx73UsBwBiBLwhh-0vqTafgH4rVFxZXhVClCA/gWTtX_3YKu0.jpg','https://vk.com/photo-190150616_457239062','photo-190150616_457239062');
INSERT INTO `vk_url` VALUES (174,'','https://vk.com/photo_','photo_');
INSERT INTO `vk_url` VALUES (175,'https://sun9-34.userapi.com/YKdf3JdgMdvzDJivlCY9Ap6nDRZlHbRJ084Axg/6VcPGRIoTLo.jpg','https://vk.com/photo-190150616_457239063','photo-190150616_457239063');
INSERT INTO `vk_url` VALUES (176,'https://sun9-69.userapi.com/jz3xtNQSGzWx96d3urEKF1_1RC8oyIDO7LYbhA/Mh-2S4Jy_SM.jpg','https://vk.com/photo-190150616_457239064','photo-190150616_457239064');
INSERT INTO `vk_url` VALUES (177,'https://sun9-16.userapi.com/emDxgPpZbp1buSlGt1PmanRQidn_yd-KDIHxHg/7kKn3aWtGuE.jpg','https://vk.com/photo-190150616_457239065','photo-190150616_457239065');
INSERT INTO `vk_url` VALUES (178,'','https://vk.com/photo_','photo_');
INSERT INTO `vk_url` VALUES (179,'','https://vk.com/photo_','photo_');
INSERT INTO `vk_url` VALUES (180,'https://sun9-9.userapi.com/o9IrHR40QEVZnR_-DVYZxvTtxCpHiPNC4zFDUw/nO8Yh3-o25k.jpg','https://vk.com/photo-190150616_457239066','photo-190150616_457239066');
INSERT INTO `vk_url` VALUES (181,'https://sun9-59.userapi.com/YT13voUa9UvxDLq7kR8FYgsam4zsdoVrfWqIYQ/2dGXcr6llik.jpg','https://vk.com/photo-190150616_457239067','photo-190150616_457239067');
INSERT INTO `vk_url` VALUES (184,'https://sun9-21.userapi.com/EXN-4BzgfX70irULnB1dpWMnt2m7H_ZKIUQ83g/04nKIga1a3s.jpg','https://vk.com/photo-190150616_457239068','photo-190150616_457239068');
INSERT INTO `vk_url` VALUES (185,'https://sun9-21.userapi.com/EXN-4BzgfX70irULnB1dpWMnt2m7H_ZKIUQ83g/04nKIga1a3s.jpg','https://vk.com/photo-190150616_457239069','photo-190150616_457239069');
INSERT INTO `vk_url` VALUES (156,'https://sun9-5.userapi.com/iP1QQRQp7-u-RxUr-ly3xwNBxexedWqT0XVr8Q/PzqVDStS2os.jpg','https://vk.com/photo-190150616_457239070','photo-190150616_457239070');
INSERT INTO `vk_url` VALUES (155,'https://sun9-67.userapi.com/Jev570xMAssE2M24cyzr0wHoN3FeysPO7zNLFA/Hk1lUqfgtsA.jpg','https://vk.com/photo-190150616_457239071','photo-190150616_457239071');
UNLOCK TABLES;
/*!40000 ALTER TABLE `vk_url` ENABLE KEYS */;

--
-- Dumping data for table `zakaz_message`
--


/*!40000 ALTER TABLE `zakaz_message` DISABLE KEYS */;
LOCK TABLES `zakaz_message` WRITE;
INSERT INTO `zakaz_message` VALUES (1038937592,2448,2978,1589143700,1);
INSERT INTO `zakaz_message` VALUES (1038937592,2453,2980,1589143740,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `zakaz_message` ENABLE KEYS */;

--
-- Dumping data for table `zakaz_users`
--


/*!40000 ALTER TABLE `zakaz_users` DISABLE KEYS */;
LOCK TABLES `zakaz_users` WRITE;
INSERT INTO `zakaz_users` VALUES (298466355,'Ѿрадъ(Отрадъ) рода Якълѣвы, сын Валерия и Sъвенирады','','@Otrad_Ya','admin');
INSERT INTO `zakaz_users` VALUES (276795315,'Родославия','','@DJRADA','admin');
INSERT INTO `zakaz_users` VALUES (304710488,'Друг ™','','@PRIZMarket_admin','client');
INSERT INTO `zakaz_users` VALUES (901072981,'Ѿрадъ','','','client');
INSERT INTO `zakaz_users` VALUES (1038937592,'Огнеяр','','@Ogneyar_ya','client');
INSERT INTO `zakaz_users` VALUES (351009636,'Тестер_Ботофф','','@Tester_Botoff','client');
UNLOCK TABLES;
/*!40000 ALTER TABLE `zakaz_users` ENABLE KEYS */;

--
-- Dumping data for table `zayavka`
--


/*!40000 ALTER TABLE `zayavka` DISABLE KEYS */;
LOCK TABLES `zayavka` WRITE;
INSERT INTO `zayavka` VALUES (351009636,4695,'куплю','PZM',96,'₽',3,288,'Сбербанк',0);
INSERT INTO `zayavka` VALUES (1038937592,4916,'продам','PZM',23,'₽',9,207,'Сбербанк',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `zayavka` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

