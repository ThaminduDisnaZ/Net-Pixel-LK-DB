-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.31 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for selling
CREATE DATABASE IF NOT EXISTS `selling` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `selling`;

-- Dumping structure for table selling.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.admin: ~1 rows (approximately)
INSERT INTO `admin` (`admin_id`, `fname`, `lname`, `email`, `password`) VALUES
	(2, 'Thamindu', 'Disna', 'thamindudisna121@gmail.com', '12345');

-- Dumping structure for table selling.banner
CREATE TABLE IF NOT EXISTS `banner` (
  `banner_id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(945) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `banner_type_id` int NOT NULL,
  `b_id` int NOT NULL,
  PRIMARY KEY (`banner_id`),
  KEY `fk_banner_banner_type1_idx` (`banner_type_id`),
  CONSTRAINT `fk_banner_banner_type1` FOREIGN KEY (`banner_type_id`) REFERENCES `banner_type` (`banner_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.banner: ~18 rows (approximately)
INSERT INTO `banner` (`banner_id`, `path`, `banner_type_id`, `b_id`) VALUES
	(77, './resource/banner/Main Banner__6660a71eca864.jpeg', 1, 0),
	(78, './resource/banner/Main Banner__6660a71ed0004.jpeg', 1, 1),
	(79, './resource/banner/Main Banner__6660a71edb053.jpeg', 1, 2),
	(80, './resource/banner/Main Banner__6660a72cc7dc5.jpeg', 2, 0),
	(81, './resource/banner/Main Banner__6660a72cd042c.jpeg', 2, 1),
	(82, './resource/banner/Main Banner__6660a72cd841b.jpeg', 2, 2),
	(83, './resource/banner/Main Banner__6660a735d0686.jpeg', 3, 0),
	(84, './resource/banner/Main Banner__6660a735d5aad.jpeg', 3, 1),
	(85, './resource/banner/Main Banner__6660a735db415.jpeg', 3, 2),
	(89, './resource/banner/Main Banner__6660a746a4ee1.jpeg', 4, 0),
	(90, './resource/banner/Main Banner__6660a746a8623.jpeg', 4, 1),
	(91, './resource/banner/Main Banner__6660a746ad0c9.jpeg', 4, 2),
	(92, './resource/banner/Main Banner__6660a74e1d5b1.jpeg', 5, 0),
	(93, './resource/banner/Main Banner__6660a74e4286d.jpeg', 5, 1),
	(94, './resource/banner/Main Banner__6660a74e4b6b1.jpeg', 5, 2),
	(95, './resource/banner/Main Banner__6660a7575bf97.jpeg', 6, 0),
	(96, './resource/banner/Main Banner__6660a75763fa6.jpeg', 6, 1),
	(97, './resource/banner/Main Banner__6660a7576c459.jpeg', 6, 2);

-- Dumping structure for table selling.banner_type
CREATE TABLE IF NOT EXISTS `banner_type` (
  `banner_type_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`banner_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.banner_type: ~6 rows (approximately)
INSERT INTO `banner_type` (`banner_type_id`, `type`) VALUES
	(1, 'Main Banner'),
	(2, 'Main Banner LEFT'),
	(3, 'Banner'),
	(4, 'CENTER'),
	(5, 'SALE'),
	(6, 'LAST');

-- Dumping structure for table selling.bestsell
CREATE TABLE IF NOT EXISTS `bestsell` (
  `bestsell_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`bestsell_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.bestsell: ~2 rows (approximately)
INSERT INTO `bestsell` (`bestsell_id`, `status`) VALUES
	(1, 'Active'),
	(2, 'Inactive');

-- Dumping structure for table selling.brand
CREATE TABLE IF NOT EXISTS `brand` (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.brand: ~0 rows (approximately)
INSERT INTO `brand` (`brand_id`, `brand`) VALUES
	(7, 'ASUS');

-- Dumping structure for table selling.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `qty` varchar(45) DEFAULT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart_product1_idx` (`product_id`),
  KEY `fk_cart_user1_idx` (`user_id`),
  CONSTRAINT `fk_cart_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_cart_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.cart: ~2 rows (approximately)
INSERT INTO `cart` (`id`, `qty`, `product_id`, `user_id`) VALUES
	(56, '7', 28213118, 48210051),
	(61, '1', 28213118, 1);

-- Dumping structure for table selling.category
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.category: ~0 rows (approximately)
INSERT INTO `category` (`category_id`, `category`) VALUES
	(7, 'Gaming');

-- Dumping structure for table selling.city
CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.city: ~1 rows (approximately)
INSERT INTO `city` (`city_id`, `name`) VALUES
	(5, 'Gampaha'),
	(6, 'Colombo');

-- Dumping structure for table selling.cpu
CREATE TABLE IF NOT EXISTS `cpu` (
  `cpu_id` int NOT NULL AUTO_INCREMENT,
  `cpu` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`cpu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.cpu: ~0 rows (approximately)
INSERT INTO `cpu` (`cpu_id`, `cpu`) VALUES
	(8, 'AMD Ryzen 7 6800H');

-- Dumping structure for table selling.discode
CREATE TABLE IF NOT EXISTS `discode` (
  `discode_id` int NOT NULL AUTO_INCREMENT,
  `dis` varchar(45) NOT NULL,
  `code` varchar(145) NOT NULL,
  `discode_status_id` int NOT NULL,
  PRIMARY KEY (`discode_id`),
  KEY `fk_discode_discode_status1_idx` (`discode_status_id`),
  CONSTRAINT `fk_discode_discode_status1` FOREIGN KEY (`discode_status_id`) REFERENCES `discode_status` (`discode_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table selling.discode: ~1 rows (approximately)
INSERT INTO `discode` (`discode_id`, `dis`, `code`, `discode_status_id`) VALUES
	(1, '10', '123', 0);

-- Dumping structure for table selling.discode_status
CREATE TABLE IF NOT EXISTS `discode_status` (
  `discode_status_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`discode_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table selling.discode_status: ~2 rows (approximately)
INSERT INTO `discode_status` (`discode_status_id`, `status`) VALUES
	(1, 'Active'),
	(2, 'Inactive');

-- Dumping structure for table selling.display
CREATE TABLE IF NOT EXISTS `display` (
  `display_id` int NOT NULL AUTO_INCREMENT,
  `display` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`display_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.display: ~0 rows (approximately)
INSERT INTO `display` (`display_id`, `display`) VALUES
	(6, 'LCD');

-- Dumping structure for table selling.flashsell
CREATE TABLE IF NOT EXISTS `flashsell` (
  `flashsell_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`flashsell_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.flashsell: ~2 rows (approximately)
INSERT INTO `flashsell` (`flashsell_id`, `status`) VALUES
	(1, 'Active'),
	(2, 'Inactive');

-- Dumping structure for table selling.gpu
CREATE TABLE IF NOT EXISTS `gpu` (
  `gpu_id` int NOT NULL AUTO_INCREMENT,
  `gpu` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`gpu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.gpu: ~0 rows (approximately)
INSERT INTO `gpu` (`gpu_id`, `gpu`) VALUES
	(9, 'RTX 3050 Laptop GPU');

-- Dumping structure for table selling.images
CREATE TABLE IF NOT EXISTS `images` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `code` varchar(145) NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.images: ~3 rows (approximately)
INSERT INTO `images` (`image_id`, `product_id`, `code`) VALUES
	(152, 28213118, './resource/laptop/ASUS ROG G15_0_6660a60c9d78c.jpeg'),
	(153, 28213118, './resource/laptop/ASUS ROG G15_1_6660a60ca57a7.jpeg'),
	(154, 28213118, './resource/laptop/ASUS ROG G15_2_6660a60caa8cb.jpeg');

-- Dumping structure for table selling.manager
CREATE TABLE IF NOT EXISTS `manager` (
  `manager_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `nic` varchar(45) NOT NULL,
  `status_id` int NOT NULL,
  PRIMARY KEY (`manager_id`),
  KEY `fk_manager_manager_status1_idx` (`status_id`),
  CONSTRAINT `fk_manager_manager_status1` FOREIGN KEY (`status_id`) REFERENCES `manager_status` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.manager: ~0 rows (approximately)

-- Dumping structure for table selling.manager_status
CREATE TABLE IF NOT EXISTS `manager_status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.manager_status: ~0 rows (approximately)

-- Dumping structure for table selling.model
CREATE TABLE IF NOT EXISTS `model` (
  `model_id` int NOT NULL AUTO_INCREMENT,
  `model` varchar(45) NOT NULL,
  PRIMARY KEY (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.model: ~0 rows (approximately)
INSERT INTO `model` (`model_id`, `model`) VALUES
	(19, 'ROG');

-- Dumping structure for table selling.model_has_brand
CREATE TABLE IF NOT EXISTS `model_has_brand` (
  `model_id` int NOT NULL,
  `brand_id` int NOT NULL,
  KEY `fk_model_has_brand_brand1_idx` (`brand_id`),
  KEY `fk_model_has_brand_model1_idx` (`model_id`),
  CONSTRAINT `fk_model_has_brand_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  CONSTRAINT `fk_model_has_brand_model1` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.model_has_brand: ~0 rows (approximately)

-- Dumping structure for table selling.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `order_id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `payment_status_id` int NOT NULL,
  `discode_id` int NOT NULL,
  `total` varchar(45) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_product_has_user_user1_idx` (`user_id`),
  KEY `fk_product_has_user_product1_idx` (`product_id`),
  KEY `fk_oder_payment_status1_idx` (`payment_status_id`),
  KEY `fk_orders_discode1_idx` (`discode_id`),
  CONSTRAINT `fk_oder_payment_status1` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_status` (`payment_status_id`),
  CONSTRAINT `fk_orders_discode1` FOREIGN KEY (`discode_id`) REFERENCES `discode` (`discode_id`),
  CONSTRAINT `fk_product_has_user_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_product_has_user_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.orders: ~2 rows (approximately)
INSERT INTO `orders` (`product_id`, `user_id`, `order_id`, `date`, `payment_status_id`, `discode_id`, `total`) VALUES
	(28213118, 1, 10, '2024-06-07', 1, 1, '369000'),
	(28213118, 1, 11, '2024-06-07', 2, 1, '36900');

-- Dumping structure for table selling.payment_status
CREATE TABLE IF NOT EXISTS `payment_status` (
  `payment_status_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`payment_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.payment_status: ~2 rows (approximately)
INSERT INTO `payment_status` (`payment_status_id`, `type`) VALUES
	(1, 'Success'),
	(2, 'Faild');

-- Dumping structure for table selling.product
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `stitle` varchar(145) NOT NULL,
  `qty` int NOT NULL,
  `price` double NOT NULL,
  `discount` int NOT NULL DEFAULT '0',
  `dprice` varchar(45) NOT NULL,
  `discription` varchar(6550) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `delivery_fee` varchar(45) NOT NULL,
  `view` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `display_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `cpu_id` int NOT NULL,
  `ram_id` int NOT NULL,
  `gpu_id` int NOT NULL,
  `storage_id` int NOT NULL,
  `produt_status_id` int NOT NULL,
  `model_id` int NOT NULL,
  `category_id` int NOT NULL,
  `size_id` int NOT NULL,
  `warranty_id` int DEFAULT NULL,
  `bestsell_id` int DEFAULT NULL,
  `flashsell_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_product_display1_idx` (`display_id`),
  KEY `fk_product_brand1_idx` (`brand_id`),
  KEY `fk_product_cpu1_idx` (`cpu_id`),
  KEY `fk_product_ram1_idx` (`ram_id`),
  KEY `fk_product_gpu1_idx` (`gpu_id`),
  KEY `fk_product_storage1_idx` (`storage_id`),
  KEY `fk_product_category1_idx` (`category_id`),
  KEY `fk_product_produt_status1_idx` (`produt_status_id`) USING BTREE,
  KEY `fk_product_model2_idx` (`model_id`) USING BTREE,
  KEY `fk_product_size1_idx` (`size_id`),
  KEY `fk_product_warranty1_idx` (`warranty_id`) USING BTREE,
  KEY `fk_product_bestsell1_idx` (`bestsell_id`),
  KEY `fk_product_flashsell1_idx` (`flashsell_id`) USING BTREE,
  CONSTRAINT `fk_product_bestsell1` FOREIGN KEY (`bestsell_id`) REFERENCES `bestsell` (`bestsell_id`),
  CONSTRAINT `fk_product_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `fk_product_cpu1` FOREIGN KEY (`cpu_id`) REFERENCES `cpu` (`cpu_id`),
  CONSTRAINT `fk_product_display1` FOREIGN KEY (`display_id`) REFERENCES `display` (`display_id`),
  CONSTRAINT `fk_product_flashsell1` FOREIGN KEY (`flashsell_id`) REFERENCES `flashsell` (`flashsell_id`),
  CONSTRAINT `fk_product_gpu1` FOREIGN KEY (`gpu_id`) REFERENCES `gpu` (`gpu_id`),
  CONSTRAINT `fk_product_model2` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`),
  CONSTRAINT `fk_product_produt_status1` FOREIGN KEY (`produt_status_id`) REFERENCES `produt_status` (`produt_status_id`),
  CONSTRAINT `fk_product_ram1` FOREIGN KEY (`ram_id`) REFERENCES `ram` (`ram_id`),
  CONSTRAINT `fk_product_size1` FOREIGN KEY (`size_id`) REFERENCES `size` (`size_id`),
  CONSTRAINT `fk_product_storage1` FOREIGN KEY (`storage_id`) REFERENCES `storage` (`storage_id`),
  CONSTRAINT `fk_product_warranty1` FOREIGN KEY (`warranty_id`) REFERENCES `warranty` (`warranty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28213119 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.product: ~0 rows (approximately)
INSERT INTO `product` (`product_id`, `name`, `stitle`, `qty`, `price`, `discount`, `dprice`, `discription`, `date`, `delivery_fee`, `view`, `display_id`, `brand_id`, `cpu_id`, `ram_id`, `gpu_id`, `storage_id`, `produt_status_id`, `model_id`, `category_id`, `size_id`, `warranty_id`, `bestsell_id`, `flashsell_id`) VALUES
	(28213118, 'ASUS ROG G15', 'Asus ROG SCAR G15 G513RC', 20, 410000, 10, '369000', '<h1><strong>Asus ROG SCAR G15 G513RC</strong></h1>', '2024-06-05 22:48:22', '1000', NULL, 6, 7, 8, 8, 9, 6, 1, 19, 7, 2, 4, 2, 2);

-- Dumping structure for table selling.produt_status
CREATE TABLE IF NOT EXISTS `produt_status` (
  `produt_status_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`produt_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.produt_status: ~2 rows (approximately)
INSERT INTO `produt_status` (`produt_status_id`, `status`) VALUES
	(1, 'Active'),
	(2, 'Inactive');

-- Dumping structure for table selling.ram
CREATE TABLE IF NOT EXISTS `ram` (
  `ram_id` int NOT NULL AUTO_INCREMENT,
  `ram` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`ram_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.ram: ~1 rows (approximately)
INSERT INTO `ram` (`ram_id`, `ram`) VALUES
	(8, '16GB');

-- Dumping structure for table selling.recent
CREATE TABLE IF NOT EXISTS `recent` (
  `recent_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`recent_id`),
  KEY `fk_recent_product1_idx` (`product_id`),
  KEY `fk_recent_user1_idx` (`user_id`),
  CONSTRAINT `fk_recent_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_recent_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.recent: ~5 rows (approximately)
INSERT INTO `recent` (`recent_id`, `product_id`, `user_id`) VALUES
	(53, 28213118, 48210051),
	(54, 28213118, 1),
	(55, 28213118, 1),
	(56, 28213118, 1),
	(57, 28213118, 1);

-- Dumping structure for table selling.size
CREATE TABLE IF NOT EXISTS `size` (
  `size_id` int NOT NULL AUTO_INCREMENT,
  `size` varchar(45) NOT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.size: ~1 rows (approximately)
INSERT INTO `size` (`size_id`, `size`) VALUES
	(2, '15.6 INCH');

-- Dumping structure for table selling.storage
CREATE TABLE IF NOT EXISTS `storage` (
  `storage_id` int NOT NULL AUTO_INCREMENT,
  `storage` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`storage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.storage: ~1 rows (approximately)
INSERT INTO `storage` (`storage_id`, `storage`) VALUES
	(6, '1TB NVME');

-- Dumping structure for table selling.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `no` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `status_id` int NOT NULL,
  `password` varchar(45) NOT NULL,
  `otp` varchar(100) DEFAULT NULL,
  `uev_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_user_city_idx` (`city_id`),
  KEY `fk_user_status1_idx` (`status_id`),
  KEY `fk_user_user_ev2_idx` (`uev_id`),
  CONSTRAINT `fk_user_city` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `fk_user_status1` FOREIGN KEY (`status_id`) REFERENCES `user_status` (`status_id`),
  CONSTRAINT `fk_user_user_ev2` FOREIGN KEY (`uev_id`) REFERENCES `user_ev` (`uev_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48210070 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.user: ~2 rows (approximately)
INSERT INTO `user` (`user_id`, `fname`, `lname`, `email`, `mobile`, `no`, `street`, `city_id`, `status_id`, `password`, `otp`, `uev_id`) VALUES
	(1, 'Thamindu', 'DisnaZ', 'thamindud.se@gmail.com', '0764501212', '12', '1212', 6, 1, '12345', '66614e198a751', 1),
	(48210051, 'Thamindu', 'Disna', 'thamindudisna121@gmail.com', '0768084855', 'lmnlnl', 'Asgiriya', 5, 1, '12345', '66628c0f26e49', 1);

-- Dumping structure for table selling.user_ev
CREATE TABLE IF NOT EXISTS `user_ev` (
  `uev_id` int NOT NULL AUTO_INCREMENT,
  `uev` varchar(45) NOT NULL,
  PRIMARY KEY (`uev_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.user_ev: ~2 rows (approximately)
INSERT INTO `user_ev` (`uev_id`, `uev`) VALUES
	(1, 'veryfied'),
	(2, 'not-verify');

-- Dumping structure for table selling.user_img
CREATE TABLE IF NOT EXISTS `user_img` (
  `user_img_id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(145) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`user_img_id`),
  KEY `fk_user_img_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_img_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table selling.user_img: ~2 rows (approximately)
INSERT INTO `user_img` (`user_img_id`, `path`, `user_id`) VALUES
	(1, 'resources/user-profile-images/Thamindu_6660ad99870ae.jpeg', 48210051),
	(3, 'resources/user-profile-images/Thamindu_666260dcb0c51.jpeg', 1);

-- Dumping structure for table selling.user_status
CREATE TABLE IF NOT EXISTS `user_status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.user_status: ~2 rows (approximately)
INSERT INTO `user_status` (`status_id`, `type`) VALUES
	(1, 'Active'),
	(2, 'Inactive');

-- Dumping structure for table selling.warranty
CREATE TABLE IF NOT EXISTS `warranty` (
  `warranty_id` int NOT NULL AUTO_INCREMENT,
  `warranty` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`warranty_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table selling.warranty: ~1 rows (approximately)
INSERT INTO `warranty` (`warranty_id`, `warranty`) VALUES
	(4, '2 YEARS');

-- Dumping structure for table selling.watchlist
CREATE TABLE IF NOT EXISTS `watchlist` (
  `watchlist_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`watchlist_id`),
  KEY `fk_watchlist_user1_idx` (`user_id`),
  KEY `fk_watchlist_product1_idx` (`product_id`),
  CONSTRAINT `fk_watchlist_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `fk_watchlist_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table selling.watchlist: ~0 rows (approximately)
INSERT INTO `watchlist` (`watchlist_id`, `user_id`, `product_id`) VALUES
	(1, 48210051, 28213118);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
