/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspm1d02b
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspm1d02b` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspm1d02b`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614338567476 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1614337625011,'2021-02-26 19:07:04',1614337294646,'北京市东城区天坛街道东半壁街中欣大厦','李东平','17703786969','否'),(1614337680840,'2021-02-26 19:08:00',1614337294646,'河南省安阳市内黄县亳城镇裴村','李二','17703789999','是'),(1614338567475,'2021-02-26 19:22:47',1614338210814,'河南省郑州市二七区解放路街道二七路17号','地址1','17708888888','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614338688162 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1614338678966,'2021-02-26 19:24:38','shangpinxinxi',1614338210814,1614337035457,'葡萄','http://localhost:8080/jspm1d02b/upload/1614337008046.jpg',2,60,55),(1614338688161,'2021-02-26 19:24:47','shangpinxinxi',1614338210814,1614337100098,'西红柿','http://localhost:8080/jspm1d02b/upload/1614337082760.jfif',2,90,80);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspm1d02b/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm1d02b/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm1d02b/upload/picture3.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-02-26 22:39:58','新闻标题1','http://localhost:8080/jspm1d02b/upload/news_picture1.jpg','内容1'),(82,'2021-02-26 22:39:58','新闻标题2','http://localhost:8080/jspm1d02b/upload/news_picture2.jpg','内容2'),(83,'2021-02-26 22:39:58','新闻标题3','http://localhost:8080/jspm1d02b/upload/news_picture3.jpg','内容3'),(84,'2021-02-26 22:39:58','新闻标题4','http://localhost:8080/jspm1d02b/upload/news_picture4.jpg','内容4'),(85,'2021-02-26 22:39:58','新闻标题5','http://localhost:8080/jspm1d02b/upload/news_picture5.jpg','内容5'),(86,'2021-02-26 22:39:58','新闻标题6','http://localhost:8080/jspm1d02b/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614338587140 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1614337713501,'2021-02-26 19:08:33','20212261983319825868','shangpinxinxi',1614337294646,1614336717241,'黄瓜','http://localhost:8080/jspm1d02b/upload/1614336688889.jfif',2,100,20,200,40,1,'已完成','北京市东城区天坛街道东半壁街中欣大厦'),(1614337744827,'2021-02-26 19:09:04','2021226199436442327','shangpinxinxi',1614337294646,1614336717241,'黄瓜','http://localhost:8080/jspm1d02b/upload/1614336688889.jfif',2,100,20,200,40,1,'已退款','北京市东城区天坛街道东半壁街中欣大厦'),(1614338587139,'2021-02-26 19:23:06','20212261923631067247','shangpinxinxi',1614338210814,1614336854121,'哈密瓜','http://localhost:8080/jspm1d02b/upload/1614336864370.jfif',2,30,23,60,46,1,'已完成','河南省郑州市二七区解放路街道二七路17号');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614338245544 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-02-26 22:39:58','商品分类1'),(22,'2021-02-26 22:39:58','商品分类2'),(23,'2021-02-26 22:39:58','商品分类3'),(24,'2021-02-26 22:39:58','商品分类4'),(25,'2021-02-26 22:39:58','商品分类5'),(26,'2021-02-26 22:39:58','商品分类6'),(1614338245543,'2021-02-26 19:17:25','商品分类87');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '原价',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `jifen` float DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '是否上架(1:上架,2:下架)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614338386934 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`discountprice`,`jifen`,`flag`) values (1614336717241,'2021-02-26 18:51:56','1614336401','黄瓜','商品分类1','130','北京牌','大','这是很好的黄瓜,北京产的\r\n','http://localhost:8080/jspm1d02b/upload/1614336688889.jfif','2021-02-26 19:22:05',9,100,20,20,1),(1614336781855,'2021-02-26 18:53:00','1614336724','圣女果','商品分类2','100','上海圣女果','大','圣女果昨天刚到的  很新鲜\r\n','http://localhost:8080/jspm1d02b/upload/1614336755262.jfif',NULL,0,30,22,22,1),(1614336854121,'2021-02-26 18:54:13','1614336787','哈密瓜','商品分类2','1','新疆哈密瓜','大','新疆哈密瓜  贼甜\r\n','http://localhost:8080/jspm1d02b/upload/1614336864370.jfif','2021-02-26 19:25:22',6,30,23,23,1),(1614336967932,'2021-02-26 18:56:07','1614336869','苹果','商品分类4','30','富士苹果','大','<img src=\"http://localhost:8080/jspm1d02b/upload/1614336937751.jfif\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm1d02b/upload/1614336937751.jfif\">\r\n\r\n\r\n富士山的苹果 正好是旺季  又甜又面\r\n','http://localhost:8080/jspm1d02b/upload/1614336918581.jfif',NULL,0,60,53,53,1),(1614337035457,'2021-02-26 18:57:14','1614336971','葡萄','商品分类3','90','普通葡萄','大','好葡萄\r\n','http://localhost:8080/jspm1d02b/upload/1614337008046.jpg','2021-02-26 19:24:36',1,60,55,55,1),(1614337100098,'2021-02-26 18:58:19','1614337039','西红柿','商品分类4','702','大西红柿','大','西红柿内容\r\n','http://localhost:8080/jspm1d02b/upload/1614337082760.jfif','2021-02-26 19:24:45',1,90,80,80,1),(1614337168828,'2021-02-26 18:59:28','1614337116','草莓','商品分类3','100','小草莓','小','萨达萨达撒多萨达打萨达啊\r\n','http://localhost:8080/jspm1d02b/upload/1614337150581.jfif',NULL,0,20,10,10,1),(1614338386933,'2021-02-26 19:19:45','1614338259','车厘子','商品分类87','90','国产车厘子','中','车厘子详情\r\n\r\n\r\n<img src=\"http://localhost:8080/jspm1d02b/upload/1614338376241.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm1d02b/upload/1614338376241.jpg\">\r\n','http://localhost:8080/jspm1d02b/upload/1614338351596.jpg','2021-02-26 19:21:18',2,30,20,20,1);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614338704078 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1614328492680,'2021-02-26 16:34:51',1614257015238,1614303786176,'shangpinxinxi','牛奶','http://localhost:8080/jspm1d02b/upload/1614303745608.jpg'),(1614338704077,'2021-02-26 19:25:03',1614338210814,1614336854121,'shangpinxinxi','哈密瓜','http://localhost:8080/jspm1d02b/upload/1614336864370.jfif');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','zw4mskw8enlyg69xrurl0ftix4f4fs3h','2021-01-25 10:11:10','2021-02-26 20:15:52'),(2,1614257015238,'a3','yonghu','用户','kspy8s5a7z4yqfsrbrtvw6swc1zzl9r5','2021-02-25 20:44:17','2021-02-26 18:51:19'),(3,1614337294646,'aa1','yonghu','用户','ue3jr8jx8t5m9nym4ci7whkr8sdhm6q3','2021-02-26 19:01:45','2021-02-26 20:01:45'),(4,1614338210814,'aa2','yonghu','用户','a31yyymfteehilnd6kt06z5ysqnmxvea','2021-02-26 19:20:14','2021-02-26 20:20:15');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-01-08 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  `jifen` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614338210815 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`,`jifen`) values (1614338210814,'2021-02-26 19:16:50','aa2','aa2','aa2','男','17703786996','773890001@qq.com',954,46);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
