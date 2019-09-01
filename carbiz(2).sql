-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2019 at 02:50 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carbiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_blog`
--

CREATE TABLE `carbiz_blog` (
  `id` int(11) NOT NULL,
  `type` char(30) NOT NULL,
  `featured_img` char(200) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_blog`
--

INSERT INTO `carbiz_blog` (`id`, `type`, `featured_img`, `title`, `description`, `created_by`, `create_time`, `status`) VALUES
(1, 'blog', '1496241320-image-1496238504.png', '{\"en\":\"Demo blog post en\",\"es\":\"\",\"ru\":\"Demo blog post ru\",\"ar\":\"hello world\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', '{\"en\":\"<p>en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.<\\/p>\\r\\n<p>en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.en demo blog post content.<\\/p>\",\"es\":\"\",\"ru\":\"<p>ru demo blog post content.<\\/p>\",\"ar\":\"<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.<\\/p>\\r\\n<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.<\\/p>\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', 1, 1522861073, 1),
(2, 'article', 'prius-url1.jpg', '{\"en\":\"Lorem ipsum doller sit amet\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', '{\"en\":\"<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet.Lorem ipsum doller sit ametLorem ipsum doller sit amet<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', 1, 1522861125, 1),
(3, 'news', 'abt-audi-r81.jpg', '{\"en\":\"Lorem ipsum doller sit ametLorem ipsum doller sit amet\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', '{\"en\":\"<p>Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet<\\/p>\\r\\n<p>Lorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit ametLorem ipsum doller sit amet<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', 1, 1522861243, 1),
(4, 'blog', 'vanquish-s-ultimate_02.jpg', '{\"en\":\"My Blog\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', '{\"en\":\"<p style=text-align: justify>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', 1, 1521907619, 1);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_blog_meta`
--

CREATE TABLE `carbiz_blog_meta` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `key` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_brandmodels`
--

CREATE TABLE `carbiz_brandmodels` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `name` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` char(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_brandmodels`
--

INSERT INTO `carbiz_brandmodels` (`id`, `parent`, `name`, `type`, `status`) VALUES
(1, 0, 'Alfa Romeo', 'brand', 1),
(2, 0, ' Acura', 'brand', 1),
(3, 0, ' Aston Martin', 'brand', 1),
(4, 0, ' Audi', 'brand', 1),
(5, 0, 'Bentley', 'brand', 1),
(6, 0, ' BMW', 'brand', 1),
(7, 0, ' Cadillac', 'brand', 1),
(8, 0, ' Chevrolet', 'brand', 1),
(9, 0, ' Chrysler', 'brand', 1),
(10, 0, ' Citroen', 'brand', 1),
(11, 0, ' Corvette', 'brand', 1),
(12, 0, ' Dacia', 'brand', 1),
(13, 0, ' Dodge', 'brand', 1),
(14, 0, ' Ferrari', 'brand', 1),
(15, 0, ' Fiat', 'brand', 1),
(16, 0, ' Ford', 'brand', 1),
(17, 0, ' GMC', 'brand', 1),
(18, 0, ' Honda', 'brand', 1),
(19, 0, ' Hyundai', 'brand', 1),
(20, 0, ' Infiniti', 'brand', 1),
(21, 0, ' Isuzu', 'brand', 1),
(22, 0, ' Jaguar', 'brand', 1),
(23, 0, ' Jeep', 'brand', 1),
(24, 0, ' KIA', 'brand', 1),
(25, 0, ' Lamborghini', 'brand', 1),
(26, 0, ' Lancia', 'brand', 1),
(27, 0, ' Land Rover', 'brand', 1),
(28, 0, ' Lexus', 'brand', 1),
(29, 0, ' Lotus', 'brand', 1),
(30, 0, ' Maserati', 'brand', 1),
(31, 0, ' Mazda', 'brand', 1),
(32, 0, ' McLaren', 'brand', 1),
(33, 0, ' Mercedes-Benz', 'brand', 1),
(34, 0, ' Mini', 'brand', 1),
(35, 0, ' Mitsubishi', 'brand', 1),
(36, 0, ' Nissan', 'brand', 1),
(37, 0, ' Opel', 'brand', 1),
(38, 0, ' Peugeot', 'brand', 1),
(39, 0, ' Porsche', 'brand', 1),
(40, 0, ' Proton', 'brand', 1),
(41, 0, ' Renault', 'brand', 1),
(42, 0, ' Rolls-Royce', 'brand', 1),
(43, 0, ' Saab', 'brand', 1),
(44, 0, ' Seat', 'brand', 1),
(45, 0, ' Skoda', 'brand', 1),
(46, 0, ' Subaru', 'brand', 1),
(47, 0, ' Suzuki', 'brand', 1),
(48, 0, ' Toyota', 'brand', 1),
(49, 0, ' Vauxhall', 'brand', 1),
(50, 0, ' Volkswagen', 'brand', 1),
(51, 0, ' Volvo', 'brand', 1),
(52, 6, 'F48', 'model', 1),
(53, 6, 'F80', 'model', 1),
(54, 6, 'F82', 'model', 1),
(55, 6, 'F83', 'model', 1),
(56, 6, 'F85', 'model', 1),
(57, 6, 'F86', 'model', 1),
(58, 6, 'G11', 'model', 1),
(59, 6, 'G12', 'model', 1),
(60, 6, 'G30', 'model', 1),
(61, 6, 'E24', 'model', 1),
(62, 6, 'M3', 'model', 1),
(63, 6, 'M5', 'model', 1),
(64, 6, 'Z4 Roadster', 'model', 1),
(65, 6, 'X6M', 'model', 1),
(66, 4, 'A1', 'model', 1),
(67, 4, 'A4', 'model', 1),
(68, 4, 'A5', 'model', 1),
(69, 4, 'A6', 'model', 1),
(70, 4, 'A7', 'model', 1),
(71, 4, 'A8', 'model', 1),
(72, 4, 'TT', 'model', 1),
(73, 4, 'R8', 'model', 1),
(74, 4, 'Q3', 'model', 1),
(75, 4, 'Q5', 'model', 1),
(76, 4, 'Q7', 'model', 1),
(77, 48, 'Prius', 'model', 1),
(78, 48, 'Celica', 'model', 1),
(79, 48, 'Supra', 'model', 1),
(80, 48, 'Carina', 'model', 1),
(81, 48, 'Camry', 'model', 1),
(82, 48, 'MR2', 'model', 1),
(83, 48, 'Premio', 'model', 1),
(84, 48, 'Corolla', 'model', 1),
(85, 48, 'Allion', 'model', 1),
(86, 48, 'Axio', 'model', 1),
(87, 16, 'Escape', 'model', 1),
(88, 16, 'Mustang', 'model', 1),
(89, 16, 'Fusion', 'model', 1),
(90, 16, 'Taurus', 'model', 1),
(91, 16, 'Explorer', 'model', 1),
(92, 16, 'Edge', 'model', 1),
(93, 16, 'Fiesta', 'model', 1),
(94, 39, 'Cayenne', 'model', 1),
(95, 39, '911', 'model', 1),
(96, 39, 'Boxster', 'model', 1),
(97, 39, '912', 'model', 1),
(98, 39, 'Panamera', 'model', 1),
(99, 39, 'Carrera', 'model', 1),
(100, 39, 'Cayman', 'model', 1),
(101, 7, 'Escalade', 'model', 1),
(102, 7, 'CTS-V', 'model', 1),
(103, 7, 'SRX', 'model', 1),
(104, 7, 'Eldorado', 'model', 1),
(105, 7, 'Cimarron', 'model', 1),
(106, 7, 'Seville', 'model', 1),
(107, 7, 'XTS', 'model', 1),
(108, 7, 'ATS', 'model', 1),
(109, 14, '750 Monza', 'model', 1),
(110, 14, 'Barchetta', 'model', 1),
(111, 14, '312PB', 'model', 1),
(112, 14, 'Testa Rossa', 'model', 1),
(113, 14, '330 LMB', 'model', 1),
(114, 14, '458 Italia', 'model', 1),
(115, 1, 'MiTo', 'model', 1),
(116, 1, 'Giulietta', 'model', 1),
(117, 1, '4C', 'model', 1),
(118, 2, 'ILX', 'model', 1),
(119, 2, 'MDX', 'model', 1),
(120, 2, 'RDX', 'model', 1),
(121, 2, 'RLX', 'model', 1),
(122, 2, 'TLX', 'model', 1),
(123, 3, 'V8 Vantage', 'model', 1),
(124, 3, 'V12 Vantage', 'model', 1),
(125, 3, 'DB9', 'model', 1),
(126, 3, 'Vanquish', 'model', 1),
(127, 3, 'Rapide', 'model', 1),
(128, 8, 'Agile', 'model', 1),
(129, 8, 'Aveo', 'model', 1),
(130, 8, 'Celta', 'model', 1),
(131, 8, 'Classic', 'model', 1),
(132, 8, 'Lova', 'model', 1),
(133, 8, 'Lanos', 'model', 1),
(134, 8, 'Onix', 'model', 1),
(135, 8, 'Prisma', 'model', 1),
(136, 8, 'Sail', 'model', 1),
(137, 8, 'Sonic', 'model', 1),
(138, 8, 'Spark', 'model', 1),
(139, 8, 'Cobalt', 'model', 1),
(140, 8, 'Cruze', 'model', 1),
(141, 8, 'Lacetti', 'model', 1),
(142, 8, 'Volt', 'model', 1),
(143, 8, 'Malibu', 'model', 1),
(144, 8, 'Caprice', 'model', 1),
(145, 8, 'Impala', 'model', 1),
(146, 8, 'Lumina', 'model', 1),
(147, 8, 'SS', 'model', 1),
(148, 8, 'Corvette', 'model', 1),
(149, 8, 'Camaro', 'model', 1),
(150, 8, 'Orlando', 'model', 1),
(151, 8, 'Spin', 'model', 1),
(152, 8, 'Tavera', 'model', 1),
(153, 8, 'Captiva', 'model', 1),
(154, 8, 'Niva', 'model', 1),
(155, 8, 'Colorado', 'model', 1),
(156, 8, 'Express', 'model', 1),
(157, 8, 'Montana', 'model', 1),
(158, 8, 'Tornado', 'model', 1),
(159, 9, 'Ypsilon', 'model', 1),
(160, 9, 'Delta', 'model', 1),
(161, 9, '300', 'model', 1),
(162, 9, 'Grand Voyager', 'model', 1),
(163, 10, 'C1', 'model', 1),
(164, 10, 'C4 Picasso', 'model', 1),
(165, 10, 'Aircross', 'model', 1),
(166, 10, 'C- Elysse', 'model', 1),
(167, 10, 'C3 Picasso', 'model', 1),
(168, 10, 'C4', 'model', 1),
(169, 10, 'C4 Cactus', 'model', 1),
(170, 13, 'Avenger', 'model', 1),
(171, 13, 'Grand Caravan', 'model', 1),
(172, 13, 'Challenger', 'model', 1),
(173, 13, 'Charger', 'model', 1),
(174, 13, 'Dart', 'model', 1),
(175, 13, 'Durango', 'model', 1),
(176, 13, 'Journey', 'model', 0),
(177, 17, 'Sierra', 'model', 1),
(178, 17, 'Syclone', 'model', 1),
(179, 17, 'Sonoma', 'model', 1),
(180, 17, 'Canyon', 'model', 1),
(181, 17, 'TopKick', 'model', 1),
(182, 17, 'Forward', 'model', 1),
(183, 17, 'W-Series', 'model', 1),
(184, 17, 'T-Series', 'model', 1),
(185, 17, 'Typhoon', 'model', 1),
(186, 17, 'Envoy', 'model', 1),
(187, 17, 'Acadia', 'model', 1),
(188, 17, 'Terrain', 'model', 1),
(189, 18, 'Accord', 'model', 1),
(190, 18, 'Acty', 'model', 1),
(191, 18, 'Brio', 'model', 1),
(192, 18, 'City', 'model', 1),
(193, 18, 'Civic', 'model', 1),
(194, 18, 'CR-V', 'model', 1),
(195, 18, 'Elysion', 'model', 1),
(196, 18, 'HR-V', 'model', 1),
(197, 18, 'NSX', 'model', 1),
(198, 18, 'Pilot', 'model', 1),
(199, 18, 'Shuttle', 'model', 1),
(200, 18, 'Vamos', 'model', 1),
(201, 18, 'ZEST', 'model', 1),
(202, 19, 'Accent', 'model', 1),
(203, 19, 'Ventam Genesis', 'model', 1),
(204, 19, 'Eon', 'model', 1),
(205, 19, 'Atos', 'model', 1),
(206, 19, 'Santro', 'model', 1),
(207, 19, 'Avante', 'model', 1),
(208, 0, 'tesyt', 'brand', 1),
(209, 2, 'sdfsdfsdf', 'model', 0),
(210, 0, 'test brand3', 'brand', 0),
(211, 0, 'test brand4', 'brand', 1),
(212, 2, 'test model under1', 'model', 0),
(213, 2, 'under2', 'model', 0),
(214, 0, 'Tesla', 'brand', 1),
(215, 214, 'Model S', 'model', 1),
(216, 214, 'Model X', 'model', 1),
(217, 214, 'Model 3', 'model', 1);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_categories`
--

CREATE TABLE `carbiz_categories` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `title` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `featured_img` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `show_menu` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `create_time` int(15) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_categories`
--

INSERT INTO `carbiz_categories` (`id`, `parent`, `title`, `fa_icon`, `featured_img`, `show_menu`, `created_by`, `create_time`, `status`) VALUES
(1, 0, 'hatchback', 'fa-car', 'hatchback1.png', 0, 2, 1516955775, 1),
(2, 0, 'van', 'fa-car', 'van.png', 0, 2, 1516955797, 1),
(3, 0, 'trucks', 'fa-car', 'trucks.png', 0, 1, 1516955817, 1),
(4, 0, 'sedan', 'fa-car', 'sedan.png', 0, 1, 1516955836, 1),
(6, 0, 'suv', 'fa-car', 'suv.png', 0, 1, 1516955873, 1),
(7, 0, 'sports_car', 'fa-car', 'sports-car.png', 0, 1, 1516955898, 1),
(8, 0, 'convertible', 'fa-car', 'convertible.png', 0, 1, 1516955916, 1),
(9, 0, 'coupe', 'fa-car', 'coupe.png', 0, 1, 1516955943, 1);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_customfields`
--

CREATE TABLE `carbiz_customfields` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT 0,
  `name` char(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` char(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_required` int(1) NOT NULL DEFAULT 0,
  `help_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_in_detail` int(1) NOT NULL DEFAULT 0,
  `show_in_search` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carbiz_customfields`
--

INSERT INTO `carbiz_customfields` (`id`, `category_id`, `name`, `type`, `options`, `is_required`, `help_text`, `show_in_detail`, `show_in_search`, `sort_order`, `status`) VALUES
(1, 0, 'no_of_seats', 'text', '', 0, 'help_no_of_seats', 1, 0, 7, 1),
(2, 0, 'gear_type', 'select', 'automatic,manual,dual', 0, 'help_gear_type', 1, 0, 8, 1),
(3, 0, 'safety_rating', 'select', '1,2,3,4,5', 0, 'sel_safety_rating', 1, 0, 5, 1),
(4, 0, 'engine_type', 'select', 'inline,straight,vee,flat,vr_w,other', 0, 'help_engine_type', 1, 0, 6, 1),
(5, 0, 'Year Used3', 'text', '', 1, 'Specify how many years you used the car', 0, 0, 0, 0),
(6, 0, 'registration_no', 'text', '', 0, 'registration_no', 0, 0, 2, 1),
(7, 0, 'fuel_type', 'select', 'gas,diesel,petrol,octane,electricity,others', 1, 'sel_fuel_type', 0, 0, 1, 0),
(8, 0, 'engine_size', 'text', '', 0, 'help_engine_size', 1, 0, 3, 1),
(9, 0, 'steering_type', 'select', 'power_steering,manual_steering', 0, 'help_steering_type', 1, 0, 4, 1),
(10, 0, 'exterior_color', 'text', '', 0, 'help_exterior_color', 0, 0, 9, 0),
(11, 0, 'interior_color', 'text', '', 0, 'help_interior_color', 0, 0, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_emailtmpl`
--

CREATE TABLE `carbiz_emailtmpl` (
  `id` int(11) NOT NULL,
  `email_name` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `values` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_emailtmpl`
--

INSERT INTO `carbiz_emailtmpl` (`id`, `email_name`, `values`, `status`) VALUES
(1, 'confirmation_email', '{\"subject\":\"Confirmation email\",\"body\":\"Hi #username,\\r\\nYour signup is successful. Please follow the below link for activating your account:\\r\\n \\r\\n#activationlink\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\r\\nThanks\\r\\n#webadmin\",\"avl_vars\":\"#username,#useremail,#activationlink,#webadmin\"}', 1),
(2, 'recovery_email', '{\"subject\":\"Recovery email\",\"body\":\"Hi #username,\\r\\nWe have received an account recovery request from your email. Please follow the below link for setting new password \\r\\n\\r\\n#recoverylink\\r\\n\\r\\nThanks\\r\\n#webadmin\",\"avl_vars\":\"#username,#recoverylink,#webadmin\"}', 1),
(3, 'payment_confirmation_email', '{\"subject\":\"Confirmation email\",\"body\":\"Hi #username,\\r\\nYou decided to make a payment. You can resume the payment from the following link\\r\\n\\r\\n#resumelink\\r\\n\\r\\nThanks\\r\\n#webadmin\",\"avl_vars\":\"#username,#resumelink,#webadmin\"}', 1),
(4, 'post_expiration_notification', '{\"subject\":\"Post expiration notification\",\"body\":\"Dear user \\r\\nOne or more of your posts are going to be expired within #no_of_days days. If you want to renew them then please follow the below link \\r\\n\\r\\n#all_posts_link\\r\\n\\r\\nThanks\\r\\n#webadmin\",\"avl_vars\":\"#no_of_days,#all_posts_link,#webadmin\"}', 1),
(5, 'post_published_email', '{\"subject\":\"Post approval notification\",\"body\":\"Dear #username \\r\\nYour post has been published\\r\\n\\r\\n#post_link\\r\\n\\r\\nThanks\\r\\n#webadmin\",\"avl_vars\":\"#username,#post_link,#webadmin\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_locations`
--

CREATE TABLE `carbiz_locations` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `parent_country` int(11) NOT NULL,
  `name` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_locations`
--

INSERT INTO `carbiz_locations` (`id`, `parent`, `parent_country`, `name`, `type`, `status`) VALUES
(1, 0, 0, 'USA', 'country', 1),
(2, 0, 0, ' Canada', 'country', 1),
(3, 0, 0, ' UK', 'country', 1),
(4, 0, 0, ' Mexico', 'country', 1),
(5, 1, 1, 'Alabama', 'state', 1),
(6, 1, 1, ' Alaska', 'state', 1),
(7, 1, 1, ' Arizona', 'state', 1),
(8, 1, 1, ' Arkansas', 'state', 1),
(9, 1, 1, ' California', 'state', 1),
(10, 1, 1, ' Colorado', 'state', 1),
(11, 1, 1, ' Connecticut', 'state', 1),
(12, 1, 1, ' Delaware', 'state', 1),
(13, 1, 1, ' Florida', 'state', 1),
(14, 1, 1, ' Georgia', 'state', 1),
(15, 1, 1, ' Hawaii', 'state', 1),
(16, 1, 1, ' Idaho', 'state', 1),
(17, 1, 1, ' Illinois', 'state', 1),
(18, 1, 1, ' Indiana', 'state', 1),
(19, 1, 1, ' Iowa', 'state', 1),
(20, 1, 1, ' Kansas', 'state', 1),
(21, 1, 1, ' Kentucky', 'state', 1),
(22, 1, 1, ' Louisiana', 'state', 1),
(23, 1, 1, ' Maine', 'state', 1),
(24, 1, 1, ' Maryland', 'state', 1),
(25, 1, 1, ' Massachusetts', 'state', 1),
(26, 1, 1, ' Michigan', 'state', 1),
(27, 1, 1, ' Minnesota', 'state', 1),
(28, 1, 1, ' Mississippi', 'state', 1),
(29, 1, 1, ' Missouri', 'state', 1),
(30, 1, 1, ' Montana', 'state', 1),
(31, 1, 1, ' Nebraska', 'state', 1),
(32, 1, 1, ' Nevada', 'state', 1),
(33, 1, 1, ' New Hampshire', 'state', 1),
(34, 1, 1, ' New Jersey', 'state', 1),
(35, 1, 1, ' New Mexico', 'state', 1),
(36, 1, 1, ' New York', 'state', 1),
(37, 1, 1, ' North Carolina', 'state', 1),
(38, 1, 1, ' North Dakota', 'state', 1),
(39, 1, 1, ' Ohio', 'state', 1),
(40, 1, 1, ' Oklahoma', 'state', 1),
(41, 1, 1, ' Oregon', 'state', 1),
(42, 1, 1, ' Pennsylvania', 'state', 1),
(43, 1, 1, ' Rhode Island', 'state', 1),
(44, 1, 1, ' South Carolina', 'state', 1),
(45, 1, 1, ' South Dakota', 'state', 1),
(46, 1, 1, ' Tennessee', 'state', 1),
(47, 1, 1, ' Texas', 'state', 1),
(48, 1, 1, ' Utah', 'state', 1),
(49, 1, 1, ' Vermont', 'state', 1),
(50, 1, 1, ' Virginia', 'state', 1),
(51, 1, 1, ' Washington', 'state', 1),
(52, 1, 1, ' West Virginia', 'state', 1),
(53, 1, 1, ' Wisconsin', 'state', 1),
(54, 1, 1, ' Wyoming', 'state', 1),
(55, 2, 2, 'Alberta', 'state', 1),
(56, 2, 2, ' British Columbia', 'state', 1),
(57, 2, 2, ' Manitoba', 'state', 1),
(58, 2, 2, ' New Brunswick', 'state', 1),
(59, 2, 2, ' Newfoundland', 'state', 1),
(60, 2, 2, ' Northwest Territories', 'state', 1),
(61, 2, 2, ' Nova Scotia', 'state', 1),
(62, 2, 2, ' Nunavut', 'state', 1),
(63, 2, 2, ' Ontario', 'state', 1),
(64, 2, 2, ' Prince Edward Island', 'state', 1),
(65, 2, 2, ' Quebec', 'state', 1),
(66, 2, 2, ' Saskatchewan', 'state', 1),
(67, 2, 2, ' Yukon', 'state', 1),
(68, 9, 1, 'Los Angeles', 'city', 1),
(69, 9, 1, 'San Diego', 'city', 1),
(70, 9, 1, 'Palm Sprigs', 'city', 1),
(71, 9, 1, 'San Francisco', 'city', 1),
(72, 9, 1, 'Long Beach', 'city', 1),
(73, 5, 1, 'Florence', 'city', 1),
(74, 5, 1, 'Northport', 'city', 1),
(75, 5, 1, 'Columbiana', 'city', 1),
(76, 13, 1, 'Miami', 'city', 1),
(77, 32, 1, 'Las Vegas', 'city', 1),
(78, 7, 1, 'Phoenix', 'city', 1),
(79, 35, 1, 'Albuquerque', 'city', 1),
(80, 7, 1, 'Tucson', 'city', 1),
(81, 10, 1, 'Denver', 'city', 1),
(82, 35, 1, 'Santa Fe', 'city', 1),
(83, 36, 1, 'New York', 'city', 1),
(84, 42, 1, 'Philadelphia', 'city', 1),
(85, 13, 1, 'Jacksonville', 'city', 1),
(86, 13, 1, 'maime', 'city', 1),
(88, 50, 1, 'Alexandria', 'city', 1),
(89, 15, 1, 'Honolulu', 'city', 1),
(90, 36, 1, 'Brooklyn', 'city', 1),
(91, 14, 1, 'Atlanta', 'city', 1);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_media`
--

CREATE TABLE `carbiz_media` (
  `id` int(10) NOT NULL,
  `media_name` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `media_url` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `created_by` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_options`
--

CREATE TABLE `carbiz_options` (
  `id` int(11) NOT NULL,
  `key` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `values` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_options`
--

INSERT INTO `carbiz_options` (`id`, `key`, `values`, `status`) VALUES
(1, 'site_settings', '{\"site_title\":\"CarBiz-\",\"footer_text\":\"CarBiz 2018, all rights reserved\",\"site_logo\":\"car-logo3.png\",\"logo_text\":\"CarBiz\",\"logo_text_color\":\"#ffffff\",\"logo_type\":\"Image\",\"logo_type_rules\":\"required\",\"site_lang\":\"en\",\"site_direction\":\"ltr\",\"site_direction_rules\":\"required\",\"per_page\":\"10\",\"default_layout\":\"1\",\"css_compression\":\"Yes\",\"site_mode\":\"production\",\"facebook_page_name\":\"webhelios\",\"google_plus_name\":\"webhelios\",\"twitter_page_name\":\"webheliosteam\",\"ga_tracking_code\":\"\",\"meta_description\":\"Buy Sell Cars Marketplace CMS Script\",\"crawl_after\":\"3\"}', 1),
(2, 'active_theme', 'default', 1),
(3, 'positions', '[{\"name\":\"home_page\",\"status\":1,\"widgets\":[\"featured_posts_main\",\"recent_posts_main\",\"adsense_full_width\",\"top_locations_home\",\"category_main\"]},{\"name\":\"right_bar_home\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"top_posts\",\"category_sidebar\",\"top_users\",\"adsense_sidebar\",\"recent_post\",\"newsletter_sidebar\",\"google_plus_page_box\",\"social_share_button\"]},{\"name\":\"right_bar_detail\",\"status\":1,\"widgets\":[\"adsense_sidebar\",\"plain_search_widget\",\"recent_post\",\"top_locations_sidebar\"]},{\"name\":\"right_bar_all_users\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"featured_post\",\"top_locations_sidebar\",\"category_sidebar\",\"recent_post\"]},{\"name\":\"right_bar_locations\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"recent_post\",\"top_locations_sidebar\",\"category_sidebar\",\"featured_post\",\"adsense_sidebar\"]},{\"name\":\"right_bar_categories\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"recent_post\",\"adsense_sidebar\",\"fb_likebox\",\"top_locations_sidebar\",\"category_featured_post\"]},{\"name\":\"right_bar_search_page\",\"status\":1,\"widgets\":false},{\"name\":\"right_bar_general\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"featured_post\",\"top_locations_sidebar\",\"category_sidebar\"]},{\"name\":\"right_bar_blog_posts\",\"status\":1,\"widgets\":[\"plain_search_widget\",\"top_locations_sidebar\",\"featured_post\"]},{\"name\":\"footer_first_column\",\"status\":1,\"widgets\":[\"contact_text\"]},{\"name\":\"footer_second_column\",\"status\":1,\"widgets\":[\"useful_links\"]},{\"name\":\"footer_third_column\",\"status\":1,\"widgets\":[\"short_description\"]},{\"name\":\"side_bar_search_page\",\"status\":1,\"widgets\":[]}]', 1),
(4, 'top_menu', '[{\"id\":\"1\",\"parent\":0},{\"id\":\"10\",\"parent\":0},{\"id\":\"2\",\"parent\":0},{\"id\":\"9\",\"parent\":0},{\"id\":\"5\",\"parent\":\"9\"},{\"id\":\"11\",\"parent\":\"9\"},{\"id\":\"3\",\"parent\":\"9\"},{\"id\":\"6\",\"parent\":\"9\"},{\"id\":\"7\",\"parent\":\"9\"},{\"id\":\"8\",\"parent\":\"9\"},{\"id\":\"4\",\"parent\":0}]', 1),
(5, 'purchase_key', '', 1),
(6, 'item_id', '', 1),
(7, 'paypal_settings', '{\"enable_sandbox_mode\":\"Yes\",\"enable_sandbox_mode_rules\":\"required\",\"item_name\":\"Publish Business\",\"item_name_rules\":\"required\",\"email\":\"seller@paypalsandbox.com\",\"email_rules\":\"required\",\"currency\":\"USD\",\"currency_rules\":\"required\",\"finish_url\":\"user\\/payment\\/finish_url\",\"finish_url_rules\":\"required\",\"cancel_url\":\"user\\/payment\\/cancel_url\",\"cancel_url_rules\":\"required\"}', 1),
(8, 'banner_settings', '{\"show_banner\":\"Yes\",\"top_bar_bg_color\":\"#222222\",\"menu_bg_color\":\"#ffffff\",\"menu_text_color\":\"#666\",\"active_menu_text_color\":\"#32c8de\",\"banner_type\":\"Layer Slider\",\"search_panel_bg_color\":\"#156156\",\"show_search_panel\":\"Yes\",\"search_panel_filter_type\":\"basic_options\",\"show_bg_image\":null,\"search_bg\":\"fw-2.jpg\",\"map_latitude\":\"34.0204989\",\"map_longitude\":\"-118.4117325\",\"map_zoom\":\"7\",\"map_api_key\":\"AIzaSyDnz1LGggEI62zytPmdNTkRa2-ohud9_oY\"}', 1),
(9, 'webadmin_email', '{\"contact_email\":\"support@motosellers.com\",\"webadmin_name\":\"Webadmin\",\"webadmin_email\":\"support@motosellers.com\"}', 1),
(10, 'smtp_settings', '{\"smtp_email\":\"Disable\",\"smtp_email_rules\":\"required\",\"smtp_host\":\"ssl:\\/\\/smtp.googlemail.com\",\"smtp_host_rules\":\"required\",\"smtp_port\":\"465\",\"smtp_port_rules\":\"required\",\"smtp_timeout\":\"30\",\"smtp_timeout_rules\":\"required\",\"smtp_user\":\"test@example.com\",\"smtp_user_rules\":\"required|valid_email\",\"smtp_pass\":\"1234\",\"smtp_pass_rules\":\"required\",\"char_set\":\"utf-8\",\"char_set_rules\":\"required\",\"new_line\":\"\\\\r\\\\n\",\"new_line_rules\":\"required\",\"mail_type\":\"html\",\"mail_type_rules\":\"required\"}', 1),
(11, 'content_settings', '{\"publish_directly\":\"Yes\",\"publish_directly_rules\":\"required\",\"system_currency\":\"NGN\",\"system_currency_type\":\"0\",\"system_currency_rules\":\"required\",\"enable_signup\":\"Yes\",\"enable_signup_rules\":\"required\",\"hide_posts_if_expired\":\"No\",\"hide_posts_if_expired_rules\":\"required\",\"show_admin_agent\":\"Yes\",\"show_admin_agent_rules\":\"required\",\"mileage_unit\":\"miles\",\"min_car_price\":\"200\",\"max_car_price\":\"500000\",\"disable_location\":\"no\",\"disable_location_rules\":\"required\",\"show_state_province\":\"yes\",\"show_state_province_rules\":\"required\",\"city_dropdown\":\"dropdown\",\"city_dropdown_rules\":\"required\",\"show_distance_in\":\"miles\",\"show_distance_in_rules\":\"required\",\"posts_per_page\":\"8\",\"posts_per_page_rules\":\"required\",\"currency_placing\":\"before_with_no_gap\",\"currency_placing_rules\":\"required\",\"enable_review\":\"Yes\",\"enable_review_rules\":\"required\",\"max_upload_file_size\":\"2048\",\"max_upload_file_size_rules\":\"required\",\"recent_posts_order\":\"RANDOM\",\"recent_posts_order_rules\":\"required\",\"featured_posts_order\":\"RANDOM\",\"featured_posts_order_rules\":\"required\",\"default_posts_order\":\"RANDOM\",\"default_posts_order_rules\":\"required\",\"enable_adblocker_alert\":\"No\",\"enable_adblocker_alert_rules\":\"required\",\"enable_cookie_policy_popup\":\"Yes\",\"enable_cookie_policy_popup_rules\":\"required\",\"cookie_policy_page_url\":\"show\\/page\\/cookie_policy\",\"cookie_policy_page_url_rules\":\"required\",\"enable_fb_login\":\"No\",\"enable_fb_login_rules\":\"required\",\"fb_app_id\":\"1986781321439408\",\"fb_app_id_rules\":\"\",\"fb_secret_key\":\"a3ef0853144af2b412ea44f7e9f5ab62\",\"fb_secret_key_rules\":\"\",\"enable_gplus_login\":\"No\",\"enable_gplus_login_rules\":\"required\",\"gplus_app_id\":\"3453453\",\"gplus_app_id_rules\":\"\",\"gplus_secret_key\":\"34534534\",\"gplus_secret_key_rules\":\"\",\"enable_comment\":\"No\",\"enable_comment_rules\":\"required\",\"fb_comment_app_id\":\"webhelios\",\"fb_comment_app_id_rules\":\"\",\"disqus_shortname\":\"\",\"disqus_shortname_rules\":\"\",\"enable_blog_comment\":\"Disqus Comment\",\"enable_blog_comment_rules\":\"required\",\"fb_blog_comment_app_id\":\"\",\"fb_blog_comment_app_id_rules\":\"\",\"disqus_blog_shortname\":\"motosellers\",\"disqus_blog_shortname_rules\":\"required\"}', 1),
(12, 'package_settings', '{\"enable_pricing\":\"Yes\",\"enable_pricing_rules\":\"required\",\"enable_paypal_transfer\":\"Yes\",\"enable_paypal_transfer_rules\":\"required\",\"enable_bank_transfer\":\"Yes\",\"enable_bank_transfer_rules\":\"required\",\"bank_transfer_instruction_for_posts\":\"Please mention your transaction id while making bank transfer\\nAccount no : #**********\\nBank name : ABC Bank\",\"bank_transfer_instruction_for_posts_rules\":\"required\",\"enable_featured_pricing\":\"Yes\",\"enable_featured_pricing_rules\":\"required\",\"enable_featured_paypal_transfer\":\"Yes\",\"enable_featured_paypal_transfer_rules\":\"required\",\"enable_featured_bank_transfer\":\"Yes\",\"enable_featured_bank_transfer_rules\":\"required\",\"bank_transfer_instruction_for_featured_posts\":\"Please mention your transaction id while making bank transfer\\nAccount no : #**********\\nBank name : ABC Bank\",\"bank_transfer_instruction_for_featured_posts_rules\":\"required\",\"bank_currency\":\"use_paypal\",\"bank_currency_rules\":\"required\"}', 1),
(13, 'last_expiration_cron_date', '2019-08-30', 1),
(14, 'conditions', '[\"condition_new\",\"condition_used\",\"condition_pre_owned\",\"condition_recondition\",\"condition_other\"]', 1),
(15, 'cartypes', '[{\"name\":\"Hatchback\",\"icon\":\"hatchback.png\"},{\"name\":\"Van\",\"icon\":\"van.png\"},{\"name\":\"Trucks\",\"icon\":\"trucks.png\"},{\"name\":\"Sedan\",\"icon\":\"sedan.png\"},{\"name\":\"Luxury Car\",\"icon\":\"luxury-car.png\"},{\"name\":\"SUV\",\"icon\":\"suv.png\"},{\"name\":\"Sports Car\",\"icon\":\"sports-car.png\"},{\"name\":\"Convertible\",\"icon\":\"convertible.png\"},{\"name\":\"Coupe\",\"icon\":\"coupe.png\"}]', 1),
(16, 'transmissions', '[\"automatic\",\"manual\",\"semi_automatic\",\"others\"]', 1),
(17, 'fueltypes', '[\"gas\",\"diesel\",\"petrol\",\"octane\",\"electricity\",\"others\"]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_packages`
--

CREATE TABLE `carbiz_packages` (
  `id` int(11) NOT NULL,
  `type` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post_package',
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `expiration_time` int(11) NOT NULL,
  `featured_expiration_time` int(11) NOT NULL DEFAULT 0,
  `max_gallery_photos` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_packages`
--

INSERT INTO `carbiz_packages` (`id`, `type`, `title`, `description`, `price`, `expiration_time`, `featured_expiration_time`, `max_gallery_photos`, `status`) VALUES
(1, 'post_package', 'free', '', '0.00', 2, 0, 2, 1),
(2, 'post_package', 'normal', '', '5.00', 7, 0, 5, 1),
(3, 'post_package', 'premium', '', '10.00', 20, 10, 10, 1),
(4, 'featured_package', 'basic', '', '3.00', 0, 5, 0, 1),
(5, 'featured_package', 'ultimate', '', '5.00', 0, 10, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_pages`
--

CREATE TABLE `carbiz_pages` (
  `id` int(11) NOT NULL,
  `alias` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `show_in_menu` int(1) NOT NULL DEFAULT 1,
  `layout` int(1) NOT NULL,
  `content_from` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Manual',
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` char(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sidebar` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `seo_settings` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` int(20) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `editable` int(1) NOT NULL DEFAULT 1,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_pages`
--

INSERT INTO `carbiz_pages` (`id`, `alias`, `show_in_menu`, `layout`, `content_from`, `title`, `url`, `content`, `sidebar`, `seo_settings`, `create_time`, `status`, `editable`, `parent`) VALUES
(1, 'home', 1, 1, 'Url', '[home]', '', '', '', '{\"meta_description\":\"search top cars near your location of various categories like coupe sedan van suv\",\"key_words\":\"sale,rent,buy,classified,cms,whiz,electronics,real estate,pets,fashion\",\"crawl_after\":\"3\"}', 1522345431, 1, 0, 0),
(2, 'advanced_search', 1, 1, 'Url', '[advanced_search]', 'results', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 2147483647, 1, 0, 0),
(3, 'about', 1, 1, 'Manual', '[about]', 'page/about', '<p style=text-align: justify>Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet.</p>\r\n<p style=text-align: justify>Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet. Lorem ipsum doller sit amet.</p>\r\n<p style=text-align: justify>&nbsp</p>\r\n<p style=text-align: justify>&nbsp</p>\r\n<p style=text-align: justify>&nbsp</p>\r\n<p style=text-align: justify>&nbsp</p>\r\n<p style=text-align: justify>&nbsp</p>\r\n<p style=text-align: justify>&nbsp</p>\r\n<p style=text-align: justify>&nbsp</p>', '<p>Phone : +34534223434</p>\r\n<p>Mail : webheliosteam@gmail.com</p>', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 1522046503, 1, 0, 0),
(4, 'contact', 1, 1, 'Url', '[contact]', 'contact', '', '', '{\"meta_description\":\"contact us page for carbiz, this meta will be read by search engine\",\"key_words\":null,\"crawl_after\":\"3\"}', 1522997531, 1, 1, 0),
(5, 'users', 1, 0, 'Url', '[users]', 'users', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 2147483647, 1, 1, 0),
(6, 'blog', 1, 0, 'Url', '[blog]', 'blog-posts', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 1424339472, 1, 1, 0),
(7, 'news', 1, 0, 'Url', '[news]', 'news-posts', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 1424339480, 1, 1, 0),
(8, 'articles', 1, 0, 'Url', '[articles]', 'article-posts', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 1424339485, 1, 1, 0),
(9, 'pages', 1, 0, 'Url', '[pages]', '#', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 2147483647, 1, 1, 0),
(10, 'post_ad', 1, 0, 'Url', '[post_ad]', 'post-ad', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 1503674329, 1, 1, 0),
(11, 'locations', 1, 2, 'Url', '[locations]', 'locations', '', '', '{\"meta_description\":\"city, state, country\",\"key_words\":\"city, state, country\",\"crawl_after\":\"3\"}', 2147483647, 1, 1, 0),
(12, 'terms_and_conditions', 0, 2, 'Manual', '[terms_and_conditions]', 'page/terms_and_conditions', '<p>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.</p>\r\n<p style=text-align: justify>Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.Lorem ipsum doller sit amet.</p>', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 1521907849, 1, 1, 0),
(13, 'cookie_policy', 0, 2, 'Manual', '[cookie_policy]', 'page/cookie_policy', '<div class=col-md-9>\n<div class=page-sidebar>\n<p style=margin: 0cm 0cm 12pt><strong>What are Cookies?</strong><br /> A cookie is a very small piece of information that a website stores to save and collect basic information.<br style=box-sizing: border-box /> Many cookies are essential to the operation of our website, for example to allow you to make a purchase or create an account with us.<br style=box-sizing: border-box /> Cookies on our site are also used to customise certain areas of content just for you, and to make your browsing experience more efficient and faster.<br style=box-sizing: border-box /> <br style=box-sizing: border-box /> <strong>How we use Cookies</strong><br style=box-sizing: border-box /> Cookies on our website are used for the following purposes</p>\n<ul style=list-style-type: disc>\n<li style=margin-bottom: 3pt>To enable you to login to the system</li>\n<li style=margin-bottom: 3pt box-sizing: border-box background-position: 0px 0.45em>To enable you to system messages</li>\n<li style=margin-bottom: 3pt box-sizing: border-box background-position: 0px 0.45em>To improve the website\'s usability by saving loading time</li>\n<li style=margin-bottom: 3pt box-sizing: border-box background-position: 0px 0.45em>To analyse the use of our website through Analytics software such as Google Analytics.</li>\n</ul>\n<p></p>\n<p><strong>Information Collected</strong><br style=box-sizing: border-box /> The cookies our website doesn\'t collect any private data</p>\n</div>\n</div>', '', '{\"meta_description\":\"cookie policy\",\"key_words\":\"cookie,policy\",\"crawl_after\":\"3\"}', 1476443264, 1, 1, 0),
(14, 'pricing', 1, 2, 'Url', '[pricing]', 'pricing', '', '', '{\"meta_description\":\"\",\"key_words\":\"\",\"crawl_after\":\"\"}', 1521909317, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_paystacklogs`
--

CREATE TABLE `carbiz_paystacklogs` (
  `id` int(11) NOT NULL,
  `date` varchar(15) NOT NULL,
  `signature` varchar(128) NOT NULL,
  `body` varchar(2024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carbiz_paystacklogs`
--

INSERT INTO `carbiz_paystacklogs` (`id`, `date`, `signature`, `body`) VALUES
(12, '2019-07-24 08:5', '5d375b6f4bf33', 'Successful'),
(13, '2019-07-24 13:0', 'illegall acces', 'illegal access'),
(14, '2019-07-24 13:0', 'illegal access', 'illegall acces'),
(15, '2019-07-24 13:1', '{\"event\":\"charge.success\",\"data\":{\"id\":221814632,\"domain\":\"test\",\r\n			\"status\":\"success\",\"reference\":\"5d375b6f4bf33\",\"amount\":10', 'illegal access'),
(16, '2019-07-24 13:1', 'illegal access', '{\"event\":\"charge.success\",\"data\":{\"id\":221814632,\"domain\":\"test\",\r\n			\"status\":\"success\",\"reference\":\"5d375b6f4bf33\",\"amount\":1000,\r\n			\"message\":null,\"gateway_response\":\"Successful\",\"paid_at\":\"2019-07-23T19:09:56.000Z\",\"created_at\":\"2019-07-23T19:09:36.00'),
(17, '2019-07-24 13:1', '{\"event\":\"charge.success\",\"data\":{\"id\":221814632,\"domain\":\"test\",\r\n			\"status\":\"success\",\"reference\":\"5d375b6f4bf33\",\"amount\":10', 'illegal access'),
(18, '2019-07-24 13:1', 'illegal access', '{\"event\":\"charge.success\",\"data\":{\"id\":221814632,\"domain\":\"test\",\r\n			\"status\":\"success\",\"reference\":\"5d375b6f4bf33\",\"amount\":1000,\r\n			\"message\":null,\"gateway_response\":\"Successful\",\"paid_at\":\"2019-07-23T19:09:56.000Z\",\"created_at\":\"2019-07-23T19:09:36.000Z\"}'),
(19, '2019-07-24 16:5', '5d375b6f4bf33', 'Successful');

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_posts`
--

CREATE TABLE `carbiz_posts` (
  `id` int(11) NOT NULL,
  `unique_id` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` decimal(2,1) NOT NULL DEFAULT 0.0,
  `category` int(11) NOT NULL DEFAULT 0,
  `parent_category` int(11) NOT NULL DEFAULT 0,
  `brand` int(11) NOT NULL DEFAULT 0,
  `model` int(11) NOT NULL DEFAULT 0,
  `year` int(4) NOT NULL DEFAULT 0,
  `price` decimal(11,2) NOT NULL DEFAULT 0.00,
  `ask_for_price` int(1) NOT NULL DEFAULT 0,
  `mileage` int(4) NOT NULL DEFAULT 0,
  `transmission` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `condition` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fuel_type` char(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hide_phone` int(1) NOT NULL DEFAULT 0,
  `email` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hide_email` int(1) NOT NULL DEFAULT 0,
  `disable_email_contact` int(1) NOT NULL DEFAULT 0,
  `country` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `zip_code` char(15) NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(11,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `featured_img` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `video_url` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brochure` char(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` int(20) NOT NULL DEFAULT 0,
  `publish_time` int(20) NOT NULL DEFAULT 0,
  `last_update_time` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `activation_date` date DEFAULT NULL,
  `expirtion_date` date DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT 0,
  `featured_expiration_date` date DEFAULT NULL,
  `report` int(11) NOT NULL DEFAULT 0,
  `total_view` int(10) NOT NULL DEFAULT 0,
  `search_meta` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_posts`
--

INSERT INTO `carbiz_posts` (`id`, `unique_id`, `title`, `description`, `tags`, `rating`, `category`, `parent_category`, `brand`, `model`, `year`, `price`, `ask_for_price`, `mileage`, `transmission`, `condition`, `fuel_type`, `phone_no`, `hide_phone`, `email`, `hide_email`, `disable_email_contact`, `country`, `state`, `city`, `zip_code`, `address`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `brochure`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES
(1, 'aston-martin-reconditioned', '{\"en\":\"Aston Martin (Reconditioned)\",\"es\":\"Aston Martin (Reconditioned)\",\"ru\":\"Aston Martin (Reconditioned)\",\"ar\":\"Aston Martin (Reconditioned)\",\"de\":\"Aston Martin (Reconditioned)\",\"fr\":\"Aston Martin (Reconditioned)\",\"it\":\"Aston Martin (Reconditioned)\",\"pt\":\"Aston Martin (Reconditioned)\",\"zh\":\"Aston Martin (Reconditioned)\",\"tr\":\"Aston Martin (Reconditioned)\",\"hi\":\"Aston Martin (Reconditioned)\",\"bn\":\"Aston Martin (Reconditioned)\"}', '{\"en\":\"<p>\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"<\\/p>\",\"es\":\"<p>test car description<\\/p>\",\"ru\":\"<p>test car description<\\/p>\",\"ar\":\"<p>test car description<\\/p>\",\"de\":\"<p>test car description<\\/p>\",\"fr\":\"<p>test car description<\\/p>\",\"it\":\"<p>test car description<\\/p>\",\"pt\":\"<p>test car description<\\/p>\",\"zh\":\"<p>test car description<\\/p>\",\"tr\":\"<p>test car description<\\/p>\",\"hi\":\"<p>test car description<\\/p>\",\"bn\":\"<p>test car description<\\/p>\"}', 'car,used', '0.0', 8, 0, 3, 125, 2018, '1000.00', 0, 20, 'automatic', 'condition_used', 'petrol', '55656998565', 1, 'shimulcsedu@gmail.com', 1, 0, 1, 9, 69, '95002', '{\"en\":\"main street\",\"es\":\"main street\",\"ru\":\"main street\",\"ar\":\"main street\",\"de\":\"main street\",\"fr\":\"main street\",\"it\":\"main street\",\"pt\":\"main street\",\"zh\":\"main street\",\"tr\":\"main street\",\"hi\":\"main street\",\"bn\":\"main street\"}', '32.69281850', '-117.12995730', '2015_nissan_370z_convertibl.jpg', '', '[\"ferrari-458-italia_1527561i1.jpg\",\"2013-ferrari-458-italia-spider-interior2.jpg\",\"mazda_mx5_convertible.jpg\"]', '54142087d425b1.pdf', 1, 1520871197, 1520871197, 1521822225, 1, '2018-03-12', '2018-04-11', 0, '2018-04-11', 0, 153, 'Convertible USA California San Diego 95002 Aston Martin (Reconditioned) main street Aston Martin (Reconditioned) main street Aston Martin (Reconditioned) main street Aston Martin (Reconditioned) main street Aston Martin (Reconditioned) main street Aston Martin (Reconditioned) main street Aston Martin (Reconditioned) main street Aston Martin (Reconditioned) main street Aston Martin (Reconditioned) main street Aston Martin (Reconditioned) main street Aston Martin (Reconditioned) main street Aston Martin (Reconditioned) main street car,used '),
(2, 'ferrari-for-sale', '{\"en\":\"Ferrari For Sale\",\"es\":\"Ferrari For Sale\",\"ru\":\"Ferrari For Sale\",\"ar\":\"Ferrari For Sale\",\"de\":\"Ferrari For Sale\",\"fr\":\"Ferrari For Sale\",\"it\":\"Ferrari For Sale\",\"pt\":\"Ferrari For Sale\",\"zh\":\"Ferrari For Sale\",\"tr\":\"Ferrari For Sale\",\"hi\":\"Ferrari For Sale\",\"bn\":\"Ferrari For Sale\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"es\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"ru\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"ar\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"de\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"fr\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"it\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"pt\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"zh\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"tr\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"hi\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"bn\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\"}', 'ferrari,used,sports', '0.0', 7, 0, 14, 114, 2011, '0.00', 1, 200, 'automatic', 'condition_used', 'petrol', '(556)-569-98565', 0, 'seller@webhelios.com', 0, 0, 1, 9, 71, '95012', '{\"en\":\"main street\",\"es\":\"main street\",\"ru\":\"main street\",\"ar\":\"main street\",\"de\":\"main street\",\"fr\":\"main street\",\"it\":\"main street\",\"pt\":\"main street\",\"zh\":\"main street\",\"tr\":\"main street\",\"hi\":\"main street\",\"bn\":\"main street\"}', '37.78955940', '-122.39208540', 'ferrari_458.jpg', '', '[\"ferrari-458-italia_1527561i.jpg\",\"2013-ferrari-458-italia-spider-interior.jpg\"]', '', 1, 1521261434, 1521261434, 1521819903, 1, '2018-03-17', '2018-05-16', 0, NULL, 0, 16, 'Sports Car USA California San Francisco 95012 Ferrari For Sale main street Ferrari For Sale main street Ferrari For Sale main street Ferrari For Sale main street Ferrari For Sale main street Ferrari For Sale main street Ferrari For Sale main street Ferrari For Sale main street Ferrari For Sale main street Ferrari For Sale main street Ferrari For Sale main street Ferrari For Sale main street ferrari,used,sports '),
(3, 'Ford-SUV', '{\"en\":\"Brand New Ford SUV\",\"es\":\"Ford SUV \",\"ru\":\"Ford SUV \",\"ar\":\"Ford SUV \",\"de\":\"Ford SUV \",\"fr\":\"Ford SUV \",\"it\":\"Ford SUV \",\"pt\":\"Ford SUV \",\"zh\":\"Ford SUV \",\"tr\":\"Ford SUV \",\"hi\":\"Ford SUV \",\"bn\":\"Ford SUV \"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"es\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"ru\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"ar\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"de\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"fr\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"it\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"pt\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"zh\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"tr\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"hi\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"bn\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\"}', 'ford,suv', '0.0', 6, 0, 16, 87, 2013, '0.00', 1, 1000, 'automatic', 'condition_recondition', 'diesel', '(556)-569-98565', 1, 'seller@webhelios.com', 1, 0, 1, 36, 83, '', '{\"en\":\"45B, main street\",\"es\":\"45B, main street\",\"ru\":\"45B, main street\",\"ar\":\"45B, main street\",\"de\":\"45B, main street\",\"fr\":\"45B, main street\",\"it\":\"45B, main street\",\"pt\":\"45B, main street\",\"zh\":\"45B, main street\",\"tr\":\"45B, main street\",\"hi\":\"45B, main street\",\"bn\":\"45B, main street\"}', '40.70288160', '-73.99043340', 'ford.jpg', '', '[\"Audi_R8_Facelift_(2013)3.jpg\",\"2013-ferrari-458-italia-spider-interior1.jpg\"]', '', 1, 1521262677, 1521262677, 1521870869, 1, '2018-03-17', '2018-05-16', 0, NULL, 0, 5, 'SUV USA New York New York  Brand New Ford SUV 45B, main street Ford SUV  45B, main street Ford SUV  45B, main street Ford SUV  45B, main street Ford SUV  45B, main street Ford SUV  45B, main street Ford SUV  45B, main street Ford SUV  45B, main street Ford SUV  45B, main street Ford SUV  45B, main street Ford SUV  45B, main street Ford SUV  45B, main street ford,suv '),
(4, 'audi-for-sale', '{\"en\":\"Audi for Sale\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', 'audi,r8,sports car', '0.0', 7, 0, 4, 73, 2014, '250000.00', 0, 2000, 'automatic', 'condition_pre_owned', 'diesel', '(556)-569-98565', 1, 'seller@webhelios.com', 1, 1, 1, 5, 73, '35633', '{\"en\":\"Landfill: 29485 County Road 14\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', '34.80633250', '-87.69959980', 'abt-audi-r8.jpg', '', '[\"Audi_R8_Facelift.jpg\",\"car_photo_343885.jpg\",\"2012-audi-r8-collection-s_600x0w1.jpg\"]', '', 1, 1521865293, 1521865293, 1521865293, 1, '2018-03-24', '2018-04-23', 0, '2018-04-08', 0, 6, 'Sports Car USA Alabama Florence 35633 Audi for Sale Landfill: 29485 County Road 14                       audi,r8,sports car '),
(5, 'hybrid-car', '{\"en\":\"Hybrid Car\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', '{\"en\":\"<p>Aliquam vel egestas turpis. Proin sollicitudin imperdiet nisi ac rutrum. Sed imperdiet libero malesuada erat cursus eu pulvinar tellus rhoncus. Ut eget tellus neque, faucibus ornare odio. Fusce sagittis hendrerit mi a sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper libero sed ante auctor vel gravida nunc placerat. Suspendisse molestie posuere sem, in viverra dolor venenatis sit amet. Aliquam gravida nibh quis justo pulvinar luctus. Phasellus a malesuada massa. Mauris elementum tempus nisi, vitae ullamcorper sem ultricies vitae. Nullam consectetur lacinia nisi, quis laoreet magna pulvinar in. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In hac habitasse platea dictumst. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eu sapien ac diam facilisis vehicula nec sit amet odio. Vivamus quis dui ac nulla molestie blandit eu in nunc. In justo erat, lacinia in vulputate non, tristique eu mi. Aliquam tristique dapibus tempor. Vivamus malesuada tempor urna, in convallis massa lacinia sed. Phasellus gravida auctor vestibulum. Suspendisse potenti. In tincidunt felis bibendum nunc tempus sagittis. Praesent elit dolor, ultricies interdum porta sit amet, iaculis in neque. Nullam urna ante, tempus vel iaculis nec, rutrum sit amet nulla. Morbi vestibulum ante in turpis ultricies in tincidunt sapien iaculis. Aenean feugiat rhoncus arcu, at luctus libero blandit tempus. Vivamus rutrum tellus quis leo placerat eu adipiscing purus vehicula.<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', 'regular office car,toyota,low price', '0.0', 4, 0, 48, 77, 2017, '3500.00', 0, 5000, 'automatic', 'condition_new', 'petrol', '(556)-569-98984', 0, 'toyota.seller@webhelios.com', 0, 0, 1, 13, 76, '', '{\"en\":\"42B, Main Street\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', '25.91315980', '-80.30937090', 'prius-url.jpg', '', '[\"05-Prius-Exteriorb-950x577.jpg\",\"01_2010_toyota_prius_realorrender_opte.jpg\"]', '', 1, 1521866163, 1521866163, 1521866241, 1, '2018-03-24', '2018-05-23', 0, NULL, 0, 3, 'Sedan USA Florida Miami  Hybrid Car 42B, Main Street                       regular office car,toyota,low price ');
INSERT INTO `carbiz_posts` (`id`, `unique_id`, `title`, `description`, `tags`, `rating`, `category`, `parent_category`, `brand`, `model`, `year`, `price`, `ask_for_price`, `mileage`, `transmission`, `condition`, `fuel_type`, `phone_no`, `hide_phone`, `email`, `hide_email`, `disable_email_contact`, `country`, `state`, `city`, `zip_code`, `address`, `latitude`, `longitude`, `featured_img`, `video_url`, `gallery`, `brochure`, `created_by`, `create_time`, `publish_time`, `last_update_time`, `status`, `activation_date`, `expirtion_date`, `featured`, `featured_expiration_date`, `report`, `total_view`, `search_meta`) VALUES
(6, 'aston-martin-with-sunroof', '{\"en\":\"Aston Martin with Sunroof\",\"es\":\"Aston Martin with Sunroof\",\"ru\":\"Aston Martin with Sunroof\",\"ar\":\"Aston Martin with Sunroof\",\"de\":\"Aston Martin with Sunroof\",\"fr\":\"Aston Martin with Sunroof\",\"it\":\"Aston Martin with Sunroof\",\"pt\":\"Aston Martin with Sunroof\",\"zh\":\"Aston Martin with Sunroof\",\"tr\":\"Aston Martin with Sunroof\",\"hi\":\"Aston Martin with Sunroof\",\"bn\":\"Aston Martin with Sunroof\"}', '{\"en\":\"<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"es\":\"<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"ru\":\"<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"ar\":\"<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"de\":\"<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"fr\":\"<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"it\":\"<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"pt\":\"<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"zh\":\"<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"tr\":\"<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"hi\":\"<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"bn\":\"<p>s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\"}', 'mazda,sunroof,low price,urgent', '4.5', 9, 0, 3, 124, 2016, '0.00', 1, 5000, 'automatic', 'condition_new', 'diesel', '(451)-869-98984', 1, 'seller.mazda@webhelios.com', 0, 0, 1, 15, 89, '96813', '{\"en\":\"1088 Bishop Street\",\"es\":\"1088 Bishop Street\",\"ru\":\"1088 Bishop Street\",\"ar\":\"1088 Bishop Street\",\"de\":\"1088 Bishop Street\",\"fr\":\"1088 Bishop Street\",\"it\":\"1088 Bishop Street\",\"pt\":\"1088 Bishop Street\",\"zh\":\"1088 Bishop Street\",\"tr\":\"1088 Bishop Street\",\"hi\":\"1088 Bishop Street\",\"bn\":\"1088 Bishop Street\"}', '21.30933130', '-157.86075100', 'aston1.jpg', '', '[\"vanquish-s-ultimate_02.jpg\",\"featured-img-1.jpg\"]', '', 1, 1521866940, 1521866940, 1521904020, 1, '2018-03-24', '2018-04-23', 0, '2018-04-13', 0, 27, 'Coupe USA Hawaii Honolulu 96813 Aston Martin with Sunroof 1088 Bishop Street Aston Martin with Sunroof 1088 Bishop Street Aston Martin with Sunroof 1088 Bishop Street Aston Martin with Sunroof 1088 Bishop Street Aston Martin with Sunroof 1088 Bishop Street Aston Martin with Sunroof 1088 Bishop Street Aston Martin with Sunroof 1088 Bishop Street Aston Martin with Sunroof 1088 Bishop Street Aston Martin with Sunroof 1088 Bishop Street Aston Martin with Sunroof 1088 Bishop Street Aston Martin with Sunroof 1088 Bishop Street Aston Martin with Sunroof 1088 Bishop Street mazda,sunroof,low price,urgent '),
(7, 'volvo-xc-inscription', '{\"en\":\"Volvo xc90 inscription\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', '{\"en\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', 'volvo,used cars', '0.0', 9, 0, 51, 0, 2015, '5500.00', 0, 6000, 'automatic', 'condition_new', 'petrol', '(556)-569-98565', 0, 'seller@webhelios.com', 0, 0, 1, 9, 71, '', '{\"en\":\"11B, Main Street\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', '37.79288040', '-122.39596770', 'chevrolette.jpg', '', '[]', '', 1, 1521867868, 1521867868, 1521867882, 1, '2018-03-24', '2018-05-23', 0, '2018-04-03', 0, 6, 'Coupe USA California San Francisco  Volvo xc90 inscription 11B, Main Street                       volvo,used cars '),
(8, 'vitage-car', '{\"en\":\"Vitage Car\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', '{\"en\":\"<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', 'vintage,old car', '0.0', 5, 0, 16, 93, 1976, '0.00', 1, 6000, 'manual', 'condition_other', 'octane', '(556)-569-98565', 1, 'seller@webhelios.com', 0, 0, 1, 14, 91, '', '{\"en\":\"110, main street\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\"}', '33.62866920', '-84.38420510', 'vitage.jpg', '', '[]', '', 1, 1521868171, 1521868171, 1521868183, 1, '2018-03-24', '2018-05-23', 0, NULL, 0, 10, 'Luxury Car USA Georgia Atlanta  Vitage Car 110, main street                       vintage,old car '),
(9, 'tesla-model-s-for-sell', '{\"en\":\"Tesla Model S For Sell\",\"es\":\"Tesla Model S For Sell\",\"ru\":\"Tesla Model S For Sell\",\"ar\":\"Tesla Model S For Sell\",\"de\":\"Tesla Model S For Sell\",\"fr\":\"Tesla Model S For Sell\",\"it\":\"Tesla Model S For Sell\",\"pt\":\"Tesla Model S For Sell\",\"zh\":\"Tesla Model S For Sell\",\"tr\":\"Tesla Model S For Sell\",\"hi\":\"Tesla Model S For Sell\",\"bn\":\"Tesla Model S For Sell\"}', '{\"en\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"es\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"ru\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"ar\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"de\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"fr\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"it\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"pt\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"zh\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"tr\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"hi\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"bn\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\"}', 'tesla,brand new,model s', '0.0', 9, 0, 214, 215, 2018, '25000.00', 0, 1200, 'automatic', 'condition_new', 'electricity', '(556)-569-98565', 0, 'seller@webhelios.com', 0, 0, 1, 9, 71, '96813', '{\"en\":\"190-A, main street\",\"es\":\"190-A, main street\",\"ru\":\"190-A, main street\",\"ar\":\"190-A, main street\",\"de\":\"190-A, main street\",\"fr\":\"190-A, main street\",\"it\":\"190-A, main street\",\"pt\":\"190-A, main street\",\"zh\":\"190-A, main street\",\"tr\":\"190-A, main street\",\"hi\":\"190-A, main street\",\"bn\":\"190-A, main street\"}', '37.79062190', '-122.39357400', 'tesla-blue.jpg', '', '[]', '', 1, 1521904732, 1521904733, 1521904828, 1, '2018-03-24', '2018-04-23', 0, '2018-04-24', 0, 3, 'Coupe USA California San Francisco 96813 Tesla Model S For Sell 190-A, main street Tesla Model S For Sell 190-A, main street Tesla Model S For Sell 190-A, main street Tesla Model S For Sell 190-A, main street Tesla Model S For Sell 190-A, main street Tesla Model S For Sell 190-A, main street Tesla Model S For Sell 190-A, main street Tesla Model S For Sell 190-A, main street Tesla Model S For Sell 190-A, main street Tesla Model S For Sell 190-A, main street Tesla Model S For Sell 190-A, main street Tesla Model S For Sell 190-A, main street tesla,brand new,model s '),
(10, 'new-benz-g', '{\"en\":\"new benz g6\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>hello<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 2, 0, 10, 0, 2007, '10000.00', 0, 500, 'automatic', 'condition_new', 'gas', '70131', 0, 'isaacodinakafranklin@gmail.com', 0, 0, 1, 36, 90, '1234', '{\"en\":\"lagos\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '444.00000000', '999.99999999', '', '', '[]', '', 1, 1563723113, 1563723113, 1563723113, 3, NULL, NULL, 0, NULL, 0, 0, 'Van USA New York Brooklyn 1234 new benz g6 lagos                          '),
(11, 'toyota', '{\"en\":\"toyota\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>ddccccc<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 7, 0, 1, 117, 2019, '10000.00', 0, 500, 'automatic', 'condition_used', 'diesel', '70131', 0, 'isaacodinakafranklin@gmail.com', 0, 0, 1, 36, 90, '1234', '{\"en\":\"lagos\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '444.00000000', '999.99999999', '', '', '[]', '', 1, 1563723514, 1563723514, 1563723514, 3, NULL, NULL, 0, NULL, 0, 0, 'Sports Car USA New York Brooklyn 1234 toyota lagos                          '),
(12, 'brand-new-ford-car', '{\"en\":\"brand new ford car\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>jsbj<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 7, 0, 6, 65, 2010, '10000.00', 0, 500, 'automatic', 'condition_used', 'petrol', '70131', 0, 'isaacodinakafranklin@gmail.com', 0, 0, 1, 36, 90, '1234', '{\"en\":\"lagos\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '444.00000000', '999.99999999', '', '', '[]', '', 1, 1563753357, 1563753357, 1563753357, 3, NULL, NULL, 0, NULL, 0, 0, 'Sports Car USA New York Brooklyn 1234 brand new ford car lagos                          '),
(13, 'wndbbsd', '{\"en\":\"wndbbsd\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>sjbdbsjd<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 7, 0, 14, 110, 2006, '10000.00', 0, 500, 'manual', 'condition_used', 'petrol', '70131', 0, 'isaacodinakafranklin@gmail.com', 0, 0, 1, 36, 90, 'nbjsj', '{\"en\":\"lagos\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '444.00000000', '444.00000000', '', '', '[]', '', 1, 1563753539, 1563753539, 1563753539, 3, NULL, NULL, 0, NULL, 0, 0, 'Sports Car USA New York Brooklyn nbjsj wndbbsd lagos                          '),
(14, 'toyotamf-ff-dd', '{\"en\":\"toyotamf ff dd\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>sdsds<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 8, 0, 7, 104, 2011, '10000.00', 0, 500, 'automatic', 'condition_new', 'electricity', '70131', 0, 'isaacodinakafranklin@gmail.com', 0, 0, 1, 36, 90, '1234', '{\"en\":\"lagos\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '444.00000000', '444.00000000', '', '', '[]', '', 1, 1563760802, 1563760802, 1563760802, 3, NULL, NULL, 0, NULL, 0, 0, 'Convertible USA New York Brooklyn 1234 toyotamf ff dd lagos                          '),
(15, 'toyota-venza-s', '{\"en\":\"toyota venza s\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>jsnjs<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 6, 0, 10, 169, 2007, '10000.00', 0, 500, 'manual', 'condition_new', 'diesel', '70131', 0, 'isaacodinakafranklin@gmail.com', 0, 1, 1, 36, 90, '1234', '{\"en\":\"lagos\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '444.00000000', '444.00000000', '', '', '[]', '', 1, 1563763737, 1563763737, 1563763737, 3, NULL, NULL, 0, NULL, 0, 0, 'SUV USA New York Brooklyn 1234 toyota venza s lagos                          '),
(16, 'toyotaxx-x', '{\"en\":\"toyotaxx x\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>..oo<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 7, 0, 10, 168, 2017, '10000.00', 0, 500, 'manual', 'condition_used', 'diesel', '70131', 0, 'isaacodinakafranklin@gmail.com', 0, 0, 1, 36, 83, '1234', '{\"en\":\"lagos\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '444.00000000', '444.00000000', '', '', '[]', '', 1, 1563764894, 1563764894, 1563764894, 3, NULL, NULL, 0, NULL, 0, 0, 'Sports Car USA New York New York 1234 toyotaxx x lagos                          '),
(17, 'toyota-js', '{\"en\":\"toyota js\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>aanana<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 7, 0, 1, 117, 2010, '10000.00', 0, 500, 'manual', 'condition_used', 'electricity', '70131', 0, 'isaacodinakafranklin@gmail.com', 0, 0, 1, 36, 90, '1234', '{\"en\":\"lagos\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '444.00000000', '444.00000000', '', '', '[]', '', 1, 1563765326, 1563765326, 1563765326, 3, NULL, NULL, 0, NULL, 0, 0, 'Sports Car USA New York Brooklyn 1234 toyota js lagos                          '),
(18, 'toyota-xhbhx', '{\"en\":\"toyota xhbhx\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>jxj<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 5, 0, 14, 110, 2005, '10000.00', 0, 500, 'automatic', 'condition_recondition', 'electricity', '70131', 0, 'isaacodinakafranklin@gmail.com', 0, 0, 1, 36, 90, '1234', '{\"en\":\"lagos\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '444.00000000', '999.99999999', '', '', '[]', '', 1, 1563821846, 1563821846, 1563821846, 3, NULL, NULL, 0, NULL, 0, 0, 'Luxury Car USA New York Brooklyn 1234 toyota xhbhx lagos                          '),
(19, 'toyotaxx-xxxxx', '{\"en\":\"toyotaxx xxxxx\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>hdhdhdhd dkdj<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 7, 0, 8, 156, 2010, '10000.00', 0, 500, 'automatic', 'condition_new', 'electricity', '70131', 0, 'isaacodinakafranklin@gmail.com', 0, 0, 1, 36, 90, '1234', '{\"en\":\"lagos\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '444.00000000', '999.99999999', '', '', '[]', '', 1, 1563822960, 1563822960, 1563822960, 3, NULL, NULL, 0, NULL, 0, 0, 'Sports Car USA New York Brooklyn 1234 toyotaxx xxxxx lagos                          '),
(20, 'hello-jd', '{\"en\":\"hello jd\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>djjn<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 7, 0, 7, 103, 2009, '10000.00', 0, 500, 'automatic', 'condition_pre_owned', 'diesel', '70131', 0, 'isaacodinakafranklin@gmail.com', 0, 0, 1, 36, 90, '1234', '{\"en\":\"lagos\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '444.00000000', '444.00000000', '', '', '[]', '', 1, 1563823962, 1563823962, 1563823962, 3, NULL, NULL, 0, NULL, 0, 0, 'Sports Car USA New York Brooklyn 1234 hello jd lagos                          '),
(21, 'brand-new-ford-car-dgdh', '{\"en\":\"brand new ford car dgdh\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>ffjjhvhhvhhhfhc<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 5, 0, 14, 109, 2007, '10000.00', 0, 500, 'automatic', 'condition_new', 'electricity', '70131', 0, 'isaacodinakafranklin@gmail.com', 0, 0, 1, 36, 90, '1234', '{\"en\":\"lagos\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '444.00000000', '999.99999999', '', '', '[]', '', 1, 1563824329, 1563824329, 1563824329, 3, NULL, NULL, 0, NULL, 0, 0, 'Luxury Car USA New York Brooklyn 1234 brand new ford car dgdh lagos                          '),
(22, 'new-benz-g-ebhbhd-hbd', '{\"en\":\"new benz g6 ebhbhd hbd\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>dbjbsjdb<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 7, 0, 9, 162, 2019, '10000.00', 0, 500, 'automatic', 'condition_new', 'others', '70131', 0, 'isaacodinakafranklin@gmail.com', 0, 0, 1, 36, 90, '1234', '{\"en\":\"lagos\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '444.00000000', '444.00000000', '', '', '[]', '', 1, 1563824920, 1563824920, 1563824920, 3, NULL, NULL, 0, NULL, 0, 0, 'Sports Car USA New York Brooklyn 1234 new benz g6 ebhbhd hbd lagos                          '),
(23, 'odina-jss', '{\"en\":\"odina jss\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '{\"en\":\"<p>xss<\\/p>\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '', '0.0', 8, 0, 9, 161, 2005, '500000.00', 0, 5000, 'automatic', 'condition_pre_owned', 'octane', '002', 0, 'isaacodinakafranklin@gmail.com', 0, 0, 1, 36, 90, '11222', '{\"en\":\"HBHBH\",\"es\":\"\",\"ru\":\"\",\"ar\":\"\",\"de\":\"\",\"fr\":\"\",\"it\":\"\",\"pt\":\"\",\"zh\":\"\",\"tr\":\"\",\"hi\":\"\",\"bn\":\"\",\"po\":\"\"}', '666.00000000', '999.99999999', '', '', '[]', '', 1, 1563896400, 1563896400, 1563896400, 3, NULL, NULL, 0, NULL, 0, 0, 'Convertible USA New York Brooklyn 11222 odina jss HBHBH                          ');

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_post_meta`
--

CREATE TABLE `carbiz_post_meta` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `key` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_post_meta`
--

INSERT INTO `carbiz_post_meta` (`id`, `post_id`, `key`, `value`, `status`) VALUES
(1, 1, 'custom_data', '{\"registration_no\":\"123456789\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"4\",\"engine_type\":\"\",\"no_of_seats\":\"4\",\"gear_type\":\"automatic\"}', 1),
(2, 2, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"4.5\",\"steering_type\":\"\",\"safety_rating\":\"5\",\"engine_type\":\"\",\"no_of_seats\":\"2\",\"gear_type\":\"dual\"}', 1),
(3, 3, 'custom_data', '{\"registration_no\":\"NY28765\",\"engine_size\":\"4.5L\",\"steering_type\":\"\",\"safety_rating\":\"5\",\"engine_type\":\"\",\"no_of_seats\":\"4\",\"gear_type\":\"manual\"}', 1),
(4, 4, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"8\",\"steering_type\":\"power_steering\",\"safety_rating\":\"5\",\"engine_type\":\"vee\",\"no_of_seats\":\"2\",\"gear_type\":\"automatic\"}', 1),
(5, 5, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"4.5L\",\"steering_type\":\"power_steering\",\"safety_rating\":\"4\",\"engine_type\":\"inline\",\"no_of_seats\":\"4\",\"gear_type\":\"automatic\"}', 1),
(6, 6, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"power_steering\",\"safety_rating\":\"4\",\"engine_type\":\"vee\",\"no_of_seats\":\"4\",\"gear_type\":\"\"}', 1),
(7, 7, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"power_steering\",\"safety_rating\":\"5\",\"engine_type\":\"straight\",\"no_of_seats\":\"4\",\"gear_type\":\"automatic\"}', 1),
(8, 8, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"manual_steering\",\"safety_rating\":\"3\",\"engine_type\":\"other\",\"no_of_seats\":\"4\",\"gear_type\":\"manual\"}', 1),
(9, 9, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"power_steering\",\"safety_rating\":\"5\",\"engine_type\":\"other\",\"no_of_seats\":\"2\",\"gear_type\":\"automatic\"}', 1),
(10, 10, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1),
(11, 11, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1),
(12, 12, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1),
(13, 13, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1),
(14, 14, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1),
(15, 15, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1),
(16, 16, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1),
(17, 17, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1),
(18, 18, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1),
(19, 19, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1),
(20, 20, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1),
(21, 21, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1),
(22, 22, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1),
(23, 23, 'custom_data', '{\"registration_no\":\"\",\"engine_size\":\"\",\"steering_type\":\"\",\"safety_rating\":\"\",\"engine_type\":\"\",\"no_of_seats\":\"\",\"gear_type\":\"\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_post_package`
--

CREATE TABLE `carbiz_post_package` (
  `id` int(11) NOT NULL,
  `unique_id` char(100) NOT NULL,
  `post_id` int(15) NOT NULL,
  `package_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `request_date` date NOT NULL,
  `activation_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `is_active` int(1) NOT NULL COMMENT '0=no,2=pending,1=active',
  `status` int(1) NOT NULL COMMENT '0=deleted,1=active',
  `payment_medium` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'paypal',
  `payment_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `response_log` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_post_package`
--

INSERT INTO `carbiz_post_package` (`id`, `unique_id`, `post_id`, `package_id`, `amount`, `request_date`, `activation_date`, `expiration_date`, `is_active`, `status`, `payment_medium`, `payment_type`, `response_log`) VALUES
(1, '5aa6a71d70518', 0, 3, '0.00', '2018-03-12', '2018-03-12', '2018-04-11', 1, 1, 'paypal', 'post', 'Free package'),
(2, '5aac9b7b1484f', 2, 2, '10.00', '2018-03-17', '2018-03-17', '2018-05-16', 1, 1, 'paypal', 'post', 'Approved by admin'),
(3, '5aaca05625dc3', 3, 2, '10.00', '2018-03-17', '2018-03-17', '2018-05-16', 1, 1, 'paypal', 'post', 'Approved by admin'),
(4, '5ab5d24ddfa2d', 4, 3, '0.00', '2018-03-24', '2018-03-24', '2018-04-23', 1, 1, 'paypal', 'post', 'Free package'),
(5, '5ab5d5b41c061', 5, 2, '10.00', '2018-03-24', '2018-03-24', '2018-05-23', 1, 1, 'paypal', 'post', 'Approved by admin'),
(6, '5ab5d8bcbcbd1', 6, 3, '0.00', '2018-03-24', '2018-03-24', '2018-04-23', 1, 1, 'paypal', 'post', 'Free package'),
(7, '5ab5dc5cb474e', 7, 2, '10.00', '2018-03-24', '2018-03-24', '2018-05-23', 1, 1, 'paypal', 'post', 'Approved by admin'),
(8, '5ab5dd8b6dbb8', 8, 2, '10.00', '2018-03-24', '2018-03-24', '2018-05-23', 1, 1, 'paypal', 'post', 'Approved by admin'),
(9, '5ab66c5d010b1', 9, 3, '0.00', '2018-03-24', '2018-03-24', '2018-04-23', 1, 1, 'paypal', 'post', 'Free package'),
(10, '5d34856a5b18b', 10, 3, '10.00', '2019-07-21', '2019-07-21', '2019-08-10', 1, 1, 'Paystack', 'post', NULL),
(11, '5d3486fb14b6d', 11, 2, '5.00', '2019-07-21', '2019-07-21', '2019-07-28', 1, 1, 'Paystack', 'post', NULL),
(12, '5d34fb8ddf694', 12, 3, '10.00', '2019-07-22', NULL, NULL, 2, 1, 'Paystack', 'post', NULL),
(13, '5d34fc4374328', 13, 2, '5.00', '2019-07-22', NULL, NULL, 2, 1, 'Paystack', 'post', NULL),
(14, '5d3518a34cd4c', 14, 3, '10.00', '2019-07-22', NULL, NULL, 2, 1, 'Paystack', 'post', NULL),
(15, '5d352419b22a5', 15, 3, '10.00', '2019-07-22', NULL, NULL, 2, 1, 'Paystack', 'post', NULL),
(16, '5d35289f6428a', 16, 2, '5.00', '2019-07-22', NULL, NULL, 2, 1, 'Paystack', 'post', NULL),
(17, '5d352a4e7ca58', 17, 3, '10.00', '2019-07-22', NULL, NULL, 2, 1, 'Paystack', 'post', NULL),
(18, '5d3607173220a', 18, 3, '10.00', '2019-07-22', NULL, NULL, 2, 1, 'Paystack', 'post', NULL),
(19, '5d360b7163aaa', 19, 3, '10.00', '2019-07-22', NULL, NULL, 2, 1, 'Paystack', 'post', NULL),
(20, '5d360f5ba7417', 20, 3, '10.00', '2019-07-22', NULL, NULL, 2, 1, 'Paystack', 'post', NULL),
(21, '5d3610ca318a2', 21, 3, '10.00', '2019-07-22', NULL, NULL, 2, 1, 'Paystack', 'post', NULL),
(22, '5d361318a9aa7', 22, 3, '10.00', '2019-07-22', NULL, NULL, 2, 1, 'Paystack', 'post', NULL),
(23, '5d372a5192958', 23, 2, '5.00', '2019-07-23', NULL, NULL, 2, 1, 'Paystack', 'post', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_review`
--

CREATE TABLE `carbiz_review` (
  `id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(2) NOT NULL DEFAULT 0,
  `post_id` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `create_time` int(20) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_review`
--

INSERT INTO `carbiz_review` (`id`, `comment`, `rating`, `post_id`, `created_by`, `create_time`, `status`) VALUES
(1, 'Very nice car within a affordable price range. Also the seller is very much helpful.', 5, 6, 1, 1522045025, 1),
(2, 'Car of future. Very stylish (Y)', 4, 6, 2, 1522045157, 1);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_sessions`
--

CREATE TABLE `carbiz_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_slider`
--

CREATE TABLE `carbiz_slider` (
  `id` int(11) NOT NULL,
  `slide_order` int(11) NOT NULL DEFAULT 0,
  `featured_img` char(200) NOT NULL,
  `title` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_slider`
--

INSERT INTO `carbiz_slider` (`id`, `slide_order`, `featured_img`, `title`, `description`, `created_by`, `create_time`, `status`) VALUES
(1, 2, 'car2.png', ' Easy management', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.', 1, 1512143125, 1),
(2, 3, 'car4.png', 'New iMac', 'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', 1, 1512142227, 1),
(3, 1, 'car1.png', 'Buy DSLR', 'When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.', 1, 1512141962, 1);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_users`
--

CREATE TABLE `carbiz_users` (
  `id` int(10) NOT NULL,
  `user_type` int(3) NOT NULL,
  `first_name` char(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` char(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `profile_photo` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_name` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` char(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `remember_me_key` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recovery_key` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirmation_key` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `confirmed` int(1) NOT NULL DEFAULT 1,
  `confirmed_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL DEFAULT 0,
  `banned` int(11) NOT NULL DEFAULT 0,
  `banned_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `banned_till` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_users`
--

INSERT INTO `carbiz_users` (`id`, `user_type`, `first_name`, `last_name`, `gender`, `profile_photo`, `user_name`, `user_email`, `password`, `remember_me_key`, `recovery_key`, `confirmation_key`, `confirmed`, `confirmed_date`, `status`, `banned`, `banned_date`, `banned_till`) VALUES
(1, 1, 'Isaac', 'Odinaka Franklin', 'male', 'nophoto-male.jpg', 'admin', 'isaacodinakafranklin@gmail.com', '$2a$11$i9FPfkf8Zg7j7B88wpr3wus9nfiUDijQaIl.0PsoBpCJwuwvBw5DK', '', '', '', 1, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'test', 'account', 'M', '', 'test', 'test@account.com', '$2y$10$M1QSsMK5UQBqjNmGKUino.V26bWgjXR9mj1.qzC0bHKRDb/AO.2Gy', '', '', '', 1, '2019-08-15 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 'test 1', 'surname', 'Male', '', '', 'isaac@gmail.com', '$2a$08$jHyc4mw55GZYT03hI2Usgeq.ZEf3ZMkmcvxz4lbeaqoVy3O0VJVNm', '', '', '5d59205786182', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 'oddy', 'isaac', 'Female', '', '', 'test1@account.com', '$2a$08$M03yrZ1B7AJWE7VmXJWXWuIqFbFTjmKj5blU.Asz0k35Ek/PH3EOa', '', '', '5d5923b2d95df', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 'Isaac', 'Odinaka', 'male', 'Not found', 'yhjkk', 'odinaka@yopmail.com', '$2y$10$mtvdi12YpLsnfZzpT2G3Zeu8o5KcSI/X/1AxzJ0yvtRuSZiv3cOtq', '', '', '5d5954af50a9f', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 2, 'frank', 'x', 'Female', '', '', 'account@test.com', '$2y$10$gbtA39jjKPqihxLPf8KB.O1T4.4VUwuPhZBvOj6j9hIOxAitz.32K', '', '', '5d59794debaca', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 2, 'jdjf', 'hjh', 'Male', '', '', 'odinaka2@yopmail.com', '$2y$10$8xzaVsS97RUGhQ8LJmzYLeHZTpmQvsQftdGwpB62Dmw/nbilLrauC', '', '', '5d599b109fa40', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 2, 'mldlml', 'lmdllld', 'Male', '', '', 'account@test.coms', '$2y$10$fRUHvtQVkuJbpX8jusqniOvLPBaSXvEz/C9ml2ZeoYCZcU425EpaW', '', '', '5d599b8415543', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 2, 'mldlml', 'lmdllld', 'Male', '', '', 'clint@account.com', '$2y$10$ZrT3Qbl10icHJpbgibhWiOsN4HuBF6sFh0jtcYLDXkhhVS0Ghj4f6', '', '', '5d59a757437ee', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 2, 'mldlml', 'lmdllld', 'Male', '', '', 'clinton@account.com', '$2y$10$LJruVuEwJfZwLsOj164aI.lgQaUUDo9SYr3l/vGhbq4zgIQZqXkgm', '', '', '5d59a7a22033d', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 2, 'oddy', 'Isaac', 'Male', '', '', 'franklin@gmail.com', '$2y$10$eAoRzIFSq.aOsdb4IM1F/ui.afJu1t9h5cAlqqhkLbB6367JNHK7K', '', '', '5d59ad0604645', 1, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 2, 'oddy', 'fr', 'Male', '', '', 'is@g.com', '$2y$10$MaraZ7arktZiQs/DWdlHUearO3Q/YaQhWg5HIDEnCuCImemuCZUoe', '', '', '5d5a6dada137f', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 2, 'oddy', 'fr', 'Male', '', '', 'isj@g.com', '$2y$10$yl7PZB8RDnLBNTKrnylwUeplTiB4mpuG4EqMbPQ1ne4J2snnrzDR2', '', '', '5d5a6e3584373', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 2, 'oddy', 'fr', 'Male', '', '', 'ifsj@g.com', '$2y$10$iSzdxmn2KmrSZ.oylFP2ruCIsA5W.PHn6YfH5JWfW2OZf0NGkyuaO', '', '', '5d5a6eabc765f', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 2, 'oddy', 'fr', 'Male', '', '', 'iffffsj@g.com', '$2y$10$B25Sf4Dvm7bT6V.omQ0yFOG0oGqx1xiiFDm2uf9pMolApFwUEGkya', '', '', '5d5a6f04055e6', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 2, 'oddy', 'fr', 'Male', '', '', 'iftfffsj@g.com', '$2y$10$KXadz6TZFzdEFvYgqzp1JeYw8mwIKhjot.vp6hOAqhjeilFoY3dlm', '', '', '5d5a6f3c89a68', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 2, 'oddy', 'fr', 'Male', '', '', 'ghk@g.com', '$2y$10$bkEhMRHudTQ10W0ea581bO9TO0.jhR6HZdKedSAqQCpm1ecvvfepy', '', '', '5d5a6ff8e8a0b', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 2, 'oddy', 'fr', 'Male', '', '', 'ghhk@g.com', '$2y$10$SbywippOOlR10VuE0uC84OshN5EaXoCBUubeJ2wR1gx7ELKMBQ/z6', '', '', '5d5a704babe4c', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 2, 'oddy', 'fr', 'Male', '', '', 'ghhhhk@g.com', '$2y$10$VUTpzpMRuq29N.BVi1imn.YZfv82uxT5n6Yv5pOqaauiOODwcc0Fy', '', '', '5d5a717a99c7c', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 2, 'oddy', 'fr', 'Male', '', '', 'ghhhhhhk@g.com', '$2y$10$61ttas0BR.cJlwF4UHkBhOBOs1F33DHiGGkCQ5arcWis4ZWNJReve', '', '', '5d5a71c4d1dd6', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 2, 'oddy', 'fr', 'Male', '', '', 'ghhnbnbhhhhk@g.com', '$2y$10$ir4/yBKCfGTfCn7QiblyK.rEs9YPpqotTX/LD8wjtIanJJSWen6aG', '', '', '5d5a71ea51dd3', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 2, 'oddy', 'fr', 'Male', '', '', 'ghhnbhnbhhhhk@g.com', '$2y$10$3QhDdzbAv.JwYKVdPGQ6/egFpxEI4ZL68qKnQvuYvUJUekY6mIhK.', '', '', '5d5a726454422', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 2, 'oddy', 'fr', 'Male', '', '', 'ghhnbhnbddhhhhk@g.com', '$2y$10$/W9NwOPIY1as9J/AaLTdIOBlhXKS8TlN4oF5qpgLb.doh8A3n9m66', '', '', '5d5a72f35a70e', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 2, 'oddy', 'fr', 'Male', '', '', 'ghhnbhffdnbddhhhhk@g.com', '$2y$10$P4HwLd1aHTBh.w/HqrZcDeupboMBqgmPnHJFAhUK8xideYNUaiM42', '', '5d5bc4a089526', '5d5a745cacb31', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 2, 'mnmd', 'mnskmnd', 'Male', '', '', 'nbdnb@gg.com', '$2y$10$eLlwNSJs35qRbuHg0wefpu1IJpCuFFOoI5nC/k4sRkdJhldFlYdXS', '', '5d5bc06ac5b3d', '', 1, '2019-08-20 12:59:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 2, 'mnmd', 'mnskmnd', 'Male', '', '', 'nbdssdnb@gg.com', '$2y$10$5u0qE0RvkK3CjXtWyquYQOTVUrbQ.xt3qB2m6xMNc6NZQCvPYiMuO', '', '', '5d5a7b859e5d5', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 2, 'kdkjjj', 'iijij', 'Male', '', '', 'iffffsj@g.comcd', '$2y$10$Kr82fi1h7bbuGclcpt0krOp7syAFpVLTOgk/LIDrBH.jpU3RAcIEK', '', '', '5d5b44e82a458', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 2, 'kdkjjj', 'iijij', 'Male', '', '', 'iffffsj@g.comcdff', '$2y$10$mNZ7k4wXr3dcqiUxDrP0yeNDx0XNTlkNDglQLHZsCYI09VVvUpIxG', '', '', '5d5b454d98369', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 2, 'kdkjjj', 'iijij', 'Male', '', '', 'iffffsj@g.comcdffhh', '$2y$10$w65gvsSnd1YNusIbv51IleBryUtmPVY/Xm70MmLA1c/POKK.MO9q.', '', '', '5d5b45a0af6f1', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 2, 'kdkjjj', 'iijij', 'Male', '', '', 'iffffsj@g.comcdffhhs', '$2y$10$dSiUxEoTMWfazO4E6KGoL.WCEN.9jOC6pCx9pQT1NtS/uwlYZ9E2W', '', '', '5d5b462272b71', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 2, 'kdkjjj', 'iijij', 'Male', '', '', 'iffffsj@g.comcdffhhsdsd', '$2y$10$c1sgumANzZgXCH8HoPrnh.TsFoy/IExkIt1K1nzP2qz/jMlJXNAre', '', '', '5d5b46ed78b1d', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 2, 'kdkjjj', 'iijij', 'Male', '', '', 'iffffsj@g.comcdffhhsdsds', '$2y$10$iRVQFYfPxjbugDMpbf7UEuPuOVEglbiRQghCBIndu2INTquZ/OHte', '', '', '5d5b47e2c27a3', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 2, 'kdkjjj', 'iijij', 'Male', '', '', 'iffffsj@g.comchhsdsds', '$2y$10$67RmYIjrzBDYFHnjly98b.Sqh12V24RVxqInjgHRC4OLa6z4L8VNK', '', '', '5d5b4843eea93', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 2, 'kdkjjj', 'iijij', 'Male', '', '', 'iffffsj@g.comchhsdsdsdd', '$2y$10$o/Ck5Xz8XTulEGWGILM.FeN55wzJfX9X4to6kDoTwTomHofjSV2Re', '', '', '5d5b48d000b21', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 2, 'kdkjjj', 'iijij', 'Male', '', '', 'iffffsj@g.comcmhhsdsdsdd', '$2y$10$B.vY8VI5a7nsXU9ew1OfV.LBgf4G3PU5UASUh8CLmM.l.SLaAJg3q', '', '', '5d5b4901db231', 0, '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_usertype`
--

CREATE TABLE `carbiz_usertype` (
  `id` int(3) NOT NULL,
  `name` char(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_usertype`
--

INSERT INTO `carbiz_usertype` (`id`, `name`, `status`) VALUES
(1, 'admin', 1),
(2, 'business', 1),
(3, 'individual', 1);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_user_meta`
--

CREATE TABLE `carbiz_user_meta` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_user_meta`
--

INSERT INTO `carbiz_user_meta` (`id`, `user_id`, `key`, `value`, `status`) VALUES
(1, 1, 'company_name', 'netwalkers ng', 1),
(2, 1, 'phone', '', 1),
(3, 1, 'about_me', '', 1),
(4, 1, 'fb_profile', '', 1),
(5, 1, 'twitter_profile', '', 1),
(6, 1, 'li_profile', '', 1),
(7, 1, 'gp_profile', '', 1),
(8, 1, 'hide_email', '0', 1),
(9, 1, 'hide_phone', '0', 1),
(10, 5, 'company_name', 'car dealers', 1),
(11, 5, 'phone', '', 1),
(12, 5, 'about_me', '', 1),
(13, 5, 'fb_profile', '', 1),
(14, 5, 'twitter_profile', '', 1),
(15, 5, 'li_profile', '', 1),
(16, 5, 'gp_profile', '', 1),
(17, 5, 'hide_email', '0', 1),
(18, 5, 'hide_phone', '0', 1),
(19, 10, 'company_name', 'clint cars', 1),
(20, 11, 'company_name', 'admin Biz', 1),
(21, 12, 'company_name', 'nh', 1),
(22, 13, 'company_name', 'nh', 1),
(23, 14, 'company_name', 'nh', 1),
(24, 15, 'company_name', 'nh', 1),
(25, 16, 'company_name', 'nh', 1),
(26, 17, 'company_name', 'nh', 1),
(27, 18, 'company_name', 'nh', 1),
(28, 19, 'company_name', 'nh', 1),
(29, 20, 'company_name', 'nh', 1),
(30, 21, 'company_name', 'nh', 1),
(31, 22, 'company_name', 'nh', 1),
(32, 23, 'company_name', 'nh', 1),
(33, 24, 'company_name', 'nh', 1),
(34, 25, 'company_name', 'admin', 1),
(35, 26, 'company_name', 'admin', 1),
(36, 27, 'company_name', 'jnjn', 1),
(37, 28, 'company_name', 'jnjn', 1),
(38, 29, 'company_name', 'jnjn', 1),
(39, 30, 'company_name', 'jnjn', 1),
(40, 31, 'company_name', 'jnjn', 1),
(41, 32, 'company_name', 'jnjn', 1),
(42, 33, 'company_name', 'jnjn', 1),
(43, 34, 'company_name', 'jnjn', 1),
(44, 35, 'company_name', 'jnjn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `carbiz_widgets`
--

CREATE TABLE `carbiz_widgets` (
  `id` int(11) NOT NULL,
  `name` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alias` char(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL,
  `editable` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carbiz_widgets`
--

INSERT INTO `carbiz_widgets` (`id`, `name`, `alias`, `params`, `status`, `editable`) VALUES
(1, 'Facebook like box', 'fb_likebox', '', 1, 1),
(2, 'Contact text', 'contact_text', '', 1, 1),
(3, 'Follow us', 'follow_us', '', 1, 1),
(4, 'Short Description', 'short_description', '', 1, 1),
(5, 'Adsense full width', 'adsense_full_width', '', 1, 1),
(6, 'Adsense Sidebar', 'adsense_sidebar', '', 1, 1),
(7, 'Plain Search Widget', 'plain_search_widget', '', 1, 1),
(8, 'Adv Search Widget', 'advance_search_widget', '', 2, 1),
(9, 'Recent Posts Main', 'recent_posts_main', '', 1, 1),
(10, 'Category Main', 'category_main', '', 1, 1),
(11, 'Top Bar', 'top_bar', NULL, 1, 1),
(12, 'Top Bar Social', 'top_bar_social', NULL, 1, 1),
(13, 'Footer Links', 'footer_links', NULL, 1, 1),
(14, 'Top Posts', 'top_posts', NULL, 1, 1),
(15, 'Category Counter', 'category_counter', NULL, 1, 1),
(16, 'Tag Cloud', 'tag_cloud', NULL, 1, 1),
(17, 'Recent Post', 'recent_post', NULL, 1, 1),
(18, 'Category Featured Post', 'category_featured_post', NULL, 1, 1),
(19, 'Category Sidebar', 'category_sidebar', NULL, 1, 1),
(20, 'Social Media Cloud', 'social_media_cloud', NULL, 1, 1),
(21, 'Featured Posts Main', 'featured_posts_main', NULL, 1, 1),
(22, 'Top Locations Home', 'top_locations_home', NULL, 1, 1),
(23, 'Featured Post', 'featured_post', NULL, 1, 1),
(24, 'Top Locations Sidebar', 'top_locations_sidebar', NULL, 1, 1),
(25, 'Top Users', 'top_users', NULL, 1, 1),
(26, 'Login Page Description', 'login_page_description', NULL, 1, 1),
(27, 'Register Page Description', 'register_page_description', NULL, 1, 1),
(28, 'Blog post', 'blog_post', NULL, 1, 1),
(29, 'Article post', 'article_post', NULL, 1, 1),
(30, 'News post', 'news_post', NULL, 1, 1),
(31, 'Category main with subcategories', 'category_main_with_subcategories', NULL, 2, 1),
(32, 'Newsletter sidebar', 'newsletter_sidebar', NULL, 1, 1),
(33, 'infowindow', 'infowindow', NULL, 2, 1),
(34, 'Top Posts Main', 'top_posts_main', NULL, 1, 1),
(35, 'Useful Links', 'useful_links', NULL, 1, 1),
(36, 'Google Plus Page Box', 'google_plus_page_box', NULL, 1, 1),
(37, 'Social Share Button', 'social_share_button', NULL, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carbiz_blog`
--
ALTER TABLE `carbiz_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_blog_meta`
--
ALTER TABLE `carbiz_blog_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_brandmodels`
--
ALTER TABLE `carbiz_brandmodels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_categories`
--
ALTER TABLE `carbiz_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_customfields`
--
ALTER TABLE `carbiz_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_emailtmpl`
--
ALTER TABLE `carbiz_emailtmpl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_locations`
--
ALTER TABLE `carbiz_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_media`
--
ALTER TABLE `carbiz_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_options`
--
ALTER TABLE `carbiz_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_packages`
--
ALTER TABLE `carbiz_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_pages`
--
ALTER TABLE `carbiz_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD UNIQUE KEY `alias_2` (`alias`);

--
-- Indexes for table `carbiz_paystacklogs`
--
ALTER TABLE `carbiz_paystacklogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_posts`
--
ALTER TABLE `carbiz_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_post_meta`
--
ALTER TABLE `carbiz_post_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_post_package`
--
ALTER TABLE `carbiz_post_package`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- Indexes for table `carbiz_review`
--
ALTER TABLE `carbiz_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_sessions`
--
ALTER TABLE `carbiz_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `carbiz_slider`
--
ALTER TABLE `carbiz_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_users`
--
ALTER TABLE `carbiz_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_usertype`
--
ALTER TABLE `carbiz_usertype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_user_meta`
--
ALTER TABLE `carbiz_user_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carbiz_widgets`
--
ALTER TABLE `carbiz_widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carbiz_blog`
--
ALTER TABLE `carbiz_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carbiz_blog_meta`
--
ALTER TABLE `carbiz_blog_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carbiz_brandmodels`
--
ALTER TABLE `carbiz_brandmodels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `carbiz_categories`
--
ALTER TABLE `carbiz_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `carbiz_customfields`
--
ALTER TABLE `carbiz_customfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `carbiz_emailtmpl`
--
ALTER TABLE `carbiz_emailtmpl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carbiz_locations`
--
ALTER TABLE `carbiz_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `carbiz_media`
--
ALTER TABLE `carbiz_media`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carbiz_options`
--
ALTER TABLE `carbiz_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `carbiz_packages`
--
ALTER TABLE `carbiz_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carbiz_pages`
--
ALTER TABLE `carbiz_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `carbiz_paystacklogs`
--
ALTER TABLE `carbiz_paystacklogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `carbiz_posts`
--
ALTER TABLE `carbiz_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `carbiz_post_meta`
--
ALTER TABLE `carbiz_post_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `carbiz_post_package`
--
ALTER TABLE `carbiz_post_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `carbiz_review`
--
ALTER TABLE `carbiz_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carbiz_slider`
--
ALTER TABLE `carbiz_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carbiz_users`
--
ALTER TABLE `carbiz_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `carbiz_usertype`
--
ALTER TABLE `carbiz_usertype`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carbiz_user_meta`
--
ALTER TABLE `carbiz_user_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `carbiz_widgets`
--
ALTER TABLE `carbiz_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
