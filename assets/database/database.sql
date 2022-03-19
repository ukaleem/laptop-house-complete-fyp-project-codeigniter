-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2019 at 05:02 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `mp_banks`
--

CREATE TABLE `mp_banks` (
  `id` int(11) NOT NULL,
  `bankname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `branch` varchar(100) CHARACTER SET latin1 NOT NULL,
  `branchcode` varchar(100) CHARACTER SET latin1 NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 NOT NULL,
  `accountno` varchar(100) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_banks`
--

INSERT INTO `mp_banks` (`id`, `bankname`, `branch`, `branchcode`, `title`, `accountno`, `status`) VALUES
(1, 'Islami Bank Bangladesh Ltd', 'Tangail', '123456789', 'Business Account ', '12345678910', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mp_bank_opening`
--

CREATE TABLE `mp_bank_opening` (
  `id` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `bank_id` int(11) NOT NULL,
  `amount` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mp_bank_transaction`
--

CREATE TABLE `mp_bank_transaction` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `bank_id` int(11) NOT NULL,
  `payee_id` int(11) NOT NULL,
  `method` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cheque_amount` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ref_no` varchar(100) CHARACTER SET latin1 NOT NULL,
  `transaction_status` int(1) NOT NULL,
  `transaction_type` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_bank_transaction`
--

INSERT INTO `mp_bank_transaction` (`id`, `transaction_id`, `bank_id`, `payee_id`, `method`, `cheque_amount`, `ref_no`, `transaction_status`, `transaction_type`) VALUES
(12, 96, 1, 2, 'Cheque', '22440.00', '12345201345', 0, 'recieved'),
(13, 97, 1, 2, 'Cheque', '22440', '', 1, 'recieved'),
(14, 99, 1, 2, 'Cheque', '1530', '123456789', 1, 'recieved'),
(15, 100, 1, 2, 'Cheque', '1530', '123456789', 1, 'recieved'),
(16, 101, 1, 2, 'Cheque', '200', '147852369', 1, 'recieved'),
(17, 102, 1, 2, 'Cheque', '200', '147852369', 0, 'recieved'),
(18, 103, 1, 2, 'Cash', '200', '', 0, 'recieved'),
(19, 105, 1, 5, 'Cash', '250000', '12345', 0, 'recieved'),
(20, 106, 1, 5, 'Cheque', '2448.00', 'ghh', 0, 'recieved'),
(21, 107, 1, 4, 'Cheque', '50000', '12345678', 0, 'paid'),
(22, 110, 1, 4, 'Cheque', '0', '123456789', 1, 'paid'),
(23, 111, 1, 4, 'Cheque', '35000', '', 0, 'recieved'),
(24, 112, 1, 4, 'Cheque', '35000', '', 0, 'recieved'),
(25, 114, 1, 1, 'Cheque', '2448.00', '12345678', 0, 'recieved'),
(26, 115, 1, 1, 'Cash', '500000', '124', 1, 'recieved'),
(27, 116, 1, 4, 'Cheque', '10000', '123456789', 0, 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `mp_barcode`
--

CREATE TABLE `mp_barcode` (
  `id` int(11) NOT NULL,
  `barcode` varchar(255) CHARACTER SET latin1 NOT NULL,
  `random_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` longtext CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_barcode`
--

INSERT INTO `mp_barcode` (`id`, `barcode`, `random_no`, `description`) VALUES
(3, 'A8FR250-Fan Regulator', 'J220H000051', 'sdad');

-- --------------------------------------------------------

--
-- Table structure for table `mp_brand`
--

CREATE TABLE `mp_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_brand`
--

INSERT INTO `mp_brand` (`id`, `name`) VALUES
(1, 'Walton'),
(2, 'Marcel'),
(3, 'Akij Cement'),
(4, 'Rod BSRM'),
(5, 'Kejea');

-- --------------------------------------------------------

--
-- Table structure for table `mp_brand_sector`
--

CREATE TABLE `mp_brand_sector` (
  `id` int(11) NOT NULL,
  `sector` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created` date NOT NULL,
  `updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_brand_sector`
--

INSERT INTO `mp_brand_sector` (`id`, `sector`, `created`, `updated`) VALUES
(1, 'A8, E4 switch socket', '2018-05-28', '2018-05-28'),
(2, 'Lighting', '2018-05-29', '2018-05-29'),
(3, 'W,S,V Switch socket', '2018-05-29', '2018-05-29'),
(4, 'Piano,Accesories,Fan &amp; Battery', '2018-05-29', '2018-05-29'),
(5, 'Rod Scoarbaer ', '2018-06-04', '2018-06-04'),
(6, '0', '2018-07-05', '2018-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `mp_category`
--

CREATE TABLE `mp_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `register_date` date NOT NULL,
  `status` int(1) NOT NULL,
  `added_by` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_category`
--

INSERT INTO `mp_category` (`id`, `category_name`, `description`, `register_date`, `status`, `added_by`) VALUES
(1, 'Walton Elictric', 'Walton Elictric', '2018-05-28', 0, 'Pencil'),
(2, 'Rod', 'sa', '2018-06-04', 0, 'Jannat Group'),
(3, 'Category id', 'Product name', '2018-06-09', 0, 'Jannat Group'),
(4, '1', 'MSD55FD (55\")', '2018-06-09', 0, 'Jannat Group'),
(5, '1', 'MSD49FD (49\")', '2018-06-09', 0, 'Jannat Group'),
(6, '1', 'MD4-TS43-DL200-(43\'\')-SMART', '2018-06-09', 0, 'Jannat Group'),
(7, '1', 'MD1-TS43-FV100  (43\")', '2018-06-09', 0, 'Jannat Group'),
(8, '1', 'MD437TS25  (43\")', '2018-06-09', 0, 'Jannat Group'),
(9, '1', 'M42T3500 (42\'\')', '2018-06-09', 0, 'Jannat Group'),
(10, '1', 'MC42D12 (42\'\') - (Non Warranty)', '2018-06-09', 0, 'Jannat Group'),
(11, '1', 'M40E3000-FHD (40\")', '2018-06-09', 0, 'Jannat Group'),
(12, '1', 'M40E36D (40\")', '2018-06-09', 0, 'Jannat Group'),
(13, '1', 'ME396AFH (39\")', '2018-06-09', 0, 'Jannat Group'),
(14, '1', 'ME326DH-S-(32\")-SMART', '2018-06-09', 0, 'Jannat Group'),
(15, '1', 'ME4-DH32-BY200-(32\")-SMART', '2018-06-09', 0, 'Jannat Group'),
(16, '1', 'ME326AH (32\")', '2018-06-09', 0, 'Jannat Group'),
(17, '1', 'ME326AH-Silver (32\")', '2018-06-09', 0, 'Jannat Group'),
(18, '1', 'MD326SR (32\")', '2018-06-09', 0, 'Jannat Group'),
(19, '1', 'MD326SR-Silver (32\")', '2018-06-09', 0, 'Jannat Group'),
(20, '1', 'MD326JX (32\")', '2018-06-09', 0, 'Jannat Group'),
(21, '1', 'MD326JX-Silver (32\")', '2018-06-09', 0, 'Jannat Group'),
(22, '1', 'MT32D27 (32\'\')', '2018-06-09', 0, 'Jannat Group'),
(23, '1', 'M32E3000 (32\'\')', '2018-06-09', 0, 'Jannat Group'),
(24, '1', 'MD1-EF32-SV100 (32\'\')', '2018-06-09', 0, 'Jannat Group'),
(25, '1', 'MD286CD-Silver (28\")', '2018-06-09', 0, 'Jannat Group'),
(26, '1', 'MD286CD  (28\")', '2018-06-09', 0, 'Jannat Group'),
(27, '1', 'MD285AH-Silver (28\")', '2018-06-09', 0, 'Jannat Group'),
(28, '1', 'MD285AH (28\")', '2018-06-09', 0, 'Jannat Group'),
(29, '1', 'MDF-DT24-AU200-(24\'\')Full HD', '2018-06-09', 0, 'Jannat Group'),
(30, '1', 'MCT24O4K (24\")', '2018-06-09', 0, 'Jannat Group'),
(31, '1', 'MCT24O4K-Silver (24\")', '2018-06-09', 0, 'Jannat Group'),
(32, '1', 'MD1-DT24-MC100 (24\")', '2018-06-09', 0, 'Jannat Group'),
(33, '1', 'MD1-DT24-MC100-Silver (24\")', '2018-06-09', 0, 'Jannat Group'),
(34, '1', 'MD1-DT24-RL100 (24\")', '2018-06-09', 0, 'Jannat Group'),
(35, '1', 'MD1-DT24-RL100-Silver (24\")', '2018-06-09', 0, 'Jannat Group'),
(36, '1', 'MCT24O4X (24\")', '2018-06-09', 0, 'Jannat Group'),
(37, '1', 'MCT24O4C (24\")', '2018-06-09', 0, 'Jannat Group'),
(38, '1', 'MCT24O4 (24\")', '2018-06-09', 0, 'Jannat Group'),
(39, '1', 'MCT24O4-Silver (24\")', '2018-06-09', 0, 'Jannat Group'),
(40, '1', 'MCT24DF6 (24\")', '2018-06-09', 0, 'Jannat Group'),
(41, '1', 'MCT24DF6-Silver (24\")', '2018-06-09', 0, 'Jannat Group'),
(42, '1', 'MSE20BX6 (20\')', '2018-06-09', 0, 'Jannat Group'),
(43, '1', 'MSE20BX6-Silver (20\'\')', '2018-06-09', 0, 'Jannat Group');

-- --------------------------------------------------------

--
-- Table structure for table `mp_contactabout`
--

CREATE TABLE `mp_contactabout` (
  `id` int(11) NOT NULL,
  `contact_title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `contact_description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `phone_number` varchar(255) CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `facebook` varchar(255) CHARACTER SET latin1 NOT NULL,
  `twitter` varchar(255) CHARACTER SET latin1 NOT NULL,
  `linked` varchar(255) CHARACTER SET latin1 NOT NULL,
  `googleplus` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_quotation` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_title2` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about_description` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_contactabout`
--

INSERT INTO `mp_contactabout` (`id`, `contact_title`, `contact_description`, `phone_number`, `address`, `email`, `facebook`, `twitter`, `linked`, `googleplus`, `about_title`, `about_quotation`, `about_name`, `about_title2`, `about_description`) VALUES
(1, 'Contact Us', 'Tangail Marcel', '01715932630', 'Tangail', 'aloranbdsoft@gmail.com', 'aloranbdsoft@gmail.com', 'ali.i.roshan', 'ali.i.roshan', 'ali.i.roshan', '« Lorem Ipsum is simply dummy text of the printing  »', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.p;#039;s standard dummy text ever since the 1500s, when an unknown printer took a ga', '— Medix Pharmacy', 'About Us', 'Praesent convallis tortor et enim laoreet, vel consectetur purus latoque penatibus et dis parturient.');

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_payments`
--

CREATE TABLE `mp_customer_payments` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `method` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agentname` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_customer_payments`
--

INSERT INTO `mp_customer_payments` (`id`, `transaction_id`, `customer_id`, `amount`, `method`, `date`, `description`, `agentname`) VALUES
(1, 68, 2, '100.00', 'Cash', '2018-06-02', 'dfdf', 'Jannat Group'),
(2, 69, 2, '500.00', 'Cash', '2018-06-02', 'fgds', 'Jannat Group'),
(3, 75, 2, '500.00', 'Cash', '2018-06-04', 'fr', 'Jannat Group'),
(4, 81, 2, '1000.00', 'Cash', '2018-06-06', 'rg4', 'Jannat Group'),
(5, 84, 2, '1000.00', 'Cash', '2018-06-06', 'tgre', 'Jannat Group'),
(6, 87, 2, '100000.00', 'Cash', '2018-06-15', 'vjn', 'Md. Habibur Rahman'),
(7, 88, 2, '1012.00', 'Cash', '2018-06-15', 's', 'Md. Habibur Rahman'),
(8, 97, 2, '22440.00', 'Cheque', '2018-06-18', 'sdfgvsd', 'Md. Habibur Rahman'),
(9, 100, 2, '1530.00', 'Cheque', '2018-06-18', 'xfvds', 'Md. Habibur Rahman'),
(10, 101, 2, '200.00', 'Cheque', '2018-06-18', 'vjn', 'Md. Habibur Rahman'),
(11, 102, 2, '200.00', 'Cheque', '2018-06-18', 'zsdas', 'Md. Habibur Rahman'),
(12, 118, 2, '1336.00', 'Cash', '2018-06-22', '018-06-06', 'habibipsita@gmail.com'),
(13, 130, 6, '1000.00', 'Cash', '2018-07-04', 'dfsdf', 'Md. Habibur Rahman'),
(14, 132, 6, '1000.00', 'Cash', '2018-07-04', 'ffdasa', 'Md. Habibur Rahman'),
(15, 188, 2, '1200.00', 'Cash', '2018-07-12', 'zZx', 'Md. Habibur Rahman');

-- --------------------------------------------------------

--
-- Table structure for table `mp_drivers`
--

CREATE TABLE `mp_drivers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `contact` varchar(15) CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `lisence` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ref` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `cus_picture` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_drivers`
--

INSERT INTO `mp_drivers` (`id`, `name`, `contact`, `address`, `lisence`, `ref`, `date`, `cus_picture`, `status`) VALUES
(2, 'gfsdf', '568', 'gdfgds', '63863', 'grt', '2018-07-05', 'default.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mp_expense`
--

CREATE TABLE `mp_expense` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `head_id` int(11) NOT NULL,
  `total_bill` varchar(255) CHARACTER SET latin1 NOT NULL,
  `total_paid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `user` varchar(255) CHARACTER SET latin1 NOT NULL,
  `method` varchar(50) CHARACTER SET latin1 NOT NULL,
  `description` longtext CHARACTER SET latin1 NOT NULL,
  `payee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_expense`
--

INSERT INTO `mp_expense` (`id`, `transaction_id`, `head_id`, `total_bill`, `total_paid`, `date`, `user`, `method`, `description`, `payee_id`) VALUES
(1, 139, 6, '500', '500', '2018-07-04', 'Md. Habibur Rahman', 'Cash', 'Mr. Tarek Khan | Postpaid Bill | 01712031466', 7),
(2, 153, 1, '9500', '2000', '2018-07-09', 'Md. Habibur Rahman', 'Cash', '', 7),
(3, 154, 1, '9500', '3500', '2018-07-11', 'Md. Habibur Rahman', 'Cash', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `mp_generalentry`
--

CREATE TABLE `mp_generalentry` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT '0',
  `date` date NOT NULL,
  `naration` varchar(255) CHARACTER SET latin1 NOT NULL,
  `generated_source` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_generalentry`
--

INSERT INTO `mp_generalentry` (`id`, `customer_id`, `date`, `naration`, `generated_source`) VALUES
(1, 0, '2018-05-28', 'Transaction occured from POS', 'pos'),
(4, 0, '2018-05-28', 'Transaction occured from POS', 'pos'),
(7, 0, '2018-05-28', 'Transaction occured from POS', 'pos'),
(8, 0, '2018-05-28', 'Transaction occured from supply POS', 'pos'),
(9, 0, '2018-05-28', 'Transaction occured from supply POS', 'pos'),
(10, 0, '2018-05-28', 'Transaction occured from supply POS', 'pos'),
(11, 0, '2018-05-28', 'Transaction occured from supply POS', 'pos'),
(12, 0, '2018-05-29', 'Transaction occured from supply POS', 'pos'),
(13, 0, '2018-05-29', 'Transaction occured from POS', 'pos'),
(14, 0, '2018-05-29', 'Transaction occured from POS', 'pos'),
(15, 0, '2018-05-29', 'Transaction occured from supply POS', 'pos'),
(16, 0, '2018-05-29', 'Transaction occured from supply POS', 'pos'),
(17, 0, '2018-05-29', 'Transaction occured from supply POS', 'pos'),
(18, 0, '2018-05-29', 'Transaction occured from supply POS', 'pos'),
(19, 0, '2018-05-29', 'Transaction occured from supply POS', 'pos'),
(20, 0, '2018-05-29', 'Transaction occured from supply POS', 'pos'),
(21, 0, '2018-05-30', 'Transaction occured from supply POS', 'pos'),
(24, 0, '2018-05-30', 'Transaction occured from supply POS', 'pos'),
(25, 0, '2018-05-30', 'Transaction occured from supply POS', 'pos'),
(26, 0, '2018-05-30', 'Transaction occured from supply POS', 'pos'),
(27, 0, '2018-05-30', 'Transaction occured from POS', 'pos'),
(28, 0, '2018-05-30', 'Transaction occured from POS', 'pos'),
(29, 0, '2018-05-30', 'Transaction occured from supply POS', 'pos'),
(30, 0, '2018-05-30', 'Transaction occured from POS', 'pos'),
(31, 0, '2018-05-30', 'Transaction occured from supply POS', 'pos'),
(32, 0, '2018-05-30', 'Transaction occured from supply POS', 'pos'),
(33, 0, '2018-05-30', 'Transaction occured from POS', 'pos'),
(34, 0, '2018-05-30', 'Transaction occured from supply POS', 'pos'),
(35, 0, '2018-05-30', 'Transaction occured from supply POS', 'pos'),
(36, 0, '2018-05-30', 'Transaction occured from POS', 'pos'),
(37, 0, '2018-06-01', 'Transaction occured from POS', 'pos'),
(38, 0, '2018-06-01', 'Transaction occured from POS', 'pos'),
(39, 0, '2018-06-01', 'Transaction occured from POS', 'pos'),
(40, 0, '2018-06-01', 'Transaction occured from supply POS', 'pos'),
(41, 0, '2018-06-01', 'Transaction occured from supply POS', 'pos'),
(42, 0, '2018-06-01', 'Transaction occured from POS', 'pos'),
(43, 0, '2018-06-01', 'Transaction occured from POS', 'pos'),
(44, 0, '2018-06-01', 'Transaction occured from supply POS', 'pos'),
(45, 0, '2018-06-01', 'Transaction occured from supply POS', 'pos'),
(46, 0, '2018-06-01', 'Transaction occured from POS', 'pos'),
(47, 0, '2018-06-01', 'Transaction occured from supply POS', 'pos'),
(48, 0, '2018-06-01', 'Transaction occured from POS', 'pos'),
(49, 0, '2018-06-01', 'Transaction occured from POS', 'pos'),
(50, 0, '2018-06-01', 'Transaction occured from POS', 'pos'),
(51, 0, '2018-06-01', 'Transaction occured from POS', 'pos'),
(52, 0, '2018-06-01', 'Transaction occured from POS', 'pos'),
(53, 0, '2018-06-01', 'Transaction occured from supply POS', 'pos'),
(54, 0, '2018-06-02', 'Transaction occured from POS', 'pos'),
(55, 0, '2018-06-02', 'Transaction occured from return inventory.', 'return_pos'),
(56, 0, '2018-06-02', 'Transaction occured from supply POS', 'pos'),
(60, 0, '2018-06-02', 'Transaction occured from POS', 'pos'),
(61, 0, '2018-06-02', 'Transaction occured from POS', 'pos'),
(62, 0, '2018-06-02', 'Transaction occured from POS', 'pos'),
(63, 0, '2018-06-02', 'Transaction occured from POS', 'pos'),
(64, 0, '2018-06-02', 'Transaction occured from supply POS', 'pos'),
(66, 0, '2018-06-02', 'Transaction occured from supply POS', 'pos'),
(67, 0, '2018-06-02', 'Transaction occured from supply POS', 'pos'),
(68, 0, '2018-06-02', 'Transaction occured from customer payments', 'customer_payment'),
(69, 0, '2018-06-02', 'Transaction occured from customer payments', 'customer_payment'),
(70, 0, '2018-06-04', 'Transaction occured from POS', 'pos'),
(71, 0, '2018-06-04', 'Transaction occured from supply POS', 'pos'),
(72, 0, '2018-06-04', 'Transaction occured from POS', 'pos'),
(73, 0, '2018-06-04', 'Transaction occured from POS', 'pos'),
(74, 0, '2018-06-04', 'Transaction occured from POS', 'pos'),
(75, 0, '2018-06-04', 'Transaction occured from customer payments', 'customer_payment'),
(76, 0, '2018-06-04', 'Transaction occured from POS', 'pos'),
(77, 0, '2018-06-04', 'Transaction occured from supply POS', 'pos'),
(78, 0, '2018-06-06', 'Transaction occured from POS', 'pos'),
(79, 0, '2018-06-06', 'Transaction occured from supply POS', 'pos'),
(80, 0, '2018-06-06', 'Transaction occured from supply POS', 'pos'),
(81, 0, '2018-06-06', 'Transaction occured from customer payments', 'customer_payment'),
(82, 0, '2018-06-06', 'Transaction occured from POS', 'pos'),
(83, 0, '2018-06-06', 'Transaction occured from supply POS', 'pos'),
(84, 0, '2018-06-06', 'Transaction occured from customer payments', 'customer_payment'),
(85, 0, '2018-06-11', 'Transaction occured from POS', 'pos'),
(86, 0, '2018-06-11', 'Transaction occured from POS', 'pos'),
(87, 0, '2018-06-15', 'Transaction occured from customer payments', 'customer_payment'),
(88, 0, '2018-06-15', 'Transaction occured from customer payments', 'customer_payment'),
(89, 0, '2018-06-15', 'Transaction occured from Supplier payments', 'supplier_payment'),
(90, 0, '2018-06-15', 'Transaction occured from Supplier payments', 'supplier_payment'),
(96, 0, '2018-06-18', 'Transaction occured from supply POS', 'pos'),
(97, 0, '2018-06-18', 'Transaction occured from customer payments', 'customer_payment'),
(99, 0, '2018-06-18', 'Transaction occured from supply POS', 'pos'),
(100, 0, '2018-06-18', 'Transaction occured from customer payments', 'customer_payment'),
(101, 0, '2018-06-18', 'Transaction occured from customer payments', 'customer_payment'),
(102, 0, '2018-06-18', 'Transaction occured from customer payments', 'customer_payment'),
(103, 0, '2018-06-18', '', 'deposit'),
(105, 0, '2018-06-18', 'ghgh', 'deposit'),
(106, 0, '2018-06-18', 'Transaction occured from supply POS', 'pos'),
(107, 0, '2018-06-18', 'Transaction occured from Supplier payments', 'supplier_payment'),
(109, 0, '2018-06-18', 'Transaction occured from return inventory.', 'return_pos'),
(110, 0, '2018-06-18', 'Transaction occured from create purchases', 'create_purchases'),
(111, 0, '2018-06-18', 'Transaction occured from purchases return', 'purchases_return'),
(112, 0, '2018-06-18', 'Transaction occured from purchases return', 'purchases_return'),
(114, 0, '2018-06-19', 'Transaction occured from supply POS', 'pos'),
(115, 0, '2018-06-19', 'hbj', 'deposit'),
(116, 0, '2018-06-19', 'bvchjb', 'cheque'),
(117, 0, '2018-06-20', 'Transaction occured from POS', 'pos'),
(118, 0, '2018-06-22', 'Transaction occured from customer payments', 'customer_payment'),
(120, 0, '2018-06-24', 'Transaction occured from POS', 'pos'),
(121, 0, '2018-06-24', 'Transaction occured from POS', 'pos'),
(122, 0, '2018-06-24', 'Transaction occured from POS', 'pos'),
(123, 0, '2018-06-24', 'Transaction occured from supply POS', 'pos'),
(124, 0, '2018-06-25', 'Transaction occured from POS', 'pos'),
(125, 0, '2018-06-25', 'Transaction occured from return inventory.', 'return_pos'),
(126, 0, '2018-06-30', 'Transaction occured from POS', 'pos'),
(127, 0, '2018-06-30', 'Transaction occured from POS', 'pos'),
(128, 0, '2018-07-04', 'Transaction occured from POS', 'pos'),
(129, 0, '2018-07-04', 'Transaction occured from POS', 'pos'),
(130, 0, '2018-07-04', 'Transaction occured from customer payments', 'customer_payment'),
(131, 0, '2018-07-04', 'Transaction occured from POS', 'pos'),
(132, 0, '2018-07-04', 'Transaction occured from customer payments', 'customer_payment'),
(133, 0, '2018-07-04', 'Transaction occured from POS', 'pos'),
(134, 0, '2018-07-04', 'Transaction occured from create purchases', 'create_purchases'),
(139, 0, '2018-07-04', 'Transaction occured from expense', 'expense'),
(141, 0, '2018-07-04', 'Transaction occured from supply POS', 'pos'),
(142, 0, '2018-07-04', 'Transaction occured from supply POS', 'pos'),
(143, 0, '2018-07-04', 'Transaction occured from POS', 'pos'),
(144, 0, '2018-07-04', 'Transaction occured from POS', 'pos'),
(145, 0, '2018-07-05', 'Transaction occured from POS', 'pos'),
(146, 0, '2018-07-05', 'Transaction occured from POS', 'pos'),
(147, 0, '2018-07-06', 'Transaction occured from POS', 'pos'),
(148, 0, '2018-07-06', 'Transaction occured from POS', 'pos'),
(149, 0, '2018-07-01', 'Habib', 'Opening balance'),
(150, 0, '2018-07-02', 'Moyn', 'Opening balance'),
(151, 0, '2018-07-03', 'Hasan', 'Opening balance'),
(152, 0, '2018-07-02', 'hsrijf', 'Opening balance'),
(153, 0, '2018-07-09', 'Transaction occured from expense', 'expense'),
(154, 0, '2018-07-09', 'Transaction occured from expense', 'expense'),
(155, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(156, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(157, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(158, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(159, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(160, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(161, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(162, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(163, 0, '2018-07-09', 'Transaction occured from create purchases', 'create_purchases'),
(164, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(165, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(166, 0, '2018-07-06', 'Mr. Tarek Khan | Postpaid Bill | 01712031466', 'Opening balance'),
(167, 0, '2018-07-09', 'Transaction occured from supply POS', 'pos'),
(168, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(169, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(170, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(171, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(172, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(173, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(174, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(175, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(176, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(177, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(178, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(179, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(180, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(181, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(182, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(183, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(184, 0, '2018-07-09', 'Transaction occured from POS', 'pos'),
(186, 0, '2018-07-12', 'Transaction occured from POS', 'pos'),
(187, 0, '2018-07-12', 'Transaction occured from POS', 'pos'),
(188, 0, '2018-07-12', 'Transaction occured from customer payments', 'customer_payment'),
(189, 0, '2019-02-05', 'Transaction occured from POS', 'pos'),
(190, 0, '2019-02-05', 'Transaction occured from POS', 'pos'),
(191, 0, '2019-02-05', 'Transaction occured from POS', 'pos'),
(192, 0, '2019-02-05', 'Transaction occured from supply POS', 'pos'),
(193, 0, '2019-02-18', 'Transaction occured from POS', 'pos'),
(194, 0, '2019-02-18', 'Transaction occured from supply POS', 'pos'),
(195, 1, '2019-11-14', 'This is a description', 'Opening balance');

-- --------------------------------------------------------

--
-- Table structure for table `mp_head`
--

CREATE TABLE `mp_head` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `nature` varchar(50) CHARACTER SET latin1 NOT NULL,
  `type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `relation_id` int(11) NOT NULL,
  `expense_type` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_head`
--

INSERT INTO `mp_head` (`id`, `name`, `nature`, `type`, `relation_id`, `expense_type`) VALUES
(1, 'Salary', 'Expense', 'Current', 0, 'Cash Expense'),
(2, 'Cash', 'Assets', 'Non-Current', 0, 'Non-Cash Expense'),
(3, 'Inventory', 'Revenue', 'Current', 0, 'Cash Expense'),
(4, 'Accounts receivable', 'Assets', 'Current', 0, '-'),
(5, 'Accounts payable', 'Libility', 'Current', 0, 'Cash Expense'),
(6, 'Telephone Expense', 'Expense', 'Current', 0, '-'),
(7, 'CapitalStock', 'Equity', 'Current', 0, '-'),
(8, 'Land', 'Assets', 'Non-Current', 0, '-'),
(9, 'Building', 'Assets', 'Non-Current', 0, '-'),
(10, 'Notes payable', 'Libility', 'Non-Current', 0, '-'),
(11, 'Tools and Equipments', 'Assets', 'Current', 0, '-'),
(12, 'Repair Service Revenue', 'Revenue', 'Current', 0, '-'),
(13, 'Wages Expense', 'Expense', 'Current', 0, '-'),
(14, 'Utitlity Expense', 'Expense', 'Current', 0, 'Cash Expense'),
(15, 'Adverstising Expense', 'Expense', 'Current', 0, '-'),
(16, 'Cash in bank', 'Assets', 'Current', 0, '-');

-- --------------------------------------------------------

--
-- Table structure for table `mp_invoices`
--

CREATE TABLE `mp_invoices` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `discount` decimal(11,2) NOT NULL,
  `status` int(1) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agentname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cus_id` int(11) NOT NULL,
  `cus_picture` varchar(255) CHARACTER SET latin1 NOT NULL,
  `delivered_to` varchar(100) CHARACTER SET latin1 NOT NULL,
  `delivered_by` varchar(100) CHARACTER SET latin1 NOT NULL,
  `delivered_date` date NOT NULL,
  `delivered_description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `shippingcharges` decimal(11,2) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `payment_method` int(1) NOT NULL,
  `total_bill` decimal(11,2) NOT NULL,
  `bill_paid` decimal(11,2) NOT NULL,
  `source` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_invoices`
--

INSERT INTO `mp_invoices` (`id`, `transaction_id`, `date`, `discount`, `status`, `description`, `agentname`, `cus_id`, `cus_picture`, `delivered_to`, `delivered_by`, `delivered_date`, `delivered_description`, `shippingcharges`, `prescription_id`, `region_id`, `vehicle_id`, `driver_id`, `payment_method`, `total_bill`, `bill_paid`, `source`) VALUES
(3, 7, '2018-05-28', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '85.00', '85.00', 0),
(4, 8, '2018-05-28', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '1734.00', '1734.00', 1),
(5, 9, '2018-05-28', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '1734.00', '1734.00', 1),
(6, 10, '2018-05-28', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '867.00', '867.00', 1),
(7, 11, '2018-05-28', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '867.00', '867.00', 1),
(8, 12, '2018-05-29', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '1530.00', '1530.00', 1),
(9, 13, '2018-05-29', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '85.00', '85.00', 0),
(10, 14, '2018-05-29', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '4050.00', '4050.00', 0),
(11, 15, '2018-05-29', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '1530.00', '1530.00', 1),
(12, 16, '2018-05-29', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '1530.00', '1530.00', 1),
(13, 17, '2018-05-29', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '3060.00', '3060.00', 1),
(14, 18, '2018-05-29', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '1734.00', '1734.00', 1),
(15, 19, '2018-05-29', '0.00', 0, 'op', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '867.00', '867.00', 1),
(16, 20, '2018-05-29', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '3876.00', '3876.00', 1),
(17, 21, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '1938.00', '1938.00', 1),
(20, 24, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '2244.00', '2244.00', 1),
(21, 25, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '3876.00', '3876.00', 1),
(22, 26, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '1938.00', '1938.00', 1),
(23, 27, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '190.00', '190.00', 0),
(24, 28, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '56.00', '56.00', 0),
(25, 29, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '112.00', '112.00', 1),
(26, 30, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '32.00', '32.00', 0),
(27, 31, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '32.00', '32.00', 1),
(28, 32, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '16.00', '16.00', 1),
(29, 33, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '32.00', '32.00', 0),
(30, 34, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '32.00', '32.00', 1),
(31, 35, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '88.00', '88.00', 1),
(32, 36, '2018-05-30', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '12992.00', '12992.00', 0),
(33, 37, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '115.00', '115.00', 0),
(34, 38, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '2400.00', '2400.00', 0),
(35, 39, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '1800.00', '1800.00', 0),
(36, 40, '2018-06-01', '0.00', 0, 'test', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '4080.00', '4080.00', 1),
(37, 41, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '7344.00', '7344.00', 1),
(38, 42, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '11000.00', '11000.00', 0),
(39, 43, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '91800.00', '91800.00', 0),
(40, 44, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '91800.00', '91800.00', 1),
(41, 45, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '229500.00', '229500.00', 1),
(42, 46, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '91800.00', '91800.00', 0),
(43, 47, '2018-06-01', '0.00', 0, 'This is a test purpose', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '4896.00', '4896.00', 1),
(44, 48, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '360.00', '360.00', 0),
(45, 49, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '252000.00', '252000.00', 0),
(46, 50, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0),
(47, 51, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '115000.00', '115000.00', 0),
(48, 52, '2018-06-01', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '115000.00', '115000.00', 0),
(49, 53, '2018-06-01', '0.00', 1, 'cvcx', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '3774.00', '3774.00', 1),
(50, 54, '2018-06-02', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '380.00', '380.00', 0),
(51, 56, '2018-06-02', '0.00', 0, '', 'Jannat Group', 2, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '2448.00', '2448.00', 1),
(55, 60, '2018-06-02', '0.00', 0, '', 'Jannat Group', 2, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '230000.00', '0.00', 0),
(56, 61, '2018-06-02', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '115000.00', '0.00', 0),
(57, 62, '2018-06-02', '0.00', 1, 'eer', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '115000.00', '0.00', 0),
(58, 63, '2018-06-02', '0.00', 0, '', 'Jannat Group', 2, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '150.00', '0.00', 0),
(59, 64, '2018-06-02', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '9690.00', '0.00', 1),
(61, 66, '2018-06-02', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '11424.00', '0.00', 1),
(62, 67, '2018-06-02', '0.00', 0, '', 'Jannat Group', 2, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '9180.00', '0.00', 1),
(63, 70, '2018-06-04', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '180.00', '180.00', 0),
(64, 71, '2018-06-04', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '1836.00', '1836.00', 1),
(65, 72, '2018-06-04', '0.00', 0, '', 'Jannat Group', 2, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '255.00', '255.00', 0),
(66, 73, '2018-06-04', '0.00', 0, '', 'Jannat Group', 2, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '240.00', '240.00', 0),
(67, 74, '2018-06-04', '0.00', 0, '', 'Jannat Group', 2, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '1200.00', '0.00', 0),
(68, 76, '2018-06-04', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '80.00', '80.00', 0),
(69, 77, '2018-06-04', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '1600.00', '1600.00', 1),
(70, 78, '2018-06-06', '0.00', 0, '', 'Jannat Group', 2, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '1800.00', '1800.00', 0),
(71, 79, '2018-06-06', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '1836.00', '500.00', 1),
(72, 80, '2018-06-06', '0.00', 0, '', 'Jannat Group', 2, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '1836.00', '500.00', 1),
(73, 82, '2018-06-06', '0.00', 0, '', 'Jannat Group', 2, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '180.00', '180.00', 0),
(74, 83, '2018-06-06', '0.00', 0, '', 'Jannat Group', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '1836.00', '500.00', 1),
(75, 85, '2018-06-11', '0.00', 0, '', 'Md. Habibur Rahman', 2, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '85.00', '85.00', 0),
(76, 86, '2018-06-11', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '170.00', '170.00', 0),
(79, 96, '2018-06-18', '0.00', 0, 'gfdsf', 'Md. Habibur Rahman', 2, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 1, '22440.00', '22440.00', 1),
(80, 99, '2018-06-18', '0.00', 0, 'gh', 'Md. Habibur Rahman', 2, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 1, '1530.00', '1530.00', 1),
(81, 106, '2018-06-18', '0.00', 0, 'fghrg', 'Md. Habibur Rahman', 5, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 1, '2448.00', '2448.00', 1),
(82, 114, '2018-06-19', '0.00', 0, 'hgfdh', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 1, '2448.00', '2448.00', 1),
(83, 117, '2018-06-20', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '255.00', '255.00', 0),
(84, 120, '2018-06-24', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '25.00', '25.00', 0),
(85, 121, '2018-06-24', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '13.00', '13.00', 0),
(86, 122, '2018-06-24', '20.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '985.00', '500.00', 0),
(87, 123, '2018-06-24', '0.00', 0, '', 'Md. Habibur Rahman', 2, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 1, 0, '22.00', '22.00', 1),
(88, 124, '2018-06-25', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '25.00', '25.00', 0),
(89, 126, '2018-06-30', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0),
(90, 127, '2018-06-30', '0.00', 0, '', 'Md. Habibur Rahman', 2, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '450.00', '450.00', 0),
(91, 128, '2018-07-04', '0.00', 0, '', 'Md. Habibur Rahman', 6, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '1515.00', '1515.00', 0),
(92, 129, '2018-07-04', '0.00', 0, '', 'Md. Habibur Rahman', 6, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '1926.00', '0.00', 0),
(93, 131, '2018-07-04', '50.00', 0, '', 'Md. Habibur Rahman', 6, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '1100.00', '500.00', 0),
(94, 133, '2018-07-04', '0.00', 1, '', 'Md. Habibur Rahman', 6, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '1150.00', '500.00', 0),
(95, 141, '2018-07-04', '0.00', 0, '', 'Md. Habibur Rahman', 2, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 2, 0, '200.00', '200.00', 1),
(96, 142, '2018-07-04', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 2, 0, '201.82', '201.82', 1),
(97, 143, '2018-07-04', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '13.32', '13.32', 0),
(98, 144, '2018-07-04', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '630.00', '630.00', 0),
(99, 145, '2018-07-05', '0.00', 0, '', 'Md. Habibur Rahman', 6, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '2417.00', '2417.00', 0),
(100, 146, '2018-07-05', '0.00', 0, '', 'Md. Habibur Rahman', 8, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '2300.00', '2300.00', 0),
(101, 147, '2018-07-06', '20.00', 1, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '20431.00', '20431.00', 0),
(102, 148, '2018-07-06', '200.00', 0, '', 'Md. Habibur Rahman', 8, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '63320.00', '63320.00', 0),
(103, 155, '2018-07-09', '0.00', 1, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '31701.60', '31701.60', 0),
(104, 156, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(105, 157, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(106, 158, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(107, 159, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '1250.00', '1250.00', 0),
(108, 160, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(109, 161, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(110, 162, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(111, 164, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(112, 165, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 2, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(113, 167, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 2, 0, '1.32', '1.32', 1),
(114, 168, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(115, 169, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(116, 170, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0),
(117, 171, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '950.00', '950.00', 0),
(118, 172, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '95.00', '95.00', 0),
(119, 173, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '95.00', '95.00', 0),
(120, 174, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(121, 175, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(122, 176, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '95.00', '95.00', 0),
(123, 177, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(124, 178, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '95.00', '95.00', 0),
(125, 179, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(126, 180, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '95.00', '95.00', 0),
(127, 181, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(128, 182, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '95.00', '95.00', 0),
(129, 183, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '125.00', '125.00', 0),
(130, 184, '2018-07-09', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '95.00', '95.00', 0),
(131, 186, '2018-07-12', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '13.32', '13.32', 0),
(132, 187, '2018-07-12', '0.00', 0, '', 'Md. Habibur Rahman', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '7.42', '7.42', 0),
(133, 189, '2019-02-05', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '69.00', '69.00', 0),
(134, 190, '2019-02-05', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '14.84', '14.84', 0),
(135, 191, '2019-02-05', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '108.43', '108.43', 0),
(136, 192, '2019-02-05', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 2, 0, '472.50', '472.50', 1),
(137, 193, '2019-02-18', '0.00', 0, '', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 0, 0, 0, 0, '22.26', '22.26', 0),
(138, 194, '2019-02-18', '0.00', 0, 'This is a test', 'Supper Admin', 1, '', '', '', '0000-00-00', '', '0.00', 0, 1, 1, 2, 0, '2.17', '2.17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mp_langingpage`
--

CREATE TABLE `mp_langingpage` (
  `id` int(11) NOT NULL,
  `companyname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `companydescription` varchar(255) CHARACTER SET latin1 NOT NULL,
  `companykeywords` varchar(255) CHARACTER SET latin1 NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `banner` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider1` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider2` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider3` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider4` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slider5` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title1` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title2` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title3` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title4` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title5` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title6` varchar(255) CHARACTER SET latin1 NOT NULL,
  `subtitle6` varchar(255) CHARACTER SET latin1 NOT NULL,
  `subtitle6one` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title8` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title9` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title10` varchar(255) CHARACTER SET latin1 NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(50) CHARACTER SET latin1 NOT NULL,
  `primarycolor` varchar(50) CHARACTER SET latin1 NOT NULL,
  `theme_pri_hover` varchar(50) CHARACTER SET latin1 NOT NULL,
  `expirey` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_langingpage`
--

INSERT INTO `mp_langingpage` (`id`, `companyname`, `companydescription`, `companykeywords`, `logo`, `banner`, `slider1`, `slider2`, `slider3`, `slider4`, `slider5`, `title1`, `title2`, `title3`, `title4`, `title5`, `title6`, `subtitle6`, `subtitle6one`, `title8`, `title9`, `title10`, `currency`, `language`, `primarycolor`, `theme_pri_hover`, `expirey`) VALUES
(1, 'Elegant Inventory', 'Elegant Inventory', 'Elegant Inventory', 'dcb99169fed78154951d15df01aa5dbe.png', '1171127a5133603e62cc949a87aedda4.jpg', '0ae082ea4c6d3334de39a11840c07c09.jpg', 'a3cbfa5f37d75bd8de678ceded28da43.png', 'd6e2b9bad5eb6560699d95d0235b3e9e.png', '67e008061660613ba4497979db422f91.png', 'ec572d4564b40dec3412b2d305f6a59e.png', 'THE  PHARMACY AND POS SYSTEM', 'OUR SERVICES', 'THINGS YOU SHOULD KNOW ABOUT US', 'MEET OUR PHARMACIST!.', 'SEE WHAT PATIENTS ARE SAYING?.', 'CONTACT US.', 'Contact Info.', 'Having Any Query! Or Book an appointment.', 'Quick Links.', 'Follow us.', 'Copyright ©2018: jannatgroupbd.com\r\ndevelopment by: AloranBD Soft', 'USD', 'EN', '#795548', '#280808', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mp_menu`
--

CREATE TABLE `mp_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `icon` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_menu`
--

INSERT INTO `mp_menu` (`id`, `name`, `icon`) VALUES
(1, 'Products', 'fa fa-life-ring'),
(2, 'Settings', 'fa fa-cog'),
(5, 'Reports', 'fa fa-balance-scale'),
(6, 'POS', 'fa fa-clipboard'),
(7, 'Profile', 'fa fa-user'),
(12, 'Roles', 'fa fa-users'),
(16, 'Supplier', 'fa fa-truck'),
(18, 'Bank', 'fa fa-bank'),
(20, 'Purchase', 'fa fa-briefcase'),
(21, 'Supply ', 'fa fa-flask'),
(22, 'Initilization', 'fa fa-anchor'),
(23, 'Accounts', 'fa fa-calculator'),
(24, 'Statements', 'fa fa-line-chart'),
(25, 'Options', 'fa fa-shopping-bag'),
(26, 'Dashboard', 'fa fa-tachometer'),
(27, 'Expense', 'fa fa-paper-plane'),
(28, 'Customers', 'fa fa-user');

-- --------------------------------------------------------

--
-- Table structure for table `mp_menulist`
--

CREATE TABLE `mp_menulist` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `link` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_menulist`
--

INSERT INTO `mp_menulist` (`id`, `menu_id`, `title`, `link`) VALUES
(1, 1, 'Products', 'product'),
(2, 1, 'Categories', 'category'),
(3, 2, 'Layout & System', 'layout'),
(9, 28, 'Customers', 'customers'),
(10, 5, 'Sales Report', 'salesreport'),
(13, 6, 'View Invoice', 'invoice/manage'),
(16, 7, 'Personal', 'profile'),
(17, 25, 'Users', 'users'),
(18, 25, 'Requested items', 'todolist'),
(26, 12, 'Multiple Roles', 'multiple_roles'),
(28, 16, 'Supplier List', 'supplier'),
(29, 27, 'Expense', 'Expense'),
(30, 18, 'Cheques', 'bank/written_cheque'),
(31, 18, 'Banks', 'bank'),
(34, 1, 'Pending stock', 'product/pending_stock'),
(36, 6, 'Create invoice', 'invoice'),
(37, 6, 'Return items', 'return_items'),
(38, 5, 'Return report', 'salesreport/returnitemreport'),
(39, 20, 'Purchases', 'purchase'),
(40, 21, 'Supply List', 'supply'),
(41, 21, 'Drivers', 'supply/drivers'),
(42, 21, 'Vehicles', 'supply/vehicle'),
(43, 22, 'Brands', 'initilization'),
(44, 22, 'Brand Sector', 'initilization/brandSector'),
(45, 22, 'Region', 'initilization/region'),
(46, 22, 'Towns', 'initilization/town'),
(47, 22, 'units', 'initilization/units'),
(48, 22, 'Stores', 'initilization/stores'),
(49, 1, 'Out of stock', 'stockAlertReport'),
(50, 1, 'Recent expired', 'product/expired_list'),
(51, 1, 'Stock ', 'product/productStock'),
(52, 1, 'Expired Stock', 'product/expired_stock'),
(53, 16, 'Supplier payments', 'supplier/payment_list'),
(54, 23, 'Customers ledger', 'customers/ledger'),
(55, 23, 'Supplier legder', 'supplier/ledger'),
(56, 20, 'Purchase return', 'purchase/return_list'),
(57, 4, 'Customer payments', 'customers/payment_list '),
(58, 23, 'Chart of accounts', 'accounts'),
(59, 24, 'General Journal', 'statements'),
(60, 24, 'Ledger Account', 'statements/leadgerAccounst'),
(61, 24, 'Trail Balance', 'statements/trail_balance'),
(62, 24, 'Income', 'statements/income_statement'),
(63, 24, 'Balance Sheet', 'statements/balancesheet'),
(64, 23, 'Journal Voucher', 'statements/journal_voucher'),
(65, 23, 'Opening Balance', 'statements/opening_balance'),
(66, 28, 'Customer Payments', 'customers/payment_list '),
(68, 25, 'Take Backup', 'backup'),
(69, 25, 'Restore Backup', 'backup/upload_restore'),
(70, 18, 'Bank Deposits', 'bank/deposit_list'),
(71, 18, 'Bank Book', 'bank/bank_book'),
(72, 26, 'Dashboard', 'dashboard'),
(73, 25, 'Printer Settings', 'Printer_settings');

-- --------------------------------------------------------

--
-- Table structure for table `mp_multipleroles`
--

CREATE TABLE `mp_multipleroles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `menu_Id` int(11) NOT NULL,
  `role` int(1) NOT NULL,
  `agentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_multipleroles`
--

INSERT INTO `mp_multipleroles` (`id`, `user_id`, `menu_Id`, `role`, `agentid`) VALUES
(117, 1, 12, 0, 1),
(118, 1, 1, 1, 1),
(119, 1, 2, 1, 1),
(120, 1, 5, 1, 1),
(121, 1, 6, 1, 1),
(122, 1, 7, 1, 1),
(123, 1, 16, 1, 1),
(124, 1, 18, 1, 1),
(125, 1, 20, 1, 1),
(126, 1, 21, 1, 1),
(127, 1, 22, 1, 1),
(128, 1, 23, 1, 1),
(129, 1, 24, 1, 1),
(130, 1, 25, 1, 1),
(131, 1, 26, 1, 1),
(132, 1, 27, 1, 1),
(133, 1, 28, 1, 1),
(134, 2, 1, 1, 1),
(135, 2, 2, 1, 1),
(136, 2, 5, 1, 1),
(137, 2, 6, 1, 1),
(138, 2, 7, 1, 1),
(139, 2, 12, 1, 1),
(140, 2, 16, 1, 1),
(141, 2, 18, 1, 1),
(142, 2, 20, 1, 1),
(143, 2, 21, 1, 1),
(144, 2, 22, 1, 1),
(145, 2, 23, 1, 1),
(146, 2, 25, 1, 1),
(147, 2, 26, 1, 1),
(148, 2, 27, 1, 1),
(149, 2, 28, 1, 1),
(150, 2, 24, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mp_payee`
--

CREATE TABLE `mp_payee` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_contact_1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_contact_2` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_company` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_description` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cus_picture` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cus_status` int(1) NOT NULL,
  `cus_region` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_town` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_balance` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cus_date` date NOT NULL,
  `customer_nationalid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `type` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_payee`
--

INSERT INTO `mp_payee` (`id`, `customer_name`, `cus_email`, `cus_password`, `cus_address`, `cus_contact_1`, `cus_contact_2`, `cus_company`, `cus_description`, `cus_picture`, `cus_status`, `cus_region`, `cus_town`, `cus_type`, `cus_balance`, `cus_date`, `customer_nationalid`, `type`) VALUES
(1, 'dsfjsd', 'walkin@gmail.com', '', 'hbh', '', '1722967053', 'gfchg', '', 'default.jpg', 0, 'hmbh', 'v j', 'Regular', '0.00', '2018-04-22', '1234578', 'customer'),
(2, 'Habib', 'a@gmail.com', '', 'gbdggdfgdsfg', '5285', '1715932630', 'fghfdg', 'fgsd', 'default.jpg', 0, 'Dhaka', 'gbf', 'Regular', '', '2018-07-04', '12335555', 'customer'),
(4, 'Walton Company', 'as@gmail.com', '', 'Rampur, Kalihati', '', '', '', '', 'default.jpg', 0, '', '', 'Regular', '', '2018-06-15', '12335555', 'supplier'),
(5, 'Hasn', 'asss@gmail.com', '', 'hbh', '', '1722967052', 'bhbh', '', 'default.jpg', 0, 'knm', 'hvh', 'Regular', '', '2018-06-18', '14785', 'customer'),
(6, 'Moyn', '', '', 'fsf', '', '1722963540', 'mgvh', '', 'default.jpg', 0, 'hjbj', 'hbh', 'Regular', '', '2018-07-04', '24587', 'customer'),
(7, 'Md. Tarek Khan', 'abccomputer@gmail.com', '', '50, New Market, Dhaka-1207', '21568745', '1712031466', 'ABC Computer', '', 'default.jpg', 0, 'New Market', 'Dhaka', 'Regular', '', '2018-07-04', '1.99E+16', 'customer'),
(8, 'Md. Arab Ali', 'arabali_du@yahoo.com', '', 'Amuria, Magura', '', '1722333846', 'Magura Govt. Mahila College, Magura', '', '366cfcaa8d41b3dc6645de2138ae0f4d.jpg', 0, 'Magura', 'Magura', 'Regular', '', '2018-07-05', '1.99E+16', 'customer'),
(9, 'Md Miraj Hossain', 'miraj_designbd@outlook.com', '', 'Shop # 249, Goli # 04, Gausul Azam Super Market, Nilkhet, Dhaka-1205.', '', '1712031466', 'Rakib Enterprise', '', '4cb799fd339fb5fa5c3cb3aa5ce9e770.jpg', 0, 'New Market', 'Dhaka', 'Regular', '', '2018-07-09', '1.99155E+16', 'supplier'),
(10, 'Halim', 'a...@gmail.com', '', 'sdcs', '58545', '5445', 'tgert', 'rtger', 'default.jpg', 0, 'fas', 'hhg', 'Regular', '', '2018-07-09', '2858585', 'customer'),
(12, 'Kamal', '', '', 'vsd', '557', '214785236', 'dsfsd', '', '', 0, 'vsd', 'vsd', 'Regular', '', '0000-00-00', '4878', 'customer'),
(13, 'Selim', '', '', '', '', '', '', '', '', 0, '', '', 'Regular', '', '0000-00-00', '', 'customer'),
(14, 'dsfjsd', 'walkin@gmail.com', '', 'hbh', '', '1722967053', 'gfchg', '', '', 0, 'hmbh', 'v j', 'Regular', '', '0000-00-00', '1234578', 'customer'),
(15, 'chghjjjj', '', '', '', '', '', '', '', '', 0, '', '', 'Regular', '', '0000-00-00', '', 'customer'),
(16, 'xzczczxc', '', '', '', '', '', '', '', '', 0, '', '', '', '', '0000-00-00', '', 'customer'),
(17, 'sdfsd', '', '', '', '', '', '', '', '', 0, '', '', 'Regular', '', '0000-00-00', '', 'supplier');

-- --------------------------------------------------------

--
-- Table structure for table `mp_printer`
--

CREATE TABLE `mp_printer` (
  `id` int(11) NOT NULL,
  `printer_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `fontsize` int(11) NOT NULL,
  `set_default` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_printer`
--

INSERT INTO `mp_printer` (`id`, `printer_name`, `fontsize`, `set_default`) VALUES
(6, 'Black Copper BC-85AC', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mp_productslist`
--

CREATE TABLE `mp_productslist` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `mg` varchar(50) CHARACTER SET latin1 NOT NULL,
  `quantity` int(11) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `retail` decimal(11,2) NOT NULL,
  `expire` date NOT NULL,
  `manufacturing` date NOT NULL,
  `sideeffects` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` varchar(100) CHARACTER SET latin1 NOT NULL,
  `barcode` varchar(255) CHARACTER SET latin1 NOT NULL,
  `min_stock` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `total_units` int(11) NOT NULL,
  `packsize` varchar(255) CHARACTER SET latin1 NOT NULL,
  `sku` varchar(255) CHARACTER SET latin1 NOT NULL,
  `location` varchar(255) CHARACTER SET latin1 NOT NULL,
  `tax` decimal(11,2) NOT NULL,
  `type` varchar(255) CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `brand_id` int(11) NOT NULL,
  `brand_sector_id` int(11) NOT NULL,
  `unit_type` varchar(50) CHARACTER SET latin1 NOT NULL,
  `net_weight` varchar(50) CHARACTER SET latin1 NOT NULL,
  `whole_sale` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_productslist`
--

INSERT INTO `mp_productslist` (`id`, `category_id`, `product_name`, `mg`, `quantity`, `purchase`, `retail`, `expire`, `manufacturing`, `sideeffects`, `description`, `barcode`, `min_stock`, `status`, `total_units`, `packsize`, `sku`, `location`, `tax`, `type`, `image`, `brand_id`, `brand_sector_id`, `unit_type`, `net_weight`, `whole_sale`) VALUES
(174, 1, '1 CM Ribbon With Dog Hook China Fitting', '', 295, '5.50', '7.00', '0000-00-00', '0000-00-00', '1', 'Location', '0', 0, 0, 0, '0', '1', '', '6.00', '', '', 0, 0, '', '', '0.00'),
(175, 2, '1 CM Ribbon With Dog Hook Sewing Fitting', '', 500, '5.70', '7.50', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '6.50', '', '', 0, 0, '', '', '0.00'),
(176, 3, '1 CM Ribbon With China Clip', '', 500, '3.50', '5.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '4.00', '', '', 0, 0, '', '', '0.00'),
(177, 4, '1.5 CM Ribbon With Small Hook Sewing Fitting', '', 398, '6.50', '10.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '8.50', '', '', 0, 0, '', '', '0.00'),
(178, 5, '1.5 CM Ribbon With Big Hook Sewing Fitting', '', 500, '8.00', '10.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '9.00', '', '', 0, 0, '', '', '0.00'),
(179, 6, '2 CM Ribbon With Small Hook Sewing Fitting', '', 496, '10.00', '12.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '11.00', '', '', 0, 0, '', '', '0.00'),
(180, 7, '2 CM Ribbon With Big Hook Sewing Fitting', '', 500, '11.00', '13.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '12.00', '', '', 0, 0, '', '', '0.00'),
(181, 8, '2 CM Ribbon With U-Hook Sewing Fitting Refit', '', 500, '16.00', '20.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '18.00', '', '', 0, 0, '', '', '0.00'),
(182, 9, 'ID Card Soft Cover (T-014V) N.', '', 299, '5.00', '7.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '6.00', '', '', 0, 0, '', '', '0.00'),
(183, 10, 'ID Card Soft Cover (T-065)', '', 519, '6.30', '8.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '7.20', '', '', 0, 0, '', '', '0.00'),
(184, 11, 'ID Card Soft Cover (T-014) 1no.', '', 399, '10.00', '12.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '11.00', '', '', 0, 0, '', '', '0.00'),
(185, 12, '3R Soft ID Card Holder (T-067V)', '', 499, '17.00', '25.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '20.00', '', '', 0, 0, '', '', '0.00'),
(186, 13, '3R Blue Border Cover', '', 500, '7.50', '10.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '9.00', '', '', 0, 0, '', '', '0.00'),
(187, 14, 'ID Card Blue Border Cover', '', 501, '5.00', '7.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '6.00', '', '', 0, 0, '', '', '0.00'),
(188, 15, '3R Polly Cover', '', 500, '2.90', '4.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '3.50', '', '', 0, 0, '', '', '0.00'),
(189, 16, '4R Zipper Cover (B)', '', 500, '6.00', '8.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '', 0, 0, 1, '1', '1', '', '7.00', '', '', 0, 0, '', '', '0.00'),
(190, 17, '4R Zipper Cover (C)', '', 500, '8.50', '10.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '9.50', '', '', 0, 0, '', '', '0.00'),
(191, 18, '3R Zipper Cover (B)', '', 500, '5.50', '7.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '6.50', '', '', 0, 0, '', '', '0.00'),
(192, 19, '3R Zipper Cover (C)', '', 300, '7.50', '9.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '8.50', '', '', 0, 0, '', '', '0.00'),
(193, 20, 'ID Card Zipper Cover (B)', '', 500, '2.90', '4.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '3.50', '', '', 0, 0, '', '', '0.00'),
(194, 21, 'ID Card Zipper Cover (C)', '', 400, '3.30', '5.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 1, '1', '1', '', '4.00', '', '', 0, 0, '', '', '0.00'),
(195, 22, 'PVC ID Card Print with Card Holder T-738V', '', 277, '35.00', '100.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 1000, 0, 0, '', '', '', '0.00', 'Finished Products', '', 1, 6, '', '', '0.00'),
(196, 23, 'ID Card Holder Water-proof Anti-fold (T-738V)', '', 300, '18.00', '30.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 1000, 0, 0, '', '', '', '0.00', 'Finished Products', '', 5, 6, '', '', '23.00'),
(197, 24, 'ID Card Plastic Holder  (U-025V)', '', 150, '12.00', '16.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '13.50'),
(198, 25, 'Mango RFID Card', '', 200, '10.75', '12.30', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '11.50'),
(199, 1, 'Chair-RFL', '', 144, '137.00', '205.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2091.00'),
(200, 27, 'Blank PVC Card', '', 750, '4.50', '5.50', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(201, 28, 'Golden Card', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(202, 29, 'Silver Card', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(203, 30, 'Mango RFID Card  with Print', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(204, 31, 'Proximity Card with Print', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(205, 32, 'Blank PVC Card with Print', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(206, 33, 'Golden Card with Print', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(207, 34, 'Silver Card with Print', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(208, 35, 'Mango RFID Card  with UV Print', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(209, 36, 'Proximity Card with UV Print', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(210, 37, 'PVC White Card with UV Print', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(211, 38, 'Golden Card with UV Print', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(212, 39, 'Silver Card with UV Print', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(213, 40, 'ZXP Series 3 Color Ribbon (CMYK)', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(214, 41, 'ZXP Series 3 Color Ribbon (K)', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(215, 42, 'Clining Card', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(216, 43, 'Long Clining Card', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(217, 44, 'Head Clining Woab', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '1', 'Ware House', '0', 0, 0, 0, '', '', '', '0.00', '', '', 0, 0, '', '', '0.00'),
(218, 1, 'E42PSPW10-2 Pin Socket', '', 144, '87.00', '130.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1326.00'),
(219, 1, 'E43GSRPW10.1-3Gang Switch', '', 143, '114.00', '170.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1734.00'),
(220, 1, 'E44GSRPW10.1-4Gang', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2244.00'),
(221, 1, 'E43PUPW13-3 Pin Switch', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1530.00'),
(222, 1, 'E43PUSPW13-3 Pin Switch', '', 144, '134.00', '200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2040.00'),
(223, 1, 'E4MSUPW13-Multi Socket', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2244.00'),
(224, 1, 'E4CBSRPW16.1-Calling Bell', '', 144, '64.00', '95.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '969.00'),
(225, 1, 'E4TSPW3-Telephone Socket', '', 144, '80.00', '120.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1224.00'),
(226, 1, 'E4TVSPW-TV Socket', '', 144, '80.00', '120.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1224.00'),
(227, 1, 'E4DSPW5-Data Socket', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1836.00'),
(228, 1, 'E4FRPW250-Fan Regulator', '', 144, '255.00', '380.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '3876.00'),
(229, 1, 'E4LDPW250-Light Dimmer Switch', '', 144, '241.00', '360.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '3672.00'),
(230, 1, 'E41GSRPW16.2-1Gang-2Way  Switch', '', 144, '60.00', '90.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '918.00'),
(231, 1, 'E42GSRPW16.2-2Gang-2Way  Switch', '', 144, '107.00', '160.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1632.00'),
(232, 1, 'E43GSRPW10.2-3Gang-2Way  Switch', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2244.00'),
(233, 1, 'E44GSRPW10.2-4Gang-2Way  Switch', '', 144, '181.00', '270.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2754.00'),
(234, 1, 'E4BPPW-Blank Plate', '', 144, '30.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '459.00'),
(235, 1, 'E42PSSPW10- 2Pin Socket with switch', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1836.00'),
(236, 1, 'E4USB3PSU13-2USB Charger with 3Pin S', '', 144, '422.00', '630.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '6426.00'),
(237, 1, 'E4USBSPW16-2USB Charger with Switch', '', 144, '402.00', '600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '6120.00'),
(238, 1, 'E4MSSPWP.01 Motion Sensor (PIR)', '', 144, '570.00', '850.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '8670.00'),
(239, 1, 'E4MSSPWM.01 Motion Sensor (MW)', '', 144, '533.00', '795.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '8109.00'),
(240, 1, 'E4CBSR16.1-Calling Bell Switch', '', 144, '74.00', '110.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1122.00'),
(241, 1, 'E41GSR16.1-1Gang Switch', '', 144, '54.00', '80.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '816.00'),
(242, 1, 'E42PS10-2 Pin Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1428.00'),
(243, 1, 'E42GSR16.1-2Gang Switch', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1530.00'),
(244, 1, 'E43GSR10.1-3Gang Switch', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1938.00'),
(245, 1, 'E44GSR10.1-4Gang Switch', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2448.00'),
(246, 1, 'E41GSR16.2-1Gang-2way  Switch', '', 144, '70.00', '105.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1071.00'),
(247, 1, 'E42GSR16.2-2Gang-2way  Switch', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1836.00'),
(248, 1, 'E43GSR10.2-3Gang-2way  Switch', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2448.00'),
(249, 1, 'E44GSR10.2-4Gang-2way  Switch', '', 144, '198.00', '295.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '3009.00'),
(250, 1, 'E43PU13-3Pin Socket', '', 144, '107.00', '160.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1632.00'),
(251, 1, 'E43PUS13-3Pin Socket & Switch', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2142.00'),
(252, 1, 'E4MSU13-Multi Socket', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2346.00'),
(253, 1, 'E4TS3-Telephone Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1428.00'),
(254, 1, 'E4TVS-TV Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1428.00'),
(255, 1, 'E4DS5-Data Socket', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2142.00'),
(256, 1, 'E4FR250-Fan Regulator', '', 144, '168.00', '400.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '4080.00'),
(257, 1, 'E4LD250-Light Dimmer Switch', '', 144, '261.00', '390.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '3978.00'),
(258, 1, 'E4BP-Blank Plate', '', 144, '34.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '510.00'),
(259, 1, 'E42PSS10-2 Pin Socket with switch', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1938.00'),
(260, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, '1', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(261, 1, 'WLED-F3WB22 / R3WB22', '', 144, '111.00', '165.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '123.75'),
(262, 1, 'WLED-F3WE27 / R3WE27', '', 124, '111.00', '165.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '123.75'),
(263, 1, 'WLED-F4WB22 / R4WB22', '', 144, '111.00', '165.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '123.75'),
(264, 1, 'WLED-F4WE27 / R4WE27', '', 144, '117.00', '175.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '131.25'),
(265, 1, 'WLED-F5WB22 / R5WB22', '', 144, '117.00', '175.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '131.25'),
(266, 1, 'WLED-F5WE27/ R5WE27', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '142.50'),
(267, 1, 'WLED-H5WE27', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '142.50'),
(268, 1, 'WLED-H5WB22', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '172.50'),
(269, 1, 'WLED-H5WE27A', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '172.50'),
(270, 1, 'WLED-H5WB22A', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '195.00'),
(271, 1, 'WLED-F6WB22 / R6WB22', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '195.00'),
(272, 1, 'WLED-F6WE27 / R6WE27', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '157.50'),
(273, 1, 'WLED-F7WB22 / R7WB22', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '157.50'),
(274, 1, 'WLED-F7WE27 / R7WE27', '', 144, '151.00', '225.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '168.75'),
(275, 1, 'WLED-H7WE27', '', 144, '151.00', '225.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '168.75'),
(276, 1, 'WLED-H7WB22', '', 144, '218.00', '325.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '243.75'),
(277, 1, 'WLED-H9WE27', '', 144, '218.00', '325.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '243.75'),
(278, 1, 'WLED-H9WB22', '', 144, '285.00', '425.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '318.75'),
(279, 1, 'WLED-H12WE27', '', 144, '285.00', '425.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '318.75'),
(280, 1, 'WLED-12WB22', '', 144, '328.00', '490.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '367.50'),
(281, 1, 'WLED-ECO-WARM-R9WB22', '', 144, '328.00', '490.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '367.50'),
(282, 1, 'WLED-ECO-WARM-R9WE27', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '172.50'),
(283, 1, 'WLED-ECO-WARM-12WB22', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '172.50'),
(284, 1, 'WLED-ECO-WARM-12WE27', '', 144, '178.00', '265.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '198.75'),
(285, 1, 'WLED-ECO-R7WB22', '', 144, '178.00', '265.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '198.75'),
(286, 1, 'WLED-ECO-R7WE27', '', 144, '144.00', '215.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '161.25'),
(287, 1, 'WLED-ECO-R9WB22', '', 144, '144.00', '215.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '161.25'),
(288, 1, 'WLED-ECO-R9WE27', '', 144, '151.00', '225.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '168.75'),
(289, 1, 'WLED-ECO-R12WB22', '', 144, '151.00', '225.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '168.75'),
(290, 1, 'WLED-ECO-R12WE27', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '195.00'),
(291, 1, 'WLED-PR7WB22-Premium-7W', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '195.00'),
(292, 1, 'WLED-PR7WE27-Premium-7W', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '172.50'),
(293, 1, 'WLED-PR9WB22-Premium-9W', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '172.50'),
(294, 1, 'WLED-PR9WE27-Premium-9W', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '180.00'),
(295, 1, 'WLED-PR11WB22-Premium-11W', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '180.00'),
(296, 1, 'WLED-PR11WE27-Premium-11W', '', 144, '188.00', '280.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '210.00'),
(297, 1, 'WLED-PR12WB22-Premium-12W', '', 144, '188.00', '280.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '210.00'),
(298, 1, 'WLED-PR12WE27-Premium-12W', '', 144, '194.00', '290.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '217.50'),
(299, 1, 'WLED-PR13WB22-Premium-13W', '', 144, '194.00', '290.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '217.50'),
(300, 1, 'WLED-PR13WE27-Premium-13W', '', 144, '201.00', '300.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '225.00'),
(301, 1, 'WLED-HP15WB22-Prime Series 15W', '', 144, '201.00', '300.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '225.00'),
(302, 1, 'WLED-HP15WE27 Prime Series 15W', '', 144, '208.00', '310.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '232.50'),
(303, 1, 'WLED-HP20WB22 Prime Series 20W', '', 144, '208.00', '310.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '232.50'),
(304, 1, 'WLED-HP20WE27 Prime Series 20W', '', 144, '261.00', '390.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '292.50'),
(305, 1, 'WLED-HP30WB22 Prime Series 30W', '', 144, '261.00', '390.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '292.50'),
(306, 1, 'WLED-HP30WE27 Prime Series 30W', '', 144, '385.00', '575.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '431.25'),
(307, 1, 'WLED-HP40WB22 Prime Series 40W', '', 144, '385.00', '575.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '431.25'),
(308, 1, 'WLED-HP40WE27 Prime Series 40W', '', 144, '489.00', '730.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '547.50'),
(309, 1, 'WLED-PR-WR11WB22-Premium-11W  Warm', '', 144, '489.00', '730.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '547.50'),
(310, 1, 'WLED-PR-WR11WE27-Premium-11W  Warm', '', 144, '191.00', '285.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '213.75'),
(311, 1, 'WLED-PR-WR12WB22-Premium-12W  Warm', '', 144, '191.00', '285.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '213.75'),
(312, 1, 'WLED-PR-WR12WE27-Premium-12W  Warm', '', 144, '198.00', '295.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '221.25'),
(313, 1, 'WLED-PR-WR13WB22-Premium-13W  Warm', '', 144, '198.00', '295.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '221.25'),
(314, 1, 'WLED-PR-WR13WE27-Premium-13W  Warm', '', 144, '201.00', '300.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '225.00'),
(315, 1, 'WLED-EL7WB22/EL7WE27 Led Emergency Light', '', 144, '181.00', '270.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '202.50'),
(316, 1, 'WLED-EL9WB22 / WLED-EL9WE27', '', 144, '211.00', '315.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '236.25'),
(317, 1, 'WLED-EL12WB22 / WLED-EL12WE27', '', 144, '235.00', '350.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '262.50'),
(318, 1, 'WLED-T8Tube-60FMR-8W', '', 144, '281.00', '420.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '315.00'),
(319, 1, 'WlLED-T8Tube-60FMR-10W', '', 144, '295.00', '440.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '330.00'),
(320, 1, 'WLED-T8Tube-120FMR-16', '', 144, '462.00', '690.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '517.50'),
(321, 1, 'WLED-T8Tube-120FMR-18W', '', 144, '469.00', '700.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '525.00'),
(322, 1, 'WLED-T8Tube-120FMR-20W', '', 144, '486.00', '725.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '543.75'),
(323, 1, 'WLED-T8TUBE-E120FMR-20 W (Eco)', '', 144, '302.00', '450.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '337.50'),
(324, 1, 'WLED-T5Tube-60WMB-8W', '', 144, '275.00', '410.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '307.50'),
(325, 1, 'WLED-T5Tube-60WMB-10W', '', 144, '281.00', '420.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '315.00'),
(326, 1, 'WLED-T5Tube-120WMB-16W', '', 144, '429.00', '640.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '480.00'),
(327, 1, 'WLED-T5Tube-120WMB-18W', '', 144, '436.00', '650.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '487.50'),
(328, 1, 'WLED-T5Tube-120WMB-20W', '', 144, '462.00', '690.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '517.50'),
(329, 1, 'WLED-T8Tube-60WMB-8W', '', 144, '288.00', '430.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '322.50'),
(330, 1, 'WLED-T8Tube-60WMB-10W', '', 144, '295.00', '440.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '330.00'),
(331, 1, 'WLED-T8Tube-120WMB-18W', '', 144, '436.00', '650.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '487.50'),
(332, 1, 'WLED-DTDL2F-18W', '', 144, '402.00', '600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '450.00'),
(333, 1, 'WLED-ECO-DTDL-36W', '', 144, '603.00', '900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '675.00'),
(334, 1, 'WLED-DTDL-36W', '', 144, '737.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '825.00'),
(335, 1, 'WLED-DPL2F2-PR48W', '', 144, '1876.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '2100.00'),
(336, 1, 'WLED-SPL170-12W', '', 144, '402.00', '600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '450.00'),
(337, 1, 'WLED-SPL200-15W', '', 144, '469.00', '700.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '525.00'),
(338, 1, 'WLED-SPL225-18W', '', 144, '509.00', '760.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '570.00'),
(339, 1, 'WLED-PL1F1-PR12W', '', 144, '931.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '1042.50'),
(340, 1, 'WLED-PL1F1-PR24W', '', 144, '1199.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '1342.50'),
(341, 1, 'WLED-PL2F2-PR36W', '', 144, '2405.00', '3.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '2692.50'),
(342, 1, 'WLED-PL2F2-PR48W', '', 144, '2606.00', '3.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '2917.50'),
(343, 1, 'WLED-PL-ECO-24W Economy-24W', '', 144, '854.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '956.25'),
(344, 1, 'WLED-PL-ECO-36W Economy-36W', '', 144, '1910.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '2137.50'),
(345, 1, 'WLED-PL-ECO-48W Economy-48W', '', 144, '2044.00', '3.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '2287.50'),
(346, 0, 'WLED-DLR170(PR12W/ WR12W)', '', 144, '395.00', '590.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '1.00', 'Finished Products', '', 1, 2, '1', '', '442.50'),
(347, 0, 'WLED-DLS200(PR15W/ WR15W)', '', 144, '462.00', '690.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '2.00', 'Finished Products', '', 1, 2, '1', '', '517.50'),
(348, 0, 'WLED-DLR225(PR18W/ WR18W)', '', 144, '503.00', '750.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '3.00', 'Finished Products', '', 1, 2, '1', '', '562.50'),
(349, 0, 'WLED-DLR300(PR24W/ WR24W)', '', 144, '704.00', '1050.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '4.00', 'Finished Products', '', 1, 2, '1', '', '787.50'),
(350, 0, 'WLED-HB100DC-1S', '', 144, '6633.00', '9.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '5.00', 'Finished Products', '', 1, 2, '1', '', '7425.00'),
(351, 0, 'WLED-CL-20W', '', 144, '972.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '6.00', 'Finished Products', '', 1, 2, '1', '', '1087.50'),
(352, 0, 'WLED-T8-STALIS-120-Led Single', '', 144, '583.00', '870.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '7.00', 'Finished Products', '', 1, 2, '1', '', '652.50'),
(353, 0, 'WLED-T8-DTALIS-120-Led Double', '', 144, '670.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '8.00', 'Finished Products', '', 1, 2, '1', '', '750.00'),
(354, 0, 'WLED-T8-STALISWC-120(With Carton)', '', 144, '616.00', '920.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '9.00', 'Finished Products', '', 1, 2, '1', '', '690.00'),
(355, 0, 'WLED-T8-DTALISWC-120(With Carton)', '', 144, '717.00', '1070.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '10.00', 'Finished Products', '', 1, 2, '1', '', '802.50'),
(356, 0, 'WLED-FL-PR-30W', '', 144, '1407.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '11.00', 'Finished Products', '', 1, 2, '1', '', '1575.00'),
(357, 0, 'WLED-FL-PR-50W', '', 144, '1809.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '12.00', 'Finished Products', '', 1, 2, '1', '', '2025.00'),
(358, 0, 'WLED-FL-PR-80W', '', 144, '3685.00', '5.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '13.00', 'Finished Products', '', 1, 2, '1', '', '4125.00'),
(359, 0, 'WLED-FL-PR-100W', '', 144, '4355.00', '6.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '14.00', 'Finished Products', '', 1, 2, '1', '', '4875.00'),
(360, 0, 'WLED-FL-PR-150W', '', 144, '5896.00', '8.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '15.00', 'Finished Products', '', 1, 2, '1', '', '6600.00'),
(361, 0, 'WLED-FL-PR-200W', '', 144, '8375.00', '12.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '16.00', 'Finished Products', '', 1, 2, '1', '', '9375.00'),
(362, 0, 'WLED-ML-18W', '', 144, '482.00', '720.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '17.00', 'Finished Products', '', 1, 2, '1', '', '540.00'),
(363, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, '1', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(364, 1, 'WGS-01 Gang Switch', '', 144, '44.00', '65.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '48.75'),
(365, 1, 'WGS-02Gang Switch', '', 144, '87.00', '130.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '97.50'),
(366, 1, 'WGS-03Gang Switch', '', 144, '124.00', '185.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '138.75'),
(367, 1, 'WGS-04Gang Switch', '', 144, '164.00', '245.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '183.75'),
(368, 1, 'WGS-05Gang Switch', '', 144, '194.00', '290.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '217.50'),
(369, 1, 'W3PS-01-3Pin Socket', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '142.50'),
(370, 1, 'WU3P-01-USB', '', 144, '302.00', '450.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '337.50'),
(371, 1, 'WRCS-01-Remote Con.Sw', '', 144, '436.00', '650.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '487.50'),
(372, 1, 'WRCSPW-02-Remote Con.Switch', '', 144, '596.00', '890.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '667.50'),
(373, 1, 'WRCSPW-03-Remote Con.Switch', '', 144, '583.00', '870.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '652.50'),
(374, 1, 'WFR-01 Fan Regulator', '', 144, '235.00', '350.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '262.50'),
(375, 1, 'WCB-01-Calling Bell', '', 144, '60.00', '90.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '67.50'),
(376, 1, 'W1TVS-TV Socket', '', 144, '90.00', '135.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '101.25'),
(377, 1, 'W1TS3-Telephone Socket', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '112.50'),
(378, 1, 'W1DS6-Date Socket', '', 144, '131.00', '195.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '146.25'),
(379, 1, 'W1MS-13-Multi Socket', '', 144, '194.00', '290.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '217.50'),
(380, 1, 'W13PRS15-3Pin Round Socket', '', 144, '168.00', '250.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '187.50'),
(381, 1, 'W12PSPW10-2Pin Socket', '', 144, '117.00', '175.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '131.25'),
(382, 1, 'W1BP- Blank Plate', '', 144, '34.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '37.50'),
(383, 1, 'W11GSMB/ W11GS10.1-1Gang Switch', '', 144, '50.00', '75.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '56.25'),
(384, 1, 'W12GSMB/ W12GS10.1-2Gang Switch', '', 144, '104.00', '155.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '116.25'),
(385, 1, 'W13GSMB/ W13GS10.1-3Gang Switch', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '157.50'),
(386, 1, 'W14GSMB/ W14GS10.1-4Gang Switch', '', 144, '181.00', '270.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '202.50'),
(387, 1, 'W15GSMB/ W15GS10.1-5Gang Switch', '', 144, '214.00', '320.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '240.00'),
(388, 1, 'W1CBSMB/ W1CBS10.1-Calling Bell Switch', '', 144, '67.00', '100.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '75.00'),
(389, 1, 'WRCSMB / WRCSC-Remote Cont.Switch', '', 144, '479.00', '715.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '536.25'),
(390, 1, 'WRCS-02-Remote Control Switch', '', 144, '603.00', '900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '675.00'),
(391, 1, 'W1FRMB / W1FR250-Fan Regulator', '', 144, '261.00', '390.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '292.50'),
(392, 1, 'W13PUSMB / W13PUS13-3Pin Socket', '', 144, '134.00', '200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '150.00'),
(393, 1, 'W13PSUSBMB / W13PSUSB13-3Pin USB Socket', '', 144, '369.00', '550.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '412.50'),
(394, 1, 'W1TVSMB / W1TVSC-TV Socket', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '112.50'),
(395, 1, 'W1TSMB3 / W1TSC3-Telephone Socket', '', 144, '111.00', '165.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '123.75'),
(396, 1, 'W1DSMB6 / W1DSC6-Data Socket', '', 141, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '157.50'),
(397, 1, 'W12PS10-2 Pin Socket', '', 144, '124.00', '185.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '138.75'),
(398, 1, 'W1MSMB13 / W1MSC13-Multi Socket', '', 144, '204.00', '305.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '228.75'),
(399, 1, 'W13PRSC15-3Pin Round Socket', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '195.00'),
(400, 1, 'W12USBMSPW-2 USB Charger & Multi Socket', '', 144, '503.00', '750.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '562.50'),
(401, 1, 'W1BP- Blank Plate', '', 144, '34.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '37.50'),
(402, 1, 'S31GSWWR16.1-1Gang Switch-S3', '', 144, '70.00', '105.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '78.75'),
(403, 1, 'V81GSWWR16.1-1 Gang Switch-V8', '', 144, '80.00', '119.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '89.25'),
(404, 1, 'S3CBSWWR16.1-Calling Bell', '', 144, '70.00', '105.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '78.75'),
(405, 1, 'V8CBSWWR16.1-Calling Bell', '', 144, '80.00', '119.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '89.25'),
(406, 1, 'SVSSWWR16.1-Single Switch', '', 144, '40.00', '59.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '44.25'),
(407, 1, 'SVDSWWR16.1-Double Switch', '', 144, '50.00', '75.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '56.25'),
(408, 1, 'SV3PUWW10-3 Pin Socket', '', 144, '57.00', '85.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '63.75'),
(409, 1, 'SVTVSW-TV Socket', '', 144, '46.00', '69.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '51.75'),
(410, 1, 'SVTSWW3-Telephone Socket', '', 144, '60.00', '89.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '66.75'),
(411, 1, 'SVDSWW6-Data Socket', '', 144, '97.00', '145.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '108.75'),
(412, 1, 'SVBMW-Blank', '', 144, '13.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '15.00'),
(413, 1, 'SVLDPW250-(PW)-Light Dimmer', '', 144, '214.00', '320.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '240.00'),
(414, 1, 'S32MCPWW-2M Cover Plate-S3', '', 144, '37.00', '55.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '41.25'),
(415, 1, 'V82MCPWW-2M Cover Plate-V8', '', 144, '46.00', '69.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '51.75'),
(416, 1, 'S33MCPWW-3M Cover Plate-S3', '', 144, '46.00', '69.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '51.75'),
(417, 1, 'V83MCPWW-3M Cover Plate-V8', '', 144, '56.00', '83.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '62.25');
INSERT INTO `mp_productslist` (`id`, `category_id`, `product_name`, `mg`, `quantity`, `purchase`, `retail`, `expire`, `manufacturing`, `sideeffects`, `description`, `barcode`, `min_stock`, `status`, `total_units`, `packsize`, `sku`, `location`, `tax`, `type`, `image`, `brand_id`, `brand_sector_id`, `unit_type`, `net_weight`, `whole_sale`) VALUES
(418, 1, 'S34MCPWW-4M Cover Plate-S3', '', 144, '53.00', '79.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '59.25'),
(419, 1, 'V84MCPDWW-4M Cover Plate-V8', '', 144, '63.00', '94.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '70.50'),
(420, 1, 'S32MCPMB-2M Cover Plate-S3-10 Pes', '', 144, '46.00', '69.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '51.75'),
(421, 1, 'V82MCPMB-2M Cover Plate-V8-10 Pes', '', 144, '57.00', '85.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '63.75'),
(422, 1, 'S33MCPMB-3M Cover Plate-S3-10 Pes', '', 144, '57.00', '85.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '63.75'),
(423, 1, 'V83MCPMB-3M Cover Plate-V8-10 Pes', '', 144, '64.00', '95.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '71.25'),
(424, 1, 'S34MCPMB-4M Cover Plate-S3-10 Pes', '', 144, '64.00', '95.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '71.25'),
(425, 1, 'V84MCPMB-4M Cover Plate-V8-10 Pes', '', 144, '77.00', '115.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '86.25'),
(426, 1, 'S31GSRMB16.1-1 Gang Switch (S3)-10 Pes', '', 144, '87.00', '130.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '97.50'),
(427, 1, 'V81GSRMB16.1-1 Gang Switch (V8)-10 Pes', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '105.00'),
(428, 1, 'SVSSRMB16.1-Single Switch Module (1 way)', '', 144, '46.00', '69.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '51.75'),
(429, 1, 'SVDSRMB16.1-Double Switch Module (1 way)', '', 143, '60.00', '89.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '66.75'),
(430, 1, 'SV3PUMB10-3 Pin Socket Module (Universal)', '', 144, '66.00', '99.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '74.25'),
(431, 1, 'SVTVSMB-TV-Socket Module-20 Pes', '', 144, '54.00', '80.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '60.00'),
(432, 1, 'SVTSMB3-Telephone Socket Module-20 Pes', '', 144, '66.00', '99.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '74.25'),
(433, 1, 'SVDSMB6-Data Socket Module-20 Pes', '', 144, '111.00', '165.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '123.75'),
(434, 1, 'SVBMMB-Blank  Module- 20 Pes', '', 144, '20.00', '30.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '22.50'),
(435, 1, 'S3CBSRMB16.1-Calling Bell Switch(S3)-10 Pes', '', 144, '84.00', '125.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '93.75'),
(436, 1, 'V8CBSRMB16.1-Calling Bell Switch(V8)-10 Pes', '', 144, '93.00', '139.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '104.25'),
(437, 1, 'SVFRPW-250-Module(PW)Fan Regulator', '', 144, '228.00', '340.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '255.00'),
(438, 1, 'SVFRMB-250-Module(MB)Fan Regulator', '', 144, '241.00', '360.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '270.00'),
(439, 1, 'SVLDMB250-Module-(MB)-Light Dimmer', '', 144, '228.00', '340.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '255.00'),
(440, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, '1', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(441, 1, 'P1CBS6 -Calling Bell', '', 144, '19.00', '29.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '21.75'),
(442, 1, 'P1S6.1 -1 Way Single', '', 144, '18.00', '27.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '20.25'),
(443, 1, 'P1S6.2 -2 Way Single', '', 144, '19.00', '29.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '21.75'),
(444, 1, 'P1S2P6 -2Pin Socket', '', 144, '20.00', '30.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '22.50'),
(445, 1, 'P1F6 -Fuse', '', 144, '22.00', '33.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '24.75'),
(446, 1, 'P1I -Indicator', '', 144, '19.00', '28.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '21.00'),
(447, 1, 'P1FR250 -Fan Regulator', '', 144, '90.00', '135.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '101.25'),
(448, 1, 'P1TVS -TV Socket', '', 144, '37.00', '55.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '41.25'),
(449, 1, 'P1TS3 -Telephone Socket', '', 144, '44.00', '65.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '48.75'),
(450, 1, 'P1DS5 -Data Socket', '', 144, '64.00', '95.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '71.25'),
(451, 1, 'WCLR01-Ceiling Rose', '', 144, '21.00', '31.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '23.25'),
(452, 1, 'W1HPB-1H Piano Box', '', 144, '10.00', '15.50', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '11.63'),
(453, 1, 'W2HPB-2H Piano Box', '', 144, '14.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '15.75'),
(454, 1, 'W3HPB-3H Piano Box', '', 144, '16.00', '24.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '18.00'),
(455, 1, 'W4HPB-4H Piano Box', '', 144, '20.00', '30.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '22.50'),
(456, 1, 'W6HPB-6H Piano Box', '', 144, '23.00', '35.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '26.25'),
(457, 1, 'W8HPB-8H Piano Box', '', 144, '30.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '33.75'),
(458, 1, 'WHBP-01 Holder Back Plate', '', 144, '13.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '15.00'),
(459, 1, 'WHBP-02 Holder Back Plate', '', 144, '17.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '18.75'),
(460, 1, 'W68HP8 Hole Piano Box', '', 144, '42.00', '62.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '46.50'),
(461, 1, 'W810HP8 Hole Piano Box', '', 144, '52.00', '78.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '58.50'),
(462, 1, 'W1GOB 1 Gang Outer Box', '', 144, '9.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '10.50'),
(463, 1, 'W2GOB 2 Gang Outer Box', '', 144, '17.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '18.75'),
(464, 1, 'W3GOB 3 Gang Outer Box', '', 144, '29.00', '43.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '32.25'),
(465, 1, 'W2MOB 2M Outer Box', '', 144, '16.00', '24.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '18.00'),
(466, 1, 'W3MOB 3M Outer Box', '', 144, '27.00', '41.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '30.75'),
(467, 1, 'W4MOB 4M Outer Box', '', 144, '34.00', '51.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '38.25'),
(468, 1, 'WJB-01(Single Gang)', '', 144, '19.00', '29.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '21.75'),
(469, 1, 'SV2MJBG-2M Junction Box', '', 144, '30.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '33.75'),
(470, 1, 'SV3MJBG-3M Junction Box', '', 144, '40.00', '60.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '45.00'),
(471, 1, 'SV4MJBG-4M Junction Box', '', 144, '47.00', '70.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '52.50'),
(472, 1, 'WTH-01(Thread) / WPBH-01(Pin)', '', 144, '44.00', '65.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '48.75'),
(473, 1, 'WDPSPWM20', '', 144, '284.00', '420.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '315.00'),
(474, 1, 'WDPSPWM45', '', 144, '402.00', '600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '450.00'),
(475, 1, 'WDPSM20 Metallic Black', '', 144, '285.00', '425.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '318.75'),
(476, 1, 'WDPSM45 Metallic Black', '', 144, '415.00', '620.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '465.00'),
(477, 1, 'WCF-PR01(Piano Type)', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '112.50'),
(478, 1, 'WCF-CR 01(Capacitive Fan Regulator )', '', 144, '235.00', '350.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '262.50'),
(479, 1, 'WFR-01', '', 144, '235.00', '350.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '262.50'),
(480, 1, 'WCF5602-1400mm(Re.Control)', '', 144, '3393.00', '3.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2925.00'),
(481, 1, 'WCF5604 WR-Prink', '', 144, '2558.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2205.00'),
(482, 1, 'WCF5604 WR-Indigo', '', 144, '2471.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2130.00'),
(483, 1, 'WCF5604 WR White / Off White', '', 144, '2436.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2100.00'),
(484, 1, 'WCF 5603 WR Indigo', '', 144, '2558.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2205.00'),
(485, 1, 'WCF 5603 WR White / Off White', '', 144, '2523.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2175.00'),
(486, 1, 'WCF 5603 WR Pink', '', 144, '2558.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2205.00'),
(487, 1, 'WCF5601 WR Indigo', '', 144, '2393.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2062.50'),
(488, 1, 'WCF5601 WR White / Off White', '', 144, '2349.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2025.00'),
(489, 1, 'WCF5601 EM', '', 144, '2166.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '1867.50'),
(490, 1, 'W16OA-RMC(Remote Type)Any Color', '', 144, '2514.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2167.50'),
(491, 1, 'W16OA-RGC(Pull Type)Any Color', '', 144, '2079.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '1792.50'),
(492, 1, 'WTF16B-PBC 400 mm Cream White', '', 144, '1871.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '1612.50'),
(493, 1, 'WTF16A-PBC-Sky Blue/Cream White(Push Button)', '', 144, '2219.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '1912.50'),
(494, 1, 'WTF16A-RMC(Remote Type)', '', 144, '2601.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2242.50'),
(495, 1, 'W17OA-MS-17\"', '', 144, '3698.00', '4.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '3187.50'),
(496, 1, 'W17OA-AS-17\"', '', 144, '3915.00', '4.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '3375.00'),
(497, 1, 'WPF 16OA-PBC', '', 144, '2175.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '1875.00'),
(498, 1, 'WPF16OA-PBC (Pink)', '', 144, '2219.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '1912.50'),
(499, 1, 'WPF24A', '', 144, '4950.00', '5.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '4267.50'),
(500, 1, 'POWER MASTER W6DZM95-12V', '', 144, '4238.00', '5.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '4237.50'),
(501, 1, 'POWER MASTER W6DZM75-12V', '', 144, '3825.00', '5.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '3825.00'),
(502, 1, 'WB1275-12V 7.5Ah', '', 144, '795.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '795.00'),
(503, 1, 'WB670-6V 7.0Ah', '', 144, '443.00', '590.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '442.50'),
(504, 1, 'WB1245-12V 4.5Ah', '', 144, '585.00', '780.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '585.00'),
(505, 1, 'WB6450-6V4.5Ah', '', 144, '300.00', '400.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '300.00'),
(506, 1, 'WB6450B-6V4.5Ah', '', 144, '300.00', '400.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '300.00'),
(507, 1, 'WB6450C-6V4.5Ah(Clip Type)', '', 144, '300.00', '400.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '300.00'),
(508, 1, 'WDB-8WTP-63A', '', 144, '2613.00', '3.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2925.00'),
(509, 1, 'TP-3W63C', '', 144, '31.00', '47.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '35.25'),
(510, 1, 'SP-1W32C', '', 144, '20.00', '30.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '22.50'),
(511, 1, 'WDB-3TP-9W', '', 144, '251.00', '375.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '281.25'),
(512, 1, 'PRIME-TP-3W63C', '', 144, '40.00', '59.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '44.25'),
(513, 1, 'PRIME- SP-1W32C', '', 144, '25.00', '38.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '28.50'),
(514, 1, 'WUPVC12G', '', 144, '33.00', '49.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '36.75'),
(515, 1, 'WUPVC12W', '', 144, '23.00', '35.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '26.25'),
(516, 1, 'WUPVC34G', '', 144, '44.00', '66.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '49.50'),
(517, 1, 'WUPVC34W', '', 144, '34.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '37.50'),
(518, 1, 'WUPVC15W', '', 144, '16.00', '24.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '18.00'),
(519, 1, 'WUPVC1G', '', 144, '60.00', '90.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '67.50'),
(520, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, '1', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(521, 1, 'WJ4-SB-55SV100(55\"4K)Smart', '', 9, '101.00', '115.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(522, 1, 'WUD55MF56(55\"4K)Smart', '', 10, '96.00', '110.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(523, 1, 'W55E3000AS-Smart', '', 10, '70.00', '79.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(524, 1, 'WSD55FD(55\")', '', 9, '61.00', '69.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(525, 1, 'W49E3000AS(49\")Smart', '', 10, '57.00', '65.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(526, 1, 'WSD49FD(49\")', '', 10, '52.00', '59.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(527, 1, 'WQ4-TS43-KS200-QD(Quantum Dot)', '', 10, '57.00', '65.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(528, 1, 'WE4-MX43-SB100', '', 10, '50.00', '56.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(529, 1, 'W43E3000(43\")', '', 10, '39.00', '44.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(530, 1, 'W43E3000AS(43\")Smart', '', 10, '43.00', '48.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(531, 1, 'WD4-TS43-DL200(43\") Smart', '', 10, '41.00', '46.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(532, 1, 'WD437TS25(43\")', '', 10, '36.00', '41.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(533, 1, 'WSD43FD(43\")', '', 10, '37.00', '42.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(534, 1, 'WD1-TS43-FV100(43\")', '', 10, '36.00', '41.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(535, 1, 'WSD40FD(40\")', '', 10, '29.00', '33.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(536, 1, 'WE4-AF39-BX100(39\") Smart', '', 10, '35.00', '40.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(537, 1, 'WE396AFH(39\")', '', 10, '29.00', '33.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(538, 1, 'WE326DH-S(32\")Smart', '', 10, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(539, 1, 'WE326S9CHS(32\")Smart', '', 10, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(540, 1, 'WE326S9CLS(32\")Smart', '', 10, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(541, 1, 'WE4-DH32-BX200(32\")Smart', '', 10, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(542, 1, 'WE4-DH32-BX200(32\"Smart)Silver', '', 9, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(543, 1, 'WE4-DH32-BY200(32\")Smart', '', 10, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(544, 1, 'WE4-DH32-BY200(32\"Smart)Silver', '', 10, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(545, 1, 'WE326AH(32\")Silver', '', 10, '19.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(546, 1, 'WE326AH(32\")', '', 10, '19.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(547, 1, 'WE326S9CH(32\")Silver', '', 10, '19.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(548, 1, 'WE326S9CH(32\")', '', 10, '19.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(549, 1, 'WE326S9CL(32\")Silver', '', 10, '19.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(550, 1, 'WE326S9CL(32\")', '', 10, '19.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(551, 1, 'WD326JX(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(552, 1, 'WD326JX(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(553, 1, 'WD1-JX32-HN100(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '1.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(554, 1, 'WD1-JX32-HN100(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '2.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(555, 1, 'WD1-JX32-EL100(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '3.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(556, 1, 'WD1-JX32-EL100(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '4.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(557, 1, 'WD1-JX32-SY100(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '5.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(558, 1, 'WD1-JX32-SY100(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '6.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(559, 1, 'WD1-JX32-BC100(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '7.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(560, 1, 'WD1-JX32-BC100(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '8.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(561, 1, 'WD1-JX32-TS100(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '9.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(562, 1, 'WD1-JX32-TS100(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '10.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(563, 1, 'WD1-JX32-TS200(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '11.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(564, 1, 'WD1-JX32-TS200(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '12.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(565, 1, 'WD1-JX32-SY200(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '13.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(566, 1, 'WD1-JX32-SY200(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '14.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(567, 1, 'WD1-JX32-BC200(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '15.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(568, 1, 'WD1-JX32-BC200(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '16.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(569, 1, 'WD1-JX32-BY200(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '17.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(570, 1, 'WD326SR(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '18.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(571, 1, 'WD326SR(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '19.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(572, 1, 'WD326SE15(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '20.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(573, 1, 'WD326SE15(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '21.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(574, 1, 'WD326SH15(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '22.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(575, 1, 'WD326SH15(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '23.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(576, 1, 'WD1-EF32-SV100(32\")', '', 10, '17.00', '19.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '24.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(577, 1, 'WD286CD(28\")Silver', '', 10, '16.00', '19.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '25.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(578, 1, 'WD286CD(28\")', '', 10, '16.00', '18.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '26.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(579, 1, 'WD285AH(28\")Silver', '', 10, '16.00', '18.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '27.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(580, 1, 'WD285AH(28\")', '', 10, '16.00', '18.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '28.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(581, 1, 'WDF-DT24AU200(24\")Full HD', '', 10, '13.00', '15.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '29.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(582, 1, 'WCT24O4K(24\")', '', 10, '13.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '30.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(583, 1, 'WCT24O4K(24\")Silver', '', 10, '13.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '31.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(584, 1, 'WCT24O4X(24\")', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '32.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(585, 1, 'WCT24O4C(24\")', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '33.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(586, 1, 'WCT24O4(24\")Silver', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '34.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(587, 1, 'WCT24O4(24\")', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '35.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(588, 1, 'WCT24DF6(24\")Silver', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '36.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(589, 1, 'WCT24DF6(24\")', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '37.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(590, 1, 'WD1-DT24-RL100(24\")', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '38.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(591, 1, 'WD1-DT24-RL100(24\")-Silver', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '39.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(592, 1, 'WD1-DT24-MC100(24\")-Silver', '', 10, '13.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '40.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(593, 1, 'WD1-DT24-MC100(24\")', '', 10, '13.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '41.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(594, 1, 'WE1-BX20-RT200(20\")Bluetooth Sp', '', 10, '11.00', '12.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '42.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(595, 1, 'WSE20BX6(20\")Silver', '', 10, '11.00', '12.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '43.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(596, 1, 'WSE20BX6(20\")', '', 10, '10.00', '12.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '44.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(597, 1, 'WCT19O4X(19\")', '', 10, '9.00', '11.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '45.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(598, 1, 'WCT19O4C(19\")', '', 10, '9.00', '10.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '46.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(599, 1, 'WCT19O4(19\")Silver', '', 10, '9.00', '10.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '47.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(600, 1, 'WCT19O4(19\")', '', 10, '9.00', '10.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '48.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(601, 1, 'WCT19O4K(19\")', '', 10, '8.00', '9.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '49.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(602, 1, 'WCT19DF6(19\")Silver', '', 10, '7.00', '9.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '50.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(603, 1, 'WCT19DF6(19\")', '', 10, '7.00', '8.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '51.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(604, 1, 'Remote (WRC-02)', '', 10, '264.00', '300.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '52.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(605, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, '1', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(606, 1, 'W-35GWH(1Ton)', '', 12, '32.00', '37.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '37.00'),
(607, 1, 'WSN-12K-0102-RXXXA', '', 12, '31.00', '36.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '36.00'),
(608, 1, 'WSN-12K-0102-ECXXA', '', 12, '31.00', '35.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '35.00'),
(609, 1, 'W-50GW(1.5Ton)', '', 12, '40.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45.00'),
(610, 1, 'WSN-18K-0102-RXXXA', '', 12, '40.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45.00'),
(611, 1, 'WSN-18K-0102-ECXXA', '', 12, '40.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45.00'),
(612, 1, 'WSN-18K-0103-ECXXA', '', 12, '40.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45.00'),
(613, 1, 'WSN-18K-0101-SCWWA', '', 12, '43.00', '49.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '49.00'),
(614, 1, 'WSN-18K-0102-FTXXA', '', 12, '40.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45.00'),
(615, 1, 'WSI-18K-0101-SCWWC-Inverter', '', 12, '55.00', '63.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '63.00'),
(616, 1, 'WSI-18K-0101-SCWWC(Smart)', '', 12, '57.00', '65.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '65.00'),
(617, 1, 'WSN-21K-0101-ECXXB', '', 12, '47.00', '53.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '53.00'),
(618, 1, 'WSN-21K-0101-RXXXB', '', 12, '46.00', '52.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '52.00'),
(619, 1, 'WSN-24K-0101-RXXXB', '', 12, '48.00', '54.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '54.00'),
(620, 1, 'WSN-24K-0101-SCWWB', '', 9, '50.00', '56.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '56.00'),
(621, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, '1', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(622, 1, 'Zoom-1200', '', 8, '14.00', '16.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '16.00'),
(623, 1, 'Smart Power Plus-1500', '', 12, '20.00', '23.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '23.00'),
(624, 1, 'Smart Power Plus-1500E', '', 12, '24.00', '28.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '28.00'),
(625, 1, 'Excel-2200-DM', '', 12, '19.00', '22.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '22.00'),
(626, 1, 'Excel-2200E-DM', '', 12, '24.00', '28.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '1.00', 'Finished Products', '', 1, 1, '1', '', '28.00'),
(627, 1, 'Excel Smart -2200', '', 12, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '2.00', 'Finished Products', '', 1, 1, '1', '', '25.00'),
(628, 1, 'Excel Smart -2200E', '', 12, '26.00', '30.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '3.00', 'Finished Products', '', 1, 1, '1', '', '30.00'),
(629, 1, 'Power Max-3600', '', 12, '32.00', '37.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '4.00', 'Finished Products', '', 1, 1, '1', '', '37.00'),
(630, 1, 'Power Max-3600E', '', 12, '37.00', '43.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '5.00', 'Finished Products', '', 1, 1, '1', '', '43.00'),
(631, 1, 'Sparks-4500', '', 12, '33.00', '38.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '6.00', 'Finished Products', '', 1, 1, '1', '', '38.00'),
(632, 1, 'Sparks-4500E', '', 12, '39.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '7.00', 'Finished Products', '', 1, 1, '1', '', '45.00'),
(633, 1, 'Silent Katrina-5500E-Diesel', '', 12, '79.00', '90.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '8.00', 'Finished Products', '', 1, 1, '1', '', '90.00'),
(634, 1, 'Superia-6000', '', 12, '38.00', '43.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '9.00', 'Finished Products', '', 1, 1, '1', '', '43.00'),
(635, 1, 'Superia-6000E', '', 12, '44.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '10.00', 'Finished Products', '', 1, 1, '1', '', '50.00'),
(636, 1, 'Power Craft-8000E (7.5 KE)', '', 12, '47.00', '54.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '11.00', 'Finished Products', '', 1, 1, '1', '', '54.00'),
(637, 1, 'Power Carft-8000E', '', 12, '51.00', '58.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '12.00', 'Finished Products', '', 1, 1, '1', '', '58.00'),
(638, 1, 'Booster-8000E', '', 12, '52.00', '60.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '', '', 'Ware House', '13.00', 'Finished Products', '', 1, 1, '1', '', '60.00'),
(639, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(640, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(641, 1, 'A81GSRPW16.1-1Gang Switch', '', 9, '57.00', '85.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '867.00'),
(642, 1, 'A82GSRPW16.1-2Gang Switch', '', 0, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1530.00'),
(643, 1, 'A83GSRPW10.1-3Gang Switch', '', 71, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1938.00'),
(644, 1, 'A84GSRPW10.1-4Gang Switch', '', 143, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2448.00'),
(645, 1, 'A83PUPW13-3Pin Socket', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1836.00'),
(646, 1, 'A83PUSPW13-3Pin Socket & Switch', '', 123, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2244.00'),
(647, 1, 'A8MSUPW13-Multi Socket', '', 144, '168.00', '250.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2550.00'),
(648, 1, 'A8TSPW3-Telephone Socket', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1530.00'),
(649, 1, 'A8TVSPW-TV Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1428.00'),
(650, 1, 'A8DSPW5-Date Socket', '', 144, '134.00', '200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2040.00'),
(651, 1, 'A8FRPW250-Fan Regulator', '', 144, '265.00', '395.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '4029.00'),
(652, 1, 'A8LDPW250-Light Dimmer Switch', '', 144, '255.00', '380.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '3876.00'),
(653, 1, 'A81GSRPW16.2-1Gang-2Way Switch', '', 144, '70.00', '105.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1071.00'),
(654, 1, 'A82GSRPW16.2-2Gang-2Way Switch', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1836.00'),
(655, 1, 'A83GSRPW10.2-3Gang-2Way Switch', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2448.00'),
(656, 1, 'A84GSRPW10.2-4Gang-2Way Switch', '', 144, '188.00', '280.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2856.00'),
(657, 1, 'A8BPPW-Blank Plate', '', 144, '34.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '510.00'),
(658, 1, 'A82PSPW10-2 Pin Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1428.00'),
(659, 1, 'A82PSSPW10-2 Pin Socket with Switch', '', 144, '134.00', '200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2040.00'),
(660, 1, 'A8USBSPW16-2USB Charger & Switch', '', 144, '402.00', '600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '6120.00');
INSERT INTO `mp_productslist` (`id`, `category_id`, `product_name`, `mg`, `quantity`, `purchase`, `retail`, `expire`, `manufacturing`, `sideeffects`, `description`, `barcode`, `min_stock`, `status`, `total_units`, `packsize`, `sku`, `location`, `tax`, `type`, `image`, `brand_id`, `brand_sector_id`, `unit_type`, `net_weight`, `whole_sale`) VALUES
(661, 1, 'A8USB3PSU13-2USB Charger & 3Pin Scoket', '', 143, '422.00', '630.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '6426.00'),
(662, 1, 'A8CBSR16.1-Calling Bell Switch', '', 144, '84.00', '125.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1275.00'),
(663, 1, 'A81GSR16.1-1Gang Switch', '', 144, '64.00', '95.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '969.00'),
(664, 1, 'A82GSR16.1-2Gang Switch', '', 144, '114.00', '170.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1734.00'),
(665, 1, 'A83GSR10.1-3Gang Switch', '', 144, '137.00', '205.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2091.00'),
(666, 1, 'A84GSR10.1-4Gang Switch', '', 143, '171.00', '255.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2601.00'),
(667, 1, 'A81GSR16.2-1Gang-2way', '', 144, '80.00', '120.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1224.00'),
(668, 1, 'A82GSR16.2-2Gang-2way', '', 144, '131.00', '195.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1989.00'),
(669, 1, 'A83GSR10.2-3Gang-2way', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2652.00'),
(670, 1, 'A84GSR10.2-4Gang-2way', '', 144, '208.00', '310.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '3162.00'),
(671, 1, 'A83PU13-3Pin Socket', '', 144, '131.00', '195.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1989.00'),
(672, 1, 'A83PUS13-3Pin Socket & Switch', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2346.00'),
(673, 1, 'A8MSU13-Multi Socket', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2652.00'),
(674, 1, 'A8TS3-Telephone Socket', '', 144, '114.00', '170.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1734.00'),
(675, 1, 'A82PS10-2 Pin Socket', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1530.00'),
(676, 1, 'A8TVS-TV Socket', '', 132, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1530.00'),
(677, 1, 'A8DS5-Data Socket', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2448.00'),
(678, 1, 'A8FR250-Fan Regulator', '', 144, '281.00', '420.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '4284.00'),
(679, 1, 'A8LD250-Light Dimmer Switch', '', 144, '275.00', '410.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '4182.00'),
(680, 1, 'A8BP-Blank Plate', '', 144, '37.00', '55.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '561.00'),
(681, 1, 'A82PSS10-2 Pin Socket with switch', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2142.00'),
(682, 1, 'E41GSRPW16.1-1Gang Switch', '', 144, '47.00', '70.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '714.00'),
(683, 1, 'E42GSRPW16.1-2Gang Switch', '', 144, '87.00', '130.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1326.00'),
(684, 1, 'E42PSPW10-2 Pin Socket', '', 144, '87.00', '130.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1326.00'),
(685, 1, 'E43GSRPW10.1-3Gang Switch', '', 144, '114.00', '170.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1734.00'),
(686, 1, 'E44GSRPW10.1-4Gang', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2244.00'),
(687, 1, 'E43PUPW13-3 Pin Switch', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1530.00'),
(688, 1, 'E43PUSPW13-3 Pin Switch', '', 144, '134.00', '200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2040.00'),
(689, 1, 'E4MSUPW13-Multi Socket', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2244.00'),
(690, 1, 'E4CBSRPW16.1-Calling Bell', '', 144, '64.00', '95.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '969.00'),
(691, 1, 'E4TSPW3-Telephone Socket', '', 144, '80.00', '120.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1224.00'),
(692, 1, 'E4TVSPW-TV Socket', '', 144, '80.00', '120.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1224.00'),
(693, 1, 'E4DSPW5-Data Socket', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1836.00'),
(694, 1, 'E4FRPW250-Fan Regulator', '', 144, '255.00', '380.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '3876.00'),
(695, 1, 'E4LDPW250-Light Dimmer Switch', '', 144, '241.00', '360.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '3672.00'),
(696, 1, 'E41GSRPW16.2-1Gang-2Way  Switch', '', 144, '60.00', '90.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '918.00'),
(697, 1, 'E42GSRPW16.2-2Gang-2Way  Switch', '', 144, '107.00', '160.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1632.00'),
(698, 1, 'E43GSRPW10.2-3Gang-2Way  Switch', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2244.00'),
(699, 1, 'E44GSRPW10.2-4Gang-2Way  Switch', '', 144, '181.00', '270.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2754.00'),
(700, 1, 'E4BPPW-Blank Plate', '', 144, '30.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '459.00'),
(701, 1, 'E42PSSPW10- 2Pin Socket with switch', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1836.00'),
(702, 1, 'E4USB3PSU13-2USB Charger with 3Pin S', '', 144, '422.00', '630.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '6426.00'),
(703, 1, 'E4USBSPW16-2USB Charger with Switch', '', 144, '402.00', '600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '6120.00'),
(704, 1, 'E4MSSPWP.01 Motion Sensor (PIR)', '', 144, '570.00', '850.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '8670.00'),
(705, 1, 'E4MSSPWM.01 Motion Sensor (MW)', '', 144, '533.00', '795.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '8109.00'),
(706, 1, 'E4CBSR16.1-Calling Bell Switch', '', 144, '74.00', '110.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1122.00'),
(707, 1, 'E41GSR16.1-1Gang Switch', '', 144, '54.00', '80.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '816.00'),
(708, 1, 'E42PS10-2 Pin Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1428.00'),
(709, 1, 'E42GSR16.1-2Gang Switch', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1530.00'),
(710, 1, 'E43GSR10.1-3Gang Switch', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1938.00'),
(711, 1, 'E44GSR10.1-4Gang Switch', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2448.00'),
(712, 1, 'E41GSR16.2-1Gang-2way  Switch', '', 144, '70.00', '105.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1071.00'),
(713, 1, 'E42GSR16.2-2Gang-2way  Switch', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1836.00'),
(714, 1, 'E43GSR10.2-3Gang-2way  Switch', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2448.00'),
(715, 1, 'E44GSR10.2-4Gang-2way  Switch', '', 144, '198.00', '295.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '3009.00'),
(716, 1, 'E43PU13-3Pin Socket', '', 144, '107.00', '160.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1632.00'),
(717, 1, 'E43PUS13-3Pin Socket & Switch', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2142.00'),
(718, 1, 'E4MSU13-Multi Socket', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2346.00'),
(719, 1, 'E4TS3-Telephone Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1428.00'),
(720, 1, 'E4TVS-TV Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1428.00'),
(721, 1, 'E4DS5-Data Socket', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '2142.00'),
(722, 1, 'E4FR250-Fan Regulator', '', 144, '168.00', '400.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '4080.00'),
(723, 1, 'E4LD250-Light Dimmer Switch', '', 144, '261.00', '390.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '3978.00'),
(724, 1, 'E4BP-Blank Plate', '', 144, '34.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '510.00'),
(725, 1, 'E42PSS10-2 Pin Socket with switch', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '1938.00'),
(726, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(727, 1, 'WLED-F3WB22 / R3WB22', '', 144, '111.00', '165.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '123.75'),
(728, 1, 'WLED-F3WE27 / R3WE27', '', 124, '111.00', '165.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '123.75'),
(729, 1, 'WLED-F4WB22 / R4WB22', '', 144, '111.00', '165.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '123.75'),
(730, 1, 'WLED-F4WE27 / R4WE27', '', 144, '117.00', '175.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '131.25'),
(731, 1, 'WLED-F5WB22 / R5WB22', '', 144, '117.00', '175.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '131.25'),
(732, 1, 'WLED-F5WE27/ R5WE27', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '142.50'),
(733, 1, 'WLED-H5WE27', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '142.50'),
(734, 1, 'WLED-H5WB22', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '172.50'),
(735, 1, 'WLED-H5WE27A', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '172.50'),
(736, 1, 'WLED-H5WB22A', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '195.00'),
(737, 1, 'WLED-F6WB22 / R6WB22', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '195.00'),
(738, 1, 'WLED-F6WE27 / R6WE27', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '157.50'),
(739, 1, 'WLED-F7WB22 / R7WB22', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '157.50'),
(740, 1, 'WLED-F7WE27 / R7WE27', '', 144, '151.00', '225.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '168.75'),
(741, 1, 'WLED-H7WE27', '', 144, '151.00', '225.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '168.75'),
(742, 1, 'WLED-H7WB22', '', 144, '218.00', '325.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '243.75'),
(743, 1, 'WLED-H9WE27', '', 144, '218.00', '325.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '243.75'),
(744, 1, 'WLED-H9WB22', '', 144, '285.00', '425.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '318.75'),
(745, 1, 'WLED-H12WE27', '', 144, '285.00', '425.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '318.75'),
(746, 1, 'WLED-12WB22', '', 144, '328.00', '490.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '367.50'),
(747, 1, 'WLED-ECO-WARM-R9WB22', '', 144, '328.00', '490.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '367.50'),
(748, 1, 'WLED-ECO-WARM-R9WE27', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '172.50'),
(749, 1, 'WLED-ECO-WARM-12WB22', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '172.50'),
(750, 1, 'WLED-ECO-WARM-12WE27', '', 144, '178.00', '265.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '198.75'),
(751, 1, 'WLED-ECO-R7WB22', '', 144, '178.00', '265.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '198.75'),
(752, 1, 'WLED-ECO-R7WE27', '', 144, '144.00', '215.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '161.25'),
(753, 1, 'WLED-ECO-R9WB22', '', 144, '144.00', '215.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '161.25'),
(754, 1, 'WLED-ECO-R9WE27', '', 144, '151.00', '225.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '168.75'),
(755, 1, 'WLED-ECO-R12WB22', '', 144, '151.00', '225.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '168.75'),
(756, 1, 'WLED-ECO-R12WE27', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '195.00'),
(757, 1, 'WLED-PR7WB22-Premium-7W', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '195.00'),
(758, 1, 'WLED-PR7WE27-Premium-7W', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '172.50'),
(759, 1, 'WLED-PR9WB22-Premium-9W', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '172.50'),
(760, 1, 'WLED-PR9WE27-Premium-9W', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '180.00'),
(761, 1, 'WLED-PR11WB22-Premium-11W', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '180.00'),
(762, 1, 'WLED-PR11WE27-Premium-11W', '', 144, '188.00', '280.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '210.00'),
(763, 1, 'WLED-PR12WB22-Premium-12W', '', 144, '188.00', '280.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '210.00'),
(764, 1, 'WLED-PR12WE27-Premium-12W', '', 144, '194.00', '290.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '217.50'),
(765, 1, 'WLED-PR13WB22-Premium-13W', '', 144, '194.00', '290.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '217.50'),
(766, 1, 'WLED-PR13WE27-Premium-13W', '', 144, '201.00', '300.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '225.00'),
(767, 1, 'WLED-HP15WB22-Prime Series 15W', '', 144, '201.00', '300.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '225.00'),
(768, 1, 'WLED-HP15WE27 Prime Series 15W', '', 144, '208.00', '310.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '232.50'),
(769, 1, 'WLED-HP20WB22 Prime Series 20W', '', 144, '208.00', '310.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '232.50'),
(770, 1, 'WLED-HP20WE27 Prime Series 20W', '', 144, '261.00', '390.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '292.50'),
(771, 1, 'WLED-HP30WB22 Prime Series 30W', '', 144, '261.00', '390.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '292.50'),
(772, 1, 'WLED-HP30WE27 Prime Series 30W', '', 144, '385.00', '575.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '431.25'),
(773, 1, 'WLED-HP40WB22 Prime Series 40W', '', 144, '385.00', '575.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '431.25'),
(774, 1, 'WLED-HP40WE27 Prime Series 40W', '', 144, '489.00', '730.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '547.50'),
(775, 1, 'WLED-PR-WR11WB22-Premium-11W  Warm', '', 144, '489.00', '730.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '547.50'),
(776, 1, 'WLED-PR-WR11WE27-Premium-11W  Warm', '', 144, '191.00', '285.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '213.75'),
(777, 1, 'WLED-PR-WR12WB22-Premium-12W  Warm', '', 144, '191.00', '285.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '213.75'),
(778, 1, 'WLED-PR-WR12WE27-Premium-12W  Warm', '', 144, '198.00', '295.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '221.25'),
(779, 1, 'WLED-PR-WR13WB22-Premium-13W  Warm', '', 144, '198.00', '295.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '221.25'),
(780, 1, 'WLED-PR-WR13WE27-Premium-13W  Warm', '', 144, '201.00', '300.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '225.00'),
(781, 1, 'WLED-EL7WB22/EL7WE27 Led Emergency Light', '', 144, '181.00', '270.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '202.50'),
(782, 1, 'WLED-EL9WB22 / WLED-EL9WE27', '', 144, '211.00', '315.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '236.25'),
(783, 1, 'WLED-EL12WB22 / WLED-EL12WE27', '', 144, '235.00', '350.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '262.50'),
(784, 1, 'WLED-T8Tube-60FMR-8W', '', 144, '281.00', '420.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '315.00'),
(785, 1, 'WlLED-T8Tube-60FMR-10W', '', 144, '295.00', '440.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '330.00'),
(786, 1, 'WLED-T8Tube-120FMR-16', '', 144, '462.00', '690.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '517.50'),
(787, 1, 'WLED-T8Tube-120FMR-18W', '', 144, '469.00', '700.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '525.00'),
(788, 1, 'WLED-T8Tube-120FMR-20W', '', 144, '486.00', '725.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '543.75'),
(789, 1, 'WLED-T8TUBE-E120FMR-20 W (Eco)', '', 144, '302.00', '450.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '337.50'),
(790, 1, 'WLED-T5Tube-60WMB-8W', '', 144, '275.00', '410.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '307.50'),
(791, 1, 'WLED-T5Tube-60WMB-10W', '', 144, '281.00', '420.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '315.00'),
(792, 1, 'WLED-T5Tube-120WMB-16W', '', 144, '429.00', '640.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '480.00'),
(793, 1, 'WLED-T5Tube-120WMB-18W', '', 144, '436.00', '650.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '487.50'),
(794, 1, 'WLED-T5Tube-120WMB-20W', '', 144, '462.00', '690.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '517.50'),
(795, 1, 'WLED-T8Tube-60WMB-8W', '', 144, '288.00', '430.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '322.50'),
(796, 1, 'WLED-T8Tube-60WMB-10W', '', 144, '295.00', '440.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '330.00'),
(797, 1, 'WLED-T8Tube-120WMB-18W', '', 144, '436.00', '650.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '487.50'),
(798, 1, 'WLED-DTDL2F-18W', '', 144, '402.00', '600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '450.00'),
(799, 1, 'WLED-ECO-DTDL-36W', '', 144, '603.00', '900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '675.00'),
(800, 1, 'WLED-DTDL-36W', '', 144, '737.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '825.00'),
(801, 1, 'WLED-DPL2F2-PR48W', '', 144, '1876.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '2100.00'),
(802, 1, 'WLED-SPL170-12W', '', 144, '402.00', '600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '450.00'),
(803, 1, 'WLED-SPL200-15W', '', 144, '469.00', '700.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '525.00'),
(804, 1, 'WLED-SPL225-18W', '', 144, '509.00', '760.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '570.00'),
(805, 1, 'WLED-PL1F1-PR12W', '', 144, '931.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '1042.50'),
(806, 1, 'WLED-PL1F1-PR24W', '', 144, '1199.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '1342.50'),
(807, 1, 'WLED-PL2F2-PR36W', '', 144, '2405.00', '3.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '2692.50'),
(808, 1, 'WLED-PL2F2-PR48W', '', 144, '2606.00', '3.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '2917.50'),
(809, 1, 'WLED-PL-ECO-24W Economy-24W', '', 144, '854.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '956.25'),
(810, 1, 'WLED-PL-ECO-36W Economy-36W', '', 144, '1910.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '2137.50'),
(811, 1, 'WLED-PL-ECO-48W Economy-48W', '', 144, '2044.00', '3.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 2, '1', '', '2287.50'),
(812, 0, 'WLED-DLR170(PR12W/ WR12W)', '', 144, '395.00', '590.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '1.00', 'Finished Products', '', 1, 2, '1', '', '442.50'),
(813, 0, 'WLED-DLS200(PR15W/ WR15W)', '', 144, '462.00', '690.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '2.00', 'Finished Products', '', 1, 2, '1', '', '517.50'),
(814, 0, 'WLED-DLR225(PR18W/ WR18W)', '', 144, '503.00', '750.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '3.00', 'Finished Products', '', 1, 2, '1', '', '562.50'),
(815, 0, 'WLED-DLR300(PR24W/ WR24W)', '', 144, '704.00', '1050.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '4.00', 'Finished Products', '', 1, 2, '1', '', '787.50'),
(816, 0, 'WLED-HB100DC-1S', '', 144, '6633.00', '9.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '5.00', 'Finished Products', '', 1, 2, '1', '', '7425.00'),
(817, 0, 'WLED-CL-20W', '', 144, '972.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '6.00', 'Finished Products', '', 1, 2, '1', '', '1087.50'),
(818, 0, 'WLED-T8-STALIS-120-Led Single', '', 144, '583.00', '870.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '7.00', 'Finished Products', '', 1, 2, '1', '', '652.50'),
(819, 0, 'WLED-T8-DTALIS-120-Led Double', '', 144, '670.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '8.00', 'Finished Products', '', 1, 2, '1', '', '750.00'),
(820, 0, 'WLED-T8-STALISWC-120(With Carton)', '', 144, '616.00', '920.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '9.00', 'Finished Products', '', 1, 2, '1', '', '690.00'),
(821, 0, 'WLED-T8-DTALISWC-120(With Carton)', '', 144, '717.00', '1070.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '10.00', 'Finished Products', '', 1, 2, '1', '', '802.50'),
(822, 0, 'WLED-FL-PR-30W', '', 144, '1407.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '11.00', 'Finished Products', '', 1, 2, '1', '', '1575.00'),
(823, 0, 'WLED-FL-PR-50W', '', 144, '1809.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '12.00', 'Finished Products', '', 1, 2, '1', '', '2025.00'),
(824, 0, 'WLED-FL-PR-80W', '', 144, '3685.00', '5.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '13.00', 'Finished Products', '', 1, 2, '1', '', '4125.00'),
(825, 0, 'WLED-FL-PR-100W', '', 144, '4355.00', '6.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '14.00', 'Finished Products', '', 1, 2, '1', '', '4875.00'),
(826, 0, 'WLED-FL-PR-150W', '', 144, '5896.00', '8.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '15.00', 'Finished Products', '', 1, 2, '1', '', '6600.00'),
(827, 0, 'WLED-FL-PR-200W', '', 144, '8375.00', '12.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '16.00', 'Finished Products', '', 1, 2, '1', '', '9375.00'),
(828, 0, 'WLED-ML-18W', '', 144, '482.00', '720.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '17.00', 'Finished Products', '', 1, 2, '1', '', '540.00'),
(829, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(830, 1, 'WGS-01 Gang Switch', '', 144, '44.00', '65.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '48.75'),
(831, 1, 'WGS-02Gang Switch', '', 144, '87.00', '130.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '97.50'),
(832, 1, 'WGS-03Gang Switch', '', 144, '124.00', '185.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '138.75'),
(833, 1, 'WGS-04Gang Switch', '', 144, '164.00', '245.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '183.75'),
(834, 1, 'WGS-05Gang Switch', '', 144, '194.00', '290.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '217.50'),
(835, 1, 'W3PS-01-3Pin Socket', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '142.50'),
(836, 1, 'WU3P-01-USB', '', 144, '302.00', '450.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '337.50'),
(837, 1, 'WRCS-01-Remote Con.Sw', '', 144, '436.00', '650.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '487.50'),
(838, 1, 'WRCSPW-02-Remote Con.Switch', '', 144, '596.00', '890.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '667.50'),
(839, 1, 'WRCSPW-03-Remote Con.Switch', '', 144, '583.00', '870.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '652.50'),
(840, 1, 'WFR-01 Fan Regulator', '', 144, '235.00', '350.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '262.50'),
(841, 1, 'WCB-01-Calling Bell', '', 144, '60.00', '90.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '67.50'),
(842, 1, 'W1TVS-TV Socket', '', 144, '90.00', '135.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '101.25'),
(843, 1, 'W1TS3-Telephone Socket', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '112.50'),
(844, 1, 'W1DS6-Date Socket', '', 144, '131.00', '195.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '146.25'),
(845, 1, 'W1MS-13-Multi Socket', '', 144, '194.00', '290.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '217.50'),
(846, 1, 'W13PRS15-3Pin Round Socket', '', 144, '168.00', '250.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '187.50'),
(847, 1, 'W12PSPW10-2Pin Socket', '', 144, '117.00', '175.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '131.25'),
(848, 1, 'W1BP- Blank Plate', '', 144, '34.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '37.50'),
(849, 1, 'W11GSMB/ W11GS10.1-1Gang Switch', '', 144, '50.00', '75.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '56.25'),
(850, 1, 'W12GSMB/ W12GS10.1-2Gang Switch', '', 144, '104.00', '155.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '116.25'),
(851, 1, 'W13GSMB/ W13GS10.1-3Gang Switch', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '157.50'),
(852, 1, 'W14GSMB/ W14GS10.1-4Gang Switch', '', 144, '181.00', '270.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '202.50'),
(853, 1, 'W15GSMB/ W15GS10.1-5Gang Switch', '', 144, '214.00', '320.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '240.00'),
(854, 1, 'W1CBSMB/ W1CBS10.1-Calling Bell Switch', '', 144, '67.00', '100.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '75.00'),
(855, 1, 'WRCSMB / WRCSC-Remote Cont.Switch', '', 144, '479.00', '715.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '536.25'),
(856, 1, 'WRCS-02-Remote Control Switch', '', 144, '603.00', '900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '675.00'),
(857, 1, 'W1FRMB / W1FR250-Fan Regulator', '', 144, '261.00', '390.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '292.50'),
(858, 1, 'W13PUSMB / W13PUS13-3Pin Socket', '', 144, '134.00', '200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '150.00'),
(859, 1, 'W13PSUSBMB / W13PSUSB13-3Pin USB Socket', '', 144, '369.00', '550.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '412.50'),
(860, 1, 'W1TVSMB / W1TVSC-TV Socket', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '112.50'),
(861, 1, 'W1TSMB3 / W1TSC3-Telephone Socket', '', 144, '111.00', '165.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '123.75'),
(862, 1, 'W1DSMB6 / W1DSC6-Data Socket', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '157.50'),
(863, 1, 'W12PS10-2 Pin Socket', '', 144, '124.00', '185.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '138.75'),
(864, 1, 'W1MSMB13 / W1MSC13-Multi Socket', '', 144, '204.00', '305.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '228.75'),
(865, 1, 'W13PRSC15-3Pin Round Socket', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '195.00'),
(866, 1, 'W12USBMSPW-2 USB Charger & Multi Socket', '', 144, '503.00', '750.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '562.50'),
(867, 1, 'W1BP- Blank Plate', '', 144, '34.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '37.50'),
(868, 1, 'S31GSWWR16.1-1Gang Switch-S3', '', 144, '70.00', '105.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '78.75'),
(869, 1, 'V81GSWWR16.1-1 Gang Switch-V8', '', 144, '80.00', '119.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '89.25'),
(870, 1, 'S3CBSWWR16.1-Calling Bell', '', 144, '70.00', '105.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '78.75'),
(871, 1, 'V8CBSWWR16.1-Calling Bell', '', 144, '80.00', '119.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '89.25'),
(872, 1, 'SVSSWWR16.1-Single Switch', '', 144, '40.00', '59.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '44.25'),
(873, 1, 'SVDSWWR16.1-Double Switch', '', 144, '50.00', '75.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '56.25'),
(874, 1, 'SV3PUWW10-3 Pin Socket', '', 144, '57.00', '85.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '63.75'),
(875, 1, 'SVTVSW-TV Socket', '', 144, '46.00', '69.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '51.75'),
(876, 1, 'SVTSWW3-Telephone Socket', '', 144, '60.00', '89.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '66.75'),
(877, 1, 'SVDSWW6-Data Socket', '', 144, '97.00', '145.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '108.75'),
(878, 1, 'SVBMW-Blank', '', 144, '13.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '15.00'),
(879, 1, 'SVLDPW250-(PW)-Light Dimmer', '', 144, '214.00', '320.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '240.00'),
(880, 1, 'S32MCPWW-2M Cover Plate-S3', '', 144, '37.00', '55.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '41.25'),
(881, 1, 'V82MCPWW-2M Cover Plate-V8', '', 144, '46.00', '69.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '51.75'),
(882, 1, 'S33MCPWW-3M Cover Plate-S3', '', 144, '46.00', '69.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '51.75'),
(883, 1, 'V83MCPWW-3M Cover Plate-V8', '', 144, '56.00', '83.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '62.25'),
(884, 1, 'S34MCPWW-4M Cover Plate-S3', '', 144, '53.00', '79.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '59.25'),
(885, 1, 'V84MCPDWW-4M Cover Plate-V8', '', 144, '63.00', '94.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '70.50'),
(886, 1, 'S32MCPMB-2M Cover Plate-S3-10 Pes', '', 144, '46.00', '69.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '51.75'),
(887, 1, 'V82MCPMB-2M Cover Plate-V8-10 Pes', '', 144, '57.00', '85.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '63.75'),
(888, 1, 'S33MCPMB-3M Cover Plate-S3-10 Pes', '', 144, '57.00', '85.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '63.75'),
(889, 1, 'V83MCPMB-3M Cover Plate-V8-10 Pes', '', 144, '64.00', '95.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '71.25'),
(890, 1, 'S34MCPMB-4M Cover Plate-S3-10 Pes', '', 144, '64.00', '95.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '71.25'),
(891, 1, 'V84MCPMB-4M Cover Plate-V8-10 Pes', '', 144, '77.00', '115.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '86.25'),
(892, 1, 'S31GSRMB16.1-1 Gang Switch (S3)-10 Pes', '', 144, '87.00', '130.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '97.50'),
(893, 1, 'V81GSRMB16.1-1 Gang Switch (V8)-10 Pes', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '105.00'),
(894, 1, 'SVSSRMB16.1-Single Switch Module (1 way)', '', 144, '46.00', '69.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '51.75'),
(895, 1, 'SVDSRMB16.1-Double Switch Module (1 way)', '', 144, '60.00', '89.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '66.75');
INSERT INTO `mp_productslist` (`id`, `category_id`, `product_name`, `mg`, `quantity`, `purchase`, `retail`, `expire`, `manufacturing`, `sideeffects`, `description`, `barcode`, `min_stock`, `status`, `total_units`, `packsize`, `sku`, `location`, `tax`, `type`, `image`, `brand_id`, `brand_sector_id`, `unit_type`, `net_weight`, `whole_sale`) VALUES
(896, 1, 'SV3PUMB10-3 Pin Socket Module (Universal)', '', 144, '66.00', '99.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '74.25'),
(897, 1, 'SVTVSMB-TV-Socket Module-20 Pes', '', 144, '54.00', '80.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '60.00'),
(898, 1, 'SVTSMB3-Telephone Socket Module-20 Pes', '', 144, '66.00', '99.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '74.25'),
(899, 1, 'SVDSMB6-Data Socket Module-20 Pes', '', 144, '111.00', '165.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '123.75'),
(900, 1, 'SVBMMB-Blank  Module- 20 Pes', '', 144, '20.00', '30.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '22.50'),
(901, 1, 'S3CBSRMB16.1-Calling Bell Switch(S3)-10 Pes', '', 144, '84.00', '125.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '93.75'),
(902, 1, 'V8CBSRMB16.1-Calling Bell Switch(V8)-10 Pes', '', 144, '93.00', '139.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '104.25'),
(903, 1, 'SVFRPW-250-Module(PW)Fan Regulator', '', 144, '228.00', '340.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '255.00'),
(904, 1, 'SVFRMB-250-Module(MB)Fan Regulator', '', 144, '241.00', '360.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '270.00'),
(905, 1, 'SVLDMB250-Module-(MB)-Light Dimmer', '', 144, '228.00', '340.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 1, 3, '1', '', '255.00'),
(906, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(907, 1, 'P1CBS6 -Calling Bell', '', 144, '19.00', '29.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '21.75'),
(908, 1, 'P1S6.1 -1 Way Single', '', 144, '18.00', '27.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '20.25'),
(909, 1, 'P1S6.2 -2 Way Single', '', 144, '19.00', '29.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '21.75'),
(910, 1, 'P1S2P6 -2Pin Socket', '', 144, '20.00', '30.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '22.50'),
(911, 1, 'P1F6 -Fuse', '', 144, '22.00', '33.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '24.75'),
(912, 1, 'P1I -Indicator', '', 144, '19.00', '28.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '21.00'),
(913, 1, 'P1FR250 -Fan Regulator', '', 144, '90.00', '135.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '101.25'),
(914, 1, 'P1TVS -TV Socket', '', 144, '37.00', '55.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '41.25'),
(915, 1, 'P1TS3 -Telephone Socket', '', 144, '44.00', '65.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '48.75'),
(916, 1, 'P1DS5 -Data Socket', '', 144, '64.00', '95.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '71.25'),
(917, 1, 'WCLR01-Ceiling Rose', '', 144, '21.00', '31.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '23.25'),
(918, 1, 'W1HPB-1H Piano Box', '', 144, '10.00', '15.50', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '11.63'),
(919, 1, 'W2HPB-2H Piano Box', '', 144, '14.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '15.75'),
(920, 1, 'W3HPB-3H Piano Box', '', 144, '16.00', '24.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '18.00'),
(921, 1, 'W4HPB-4H Piano Box', '', 144, '20.00', '30.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '22.50'),
(922, 1, 'W6HPB-6H Piano Box', '', 144, '23.00', '35.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '26.25'),
(923, 1, 'W8HPB-8H Piano Box', '', 144, '30.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '33.75'),
(924, 1, 'WHBP-01 Holder Back Plate', '', 144, '13.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '15.00'),
(925, 1, 'WHBP-02 Holder Back Plate', '', 144, '17.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '18.75'),
(926, 1, 'W68HP8 Hole Piano Box', '', 144, '42.00', '62.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '46.50'),
(927, 1, 'W810HP8 Hole Piano Box', '', 144, '52.00', '78.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '58.50'),
(928, 1, 'W1GOB 1 Gang Outer Box', '', 144, '9.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '10.50'),
(929, 1, 'W2GOB 2 Gang Outer Box', '', 144, '17.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '18.75'),
(930, 1, 'W3GOB 3 Gang Outer Box', '', 144, '29.00', '43.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '32.25'),
(931, 1, 'W2MOB 2M Outer Box', '', 144, '16.00', '24.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '18.00'),
(932, 1, 'W3MOB 3M Outer Box', '', 144, '27.00', '41.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '30.75'),
(933, 1, 'W4MOB 4M Outer Box', '', 144, '34.00', '51.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '38.25'),
(934, 1, 'WJB-01(Single Gang)', '', 144, '19.00', '29.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '21.75'),
(935, 1, 'SV2MJBG-2M Junction Box', '', 144, '30.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '33.75'),
(936, 1, 'SV3MJBG-3M Junction Box', '', 144, '40.00', '60.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '45.00'),
(937, 1, 'SV4MJBG-4M Junction Box', '', 144, '47.00', '70.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '52.50'),
(938, 1, 'WTH-01(Thread) / WPBH-01(Pin)', '', 144, '44.00', '65.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '48.75'),
(939, 1, 'WDPSPWM20', '', 144, '284.00', '420.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '315.00'),
(940, 1, 'WDPSPWM45', '', 144, '402.00', '600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '450.00'),
(941, 1, 'WDPSM20 Metallic Black', '', 144, '285.00', '425.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '318.75'),
(942, 1, 'WDPSM45 Metallic Black', '', 144, '415.00', '620.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '465.00'),
(943, 1, 'WCF-PR01(Piano Type)', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '112.50'),
(944, 1, 'WCF-CR 01(Capacitive Fan Regulator )', '', 144, '235.00', '350.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '262.50'),
(945, 1, 'WFR-01', '', 144, '235.00', '350.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '262.50'),
(946, 1, 'WCF5602-1400mm(Re.Control)', '', 144, '3393.00', '3.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2925.00'),
(947, 1, 'WCF5604 WR-Prink', '', 144, '2558.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2205.00'),
(948, 1, 'WCF5604 WR-Indigo', '', 144, '2471.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2130.00'),
(949, 1, 'WCF5604 WR White / Off White', '', 144, '2436.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2100.00'),
(950, 1, 'WCF 5603 WR Indigo', '', 144, '2558.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2205.00'),
(951, 1, 'WCF 5603 WR White / Off White', '', 144, '2523.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2175.00'),
(952, 1, 'WCF 5603 WR Pink', '', 144, '2558.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2205.00'),
(953, 1, 'WCF5601 WR Indigo', '', 144, '2393.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2062.50'),
(954, 1, 'WCF5601 WR White / Off White', '', 144, '2349.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2025.00'),
(955, 1, 'WCF5601 EM', '', 144, '2166.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '1867.50'),
(956, 1, 'W16OA-RMC(Remote Type)Any Color', '', 144, '2514.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2167.50'),
(957, 1, 'W16OA-RGC(Pull Type)Any Color', '', 144, '2079.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '1792.50'),
(958, 1, 'WTF16B-PBC 400 mm Cream White', '', 144, '1871.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '1612.50'),
(959, 1, 'WTF16A-PBC-Sky Blue/Cream White(Push Button)', '', 144, '2219.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '1912.50'),
(960, 1, 'WTF16A-RMC(Remote Type)', '', 144, '2601.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2242.50'),
(961, 1, 'W17OA-MS-17\"', '', 144, '3698.00', '4.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '3187.50'),
(962, 1, 'W17OA-AS-17\"', '', 144, '3915.00', '4.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '3375.00'),
(963, 1, 'WPF 16OA-PBC', '', 144, '2175.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '1875.00'),
(964, 1, 'WPF16OA-PBC (Pink)', '', 144, '2219.00', '2.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '1912.50'),
(965, 1, 'WPF24A', '', 144, '4950.00', '5.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '4267.50'),
(966, 1, 'POWER MASTER W6DZM95-12V', '', 144, '4238.00', '5.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '4237.50'),
(967, 1, 'POWER MASTER W6DZM75-12V', '', 144, '3825.00', '5.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '3825.00'),
(968, 1, 'WB1275-12V 7.5Ah', '', 144, '795.00', '1.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '795.00'),
(969, 1, 'WB670-6V 7.0Ah', '', 144, '443.00', '590.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '442.50'),
(970, 1, 'WB1245-12V 4.5Ah', '', 144, '585.00', '780.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '585.00'),
(971, 1, 'WB6450-6V4.5Ah', '', 144, '300.00', '400.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '300.00'),
(972, 1, 'WB6450B-6V4.5Ah', '', 144, '300.00', '400.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '300.00'),
(973, 1, 'WB6450C-6V4.5Ah(Clip Type)', '', 144, '300.00', '400.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '300.00'),
(974, 1, 'WDB-8WTP-63A', '', 144, '2613.00', '3.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '2925.00'),
(975, 1, 'TP-3W63C', '', 144, '31.00', '47.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '35.25'),
(976, 1, 'SP-1W32C', '', 144, '20.00', '30.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '22.50'),
(977, 1, 'WDB-3TP-9W', '', 144, '251.00', '375.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '281.25'),
(978, 1, 'PRIME-TP-3W63C', '', 144, '40.00', '59.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '44.25'),
(979, 1, 'PRIME- SP-1W32C', '', 144, '25.00', '38.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '28.50'),
(980, 1, 'WUPVC12G', '', 144, '33.00', '49.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '36.75'),
(981, 1, 'WUPVC12W', '', 144, '23.00', '35.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '26.25'),
(982, 1, 'WUPVC34G', '', 144, '44.00', '66.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '49.50'),
(983, 1, 'WUPVC34W', '', 144, '34.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '37.50'),
(984, 1, 'WUPVC15W', '', 144, '16.00', '24.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '18.00'),
(985, 1, 'WUPVC1G', '', 144, '60.00', '90.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '12', '', 'Ware House', '0.00', 'Finished Products', '', 4, 1, '1', '', '67.50'),
(986, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(987, 1, 'WJ4-SB-55SV100(55\"4K)Smart', '', 10, '101.00', '115.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(988, 1, 'WUD55MF56(55\"4K)Smart', '', 10, '96.00', '110.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(989, 1, 'W55E3000AS-Smart', '', 10, '70.00', '79.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(990, 1, 'WSD55FD(55\")', '', 10, '61.00', '69.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(991, 1, 'W49E3000AS(49\")Smart', '', 10, '57.00', '65.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(992, 1, 'WSD49FD(49\")', '', 10, '52.00', '59.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(993, 1, 'WQ4-TS43-KS200-QD(Quantum Dot)', '', 10, '57.00', '65.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(994, 1, 'WE4-MX43-SB100', '', 10, '50.00', '56.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(995, 1, 'W43E3000(43\")', '', 10, '39.00', '44.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(996, 1, 'W43E3000AS(43\")Smart', '', 10, '43.00', '48.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(997, 1, 'WD4-TS43-DL200(43\") Smart', '', 10, '41.00', '46.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(998, 1, 'WD437TS25(43\")', '', 10, '36.00', '41.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(999, 1, 'WSD43FD(43\")', '', 10, '37.00', '42.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1000, 1, 'WD1-TS43-FV100(43\")', '', 10, '36.00', '41.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1001, 1, 'WSD40FD(40\")', '', 10, '29.00', '33.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1002, 1, 'WE4-AF39-BX100(39\") Smart', '', 10, '35.00', '40.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1003, 1, 'WE396AFH(39\")', '', 10, '29.00', '33.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1004, 1, 'WE326DH-S(32\")Smart', '', 10, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1005, 1, 'WE326S9CHS(32\")Smart', '', 10, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1006, 1, 'WE326S9CLS(32\")Smart', '', 10, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1007, 1, 'WE4-DH32-BX200(32\")Smart', '', 10, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1008, 1, 'WE4-DH32-BX200(32\"Smart)Silver', '', 9, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1009, 1, 'WE4-DH32-BY200(32\")Smart', '', 10, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1010, 1, 'WE4-DH32-BY200(32\"Smart)Silver', '', 10, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1011, 1, 'WE326AH(32\")Silver', '', 10, '19.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1012, 1, 'WE326AH(32\")', '', 10, '19.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1013, 1, 'WE326S9CH(32\")Silver', '', 10, '19.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1014, 1, 'WE326S9CH(32\")', '', 10, '19.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1015, 1, 'WE326S9CL(32\")Silver', '', 10, '19.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1016, 1, 'WE326S9CL(32\")', '', 10, '19.00', '21.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1017, 1, 'WD326JX(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1018, 1, 'WD326JX(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1019, 1, 'WD1-JX32-HN100(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '1.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1020, 1, 'WD1-JX32-HN100(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '2.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1021, 1, 'WD1-JX32-EL100(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '3.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1022, 1, 'WD1-JX32-EL100(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '4.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1023, 1, 'WD1-JX32-SY100(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '5.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1024, 1, 'WD1-JX32-SY100(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '6.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1025, 1, 'WD1-JX32-BC100(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '7.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1026, 1, 'WD1-JX32-BC100(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '8.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1027, 1, 'WD1-JX32-TS100(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '9.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1028, 1, 'WD1-JX32-TS100(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '10.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1029, 1, 'WD1-JX32-TS200(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '11.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1030, 1, 'WD1-JX32-TS200(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '12.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1031, 1, 'WD1-JX32-SY200(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '13.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1032, 1, 'WD1-JX32-SY200(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '14.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1033, 1, 'WD1-JX32-BC200(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '15.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1034, 1, 'WD1-JX32-BC200(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '16.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1035, 1, 'WD1-JX32-BY200(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '17.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1036, 1, 'WD326SR(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '18.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1037, 1, 'WD326SR(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '19.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1038, 1, 'WD326SE15(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '20.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1039, 1, 'WD326SE15(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '21.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1040, 1, 'WD326SH15(32\")Silver', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '22.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1041, 1, 'WD326SH15(32\")', '', 10, '18.00', '20.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '23.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1042, 1, 'WD1-EF32-SV100(32\")', '', 10, '17.00', '19.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '24.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1043, 1, 'WD286CD(28\")Silver', '', 10, '16.00', '19.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '25.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1044, 1, 'WD286CD(28\")', '', 10, '16.00', '18.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '26.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1045, 1, 'WD285AH(28\")Silver', '', 10, '16.00', '18.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '27.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1046, 1, 'WD285AH(28\")', '', 10, '16.00', '18.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '28.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1047, 1, 'WDF-DT24AU200(24\")Full HD', '', 10, '13.00', '15.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '29.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1048, 1, 'WCT24O4K(24\")', '', 10, '13.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '30.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1049, 1, 'WCT24O4K(24\")Silver', '', 10, '13.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '31.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1050, 1, 'WCT24O4X(24\")', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '32.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1051, 1, 'WCT24O4C(24\")', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '33.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1052, 1, 'WCT24O4(24\")Silver', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '34.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1053, 1, 'WCT24O4(24\")', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '35.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1054, 1, 'WCT24DF6(24\")Silver', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '36.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1055, 1, 'WCT24DF6(24\")', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '37.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1056, 1, 'WD1-DT24-RL100(24\")', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '38.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1057, 1, 'WD1-DT24-RL100(24\")-Silver', '', 10, '12.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '39.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1058, 1, 'WD1-DT24-MC100(24\")-Silver', '', 10, '13.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '40.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1059, 1, 'WD1-DT24-MC100(24\")', '', 10, '13.00', '14.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '41.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1060, 1, 'WE1-BX20-RT200(20\")Bluetooth Sp', '', 10, '11.00', '12.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '42.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1061, 1, 'WSE20BX6(20\")Silver', '', 10, '11.00', '12.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '43.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1062, 1, 'WSE20BX6(20\")', '', 10, '10.00', '12.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '44.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1063, 1, 'WCT19O4X(19\")', '', 10, '9.00', '11.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '45.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1064, 1, 'WCT19O4C(19\")', '', 10, '9.00', '10.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '46.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1065, 1, 'WCT19O4(19\")Silver', '', 10, '9.00', '10.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '47.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1066, 1, 'WCT19O4(19\")', '', 10, '9.00', '10.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '48.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1067, 1, 'WCT19O4K(19\")', '', 10, '8.00', '9.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '49.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1068, 1, 'WCT19DF6(19\")Silver', '', 10, '7.00', '9.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '50.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1069, 1, 'WCT19DF6(19\")', '', 10, '7.00', '8.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '51.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1070, 1, 'Remote (WRC-02)', '', 10, '264.00', '300.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '52.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1071, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(1072, 1, 'W-35GWH(1Ton)', '', 12, '32.00', '37.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '37.00'),
(1073, 1, 'WSN-12K-0102-RXXXA', '', 12, '31.00', '36.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '36.00'),
(1074, 1, 'WSN-12K-0102-ECXXA', '', 12, '31.00', '35.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '35.00'),
(1075, 1, 'W-50GW(1.5Ton)', '', 12, '40.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45.00'),
(1076, 1, 'WSN-18K-0102-RXXXA', '', 12, '40.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45.00'),
(1077, 1, 'WSN-18K-0102-ECXXA', '', 12, '40.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45.00'),
(1078, 1, 'WSN-18K-0103-ECXXA', '', 12, '40.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45.00'),
(1079, 1, 'WSN-18K-0101-SCWWA', '', 12, '43.00', '49.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '49.00'),
(1080, 1, 'WSN-18K-0102-FTXXA', '', 12, '40.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45.00'),
(1081, 1, 'WSI-18K-0101-SCWWC-Inverter', '', 12, '55.00', '63.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '63.00'),
(1082, 1, 'WSI-18K-0101-SCWWC(Smart)', '', 12, '57.00', '65.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '65.00'),
(1083, 1, 'WSN-21K-0101-ECXXB', '', 12, '47.00', '53.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '53.00'),
(1084, 1, 'WSN-21K-0101-RXXXB', '', 12, '46.00', '52.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '52.00'),
(1085, 1, 'WSN-24K-0101-RXXXB', '', 12, '48.00', '54.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '54.00'),
(1086, 1, 'WSN-24K-0101-SCWWB', '', 9, '50.00', '56.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '56.00'),
(1087, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(1088, 1, 'Zoom-1200', '', 7, '14.00', '16.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '16.00'),
(1089, 1, 'Smart Power Plus-1500', '', 12, '20.00', '23.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '23.00'),
(1090, 1, 'Smart Power Plus-1500E', '', 12, '24.00', '28.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '28.00'),
(1091, 1, 'Excel-2200-DM', '', 10, '19.00', '22.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '22.00'),
(1092, 1, 'Excel-2200E-DM', '', 12, '24.00', '28.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '1.00', 'Finished Products', '', 1, 1, '1', '', '28.00'),
(1093, 1, 'Excel Smart -2200', '', 12, '22.00', '25.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '2.00', 'Finished Products', '', 1, 1, '1', '', '25.00'),
(1094, 1, 'Excel Smart -2200E', '', 12, '26.00', '30.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '3.00', 'Finished Products', '', 1, 1, '1', '', '30.00'),
(1095, 1, 'Power Max-3600', '', 12, '32.00', '37.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '4.00', 'Finished Products', '', 1, 1, '1', '', '37.00'),
(1096, 1, 'Power Max-3600E', '', 12, '37.00', '43.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '5.00', 'Finished Products', '', 1, 1, '1', '', '43.00'),
(1097, 1, 'Sparks-4500', '', 12, '33.00', '38.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '6.00', 'Finished Products', '', 1, 1, '1', '', '38.00'),
(1098, 1, 'Sparks-4500E', '', 12, '39.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '7.00', 'Finished Products', '', 1, 1, '1', '', '45.00'),
(1099, 1, 'Silent Katrina-5500E-Diesel', '', 12, '79.00', '90.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '8.00', 'Finished Products', '', 1, 1, '1', '', '90.00'),
(1100, 1, 'Superia-6000', '', 12, '38.00', '43.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '9.00', 'Finished Products', '', 1, 1, '1', '', '43.00'),
(1101, 1, 'Superia-6000E', '', 12, '44.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '10.00', 'Finished Products', '', 1, 1, '1', '', '50.00'),
(1102, 1, 'Power Craft-8000E (7.5 KE)', '', 9, '47.00', '54.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '11.00', 'Finished Products', '', 1, 1, '1', '', '54.00'),
(1103, 1, 'Power Carft-8000E', '', 10, '51.00', '5800.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '12.00', 'Finished Products', '', 1, 1, '1', '', '58.00'),
(1104, 1, 'Booster-8000E', '', 12, '52.00', '60.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '13.00', 'Finished Products', '', 1, 1, '1', '', '60.00'),
(1105, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(1106, 1, 'WJ4-SB-55SV100(55\"4K)Smart', '', 10, '101.00', '115.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1107, 1, 'WUD55MF56(55\"4K)Smart', '', 10, '96.00', '110.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '0.00'),
(1108, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1109, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1110, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1111, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1112, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1113, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1114, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1115, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1116, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1117, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1118, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1119, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1120, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1121, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1122, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1123, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1124, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1125, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1126, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1127, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1128, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1129, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1130, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1131, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1132, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1133, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1134, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1135, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1136, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1137, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1138, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1139, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1140, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1141, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1142, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1143, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1144, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1145, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1146, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1147, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1148, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1149, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1150, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1151, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1152, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1153, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1154, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00');
INSERT INTO `mp_productslist` (`id`, `category_id`, `product_name`, `mg`, `quantity`, `purchase`, `retail`, `expire`, `manufacturing`, `sideeffects`, `description`, `barcode`, `min_stock`, `status`, `total_units`, `packsize`, `sku`, `location`, `tax`, `type`, `image`, `brand_id`, `brand_sector_id`, `unit_type`, `net_weight`, `whole_sale`) VALUES
(1155, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1156, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1157, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1158, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1159, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1160, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1161, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1162, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1163, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1164, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1165, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1166, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1167, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1168, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1169, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1170, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1171, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1172, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1173, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1174, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1175, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1176, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1177, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1178, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1179, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1180, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1181, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1182, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1183, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1184, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1185, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1186, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1187, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1188, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1189, 1, 'Milk Pack', '250', 211, '25.00', '30.00', '0000-00-00', '0000-00-00', 'No Effects', 'Description:', '4587233658', 10, 0, 0, '24', 'XL-240', '', '0.00', 'Finished Products', '', 1, 1, '1', '800', '720.00'),
(1190, 1, 'Pepsi', '250', 211, '374222.00', '402366.00', '0000-00-00', '0000-00-00', 'No Effects', 'Description:', '4587233658', 10, 0, 0, '24', 'XL-240', '', '0.00', 'Finished Products', '', 1, 1, '1', '800', '720366.00'),
(1191, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(1192, 1, 'Milk Pack', '250', 211, '25.00', '30.00', '0000-00-00', '0000-00-00', 'No Effects', 'Description:', '4587233658', 10, 0, 0, '24', 'XL-240', '', '0.00', 'Finished Products', '', 1, 1, '1', '800', '720.00'),
(1193, 1, 'Pepsi', '250', 211, '374222.00', '402366.00', '0000-00-00', '0000-00-00', 'No Effects', 'Description:', '4587233658', 10, 0, 0, '24', 'XL-240', '', '0.00', 'Finished Products', '', 1, 1, '1', '800', '720366.00'),
(1194, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(1195, 1, 'WJ4-SB-55SV100(55\"4K)Smart', 'Pice', 10, '101.00', '115.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '115.00'),
(1196, 1, 'WUD55MF56(55\"4K)Smart', 'Pice', 10, '96.00', '110.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '110.00'),
(1197, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(1198, 1, 'WJ4-SB-55SV100(55\"4K)Smart', 'Pice', 10, '101.00', '115.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '115.00'),
(1199, 1, 'WUD55MF56(55\"4K)Smart', 'Pice', 10, '96.00', '110.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '110.00'),
(1200, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(1201, 1, 'WJ4-SB-55SV100(55\"4K)Smart', 'Pice', 10, '101.00', '115.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '4587233658', 10, 0, 0, '1', 'XL-240', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '800', '115.00'),
(1202, 1, 'WUD55MF56(55\"4K)Smart', 'Pice', 10, '96.00', '110.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '4587233658', 10, 0, 0, '1', 'XL-240', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '800', '110.00'),
(1203, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1204, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1205, 0, '', '', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', '', '', '', 10, 0, 0, '', '', '', '0.00', '', '', 0, 0, '1', '', '0.00'),
(1206, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(1207, 1, 'WJ4-SB-55SV100(55\"4K)Smart', 'Pice', 10, '101200.00', '115000.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '115000.00'),
(1208, 1, 'WUD55MF56(55\"4K)Smart', 'Pice', 9, '96800.00', '11000.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '11000.00'),
(1209, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(1210, 1, 'W-35GWH(1Ton)', '', 12, '32648.00', '37100.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '37100.00'),
(1211, 1, 'WSN-12K-0102-RXXXA', '', 12, '31680.00', '36000.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '36000.00'),
(1212, 1, 'WSN-12K-0102-ECXXA', '', 12, '31592.00', '35900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '35900.00'),
(1213, 1, 'W-50GW(1.5Ton)', '', 12, '40392.00', '45900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45900.00'),
(1214, 1, 'WSN-18K-0102-RXXXA', '', 12, '40392.00', '45900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45900.00'),
(1215, 1, 'WSN-18K-0102-ECXXA', '', 12, '40392.00', '45900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45900.00'),
(1216, 1, 'WSN-18K-0103-ECXXA', '', 12, '40392.00', '45900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45900.00'),
(1217, 1, 'WSN-18K-0101-SCWWA', '', 12, '43912.00', '49900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '49900.00'),
(1218, 1, 'WSN-18K-0102-FTXXA', '', 1, '40392.00', '45900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '45900.00'),
(1219, 1, 'WSI-18K-0101-SCWWC-Inverter', '', 12, '55880.00', '63500.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '63500.00'),
(1220, 1, 'WSI-18K-0101-SCWWC(Smart)', '', 12, '57200.00', '65000.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '65000.00'),
(1221, 1, 'WSN-21K-0101-ECXXB', '', 12, '47432.00', '53900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '53900.00'),
(1222, 1, 'WSN-21K-0101-RXXXB', '', 12, '46552.00', '52900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '52900.00'),
(1223, 1, 'WSN-24K-0101-RXXXB', '', 12, '48048.00', '54600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '54600.00'),
(1224, 1, 'WSN-24K-0101-SCWWB', '', 12, '50072.00', '56900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '56900.00'),
(1225, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(1226, 1, 'WJ4-SB-55SV100(55\"4K)Smart', 'Pice', 2, '101200.00', '115000.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '123456', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '115000.00'),
(1227, 1, 'WUD55MF56(55\"4K)Smart', 'Pice', 8, '96800.00', '11000.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '1234567', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '11000.00'),
(1228, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(1229, 1, 'A8CBSRPW16.1-Calling Bell Switch', '', 144, '74.00', '110.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '82.50'),
(1230, 1, 'A81GSRPW16.1-1Gang Switch', '', 144, '57.00', '85.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '63.75'),
(1231, 1, 'A82GSRPW16.1-2Gang Switch', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '112.50'),
(1232, 1, 'A83GSRPW10.1-3Gang Switch', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '142.50'),
(1233, 1, 'A84GSRPW10.1-4Gang Switch', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '180.00'),
(1234, 1, 'A83PUPW13-3Pin Socket', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '135.00'),
(1235, 1, 'A83PUSPW13-3Pin Socket & Switch', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '165.00'),
(1236, 1, 'A8MSUPW13-Multi Socket', '', 144, '168.00', '250.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '187.50'),
(1237, 1, 'A8TSPW3-Telephone Socket', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '112.50'),
(1238, 1, 'A8TVSPW-TV Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '105.00'),
(1239, 1, 'A8DSPW5-Date Socket', '', 144, '134.00', '200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '150.00'),
(1240, 1, 'A8FRPW250-Fan Regulator', '', 144, '265.00', '395.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '296.25'),
(1241, 1, 'A8LDPW250-Light Dimmer Switch', '', 144, '255.00', '380.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '285.00'),
(1242, 1, 'A81GSRPW16.2-1Gang-2Way Switch', '', 144, '70.00', '105.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '78.75'),
(1243, 1, 'A82GSRPW16.2-2Gang-2Way Switch', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '135.00'),
(1244, 1, 'A83GSRPW10.2-3Gang-2Way Switch', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '180.00'),
(1245, 1, 'A84GSRPW10.2-4Gang-2Way Switch', '', 144, '188.00', '280.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '210.00'),
(1246, 1, 'A8BPPW-Blank Plate', '', 144, '34.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '37.50'),
(1247, 1, 'A82PSPW10-2 Pin Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '105.00'),
(1248, 1, 'A82PSSPW10-2 Pin Socket with Switch', '', 144, '134.00', '200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '150.00'),
(1249, 1, 'A8USBSPW16-2USB Charger & Switch', '', 144, '402.00', '600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '450.00'),
(1250, 1, 'A8USB3PSU13-2USB Charger & 3Pin Scoket', '', 144, '422.00', '630.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '472.50'),
(1251, 1, 'A8CBSR16.1-Calling Bell Switch', '', 144, '84.00', '125.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '93.75'),
(1252, 1, 'A81GSR16.1-1Gang Switch', '', 144, '64.00', '95.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '71.25'),
(1253, 1, 'A82GSR16.1-2Gang Switch', '', 144, '114.00', '170.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '127.50'),
(1254, 1, 'A83GSR10.1-3Gang Switch', '', 144, '137.00', '205.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '153.75'),
(1255, 1, 'A84GSR10.1-4Gang Switch', '', 144, '171.00', '255.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '191.25'),
(1256, 1, 'A81GSR16.2-1Gang-2way', '', 144, '80.00', '120.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '90.00'),
(1257, 1, 'A82GSR16.2-2Gang-2way', '', 144, '131.00', '195.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '146.25'),
(1258, 1, 'A83GSR10.2-3Gang-2way', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '195.00'),
(1259, 1, 'A84GSR10.2-4Gang-2way', '', 144, '208.00', '310.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '232.50'),
(1260, 1, 'A83PU13-3Pin Socket', '', 144, '131.00', '195.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '146.25'),
(1261, 1, 'A83PUS13-3Pin Socket & Switch', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '172.50'),
(1262, 1, 'A8MSU13-Multi Socket', '', 143, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '195.00'),
(1263, 1, 'A8TS3-Telephone Socket', '', 144, '114.00', '170.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '127.50'),
(1264, 1, 'A82PS10-2 Pin Socket', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '112.50'),
(1265, 1, 'A8TVS-TV Socket', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '112.50'),
(1266, 1, 'A8DS5-Data Socket', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '180.00'),
(1267, 1, 'A8FR250-Fan Regulator', '', 144, '281.00', '420.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '315.00'),
(1268, 1, 'A8LD250-Light Dimmer Switch', '', 144, '275.00', '410.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '307.50'),
(1269, 1, 'A8BP-Blank Plate', '', 144, '37.00', '55.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '41.25'),
(1270, 1, 'A82PSS10-2 Pin Socket with switch', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '157.50'),
(1271, 1, 'E41GSRPW16.1-1Gang Switch', '', 144, '47.00', '70.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '52.50'),
(1272, 1, 'E42GSRPW16.1-2Gang Switch', '', 144, '87.00', '130.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '97.50'),
(1273, 1, 'E42PSPW10-2 Pin Socket', '', 144, '87.00', '130.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '97.50'),
(1274, 1, 'E43GSRPW10.1-3Gang Switch', '', 144, '114.00', '170.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '127.50'),
(1275, 1, 'E44GSRPW10.1-4Gang', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '165.00'),
(1276, 1, 'E43PUPW13-3 Pin Switch', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '112.50'),
(1277, 1, 'E43PUSPW13-3 Pin Switch', '', 144, '134.00', '200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '150.00'),
(1278, 1, 'E4MSUPW13-Multi Socket', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '165.00'),
(1279, 1, 'E4CBSRPW16.1-Calling Bell', '', 144, '64.00', '95.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '71.25'),
(1280, 1, 'E4TSPW3-Telephone Socket', '', 144, '80.00', '120.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '90.00'),
(1281, 1, 'E4TVSPW-TV Socket', '', 144, '80.00', '120.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '90.00'),
(1282, 1, 'E4DSPW5-Data Socket', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '135.00'),
(1283, 1, 'E4FRPW250-Fan Regulator', '', 144, '255.00', '380.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '285.00'),
(1284, 1, 'E4LDPW250-Light Dimmer Switch', '', 144, '241.00', '360.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '270.00'),
(1285, 1, 'E41GSRPW16.2-1Gang-2Way  Switch', '', 143, '60.00', '90.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '67.50'),
(1286, 1, 'E42GSRPW16.2-2Gang-2Way  Switch', '', 144, '107.00', '160.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '120.00'),
(1287, 1, 'E43GSRPW10.2-3Gang-2Way  Switch', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '165.00'),
(1288, 1, 'E44GSRPW10.2-4Gang-2Way  Switch', '', 144, '181.00', '270.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '202.50'),
(1289, 1, 'E4BPPW-Blank Plate', '', 144, '30.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '33.75'),
(1290, 1, 'E42PSSPW10- 2Pin Socket with switch', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '135.00'),
(1291, 1, 'E4USB3PSU13-2USB Charger with 3Pin S', '', 144, '422.00', '630.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '472.50'),
(1292, 1, 'E4USBSPW16-2USB Charger with Switch', '', 144, '402.00', '600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '450.00'),
(1293, 1, 'E4MSSPWP.01 Motion Sensor (PIR)', '', 144, '570.00', '850.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '637.50'),
(1294, 1, 'E4MSSPWM.01 Motion Sensor (MW)', '', 144, '533.00', '795.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '596.25'),
(1295, 1, 'E4CBSR16.1-Calling Bell Switch', '', 144, '74.00', '110.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '82.50'),
(1296, 1, 'E41GSR16.1-1Gang Switch', '', 144, '54.00', '80.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '60.00'),
(1297, 1, 'E42PS10-2 Pin Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '105.00'),
(1298, 1, 'E42GSR16.1-2Gang Switch', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '112.50'),
(1299, 1, 'E43GSR10.1-3Gang Switch', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '142.50'),
(1300, 1, 'E44GSR10.1-4Gang Switch', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '180.00'),
(1301, 1, 'E41GSR16.2-1Gang-2way  Switch', '', 144, '70.00', '105.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '78.75'),
(1302, 1, 'E42GSR16.2-2Gang-2way  Switch', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '135.00'),
(1303, 1, 'E43GSR10.2-3Gang-2way  Switch', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '180.00'),
(1304, 1, 'E44GSR10.2-4Gang-2way  Switch', '', 144, '198.00', '295.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '221.25'),
(1305, 1, 'E43PU13-3Pin Socket', '', 144, '107.00', '160.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '120.00'),
(1306, 1, 'E43PUS13-3Pin Socket & Switch', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '157.50'),
(1307, 1, 'E4MSU13-Multi Socket', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '172.50'),
(1308, 1, 'E4TS3-Telephone Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '105.00'),
(1309, 1, 'E4TVS-TV Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '105.00'),
(1310, 1, 'E4DS5-Data Socket', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '157.50'),
(1311, 1, 'E4FR250-Fan Regulator', '', 144, '168.00', '400.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '300.00'),
(1312, 1, 'E4LD250-Light Dimmer Switch', '', 144, '261.00', '390.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '292.50'),
(1313, 1, 'E4BP-Blank Plate', '', 144, '34.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '37.50'),
(1314, 0, 'E42PSS10-2 Pin Socket with switch (PW)', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '1.00', 'Finished Products', '', 1, 1, '1', '', '38.50'),
(1315, 0, 'Product name', 'Mg', 0, '0.00', '0.00', '0000-00-00', '0000-00-00', 'Side Effects', 'Description', 'Barcode', 10, 0, 0, 'Packsize', 'Sku', 'Location', '0.00', 'Product Type', '', 0, 0, '1', 'Net Weight', '0.00'),
(1316, 1, 'A8CBSRPW16.1-Calling Bell Switch', '', 144, '74.00', '110.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '82.50'),
(1317, 1, 'A81GSRPW16.1-1Gang Switch', '', 144, '57.00', '85.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '63.75'),
(1318, 1, 'A82GSRPW16.1-2Gang Switch', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '112.50'),
(1319, 1, 'A83GSRPW10.1-3Gang Switch', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '142.50'),
(1320, 1, 'A84GSRPW10.1-4Gang Switch', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '180.00'),
(1321, 1, 'A83PUPW13-3Pin Socket', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '135.00'),
(1322, 1, 'A83PUSPW13-3Pin Socket & Switch', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '165.00'),
(1323, 1, 'A8MSUPW13-Multi Socket', '', 144, '168.00', '250.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '187.50'),
(1324, 1, 'A8TSPW3-Telephone Socket', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '112.50'),
(1325, 1, 'A8TVSPW-TV Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '105.00'),
(1326, 1, 'A8DSPW5-Date Socket', '', 144, '134.00', '200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '150.00'),
(1327, 1, 'A8FRPW250-Fan Regulator', '', 144, '265.00', '395.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '296.25'),
(1328, 1, 'A8LDPW250-Light Dimmer Switch', '', 144, '255.00', '380.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '285.00'),
(1329, 1, 'A81GSRPW16.2-1Gang-2Way Switch', '', 144, '70.00', '105.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '78.75'),
(1330, 1, 'A82GSRPW16.2-2Gang-2Way Switch', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '135.00'),
(1331, 1, 'A83GSRPW10.2-3Gang-2Way Switch', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '180.00'),
(1332, 1, 'A84GSRPW10.2-4Gang-2Way Switch', '', 144, '188.00', '280.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '210.00'),
(1333, 1, 'A8BPPW-Blank Plate', '', 144, '34.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '37.50'),
(1334, 1, 'A82PSPW10-2 Pin Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '105.00'),
(1335, 1, 'A82PSSPW10-2 Pin Socket with Switch', '', 144, '134.00', '200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '150.00'),
(1336, 1, 'A8USBSPW16-2USB Charger & Switch', '', 144, '402.00', '600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '450.00'),
(1337, 1, 'A8USB3PSU13-2USB Charger & 3Pin Scoket', '', 144, '422.00', '630.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '472.50'),
(1338, 1, 'A8CBSR16.1-Calling Bell Switch', '', 144, '84.00', '125.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '93.75'),
(1339, 1, 'A81GSR16.1-1Gang Switch', '', 144, '64.00', '95.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '71.25'),
(1340, 1, 'A82GSR16.1-2Gang Switch', '', 144, '114.00', '170.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '127.50'),
(1341, 1, 'A83GSR10.1-3Gang Switch', '', 144, '137.00', '205.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '153.75'),
(1342, 1, 'A84GSR10.1-4Gang Switch', '', 144, '171.00', '255.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '191.25'),
(1343, 1, 'A81GSR16.2-1Gang-2way', '', 144, '80.00', '120.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '90.00'),
(1344, 1, 'A82GSR16.2-2Gang-2way', '', 144, '131.00', '195.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '146.25'),
(1345, 1, 'A83GSR10.2-3Gang-2way', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '195.00'),
(1346, 1, 'A84GSR10.2-4Gang-2way', '', 144, '208.00', '310.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '232.50'),
(1347, 1, 'A83PU13-3Pin Socket', '', 144, '131.00', '195.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '146.25'),
(1348, 1, 'A83PUS13-3Pin Socket & Switch', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '172.50'),
(1349, 1, 'A8MSU13-Multi Socket', '', 144, '174.00', '260.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '195.00'),
(1350, 1, 'A8TS3-Telephone Socket', '', 144, '114.00', '170.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '127.50'),
(1351, 1, 'A82PS10-2 Pin Socket', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '112.50'),
(1352, 1, 'A8TVS-TV Socket', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '112.50'),
(1353, 1, 'A8DS5-Data Socket', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '180.00'),
(1354, 1, 'A8FR250-Fan Regulator', '', 144, '281.00', '420.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '315.00'),
(1355, 1, 'A8LD250-Light Dimmer Switch', '', 144, '275.00', '410.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '307.50'),
(1356, 1, 'A8BP-Blank Plate', '', 144, '37.00', '55.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '41.25'),
(1357, 1, 'A82PSS10-2 Pin Socket with switch', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '157.50'),
(1358, 1, 'E41GSRPW16.1-1Gang Switch', '', 144, '47.00', '70.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '52.50'),
(1359, 1, 'E42GSRPW16.1-2Gang Switch', '', 144, '87.00', '130.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '97.50'),
(1360, 1, 'E42PSPW10-2 Pin Socket', '', 144, '87.00', '130.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '97.50'),
(1361, 1, 'E43GSRPW10.1-3Gang Switch', '', 144, '114.00', '170.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '127.50'),
(1362, 1, 'E44GSRPW10.1-4Gang', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '165.00'),
(1363, 1, 'E43PUPW13-3 Pin Switch', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '112.50'),
(1364, 1, 'E43PUSPW13-3 Pin Switch', '', 144, '134.00', '200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '150.00'),
(1365, 1, 'E4MSUPW13-Multi Socket', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '165.00'),
(1366, 1, 'E4CBSRPW16.1-Calling Bell', '', 144, '64.00', '95.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '71.25'),
(1367, 1, 'E4TSPW3-Telephone Socket', '', 144, '80.00', '120.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '90.00'),
(1368, 1, 'E4TVSPW-TV Socket', '', 144, '80.00', '120.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '90.00'),
(1369, 1, 'E4DSPW5-Data Socket', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '135.00'),
(1370, 1, 'E4FRPW250-Fan Regulator', '', 144, '255.00', '380.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '285.00'),
(1371, 1, 'E4LDPW250-Light Dimmer Switch', '', 144, '241.00', '360.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '270.00'),
(1372, 1, 'E41GSRPW16.2-1Gang-2Way  Switch', '', 144, '60.00', '90.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '67.50'),
(1373, 1, 'E42GSRPW16.2-2Gang-2Way  Switch', '', 144, '107.00', '160.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '120.00'),
(1374, 1, 'E43GSRPW10.2-3Gang-2Way  Switch', '', 144, '147.00', '220.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '165.00'),
(1375, 1, 'E44GSRPW10.2-4Gang-2Way  Switch', '', 144, '181.00', '270.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '202.50'),
(1376, 1, 'E4BPPW-Blank Plate', '', 144, '30.00', '45.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '33.75'),
(1377, 1, 'E42PSSPW10- 2Pin Socket with switch', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '135.00'),
(1378, 1, 'E4USB3PSU13-2USB Charger with 3Pin S', '', 144, '422.00', '630.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '472.50'),
(1379, 1, 'E4USBSPW16-2USB Charger with Switch', '', 144, '402.00', '600.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '450.00'),
(1380, 1, 'E4MSSPWP.01 Motion Sensor (PIR)', '', 144, '570.00', '850.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '637.50'),
(1381, 1, 'E4MSSPWM.01 Motion Sensor (MW)', '', 144, '533.00', '795.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '596.25'),
(1382, 1, 'E4CBSR16.1-Calling Bell Switch', '', 144, '74.00', '110.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '82.50'),
(1383, 1, 'E41GSR16.1-1Gang Switch', '', 144, '54.00', '80.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '60.00'),
(1384, 1, 'E42PS10-2 Pin Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '105.00'),
(1385, 1, 'E42GSR16.1-2Gang Switch', '', 144, '101.00', '150.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '112.50'),
(1386, 1, 'E43GSR10.1-3Gang Switch', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '142.50'),
(1387, 1, 'E44GSR10.1-4Gang Switch', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '180.00'),
(1388, 1, 'E41GSR16.2-1Gang-2way  Switch', '', 144, '70.00', '105.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '78.75'),
(1389, 1, 'E42GSR16.2-2Gang-2way  Switch', '', 144, '121.00', '180.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '135.00'),
(1390, 1, 'E43GSR10.2-3Gang-2way  Switch', '', 144, '161.00', '240.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '180.00'),
(1391, 1, 'E44GSR10.2-4Gang-2way  Switch', '', 144, '198.00', '295.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '221.25'),
(1392, 1, 'E43PU13-3Pin Socket', '', 144, '107.00', '160.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '120.00'),
(1393, 1, 'E43PUS13-3Pin Socket & Switch', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '157.50'),
(1394, 1, 'E4MSU13-Multi Socket', '', 144, '154.00', '230.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '172.50'),
(1395, 1, 'E4TS3-Telephone Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '105.00'),
(1396, 1, 'E4TVS-TV Socket', '', 144, '94.00', '140.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '105.00'),
(1397, 1, 'E4DS5-Data Socket', '', 144, '141.00', '210.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '157.50'),
(1398, 1, 'E4FR250-Fan Regulator', '', 144, '168.00', '400.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '300.00'),
(1399, 1, 'E4LD250-Light Dimmer Switch', '', 144, '261.00', '390.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '292.50'),
(1400, 1, 'E4BP-Blank Plate', '', 144, '34.00', '50.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '37.50'),
(1401, 1, 'E42PSS10-2 Pin Socket with switch (PW)', '', 144, '127.00', '190.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '1.00', 'Finished Products', '', 1, 1, '1', '', '38.50');
INSERT INTO `mp_productslist` (`id`, `category_id`, `product_name`, `mg`, `quantity`, `purchase`, `retail`, `expire`, `manufacturing`, `sideeffects`, `description`, `barcode`, `min_stock`, `status`, `total_units`, `packsize`, `sku`, `location`, `tax`, `type`, `image`, `brand_id`, `brand_sector_id`, `unit_type`, `net_weight`, `whole_sale`) VALUES
(1402, 2, 'Rod', '20', 379, '70.00', '80.00', '0000-00-00', '0000-00-00', '', '                                tfygv', '54652', 10, 0, 20, '20', '1478', 'zx', '0.00', 'Raw Product', 'default.jpg', 4, 5, '1', '400', '1600.00'),
(1403, 1, 'MSD55FD (55\")', '', 0, '58017.00', '69900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '62910.00'),
(1404, 1, 'MSD49FD (49\")', '', 0, '49717.00', '59900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '53910.00'),
(1405, 1, 'MD4-TS43-DL200-(43\'\')-SMART', '', 0, '38927.00', '46900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '42210.00'),
(1406, 1, 'MD1-TS43-FV100  (43\")', '', 0, '34777.00', '41900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '37710.00'),
(1407, 1, 'MD437TS25  (43\")', '', 0, '34777.00', '41900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '37710.00'),
(1408, 1, 'M42T3500 (42\'\')', '', 0, '55195.00', '66500.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '59850.00'),
(1409, 1, 'MC42D12 (42\'\') - (Non Warranty)', '', 0, '22369.00', '26950.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '24255.00'),
(1410, 1, 'M40E3000-FHD (40\")', '', 0, '33117.00', '39900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '35910.00'),
(1411, 1, 'M40E36D (40\")', '', 0, '33117.00', '39900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '35910.00'),
(1412, 1, 'ME396AFH (39\")', '', 4, '28212.00', '33990.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '30591.00'),
(1413, 1, 'ME326DH-S-(32\")-SMART', '', 0, '21572.00', '25990.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '23391.00'),
(1414, 1, 'ME4-DH32-BY200-(32\")-SMART', '', 0, '21572.00', '25990.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '23391.00'),
(1415, 1, 'ME326AH (32\")', '', 0, '18094.00', '21800.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '19620.00'),
(1416, 1, 'ME326AH-Silver (32\")', '', 0, '18094.00', '21800.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '19620.00'),
(1417, 1, 'MD326SR (32\")', '', 0, '17422.00', '20990.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '18891.00'),
(1418, 1, 'MD326SR-Silver (32\")', '', 0, '17422.00', '20990.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '18891.00'),
(1419, 1, 'MD326JX (32\")', '', 50, '17264.00', '20800.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '18720.00'),
(1420, 1, 'MD326JX-Silver (32\")', '', 0, '17264.00', '20800.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '18720.00'),
(1421, 1, 'MT32D27 (32\'\')', '', 0, '17264.00', '20800.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '18720.00'),
(1422, 1, 'M32E3000 (32\'\')', '', 0, '17264.00', '20800.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '18720.00'),
(1423, 1, 'MD1-EF32-SV100 (32\'\')', '', 0, '16592.00', '19990.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '17991.00'),
(1424, 1, 'MD286CD-Silver (28\")', '', 0, '15936.00', '19200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '17280.00'),
(1425, 1, 'MD286CD  (28\")', '', 0, '15687.00', '18900.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '17010.00'),
(1426, 1, 'MD285AH-Silver (28\")', '', 0, '15521.00', '18700.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '16830.00'),
(1427, 1, 'MD285AH (28\")', '', 11, '15272.00', '18400.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '16560.00'),
(1428, 1, 'MDF-DT24-AU200-(24\'\')Full HD', '', 0, '12616.00', '15200.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '13680.00'),
(1429, 1, 'MCT24O4K (24\")', '', 13, '12442.00', '14990.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '13491.00'),
(1430, 1, 'MCT24O4K-Silver (24\")', '', 0, '12442.00', '14990.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '13491.00'),
(1431, 1, 'MD1-DT24-MC100 (24\")', '', 0, '12284.00', '14800.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '13320.00'),
(1432, 1, 'MD1-DT24-MC100-Silver (24\")', '', 0, '12284.00', '14800.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '13320.00'),
(1433, 1, 'MD1-DT24-RL100 (24\")', '', 0, '12035.00', '14500.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '13050.00'),
(1434, 1, 'MD1-DT24-RL100-Silver (24\")', '', 0, '12035.00', '14500.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '13050.00'),
(1435, 1, 'MCT24O4X (24\")', '', 0, '12035.00', '14500.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '13050.00'),
(1436, 1, 'MCT24O4C (24\")', '', 0, '12035.00', '14500.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '13050.00'),
(1437, 1, 'MCT24O4 (24\")', '', 0, '12035.00', '14500.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '13050.00'),
(1438, 1, 'MCT24O4-Silver (24\")', '', 0, '12035.00', '14500.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '13050.00'),
(1439, 1, 'MCT24DF6 (24\")', '', 0, '12035.00', '14500.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '13050.00'),
(1440, 1, 'MCT24DF6-Silver (24\")', '', 0, '12035.00', '14500.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '13050.00'),
(1441, 1, 'MSE20BX6 (20\')', '', 0, '10334.00', '12450.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '11205.00'),
(1442, 1, 'MSE20BX6-Silver (20\'\')', '', 0, '10583.00', '12750.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '11475.00'),
(1443, 1, 'WJ4-SB-55SV100(55\"4K)Smart', 'Pice', 10, '101200.00', '115000.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '123456', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '115000.00'),
(1444, 1, 'WUD55MF56(55\"4K)Smart', 'Pice', 10, '96800.00', '11000.00', '0000-00-00', '0000-00-00', 'No Effects', 'here', '1234567', 10, 0, 0, '1', '', 'Ware House', '0.00', 'Finished Products', '', 1, 1, '1', '', '11000.00'),
(1446, 4, 'PVC ID Card Print with Card Holder T-738V', '0', 277, '35.00', '100.00', '0000-00-00', '2018-07-05', '', '                                ', '', 1000, 0, 0, '', '', '', '0.00', 'Finished Products', 'default.jpg', 1, 6, '- kilogram', '', '0.00'),
(1447, 3, 'ID Card Holder Water-proof Anti-fold (T-738V)', '-1', 300, '18.00', '30.00', '0000-00-00', '2018-07-05', '', '                                ', '', 1000, 0, 0, '', '', '', '0.00', 'Finished Products', 'default.jpg', 5, 6, '- mimiter', '', '23.00'),
(1448, 1, 'T-shart', '250', 0, '150.00', '200.00', '2019-02-06', '2019-02-20', '654', '   This is a description                ', '32145', 20, 0, 0, '', '1254', '', '0.00', 'Raw Product', 'default.jpg', 2, 2, '- kilogram', '797', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `mp_purchase`
--

CREATE TABLE `mp_purchase` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET latin1 NOT NULL,
  `total_amount` decimal(11,2) NOT NULL,
  `payment_type_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `payment_date` date NOT NULL,
  `cash` decimal(11,2) NOT NULL,
  `cus_picture` decimal(11,2) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_purchase`
--

INSERT INTO `mp_purchase` (`id`, `transaction_id`, `date`, `supplier_id`, `store`, `invoice_id`, `description`, `total_amount`, `payment_type_id`, `payment_date`, `cash`, `cus_picture`, `status`) VALUES
(1, 110, '2018-06-18', 4, 1, 123456, 'fgdsf', '400000.00', 'Cheque', '2018-06-19', '0.00', '0.00', 0),
(2, 111, '2018-06-18', 4, 1, 123456, 'sdasd', '35000.00', 'Cheque', '2018-06-19', '35000.00', '0.00', 1),
(3, 112, '2018-06-18', 4, 1, 123456, 'sdasd', '35000.00', 'Cheque', '2018-06-19', '35000.00', '0.00', 1),
(4, 134, '2018-07-04', 4, 1, 185, '', '5000.00', 'Cash', '2018-07-04', '2500.00', '0.00', 0),
(5, 163, '2018-07-09', 9, 1, 1852, 'Mr. Emram Mahmud', '15000.00', 'Cash', '2018-07-08', '10000.00', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mp_region`
--

CREATE TABLE `mp_region` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_region`
--

INSERT INTO `mp_region` (`id`, `name`, `code`) VALUES
(1, 'Tangail', '1001');

-- --------------------------------------------------------

--
-- Table structure for table `mp_return`
--

CREATE TABLE `mp_return` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `cus_id` int(11) NOT NULL,
  `agent` varchar(255) CHARACTER SET latin1 NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `return_amount` decimal(11,2) NOT NULL,
  `total_bill` decimal(11,2) NOT NULL,
  `discount_given` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_return`
--

INSERT INTO `mp_return` (`id`, `transaction_id`, `date`, `cus_id`, `agent`, `invoice_id`, `return_amount`, `total_bill`, `discount_given`) VALUES
(1, 55, '2018-06-02', 1, 'Jannat Group', 50, '190.00', '190.00', '0.00'),
(2, 109, '2018-06-18', 1, 'Md. Habibur Rahman', 12345, '250.00', '250.00', '0.00'),
(3, 125, '2018-06-25', 1, 'Md. Habibur Rahman', 88, '25.00', '25.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `mp_return_list`
--

CREATE TABLE `mp_return_list` (
  `id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `barcode` varchar(255) CHARACTER SET latin1 NOT NULL,
  `product_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `mg` varchar(255) CHARACTER SET latin1 NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `tax` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_return_list`
--

INSERT INTO `mp_return_list` (`id`, `return_id`, `barcode`, `product_no`, `product_id`, `product_name`, `mg`, `price`, `purchase`, `qty`, `tax`) VALUES
(1, 1, '', '', 177, 'A83GSRPW10.1-3Gang Switch', '', '190.00', '127.00', 1, '0.00'),
(2, 2, '', '', 181, 'A8MSUPW13-Multi Socket', '', '250.00', '168.00', 1, '0.00'),
(3, 3, '', '', 181, 'Molla Salt', '1000', '25.00', '20.00', 1, '0.00'),
(4, 3, '', '', 176, 'Cricket Ball', '1500', '25.00', '16.00', 1, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `mp_sales`
--

CREATE TABLE `mp_sales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `mg` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `tax` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_sales`
--

INSERT INTO `mp_sales` (`id`, `product_id`, `product_no`, `order_id`, `product_name`, `mg`, `price`, `purchase`, `qty`, `tax`) VALUES
(8, 175, '', 3, 'A81GSRPW16.1-1Gang Switch', 0, '867.00', '57.00', 12, '0.00'),
(9, 175, '', 3, 'A81GSRPW16.1-1Gang Switch', 0, '85.00', '57.00', 1, '0.00'),
(10, 175, '', 4, 'A81GSRPW16.1-1Gang Switch', 0, '36.13', '57.00', 24, '0.00'),
(11, 175, '', 5, 'A81GSRPW16.1-1Gang Switch', 0, '36.13', '57.00', 24, '0.00'),
(12, 175, '', 6, 'A81GSRPW16.1-1Gang Switch', 0, '72.25', '57.00', 12, '0.00'),
(13, 175, '', 7, 'A81GSRPW16.1-1Gang Switch', 0, '85.00', '57.00', 1, '0.00'),
(14, 175, '', 7, 'A81GSRPW16.1-1Gang Switch', 0, '72.25', '57.00', 12, '0.00'),
(15, 178, '', 8, 'A84GSRPW10.1-4Gang Switch', 0, '240.00', '161.00', 1, '0.00'),
(16, 176, '', 8, 'A82GSRPW16.1-2Gang Switch', 0, '127.50', '101.00', 12, '0.00'),
(17, 175, '', 9, 'A81GSRPW16.1-1Gang Switch', 0, '85.00', '57.00', 1, '0.00'),
(18, 175, '', 9, 'A81GSRPW16.1-1Gang Switch', 0, '867.00', '57.00', 12, '0.00'),
(19, 176, '', 10, 'A82GSRPW16.1-2Gang Switch', 0, '150.00', '101.00', 5, '0.00'),
(20, 262, '', 10, 'WLED-F3WE27 / R3WE27', 0, '165.00', '111.00', 20, '0.00'),
(21, 176, '', 11, 'A82GSRPW16.1-2Gang Switch', 0, '127.50', '101.00', 12, '0.00'),
(22, 176, '', 12, 'A82GSRPW16.1-2Gang Switch', 0, '127.50', '101.00', 12, '0.00'),
(23, 176, '', 13, 'A82GSRPW16.1-2Gang Switch', 0, '63.75', '101.00', 24, '0.00'),
(24, 175, '', 14, 'A81GSRPW16.1-1Gang Switch', 0, '36.13', '57.00', 24, '0.00'),
(25, 175, '', 15, 'A81GSRPW16.1-1Gang Switch', 0, '72.25', '57.00', 12, '0.00'),
(26, 177, '', 16, 'A83GSRPW10.1-3Gang Switch', 0, '80.75', '127.00', 24, '0.00'),
(27, 177, '', 17, 'A83GSRPW10.1-3Gang Switch', 0, '161.50', '127.00', 12, '0.00'),
(30, 180, '', 20, 'A83PUSPW13-3Pin Socket & Switch', 0, '187.00', '147.00', 12, '0.00'),
(31, 177, '', 21, 'A83GSRPW10.1-3Gang Switch', 0, '80.75', '127.00', 24, '0.00'),
(32, 177, '', 22, 'A83GSRPW10.1-3Gang Switch', 0, '161.50', '127.00', 12, '0.00'),
(33, 177, '', 23, 'A83GSRPW10.1-3Gang Switch', 0, '190.00', '127.00', 1, '0.00'),
(34, 542, '', 24, 'WE4-DH32-BX200(32\"Smart)Silver', 0, '0.00', '22.00', 1, '0.00'),
(35, 620, '', 24, 'WSN-24K-0101-SCWWB', 0, '56.00', '50.00', 1, '0.00'),
(36, 620, '', 25, 'WSN-24K-0101-SCWWB', 0, '28.00', '50.00', 2, '0.00'),
(37, 622, '', 26, 'Zoom-1200', 0, '16.00', '14.00', 2, '0.00'),
(38, 622, '', 27, 'Zoom-1200', 0, '0.00', '14.00', 0, '0.00'),
(39, 1088, '', 28, 'Zoom-1200', 0, '16.00', '14.00', 1, '0.00'),
(40, 622, '', 29, 'Zoom-1200', 0, '16.00', '14.00', 2, '0.00'),
(41, 1088, '', 30, 'Zoom-1200', 0, '8.00', '14.00', 2, '0.00'),
(42, 625, '', 31, 'Excel-2200-DM', 0, '0.00', '19.00', 0, '0.00'),
(43, 1091, '', 31, 'Excel-2200-DM', 0, '11.00', '19.00', 2, '0.00'),
(44, 1103, '', 32, 'Power Carft-8000E', 0, '5800.00', '51.00', 2, '696.00'),
(45, 521, '', 33, 'WJ4-SB-55SV100(55\"4K)Smart', 0, '115.00', '101.00', 1, '0.00'),
(46, 178, '', 34, 'A84GSRPW10.1-4Gang Switch', 0, '240.00', '161.00', 10, '0.00'),
(47, 1102, '', 34, 'Power Craft-8000E (7.5 KE)', 0, '54.00', '47.00', 3, '5.94'),
(48, 179, '', 35, 'A83PUPW13-3Pin Socket', 0, '180.00', '121.00', 10, '0.00'),
(49, 184, '', 36, 'A8DSPW5-Date Socket', 0, '85.00', '134.00', 24, '0.00'),
(50, 178, '', 37, 'A84GSRPW10.1-4Gang Switch', 0, '2448.00', '161.00', 36, '0.00'),
(51, 1208, '', 38, 'WUD55MF56(55\"4K)Smart', 0, '11000.00', '96800.00', 1, '0.00'),
(52, 1218, '', 39, 'WSN-18K-0102-FTXXA', 0, '45900.00', '40392.00', 2, '0.00'),
(53, 1218, '', 40, 'WSN-18K-0102-FTXXA', 0, '45900.00', '40392.00', 2, '0.00'),
(54, 1218, '', 41, 'WSN-18K-0102-FTXXA', 0, '45900.00', '40392.00', 5, '0.00'),
(55, 1218, '', 42, 'WSN-18K-0102-FTXXA', 0, '45900.00', '40392.00', 2, '0.00'),
(56, 178, '', 43, 'A84GSRPW10.1-4Gang Switch', 0, '204.00', '161.00', 24, '0.00'),
(57, 175, '', 44, 'A81GSRPW16.1-1Gang Switch', 0, '85.00', '57.00', 2, '0.00'),
(58, 177, '', 44, 'A83GSRPW10.1-3Gang Switch', 0, '190.00', '127.00', 1, '0.00'),
(59, 1226, '', 45, 'WJ4-SB-55SV100(55\"4K)Smart', 0, '115000.00', '101200.00', 2, '0.00'),
(60, 1227, '', 45, 'WUD55MF56(55\"4K)Smart', 0, '11000.00', '96800.00', 2, '0.00'),
(61, 184, '', 46, 'A8DSPW5-Date Socket', 0, '2040.00', '134.00', 12, '0.00'),
(62, 1226, '', 47, 'WJ4-SB-55SV100(55\"4K)Smart', 0, '115000.00', '101200.00', 1, '0.00'),
(63, 1226, '', 48, 'WJ4-SB-55SV100(55\"4K)Smart', 0, '115000.00', '101200.00', 1, '0.00'),
(64, 177, '', 49, 'A83GSRPW10.1-3Gang Switch', 0, '161.50', '127.00', 12, '0.00'),
(65, 179, '', 49, 'A83PUPW13-3Pin Socket', 0, '153.00', '121.00', 12, '0.00'),
(66, 177, '', 50, 'A83GSRPW10.1-3Gang Switch', 0, '190.00', '127.00', 2, '0.00'),
(67, 178, '', 51, 'A84GSRPW10.1-4Gang Switch', 0, '204.00', '161.00', 12, '0.00'),
(71, 178, '', 55, 'A84GSRPW10.1-4Gang Switch', 0, '2448.00', '161.00', 12, '0.00'),
(72, 1226, '', 55, 'WJ4-SB-55SV100(55\"4K)Smart', 0, '115000.00', '101200.00', 2, '0.00'),
(73, 1226, '', 56, 'WJ4-SB-55SV100(55\"4K)Smart', 0, '115000.00', '101200.00', 1, '0.00'),
(74, 1226, '', 57, 'WJ4-SB-55SV100(55\"4K)Smart', 0, '115000.00', '101200.00', 1, '0.00'),
(75, 176, '', 58, 'A82GSRPW16.1-2Gang Switch', 0, '150.00', '101.00', 1, '0.00'),
(76, 177, '', 59, 'A83GSRPW10.1-3Gang Switch', 0, '161.50', '127.00', 60, '0.00'),
(78, 179, '', 61, 'A83PUPW13-3Pin Socket', 0, '153.00', '121.00', 60, '0.00'),
(79, 180, '', 61, 'A83PUSPW13-3Pin Socket & Switch', 0, '187.00', '147.00', 12, '0.00'),
(80, 188, '', 62, 'A82GSRPW16.2-2Gang-2Way Switch', 0, '153.00', '121.00', 60, '0.00'),
(81, 179, '', 63, 'A83PUPW13-3Pin Socket', 0, '180.00', '121.00', 1, '0.00'),
(82, 179, '', 64, 'A83PUPW13-3Pin Socket', 0, '153.00', '121.00', 12, '0.00'),
(83, 175, '', 65, 'A81GSRPW16.1-1Gang Switch', 0, '85.00', '57.00', 1, '0.00'),
(84, 219, '', 65, 'E43GSRPW10.1-3Gang Switch', 0, '170.00', '114.00', 1, '0.00'),
(85, 178, '', 66, 'A84GSRPW10.1-4Gang Switch', 0, '240.00', '161.00', 1, '0.00'),
(86, 178, '', 67, 'A84GSRPW10.1-4Gang Switch', 0, '240.00', '161.00', 5, '0.00'),
(87, 1402, '1478', 68, 'Rod', 20, '80.00', '70.00', 1, '0.00'),
(88, 1402, '1478', 69, 'Rod', 20, '80.00', '70.00', 20, '0.00'),
(89, 179, '', 70, 'A83PUPW13-3Pin Socket', 0, '180.00', '121.00', 10, '0.00'),
(90, 179, '', 71, 'A83PUPW13-3Pin Socket', 0, '153.00', '121.00', 12, '0.00'),
(91, 179, '', 72, 'A83PUPW13-3Pin Socket', 0, '153.00', '121.00', 12, '0.00'),
(92, 179, '', 73, 'A83PUPW13-3Pin Socket', 0, '180.00', '121.00', 1, '0.00'),
(93, 179, '', 74, 'A83PUPW13-3Pin Socket', 0, '153.00', '121.00', 12, '0.00'),
(94, 175, '', 75, 'A81GSRPW16.1-1Gang Switch', 0, '85.00', '57.00', 1, '0.00'),
(95, 175, '', 76, 'A81GSRPW16.1-1Gang Switch', 0, '85.00', '57.00', 2, '0.00'),
(99, 180, '', 79, 'A83PUSPW13-3Pin Socket & Switch', 0, '187.00', '147.00', 120, '0.00'),
(100, 178, '', 79, 'A84GSRPW10.1-4Gang Switch', 0, '0.00', '161.00', 1, '0.00'),
(101, 182, '', 80, 'A8TSPW3-Telephone Socket', 0, '127.50', '101.00', 12, '0.00'),
(102, 178, '', 81, 'A84GSRPW10.1-4Gang Switch', 0, '204.00', '161.00', 12, '0.00'),
(103, 178, '', 82, 'A84GSRPW10.1-4Gang Switch', 0, '204.00', '161.00', 12, '0.00'),
(104, 175, '', 83, 'A81GSRPW16.1-1Gang Switch', 0, '85.00', '57.00', 3, '0.00'),
(105, 178, '', 84, 'A84GSRPW10.1-4Gang Switch', 0, '2448.00', '161.00', 12, '0.00'),
(106, 181, '', 84, 'Molla Salt', 1000, '25.00', '20.00', 1, '0.00'),
(107, 182, '', 85, 'Molla Salt', 500, '13.00', '10.00', 1, '0.00'),
(108, 187, '', 86, 'A82PSPW10-2 Pin Socket', 0, '105.00', '70.00', 1, '0.00'),
(109, 175, '', 86, 'Chair-RFL', 2000, '450.00', '300.00', 2, '0.00'),
(110, 181, '', 87, 'Molla Salt', 1000, '22.00', '20.00', 1, '0.00'),
(111, 176, '', 88, 'Cricket Ball', 1500, '25.00', '16.00', 1, '0.00'),
(112, 676, '', 89, 'A8TVS-TV Socket', 0, '1530.00', '101.00', 12, '0.00'),
(113, 175, '', 90, 'Chair-RFL', 2000, '450.00', '300.00', 1, '0.00'),
(114, 174, 'Sku', 91, '1 CM Ribbon With Dog Hook China Fitting', 0, '7.15', '5.50', 100, '0.00'),
(115, 182, '', 91, 'ID Card Soft Cover (T-014V) N.', 0, '8.00', '5.00', 100, '0.00'),
(116, 177, '', 92, '1.5 CM Ribbon With Small Hook Sewing Fitting', 0, '11.70', '6.50', 100, '0.00'),
(117, 183, '', 92, 'ID Card Soft Cover (T-065)', 0, '7.56', '6.30', 100, '0.00'),
(118, 179, '', 93, '2 CM Ribbon With Small Hook Sewing Fitting', 0, '11.50', '10.00', 100, '0.00'),
(119, 179, '', 94, '2 CM Ribbon With Small Hook Sewing Fitting', 0, '11.50', '10.00', 100, '0.00'),
(120, 1262, '', 95, 'A8MSU13-Multi Socket', 0, '200.00', '174.00', 1, '0.00'),
(121, 198, '', 96, 'T-Table-RFL', 0, '0.00', '114.00', 1, '0.00'),
(122, 179, '1', 96, '2 CM Ribbon With Small Hook Sewing Fitting', 0, '100.00', '10.00', 1, '1.32'),
(123, 1285, '', 96, 'E41GSRPW16.2-1Gang-2Way  Switch', 0, '100.50', '60.00', 1, '0.00'),
(124, 184, '1', 97, 'ID Card Soft Cover (T-014) 1no.', 0, '12.00', '10.00', 1, '1.32'),
(125, 661, '', 98, 'A8USB3PSU13-2USB Charger & 3Pin Scoket', 0, '630.00', '422.00', 1, '0.00'),
(126, 177, '1', 99, '1.5 CM Ribbon With Small Hook Sewing Fitting', 0, '10.00', '6.50', 100, '0.85'),
(127, 184, '1', 99, 'ID Card Soft Cover (T-014) 1no.', 0, '12.00', '10.00', 100, '1.32'),
(128, 1445, '', 100, 'PVC ID Card Print with  Card Holder T-738V', 0, '100.00', '35.00', 1, '0.00'),
(129, 1446, '', 100, 'PVC ID Card Print with Card Holder T-738V', 0, '100.00', '35.00', 23, '0.00'),
(130, 646, '', 101, 'A83PUSPW13-3Pin Socket & Switch', 0, '2244.00', '147.00', 9, '0.00'),
(131, 666, '', 101, 'A84GSR10.1-4Gang Switch', 0, '255.00', '171.00', 1, '0.00'),
(132, 195, '', 102, 'A8USB3PSU13-2USB Charger &amp;amp;amp; 3Pin Scoket', 10, '630.00', '422.00', 100, '0.00'),
(133, 194, '1', 102, 'ID Card Zipper Cover (C)', 0, '5.00', '3.30', 100, '0.20'),
(134, 185, '1', 103, '3R Soft ID Card Holder (T-067V)', 0, '350.00', '17.00', 20, '5.00'),
(135, 1446, '', 103, 'PVC ID Card Print with Card Holder T-738V', 0, '100.00', '35.00', 200, '0.00'),
(136, 174, '1', 103, '1 CM Ribbon With Dog Hook China Fitting', 0, '7.00', '5.50', 200, '0.42'),
(137, 182, '1', 103, 'ID Card Soft Cover (T-014V) N.', 0, '7.00', '5.00', 200, '0.42'),
(138, 192, '1', 103, '3R Zipper Cover (C)', 0, '9.00', '7.50', 200, '0.76'),
(139, 196, '', 104, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(140, 196, '', 105, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(141, 196, '', 106, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(142, 196, '', 107, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 10, '0.00'),
(143, 196, '', 108, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(144, 196, '', 109, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(145, 196, '', 110, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(146, 196, '', 111, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(147, 196, '', 112, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(148, 196, '', 113, 'A8CBSR16.1-Calling Bell Switch', 120, '0.00', '84.00', 1, '0.00'),
(149, 179, '1', 113, '2 CM Ribbon With Small Hook Sewing Fitting', 0, '0.00', '10.00', 1, '1.32'),
(150, 196, '', 114, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(151, 196, '', 115, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(152, 197, '', 116, 'A81GSR16.1-1Gang Switch', 2, '95.00', '64.00', 1, '0.00'),
(153, 197, '', 117, 'A81GSR16.1-1Gang Switch', 2, '95.00', '64.00', 10, '0.00'),
(154, 197, '', 118, 'A81GSR16.1-1Gang Switch', 2, '95.00', '64.00', 1, '0.00'),
(155, 197, '', 119, 'A81GSR16.1-1Gang Switch', 2, '95.00', '64.00', 1, '0.00'),
(156, 196, '', 120, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(157, 196, '', 121, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(158, 197, '', 122, 'A81GSR16.1-1Gang Switch', 2, '95.00', '64.00', 1, '0.00'),
(159, 196, '', 123, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(160, 197, '', 124, 'A81GSR16.1-1Gang Switch', 2, '95.00', '64.00', 1, '0.00'),
(161, 196, '', 125, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(162, 197, '', 126, 'A81GSR16.1-1Gang Switch', 2, '95.00', '64.00', 1, '0.00'),
(163, 196, '', 127, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(164, 197, '', 128, 'A81GSR16.1-1Gang Switch', 2, '95.00', '64.00', 1, '0.00'),
(165, 196, '', 129, 'A8CBSR16.1-Calling Bell Switch', 120, '125.00', '84.00', 1, '0.00'),
(166, 197, '', 130, 'A81GSR16.1-1Gang Switch', 2, '95.00', '64.00', 1, '0.00'),
(167, 179, '1', 131, '2 CM Ribbon With Small Hook Sewing Fitting', 0, '12.00', '10.00', 1, '1.32'),
(168, 174, '1', 132, '1 CM Ribbon With Dog Hook China Fitting', 0, '7.00', '5.50', 1, '0.42'),
(169, 524, '', 133, 'WSD55FD(55\")', 0, '69.00', '61.00', 1, '0.00'),
(170, 174, '1', 134, '1 CM Ribbon With Dog Hook China Fitting', 0, '7.00', '5.50', 2, '0.42'),
(171, 177, '1', 135, '1.5 CM Ribbon With Small Hook Sewing Fitting', 0, '10.00', '6.50', 1, '0.85'),
(172, 183, '1', 135, 'ID Card Soft Cover (T-065)', 0, '8.00', '6.30', 1, '0.58'),
(173, 429, '', 135, 'SVDSRMB16.1-Double Switch Module (1 way)', 0, '89.00', '60.00', 1, '0.00'),
(174, 396, '', 136, 'W1DSMB6 / W1DSC6-Data Socket', 0, '157.50', '141.00', 3, '0.00'),
(175, 174, '1', 137, '1 CM Ribbon With Dog Hook China Fitting', 0, '7.00', '5.50', 2, '0.42'),
(176, 182, '1', 137, 'ID Card Soft Cover (T-014V) N.', 0, '7.00', '5.00', 1, '0.42'),
(177, 177, '1', 138, '1.5 CM Ribbon With Small Hook Sewing Fitting', 0, '0.00', '6.50', 1, '0.85'),
(178, 179, '1', 138, '2 CM Ribbon With Small Hook Sewing Fitting', 0, '0.00', '10.00', 1, '1.32');

-- --------------------------------------------------------

--
-- Table structure for table `mp_sessions`
--

CREATE TABLE `mp_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mp_sessions`
--

INSERT INTO `mp_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0na1hqd5ur8qf8840t7rca8pev5aktc1', '::1', 1551527701, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532373730313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('906eh909ejgoa59emka50r68phhec005', '::1', 1551528404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532383430343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('9p2re7av8timsrs4vcbrjbiureiv7499', '::1', 1551524920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532343932303b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('a423mea37ednurb1aunk7atletet8a47', '::1', 1551527371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532373337313b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('bbvajiqopflnik5lfk8p53rgql51fhb9', '::1', 1551525606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532353630363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('dp0qglk5eiqluu35be7d7bahbvaln5er', '::1', 1551525273, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532353237333b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('eos5spajc07ofm5n6gdnat8d22f540ke', '::1', 1551528451, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313532383430343b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('str138tv1r918snktsu8pshb911c53k6', '::1', 1552104628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535323130343632383b),
('ta7altotse8k9h4pr4s3uhu528g4domr', '::1', 1553140767, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535333134303732363b757365725f69647c613a323a7b733a323a226964223b733a313a2231223b733a343a226e616d65223b733a31323a225375707065722041646d696e223b7d),
('u52gkche3b3cfu65jg6s0pvq736tdt50', '::1', 1551759824, 0x5f5f63695f6c6173745f726567656e65726174657c693a313535313735393832333b);

-- --------------------------------------------------------

--
-- Table structure for table `mp_stock`
--

CREATE TABLE `mp_stock` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `manufacturing` date NOT NULL,
  `expiry` date NOT NULL,
  `qty` int(11) NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `added` varchar(255) CHARACTER SET latin1 NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `selling` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_stock`
--

INSERT INTO `mp_stock` (`id`, `mid`, `manufacturing`, `expiry`, `qty`, `description`, `date`, `added`, `purchase`, `selling`) VALUES
(1, 0, '2018-07-05', '2020-01-01', 0, '', '2018-07-05', 'Md. Habibur Rahman', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `mp_stores`
--

CREATE TABLE `mp_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_stores`
--

INSERT INTO `mp_stores` (`id`, `name`, `code`, `address`) VALUES
(1, 'yeselectronics', '101', 'Boro Kalibari Mor Tangial');

-- --------------------------------------------------------

--
-- Table structure for table `mp_sub_entry`
--

CREATE TABLE `mp_sub_entry` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `accounthead` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_sub_entry`
--

INSERT INTO `mp_sub_entry` (`id`, `parent_id`, `accounthead`, `amount`, `type`) VALUES
(13, 7, 2, '85.00', 0),
(14, 7, 3, '85.00', 1),
(15, 8, 2, '1734.00', 0),
(16, 8, 3, '1734.00', 1),
(17, 9, 2, '1734.00', 0),
(18, 9, 3, '1734.00', 1),
(19, 10, 2, '867.00', 0),
(20, 10, 3, '867.00', 1),
(21, 11, 2, '867.00', 0),
(22, 11, 3, '867.00', 1),
(23, 12, 2, '1530.00', 0),
(24, 12, 3, '1530.00', 1),
(25, 13, 2, '85.00', 0),
(26, 13, 3, '85.00', 1),
(27, 14, 2, '4050.00', 0),
(28, 14, 3, '4050.00', 1),
(29, 15, 2, '1530.00', 0),
(30, 15, 3, '1530.00', 1),
(31, 16, 2, '1530.00', 0),
(32, 16, 3, '1530.00', 1),
(33, 17, 2, '3060.00', 0),
(34, 17, 3, '3060.00', 1),
(35, 18, 2, '1734.00', 0),
(36, 18, 3, '1734.00', 1),
(37, 19, 2, '867.00', 0),
(38, 19, 3, '867.00', 1),
(39, 20, 2, '3876.00', 0),
(40, 20, 3, '3876.00', 1),
(41, 21, 2, '1938.00', 0),
(42, 21, 3, '1938.00', 1),
(47, 24, 2, '2244.00', 0),
(48, 24, 3, '2244.00', 1),
(49, 25, 2, '3876.00', 0),
(50, 25, 3, '3876.00', 1),
(51, 26, 2, '1938.00', 0),
(52, 26, 3, '1938.00', 1),
(53, 27, 2, '190.00', 0),
(54, 27, 3, '190.00', 1),
(55, 28, 2, '56.00', 0),
(56, 28, 3, '56.00', 1),
(57, 29, 2, '112.00', 0),
(58, 29, 3, '112.00', 1),
(59, 30, 2, '32.00', 0),
(60, 30, 3, '32.00', 1),
(61, 31, 2, '32.00', 0),
(62, 31, 3, '32.00', 1),
(63, 32, 2, '16.00', 0),
(64, 32, 3, '16.00', 1),
(65, 33, 2, '32.00', 0),
(66, 33, 3, '32.00', 1),
(67, 34, 2, '32.00', 0),
(68, 34, 3, '32.00', 1),
(69, 35, 2, '88.00', 0),
(70, 35, 3, '88.00', 1),
(71, 36, 2, '12992.00', 0),
(72, 36, 3, '12992.00', 1),
(73, 37, 2, '115.00', 0),
(74, 37, 3, '115.00', 1),
(75, 38, 2, '2400.00', 0),
(76, 38, 3, '2400.00', 1),
(77, 39, 2, '1800.00', 0),
(78, 39, 3, '1800.00', 1),
(79, 40, 2, '4080.00', 0),
(80, 40, 3, '4080.00', 1),
(81, 41, 2, '7344.00', 0),
(82, 41, 3, '7344.00', 1),
(83, 42, 2, '11000.00', 0),
(84, 42, 3, '11000.00', 1),
(85, 43, 2, '91800.00', 0),
(86, 43, 3, '91800.00', 1),
(87, 44, 2, '91800.00', 0),
(88, 44, 3, '91800.00', 1),
(89, 45, 2, '229500.00', 0),
(90, 45, 3, '229500.00', 1),
(91, 46, 2, '91800.00', 0),
(92, 46, 3, '91800.00', 1),
(93, 47, 2, '4896.00', 0),
(94, 47, 3, '4896.00', 1),
(95, 48, 2, '360.00', 0),
(96, 48, 3, '360.00', 1),
(97, 49, 2, '252000.00', 0),
(98, 49, 3, '252000.00', 1),
(99, 50, 2, '0.00', 0),
(100, 50, 3, '0.00', 1),
(101, 51, 2, '115000.00', 0),
(102, 51, 3, '115000.00', 1),
(103, 52, 2, '115000.00', 0),
(104, 52, 3, '115000.00', 1),
(109, 53, 2, '3774.00', 0),
(110, 53, 3, '3774.00', 1),
(111, 54, 2, '380.00', 0),
(112, 54, 3, '380.00', 1),
(113, 55, 3, '190.00', 0),
(114, 55, 2, '190.00', 1),
(115, 56, 2, '2448.00', 0),
(116, 56, 3, '2448.00', 1),
(123, 60, 4, '230000.00', 0),
(124, 60, 3, '230000.00', 1),
(125, 61, 4, '115000.00', 0),
(126, 61, 3, '115000.00', 1),
(138, 62, 4, '115000.00', 0),
(139, 62, 3, '115000.00', 1),
(140, 63, 4, '150.00', 0),
(141, 63, 3, '150.00', 1),
(142, 64, 4, '9690.00', 0),
(143, 64, 3, '9690.00', 1),
(146, 66, 4, '11424.00', 0),
(147, 66, 3, '11424.00', 1),
(148, 67, 4, '9180.00', 0),
(149, 67, 3, '9180.00', 1),
(150, 68, 2, '100.00', 0),
(151, 68, 4, '100.00', 1),
(152, 69, 2, '500.00', 0),
(153, 69, 4, '500.00', 1),
(154, 70, 2, '180.00', 0),
(155, 70, 3, '180.00', 1),
(156, 71, 2, '1836.00', 0),
(157, 71, 3, '1836.00', 1),
(158, 72, 2, '255.00', 0),
(159, 72, 3, '255.00', 1),
(160, 73, 2, '240.00', 0),
(161, 73, 3, '240.00', 1),
(162, 74, 4, '1200.00', 0),
(163, 74, 3, '1200.00', 1),
(164, 75, 2, '500.00', 0),
(165, 75, 4, '500.00', 1),
(166, 76, 2, '80.00', 0),
(167, 76, 3, '80.00', 1),
(168, 77, 2, '1600.00', 0),
(169, 77, 3, '1600.00', 1),
(170, 78, 2, '1800.00', 0),
(171, 78, 3, '1800.00', 1),
(172, 79, 2, '500.00', 0),
(173, 79, 4, '1336.00', 0),
(174, 79, 3, '1836.00', 1),
(175, 80, 2, '500.00', 0),
(176, 80, 4, '1336.00', 0),
(177, 80, 3, '1836.00', 1),
(178, 81, 2, '1000.00', 0),
(179, 81, 4, '1000.00', 1),
(180, 82, 2, '180.00', 0),
(181, 82, 3, '180.00', 1),
(182, 83, 2, '500.00', 0),
(183, 83, 4, '1336.00', 0),
(184, 83, 3, '1836.00', 1),
(185, 84, 2, '1000.00', 0),
(186, 84, 4, '1000.00', 1),
(187, 85, 2, '85.00', 0),
(188, 85, 3, '85.00', 1),
(189, 86, 2, '170.00', 0),
(190, 86, 3, '170.00', 1),
(191, 87, 2, '100000.00', 0),
(192, 87, 4, '100000.00', 1),
(193, 88, 2, '1012.00', 0),
(194, 88, 4, '1012.00', 1),
(195, 89, 5, '250000.00', 0),
(196, 89, 2, '250000.00', 1),
(197, 90, 2, '350000.00', 0),
(198, 90, 4, '350000.00', 1),
(209, 96, 16, '22440.00', 0),
(210, 96, 3, '22440.00', 1),
(211, 97, 16, '22440.00', 0),
(212, 97, 4, '22440.00', 1),
(213, 99, 16, '1530.00', 0),
(214, 99, 3, '1530.00', 1),
(215, 100, 16, '1530.00', 0),
(216, 100, 4, '1530.00', 1),
(217, 101, 16, '200.00', 0),
(218, 101, 4, '200.00', 1),
(219, 102, 16, '200.00', 0),
(220, 102, 4, '200.00', 1),
(221, 103, 16, '200.00', 0),
(222, 103, 3, '200.00', 1),
(223, 105, 16, '250000.00', 0),
(224, 105, 16, '250000.00', 1),
(225, 106, 16, '2448.00', 0),
(226, 106, 3, '2448.00', 1),
(227, 107, 5, '50000.00', 0),
(228, 107, 16, '50000.00', 1),
(229, 109, 3, '250.00', 0),
(230, 109, 2, '250.00', 1),
(231, 110, 3, '400000.00', 0),
(232, 110, 16, '0.00', 1),
(233, 110, 5, '400000.00', 1),
(234, 111, 2, '35000.00', 0),
(235, 111, 3, '35000.00', 1),
(236, 112, 2, '35000.00', 0),
(237, 112, 3, '35000.00', 1),
(238, 114, 16, '2448.00', 0),
(239, 114, 3, '2448.00', 1),
(240, 115, 16, '500000.00', 0),
(241, 115, 3, '500000.00', 1),
(242, 116, 5, '10000.00', 0),
(243, 116, 16, '10000.00', 1),
(244, 117, 2, '255.00', 0),
(245, 117, 3, '255.00', 1),
(246, 118, 2, '1336.00', 0),
(247, 118, 4, '1336.00', 1),
(248, 120, 2, '25.00', 0),
(249, 120, 3, '25.00', 1),
(250, 121, 2, '13.00', 0),
(251, 121, 3, '13.00', 1),
(252, 122, 2, '500.00', 0),
(253, 122, 4, '485.00', 0),
(254, 122, 3, '985.00', 1),
(255, 123, 2, '22.00', 0),
(256, 123, 3, '22.00', 1),
(257, 124, 2, '25.00', 0),
(258, 124, 3, '25.00', 1),
(259, 125, 3, '25.00', 0),
(260, 125, 2, '25.00', 1),
(261, 126, 2, '0.00', 0),
(262, 126, 3, '0.00', 1),
(263, 127, 2, '450.00', 0),
(264, 127, 3, '450.00', 1),
(265, 128, 2, '1515.00', 0),
(266, 128, 3, '1515.00', 1),
(267, 129, 4, '1926.00', 0),
(268, 129, 3, '1926.00', 1),
(269, 130, 2, '1000.00', 0),
(270, 130, 4, '1000.00', 1),
(271, 131, 2, '500.00', 0),
(272, 131, 4, '600.00', 0),
(273, 131, 3, '1100.00', 1),
(274, 132, 2, '1000.00', 0),
(275, 132, 4, '1000.00', 1),
(279, 133, 2, '500.00', 0),
(280, 133, 4, '650.00', 0),
(281, 133, 3, '1150.00', 1),
(282, 134, 3, '5000.00', 0),
(283, 134, 2, '2500.00', 1),
(284, 134, 5, '2500.00', 1),
(295, 139, 6, '500.00', 0),
(296, 139, 2, '500.00', 1),
(299, 141, 2, '200.00', 0),
(300, 141, 3, '200.00', 1),
(301, 142, 2, '201.82', 0),
(302, 142, 3, '201.82', 1),
(303, 143, 2, '13.32', 0),
(304, 143, 3, '13.32', 1),
(305, 144, 2, '630.00', 0),
(306, 144, 3, '630.00', 1),
(307, 145, 2, '2417.00', 0),
(308, 145, 3, '2417.00', 1),
(309, 146, 2, '2300.00', 0),
(310, 146, 3, '2300.00', 1),
(313, 148, 2, '63320.00', 0),
(314, 148, 3, '63320.00', 1),
(315, 149, 4, '5000.00', 1),
(316, 150, 4, '2500.00', 1),
(317, 151, 4, '1500.00', 1),
(318, 152, 4, '1520.00', 0),
(319, 153, 1, '9500.00', 0),
(320, 153, 2, '2000.00', 1),
(321, 153, 5, '7500.00', 1),
(322, 154, 1, '9500.00', 0),
(323, 154, 2, '3500.00', 1),
(324, 154, 5, '6000.00', 1),
(328, 155, 2, '31701.60', 0),
(329, 155, 3, '31701.60', 1),
(330, 156, 2, '125.00', 0),
(331, 156, 3, '125.00', 1),
(332, 157, 2, '125.00', 0),
(333, 157, 3, '125.00', 1),
(334, 158, 2, '125.00', 0),
(335, 158, 3, '125.00', 1),
(336, 159, 2, '1250.00', 0),
(337, 159, 3, '1250.00', 1),
(338, 160, 2, '125.00', 0),
(339, 160, 3, '125.00', 1),
(340, 161, 2, '125.00', 0),
(341, 161, 3, '125.00', 1),
(342, 162, 2, '125.00', 0),
(343, 162, 3, '125.00', 1),
(344, 163, 3, '15000.00', 0),
(345, 163, 2, '10000.00', 1),
(346, 163, 5, '5000.00', 1),
(347, 164, 2, '125.00', 0),
(348, 164, 3, '125.00', 1),
(349, 165, 2, '125.00', 0),
(350, 165, 3, '125.00', 1),
(351, 166, 1, '50000.00', 0),
(352, 167, 2, '1.32', 0),
(353, 167, 3, '1.32', 1),
(354, 168, 2, '125.00', 0),
(355, 168, 3, '125.00', 1),
(356, 169, 2, '125.00', 0),
(357, 169, 3, '125.00', 1),
(358, 170, 2, '0.00', 0),
(359, 170, 3, '0.00', 1),
(360, 171, 2, '950.00', 0),
(361, 171, 3, '950.00', 1),
(362, 172, 2, '95.00', 0),
(363, 172, 3, '95.00', 1),
(364, 173, 2, '95.00', 0),
(365, 173, 3, '95.00', 1),
(366, 174, 2, '125.00', 0),
(367, 174, 3, '125.00', 1),
(368, 175, 2, '125.00', 0),
(369, 175, 3, '125.00', 1),
(370, 176, 2, '95.00', 0),
(371, 176, 3, '95.00', 1),
(372, 177, 2, '125.00', 0),
(373, 177, 3, '125.00', 1),
(374, 178, 2, '95.00', 0),
(375, 178, 3, '95.00', 1),
(376, 179, 2, '125.00', 0),
(377, 179, 3, '125.00', 1),
(378, 180, 2, '95.00', 0),
(379, 180, 3, '95.00', 1),
(380, 181, 2, '125.00', 0),
(381, 181, 3, '125.00', 1),
(382, 182, 2, '95.00', 0),
(383, 182, 3, '95.00', 1),
(384, 183, 2, '125.00', 0),
(385, 183, 3, '125.00', 1),
(386, 184, 2, '95.00', 0),
(387, 184, 3, '95.00', 1),
(388, 147, 2, '20431.00', 0),
(389, 147, 3, '20431.00', 1),
(390, 186, 2, '13.32', 0),
(391, 186, 3, '13.32', 1),
(392, 187, 2, '7.42', 0),
(393, 187, 3, '7.42', 1),
(394, 188, 2, '1200.00', 0),
(395, 188, 4, '1200.00', 1),
(396, 189, 2, '69.00', 0),
(397, 189, 3, '69.00', 1),
(398, 190, 2, '14.84', 0),
(399, 190, 3, '14.84', 1),
(400, 191, 2, '108.43', 0),
(401, 191, 3, '108.43', 1),
(402, 192, 2, '472.50', 0),
(403, 192, 3, '472.50', 1),
(404, 193, 2, '22.26', 0),
(405, 193, 3, '22.26', 1),
(406, 194, 2, '2.17', 0),
(407, 194, 3, '2.17', 1),
(408, 195, 2, '500.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mp_supplier_payments`
--

CREATE TABLE `mp_supplier_payments` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `method` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `agentname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `mode` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_supplier_payments`
--

INSERT INTO `mp_supplier_payments` (`id`, `transaction_id`, `supplier_id`, `amount`, `method`, `date`, `description`, `agentname`, `mode`) VALUES
(1, 89, 4, '250000.00', 'Cash', '2018-06-15', 'fvsdfv', 'Md. Habibur Rahman', 0),
(2, 90, 4, '350000.00', 'Cash', '2018-06-15', 'xcv', 'Md. Habibur Rahman', 1),
(3, 107, 4, '50000.00', 'Cheque', '2018-06-18', 'ftgrg', 'Md. Habibur Rahman', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mp_supply`
--

CREATE TABLE `mp_supply` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `region_id` int(11) NOT NULL,
  `town_id` int(11) NOT NULL,
  `expense` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mp_temp_barcoder_invoice`
--

CREATE TABLE `mp_temp_barcoder_invoice` (
  `id` int(11) NOT NULL,
  `barcode` varchar(255) CHARACTER SET latin1 NOT NULL,
  `product_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `mg` varchar(255) CHARACTER SET latin1 NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `purchase` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `tax` double(11,2) NOT NULL,
  `agentid` int(11) NOT NULL,
  `source` varchar(50) CHARACTER SET latin1 NOT NULL,
  `pack` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_temp_barcoder_invoice`
--

INSERT INTO `mp_temp_barcoder_invoice` (`id`, `barcode`, `product_no`, `product_id`, `product_name`, `mg`, `price`, `purchase`, `qty`, `tax`, `agentid`, `source`, `pack`) VALUES
(1, '0', '1', 174, '1 CM Ribbon With Dog Hook China Fitting', '', '7.00', '5.50', 1, 0.42, 1, 'return', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mp_todolist`
--

CREATE TABLE `mp_todolist` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `addedby` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mp_town`
--

CREATE TABLE `mp_town` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `region` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_town`
--

INSERT INTO `mp_town` (`id`, `name`, `region`) VALUES
(1, 'Tangai', '0');

-- --------------------------------------------------------

--
-- Table structure for table `mp_units`
--

CREATE TABLE `mp_units` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `symbol` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_units`
--

INSERT INTO `mp_units` (`id`, `name`, `symbol`) VALUES
(1, 'Package', '- kilogram'),
(2, 'Package', '- milliliter '),
(3, 'Package', '- mimiter'),
(4, 'Package', '- gram');

-- --------------------------------------------------------

--
-- Table structure for table `mp_users`
--

CREATE TABLE `mp_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `user_contact_1` varchar(50) CHARACTER SET latin1 NOT NULL,
  `user_contact_2` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cus_picture` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL,
  `user_description` varchar(100) CHARACTER SET latin1 NOT NULL,
  `user_password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_date` date NOT NULL,
  `agentname` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_users`
--

INSERT INTO `mp_users` (`id`, `user_name`, `user_email`, `user_address`, `user_contact_1`, `user_contact_2`, `cus_picture`, `status`, `user_description`, `user_password`, `user_date`, `agentname`) VALUES
(1, 'Supper Admin', 'admin@glossytruth.com', 'Anaytgonj Lane 82/3,4th Flore, Hazaribagh, Dhaka-1205', '01745519614', '01715932630', '86ed815b3c9225ba422bcdad8cb8e3d8.png', 0, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2017-08-23', 'Jannat Group'),
(2, 'Sub Admin', 'admin@gmail.com', 'dfgdsf', '5678686', '5686', 'default.jpg', 0, 'User', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2018-06-01', 'Md. Habibur Rahman');

-- --------------------------------------------------------

--
-- Table structure for table `mp_vehicle`
--

CREATE TABLE `mp_vehicle` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `number` varchar(255) CHARACTER SET latin1 NOT NULL,
  `vehicle_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `chase_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `engine_no` varchar(255) CHARACTER SET latin1 NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mp_vehicle`
--

INSERT INTO `mp_vehicle` (`id`, `name`, `number`, `vehicle_id`, `chase_no`, `engine_no`, `date`, `status`) VALUES
(1, 'PIkup', '101', '1123465', '123456', '1452', '2018-05-28', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mp_banks`
--
ALTER TABLE `mp_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_bank_opening`
--
ALTER TABLE `mp_bank_opening`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `mp_bank_transaction`
--
ALTER TABLE `mp_bank_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `bank_id` (`bank_id`),
  ADD KEY `payee_id` (`payee_id`);

--
-- Indexes for table `mp_barcode`
--
ALTER TABLE `mp_barcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_brand`
--
ALTER TABLE `mp_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_brand_sector`
--
ALTER TABLE `mp_brand_sector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_category`
--
ALTER TABLE `mp_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `mp_contactabout`
--
ALTER TABLE `mp_contactabout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_customer_payments`
--
ALTER TABLE `mp_customer_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `mp_drivers`
--
ALTER TABLE `mp_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_expense`
--
ALTER TABLE `mp_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `head_id` (`head_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payee_id` (`payee_id`);

--
-- Indexes for table `mp_generalentry`
--
ALTER TABLE `mp_generalentry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_head`
--
ALTER TABLE `mp_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_invoices`
--
ALTER TABLE `mp_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `prescription_id` (`prescription_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `mp_langingpage`
--
ALTER TABLE `mp_langingpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_menu`
--
ALTER TABLE `mp_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_menulist`
--
ALTER TABLE `mp_menulist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `mp_multipleroles`
--
ALTER TABLE `mp_multipleroles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `menu_Id` (`menu_Id`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `mp_payee`
--
ALTER TABLE `mp_payee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_printer`
--
ALTER TABLE `mp_printer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_productslist`
--
ALTER TABLE `mp_productslist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `brand_sector_id` (`brand_sector_id`),
  ADD KEY `unit_type` (`unit_type`);

--
-- Indexes for table `mp_purchase`
--
ALTER TABLE `mp_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `mp_region`
--
ALTER TABLE `mp_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_return`
--
ALTER TABLE `mp_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `cus_id` (`cus_id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `mp_return_list`
--
ALTER TABLE `mp_return_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`return_id`),
  ADD KEY `medicine_id` (`product_id`);

--
-- Indexes for table `mp_sales`
--
ALTER TABLE `mp_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `mp_sessions`
--
ALTER TABLE `mp_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `mp_stock`
--
ALTER TABLE `mp_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `mp_stores`
--
ALTER TABLE `mp_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_sub_entry`
--
ALTER TABLE `mp_sub_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`parent_id`),
  ADD KEY `accounthead` (`accounthead`),
  ADD KEY `amount` (`amount`);

--
-- Indexes for table `mp_supplier_payments`
--
ALTER TABLE `mp_supplier_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `mp_supply`
--
ALTER TABLE `mp_supply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `region_id` (`region_id`),
  ADD KEY `town_id` (`town_id`);

--
-- Indexes for table `mp_temp_barcoder_invoice`
--
ALTER TABLE `mp_temp_barcoder_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `agentid` (`agentid`);

--
-- Indexes for table `mp_todolist`
--
ALTER TABLE `mp_todolist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addedby` (`addedby`);

--
-- Indexes for table `mp_town`
--
ALTER TABLE `mp_town`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_units`
--
ALTER TABLE `mp_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `symbol` (`symbol`);

--
-- Indexes for table `mp_users`
--
ALTER TABLE `mp_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `user_name_2` (`user_name`);

--
-- Indexes for table `mp_vehicle`
--
ALTER TABLE `mp_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mp_banks`
--
ALTER TABLE `mp_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp_bank_opening`
--
ALTER TABLE `mp_bank_opening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_bank_transaction`
--
ALTER TABLE `mp_bank_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `mp_barcode`
--
ALTER TABLE `mp_barcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mp_brand`
--
ALTER TABLE `mp_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mp_brand_sector`
--
ALTER TABLE `mp_brand_sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mp_category`
--
ALTER TABLE `mp_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `mp_contactabout`
--
ALTER TABLE `mp_contactabout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp_customer_payments`
--
ALTER TABLE `mp_customer_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mp_drivers`
--
ALTER TABLE `mp_drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mp_expense`
--
ALTER TABLE `mp_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mp_generalentry`
--
ALTER TABLE `mp_generalentry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `mp_head`
--
ALTER TABLE `mp_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mp_invoices`
--
ALTER TABLE `mp_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `mp_langingpage`
--
ALTER TABLE `mp_langingpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp_menu`
--
ALTER TABLE `mp_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `mp_menulist`
--
ALTER TABLE `mp_menulist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `mp_multipleroles`
--
ALTER TABLE `mp_multipleroles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `mp_payee`
--
ALTER TABLE `mp_payee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mp_printer`
--
ALTER TABLE `mp_printer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mp_productslist`
--
ALTER TABLE `mp_productslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1449;

--
-- AUTO_INCREMENT for table `mp_purchase`
--
ALTER TABLE `mp_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mp_region`
--
ALTER TABLE `mp_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp_return`
--
ALTER TABLE `mp_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mp_return_list`
--
ALTER TABLE `mp_return_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mp_sales`
--
ALTER TABLE `mp_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `mp_stock`
--
ALTER TABLE `mp_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp_stores`
--
ALTER TABLE `mp_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp_sub_entry`
--
ALTER TABLE `mp_sub_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `mp_supplier_payments`
--
ALTER TABLE `mp_supplier_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mp_supply`
--
ALTER TABLE `mp_supply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_temp_barcoder_invoice`
--
ALTER TABLE `mp_temp_barcoder_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp_todolist`
--
ALTER TABLE `mp_todolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_town`
--
ALTER TABLE `mp_town`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mp_units`
--
ALTER TABLE `mp_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mp_users`
--
ALTER TABLE `mp_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mp_vehicle`
--
ALTER TABLE `mp_vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mp_bank_opening`
--
ALTER TABLE `mp_bank_opening`
  ADD CONSTRAINT `bank_opening_transac` FOREIGN KEY (`bank_id`) REFERENCES `mp_banks` (`id`);

--
-- Constraints for table `mp_bank_transaction`
--
ALTER TABLE `mp_bank_transaction`
  ADD CONSTRAINT `bankid_bank_fk` FOREIGN KEY (`bank_id`) REFERENCES `mp_banks` (`id`),
  ADD CONSTRAINT `payee_bank_fk` FOREIGN KEY (`payee_id`) REFERENCES `mp_payee` (`id`),
  ADD CONSTRAINT `transaction_general_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`);

--
-- Constraints for table `mp_customer_payments`
--
ALTER TABLE `mp_customer_payments`
  ADD CONSTRAINT `customer_trans_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`),
  ADD CONSTRAINT `payee_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `mp_payee` (`id`);

--
-- Constraints for table `mp_expense`
--
ALTER TABLE `mp_expense`
  ADD CONSTRAINT `general_expense_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`),
  ADD CONSTRAINT `head_expense_fk` FOREIGN KEY (`head_id`) REFERENCES `mp_head` (`id`),
  ADD CONSTRAINT `payee_expense_fk` FOREIGN KEY (`payee_id`) REFERENCES `mp_payee` (`id`);

--
-- Constraints for table `mp_invoices`
--
ALTER TABLE `mp_invoices`
  ADD CONSTRAINT `invoice_payee_fk` FOREIGN KEY (`cus_id`) REFERENCES `mp_payee` (`id`),
  ADD CONSTRAINT `invoice_transaction_fk` FOREIGN KEY (`transaction_id`) REFERENCES `mp_generalentry` (`id`);

--
-- Constraints for table `mp_multipleroles`
--
ALTER TABLE `mp_multipleroles`
  ADD CONSTRAINT `roles_agentid_fk` FOREIGN KEY (`agentid`) REFERENCES `mp_users` (`id`),
  ADD CONSTRAINT `roles_menuid_fk` FOREIGN KEY (`menu_Id`) REFERENCES `mp_menu` (`id`),
  ADD CONSTRAINT `roles_user_fk` FOREIGN KEY (`user_id`) REFERENCES `mp_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
