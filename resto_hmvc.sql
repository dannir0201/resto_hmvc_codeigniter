# Host: localhost  (Version 5.5.5-10.1.38-MariaDB)
# Date: 2020-07-04 17:08:59
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "history"
#

CREATE TABLE `history` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "history"
#


#
# Structure for table "meja"
#

CREATE TABLE `meja` (
  `MeId` int(11) NOT NULL AUTO_INCREMENT,
  `MeNama` varchar(255) DEFAULT NULL,
  `MeStatus` int(1) DEFAULT NULL,
  PRIMARY KEY (`MeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "meja"
#

INSERT INTO `meja` VALUES (1,'Meja 1',NULL),(2,'Meja 2',NULL),(3,'Meja 3',NULL),(4,'Meja 4',NULL),(5,'Meja 5',NULL),(6,'Meja 6',NULL);

#
# Structure for table "produk"
#

CREATE TABLE `produk` (
  `PrId` int(11) NOT NULL AUTO_INCREMENT,
  `PrNama` varchar(255) DEFAULT NULL,
  `PrJenis` int(1) DEFAULT NULL,
  `PrGambar` varchar(255) DEFAULT NULL,
  `PrHarga` decimal(12,2) NOT NULL DEFAULT '0.00',
  `PrStatus` int(1) DEFAULT NULL,
  PRIMARY KEY (`PrId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

#
# Data for table "produk"
#

INSERT INTO `produk` VALUES (1,'Mie Baso Cincang Pedas',1,'cinpes.jpg',12000.00,1),(2,'Mie Baso Cincang Biasa',1,'cin.jpg',10000.00,1),(3,'Mie Baso Urat Pedas',1,'urpes.jpg',12000.00,1),(4,'Mie Baso Urat Biasa',1,'ur.jpg',10000.00,0),(5,'Mie Baso Telor Pedas',1,'telpes.jpg',12000.00,0),(6,'Mie Baso Telor Biasa',1,'tel.jpg',10000.00,1),(7,'Juice Jeruk',2,'jer.jpg',5000.00,1),(8,'Juice Alpukat',2,'al.jpg',5000.00,1),(9,'Juice Mangga',2,'mang.jpg',5000.00,1),(10,'Juice Strawberry',2,'str.jpg',5000.00,0),(11,'Juice Lecy',2,'lec.jpg',5000.00,0),(12,'Juice Durian',2,'dur.jpg',5000.00,1);

#
# Structure for table "transaksi"
#

CREATE TABLE `transaksi` (
  `TrxId` varchar(255) NOT NULL DEFAULT '',
  `TrxMejaId` int(11) DEFAULT NULL,
  `TrxTotal` decimal(12,2) DEFAULT NULL,
  `TrxBayar` decimal(12,2) DEFAULT NULL,
  `TrxWaiterId` int(11) DEFAULT NULL,
  `TrxCashierId` int(11) DEFAULT NULL,
  `TrxStatus` int(1) DEFAULT NULL,
  `TrxTanggal` date DEFAULT NULL,
  `TrxWaktu` time DEFAULT NULL,
  PRIMARY KEY (`TrxId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "transaksi"
#


#
# Structure for table "transaksi_detail"
#

CREATE TABLE `transaksi_detail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TrxId` varchar(255) DEFAULT NULL,
  `TrxNama` varchar(255) DEFAULT NULL,
  `TrxHarga` decimal(12,2) DEFAULT NULL,
  `TrxQuantity` int(11) DEFAULT NULL,
  `TrxCatatan` mediumtext,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "transaksi_detail"
#


#
# Structure for table "user"
#

CREATE TABLE `user` (
  `UsId` int(11) NOT NULL AUTO_INCREMENT,
  `UsUsername` varchar(255) DEFAULT NULL,
  `UsPassword` varchar(255) DEFAULT NULL,
  `UsNama` varchar(255) DEFAULT NULL,
  `UsAkses` int(1) DEFAULT NULL,
  PRIMARY KEY (`UsId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'cashier001','e10adc3949ba59abbe56e057f20f883e','Danni Ramdan',1),(2,'waiter001','e10adc3949ba59abbe56e057f20f883e','Redi Ardiansah',2);
