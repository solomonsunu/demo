-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2014 at 11:00 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `drinksearch`
--

CREATE TABLE IF NOT EXISTS `drinksearch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `drinksearch`
--

INSERT INTO `drinksearch` (`id`, `cat_name`) VALUES
(1, 'whisky'),
(2, 'brandy'),
(3, 'vodka'),
(4, 'gin'),
(5, 'rhum'),
(6, 'liquor'),
(7, 'wine'),
(8, 'juices'),
(9, 'Alcoholic Cocktails'),
(10, 'beer'),
(11, 'softdrinks'),
(12, 'water'),
(13, 'cyder'),
(14, 'Non-Alcoholic Cocktails');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE IF NOT EXISTS `food` (
  `food_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `foodcat_id` int(11) NOT NULL,
  PRIMARY KEY (`food_id`),
  KEY `foodcat_id` (`foodcat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=145 ;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `food_name`, `price`, `foodcat_id`) VALUES
(1, 'Spring roll', 5, 1),
(2, 'Kelewele', 4, 1),
(3, 'Chicken Wings(3pcs)', 8, 1),
(4, 'Tea', 5, 1),
(5, 'Green Tea', 5, 1),
(6, 'Coffee', 5, 1),
(7, 'Choco', 6, 1),
(8, 'Chicken Salad', 30, 2),
(9, 'Tuna Salad', 30, 2),
(10, 'Beef Salad', 30, 2),
(11, 'Shrimp Avocado Salad', 30, 2),
(12, 'Vegetable Salad', 20, 2),
(13, 'La Tante''s Sandwich', 10, 3),
(14, 'Tuna Sandwich', 10, 3),
(15, 'Cheese Sandwich', 10, 3),
(16, 'Club Sandwich', 15, 3),
(17, 'Fried Yam', 8, 3),
(18, 'Fried Plantain', 8, 3),
(19, 'French Fries', 10, 3),
(20, 'Local/Foreign Mushroom Saute with Vegetables', 30, 23),
(21, 'Vegetable Couscous (Jollof)', 30, 23),
(22, 'Garden Egg Stew iwth Soya Chunk', 30, 23),
(23, 'Spaghetti in Vegetable', 30, 23),
(24, ' Vegetable fried rice ', 0, 4),
(25, 'Vegetable Plantain ', 0, 4),
(26, 'Iced Fruit', 13, 25),
(27, 'King Fisher', 13, 25),
(28, 'Cosmopolitan', 15, 19),
(29, 'Pina colada', 15, 19),
(30, 'Virgin Pina colada', 15, 19),
(31, 'African Night', 15, 19),
(32, 'Pineapple Daiquiry', 15, 19),
(33, 'Vegetable plain rice', 0, 4),
(34, 'Vegetable jollof', 0, 4),
(35, 'Vegetable Boiled yam', 0, 4),
(36, 'Black label', 10, 11),
(37, 'Chivas regal', 10, 11),
(38, 'Jack daniels', 10, 11),
(39, 'J & B', 10, 11),
(40, 'Grant/?s', 10, 11),
(41, 'Courvoisier', 13, 12),
(42, 'Remy Martin', 13, 12),
(43, 'Martell', 13, 12),
(44, 'Hennessy', 8, 12),
(45, 'Beef fillet khebab', 15, 5),
(46, 'Chicken khebab', 15, 5),
(47, 'Smirnoff', 10, 13),
(48, 'Vodka ?A?', 10, 13),
(49, 'Grey Goose', 10, 13),
(50, 'Gordon?s Gin', 7, 14),
(51, 'Beefeater', 7, 14),
(52, 'Bombay Sapphire', 8, 14),
(53, 'Saint James', 8, 15),
(54, 'Captain Morgan', 8, 15),
(55, 'Malibu', 8, 15),
(56, 'Bacardi', 8, 15),
(57, 'Tequila', 8, 15),
(58, 'Grilled chicken', 30, 6),
(59, 'Seasoned fried fish', 35, 6),
(60, 'Steamed tilapia (saute sauce)', 35, 6),
(61, 'Beef steak', 35, 6),
(62, 'Lamb chops', 35, 6),
(63, 'Guinea fowl', 35, 6),
(64, 'Shredded duck in vegetable saute', 40, 6),
(65, 'Bailey/?s', 8, 16),
(66, 'Amarula', 8, 16),
(67, 'Campari', 8, 16),
(68, 'Martini Rosso', 8, 16),
(69, 'Martini Bianco', 8, 16),
(70, 'Sauvignon Blanc', 30, 17),
(71, 'Cabernet Sauvignon', 30, 17),
(72, 'Tall Horse Merlot', 30, 17),
(73, 'Wine per glass', 10, 17),
(74, 'Freshly squeezed pineapple', 5, 18),
(75, 'Watermelon', 5, 18),
(76, 'Orange', 5, 18),
(77, 'Club Bubra', 7, 20),
(78, 'Club Large', 7, 20),
(79, 'Club Mini', 5, 20),
(80, 'Coke lite', 4, 20),
(81, 'Bosue', 5, 20),
(82, 'Stone', 7, 20),
(83, 'Castle Milk Stout', 7, 20),
(84, 'Peroni', 7, 20),
(85, 'Star Large', 7, 20),
(86, 'Star Mini', 5, 20),
(87, 'Guider', 8, 20),
(88, 'Guinness', 7, 20),
(89, 'Smirnoff', 6, 20),
(90, 'Heineken', 7, 20),
(91, 'Alvaro', 5, 21),
(92, 'Malt', 5, 21),
(93, 'Coke', 4, 21),
(94, 'Coke lite', 4, 21),
(95, 'Fanta', 4, 21),
(96, 'Sprite', 4, 21),
(97, 'Tonic', 4, 21),
(98, 'Soda', 4, 21),
(99, 'Can Coke', 5, 21),
(100, 'Can Sprite', 5, 21),
(101, 'Can Fanta', 5, 21),
(102, 'Small bottle', 2, 22),
(103, 'Big bottle', 5, 22),
(104, 'Sparkling water', 7, 22),
(105, 'Jollof rice', 0, 7),
(106, 'Fried rice', 0, 7),
(107, 'Plain rice', 0, 7),
(108, 'Fried plantain', 0, 7),
(109, 'Boiled plantain ', 0, 7),
(110, 'Boiled yam', 0, 7),
(111, 'Fried yam', 0, 7),
(112, 'Potato sauce', 0, 7),
(113, 'French fries', 0, 7),
(114, 'Acheke', 0, 7),
(115, 'Gari fortor', 0, 7),
(116, 'Eba', 0, 7),
(117, 'Eba jollof ', 0, 7),
(118, 'Banku', 0, 7),
(119, 'Fufu', 0, 7),
(120, ' Vegetable coucous fish', 35, 8),
(121, 'Vegetable coucous chicken', 35, 8),
(122, 'Meatballs spaghetti', 35, 8),
(123, 'Corned beef stew with boiled plantain', 30, 8),
(124, 'Corned beef stew with rice', 30, 8),
(125, 'Corned beef stew with yam', 30, 8),
(126, ' Grilled tilapia', 35, 9),
(127, 'Okro soup(beef crab & fish)', 35, 9),
(128, 'Okro stew(fish & meat)', 35, 9),
(129, 'Palmnut soup beef & fish', 35, 9),
(130, 'Duck groundnut', 35, 9),
(131, 'Red red with fish', 35, 9),
(132, 'Palava sauce with fish', 35, 9),
(133, 'Garden egg stew', 35, 9),
(134, 'Shredded chicken', 30, 9),
(135, 'Fried yam with guinea', 35, 9),
(136, 'Fried yam with fish', 35, 9),
(137, 'Fried plantain with guinea', 35, 9),
(138, 'Fried plantain with fish', 35, 9),
(139, 'Chocolate', 8, 10),
(140, 'Vanilla', 8, 10),
(141, 'Strawberry', 8, 10),
(142, 'Yellow melon', 8, 26),
(143, 'water melon', 8, 26),
(144, 'pawpaw and pineapple(mango seasonal)', 8, 26);

-- --------------------------------------------------------

--
-- Table structure for table `foodsearch`
--

CREATE TABLE IF NOT EXISTS `foodsearch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `foodsearch`
--

INSERT INTO `foodsearch` (`id`, `cat_name`) VALUES
(1, 'Ice Cream'),
(2, 'starters'),
(3, 'salads'),
(4, 'sandwhiches'),
(5, 'vegetarian side dishes'),
(6, 'khebabs'),
(7, 'main course'),
(8, 'main course side dishes'),
(9, 'specials'),
(10, 'proud to be a ghanaian'),
(11, 'vegetarian dishes'),
(12, 'Fruit Salad');

-- --------------------------------------------------------

--
-- Table structure for table `food_category`
--

CREATE TABLE IF NOT EXISTS `food_category` (
  `foodcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `foodcat_name` varchar(25) NOT NULL,
  PRIMARY KEY (`foodcat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `food_category`
--

INSERT INTO `food_category` (`foodcat_id`, `foodcat_name`) VALUES
(1, 'starters'),
(2, 'salads'),
(3, 'sandwhiches'),
(4, 'vegetarian side dishes'),
(5, 'khebabs'),
(6, 'main course'),
(7, 'main course side dishes'),
(8, 'specials'),
(9, 'proud to be a ghanaian'),
(10, 'Ice Cream'),
(11, 'whisky'),
(12, 'brandy'),
(13, 'vodka'),
(14, 'gin'),
(15, 'rhum'),
(16, 'liquor'),
(17, 'wine'),
(18, 'juices'),
(19, 'Alcoholic Cocktails'),
(20, 'beer'),
(21, 'softdrinks'),
(22, 'water'),
(23, 'vegetarian dishes'),
(24, 'cyder'),
(25, 'Non-Alcoholic Cocktails'),
(26, 'Fruit Salad');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sum` float NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `order_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `table_number` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`user_id`,`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(150) NOT NULL,
  `usercat_id` int(11) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `usercat_id` (`usercat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `usercat_id`, `user_pass`) VALUES
(1, 'Admin', 2, 'admin'),
(2, 'Salomey Sasha', 1, 'salomey'),
(3, 'Jones The Drunk', 4, 'Jones'),
(4, 'manager', 5, 'manager'),
(5, 'Steve The Cook', 3, 'steve');

-- --------------------------------------------------------

--
-- Table structure for table `user_category`
--

CREATE TABLE IF NOT EXISTS `user_category` (
  `usercat_id` int(11) NOT NULL AUTO_INCREMENT,
  `usercat_name` varchar(25) NOT NULL,
  PRIMARY KEY (`usercat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_category`
--

INSERT INTO `user_category` (`usercat_id`, `usercat_name`) VALUES
(1, 'waitress'),
(2, 'admin'),
(3, 'kitchen staff'),
(4, 'barman'),
(5, 'manager');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`foodcat_id`) REFERENCES `food_category` (`foodcat_id`) ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`usercat_id`) REFERENCES `user_category` (`usercat_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
