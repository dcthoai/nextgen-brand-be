CREATE DATABASE  IF NOT EXISTS `nextgen_brand`
DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
DEFAULT ENCRYPTION='N';
USE `nextgen_brand`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: nextgen_brand
-- ------------------------------------------------------
-- Server version	8.0.37


-- Table structure for table `account`
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `username` varchar(45) NOT NULL,
    `password` varchar(255) NOT NULL,
    `email` varchar(100) NOT NULL,
    `phone` varchar(20) DEFAULT NULL,
    `address` varchar(512) DEFAULT NULL,
    `role` varchar(255) NOT NULL,
    `device_ID` varchar(45) DEFAULT NULL,
    `token` varchar(512) DEFAULT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `last_modified_by` varchar(45) DEFAULT NULL,
    `last_modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `ID_UNIQUE` (`ID`),
    UNIQUE KEY `username_UNIQUE` (`username`),
    UNIQUE KEY `email_UNIQUE` (`email`),
    UNIQUE KEY `device_ID_UNIQUE` (`device_ID`),
    KEY `phone_INDEX` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `account_authority`
DROP TABLE IF EXISTS `account_authority`;
CREATE TABLE `account_authority` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `user_ID` int NOT NULL,
    `authority_ID` int NOT NULL,
    `authority_code` varchar(45) NOT NULL,
    `authority_parent_code` varchar(45) DEFAULT NULL,
    `created_by` varchar(45) NOT NULL,
    `last_modified_by` varchar(45) DEFAULT NULL,
    `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `last_modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `authority`
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    `code` varchar(45) NOT NULL,
    `description` varchar(255) DEFAULT NULL,
    `parent_ID` int DEFAULT NULL,
    `parent_code` varchar(45) DEFAULT NULL,
    `created_by` varchar(45) NOT NULL,
    `last_modified_by` varchar(45) DEFAULT NULL,
    `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `last_modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `code_UNIQUE` (`code`),
    KEY `parent_ID_INDEX` (`parent_ID`),
    KEY `parent_code_INDEX` (`parent_code`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `banner`
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `text_stroke_1` varchar(45) DEFAULT NULL,
    `text_stroke_2` varchar(45) DEFAULT NULL,
    `text_uppercase_1` varchar(45) DEFAULT NULL,
    `text_uppercase_2` varchar(45) DEFAULT NULL,
    `image` varchar(255) DEFAULT NULL,
    `position` varchar(45) NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `category`
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL,
    `quantity` int DEFAULT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `category_project`
DROP TABLE IF EXISTS `category_project`;
CREATE TABLE `category_project` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `project_ID` int NOT NULL,
    `category_ID` int NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`),
    KEY `project_ID` (`project_ID`),
    KEY `category_ID` (`category_ID`),
    CONSTRAINT `category_project_ibfk_1` FOREIGN KEY (`project_ID`) REFERENCES `project` (`ID`) ON DELETE CASCADE,
    CONSTRAINT `category_project_ibfk_2` FOREIGN KEY (`category_ID`) REFERENCES `category` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `company`
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `logo` varchar(255) NOT NULL,
    `image` varchar(255) NOT NULL,
    `video_intro` varchar(255) DEFAULT NULL,
    `license_code` varchar(20) DEFAULT NULL,
    `license_date` timestamp NULL DEFAULT NULL,
    `license_address` varchar(255) DEFAULT NULL,
    `name` varchar(100) NOT NULL,
    `description` varchar(1000) NOT NULL,
    `address` varchar(255) NOT NULL,
    `phone` varchar(20) NOT NULL,
    `email` varchar(100) NOT NULL,
    `website` varchar(100) NOT NULL,
    `map` varchar(2500) NOT NULL,
    `map_image` varchar(255) NOT NULL,
    `map_slide_text` varchar(25) NOT NULL,
    `facebook` varchar(255) DEFAULT NULL,
    `instagram` varchar(255) DEFAULT NULL,
    `zalo` varchar(255) DEFAULT NULL,
    `youtube` varchar(255) DEFAULT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `contact_form`
DROP TABLE IF EXISTS `contact_form`;
CREATE TABLE `contact_form` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `title` varchar(255) NOT NULL,
    `description` varchar(1000) NOT NULL,
    `description_2` varchar(1000) NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `demand`
DROP TABLE IF EXISTS `demand`;
CREATE TABLE `demand` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `fullname` varchar(100) NOT NULL,
    `name` varchar(50) NOT NULL,
    `email` varchar(100) NOT NULL,
    `phone` varchar(20) NOT NULL,
    `status` int NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `job`
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `name` varchar(300) NOT NULL,
    `description` varchar(1500) NOT NULL,
    `contact_mail` varchar(100) NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `motto`
DROP TABLE IF EXISTS `motto`;
CREATE TABLE `motto` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `description` varchar(1000) NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `partner`
DROP TABLE IF EXISTS `partner`;
CREATE TABLE `partner` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL,
    `logo` varchar(255) NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `product`
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `description` varchar(1000) DEFAULT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `product_carousel`
DROP TABLE IF EXISTS `product_carousel`;
CREATE TABLE `product_carousel` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `product_ID` int NOT NULL,
    `url` varchar(255) NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`),
    KEY `product_ID` (`product_ID`),
    CONSTRAINT `product_carousel_ibfk_1` FOREIGN KEY (`product_ID`) REFERENCES `product` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `product_intro`
DROP TABLE IF EXISTS `product_intro`;
CREATE TABLE `product_intro` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `product_ID` int NOT NULL,
    `content` text,
    `index` int DEFAULT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`),
    KEY `product_ID` (`product_ID`),
    CONSTRAINT `product_intro_ibfk_1` FOREIGN KEY (`product_ID`) REFERENCES `product` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `product_pack`
DROP TABLE IF EXISTS `product_pack`;
CREATE TABLE `product_pack` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `product_ID` int NOT NULL,
    `name` varchar(100) NOT NULL,
    `icon` varchar(255) DEFAULT NULL,
    `price` bigint NOT NULL,
    `decription` varchar(1000) DEFAULT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`),
    KEY `product_ID` (`product_ID`),
    CONSTRAINT `product_pack_ibfk_1` FOREIGN KEY (`product_ID`) REFERENCES `product` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `product_pack_compare`
DROP TABLE IF EXISTS `product_pack_compare`;
CREATE TABLE `product_pack_compare` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `pack_ID` int NOT NULL,
    `product_ID` int NOT NULL,
    `name` varchar(255) NOT NULL,
    `content` varchar(1000) NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`),
    KEY `pack_ID` (`pack_ID`),
    KEY `product_ID` (`product_ID`),
    CONSTRAINT `product_pack_compare_ibfk_1` FOREIGN KEY (`pack_ID`) REFERENCES `product_pack` (`ID`) ON DELETE CASCADE,
    CONSTRAINT `product_pack_compare_ibfk_2` FOREIGN KEY (`product_ID`) REFERENCES `product` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `product_pack_detail`
DROP TABLE IF EXISTS `product_pack_detail`;
CREATE TABLE `product_pack_detail` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `pack_ID` int NOT NULL,
    `content` varchar(1000) NOT NULL,
    `index` int NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`),
    KEY `pack_ID` (`pack_ID`),
    CONSTRAINT `product_pack_detail_ibfk_1` FOREIGN KEY (`pack_ID`) REFERENCES `product_pack` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `project`
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `thumbnail_square` varchar(255) NOT NULL,
    `thumbnail_rect` varchar(255) NOT NULL,
    `sub_name` varchar(100) NOT NULL,
    `name` varchar(255) NOT NULL,
    `category` varchar(255) NOT NULL,
    `title` varchar(255) DEFAULT NULL,
    `description` varchar(1000) DEFAULT NULL,
    `description_2` varchar(1000) DEFAULT NULL,
    `customer` varchar(255) NOT NULL,
    `finished_date` timestamp NOT NULL,
    `link` varchar(255) NOT NULL,
    `link_title` varchar(100) NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `project_image`
DROP TABLE IF EXISTS `project_image`;
CREATE TABLE `project_image` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `project_ID` int NOT NULL,
    `index` int NOT NULL,
    `url` varchar(255) NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`),
    KEY `project_ID` (`project_ID`),
    CONSTRAINT `project_image_ibfk_1` FOREIGN KEY (`project_ID`) REFERENCES `project` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `story`
DROP TABLE IF EXISTS `story`;
CREATE TABLE `story` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `subtitle` varchar(150) NOT NULL,
    `title` varchar(400) NOT NULL,
    `text1` varchar(1000) DEFAULT NULL,
    `text2` varchar(1000) DEFAULT NULL,
    `text3` varchar(1000) DEFAULT NULL,
    `position` varchar(50) NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`),
    UNIQUE KEY `position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `story_image`
DROP TABLE IF EXISTS `story_image`;
CREATE TABLE `story_image` (
    `ID` int NOT NULL AUTO_INCREMENT,
    `story_ID` int NOT NULL,
    `url` varchar(1000) NOT NULL,
    `index` int NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL,
    `last_modified_by` varchar(45) NOT NULL,
    `last_modified_date` timestamp NOT NULL,
    PRIMARY KEY (`ID`),
    KEY `story_ID` (`story_ID`),
    CONSTRAINT `story_image_ibfk_1` FOREIGN KEY (`story_ID`) REFERENCES `story` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table structure for table `system_config`
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
    `id` int NOT NULL AUTO_INCREMENT,
    `code` varchar(45) NOT NULL,
    `content` text,
    `description` varchar(255) DEFAULT NULL,
    `enabled` int NOT NULL,
    `created_by` varchar(45) NOT NULL,
    `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `last_modified_by` varchar(45) DEFAULT NULL,
    `last_modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;