CREATE DATABASE `stock_manager` ;
USE `stock_manager`;

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL auto_increment,
  `goodsname` varchar(50) NOT NULL,
  `goodsstyle` varchar(50) NOT NULL,
  `goodsnumber` int(11) NOT NULL,
  `storageID` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
insert  into `goods`(`id`,`goodsname`,`goodsstyle`,`goodsnumber`,`storageID`) values (1,'农夫山泉','矿泉水',10,1),(4,'冰峰','饮料',5,2),(6,'百事可乐','饮料',20,2);


DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `id` int(11) NOT NULL auto_increment,
  `storagename` varchar(50) NOT NULL,
  `storagestyle` varchar(50) NOT NULL,
  `storageID` int(11) NOT NULL,
  PRIMARY KEY  (`id`,`storageID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
insert  into `storage`(`id`,`storagename`,`storagestyle`,`storageID`) values (1,'日常用品','存货',1),(2,'饮品副食','存货',3),(3,'电子电器','出货',2);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `userpwd` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;                                     
insert  into `users`(`id`,`username`,`userpwd`,`flag`) values (1,'admin','123',2),(2,'java','123',1),(3,'finding','123',1);
