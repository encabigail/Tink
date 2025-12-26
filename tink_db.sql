-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2025 at 01:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tink_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ADMIN_ID` int(11) NOT NULL,
  `ADMIN_NAME` varchar(100) NOT NULL,
  `ADMIN_USERNAME` varchar(50) NOT NULL,
  `ADMIN_PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMIN_ID`, `ADMIN_NAME`, `ADMIN_USERNAME`, `ADMIN_PASSWORD`) VALUES
(1, 'Super Admin', 'admin', '$2y$10$d9jWWZhrxsIgO5juFO4Y2OaVxnNQeV1vfT0dtBikwYUlSL19PiQD2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CART_ID` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `CART_STATUS` varchar(20) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CART_ID`, `CUSTOMER_ID`, `CART_STATUS`) VALUES
(5001, 1001, 'active'),
(5002, 1002, 'converted'),
(5003, 1006, 'completed'),
(5004, 1006, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `cartitem`
--

CREATE TABLE `cartitem` (
  `CARTITEM_ID` int(11) NOT NULL,
  `CART_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `CARTITEM_QUANTITY` int(11) NOT NULL,
  `CARTITEM_PRICE` decimal(10,2) NOT NULL,
  `CARTITEM_ENGRAVING` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cartitem`
--

INSERT INTO `cartitem` (`CARTITEM_ID`, `CART_ID`, `ITEM_ID`, `CARTITEM_QUANTITY`, `CARTITEM_PRICE`, `CARTITEM_ENGRAVING`) VALUES
(1, 5001, 3001, 1, 150.00, 'Forever'),
(2, 5001, 3005, 1, 30.00, NULL),
(3, 5002, 3021, 1, 50.00, NULL),
(5, 5003, 3023, 1, 55.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartitem_charm`
--

CREATE TABLE `cartitem_charm` (
  `ID` int(11) NOT NULL,
  `CARTITEM_ID` int(11) NOT NULL,
  `CHARM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cartitem_charm`
--

INSERT INTO `cartitem_charm` (`ID`, `CARTITEM_ID`, `CHARM_ID`) VALUES
(1, 3, 11001),
(2, 3, 11002);

-- --------------------------------------------------------

--
-- Table structure for table `charm`
--

CREATE TABLE `charm` (
  `CHARM_ID` int(11) NOT NULL,
  `CHARM_NAME` varchar(100) NOT NULL,
  `CHARM_TYPE` varchar(50) NOT NULL,
  `CHARM_MATERIAL` varchar(100) NOT NULL,
  `CHARM_PRICE` decimal(10,2) NOT NULL,
  `CHARM_COMPATIBLE_CAT` varchar(100) NOT NULL,
  `CHARM_IMAGE` varchar(255) DEFAULT NULL,
  `CHARM_ACTIVE` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `charm`
--

INSERT INTO `charm` (`CHARM_ID`, `CHARM_NAME`, `CHARM_TYPE`, `CHARM_MATERIAL`, `CHARM_PRICE`, `CHARM_COMPATIBLE_CAT`, `CHARM_IMAGE`, `CHARM_ACTIVE`) VALUES
(11001, 'Heart Charm', 'Heart', '925 Sterling Silver', 15.00, 'Bracelets', '/images/charms/charm_11001.jpg', 1),
(11002, 'Star Charm', 'Star', '925 Sterling Silver', 12.00, 'Bracelets', '/images/charms/charm_11002.jpg', 1),
(11003, 'Moon Charm', 'Moon', '925 Sterling Silver', 14.00, 'Bracelets', '/images/charms/charm_11003.jpg', 1),
(11004, 'Flower Charm', 'Flower', '925 Sterling Silver', 13.00, 'Bracelets', '/images/charms/charm_11004.jpg', 1),
(11005, 'Letter A Charm', 'Letter', '925 Sterling Silver', 10.00, 'Bracelets', '/images/charms/charm_11005.jpg', 1),
(11006, 'Letter B Charm', 'Letter', '925 Sterling Silver', 10.00, 'Bracelets', '/images/charms/charm_11006.jpg', 1),
(11007, 'Love Charm', 'Word', '925 Sterling Silver', 16.00, 'Bracelets', '/images/charms/charm_11007.jpg', 1),
(11008, 'Crown Charm', 'Crown', '925 Sterling Silver', 18.00, 'Bracelets', '/images/charms/charm_11008.jpg', 1),
(11009, 'Butterfly Charm', 'Butterfly', '925 Sterling Silver', 14.50, 'Bracelets', '/images/charms/charm_11009.jpg', 1),
(11010, 'Cross Charm', 'Cross', '925 Sterling Silver', 12.00, 'Bracelets', '/images/charms/charm_11010.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `CUSTOMER_NAME` varchar(100) NOT NULL,
  `CUSTOMER_EMAIL` varchar(100) NOT NULL,
  `CUSTOMER_PW` varchar(255) NOT NULL,
  `CUSTOMER_TEL` varchar(15) NOT NULL,
  `CUSTOMER_ADDRESS` varchar(255) NOT NULL,
  `CUSTOMER_DATE` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTOMER_ID`, `CUSTOMER_NAME`, `CUSTOMER_EMAIL`, `CUSTOMER_PW`, `CUSTOMER_TEL`, `CUSTOMER_ADDRESS`, `CUSTOMER_DATE`) VALUES
(1001, 'Nur Aini', 'nur.aini@email.com', '$2y$10$dummy', '012-345-6789', '123 Jalan Merdeka, Kuala Lumpur', '2025-01-10 08:30:00'),
(1002, 'Siti Farah', 'siti.farah@email.com', '$2y$10$dummy', '011-222-3333', '456 Persiaran Sultan, Kuala Lumpur', '2025-01-11 09:15:00'),
(1003, 'Fatimah Zahra', 'fatimah.z@email.com', '$2y$10$dummy', '016-444-5555', '789 Jalan Bukit, Kuala Lumpur', '2025-01-12 10:45:00'),
(1004, 'Yasmin Sofiya', 'yasmin.s@email.com', '$2y$10$dummy', '013-666-7777', '321 Jalan Ampang, Kuala Lumpur', '2025-01-13 11:20:00'),
(1005, 'Leila Nazira', 'leila.n@email.com', '$2y$10$dummy', '017-888-9999', '654 Jalan Kebun, Kuala Lumpur', '2025-01-14 12:30:00'),
(1006, 'Aiko', 'aiko@gmail.com', '$2y$10$LrI0hQURpIOVuRJQqcIf2OA6FdAb0DRB7Q4GIII3jDRVMQ.lqD7m2', '0183289742', '123 Jump street\nKuala Lumpur, Kuala Lumpur 734232', '2025-12-21 23:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `designer`
--

CREATE TABLE `designer` (
  `DESIGNER_ID` int(11) NOT NULL,
  `DESIGNER_NAME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designer`
--

INSERT INTO `designer` (`DESIGNER_ID`, `DESIGNER_NAME`) VALUES
(1, 'Sterling Creations Ltd'),
(2, 'Elegance Jewelry Studio'),
(3, 'Lumiere Fine Jewelry'),
(4, 'Vintage Vogue Co.'),
(5, 'Aura Gemstones'),
(6, 'Celestial Designs'),
(7, 'Precious Moments Studio'),
(8, 'Radiant Jewels Co.'),
(9, 'Ethereal Crafts Ltd'),
(10, 'Glamour & Grace Jewelry');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ITEM_ID` int(11) NOT NULL,
  `DESIGNER_ID` int(11) NOT NULL,
  `ITEM_CATEGORY` varchar(50) NOT NULL,
  `ITEM_NAME` varchar(150) NOT NULL,
  `ITEM_DESCRIPTION` varchar(500) NOT NULL,
  `ITEM_MATERIAL` varchar(100) NOT NULL,
  `ITEM_PRICE` decimal(10,2) NOT NULL,
  `ITEM_STOCK` int(11) NOT NULL DEFAULT 50,
  `IS_ENGRAVABLE` tinyint(1) NOT NULL DEFAULT 0,
  `ITEM_IMAGE` varchar(255) DEFAULT NULL,
  `GALLERY_IMAGES` longtext DEFAULT NULL,
  `ITEM_TAGS` varchar(500) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `ITEM_WEIGHT` decimal(5,2) DEFAULT NULL,
  `ITEM_SIZE` varchar(50) DEFAULT NULL,
  `ITEM_COLOR` varchar(100) DEFAULT NULL,
  `ITEM_ACTIVE` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ITEM_ID`, `DESIGNER_ID`, `ITEM_CATEGORY`, `ITEM_NAME`, `ITEM_DESCRIPTION`, `ITEM_MATERIAL`, `ITEM_PRICE`, `ITEM_STOCK`, `IS_ENGRAVABLE`, `ITEM_IMAGE`, `GALLERY_IMAGES`, `ITEM_TAGS`, `PARENT_ID`, `ITEM_WEIGHT`, `ITEM_SIZE`, `ITEM_COLOR`, `ITEM_ACTIVE`) VALUES
(3001, 4, 'Rings', 'Vintage Ruby Ring', 'A timeless statement piece featuring a deep red ruby set in antique-finish gold.', '14k Gold with Ruby', 150.00, 15, 1, 'images/products/var_1766752995_0.png', '[\"\\/images\\/products\\/base_1766479849_0.png\",\"\\/images\\/products\\/base_1766479849_1.png\",\"\\/images\\/products\\/base_1766479849_2.png\",\"\\/images\\/products\\/base_1766479849_3.png\",\"\\/images\\/products\\/base_1766479849_4.png\",\"\\/images\\/products\\/base_1766479849_5.png\"]', 'Statement, Vintage, Ruby', 27800, 4.50, '7', 'Red', 1),
(3002, 5, 'Rings', 'Turquoise Statement Ring', 'Bold turquoise stone set in a chunky silver bezel.', 'Sterling Silver with Turquoise', 85.00, 20, 0, 'images/products/var_1766752977_0.png', '[\"\\/images\\/products\\/base_1766479822_0.png\",\"\\/images\\/products\\/base_1766479822_1.png\",\"\\/images\\/products\\/base_1766479822_2.png\",\"\\/images\\/products\\/base_1766479822_3.png\",\"\\/images\\/products\\/base_1766479822_4.png\",\"\\/images\\/products\\/base_1766479822_5.png\"]', 'Chunky, Boho, Turquoise', 43784, 6.20, '8', 'Blue', 1),
(3003, 1, 'Necklaces', 'Sterling Silver Heart Necklace', 'Delicate heart pendant on a fine silver chain.', '925 Sterling Silver', 45.00, 100, 1, 'images/products/var_1766752955_0.png', '[\"\\/images\\/products\\/base_1766479799_0.png\",\"\\/images\\/products\\/base_1766479799_1.png\",\"\\/images\\/products\\/base_1766479799_2.png\"]', 'Minimalist, Heart, Love', NULL, 3.10, '45cm', 'Silver', 1),
(3004, 3, 'Rings', 'Stackable Gold Bands', 'Set of 3 thin hammered bands, perfect for stacking.', '18k Gold Plated', 120.00, 40, 1, 'images/products/var_1766752940_0.png', '[\"\\/images\\/products\\/base_1766479769_0.png\",\"\\/images\\/products\\/base_1766479769_1.png\",\"\\/images\\/products\\/base_1766479769_2.png\"]', 'Minimalist, Set, Gold', NULL, 2.00, '6,7,8', 'Gold', 1),
(3005, 1, 'Earrings', 'Silver Hoop Earrings', 'Classic medium-sized polished hoops for everyday wear.', '925 Sterling Silver', 30.00, 80, 0, 'images/products/var_1766752926_0.png', '[\"\\/images\\/products\\/base_1766479737_0.png\",\"\\/images\\/products\\/base_1766479737_1.png\",\"\\/images\\/products\\/base_1766479737_2.png\"]', 'Classic, Hoops, Silver', NULL, 4.00, '30mm', 'Silver', 1),
(3006, 6, 'Necklaces', 'Sapphire Teardrop Pendant', 'Elegant teardrop sapphire surrounded by tiny cubic zirconia.', 'White Gold with Sapphire', 180.00, 10, 0, 'images/products/var_1766752905_0.png', '[\"\\/images\\/products\\/base_1766479695_0.png\",\"\\/images\\/products\\/base_1766479695_1.png\",\"\\/images\\/products\\/base_1766479695_2.png\",\"\\/images\\/products\\/base_1766479695_3.png\",\"\\/images\\/products\\/base_1766479695_4.png\",\"\\/images\\/products\\/base_1766479695_5.png\"]', 'Luxury, Elegant, Sapphire', 54146, 5.50, '50cm', 'Blue', 1),
(3007, 5, 'Bracelets', 'Bangle Bracelet', 'Sleek and modern polished bangle with hinge clasp.', '14k Rose Gold', 95.00, 35, 1, 'images/products/var_1766752882_0.png', '[\"\\/images\\/products\\/base_1766479678_0.png\",\"\\/images\\/products\\/base_1766479678_1.png\",\"\\/images\\/products\\/base_1766479678_2.png\",\"\\/images\\/products\\/base_1766479678_3.png\",\"\\/images\\/products\\/base_1766479678_4.png\",\"\\/images\\/products\\/base_1766479678_5.png\"]', 'Modern, Rose Gold, Bangle', 87841, 10.00, 'One Size', 'Rose Gold', 1),
(3008, 2, 'Bracelets', 'Pearl Strand Bracelet', 'Classic freshwater pearls strung on silk thread.', 'Freshwater Pearl Gold Plated', 60.00, 25, 0, 'images/products/var_1766752855_0.png', '[\"\\/images\\/products\\/base_1766479665_0.png\",\"\\/images\\/products\\/base_1766479665_1.png\",\"\\/images\\/products\\/base_1766479665_2.png\",\"\\/images\\/products\\/base_1766479665_3.png\",\"\\/images\\/products\\/base_1766479665_4.png\",\"\\/images\\/products\\/base_1766479665_5.png\"]', 'Classic, Wedding, Pearl', 80146, 8.00, '18cm', 'White', 1),
(3009, 2, 'Earrings', 'Pearl Drop Earrings', 'Sophisticated pearl drops on gold hook backings.', 'Gold Vermeil with Pearl', 55.00, 30, 0, '/images/products/base_1766479646_0.png', '[\"\\/images\\/products\\/base_1766479646_0.png\",\"\\/images\\/products\\/base_1766479646_1.png\",\"\\/images\\/products\\/base_1766479646_2.png\",\"\\/images\\/products\\/base_1766479646_3.png\",\"\\/images\\/products\\/base_1766479646_4.png\",\"\\/images\\/products\\/base_1766479646_5.png\"]', 'Vintage, Elegant, Pearl', 46578, 3.50, 'One Size', 'White', 1),
(3010, 8, 'Rings', 'Opal Signet Ring', 'Mesmerizing opal cabochon set in a classic signet style.', '14k Gold with Opal', 110.00, 12, 1, 'images/products/var_1766752799_0.png', '[\"\\/images\\/products\\/base_1766479609_0.png\",\"\\/images\\/products\\/base_1766479609_1.png\",\"\\/images\\/products\\/base_1766479609_2.png\",\"\\/images\\/products\\/base_1766479609_3.png\",\"\\/images\\/products\\/base_1766479609_4.png\",\"\\/images\\/products\\/base_1766479609_5.png\"]', 'Vintage, Opal, Signet', 74384, 5.80, '7', 'Iridescent', 1),
(3011, 9, 'Rings', 'Moonstone Ring', 'Ethereal moonstone gem that catches the light.', 'Sterling Silver with Moonstone', 75.00, 18, 0, 'images/products/var_1766752774_0.png', '[\"\\/images\\/products\\/base_1766479596_0.png\",\"\\/images\\/products\\/base_1766479596_1.png\",\"\\/images\\/products\\/base_1766479596_2.png\",\"\\/images\\/products\\/base_1766479596_3.png\",\"\\/images\\/products\\/base_1766479596_4.png\",\"\\/images\\/products\\/base_1766479596_5.png\"]', 'Boho, Moonstone, Magic', 30407, 3.90, '6', 'White', 1),
(3012, 1, 'Bracelets', 'Minimalist Cuff', 'Simple open cuff design, adjustable fit.', 'Sterling Silver', 40.00, 60, 1, 'images/products/var_1766752757_0.png', '[\"\\/images\\/products\\/base_1766479564_0.png\",\"\\/images\\/products\\/base_1766479564_1.png\",\"\\/images\\/products\\/base_1766479564_2.png\",\"\\/images\\/products\\/base_1766479564_3.png\",\"\\/images\\/products\\/base_1766479564_4.png\",\"\\/images\\/products\\/base_1766479564_5.png\"]', 'Minimalist, Cuff, Silver', 71302, 6.00, 'Adjustable', 'Silver', 1),
(3013, 4, 'Necklaces', 'Locket Necklace', 'Vintage-inspired oval locket that opens to hold a photo.', 'Gold Plated Brass', 65.00, 22, 1, 'images/products/var_1766752735_0.png', '[\"\\/images\\/products\\/base_1766479539_0.png\",\"\\/images\\/products\\/base_1766479539_1.png\",\"\\/images\\/products\\/base_1766479539_2.png\",\"\\/images\\/products\\/base_1766479539_3.png\",\"\\/images\\/products\\/base_1766479539_4.png\",\"\\/images\\/products\\/base_1766479539_5.png\"]', 'Vintage, Locket, Memory', 43934, 7.50, '50cm', 'Gold', 1),
(3014, 10, 'Necklaces', 'Gold Layered Chain', 'Pre-layered duo chain necklace for an instant stacked look.', '18k Gold Plated', 80.00, 45, 0, 'images/products/var_1766752706_0.png', '[\"\\/images\\/products\\/base_1766479520_0.png\",\"\\/images\\/products\\/base_1766479520_1.png\",\"\\/images\\/products\\/base_1766479520_2.png\"]', 'Layered, Trendy, Gold', NULL, 8.20, '40cm/45cm', 'Gold', 1),
(3015, 3, 'Necklaces', 'Gold Infinity Pendant', 'Symbol of everlasting love on a whisper-thin chain.', '14k Gold', 70.00, 55, 0, 'images/products/var_1766752696_0.png', '[\"\\/images\\/products\\/base_1766479501_0.png\",\"\\/images\\/products\\/base_1766479501_1.png\",\"\\/images\\/products\\/base_1766479501_2.png\"]', 'Symbolic, Love, Gold', NULL, 2.50, '45cm', 'Gold', 1),
(3016, 7, 'Earrings', 'Garnet Drop Earrings', 'Deep red garnets in a teardrop cut.', 'Gold Plated with Garnet', 90.00, 15, 0, 'images/products/var_1766752666_0.png', '[\"\\/images\\/products\\/base_1766479445_0.png\",\"\\/images\\/products\\/base_1766479445_1.png\",\"\\/images\\/products\\/base_1766479445_2.png\",\"\\/images\\/products\\/base_1766479445_3.png\",\"\\/images\\/products\\/base_1766479445_4.png\",\"\\/images\\/products\\/base_1766479445_5.png\"]', 'Gemstone, Garnet, Red', 74918, 4.20, 'One Size', 'Red', 1),
(3017, 8, 'Bracelets', 'Emerald Tennis Bracelet', 'Luxurious line of emerald simulants.', 'Sterling Silver with Emerald Simulant', 250.00, 8, 0, 'images/products/var_1766752648_0.png', '[\"\\/images\\/products\\/base_1766479424_0.png\",\"\\/images\\/products\\/base_1766479424_1.png\",\"\\/images\\/products\\/base_1766479424_2.png\",\"\\/images\\/products\\/base_1766479424_3.png\",\"\\/images\\/products\\/base_1766479424_4.png\",\"\\/images\\/products\\/base_1766479424_5.png\"]', 'Luxury, Tennis, Emerald', 26465, 11.00, '17cm', 'Green', 1),
(3018, 3, 'Rings', 'Diamond Solitaire Ring', 'Premium 0.5ct conflict-free diamond solitaire.', '18k White Gold with Diamond', 500.00, 5, 1, 'images/products/var_1766752623_0.png', '[\"\\/images\\/products\\/base_1766479402_0.png\",\"\\/images\\/products\\/base_1766479402_2.png\",\"\\/images\\/products\\/base_1766479402_3.png\",\"\\/images\\/products\\/base_1766479402_4.png\",\"\\/images\\/products\\/base_1766479402_5.png\"]', 'Luxury, Wedding, Diamond', 43569, 4.00, '6', 'Silver', 1),
(3019, 3, 'Earrings', 'Diamond Halo Studs', 'Brilliant round diamonds surrounded by a halo of sparkle.', '14k White Gold with Diamond', 300.00, 10, 0, 'images/products/var_1766752605_0.png', '[\"\\/images\\/products\\/base_1766479388_0.png\",\"\\/images\\/products\\/base_1766479388_1.png\",\"\\/images\\/products\\/base_1766479388_2.png\",\"\\/images\\/products\\/base_1766479388_3.png\",\"\\/images\\/products\\/base_1766479388_4.png\",\"\\/images\\/products\\/base_1766479388_5.png\"]', 'Luxury, Diamond, Studs', 18708, 2.00, 'One Size', 'Silver', 1),
(3020, 1, 'Earrings', 'Cubic Zirconia Studs', 'Affordable sparkle suitable for daily wear.', 'Sterling Silver with CZ', 25.00, 150, 0, 'images/products/var_1766752577_0.png', '[\"\\/images\\/products\\/base_1766479310_0.png\",\"\\/images\\/products\\/base_1766479310_1.png\",\"\\/images\\/products\\/base_1766479310_2.png\",\"\\/images\\/products\\/base_1766479310_3.png\",\"\\/images\\/products\\/base_1766479310_4.png\",\"\\/images\\/products\\/base_1766479310_5.png\"]', 'Basic, Sparkle, Silver', 66931, 1.50, 'One Size', 'Clear', 1),
(3021, 9, 'Bracelets', 'Build-Your-Own Charm Bracelet', 'Base chain link bracelet ready for your charm collection.', 'Sterling Silver', 50.00, 200, 0, 'images/products/var_1766752543_0.png', '[\"\\/images\\/products\\/base_1766479075_0.png\",\"\\/images\\/products\\/base_1766479075_1.png\",\"\\/images\\/products\\/base_1766479075_2.png\",\"\\/images\\/products\\/base_1766479075_3.png\",\"\\/images\\/products\\/base_1766479075_4.png\",\"\\/images\\/products\\/base_1766479075_5.png\"]', 'Charms, DIY, Silver', 34140, 9.00, 'Adjustable', 'Silver', 1),
(3022, 6, 'Earrings', 'Blue Topaz Studs', 'Bright blue topaz gems in a simple 4-prong setting.', 'Sterling Silver', 45.00, 30, 0, 'images/products/var_1766752519_0.png', '[\"\\/images\\/products\\/base_1766479045_0.png\",\"\\/images\\/products\\/base_1766479045_1.png\",\"\\/images\\/products\\/base_1766479045_2.png\",\"\\/images\\/products\\/base_1766479045_3.png\",\"\\/images\\/products\\/base_1766479045_4.png\",\"\\/images\\/products\\/base_1766479045_5.png\"]', 'Color, Topaz, Blue', 73680, 2.10, 'One Size', 'Blue', 1),
(3023, 10, 'Necklaces', 'Birthstone Pendant Necklace', 'Personalized birthstone gem on a dainty chain.', 'Gold Plated', 55.00, 60, 0, 'images/products/var_1766752487_0.png', '[\"\\/images\\/products\\/base_1766479112_0.png\",\"\\/images\\/products\\/base_1766479112_1.png\",\"\\/images\\/products\\/base_1766479112_2.png\",\"\\/images\\/products\\/base_1766479112_3.png\",\"\\/images\\/products\\/base_1766479112_4.png\",\"\\/images\\/products\\/base_1766479112_5.png\"]', 'Gift, Personalized, Gold', 69390, 3.00, '45cm', 'Multi', 1),
(3025, 5, 'Necklaces', 'Amethyst Crystal Choker', 'Raw amethyst crystal point on a velvet choker.', 'Sterling Silver', 35.00, 40, 0, 'images/products/var_1766752413_0.png', '[\"\\/images\\/products\\/base_1766749996_0.png\",\"\\/images\\/products\\/base_1766749996_1.png\",\"\\/images\\/products\\/base_1766749996_2.png\",\"\\/images\\/products\\/base_1766749996_3.png\",\"\\/images\\/products\\/base_1766749996_4.png\",\"\\/images\\/products\\/base_1766749996_5.png\"]', 'Women, Classic, Boho, Waterproof, Hypoallergenic, Tarnish-Free, Adjustable, Crystal, Choker', 11304, 4.00, '12 inch', 'Purple', 1),
(3034, 5, 'Necklaces', 'Amethyst Crystal Choker', 'Raw amethyst crystal point on a velvet choker.', '18k Gold Plated', 35.00, 40, 0, 'images/products/var_1766752413_1.png', '[\"\\/images\\/products\\/base_1766749996_0.png\",\"\\/images\\/products\\/base_1766749996_1.png\",\"\\/images\\/products\\/base_1766749996_2.png\",\"\\/images\\/products\\/base_1766749996_3.png\",\"\\/images\\/products\\/base_1766749996_4.png\",\"\\/images\\/products\\/base_1766749996_5.png\"]', 'Women, Classic, Boho, Waterproof, Hypoallergenic, Tarnish-Free, Adjustable, Crystal, Choker', 11304, NULL, NULL, NULL, 1),
(3036, 10, 'Necklaces', 'Birthstone Pendant Necklace', 'Personalized birthstone gem on a dainty chain.', 'Sterling Silver', 55.00, 60, 0, 'images/products/var_1766752487_1.png', '[\"\\/images\\/products\\/base_1766479112_0.png\",\"\\/images\\/products\\/base_1766479112_1.png\",\"\\/images\\/products\\/base_1766479112_2.png\",\"\\/images\\/products\\/base_1766479112_3.png\",\"\\/images\\/products\\/base_1766479112_4.png\",\"\\/images\\/products\\/base_1766479112_5.png\"]', 'Gift, Personalized, Gold', 69390, NULL, NULL, NULL, 1),
(3037, 6, 'Earrings', 'Blue Topaz Studs', 'Bright blue topaz gems in a simple 4-prong setting.', '18k Gold Plated', 45.00, 30, 0, 'images/products/var_1766752519_1.png', '[\"\\/images\\/products\\/base_1766479045_0.png\",\"\\/images\\/products\\/base_1766479045_1.png\",\"\\/images\\/products\\/base_1766479045_2.png\",\"\\/images\\/products\\/base_1766479045_3.png\",\"\\/images\\/products\\/base_1766479045_4.png\",\"\\/images\\/products\\/base_1766479045_5.png\"]', 'Color, Topaz, Blue', 73680, NULL, NULL, NULL, 1),
(3038, 9, 'Bracelets', 'Build-Your-Own Charm Bracelet', 'Base chain link bracelet ready for your charm collection.', 'Gold Plated', 50.00, 200, 0, 'images/products/var_1766752543_1.png', '[\"\\/images\\/products\\/base_1766479075_0.png\",\"\\/images\\/products\\/base_1766479075_1.png\",\"\\/images\\/products\\/base_1766479075_2.png\",\"\\/images\\/products\\/base_1766479075_3.png\",\"\\/images\\/products\\/base_1766479075_4.png\",\"\\/images\\/products\\/base_1766479075_5.png\"]', 'Charms, DIY, Silver', 34140, NULL, NULL, NULL, 1),
(3039, 1, 'Earrings', 'Cubic Zirconia Studs', 'Affordable sparkle suitable for daily wear.', 'Gold Plated', 25.00, 150, 0, 'images/products/var_1766752577_1.png', '[\"\\/images\\/products\\/base_1766479310_0.png\",\"\\/images\\/products\\/base_1766479310_1.png\",\"\\/images\\/products\\/base_1766479310_2.png\",\"\\/images\\/products\\/base_1766479310_3.png\",\"\\/images\\/products\\/base_1766479310_4.png\",\"\\/images\\/products\\/base_1766479310_5.png\"]', 'Basic, Sparkle, Silver', 66931, NULL, NULL, NULL, 1),
(3040, 3, 'Earrings', 'Diamond Halo Studs', 'Brilliant round diamonds surrounded by a halo of sparkle.', 'Sterling Silver with Diamond', 300.00, 10, 0, 'images/products/var_1766752605_1.png', '[\"\\/images\\/products\\/base_1766479388_0.png\",\"\\/images\\/products\\/base_1766479388_1.png\",\"\\/images\\/products\\/base_1766479388_2.png\",\"\\/images\\/products\\/base_1766479388_3.png\",\"\\/images\\/products\\/base_1766479388_4.png\",\"\\/images\\/products\\/base_1766479388_5.png\"]', 'Luxury, Diamond, Studs', 18708, NULL, NULL, NULL, 1),
(3041, 3, 'Rings', 'Diamond Solitaire Ring', 'Premium 0.5ct conflict-free diamond solitaire.', 'Sterling Silver with Diamond', 500.00, 5, 1, 'images/products/var_1766752623_1.png', '[\"\\/images\\/products\\/base_1766479402_0.png\",\"\\/images\\/products\\/base_1766479402_2.png\",\"\\/images\\/products\\/base_1766479402_3.png\",\"\\/images\\/products\\/base_1766479402_4.png\",\"\\/images\\/products\\/base_1766479402_5.png\"]', 'Luxury, Wedding, Diamond', 43569, NULL, NULL, NULL, 1),
(3042, 8, 'Bracelets', 'Emerald Tennis Bracelet', 'Luxurious line of emerald simulants.', '14k Gold with Emerald Simulant', 250.00, 8, 0, 'images/products/var_1766752648_1.png', '[\"\\/images\\/products\\/base_1766479424_0.png\",\"\\/images\\/products\\/base_1766479424_1.png\",\"\\/images\\/products\\/base_1766479424_2.png\",\"\\/images\\/products\\/base_1766479424_3.png\",\"\\/images\\/products\\/base_1766479424_4.png\",\"\\/images\\/products\\/base_1766479424_5.png\"]', 'Luxury, Tennis, Emerald', 26465, NULL, NULL, NULL, 1),
(3043, 7, 'Earrings', 'Garnet Drop Earrings', 'Deep red garnets in a teardrop cut.', 'Sterling Silver with Garnet', 90.00, 15, 0, 'images/products/var_1766752666_1.png', '[\"\\/images\\/products\\/base_1766479445_0.png\",\"\\/images\\/products\\/base_1766479445_1.png\",\"\\/images\\/products\\/base_1766479445_2.png\",\"\\/images\\/products\\/base_1766479445_3.png\",\"\\/images\\/products\\/base_1766479445_4.png\",\"\\/images\\/products\\/base_1766479445_5.png\"]', 'Gemstone, Garnet, Red', 74918, NULL, NULL, NULL, 1),
(3044, 4, 'Necklaces', 'Locket Necklace', 'Vintage-inspired oval locket that opens to hold a photo.', 'Sterling Silver', 65.00, 22, 1, 'images/products/var_1766752735_1.png', '[\"\\/images\\/products\\/base_1766479539_0.png\",\"\\/images\\/products\\/base_1766479539_1.png\",\"\\/images\\/products\\/base_1766479539_2.png\",\"\\/images\\/products\\/base_1766479539_3.png\",\"\\/images\\/products\\/base_1766479539_4.png\",\"\\/images\\/products\\/base_1766479539_5.png\"]', 'Vintage, Locket, Memory', 43934, NULL, NULL, NULL, 1),
(3045, 1, 'Bracelets', 'Minimalist Cuff', 'Simple open cuff design, adjustable fit.', 'Gold Plated', 40.00, 60, 1, 'images/products/var_1766752757_1.png', '[\"\\/images\\/products\\/base_1766479564_0.png\",\"\\/images\\/products\\/base_1766479564_1.png\",\"\\/images\\/products\\/base_1766479564_2.png\",\"\\/images\\/products\\/base_1766479564_3.png\",\"\\/images\\/products\\/base_1766479564_4.png\",\"\\/images\\/products\\/base_1766479564_5.png\"]', 'Minimalist, Cuff, Silver', 71302, NULL, NULL, NULL, 1),
(3046, 9, 'Rings', 'Moonstone Ring', 'Ethereal moonstone gem that catches the light.', '14k Gold with Moonstone', 75.00, 18, 0, 'images/products/var_1766752774_1.png', '[\"\\/images\\/products\\/base_1766479596_0.png\",\"\\/images\\/products\\/base_1766479596_1.png\",\"\\/images\\/products\\/base_1766479596_2.png\",\"\\/images\\/products\\/base_1766479596_3.png\",\"\\/images\\/products\\/base_1766479596_4.png\",\"\\/images\\/products\\/base_1766479596_5.png\"]', 'Boho, Moonstone, Magic', 30407, NULL, NULL, NULL, 1),
(3047, 8, 'Rings', 'Opal Signet Ring', 'Mesmerizing opal cabochon set in a classic signet style.', 'Sterling Silver with Opal', 110.00, 12, 1, 'images/products/var_1766752799_1.png', '[\"\\/images\\/products\\/base_1766479609_0.png\",\"\\/images\\/products\\/base_1766479609_1.png\",\"\\/images\\/products\\/base_1766479609_2.png\",\"\\/images\\/products\\/base_1766479609_3.png\",\"\\/images\\/products\\/base_1766479609_4.png\",\"\\/images\\/products\\/base_1766479609_5.png\"]', 'Vintage, Opal, Signet', 74384, NULL, NULL, NULL, 1),
(3048, 2, 'Earrings', 'Pearl Drop Earrings', 'Sophisticated pearl drops on gold hook backings.', 'Sterling Silver with Pearl', 55.00, 30, 0, 'images/products/var_1766752835_1.png', '[\"\\/images\\/products\\/base_1766479646_0.png\",\"\\/images\\/products\\/base_1766479646_1.png\",\"\\/images\\/products\\/base_1766479646_2.png\",\"\\/images\\/products\\/base_1766479646_3.png\",\"\\/images\\/products\\/base_1766479646_4.png\",\"\\/images\\/products\\/base_1766479646_5.png\"]', 'Vintage, Elegant, Pearl', 46578, NULL, NULL, NULL, 1),
(3049, 2, 'Bracelets', 'Pearl Strand Bracelet', 'Classic freshwater pearls strung on silk thread.', 'Freshwater Pearl Silver Sterling', 60.00, 25, 0, 'images/products/var_1766752855_1.png', '[\"\\/images\\/products\\/base_1766479665_0.png\",\"\\/images\\/products\\/base_1766479665_1.png\",\"\\/images\\/products\\/base_1766479665_2.png\",\"\\/images\\/products\\/base_1766479665_3.png\",\"\\/images\\/products\\/base_1766479665_4.png\",\"\\/images\\/products\\/base_1766479665_5.png\"]', 'Classic, Wedding, Pearl', 80146, NULL, NULL, NULL, 1),
(3050, 5, 'Bracelets', 'Bangle Bracelet', 'Sleek and modern polished bangle with hinge clasp.', 'Sterling Silver', 95.00, 35, 1, 'images/products/var_1766752882_1.png', '[\"\\/images\\/products\\/base_1766479678_0.png\",\"\\/images\\/products\\/base_1766479678_1.png\",\"\\/images\\/products\\/base_1766479678_2.png\",\"\\/images\\/products\\/base_1766479678_3.png\",\"\\/images\\/products\\/base_1766479678_4.png\",\"\\/images\\/products\\/base_1766479678_5.png\"]', 'Modern, Rose Gold, Bangle', 87841, NULL, NULL, NULL, 1),
(3051, 6, 'Necklaces', 'Sapphire Teardrop Pendant', 'Elegant teardrop sapphire surrounded by tiny cubic zirconia.', 'Sterling Silver with Sapphire', 180.00, 10, 0, 'images/products/var_1766752905_1.png', '[\"\\/images\\/products\\/base_1766479695_0.png\",\"\\/images\\/products\\/base_1766479695_1.png\",\"\\/images\\/products\\/base_1766479695_2.png\",\"\\/images\\/products\\/base_1766479695_3.png\",\"\\/images\\/products\\/base_1766479695_4.png\",\"\\/images\\/products\\/base_1766479695_5.png\"]', 'Luxury, Elegant, Sapphire', 54146, NULL, NULL, NULL, 1),
(3052, 5, 'Rings', 'Turquoise Statement Ring', 'Bold turquoise stone set in a chunky silver bezel.', '14k Gold with Turquoise', 85.00, 20, 0, 'images/products/var_1766752977_1.png', '[\"\\/images\\/products\\/base_1766479822_0.png\",\"\\/images\\/products\\/base_1766479822_1.png\",\"\\/images\\/products\\/base_1766479822_2.png\",\"\\/images\\/products\\/base_1766479822_3.png\",\"\\/images\\/products\\/base_1766479822_4.png\",\"\\/images\\/products\\/base_1766479822_5.png\"]', 'Chunky, Boho, Turquoise', 43784, NULL, NULL, NULL, 1),
(3053, 4, 'Rings', 'Vintage Ruby Ring', 'A timeless statement piece featuring a deep red ruby set in antique-finish gold.', 'Sterling Gold with Ruby', 150.00, 15, 1, 'images/products/var_1766752995_1.png', '[\"\\/images\\/products\\/base_1766479849_0.png\",\"\\/images\\/products\\/base_1766479849_1.png\",\"\\/images\\/products\\/base_1766479849_2.png\",\"\\/images\\/products\\/base_1766479849_3.png\",\"\\/images\\/products\\/base_1766479849_4.png\",\"\\/images\\/products\\/base_1766479849_5.png\"]', 'Statement, Vintage, Ruby', 27800, NULL, NULL, NULL, 1),
(3060, 9, 'Bracelets', 'Beaded Stretch Bracelet', 'Casual beaded bracelet on durable elastic cord.', 'Glass Beads with Silver Clasp', 20.00, 100, 0, 'images/products/var_1766753052_0.png', '[\"\\/images\\/products\\/base_1766478767_0.png\",\"\\/images\\/products\\/base_1766478767_1.png\",\"\\/images\\/products\\/base_1766478767_2.png\",\"\\/images\\/products\\/base_1766478767_3.png\",\"\\/images\\/products\\/base_1766478767_4.png\",\"\\/images\\/products\\/base_1766478767_5.png\"]', 'Boho, Casual, Colorful', 41526, NULL, NULL, NULL, 1),
(3061, 9, 'Bracelets', 'Beaded Stretch Bracelet', 'Casual beaded bracelet on durable elastic cord.', 'Glass Beads with Gold Clasp', 20.00, 100, 0, 'images/products/var_1766753052_1.png', '[\"\\/images\\/products\\/base_1766478767_0.png\",\"\\/images\\/products\\/base_1766478767_1.png\",\"\\/images\\/products\\/base_1766478767_2.png\",\"\\/images\\/products\\/base_1766478767_3.png\",\"\\/images\\/products\\/base_1766478767_4.png\",\"\\/images\\/products\\/base_1766478767_5.png\"]', 'Boho, Casual, Colorful', 41526, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `itemcharm`
--

CREATE TABLE `itemcharm` (
  `ITEM_ID` int(11) NOT NULL,
  `CHARM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itemcharm`
--

INSERT INTO `itemcharm` (`ITEM_ID`, `CHARM_ID`) VALUES
(3021, 11001),
(3021, 11002);

-- --------------------------------------------------------

--
-- Table structure for table `item_gallery`
--

CREATE TABLE `item_gallery` (
  `GALLERY_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `IMAGE_URL` varchar(255) NOT NULL,
  `IMAGE_TYPE` varchar(50) NOT NULL DEFAULT 'main'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_gallery`
--

INSERT INTO `item_gallery` (`GALLERY_ID`, `ITEM_ID`, `IMAGE_URL`, `IMAGE_TYPE`) VALUES
(1, 3001, '/images/items/ruby_ring_main.jpg', 'main'),
(2, 3002, '/images/items/turquoise_ring_main.jpg', 'main'),
(3, 3003, '/images/items/heart_neck_main.jpg', 'main'),
(4, 3004, '/images/items/stack_bands_main.jpg', 'main'),
(5, 3005, '/images/items/silver_hoops_main.jpg', 'main'),
(6, 3006, '/images/items/sapphire_pend_main.jpg', 'main'),
(7, 3007, '/images/items/rose_bangle_main.jpg', 'main'),
(8, 3008, '/images/items/pearl_brace_main.jpg', 'main'),
(9, 3009, '/images/items/pearl_drop_main.jpg', 'main'),
(10, 3010, '/images/items/opal_ring_main.jpg', 'main'),
(11, 3011, '/images/items/moonstone_ring_main.jpg', 'main'),
(12, 3012, '/images/items/min_cuff_main.jpg', 'main'),
(13, 3013, '/images/items/locket_main.jpg', 'main'),
(14, 3014, '/images/items/layer_chain_main.jpg', 'main'),
(15, 3015, '/images/items/infinity_main.jpg', 'main'),
(16, 3016, '/images/items/garnet_drop_main.jpg', 'main'),
(17, 3017, '/images/items/emerald_tennis_main.jpg', 'main'),
(18, 3018, '/images/items/dia_solitaire_main.jpg', 'main'),
(19, 3019, '/images/items/halo_studs_main.jpg', 'main'),
(20, 3020, '/images/items/cz_studs_main.jpg', 'main'),
(21, 3021, '/images/items/charm_base_main.jpg', 'main'),
(22, 3022, '/images/items/topaz_studs_main.jpg', 'main'),
(23, 3023, '/images/items/birthstone_main.jpg', 'main'),
(25, 3025, '/images/items/amethyst_choker_main.jpg', 'main'),
(32, 3001, '/images/items/ruby_ring_hover.jpg', 'hover'),
(33, 3002, '/images/items/turquoise_ring_hover.jpg', 'hover'),
(34, 3003, '/images/items/heart_neck_hover.jpg', 'hover'),
(35, 3004, '/images/items/stack_bands_hover.jpg', 'hover'),
(36, 3005, '/images/items/silver_hoops_hover.jpg', 'hover'),
(37, 3006, '/images/items/sapphire_pend_hover.jpg', 'hover'),
(38, 3007, '/images/items/rose_bangle_hover.jpg', 'hover'),
(39, 3008, '/images/items/pearl_brace_hover.jpg', 'hover'),
(40, 3009, '/images/items/pearl_drop_hover.jpg', 'hover'),
(41, 3010, '/images/items/opal_ring_hover.jpg', 'hover'),
(42, 3011, '/images/items/moonstone_ring_hover.jpg', 'hover'),
(43, 3012, '/images/items/min_cuff_hover.jpg', 'hover'),
(44, 3013, '/images/items/locket_hover.jpg', 'hover'),
(45, 3014, '/images/items/layer_chain_hover.jpg', 'hover'),
(46, 3015, '/images/items/infinity_hover.jpg', 'hover'),
(47, 3016, '/images/items/garnet_drop_hover.jpg', 'hover'),
(48, 3017, '/images/items/emerald_tennis_hover.jpg', 'hover'),
(49, 3018, '/images/items/dia_solitaire_hover.jpg', 'hover'),
(50, 3019, '/images/items/halo_studs_hover.jpg', 'hover'),
(51, 3020, '/images/items/cz_studs_hover.jpg', 'hover'),
(52, 3021, '/images/items/charm_base_hover.jpg', 'hover'),
(53, 3022, '/images/items/topaz_studs_hover.jpg', 'hover'),
(54, 3023, '/images/items/birthstone_hover.jpg', 'hover'),
(56, 3025, '/images/items/amethyst_choker_hover.jpg', 'hover');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `ORDER_ID` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `CART_ID` int(11) DEFAULT NULL,
  `ORDER_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  `ORDER_STATUS` varchar(20) NOT NULL DEFAULT 'pending',
  `ORDER_TOTAL` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`ORDER_ID`, `CUSTOMER_ID`, `CART_ID`, `ORDER_DATE`, `ORDER_STATUS`, `ORDER_TOTAL`) VALUES
(7001, 1002, 5002, '2025-02-01 10:00:00', 'completed', 82.00);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PAYMENT_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `PAYMENT_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  `PAYMENT_METHOD` varchar(50) NOT NULL,
  `PAYMENT_STATUS` varchar(20) NOT NULL DEFAULT 'pending',
  `PAYMENT_AMOUNT` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PAYMENT_ID`, `ORDER_ID`, `PAYMENT_DATE`, `PAYMENT_METHOD`, `PAYMENT_STATUS`, `PAYMENT_AMOUNT`) VALUES
(9001, 7001, '2025-02-01 10:05:00', 'CreditCard', 'completed', 82.00);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `REVIEW_ID` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `REVIEW_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  `REVIEW_RATING` int(11) NOT NULL CHECK (`REVIEW_RATING` >= 1 and `REVIEW_RATING` <= 5),
  `REVIEW_TEXT` varchar(500) DEFAULT NULL,
  `REVIEW_ACTIVE` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`REVIEW_ID`, `CUSTOMER_ID`, `ITEM_ID`, `REVIEW_DATE`, `REVIEW_RATING`, `REVIEW_TEXT`, `REVIEW_ACTIVE`) VALUES
(1, 1002, 3021, '2025-02-05 14:00:00', 5, 'Love that I can add my own charms!', 1),
(2, 1001, 3001, '2025-01-20 09:30:00', 4, 'The ruby is darker than expected but very beautiful.', 1),
(3, 1003, 3012, '2025-01-25 11:15:00', 5, 'Simple and perfect fit.', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMIN_ID`),
  ADD UNIQUE KEY `ADMIN_USERNAME` (`ADMIN_USERNAME`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CART_ID`),
  ADD KEY `IDX_CART_CUSTOMER` (`CUSTOMER_ID`);

--
-- Indexes for table `cartitem`
--
ALTER TABLE `cartitem`
  ADD PRIMARY KEY (`CARTITEM_ID`),
  ADD KEY `FK_CARTITEM_CART` (`CART_ID`),
  ADD KEY `FK_CARTITEM_ITEM` (`ITEM_ID`);

--
-- Indexes for table `cartitem_charm`
--
ALTER TABLE `cartitem_charm`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CARTITEM_ID` (`CARTITEM_ID`),
  ADD KEY `CHARM_ID` (`CHARM_ID`);

--
-- Indexes for table `charm`
--
ALTER TABLE `charm`
  ADD PRIMARY KEY (`CHARM_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUSTOMER_ID`),
  ADD UNIQUE KEY `CUSTOMER_EMAIL` (`CUSTOMER_EMAIL`);

--
-- Indexes for table `designer`
--
ALTER TABLE `designer`
  ADD PRIMARY KEY (`DESIGNER_ID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ITEM_ID`),
  ADD KEY `DESIGNER_ID` (`DESIGNER_ID`),
  ADD KEY `IDX_PARENT_ID` (`PARENT_ID`);

--
-- Indexes for table `itemcharm`
--
ALTER TABLE `itemcharm`
  ADD PRIMARY KEY (`ITEM_ID`,`CHARM_ID`),
  ADD KEY `CHARM_ID` (`CHARM_ID`);

--
-- Indexes for table `item_gallery`
--
ALTER TABLE `item_gallery`
  ADD PRIMARY KEY (`GALLERY_ID`),
  ADD KEY `ITEM_ID` (`ITEM_ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`ORDER_ID`),
  ADD KEY `CART_ID` (`CART_ID`),
  ADD KEY `FK_ORDER_CUSTOMER` (`CUSTOMER_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PAYMENT_ID`),
  ADD KEY `ORDER_ID` (`ORDER_ID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`REVIEW_ID`),
  ADD KEY `CUSTOMER_ID` (`CUSTOMER_ID`),
  ADD KEY `ITEM_ID` (`ITEM_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `CART_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5005;

--
-- AUTO_INCREMENT for table `cartitem`
--
ALTER TABLE `cartitem`
  MODIFY `CARTITEM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cartitem_charm`
--
ALTER TABLE `cartitem_charm`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `charm`
--
ALTER TABLE `charm`
  MODIFY `CHARM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11011;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `designer`
--
ALTER TABLE `designer`
  MODIFY `DESIGNER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ITEM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3062;

--
-- AUTO_INCREMENT for table `item_gallery`
--
ALTER TABLE `item_gallery`
  MODIFY `GALLERY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7002;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PAYMENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9002;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `REVIEW_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`) ON DELETE CASCADE;

--
-- Constraints for table `cartitem`
--
ALTER TABLE `cartitem`
  ADD CONSTRAINT `FK_CARTITEM_CART` FOREIGN KEY (`CART_ID`) REFERENCES `cart` (`CART_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CARTITEM_ITEM` FOREIGN KEY (`ITEM_ID`) REFERENCES `item` (`ITEM_ID`);

--
-- Constraints for table `cartitem_charm`
--
ALTER TABLE `cartitem_charm`
  ADD CONSTRAINT `cartitem_charm_ibfk_1` FOREIGN KEY (`CARTITEM_ID`) REFERENCES `cartitem` (`CARTITEM_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `cartitem_charm_ibfk_2` FOREIGN KEY (`CHARM_ID`) REFERENCES `charm` (`CHARM_ID`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`DESIGNER_ID`) REFERENCES `designer` (`DESIGNER_ID`);

--
-- Constraints for table `itemcharm`
--
ALTER TABLE `itemcharm`
  ADD CONSTRAINT `itemcharm_ibfk_1` FOREIGN KEY (`ITEM_ID`) REFERENCES `item` (`ITEM_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `itemcharm_ibfk_2` FOREIGN KEY (`CHARM_ID`) REFERENCES `charm` (`CHARM_ID`);

--
-- Constraints for table `item_gallery`
--
ALTER TABLE `item_gallery`
  ADD CONSTRAINT `item_gallery_ibfk_1` FOREIGN KEY (`ITEM_ID`) REFERENCES `item` (`ITEM_ID`) ON DELETE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_ORDER_CUSTOMER` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`CART_ID`) REFERENCES `cart` (`CART_ID`) ON DELETE SET NULL;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`ORDER_ID`) REFERENCES `order` (`ORDER_ID`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`ITEM_ID`) REFERENCES `item` (`ITEM_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
