-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2020 at 02:41 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_4`
--

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `level`, `phone_num`, `email`, `address`, `about`) VALUES
('temi@gmail.com', 'Temi', 'Adeduro', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('bol@gmail.com', 'Bolaji', 'Olawale', '25 May, 1977', '', '1', '', 'luke@skywalker.com', '', ''),
('bolu@gmail.com', 'Bolu', 'Omosowon', '', NULL, '1', '', 'lukeskywalker.com', '', ''),
('femi@yahoo.com', 'Femi', 'Otedola', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('dakinnusoye@gmail.com', 'Tolu', 'Deborah', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('ayo.p@skyline.biz', 'Ayo', 'Paul', NULL, NULL, NULL, NULL, 'ayo@gmail.com', NULL, NULL),
('admin@skyline.biz', 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('james.s@skyline.biz', 'James', 'Smith', NULL, NULL, NULL, NULL, 'james@yahoo.com', NULL, NULL);

--
-- Dumping data for table `login_cred`
--

INSERT INTO `login_cred` (`firstname`, `lastname`, `user_id`, `password`, `user_role`) VALUES
('Bolaji', 'Olawale', 'bol@gmail.com', 'b.olawale', 'Admin'),
('Temi', 'Adeduro', 'temi@gmail.com', 'temi', 'Manager'),
('Bolu', 'Omosowon', 'bolu@gmail.com', 'bolu', 'Manager'),
('Femi', 'Otedola', 'femi@yahoo.com', 'femi', 'Manager'),
('Tolu', 'Deborah', 'dakinnusoye@gmail.com', 'abc123', 'Manager'),
('Ayo', 'Paul', 'ayo.p@skyline.biz', 'ayo1001', 'Manager'),
('admin', 'admin', 'admin@skyline.biz', 'admin123', 'Admin'),
('James', 'Smith', 'james.s@skyline.biz', 'james0000', 'User');

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`user_id`, `title`, `proj_id`, `location`, `manger`, `status`, `proj_descr`, `ch_check`, `ch_descr`, `ch_solution`, `ch_resource`, `phone_num`, `extra_doc`, `ch_theme`) VALUES
('bol@gmail.com', 'Lekki - Ikoyi Link Bridge', '17214', 'Lekki', 'Bolaji Olawale', 'On Hold', 'Building a bridge between lekki and ikoyi', 'Yes', 'Fire', 'Water', 'Air', 909, NULL, 'Smoke Greenade'),
('bol@gmail.com', 'Ikoyi Marina', '8392', 'Ikoyi', 'Bolaji Olawale', 'Archived', 'Building a marina for ikoyi water transportation', 'Yes', 'Water flooded the site', 'Use sand ', 'Rainbower', 8889988, NULL, 'Water'),
('dakinnusoye@gmail.com', '24/7 Electricity', '8821', 'Ogudu', 'Tolu Deborah', 'Open', 'provision of electricity to residents of ogudu', 'Yes', 'Constant blackout in Ogudu', 'Provision of electicity', 'Poles\r\nCables\r\nWires', 90909, NULL, 'Electricity');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
