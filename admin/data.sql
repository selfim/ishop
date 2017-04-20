CREATE database if not EXISTS ishop charset=utf8;
USE `ishop`
----admin
DROP TABLE IF EXISTS `oky_admin`;
CREATE TABLE `oky_admin`(
`id` tinyint unsigned auto_increment KEY ,
`username` VARCHAR(20) NOT NULL UNIQUE ,
`password` CHAR(32) NOT NULL ,
`email` VARCHAR(50) not NULL
)engine=innodb DEFAULT charset=utf8;

---cate
DROP TABLE IF EXISTS `oky_cate`;
CREATE TABLE `oky_cate`(
`id` SMALLINT unsigned auto_increment KEY ,
`pid` SMALLINT unsigned NOT NULL DEFAULT 0,
`name` VARCHAR(20) NOT NULL UNIQUE
)engine=innodb DEFAULT charset=utf8;

DROP TABLE IF EXISTS `oky_pro`;
CREATE TABLE `oky_pro`(
`id` INT unsigned auto_increment KEY ,
`pname` VARCHAR(50) NOT NULL UNIQUE ,
`psn` VARCHAR(50) NOT NULL ,
`mprice` DECIMAL(10,2) NOT NULL ,
`ipric` DECIMAL(10,2) not NULL ,
`pdesc` text,
`pimg` VARCHAR(50) not NULL ,
`pubtime` INT unsigned NOT NULL ,
`isshow` tinyint(1) DEFAULT 1,
`ishot` tinyint(1) DEFAULT 0,
`cid` SMALLINT unsigned not NULL
)engine=innodb DEFAULT charset=utf8;

---user
DROP TABLE if EXISTS `oky_user`;
CREATE TABLE `oky_user`(
`id` tinyint unsigned auto_increment KEY ,
`username` VARCHAR(20) NOT NULL UNIQUE ,
`password` CHAR(32) NOT NULL ,
`sex` enum('男','女','保密') NOT NULL DEFAULT '保密',
`face` VARCHAR(50) NOT  NULL ,
`regtime` INT unsigned NOT NULL

)engine=innodb DEFAULT charset=utf8;

---album
DROP TABLE if EXISTS `oky_album`;
CREATE TABLE `oky_album`(
`id` int unsigned auto_increment key,
`pid` int unsigned not NULL ,
`path` VARCHAR(50) NOT NULL
)engine=innodb DEFAULT charset=utf8;




