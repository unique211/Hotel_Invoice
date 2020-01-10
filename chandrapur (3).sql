-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 02:50 PM
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
-- Database: `chandrapur`
--
CREATE DATABASE IF NOT EXISTS `chandrapur` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `chandrapur`;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `autono` int(11) NOT NULL,
  `regid` varchar(15) NOT NULL,
  `g_mobile` varchar(15) NOT NULL,
  `b_mobile` varchar(15) NOT NULL,
  `a_date` date NOT NULL,
  `time` time NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `autono`, `regid`, `g_mobile`, `b_mobile`, `a_date`, `time`, `message`) VALUES
(0, 0, '', '8390966444', '7083828076', '2019-06-14', '06:00:00', ''),
(0, 0, '', '8390966444', '7083828076', '2019-06-15', '11:10:00', ''),
(0, 0, '2019MCMC0', '9028665254', '9075613611', '2019-06-21', '06:31:00', ''),
(0, 0, '2019/000785', '1', '2', '2019-06-26', '04:20:00', '12345'),
(0, 0, '2019/000785', '7574865414', '7698903070', '2019-06-27', '01:00:00', 'Testing'),
(0, 0, '2019/000785', '7030039877', '7030039877', '2019-06-27', '01:45:00', ''),
(0, 0, '2019/000861', '9730069862', '9730069862', '2019-06-28', '00:00:00', ''),
(0, 0, '2019/000861', '9730069862', '9730069862', '2019-06-28', '12:45:00', ''),
(0, 0, '2019/000867', '7387926603', '7387926603', '2019-06-28', '01:55:00', ''),
(0, 0, '2019/000867', '7387926603', '7387926603', '2019-06-28', '01:55:00', ''),
(0, 0, '2019/000868', '8208901794', '8208901794', '2019-06-28', '02:25:00', ''),
(0, 0, '2019/000869', '8237797771', '8237797771', '2019-06-28', '02:55:00', ''),
(0, 0, '2019/000870', '9949121908', '9949121908', '2019-06-28', '03:20:00', ''),
(0, 0, '2019/000871', '9923755114', '9923755114', '2019-06-29', '00:00:00', ''),
(0, 0, '2019/000871', '9923755114', '9923755114', '2019-06-29', '12:10:00', ''),
(0, 0, '2019/000872', '8605410315', '8605410315', '2019-06-29', '03:30:00', ''),
(0, 0, '2019/000872', '8605410315', '8605410315', '2019-06-29', '03:30:00', ''),
(0, 0, '2019/000872', '9527471098', '9527471098', '2019-06-29', '04:05:00', ''),
(0, 0, '2019/000873', '7972654482', '7972654482', '2019-06-29', '05:00:00', ''),
(0, 0, '2019/000873', '7972654482', '7972654482', '2019-06-29', '05:00:00', ''),
(0, 0, '2019/000874', '7397975734', '7397975734', '2019-06-29', '05:20:00', ''),
(0, 0, '2019/000874', '7397975734', '7397975734', '2019-06-29', '05:20:00', ''),
(0, 0, '2019/000875', '9423675021', '9423675021', '2019-07-01', '01:00:00', ''),
(0, 0, '2019/000873', '7972654482', '7972654482', '2019-07-01', '01:25:00', ''),
(0, 0, '2019/000873', '7972654482', '7972654482', '2019-07-01', '01:25:00', ''),
(0, 0, '2019/000876', '9595510205', '9595510205', '2019-07-01', '00:00:00', ''),
(0, 0, '2019/000877', '9527471098', '9527471098', '2019-07-01', '02:45:00', ''),
(0, 0, '2019/000878', '9405246688', '9975450618', '2019-07-01', '03:30:00', ''),
(0, 0, '2019/000878', '9405246688', '9975450618', '2019-07-01', '03:30:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `birth_appointment`
--

CREATE TABLE `birth_appointment` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `app_mobile` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `message` varchar(50) NOT NULL,
  `ref_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birth_appointment`
--

INSERT INTO `birth_appointment` (`id`, `reg_no`, `app_mobile`, `date`, `time`, `message`, `ref_id`) VALUES
(1, '5566', '8245454545', '2019-05-21', '18:30', 'm10', '2'),
(6, '1234', '9904760745', '2019-05-14', '07:30', 'mes1', '1'),
(8, '77777', '8547621355', '2019-05-13', '18:00', 'gggg1111', '3');

-- --------------------------------------------------------

--
-- Table structure for table `birth_documents`
--

CREATE TABLE `birth_documents` (
  `id` int(11) NOT NULL,
  `ref_id` int(11) NOT NULL,
  `chk_id_proof` varchar(10) NOT NULL,
  `chk_cer_delivery` varchar(10) NOT NULL,
  `chk_affidavit` varchar(10) NOT NULL,
  `chk_noc` varchar(10) NOT NULL,
  `chk_court_reg` varchar(10) NOT NULL,
  `chk_order` varchar(10) NOT NULL,
  `file_id_proof` varchar(50) NOT NULL,
  `file_cer_delivery` varchar(50) NOT NULL,
  `file_affidavit` varchar(50) NOT NULL,
  `file_noc` varchar(50) NOT NULL,
  `file_court_reg` varchar(50) NOT NULL,
  `file_order` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birth_documents`
--

INSERT INTO `birth_documents` (`id`, `ref_id`, `chk_id_proof`, `chk_cer_delivery`, `chk_affidavit`, `chk_noc`, `chk_court_reg`, `chk_order`, `file_id_proof`, `file_cer_delivery`, `file_affidavit`, `file_noc`, `file_court_reg`, `file_order`) VALUES
(1, 4, '1', '1', '1', '1', '1', '1', 'exe.pdf', 'Standard_Deed_of_Exclusive_Authorisation.docx', 'unicode.pdf', 'Sales_Track_Customers.pdf', 'exe1.pdf', 'Sales_Track_Users.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `birth_registration`
--

CREATE TABLE `birth_registration` (
  `id` int(11) NOT NULL,
  `applicant_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `applicant_mobile` varchar(10) CHARACTER SET utf8 NOT NULL,
  `reg_year` varchar(4) CHARACTER SET utf8 NOT NULL,
  `zone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ward` varchar(20) CHARACTER SET utf8 NOT NULL,
  `reg_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `page_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `reg_date` date NOT NULL,
  `reg_no2` varchar(20) CHARACTER SET utf8 NOT NULL,
  `dob` date NOT NULL,
  `birth_place` varchar(50) CHARACTER SET utf8 NOT NULL,
  `birth_address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `birth_type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `birth_place2` varchar(50) CHARACTER SET utf8 NOT NULL,
  `birth_address2` varchar(200) CHARACTER SET utf8 NOT NULL,
  `birth_place3` varchar(50) CHARACTER SET utf8 NOT NULL,
  `orphaned_birth` varchar(50) CHARACTER SET utf8 NOT NULL,
  `child_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `baby_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 NOT NULL,
  `father_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mother_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mother_address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `father_full_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mother_full_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mother_address2` varchar(200) CHARACTER SET utf8 NOT NULL,
  `father_business` varchar(20) CHARACTER SET utf8 NOT NULL,
  `mother_business` varchar(20) CHARACTER SET utf8 NOT NULL,
  `mother_dob` date NOT NULL,
  `father_edu` varchar(20) CHARACTER SET utf8 NOT NULL,
  `mother_edu` varchar(20) CHARACTER SET utf8 NOT NULL,
  `mother_age_at_birth` varchar(10) CHARACTER SET utf8 NOT NULL,
  `religion` varchar(20) CHARACTER SET utf8 NOT NULL,
  `nationality` varchar(20) CHARACTER SET utf8 NOT NULL,
  `parent_perminent_address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `parent_addresss_at_birth` varchar(200) CHARACTER SET utf8 NOT NULL,
  `perminent_address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `no_of_child` varchar(10) CHARACTER SET utf8 NOT NULL,
  `attention_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `informant_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `address_of_informer` varchar(200) CHARACTER SET utf8 NOT NULL,
  `delivery_method` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name_info_provider` varchar(50) CHARACTER SET utf8 NOT NULL,
  `informant_address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `city` varchar(50) CHARACTER SET utf8 NOT NULL,
  `reg_unit` varchar(10) CHARACTER SET utf8 NOT NULL,
  `police_station` varchar(50) CHARACTER SET utf8 NOT NULL,
  `fir_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `police_station_address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `name_of_court` varchar(50) CHARACTER SET utf8 NOT NULL,
  `court_order_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `court_order_date` date NOT NULL,
  `additional_remarks` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birth_registration`
--

INSERT INTO `birth_registration` (`id`, `applicant_name`, `applicant_mobile`, `reg_year`, `zone`, `ward`, `reg_no`, `page_no`, `reg_date`, `reg_no2`, `dob`, `birth_place`, `birth_address`, `birth_type`, `birth_place2`, `birth_address2`, `birth_place3`, `orphaned_birth`, `child_name`, `baby_name`, `gender`, `father_name`, `mother_name`, `mother_address`, `father_full_name`, `mother_full_name`, `mother_address2`, `father_business`, `mother_business`, `mother_dob`, `father_edu`, `mother_edu`, `mother_age_at_birth`, `religion`, `nationality`, `parent_perminent_address`, `parent_addresss_at_birth`, `perminent_address`, `no_of_child`, `attention_type`, `informant_type`, `address_of_informer`, `delivery_method`, `name_info_provider`, `informant_address`, `city`, `reg_unit`, `police_station`, `fir_no`, `police_station_address`, `name_of_court`, `court_order_no`, `court_order_date`, `additional_remarks`) VALUES
(1, 'Ajazkhan Pathan', '9904760745', '2016', '', '', '1234', '55', '2019-05-21', '1234', '2019-05-20', 'Rajkot', 'Bajarangwadi', '1', 'Rajkot', 'Rajkot', 'Rajkot', 'No', 'Ajazkhan Pathan', 'Ajazkhan Pathan', 'men', 'aaaa', 'mmmmm', 'Bajarangwadi', 'xyz ttt zzz', 'abc xyz zzz', 'Bajarangwadi', '3', '1', '2019-05-20', '3', '3', '30', '2', 'Indian', 'Bajarangwadi222', 'Rajkot', 'Rajkot111', '2', '2', 'Rajkot', 'Rajkot', '3', 'na', 'Rajkot', 'Rajkot', '5050', 'Rajkot', '88888', 'Rajkot', 'Rajkot', '45454', '2019-05-21', 'Rajkot'),
(2, 'Mohit Jadav', '8245454545', '2016', '', '', '5566', '', '0000-00-00', '', '2019-05-22', 'Rajkot', 'Colvala`', '', 'Rajkot', '', '', 'No', '', '', 'men', 'aaaa', 'mmmmm', 'ab Road', 'Sagar', 'Sagar', '', '', '', '0000-00-00', '', '', '', '', 'Indian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', ''),
(3, 'Anil', '8547621355', '2016', '', '', '77777', '', '0000-00-00', '', '2019-05-06', 'Rajkot', 'Bus Stand', '', 'Rajkot', '', '', 'No', '', '', 'men', 'aaaa', 'mmmmm', 'Bajarangwadi', 'Ajazkhan Pathan', 'Ajazkhan Pathan', 'Airport', '8', '', '0000-00-00', '', '', '', '', 'Indian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', ''),
(4, 'Ajazkhan Pathan', '9904760745', '2016', '', '', '1234', '55', '2019-05-21', '1234', '2019-05-20', 'Rajkot', 'Bajarangwadi', '1', 'Rajkot', 'Rajkot', 'Rajkot', 'No', 'Ajazkhan Pathan', 'Ajazkhan Pathan', 'men', 'aaaa', 'mmmmm', 'Bajarangwadi', 'xyz ttt zzz', 'abc xyz zzz', 'Bajarangwadi', '3', '1', '2019-05-20', '3', '3', '30', '3', 'Indian', 'Bajarangwadi222', 'Rajkot', 'Rajkot111', '2', '2', 'Rajkot', 'Rajkot', '3', 'na', 'Rajkot', 'Rajkot', '5050', 'Rajkot', '88888', 'Rajkot', 'Rajkot', '45454', '2019-05-21', 'Rajkot'),
(5, 'Ajazkhan Pathan', '9904760745', '2016', '', '', '1234', '55', '2019-05-21', '1234', '2019-05-20', 'Rajkot', 'Bajarangwadi', '1', 'Rajkot', 'Rajkot', 'Rajkot', 'No', 'Ajazkhan Pathan', 'Ajazkhan Pathan', 'men', 'aaaa', 'mmmmm', 'Bajarangwadi', 'xyz ttt zzz', 'abc xyz zzz', 'Bajarangwadi', '3', '1', '2019-05-20', '3', '3', '30', '2', 'Indian', 'Bajarangwadi222', 'Rajkot', 'Rajkot111', '2', '2', 'Rajkot', 'Rajkot', '3', 'na', 'Rajkot', 'Rajkot', '5050', 'Rajkot2', '88888', 'Rajkot', 'Rajkot', '45454', '2019-05-21', 'Rajkot'),
(6, 'Ajazkhan Pathan', '9904760745', '2016', '', '', '1234', '55', '2019-05-21', '1234', '2019-05-20', 'Rajkot', 'Bajarangwadi', '1', 'Rajkot', 'Rajkot', 'Rajkot', 'No', 'Ajazkhan Pathan', 'Ajazkhan Pathan', 'men', 'aaaa', 'mmmmm', 'Bajarangwadi', 'xyz ttt zzz', 'abc xyz zzz', 'Bajarangwadi', '3', '1', '2019-05-20', '3', '3', '30', '2', 'Indian', 'Bajarangwadi222', 'Rajkot', 'Rajkot111', '2', '2', 'Rajkot', 'Rajkot', '3', 'na', 'Rajkot', 'Rajkot', '5050', 'Rajkot', '88888', 'Rajkot', 'Rajkot', '45454', '2019-05-21', 'Rajkot'),
(7, 'Ajazkhan Pathan', '9904760745', '2016', '', '', '1234', '55', '2019-05-21', '1234', '2019-05-20', 'Rajkot', 'Bajarangwadi', '1', 'Rajkot', 'Rajkot', 'Rajkot', 'No', 'Ajazkhan Pathan', 'Ajazkhan Pathan', 'men', 'aaaa', 'mmmmm', 'Bajarangwadi', 'xyz ttt zzz', 'abc xyz zzz', 'Bajarangwadi', '3', '1', '2019-05-20', '3', '3', '30', '2', 'Indian', 'Bajarangwadi222', 'Rajkot', 'Rajkot111', '2', '2', 'Rajkot', 'Rajkot', '3', 'na', 'Rajkot', 'Rajkot', '5050', 'Rajkot', '88888', 'Rajkot', 'Rajkot', '45454', '2019-05-21', 'Rajkot'),
(8, 'Ajazkhan Pathan', '9904760745', '2016', '', '', '1234', '55', '2019-05-21', '1234', '2019-05-20', 'Rajkot', 'Bajarangwadi', '1', 'Rajkot', 'Rajkot', 'Rajkot', 'No', 'Ajazkhan Pathan', 'Ajazkhan Pathan', 'men', 'aaaa', 'mmmmm', 'Bajarangwadi', 'xyz ttt zzz', 'abc xyz zzz', 'Bajarangwadi', '3', '1', '2019-05-20', '3', '3', '30', '2', 'Indian', 'Bajarangwadi222', 'Rajkot', 'Rajkot111', '2', '2', 'Rajkot', 'Rajkot', '3', 'na', 'Rajkot', 'Rajkot', '5050', 'Rajkot', '88888', 'Rajkot', 'Rajkot', '45454', '2019-05-21', 'Rajkot'),
(9, 'Ajazkhan Pathan', '9904760745', '2016', '', '', '1234', '55', '2019-05-21', '1234', '2019-05-20', 'Rajkot', 'Bajarangwadi', '1', 'Rajkot', 'Rajkot', 'Rajkot', 'No', 'Ajazkhan Pathan', 'Ajazkhan Pathan', 'men', 'aaaa', 'mmmmm', 'Bajarangwadi', 'xyz ttt zzz', 'abc xyz zzz', 'Bajarangwadi', '3', '1', '2019-05-20', '3', '3', '30', '2', 'Indian', 'Bajarangwadi222', 'Rajkot', 'Rajkot111', '2', '2', 'Rajkot', 'Rajkot', '3', 'na', 'Rajkot', 'Rajkot', '5050', 'Rajkot', '88888', 'Rajkot', 'Rajkot', '45454', '2019-05-21', 'Rajkot'),
(10, 'Ajazkhan Pathan', '9904760745', '2016', '', '', '1234', '55', '2019-05-21', '1234', '2019-05-20', 'Rajkot', 'Bajarangwadi', '1', 'Rajkot', 'Rajkot', 'Rajkot', 'No', 'Ajazkhan Pathan', 'Ajazkhan Pathan', 'men', 'aaaa', 'mmmmm', 'Bajarangwadi', 'xyz ttt zzz', 'abc xyz zzz', 'Bajarangwadi', '3', '1', '2019-05-20', '3', '3', '30', '2', 'Indian', 'Bajarangwadi222', 'Rajkot', 'Rajkot111', '2', '2', 'Rajkot', 'Rajkot', '3', 'na', 'Rajkot', 'Rajkot', '5050', 'Rajkot', '88888', 'Rajkot', 'Rajkot', '45454', '2019-05-21', 'Rajkot'),
(11, 'Ajazkhan Pathan', '9904760745', '2016', '', '', '1234', '55', '2019-05-21', '1234', '2019-05-20', 'Rajkot', 'Bajarangwadi', '1', 'Rajkot', 'Rajkot', 'Rajkot', 'No', 'Ajazkhan Pathan', 'Ajazkhan Pathan', 'men', 'aaaa', 'mmmmm', 'Bajarangwadi', 'xyz ttt zzz', 'abc xyz zzz', 'Bajarangwadi', '3', '1', '2019-05-20', '3', '3', '30', '2', 'Indian', 'Bajarangwadi222', 'Rajkot', 'Rajkot111', '2', '2', 'Rajkot', 'Rajkot', '3', 'na', 'Rajkot', 'Rajkot', '5050', 'Rajkot', '88888', 'Rajkot', 'Rajkot', '45454', '2019-05-21', 'Rajkot'),
(12, 'Ajazkhan Pathan', '9904760745', '2016', '', '', '1234', '55', '2019-05-21', '1234', '2019-05-20', 'Rajkot', 'Bajarangwadi', '1', 'Rajkot', 'Rajkot', 'Rajkot', 'No', 'Ajazkhan Pathan', 'Ajazkhan Pathan', 'men', 'aaaa', 'mmmmm', 'Bajarangwadi', 'xyz ttt zzz', 'abc xyz zzz', 'Bajarangwadi', '3', '1', '2019-05-20', '3', '3', '30', '2', 'Indian', 'Bajarangwadi222', 'Rajkot', 'Rajkot111', '2', '2', 'Rajkot', 'Rajkot', '3', 'na', 'Rajkot', 'Rajkot', '5050', 'Rajkot', '88888', 'Rajkot', 'Rajkot', '45454', '2019-05-21', 'Rajkot'),
(13, 'Ajazkhan Pathan', '9904760745', '2016', '', '', '1234', '55', '2019-05-21', '1234', '2019-05-20', 'Rajkot', 'Bajarangwadi', '1', 'Rajkot', 'Rajkot', 'Rajkot', 'No', 'Ajazkhan Pathan', 'Ajazkhan Pathan', 'men', 'aaaa', 'mmmmm', 'Bajarangwadi', 'xyz ttt zzz', 'abc xyz zzz', 'Bajarangwadi', '3', '1', '2019-05-20', '3', '3', '30', '2', 'Indian', 'Bajarangwadi222', 'Rajkot', 'Rajkot111', '2', '2', 'Rajkot', 'Rajkot', '3', 'na', 'Rajkot', 'Rajkot', '5050', 'Rajkot', '88888', 'Rajkot', 'Rajkot', '45454', '2019-05-21', 'Rajkot');

-- --------------------------------------------------------

--
-- Table structure for table `cash_counter`
--

CREATE TABLE `cash_counter` (
  `id` int(11) NOT NULL,
  `ref_id` varchar(10) NOT NULL,
  `receipt_year` int(4) NOT NULL,
  `receipt_num` int(5) NOT NULL,
  `receipt_no` varchar(17) NOT NULL,
  `receipt_date` date NOT NULL,
  `collection_no` varchar(50) CHARACTER SET utf8 NOT NULL,
  `counter_no` varchar(50) NOT NULL,
  `receive_from` varchar(50) CHARACTER SET utf8 NOT NULL,
  `amt` varchar(10) NOT NULL,
  `amt_words` varchar(150) NOT NULL,
  `function` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mode` varchar(50) NOT NULL,
  `amt2` varchar(10) NOT NULL,
  `chq_no` varchar(20) NOT NULL,
  `chq_date` date NOT NULL,
  `bank` varchar(50) NOT NULL,
  `bill_no` varchar(17) NOT NULL,
  `bill_date` date NOT NULL,
  `details` varchar(100) CHARACTER SET utf8 NOT NULL,
  `payble` varchar(50) NOT NULL,
  `receive_amt` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `zone_id` varchar(20) NOT NULL,
  `dept_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_counter`
--

INSERT INTO `cash_counter` (`id`, `ref_id`, `receipt_year`, `receipt_num`, `receipt_no`, `receipt_date`, `collection_no`, `counter_no`, `receive_from`, `amt`, `amt_words`, `function`, `mode`, `amt2`, `chq_no`, `chq_date`, `bank`, `bill_no`, `bill_date`, `details`, `payble`, `receive_amt`, `total`, `user_id`, `zone_id`, `dept_id`) VALUES
(1, '', 2019, 1, '2019CMCCR00001', '2019-07-03', 'Vishal', '1', 'Vishal Akbari', '500', 'Five Hundred ', 'Property Transfer Record', 'CASH', '500', '', '0000-00-00', '', '2019CMCCR00001', '2019-07-03', 'Property Transfer Record', '500', '500', '500', 'arzoo', '', '2'),
(2, '', 2019, 2, '2019CMCCR00002', '2019-07-03', 'Birth Certificate of Shamsaagazarzoo Shaikh ', '123', 'arzoo6', '400', 'Four Hundred ', 'Part Certificate', 'CASH', '400', '', '0000-00-00', '', '2019CMCCR00002', '2019-07-03', 'Part Certificate', '400', '400', '400', 'arzoo123', 'zone_1', '2'),
(3, '', 2019, 3, '2019CMCCR00003', '2019-07-03', 'Vishal123', '1', 'Vishal Akbari123', '500', 'Five Hundred ', 'Resident Certificate', 'CASH', '500', '', '0000-00-00', '', '2019CMCCR00003', '2019-07-03', 'Resident Certificate', '500', '500', '500', 'arzoo', '', '2'),
(6, '', 2019, 4, '2019CMCCR00004', '2019-07-03', 'aaa', '123', 'ARZOO', '200', 'Two Hundred ', 'Property Transfer Record', 'CASH', '200', '', '0000-00-00', '', '2019CMCCR00004', '2019-07-03', 'Property Transfer Record', '200', '200', '200', 'arzoo123', 'zone_1', '2'),
(5, '', 2019, 5, '2019CMCCR00005', '2019-07-03', 'arzoo3', '123', 'arzoo3', '420', 'Four Hundred Twenty ', 'Property Transfer Record', 'CASH', '420', '', '0000-00-00', '', '2019CMCCR00005', '2019-07-03', 'Property Transfer Record', '420', '420', '420', 'arzoo123', 'zone_1', '2'),
(7, '', 2019, 6, '2019CMCCR00006', '2019-07-03', 'ddd', '12', 'DDD', '200', 'Two Hundred ', 'Inheritance Certificate', 'CASH', '200', '', '0000-00-00', '', '2019CMCCR00006', '2019-07-03', 'Inheritance Certificate', '200', '200', '200', 'arzoo123', 'zone_1', '2'),
(8, '', 2019, 7, '2019CMCCR00007', '2019-07-03', 'fgf', '343', 'dsd', '323', 'Three Hundred and Twenty Three ', 'Resident Certificate', 'ca', '323', '', '0000-00-00', '', '2019CMCCR00007', '2019-07-03', 'Resident Certificate', '323', '323', '323', 'arzoo123', 'zone_1', '2'),
(9, '', 2019, 8, '2019CMCCR00008', '2019-07-03', 'ddsdsd', '2121', 'scvbn', '12345', 'Twelve Thousand Three Hundred and Forty Five ', 'No Objection Certificate', 'cc', '12345', '', '0000-00-00', '', '2019CMCCR00008', '2019-07-03', 'No Objection Certificate', '12345', '12345', '12345', 'arzoo123', 'zone_1', '2'),
(10, '', 2019, 9, '2019CMCCR00009', '2019-07-03', 'dfb', '12345', 'sdcvb', '12345', 'Twelve Thousand Three Hundred and Forty Five ', 'Part Certificate', 's', '12345', '', '0000-00-00', '', '2019CMCCR00009', '2019-07-03', 'Part Certificate', '12345', '12345', '12345', 'arzoo123', 'zone_1', '2'),
(11, '', 2019, 10, '2019CMCCR00010', '2019-07-03', 'sdfgh', '123456', 'sdf', '1234', 'One Thousand Two Hundred and Thirty Four ', 'Birth Registration', 'sdfg', '1234', '', '0000-00-00', '', '2019CMCCR00010', '2019-07-03', 'Birth Registration ', '1234', '1234', '1234', 'arzoo123', 'zone_1', '2'),
(12, '', 2019, 11, '2019CMCCR00011', '2019-07-03', 'dsfg', '12345', 'sdfg', '1', 'One ', 'Construction Certificate', 'sdf', '1', '', '0000-00-00', '', '2019CMCCR00011', '2019-07-03', 'Construction Certificate', '1', '1', '1', 'arzoo123', 'zone_1', '2'),
(13, '', 2019, 12, '2019CMCCR00012', '2019-07-04', '114', '1', 'arzoo', '400', 'Four Hundred ', 'Property Transfer Record', 'cash', '400', '', '0000-00-00', '', '2019CMCCR00012', '2019-07-04', 'Property Transfer Record', '400', '400', '400', 'arzoo123', 'zone_1', '2'),
(14, '', 2019, 13, '2019CMCCR00013', '2019-07-04', 'arzoo1', '20', 'arzoo1', '200', 'Two Hundred ', 'Birth_Registration', 'CASH', '200', '', '0000-00-00', '', '2019CMCCR00013', '2019-07-04', 'Birth Registration ', '200', '200', '200', 'arzoo', 'zone_1', '2'),
(15, '', 2019, 14, '2019CMCCR00014', '2019-07-04', 'doc1', '1', 'doc1', '100', 'One Hundred ', 'Property Transfer Record', 'CASH', '100', '', '0000-00-00', '', '2019CMCCR00014', '2019-07-04', 'Property Transfer Record', '100', '100', '100', 'arzoo123', 'zone_1', '2'),
(16, '', 2019, 15, '2019CMCCR00015', '2019-07-04', 'arzoo2', '1', 'arzoo2', '200', 'Two Hundred ', 'Birth_Registration', 'cash', '200', '', '0000-00-00', '', '2019CMCCR00015', '2019-07-04', 'Birth Registration ', '200', '200', '200', 'arzoo', 'zone_1', '2'),
(17, '', 2019, 16, '2019CMCCR00016', '2019-07-04', 'doc2', '2', 'doc2', '200', 'Two Hundred ', 'Property Transfer Record', 'CASH', '200', '', '0000-00-00', '', '2019CMCCR00016', '2019-07-04', 'Property Transfer Record', '200', '200', '200', 'arzoo123', 'zone_1', '2'),
(18, '', 2019, 17, '2019CMCCR00017', '2019-07-04', 'arzoo3', '3', 'arzoo3', '300', 'Three Hundred ', 'Birth_Registration', 'cash', '300', '', '0000-00-00', '', '2019CMCCR00017', '2019-07-04', 'Birth Registration ', '300', '300', '300', 'arzoo', 'zone_1', '2'),
(19, '', 2019, 18, '2019CMCCR00018', '2019-07-04', 'arzoo4', '4', 'arzoo4', '400', 'Four Hundred ', 'Birth_Registration', 'cash', '400', '', '0000-00-00', '', '2019CMCCR00018', '2019-07-04', 'Birth Registration ', '400', '400', '400', 'arzoo', 'zone_1', '2'),
(20, '', 2019, 19, '2019CMCCR00019', '2019-07-04', 'doc3', '3', 'doc3', '300', 'Three Hundred ', 'Property Transfer Record', 'CASH', '300', '', '0000-00-00', '', '2019CMCCR00019', '2019-07-04', 'Property Transfer Record', '300', '300', '300', 'arzoo123', 'zone_1', '2'),
(21, '', 2019, 20, '2019CMCCR00020', '2019-07-04', 'arzoo5', '5', 'arzoo5', '500', 'Five Hundred ', 'Birth_Registration', 'cash', '500', '', '0000-00-00', '', '2019CMCCR00020', '2019-07-04', 'Birth Registration ', '500', '500', '500', 'arzoo', 'zone_1', '2'),
(22, '', 2019, 21, '2019CMCCR00021', '2019-07-04', 'doc4', '400', 'doc4', '400', 'Four Hundred ', 'Property Transfer Record', 'CASH', '400', '', '0000-00-00', '', '2019CMCCR00021', '2019-07-04', 'Property Transfer Record', '400', '400', '400', 'arzoo123', 'zone_1', '2'),
(23, '', 2019, 22, '2019CMCCR00022', '2019-07-04', 'arzoo6', '6', 'arzoo6', '600', 'Six Hundred ', 'Birth_Registration', 'cash', '600', '', '0000-00-00', '', '2019CMCCR00022', '2019-07-04', 'Birth Registration ', '600', '600', '600', 'arzoo', 'zone_1', '2'),
(24, '', 2019, 23, '2019CMCCR00023', '2019-07-04', 'doc5', '5', 'doc5', '500', 'Five Hundred ', 'Inheritance Certificate', 'CASH', '500', '', '0000-00-00', '', '2019CMCCR00023', '2019-07-04', 'Inheritance Certificate', '500', '500', '500', 'arzoo123', 'zone_1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `cash_counter_challan`
--

CREATE TABLE `cash_counter_challan` (
  `id` int(11) NOT NULL,
  `pre` varchar(10) NOT NULL,
  `sr` int(11) NOT NULL,
  `challan_no` varchar(20) NOT NULL,
  `c_date` date NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `zone_id` varchar(20) NOT NULL,
  `dept_id` varchar(20) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_counter_challan`
--

INSERT INTO `cash_counter_challan` (`id`, `pre`, `sr`, `challan_no`, `c_date`, `user_id`, `zone_id`, `dept_id`, `add_date`, `modify_date`, `status`) VALUES
(1, 'CMCC_GAC', 381, 'CMCC_GAC00381', '2019-07-03', 'arzoo123', '', '', '2019-07-03 11:25:59', '2019-07-03 12:59:41', 1),
(2, 'CMCC_GAC', 382, 'CMCC_GAC00382', '2019-07-04', 'arzoo', '', '', '2019-07-04 12:22:05', '2019-07-04 08:53:25', 1),
(3, 'CMCC_GAC', 383, 'CMCC_GAC00383', '2019-07-04', 'arzoo123', '', '', '2019-07-04 12:31:38', '2019-07-04 12:31:38', 1),
(4, 'CMCC_GAC', 384, 'CMCC_GAC00384', '2019-07-04', 'arzoo', 'zone_1', '1', '2019-07-04 14:43:47', '2019-07-04 11:22:51', 1),
(5, 'CMCC_GAC', 385, 'CMCC_GAC00385', '2019-07-04', 'arzoo123', 'zone_1', '2', '2019-07-04 14:49:02', '2019-07-04 11:30:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `construction_certificate`
--

CREATE TABLE `construction_certificate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `municipality_ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `language` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(4) NOT NULL,
  `unique_no` varchar(15) NOT NULL,
  `sr_no` int(5) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `remark` varchar(50) NOT NULL,
  `upload_doc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_master`
--

CREATE TABLE `department_master` (
  `id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `add_date` date NOT NULL,
  `modify_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department_master`
--

INSERT INTO `department_master` (`id`, `department`, `status`, `add_date`, `modify_date`) VALUES
(1, 'dept1', 1, '2019-07-02', '0000-00-00'),
(2, 'Department2', 1, '2019-07-03', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `doc_upload`
--

CREATE TABLE `doc_upload` (
  `id` int(11) NOT NULL,
  `ref_id` varchar(10) NOT NULL,
  `file` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `certificate_type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doc_upload`
--

INSERT INTO `doc_upload` (`id`, `ref_id`, `file`, `description`, `certificate_type`) VALUES
(1, '2', 'Invoice.pdf', '45', 'Property_Transfer_Record'),
(2, '3', 'barcode.pdf', 'yhgh', 'Property_Transfer_Record');

-- --------------------------------------------------------

--
-- Table structure for table `fire_fighting`
--

CREATE TABLE `fire_fighting` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `prof_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `subject` varchar(200) CHARACTER SET utf8 NOT NULL,
  `ref_date` date NOT NULL,
  `fee` varchar(10) CHARACTER SET utf8 NOT NULL,
  `form_no` varchar(10) CHARACTER SET ucs2 NOT NULL,
  `bill_date` date NOT NULL,
  `fire_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `fire_sub` varchar(200) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `certificate_date` date NOT NULL,
  `language` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(4) NOT NULL,
  `unique_no` varchar(15) NOT NULL,
  `sr_no` int(5) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `remark` varchar(50) NOT NULL,
  `upload_doc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fire_fighting_noc`
--

CREATE TABLE `fire_fighting_noc` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `prof_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `subject` varchar(200) NOT NULL,
  `ref_date` date NOT NULL,
  `fee` varchar(10) CHARACTER SET utf8 NOT NULL,
  `form_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `bill_date` date NOT NULL,
  `fire_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `fire_sub` varchar(200) CHARACTER SET utf8 NOT NULL,
  `certificate_date` date NOT NULL,
  `language` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(4) NOT NULL,
  `unique_no` varchar(15) NOT NULL,
  `sr_no` int(5) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `remark` varchar(50) NOT NULL,
  `upload_doc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `formd`
--

CREATE TABLE `formd` (
  `id` int(11) NOT NULL,
  `autono` int(11) NOT NULL,
  `w_date` date NOT NULL,
  `w_place` varchar(250) NOT NULL,
  `laws` varchar(250) NOT NULL,
  `h_name` varchar(250) NOT NULL,
  `h_aname` varchar(250) NOT NULL,
  `h_business` varchar(250) NOT NULL,
  `h_religion` varchar(250) NOT NULL,
  `h_areligion` varchar(250) NOT NULL,
  `h_born` varchar(250) NOT NULL,
  `h_age` varchar(250) NOT NULL,
  `h_address` varchar(250) NOT NULL,
  `h_mstate` varchar(250) NOT NULL,
  `w_name` varchar(250) NOT NULL,
  `w_aname` varchar(250) NOT NULL,
  `w_business` varchar(250) NOT NULL,
  `w_religion` varchar(250) NOT NULL,
  `w_areligion` varchar(250) NOT NULL,
  `w_born` varchar(250) NOT NULL,
  `w_age` varchar(250) NOT NULL,
  `w_address` varchar(250) NOT NULL,
  `w_mstate` varchar(250) NOT NULL,
  `w1_name` varchar(250) NOT NULL,
  `w1_address` varchar(250) NOT NULL,
  `w1_business` varchar(300) NOT NULL,
  `w1_relation` varchar(300) NOT NULL,
  `w2_name` varchar(250) NOT NULL,
  `w2_address` varchar(250) NOT NULL,
  `w2_business` varchar(300) NOT NULL,
  `w2_relation` varchar(300) NOT NULL,
  `w3_name` varchar(250) NOT NULL,
  `w3_address` varchar(250) NOT NULL,
  `w3_business` varchar(300) NOT NULL,
  `w3_relation` varchar(300) NOT NULL,
  `p_name` varchar(250) NOT NULL,
  `p_address` varchar(250) NOT NULL,
  `p_religion` varchar(250) NOT NULL,
  `p_age` int(5) NOT NULL,
  `p_date` date NOT NULL,
  `h_photo` varchar(250) NOT NULL,
  `w_photo` varchar(250) NOT NULL,
  `w1_photo` varchar(250) NOT NULL,
  `w2_photo` varchar(250) NOT NULL,
  `w3_photo` varchar(250) NOT NULL,
  `h_thumb` varchar(250) NOT NULL,
  `w_thumb` varchar(250) NOT NULL,
  `w1_thumb` varchar(250) NOT NULL,
  `w2_thumb` varchar(250) NOT NULL,
  `w3_thumb` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `formd`
--

INSERT INTO `formd` (`id`, `autono`, `w_date`, `w_place`, `laws`, `h_name`, `h_aname`, `h_business`, `h_religion`, `h_areligion`, `h_born`, `h_age`, `h_address`, `h_mstate`, `w_name`, `w_aname`, `w_business`, `w_religion`, `w_areligion`, `w_born`, `w_age`, `w_address`, `w_mstate`, `w1_name`, `w1_address`, `w1_business`, `w1_relation`, `w2_name`, `w2_address`, `w2_business`, `w2_relation`, `w3_name`, `w3_address`, `w3_business`, `w3_relation`, `p_name`, `p_address`, `p_religion`, `p_age`, `p_date`, `h_photo`, `w_photo`, `w1_photo`, `w2_photo`, `w3_photo`, `h_thumb`, `w_thumb`, `w1_thumb`, `w2_thumb`, `w3_thumb`) VALUES
(1, 1, '2014-02-19', 'विठ्ठल मंदिर वार्ड, चंद्रपूर ', '', 'प्रेमराज नारायण अंबीरवार ', '', 'मजुरी ', 'हिंदू', 'हिंदू', 'हिंदू', '38', 'मु पोस्ट टिळक वार्ड, रामटेक, तह रामटेक, जी नागपूर ', 'अविवाहित', 'वर्षा बबन कोंडावार ', '', 'विठ्ठल मंदिर वार्ड, चंद्रपूर ', 'हिंदू', 'हिंदू', 'हिंदू', '26', 'विठ्ठल मंदिर वार्ड, चंद्रपूर ', 'अविवाहित', 'रमेश मार्कंडी कोंडावार ', 'विठ्ठल मंदिर वार्ड, चंद्रपूर ', 'मजुरी ', 'वधूचे काका ', 'जयंत मनोहर गर्गेलवार ', 'विठ्ठल मंदिर वार्ड, चंद्रपूर ', 'मजुरी ', 'भाऊजी ', 'बबन मार्कंडा कोंडावार ', 'विठ्ठल मंदिर वार्ड, चंद्रपूर ', 'मजुरी ', 'बाबा ', 'महादेव पचारे ', 'विठ्ठल मंदिर वार्ड, चंद्रपूर ', 'हिंदू', 0, '2019-06-27', 'Picture_6057.jpg', 'Picture_6058.jpg', 'Picture_6059.jpg', 'Picture_6060.jpg', 'Picture_6061.jpg', '21.bmp', 'BRIDE1.bmp', '1.bmp', '2.bmp', '3.bmp'),
(2, 2, '2015-05-08', 'महाकाळकर सभागृह,एन आय टी गार्डेन च्या बाजूला, दत्त', '', 'प्रसाद किशनराव  स्वान ', '', 'जोय ग्लोबल इंडिया मागापत्रत्ता पुणे  ', 'हिंदू', 'हिंदू', 'हिंदू', '38', 'कोतवाली वार्ड, रामदेव बाबा मंदिर जवळ, चंद्रपूर ', 'अविवाहित', 'किरण चंद्रशेखर रायपूरकर ', '', 'गृहिणी  ', 'हिंदू', 'हिंदू', 'हिंदू', '30', 'प्लॉट न २७, चिटनवीस नगर , नागपूर ', 'अविवाहित', 'बंडू सीतारामजी धोतरे ', 'जोडदेउळ  वार्ड, चंद्रपूर ', 'धंदा ', 'मित्र ', 'अनिल शंकरराव अडगुलवार ', 'पी एच नगर, चंद्रपूर ', 'धंदा ', 'मित्र ', 'किशोर लक्ष्मणराव स्वान ', 'कोतवाली वार्ड, चंद्रपूर ', 'सेवानिवृत्त ', 'मुलाचे वडील ', 'प्रमोद मनोहरराव पिंपळकर ', 'झेंडा चौक, महाल, नागपूर ', 'हिंदू', 50, '2019-06-28', 'Picture_6068.jpg', 'Picture_6069.jpg', 'Picture_6070.jpg', 'Picture_6071.jpg', 'Picture_6072.jpg', 'GROOM.bmp', 'BRIDE.bmp', '1.bmp', '2.bmp', '3.bmp'),
(3, 3, '2019-01-29', 'डॉ. बाबासाहेब आंबेडकर सभागृह नागपूर रोड, चंद्रपूर ', '', 'रणजीत मुरलीधर खोब्रागडे ', '', 'इंजिनियर सुजीकी मोटर  गुजरात ', 'हिंदू', 'हिंदू', 'हिंदू', '29', 'मेजर स्टोर गेट, वैद्यनगर  वार्ड न १, ताडोबा रोड, तुकूम, चंद्रपूर ', 'अविवाहित', 'प्रमोधिनी बाळकृष्ण बूटले ', '', 'गृहिणी ', 'हिंदू', 'हिंदू', 'हिंदू', '27', 'प्लॉट न ९/१०, साई प्रसाद अपार्टमेट , रामकृष्ण सोसायटी, नरेंद्र नगर, नागपूर - १५ ', 'अविवाहित', 'आकाश  खोब्रागडे ', 'मेजर स्टोर गेट, वैद्यनगर  वार्ड न १, ताडोबा रोड, तुकूम, चंद्रपूर ', 'लाब असी ', 'भाऊ ', 'मनीषा नामदेव मडावी ', 'तुकूम, चंद्रपूर ', 'विद्यर्थी ', 'मित्र ', 'सुशील खोब्रागडे ', 'मेजर स्टोर गेट, वैद्यनगर  वार्ड न १, ताडोबा रोड, तुकूम, चंद्रपूर ', 'खाजगी नोकरी ', 'भाऊ ', 'ज्ञानेश्वर पाटील ', 'सुभांस नगर, चंद्रपूर ', 'हिंदू', 52, '2019-06-28', 'Picture_6072.jpg', 'Picture_6073.jpg', 'Picture_6074.jpg', 'Picture_6075.jpg', 'Picture_6076.jpg', 'GROOM.bmp', 'BRIDE.bmp', '1.bmp', '2.bmp', '3.bmp'),
(4, 4, '2019-03-25', 'चांदणी सेलीब्रेसन हॉल , कामठी रोड, नागपूर ', '', 'देवेंद्र रविंद मल्लेलवार ', '', 'खाजगी नोकरी चंद्रपूर ', 'हिंदू', 'हिंदू', 'हिंदू', '28', 'लॉ कॉलेज समोर, निर्माण नगर, ताडोबा रोड, तुकूम, चंद्रपूर ', 'अविवाहित', 'श्वेता विजय बादलवार ', '', 'गृहिणी ', 'हिंदू', 'हिंदू', 'हिंदू', '21', 'रामनगर, भरत भवन जवळ, गोंदिया ', 'अविवाहित', 'मनीष संपत कदम ', 'सिव्हील लाईन , चंद्रपूर ', 'खाजगी नोकरी ', 'मित्र ', 'श्रीकांत रमेश सोनकुसरे ', 'सिव्हील लाईन , चंद्रपूर ', 'धंदा ', 'मित्र ', 'प्रतिक शेखर जक्कनवार ', 'संत तुकडोजी वार्ड, हिंगणघाट ', 'खाजगी नोकरी ', 'मित्र ', 'सुरेश नक्षुलवार ', 'जुनोना नाका चौक, चंद्रपूर ', 'हिंदू', 50, '2019-06-28', 'Picture_6076.jpg', 'Picture_6077.jpg', 'Picture_6078.jpg', 'Picture_6079.jpg', 'Picture_6080.jpg', 'GROOM.bmp', 'BRIDE.bmp', '1.bmp', '2.bmp', '3.bmp'),
(5, 5, '2015-03-12', 'वधूचे राहते घरी करंजखोल, दत्त आडी , तव्ह महाड, जी ', '', 'मनीष संपत कदम ', '', 'धंदा ', 'हिंदू', 'हिंदू', 'हिंदू', '34', 'जनता कॉलेज जवळ, सिव्हील लाईन , चंद्रपूर ', 'अविवाहित', 'नम्रता विठ्ठल गोलांबडे ', '', 'गृहिणी ', 'हिंदू', 'हिंदू', 'हिंदू', '25', 'मु पोस्ट करंजखोल, दत्त आडी , तव्ह महाड, जी रायगड ', 'अविवाहित', 'देवेंद्र रविंद्र मल्लेलवार ', 'तुकूम, चंद्रपूर ', 'खाजगी नोकरी ', 'मित्र ', 'श्रीकांत सोनकुसरे ', 'सिव्हील लाईन , चंद्रपूर ', 'सिव्हील इंजिनियर ', 'मित्र ', 'प्रतिक जक्कनवार ', 'संत तुकडोजी वार्ड, हिंगणघाट', 'खाजगी नोकरी ', 'मित्र ', 'अशोक निमरे ', 'सुंदरवाडी, तह महाड, जी रायगड ', 'हिंदू', 52, '2019-06-28', 'Picture_6080.jpg', 'Picture_6081.jpg', 'Picture_6082.jpg', 'Picture_6083.jpg', 'Picture_6084.jpg', 'GROOM.bmp', 'BRIDE.bmp', '1.bmp', '2.bmp', '3.bmp'),
(6, 6, '2019-05-07', 'शंतनू लॉन, राधाकृष्ण टाकीज जवळ, चंद्रपूर ', '', 'सिंगापूरम विष्णूवर्धन रेड्डी ', '', ' सी आय  एस एफ ताजमहाल ', 'हिंदू', 'हिंदू', 'हिंदू', '25', 'पुलमामिडी , गाव मंडल नवाबपेट, जी विकाराबाद, (रंगारेड्डी ) स्टेट तेलंगाना ', 'अविवाहित', 'मोनाली संजय बिट्टूरवार (लग्ना नंतरचे नाव )मोनाली व', '', 'सी आय एस एफ  ताजमहाल ', 'हिंदू', 'हिंदू', 'हिंदू', '26', 'दादमहाल वार्ड, चंद्रपूर ', '', 'प्रतीक्षा अजय बिट्टूरवार ', 'दादमहाल वार्ड, चंद्रपूर ', 'विद्यर्थी ', 'बहिण ', 'आकाश शामजी कवासे ', 'दादमहाल वार्ड, चंद्रपूर ', 'मजुरी ', 'मित्र ', 'हरीभाऊ प्रभाकर बिट्टूरवार ', 'अग्रेशन भवन, दाताळा रोड, चंद्रपूर ', 'ठेकेदार ', 'काका ', 'चैतन वसंतराव माटे ', 'विश्वकर्मा नगर, नागपूर ', 'हिंदू', 56, '2019-06-28', 'Picture_6084.jpg', 'Picture_6085.jpg', 'Picture_6086.jpg', 'Picture_6087.jpg', 'Picture_6088.jpg', 'GROOM.bmp', 'BRIDE.bmp', '1.bmp', '2.bmp', '3.bmp'),
(7, 7, '2016-05-01', 'वधूचे राहते घरी देवाडा (बूज ) , गोवर्धन, तह जी चंद', '', 'प्रवीण सुधाकर पाल ', '', 'मजुरी ', 'हिंदू', 'हिंदू', 'हिंदू', '30', 'डी,एड कॉलेज जवळ, बाबूपेठ वार्ड, चंद्रपूर ', 'अविवाहित', 'निर्मला हिरामण भिवनकर ', '', 'गृहिणी ', 'हिंदू', 'हिंदू', 'हिंदू', '26', 'देवाडा (बूज ) , गोवर्धन, तह जी चंद्रपूर ', 'अविवाहित', 'प्रफुल भैयाजी ठाकरे ', 'लालपेठ, चंद्रपूर ', 'मजुरी ', 'मित्र ', 'येशू नामदेव पाल ', 'बाबूपेठ, चंद्रपूर ', 'विद्यर्थी ', 'भाऊ ', 'सुमित शंकर आसूटकर ', 'मामला पोस्ट बोर्डा , तह जिस चंद्रपूर ', 'विद्यर्थी ', 'मित्र ', 'मोरेश्वर पाठक ', 'पठाणपुरा चंद्रपूर ', 'हिंदू', 70, '2019-06-29', 'Picture_6088.jpg', 'Picture_6089.jpg', 'Picture_6090.jpg', 'Picture_6091.jpg', 'Picture_6092.jpg', 'GROOM.bmp', 'BRIDE.bmp', '1.bmp', '2.bmp', '3.bmp'),
(8, 8, '2016-07-13', 'संत नामदेव महाराज मंदिर, बालाजी वार्ड, चंद्रपूर ', '', 'रितेश रमेश सावलकर ', '', 'धंदा ', 'हिंदू', 'हिंदू', 'हिंदू', '35', 'आदर्श विहार, आदर्श नगर वार्ड ५६ गेवरा बस्ती छत्तीसगड ४९५४५४', 'अविवाहित', 'प्रणाली बाबुराव स्वान ', '', 'गृहिणी  ', 'हिंदू', 'हिंदू', 'हिंदू', '29', 'बालाजी वार्ड, मिलन चौक, शारदा टायपिंग जवळ, चंद्रपूर ', 'अविवाहित', 'प्रवीण बाबुराव स्वान ', 'बालाजी वार्ड, चन्द्रपूर ', 'मजुरी ', 'भाऊ ', 'सोनाली संजय नारळे ', 'जवळे प्लॉट भद्रावती , चंद्रपूर ', 'गृहिणी ', 'बहिण ', 'गणेश रामभाऊ हिवरे ', 'पठाणपुरा  वार्ड, चंद्रपूर ', 'मजुरी ', 'मित्र ', 'शेखर ठोंबरे ', 'बालाजी वार्ड, चंद्रपूर ', 'हिंदू', 50, '2019-06-29', 'Picture_6096.jpg', 'Picture_6097.jpg', 'Picture_6098.jpg', 'Picture_6099.jpg', 'Picture_6100.jpg', 'GROOM.bmp', 'BRIDE.bmp', '1.bmp', '2.bmp', '3.bmp'),
(9, 10, '2019-06-26', 'महेश भवन , तुकूम चंद्रपूर ', '', 'प्रफुल मनोहरराव दांडेकर ', '', 'नोकरी ', 'हिंदू', 'हिंदू', 'हिंदू', '28', 'मु भोसा, पोस्ट कांढली,, तह समुद्रपूर, जी वर्धा ', 'अविवाहित', 'शुभांगी श्रावण नन्नावरे ', '', 'नोकरी ', 'हिंदू', 'हिंदू', 'हिंदू', '27', 'देवतळे नर्सिग होमे, गुरुद्वारा रोड मागे, तुकूम, चंद्रपूर ', 'अविवाहित', 'दिनेश गोटे ', 'बगडखिडकी चंद्रपूर ', 'धंदा ', 'मित्र ', 'मोहन राखुंडे ', 'पठाणपुरा चंद्रपूर ', 'नोकरी ', 'मित्र ', 'भीमराव नन्नावरे ', 'तुकूम, चंद्रपूर ', 'धंदा ', 'भाऊ ', 'दिलीप देऊळकर ', 'पठाणपुरा वार्ड, चंद्रपूर ', 'हिंदू', 55, '2019-06-29', 'Picture_61002.jpg', 'Picture_61012.jpg', 'Picture_61021.jpg', 'Picture_6103.jpg', 'Picture_6104.jpg', 'GROOM.bmp', 'BRIDE.bmp', '1.bmp', '2.bmp', '3.bmp'),
(10, 11, '2008-03-27', 'आर्य समाज मंदिर, हंसापुरी, नागपूर ', '', 'संतोष मनोहर एडलावार ', '', 'धंदा ', 'हिंदू', 'हिंदू', 'हिंदू', '27', 'सरकार नगर, चव्हाण कॉलोनी, प्लॉट न २८, चंद्रपूर ', 'अविवाहित', 'सोनाली भगवानराव जाजुर्ले ', '', 'गृहिणी  ', 'हिंदू', 'हिंदू', 'हिंदू', '25', 'आयचीट मंदिर जवळ, नागपूर ', 'अविवाहित', 'महेंद्र अशोकराव वानखेडे ', 'एकोरी वार्ड, चंद्रपूर ', 'मजुरी ', 'मित्र ', 'गणेश ज्ञानेश्वर हिंगे ', 'अरविंद नगर,मुल रोड, चंद्रपूर ', 'मजुरी ', 'मित्र ', 'पंकज प्यारेलाल राउत ', 'छत्रपती नगर तुकूम, चंद्रपूर ', 'मजुरी ', 'मित्र ', 'अविनाश दत्तत्रय कोन्रेरे ', 'तुकूम, चंद्रपूर ', 'हिंदू', 47, '2019-07-01', 'Picture_6092.jpg', 'Picture_6093.jpg', 'Picture_6094.jpg', 'Picture_6095.jpg', 'Picture_6096.jpg', 'GROOM.bmp', 'BRIDE.bmp', '1.bmp', '2.bmp', '3.bmp'),
(11, 9, '2019-02-13', 'शंतनू लॉन, राधाकृष्ण टाकीज जवळ, चंद्रपूर ', '', 'परागकुमार  हिराचंद अंबादे ', '', 'नोकरी ', 'बौद्ध', 'बौद्ध', 'हिंदू', '31', 'भिवापूर वार्ड, गवळी मोहल्ला, बाबूपेठ, चंद्रपूर ', 'अविवाहित', 'तृप्ती हरीशचंद्र लाडे ', '', 'गृहिणी  ', 'हिंदू', 'हिंदू', 'हिंदू', '27', 'गौरी तलाव, बाबूपेठ, चंद्रपूर ', 'अविवाहित', 'विकास चंदनखेडे ', 'भिवापूर वार्ड चंद्रपूर ', 'मजुरी ', 'मित्र ', 'संदीप कोंडावार ', 'लालपेठ कॉलरी चंद्रपूर ', 'मजुरी ', 'मित्र ', 'राजश्री साखरे ', 'सिंदेवाही ', 'गृहिणी ', 'वाहिनी ', 'कृपाशरण महाथेरो ', 'विकास नगर, चंद्रपूर ', 'बौद्ध', 62, '2019-07-01', 'Picture_61041.jpg', 'Picture_61051.jpg', 'Picture_61061.jpg', 'Picture_61071.jpg', 'Picture_61081.jpg', 'GROOM.bmp', 'BRIDE1.bmp', '11.bmp', '21.bmp', '31.bmp'),
(12, 12, '2019-03-29', 'सुमन मंगल कार्यालय, पोभूर्णा , जी चंद्रपूर ', '', 'प्रशांत प्रभाकर भलवे', '', 'धंदा ', 'हिंदू', 'हिंदू', 'हिंदू', '25', 'सावित्रीबाई फुले चौक, इंदिरा नगर,चंद्रपूर ', 'अविवाहित', 'उषाताई विजय कस्तुरे ', '', 'गृहिणी  ', 'हिंदू', 'हिंदू', 'हिंदू', '21', 'मु पोस्ट तह पोभूर्णा , जी चंद्रपूर ', 'अविवाहित', 'योगिता सुरेश गद्देकार ', 'पोभूर्णा , जी चंद्रपूर ', 'गृहिणी ', 'मुलीची बहिण ', '`मयुरी आबाजी वाघाडे ', 'गोंडपिपरी , जी चंद्रपूर ', 'विद्यार्थी ', 'बाहीन ', 'हर्शल सुरेश गद्देकार ', 'पोभूर्णा , जी चंद्रपूर ', 'मजुरी ', 'भाऊ ', 'गोपाल हरणे ', 'बंगाली कॅम्प, चंद्रपूर ', 'हिंदू', 35, '2019-07-01', 'Picture_6119.jpg', 'Picture_6120.jpg', 'Picture_6121.jpg', 'Picture_6122.jpg', 'Picture_6123.jpg', 'GROOM.bmp', 'BRIDE.bmp', '1.bmp', '2.bmp', '3.bmp'),
(13, 13, '2016-06-02', 'रामलीला भवन, मुल तह मुल , जी चंद्रपूर ', '', 'विजय कवडू कोडापे ', '', 'नोकरी तहसील कार्यालय चंद्रपूर ', 'हिंदू', 'हिंदू', 'हिंदू', '26', 'जगन्नाथ बाबा नगर, चंद्रपूर ', 'अविवाहित', 'ज्योत्सना नारायण कुडे ', '', 'गृहिणी ', 'हिंदू', 'हिंदू', 'हिंदू', '31', 'जिल्हा सामान्य रुग्णालय जवळ, मुल तह मुल , जी चंद्रपूर ', 'अविवाहित', 'गोपी बाबुराव तेलंग ', 'चोरखीडकी , चंद्रपूर ', 'धंदा ', 'मित्र ', 'शैलेश हरिदास गेडाम ', 'संजय नगर, चंद्रपूर ', 'धंदा ', 'मित्र ', 'अनिकेत आनंद शेंडे ', 'पंचशील वार्ड, चंद्रपूर ', 'धंदा ', 'मित्र ', 'अंकुश महादेवराव चापले ', 'दहेगाव, जी वर्धा ', 'हिंदू', 48, '2019-07-01', 'Picture_6108.jpg', 'Picture_6109.jpg', 'Picture_6110.jpg', 'Picture_6111.jpg', 'Picture_6112.jpg', 'GROOM.bmp', 'BRIDE.bmp', '1.bmp', '2.bmp', '3.bmp'),
(14, 14, '2019-04-17', 'महेश भवन, तुकूम, चंद्रपूर ', '', 'अमित चिंतामण कुर्वे ', '', 'धंदा ', 'हिंदू', 'हिंदू', 'हिंदू', '28', 'पाठक कॉलोनी, न्यू आर टी ओ आफिस च्या मागे, गोंदिया ४४१६१४ ', 'अविवाहित', 'प्रणाली रमाकांत हर्षे ', '', 'गृहिणी ', 'हिंदू', 'हिंदू', 'हिंदू', '27', 'श्रद्धा नगर, ताडोबा रोड, तुकूम, चंद्रपूर ', 'अविवाहित', 'रमाकांत तुकाराम हर्षे ', 'श्रद्धा नगर, ताडोबा रोड, तुकूम, चंद्रपूर ', 'नोकरी ', 'मुलीचे वडील ', 'हेमंत रसिकलाल मेहता ', 'चंद्रछाया मंगल कार्यालय, तुकूम, चंद्रपूर ', 'मिस्त्री काम ', 'मित्र ', 'विजया रमाकांत हर्षे ', 'श्रद्धा नगर, ताडोबा रोड, तुकूम, चंद्रपूर ', 'गृहिणी ', 'मुलीची आई ', 'नीरज विजयराव जगाम ', 'दुर्गापूर चंद्रपूर ', 'हिंदू', 45, '2019-07-01', 'Picture_6112.jpg', 'Picture_6113.jpg', 'Picture_6114.jpg', 'Picture_6115.jpg', 'Picture_6116.jpg', 'GROOM.bmp', 'BRIDE.bmp', '1.bmp', '2.bmp', '3.bmp');

-- --------------------------------------------------------

--
-- Table structure for table `inheritance_certificate`
--

CREATE TABLE `inheritance_certificate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `municipality_ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `language` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(4) NOT NULL,
  `unique_no` varchar(15) NOT NULL,
  `sr_no` int(5) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `remark` varchar(50) NOT NULL,
  `upload_doc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_master`
--

CREATE TABLE `login_master` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `role` varchar(10) NOT NULL,
  `status` varchar(1) NOT NULL,
  `add_date` date NOT NULL,
  `modify_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_master`
--

INSERT INTO `login_master` (`id`, `user_id`, `password`, `role`, `status`, `add_date`, `modify_date`) VALUES
(1, 'admin', 'admin', 'admin', '1', '2019-06-20', '2019-06-20'),
(3, 'ajazkhan@gmail.com', '111222', 'staff', '1', '2019-06-20', '0000-00-00'),
(4, '9904760745', '112233', 'user', '1', '2019-06-20', '2019-06-20'),
(5, '9028665254', 'prashik260', 'user', '1', '2019-06-21', '2019-06-21'),
(6, '9075613611', 'sanika26', 'user', '1', '2019-06-21', '2019-06-21'),
(7, '7016158344', '111111', 'user', '1', '2019-06-21', '2019-06-21'),
(8, '7574865414', '1234', 'user', '1', '2019-06-22', '2019-06-22'),
(9, '8390966444', 'dhiraj1990', 'user', '1', '2019-06-25', '2019-06-25'),
(10, '9970255587', '', 'user', '0', '2019-06-25', '0000-00-00'),
(11, '9423416948', 'vasantib', 'user', '1', '2019-06-27', '2019-06-27'),
(12, '8087407567', 'Aarti@777', 'user', '1', '2019-06-27', '2019-06-27'),
(13, '9325695631', '16021990', 'user', '1', '2019-06-27', '2019-06-27'),
(14, '9588492821', 'Pinku@2011', 'user', '1', '2019-06-27', '2019-06-27'),
(15, '9588492821', 'Pinku@2011', 'user', '1', '2019-06-27', '2019-06-27'),
(16, '9588492821', 'sam1602', 'user', '1', '2019-06-27', '2019-06-27'),
(17, '9588492821', '12345', 'user', '1', '2019-06-27', '2019-06-27'),
(18, '9588492821', 'Pinku@2011', 'user', '1', '2019-06-28', '2019-06-28'),
(19, '9588492821', 'Pinku@2011', 'user', '1', '2019-06-28', '2019-06-28'),
(20, '9588492821', 'Pinku@2011', 'user', '1', '2019-06-28', '2019-06-28'),
(21, '9588492821', 'Pinku@2011', 'user', '1', '2019-06-28', '2019-06-28'),
(22, '9588492821', 'Pinku@2011', 'user', '1', '2019-06-28', '2019-06-28'),
(23, '8983263896', '1602', 'user', '1', '2019-06-28', '2019-06-28'),
(24, '9588492821', 'Pinku@2011', 'user', '1', '2019-06-28', '2019-06-28'),
(25, '9588492821', '', 'user', '0', '2019-06-28', '0000-00-00'),
(26, '9588492821', '', 'user', '0', '2019-06-28', '0000-00-00'),
(27, '9588492821', '', 'user', '0', '2019-06-28', '0000-00-00'),
(28, '9588492821', '', 'user', '0', '2019-06-28', '0000-00-00'),
(29, '9588492821', '', 'user', '0', '2019-06-28', '0000-00-00'),
(30, '9588492821', 'Pinku@2011', 'user', '1', '2019-06-29', '2019-06-29'),
(31, '9673577664', 'nikure', 'user', '1', '2019-06-29', '2019-06-29'),
(32, '7083879254', 'poonam', 'user', '1', '2019-06-29', '2019-06-29'),
(33, '9423115475', 'kishori@12', 'user', '1', '2019-06-29', '2019-06-29'),
(34, '9423115475', 'kishori', 'user', '1', '2019-06-29', '2019-06-29'),
(35, '9588492821', 'Pinku@2011', 'user', '1', '2019-06-29', '2019-06-29'),
(36, '9673577664', '', 'user', '0', '2019-07-01', '0000-00-00'),
(37, 'arzoo@gmail.com', '123', 'staff', '1', '2019-07-02', '0000-00-00'),
(38, 'arzoo@gmail.com', '123', 'staff', '1', '2019-07-02', '0000-00-00'),
(39, 'arzoo', '123', 'staff', '1', '2019-07-02', '0000-00-00'),
(40, 'arzoo123', '123', 'staff', '1', '2019-07-02', '2019-07-02'),
(41, 'ajaz', '123', 'staff', '1', '2019-07-03', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `marrige_challan`
--

CREATE TABLE `marrige_challan` (
  `id` int(11) NOT NULL,
  `pre` varchar(10) NOT NULL,
  `sr` int(11) NOT NULL,
  `challan_no` varchar(20) NOT NULL,
  `c_date` date NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marrige_challan`
--

INSERT INTO `marrige_challan` (`id`, `pre`, `sr`, `challan_no`, `c_date`, `user_id`, `add_date`, `status`) VALUES
(1, 'CMC_GAC', 1, 'CMC_GAC00001', '2019-06-29', '1', '2019-06-29 09:47:43', 1),
(2, 'CMC_GAC', 2, 'CMC_GAC00002', '2019-06-29', '1', '2019-06-29 09:51:20', 1),
(3, 'CMC_GAC', 3, 'CMC_GAC00003', '2019-06-29', '1', '2019-06-29 09:53:42', 1),
(4, 'CMC_GAC', 4, 'CMC_GAC00004', '2019-06-29', '1', '2019-06-29 09:59:30', 1),
(5, 'CMC_GAC', 5, 'CMC_GAC00005', '2019-06-29', '1', '2019-06-29 10:00:42', 1),
(6, 'CMC_GAC', 6, 'CMC_GAC00006', '2019-06-29', '1', '2019-06-29 10:03:22', 1),
(7, 'CMC_GAC', 7, 'CMC_GAC00007', '2019-06-29', '1', '2019-06-29 10:03:24', 1),
(8, 'CMC_GAC', 8, 'CMC_GAC00008', '2019-06-29', '1', '2019-06-29 10:10:23', 1),
(9, 'CMC_GAC', 9, 'CMC_GAC00009', '2019-06-29', '1', '2019-06-29 10:11:20', 1),
(10, 'CMC_GAC', 10, 'CMC_GAC00010', '2019-06-29', '1', '2019-06-29 10:15:16', 1),
(11, 'CMC_GAC', 11, 'CMC_GAC00011', '2019-06-29', '1', '2019-06-29 10:16:17', 1),
(12, 'CMC_GAC', 12, 'CMC_GAC00012', '2019-06-29', '1', '2019-06-29 10:16:25', 1),
(13, 'CMC_GAC', 13, 'CMC_GAC00013', '2019-06-29', '1', '2019-06-29 10:17:27', 1),
(14, 'CMC_GAC', 14, 'CMC_GAC00014', '2019-06-29', '1', '2019-06-29 10:23:19', 1),
(15, 'CMC_GAC', 15, 'CMC_GAC00015', '2019-06-29', '1', '2019-06-29 11:02:25', 1),
(20, 'CMC_GAC', 368, 'CMC_GAC00368', '2019-06-29', '1', '2019-06-29 11:55:21', 1),
(19, 'CMC_GAC', 367, 'CMC_GAC00367', '2019-06-29', '1', '2019-06-29 11:21:06', 1),
(21, 'CMC_GAC', 369, 'CMC_GAC00369', '2019-06-29', '1', '2019-06-29 12:14:03', 1),
(22, 'CMC_GAC', 370, 'CMC_GAC00370', '2019-06-29', '1', '2019-06-29 12:19:26', 1),
(23, 'CMC_GAC', 371, 'CMC_GAC00371', '2019-06-29', '1', '2019-06-29 12:23:36', 1),
(24, 'CMC_GAC', 372, 'CMC_GAC00372', '2019-06-29', '1', '2019-06-29 12:41:10', 1),
(25, 'CMC_GAC', 373, 'CMC_GAC00373', '2019-06-29', '1', '2019-06-29 12:43:06', 1),
(26, 'CMC_GAC', 374, 'CMC_GAC00374', '0000-00-00', '1', '2019-07-01 04:50:54', 1),
(27, 'CMC_GAC', 375, 'CMC_GAC00375', '2019-07-01', '1', '2019-07-01 04:52:13', 1),
(28, 'CMC_GAC', 376, 'CMC_GAC00376', '2019-07-01', '1', '2019-07-01 04:53:12', 1),
(29, 'CMC_GAC', 377, 'CMC_GAC00377', '2019-07-01', '1', '2019-07-01 04:57:18', 1),
(30, 'CMC_GAC', 378, 'CMC_GAC00378', '0000-00-00', '1', '2019-07-01 05:35:27', 1),
(31, 'CMC_GAC', 379, 'CMC_GAC00379', '2019-07-01', '1', '2019-07-01 06:11:00', 1),
(32, 'CMC_GAC', 380, 'CMC_GAC00380', '2019-07-01', '1', '2019-07-01 06:19:00', 1),
(33, 'CMC_GAC', 381, 'CMC_GAC00381', '2019-07-01', '1', '2019-07-01 06:26:39', 1),
(34, 'CMC_GAC', 382, 'CMC_GAC00382', '2019-07-01', '1', '2019-07-01 06:30:34', 1),
(35, 'CMC_GAC', 383, 'CMC_GAC00383', '2019-07-01', '1', '2019-07-01 06:31:05', 1),
(36, 'CMC_GAC', 384, 'CMC_GAC00384', '2019-07-02', '1', '2019-07-01 18:47:57', 1),
(37, 'CMC_GAC', 385, 'CMC_GAC00385', '2019-07-02', '1', '2019-07-01 18:57:10', 1),
(38, 'CMC_GAC', 386, 'CMC_GAC00386', '2019-07-02', '1', '2019-07-01 18:58:15', 1),
(39, 'CMC_GAC', 387, 'CMC_GAC00387', '2019-07-02', '1', '2019-07-02 00:58:45', 1),
(40, 'CMC_GAC', 388, 'CMC_GAC00388', '2019-07-02', '1', '2019-07-02 00:59:06', 1),
(41, 'CMC_GAC', 389, 'CMC_GAC00389', '2019-07-02', '1', '2019-07-02 01:02:13', 1),
(42, 'CMC_GAC', 390, 'CMC_GAC00390', '2019-07-02', '1', '2019-07-02 01:03:58', 1),
(43, 'CMC_GAC', 391, 'CMC_GAC00391', '2019-07-02', '1', '2019-07-02 01:05:08', 1),
(44, 'CMC_GAC', 392, 'CMC_GAC00392', '2019-07-05', '1', '2019-07-05 11:47:35', 1),
(45, 'CMC_GAC', 393, 'CMC_GAC00393', '2019-07-05', '1', '2019-07-05 11:47:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `marrige_documents`
--

CREATE TABLE `marrige_documents` (
  `id` int(11) NOT NULL,
  `ref_id` int(11) NOT NULL,
  `ch_1` varchar(10) NOT NULL,
  `ch_2` varchar(10) NOT NULL,
  `ch_3_1` varchar(10) NOT NULL,
  `ch_3_2` varchar(10) NOT NULL,
  `ch_3_3` varchar(10) NOT NULL,
  `ch_4_1` varchar(10) NOT NULL,
  `ch_4_2` varchar(10) NOT NULL,
  `ch_5` varchar(10) NOT NULL,
  `ch_6_1` varchar(10) NOT NULL,
  `ch_6_2` varchar(10) NOT NULL,
  `ch_6_3` varchar(10) NOT NULL,
  `ch_6_4` varchar(10) NOT NULL,
  `ch_7_1` varchar(10) NOT NULL,
  `ch_7_2` varchar(10) NOT NULL,
  `ch_8_1` varchar(10) NOT NULL,
  `ch_8_2` varchar(10) NOT NULL,
  `ch_9` varchar(10) NOT NULL,
  `ch_10` varchar(10) NOT NULL,
  `ch_11` varchar(10) NOT NULL,
  `ch_12_1` varchar(10) NOT NULL,
  `ch_12_2` varchar(10) NOT NULL,
  `ch_12_3` varchar(10) NOT NULL,
  `ch_12_4` varchar(10) NOT NULL,
  `f_1` varchar(50) NOT NULL,
  `f_2` varchar(50) NOT NULL,
  `f_3_1` varchar(50) NOT NULL,
  `f_3_2` varchar(50) NOT NULL,
  `f_3_3` varchar(50) NOT NULL,
  `f_4_1` varchar(50) NOT NULL,
  `f_4_2` varchar(50) NOT NULL,
  `f_5` varchar(50) NOT NULL,
  `f_6_1` varchar(50) NOT NULL,
  `f_6_2` varchar(50) NOT NULL,
  `f_6_3` varchar(50) NOT NULL,
  `f_6_4` varchar(50) NOT NULL,
  `f_7_1` varchar(50) NOT NULL,
  `f_7_2` varchar(50) NOT NULL,
  `f_8_1` varchar(50) NOT NULL,
  `f_8_2` varchar(50) NOT NULL,
  `f_9` varchar(50) NOT NULL,
  `f_10` varchar(50) NOT NULL,
  `f_11` varchar(50) NOT NULL,
  `f_12_1` varchar(50) NOT NULL,
  `f_12_2` varchar(50) NOT NULL,
  `f_12_3` varchar(50) NOT NULL,
  `f_12_4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marrige_documents`
--

INSERT INTO `marrige_documents` (`id`, `ref_id`, `ch_1`, `ch_2`, `ch_3_1`, `ch_3_2`, `ch_3_3`, `ch_4_1`, `ch_4_2`, `ch_5`, `ch_6_1`, `ch_6_2`, `ch_6_3`, `ch_6_4`, `ch_7_1`, `ch_7_2`, `ch_8_1`, `ch_8_2`, `ch_9`, `ch_10`, `ch_11`, `ch_12_1`, `ch_12_2`, `ch_12_3`, `ch_12_4`, `f_1`, `f_2`, `f_3_1`, `f_3_2`, `f_3_3`, `f_4_1`, `f_4_2`, `f_5`, `f_6_1`, `f_6_2`, `f_6_3`, `f_6_4`, `f_7_1`, `f_7_2`, `f_8_1`, `f_8_2`, `f_9`, `f_10`, `f_11`, `f_12_1`, `f_12_2`, `f_12_3`, `f_12_4`) VALUES
(1, 1, '1', '1', '0', '0', '1', '1', '0', '0', '1', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 11, '1', '1', '0', '0', '1', '1', '0', '0', '1', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 3, '1', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 4, '1', '1', '1', '0', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 5, '1', '1', '0', '0', '1', '1', '0', '0', '1', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 6, '1', '1', '1', '0', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 7, '1', '1', '0', '0', '1', '1', '0', '1', '1', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 9, '1', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 9, '1', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 12, '1', '1', '0', '1', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 13, '1', '1', '0', '0', '1', '1', '0', '0', '1', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 14, '1', '1', '1', '0', '0', '1', '0', '0', '1', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `marrige_receipt`
--

CREATE TABLE `marrige_receipt` (
  `id` int(11) NOT NULL,
  `ref_id` varchar(10) NOT NULL,
  `receipt_year` int(5) NOT NULL,
  `receipt_num` int(5) NOT NULL,
  `receipt_no` varchar(20) NOT NULL,
  `receipt_date` date NOT NULL,
  `collection_no` varchar(50) NOT NULL,
  `counter_no` varchar(50) NOT NULL,
  `receive_from` varchar(50) CHARACTER SET utf8 NOT NULL,
  `amt` varchar(10) NOT NULL,
  `amt_words` varchar(150) NOT NULL,
  `function` varchar(50) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `amt2` varchar(10) NOT NULL,
  `chq_no` varchar(20) NOT NULL,
  `chq_date` date NOT NULL,
  `bank` varchar(50) NOT NULL,
  `bill_no` varchar(20) NOT NULL,
  `bill_date` date NOT NULL,
  `details` varchar(100) NOT NULL,
  `payble` varchar(50) NOT NULL,
  `receive_amt` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marrige_receipt`
--

INSERT INTO `marrige_receipt` (`id`, `ref_id`, `receipt_year`, `receipt_num`, `receipt_no`, `receipt_date`, `collection_no`, `counter_no`, `receive_from`, `amt`, `amt_words`, `function`, `mode`, `amt2`, `chq_no`, `chq_date`, `bank`, `bill_no`, `bill_date`, `details`, `payble`, `receive_amt`, `total`) VALUES
(3, '3', 2019, 14246, '2019CCMC14246', '2019-06-28', '1', '1', 'रणजीत मुरलीधर खोब्रागडे ', '350', 'Three Hundred Fifty ', 'Marriage', 'CASH', '350', '', '0000-00-00', '', '2019CCMC14246', '2019-06-28', 'Marriage', '350', '350', '350'),
(2, '2', 2019, 14245, '2019CCMC14245', '2019-06-28', '1', '1', 'प्रसाद किशनराव  स्वान ', '450', 'Four Hundred Fifty ', 'Marriage', 'CASH', '450', '', '0000-00-00', '', '2019CCMC14245', '2019-06-28', 'Marriage', '450', '450', '450'),
(4, '4', 2019, 14247, '2019CCMC14247', '2019-06-28', '1', '1', 'देवेंद्र रविंद मल्लेलवार ', '250', 'Two Hundred Fifty ', 'Marriage', 'CASH', '250', '', '0000-00-00', '', '2019CCMC14247', '2019-06-28', 'Marriage', '250', '250', '250'),
(5, '5', 2019, 14248, '2019CCMC14248', '2019-07-05', '1', '1', 'मनीष संपत कदम ', '450', 'Four Hundred Fifty ', 'Marriage', 'CASH', '450', '', '0000-00-00', '', '2019CCMC14248', '2019-07-05', 'Marriage', '450', '450', '450'),
(6, '6', 2019, 14249, '2019CCMC14249', '2019-06-28', '1', '1', 'सिंगापूरम विष्णूवर्धन रेड्डी ', '250', 'Two Hundred Fifty ', 'Marriage', 'CASH', '250', '', '0000-00-00', '', '2019CCMC14249', '2019-06-28', 'Marriage', '250', '250', '250'),
(7, '7', 2019, 14250, '2019CCMC14250', '2019-06-29', '1', '1', 'प्रवीण सुधाकर पाल ', '450', 'Four Hundred Fifty ', 'Marriage', 'CASH', '450', '', '0000-00-00', '', '2019CCMC14250', '2019-06-29', 'Marriage', '450', '450', '450'),
(8, '8', 2019, 14251, '2019CCMC14251', '2019-06-29', '1', '1', 'रितेश रमेश सावलकर ', '450', 'Four Hundred Fifty ', 'Marriage', 'CASH', '450', '', '0000-00-00', '', '2019CCMC14251', '2019-06-29', 'Marriage', '450', '450', '450'),
(9, '10', 2019, 14252, '2019CCMC14252', '2019-06-29', '1', '1', 'प्रफुल मनोहरराव दांडेकर ', '250', 'Two Hundred Fifty ', 'Marriage', 'CASH', '250', '', '2019-06-29', '', '2019CCMC14252', '2019-06-29', 'Marriage', '0', '250', '0'),
(10, '11', 2019, 14253, '2019CCMC14253', '2019-07-01', '1', '1', 'संतोष मनोहर एडलावार ', '450', 'Four Hundred Fifty ', 'Marriage', 'CASH', '450', '', '0000-00-00', '', '2019CCMC14253', '2019-07-01', 'Marriage', '450', '450', '450'),
(11, '9', 2019, 14254, '2019CCMC14254', '2019-07-01', '1', '1', 'परागकुमार  हिराचंद अंबादे ', '350', 'Three Hundred Fifty ', 'Marriage', 'CASH', '350', '', '0000-00-00', '', '2019CCMC14254', '2019-07-01', 'Marriage', '350', '350', '350'),
(12, '12', 2019, 14255, '2019CCMC14255', '2019-07-01', '1', '1', 'प्रशांत प्रभाकर भलवे', '350', 'Three Hundred Fifty ', 'Marriage', 'CASH', '350', '', '0000-00-00', '', '2019CCMC14255', '2019-07-01', 'Marriage', '350', '350', '350'),
(13, '13', 2019, 14256, '2019CCMC14256', '2019-07-02', '1', '1', 'विजय कवडू कोडापे ', '450', 'Four Hundred Fifty ', 'Marriage', 'CASH', '450', '', '0000-00-00', '', '2019CCMC14256', '2019-07-01', 'Marriage', '450', '450', '450'),
(15, '14', 2019, 14257, '2019CCMC14257', '2019-07-02', '1', '1', 'अमित चिंतामण कुर्वे ', '250', 'Two Hundred Fifty ', 'Marriage', 'CASH', '250', '', '0000-00-00', '', '2019CCMC14257', '2019-07-01', 'Marriage', '250', '250', '250');

-- --------------------------------------------------------

--
-- Table structure for table `marrige_registration`
--

CREATE TABLE `marrige_registration` (
  `id` int(11) NOT NULL,
  `autono` int(11) NOT NULL,
  `regno` varchar(15) NOT NULL,
  `child_aadhar_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `girl_aadhar_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `zone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ward` varchar(50) CHARACTER SET utf8 NOT NULL,
  `g_contact` varchar(10) CHARACTER SET utf8 NOT NULL,
  `b_contact` varchar(10) CHARACTER SET utf8 NOT NULL,
  `g_name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `c_name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `g_address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `c_address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `g_tahsil` varchar(50) CHARACTER SET utf8 NOT NULL,
  `c_tahsil` varchar(50) CHARACTER SET utf8 NOT NULL,
  `g_dist` varchar(50) CHARACTER SET utf8 NOT NULL,
  `c_dist` varchar(50) CHARACTER SET utf8 NOT NULL,
  `b_previous_name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `g_previous_name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `b_previous_address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `g_previous_address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `b_previous_tahsil` varchar(50) CHARACTER SET utf8 NOT NULL,
  `g_earlier_tahsil` varchar(50) CHARACTER SET utf8 NOT NULL,
  `b_previous_dist` varchar(50) CHARACTER SET utf8 NOT NULL,
  `g_previous_dist` varchar(50) CHARACTER SET utf8 NOT NULL,
  `marrige_address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `wedding_place` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date_of_marrige` date NOT NULL,
  `c_birth_date` date NOT NULL,
  `g_birth_date` date NOT NULL,
  `c_age` varchar(10) CHARACTER SET utf8 NOT NULL,
  `g_age` varchar(10) CHARACTER SET utf8 NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marrige_registration`
--

INSERT INTO `marrige_registration` (`id`, `autono`, `regno`, `child_aadhar_no`, `girl_aadhar_no`, `zone`, `ward`, `g_contact`, `b_contact`, `g_name`, `c_name`, `g_address`, `c_address`, `g_tahsil`, `c_tahsil`, `g_dist`, `c_dist`, `b_previous_name`, `g_previous_name`, `b_previous_address`, `g_previous_address`, `b_previous_tahsil`, `g_earlier_tahsil`, `b_previous_dist`, `g_previous_dist`, `marrige_address`, `wedding_place`, `date_of_marrige`, `c_birth_date`, `g_birth_date`, `c_age`, `g_age`, `reg_date`) VALUES
(2, 0, '000866', '334552338045', '227957961375', '2', '23', '9730069862', '9730069862', 'PRASAD KISHORRAO SWAN ', 'प्रसाद किशोरराव स्वान ', 'KOTWALI WARD, NEAR RAMDEV BABA MANDIR, CHANDRAPUR ', 'कोतवाली वार्ड, रामदेव बाबा मंदिर जवळ, चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'KIRAN CHANDRASHEKHAR RAIPURKAR ', 'किरण चंद्रशेखर रायपूरकर ', 'PLOT NO 27,CHITANVIS  NAGAR, NAGPUR ', 'प्लॉट न २७, चिटनवीस नगर , नागपूर ', 'NAGPUR ', 'नागपूर ', 'NAGPUR ', 'नागपूर ', 'MAHAKALKAR SABHAGRUH, BEHIND NIT GARDEN, DATTATRAY NAGAR, NAGPUR ', 'महाकाळकर सभागृह,एन आय टी गार्डेन च्या बाजूला, दत्त', '2015-05-08', '1980-09-20', '1988-08-08', '38', '30', '2019-06-28'),
(3, 0, '000867', '2403351401116', '8332242169041', '1', '11', '7387926603', '7387926603', 'RANJIT MURLIDHAR KHOBRAGADE ', 'रणजीत मुरलीधर खोब्रागडे ', 'MAJAR STOR GATE, VAIDYANGAR ', 'मेजर स्टोर गेट, वैद्यनगर  वार्ड न १, ताडोबा रोड, तुकूम, चंद्रपूर ', 'CHANDRAPUR', 'चंद्रपूर ', 'CHANDRAPUR', 'चंद्रपूर ', 'PRAMODINI BALKRUSHNA BUTLE ', 'प्रमोदिनी बाळकृष्ण बूटले ', 'PLOT NO 9/10, SAIPRASAD APARTMENT RAMKRUSHNA SOCIETY, NARENDRA NAGAR, NAGPUR -15', 'प्लॉट न ९/१०, साई प्रसाद अपार्टमेट , रामकृष्ण सोसायटी, नरेंद्र नगर, नागपूर - १५ ', 'NAGPUR ', 'नागपूर ', 'NAGPUR ', 'नागपूर ', 'DR. BABASAHEB AMBEDKAR SABHAGRUH, NAGPUR ROAD, CHANDRAPUR ', 'डॉ. बाबासाहेब आंबेडकर सभागृह नागपूर रोड, चंद्रपूर ', '2019-01-29', '1990-04-10', '1992-05-21', '29', '27', '2019-06-28'),
(4, 0, '000868', '359447636777', '865880802283', '1', '11', '8208901794', '8208901794', 'DEVENDRA RAVINDRA MALLELWAR ', 'देवेन्द्र रविन्द्र  मल्लेलवार ', 'INFRONT OF LAW COLLEGE, NIRMAN NAGAR, TADOBA ROAD, TUKUM, CHANDRAPUR ', 'लॉ कॉलेज समोर, निर्माण नगर, ताडोबा रोड, तुकूम, चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'SHWETA VIJAY BADALWAR ', 'श्वेता विजय बादलवार ', 'RAMNAGAR, NEAR BHARAT BHAWAN, GONDIYA ', 'रामनगर, भारत भवन जवळ, गोंदिया ', 'GONDIYA ', 'गोंदिया ', 'GONDIYA ', 'गोंदिया ', 'CHANDNI CELEBRATION HALL, KAMTEE ROAD, NAGPUR ', 'चांदणी सेलीब्रेशन हॉल , कामठी रोड, नागपूर ', '2019-03-25', '1990-10-05', '1997-12-25', '28', '21', '2019-06-28'),
(5, 0, '000869', '874634703199', '802293113898', '1', '13', '8237797771', '8237797771', 'MANISH SAMPAT KADAM ', 'मनीष संपत कदम ', 'NEAR JANTA COLLEGE, CIVIL LINE, CHANDRAPUR ', 'जनता कॉलेज जवळ, सिव्हील लाईन , चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'CHANDRAPUR ', 'चाद्न्रापूर ', 'NAMRATA VITTHAL GOLAMBADE ', 'नम्रता विठ्ठल गोलांबडे ', 'AT POST KARANJKHOL, DATT AADI TAH MAHAD,, DIST RAIGAD', 'मु पोस्ट करंजखोल, दत्त आडी , तह  महाड, जी रायगड ', 'RAIGAD ', 'रायगड ', 'RAIGAD', 'रायगड ', 'AT BRIDE HOME KARANJKHOL, DATT AADI TAH MAHAD,, DIST RAIGAD', 'वधूचे राहते घरी करंजखोल, दत्त आडी , तह  महाड, जी ', '2015-03-12', '1985-05-28', '1993-10-10', '34', '25', '2019-06-28'),
(6, 0, '000870', '314043221133', '576726249787', '2', '23', '9949121908', '9949121908', 'SINGAPURAM VISHNUVARDHAN REDDY ', 'सिंगापूरम विष्णूवर्धन रेड्डी ', 'PULMAMIDI, VILL.MANDAL NAWABPET ,DIST VIKARABAD (RANGAREDDY) STATE TELANGANA ', 'पुलमामिडी , गाव मंडल नवाबपेट, जी विकाराबाद, (रंगारेड्डी ) स्टेट तेलंगाना ', 'NAWBPET ', 'नवाबपेट ', 'RANGAREDDY ', 'रंगरेड्डी ', 'MONALI SANJAY BITTURWAR ', 'मोनाली संजय बिट्टूरवार ', 'DADMAHAL WARD, CHANDRAPUR ', 'दादमहाल वार्ड, चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'SHANTANU LAWN,  NEAR RADHAKRUSHN TALIKES, CHANDRAPUR ', 'शंतनू लॉन, राधाकृष्ण टाकीज जवळ, चंद्रपूर ', '2019-05-07', '1994-05-10', '1992-12-23', '25', '26', '2019-06-28'),
(7, 0, '000871', '633775125353', '831273472322', '2', '27', '9923755114', '9923755114', 'PRAVIN SUDHAKAR PAL ', 'प्रवीण सुधाकर पाल ', 'NEAR D.ED COLLEGE, BABUPETH WARD, CHANDRAPUR ', 'डी,एड कॉलेज जवळ, बाबूपेठ वार्ड, चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'NIRASHA  HIRAMAN BHIVANKAR ', 'निराशा  हिरामण भिवनकर ', 'DEWADA (BUJ) GOWARDHAN, CHANDRAPUR ', 'देवाडा (बूज ) , गोवर्धन, तह जी चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'AT BRIDE HOME DEWADA (BUJ) GOWARDHAN, TAH. DIST.CHANDRAPUR ', 'वधूचे राहते घरी देवाडा (बूज ) , गोवर्धन, तह जी चंद', '2016-05-01', '1988-10-10', '1992-06-30', '30', '26', '2019-06-29'),
(8, 0, '000872', '889342736157', '215906832555', '2', '20', '8605410315', '8605410315', 'RITESH RAMESH SAWALKAR ', 'रितेश रमेश सावलकर ', 'ADARSH IHAR, ADARSH NAGAR WARD 56, KORBA GEWARA,BASTI, DIST CHHATISHGARTH 495454', 'आदर्श विहार, आदर्श नगर वार्ड ५६, कोरबा , गेवरा बस्ती, छत्तीसगड ४९५४५४ ', 'CHHATISHGARTH 495454', 'छत्तीसगड ४९५४५४ ', 'CHHATISHGARTH 495454', 'छत्तीसगड ४९५४५४ ', 'PRANALI BABURAO SWAN ', 'प्रणाली बाबुराव स्वान ', 'BALAJI WARD, MILAN CHOWK, NEAR SHARDA TYPING, CHANDRAPUR ', 'बालाजी वार्ड, मिलन चौक, शारदा टायपिंग जवळ, चंद्रपूर ', 'CHDNRAPUR ', 'चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'SANT NAMDEV MAHARAJ ,MANDIR, BALAJI WARD, CHANDRAPUR ', 'संत नामदेव महाराज मंदिर,बालाजी वार्ड, चंद्रपूर ', '2016-07-13', '1981-02-17', '1986-11-28', '35', '29', '2019-06-29'),
(9, 0, '000873', '549411893753', '385113187819', '2', '28', '7972654482', '7972654482', 'PARAGKUMAR HIRACHAND AMBADE ', 'परागकुमार  हिराचंद अंबादे ', 'BHIWAPUR WARD, GAWALI MOHALLA, BABUPETH, CHANDRAPUR', 'भिवापूर वार्ड, गवळी मोहल्ला, बाबूपेठ, चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'TRUPTI HARISHCHANDRA LADE ', 'तृप्ती हरिशचंद्र लाडे ', 'GOURI TALAV, BABUPETH, CHANDRAPUR ', 'गौरी तलाव, बाबूपेठ, चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'SHATANU LAWN, NEAR RADHAKRUSHN TALKIES, CHANDRAPUR ', 'शंतनू लॉन, राधाकृष्ण टाकीज जवळ, चंद्रपूर ', '2019-02-13', '1987-11-04', '1991-01-04', '31', '28', '2019-06-29'),
(10, 0, '000874', '534393474876', '781219681334', '1', '11', '7397975734', '7397975734', 'PRAFUL MANOHARRAO DANDEKAR ', 'प्रफुल मनोहरराव दांडेकर ', 'AT BHOSA, POST KANDHALI, TAH SAMUDRAPUR, DIST WARDHA ', 'मु भोसा, पोस्ट कांढली,, तह समुद्रपूर, जी वर्धा ', 'SAMUDRAPUR ', 'समुद्रपूर ', 'WARDHA ', 'वर्धा ', 'SHUBHANGI SHRAWAN NANNAWARE ', 'शुभांगी श्रावण नन्नावरे ', ',  NEAR GURUDWARA ROAD,BEHIND DEVTALE NURSING HOME, TUKUM, CHANDRAPUR ', ' गुरुद्वारा रोड जवळ  देवतळे नर्सिग होम मागे ,तुकूम, चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'MAHESH BHAWAN, TUKUM, CHANDRAPUR ', 'महेश भवन , तुकूम चंद्रपूर ', '2019-06-26', '1990-07-07', '1991-08-10', '28', '27', '2019-06-29'),
(11, 0, '000875', '221806603433', '412266067962', '3', '31', '9423675021', '9423675021', 'SANTOSH MANOHAR EDLAWAR ', 'संतोष मनोहर एडलावार ', 'SARAKAR NAGAR, CHAWHAN COLONY, PLOT NO 28, CHANDRAPUR ', 'सरकार नगर, चव्हाण कॉलोनी, प्लॉट न २८, चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'SONALI BHAGWANRAO JAJURLEY', 'सोनाली भगवानराव जाजुर्ले ', 'NEAR AAYCHIT MANDIR, NAGPUR ', 'आयचीत  मंदिर जवळ, नागपूर ', 'NAGPUR ', 'नागपूर ', 'NAGPUR ', 'नागपूर ', 'AARY SAMAJ MANDIR, HANSAPURI, NAGPUR ', 'आर्य समाज मंदिर, हंसापुरी, नागपूर ', '2008-03-27', '1980-09-12', '1983-03-05', '27', '25', '2019-07-01'),
(12, 0, '000876', '984401462747', '732723005552', '3', '33', '9595510205', '9595510205', 'PRASHANT PRABHAKAR BHALVE ', 'प्रशांत प्रभाकर भलवे', 'SAVITRIBAI FULE CHOWK, INDIRA NAGAR, CHANDRAPUR ', 'सावित्रीबाई फुले चौक, इंदिरा नगर,चंद्रपूर ', 'CAHNDRPUR ', 'चंद्रपूर ', 'CHANDRPUR ', 'चंद्रपूर ', 'USHATAI VIJAY KASTURE ', 'उषाताई विजय कस्तुरे ', 'AT POST TAH  POBHURNA , DIST CHANDRAPUR ', 'मु पोस्ट तह पोभूर्णा , जी चंद्रपूर ', 'POBHURNA ', 'पोभूर्णा', 'CHANDRAPUR ', 'चंद्रपूर ', 'SUMAN MANGAL KARYALAYA, POBHURNA , DIST CHANDRAPUR ', 'सुमन मंगल कार्यालय, पोभूर्णा , जी चंद्रपूर ', '2019-03-29', '1994-02-15', '1997-07-25', '25', '21', '2019-07-01'),
(13, 0, '000877', '659770135514', '688035361402', '1', '12', '9527471098', '9527471098', 'VIJAY KAWADU KODAPE ', 'विजय कवडू कोडापे ', 'JAGANNATH BABA NAGAR, CHANDRAPUR ', 'जगन्नाथ बाबा नगर, चंद्रपूर ', 'CHANDRAPUR ', '`चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'JYOTSNA NARAYAN KUDE ', 'ज्योत्स्ना  नारायण कुडे ', 'NEAR JILHA SAMANYA RUGNALAYA,, MUL , TAH MUL, DIST. CHANDRAPUR ', 'जिल्हा सामान्य रुग्णालय जवळ, मुल तह मुल , जी चंद्रपूर ', 'MUL ', '`मुल ', 'CHANDRAPUR ', 'चंद्रपूर ', 'RAMLILA  BHAWAN,  MUL , TAH MUL,CHANDRAPUR ', 'रामलीला भवन, मुल तह मुल , जी चंद्रपूर ', '2016-06-02', '1981-09-27', '1984-08-26', '34', '31', '2019-07-01'),
(14, 0, '000878', '685286733471', '697457531569', '1', '11', '9405246688', '9975450618', 'AMIT CHINTAMAN KURVE ', 'अमित चिंतामण कुर्वे ', 'PATHAK COLONY, BEHIND NEW RTO OFFICE, FULCHUR NAKA, GONDIYA 441614 ', 'पाठक कॉलोनी, न्यू आर टी ओ आफिस च्या मागे, गोंदिया ४४१६१४ ', 'GONDIYA 441614 ', 'गोंदिया ४४१६१४ ', 'GONDIYA 441614 ', 'गोंदिया ४४१६१४ ', 'PRANALI RAMAKANT HARSHE ', 'प्रणाली रमाकांत हर्षे ', 'SHRADHA NAGAR, TADOBA ROAD, TUKUM, CHANDRAPUR ', 'श्रद्धा नगर, ताडोबा रोड, तुकूम, चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'CHANDRAPUR ', 'चंद्रपूर ', 'MAHESH BHAWAN, TUKUM, CHANDRAPUR ', 'महेश भवन, तुकूम, चंद्रपूर ', '2019-04-17', '1990-09-22', '1991-07-17', '28', '27', '2019-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `marrige_upload`
--

CREATE TABLE `marrige_upload` (
  `id` int(11) NOT NULL,
  `ref_id` varchar(10) NOT NULL,
  `f_1` varchar(50) NOT NULL,
  `f_2` varchar(50) NOT NULL,
  `f_3` varchar(50) NOT NULL,
  `f_4` varchar(50) NOT NULL,
  `f_5` varchar(50) NOT NULL,
  `t_1` varchar(50) NOT NULL,
  `t_2` varchar(50) NOT NULL,
  `t_3` varchar(50) NOT NULL,
  `t_4` varchar(50) NOT NULL,
  `t_5` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marrige_voucher`
--

CREATE TABLE `marrige_voucher` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `reason` varchar(100) CHARACTER SET utf8 NOT NULL,
  `no_of_copy` varchar(10) NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8 NOT NULL,
  `payble_amt` varchar(10) NOT NULL,
  `year` varchar(4) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `receipt_no` varchar(20) NOT NULL,
  `sequence_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marrige_voucher`
--

INSERT INTO `marrige_voucher` (`id`, `name`, `mobile`, `reason`, `no_of_copy`, `remark`, `payble_amt`, `year`, `add_date`, `receipt_no`, `sequence_no`) VALUES
(1, 'आरजू शेख ', '8866152292', 'आरजू शेख ', '5', 'आरजू शेख ', '125', '2019', '2019-07-01 18:56:52', '00001CMC/2019', 1),
(2, 'arz', '0', 'arz', '5', 'arz', '125', '2019', '2019-07-05 11:47:22', '00002CMC/2019', 2),
(3, 'aa', '', 'aa', '20', 'aa', '500', '2019', '2019-07-05 12:55:04', '00003CMC/2019', 3),
(4, 'आरजू शेख 2', '8866152292', 'आरजू शेख ', '5', 'आरजू शेख ', '125', '2019', '2019-07-06 11:36:43', '00005CMC/2019', 5);

-- --------------------------------------------------------

--
-- Table structure for table `noc_certificate`
--

CREATE TABLE `noc_certificate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `house_no` varchar(15) CHARACTER SET utf8 NOT NULL,
  `ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `language` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(4) NOT NULL,
  `unique_no` varchar(15) NOT NULL,
  `sr_no` int(5) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `remark` varchar(50) NOT NULL,
  `upload_doc` varchar(50) NOT NULL,
  `addDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `occuption_certificate`
--

CREATE TABLE `occuption_certificate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `municipalty_ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(10) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `language` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year2` varchar(4) NOT NULL,
  `unique_no` varchar(15) NOT NULL,
  `sr_no` int(5) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `remark` varchar(50) NOT NULL,
  `upload_doc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outstanding_certificate`
--

CREATE TABLE `outstanding_certificate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `income_no` varchar(15) CHARACTER SET utf8 NOT NULL,
  `app_date` date NOT NULL,
  `name2` varchar(50) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `res_date` date NOT NULL,
  `language` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(4) NOT NULL,
  `unique_no` varchar(15) NOT NULL,
  `sr_no` int(5) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `remark` varchar(50) NOT NULL,
  `upload_doc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `part_certificate`
--

CREATE TABLE `part_certificate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ward_no` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `municipality_ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `language` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(4) NOT NULL,
  `unique_no` varchar(15) NOT NULL,
  `sr_no` int(5) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `remark` varchar(50) NOT NULL,
  `upload_doc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plant_certificate`
--

CREATE TABLE `plant_certificate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `municipality_ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `language` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(4) NOT NULL,
  `unique_no` varchar(15) NOT NULL,
  `sr_no` int(5) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `remark` varchar(50) NOT NULL,
  `upload_doc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property_transfer_record`
--

CREATE TABLE `property_transfer_record` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `municipalty_ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `property_no` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `language` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(4) NOT NULL,
  `unique_no` varchar(15) NOT NULL,
  `sr_no` int(5) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `remark` varchar(50) NOT NULL,
  `upload_doc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_transfer_record`
--

INSERT INTO `property_transfer_record` (`id`, `name`, `ward_no`, `municipalty_ward_no`, `property_no`, `date`, `language`, `year`, `unique_no`, `sr_no`, `user_id`, `status`, `remark`, `upload_doc`) VALUES
(1, 'ds', 'ds', '43', '34', '2019-06-25', 'marathi', '2019', '2019CMCC0100001', 1, 'admin', 'Approved', '', ''),
(2, 'ajaz', '123', '132', '222', '2019-06-27', 'marathi', '2019', '2019CMCC0100002', 2, '9904760745', 'Pending', '', ''),
(3, 'Sagar', '456', '444', '8546', '2019-07-01', 'marathi', '2019', '2019CMCC0100003', 3, '9904760745', 'Pending', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `resident_certificate`
--

CREATE TABLE `resident_certificate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `word_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `municipality_word_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(10) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `language` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year2` varchar(4) NOT NULL,
  `unique_no` varchar(15) NOT NULL,
  `sr_no` int(5) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `remark` varchar(50) NOT NULL,
  `upload_doc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff_master`
--

CREATE TABLE `staff_master` (
  `id` int(11) NOT NULL,
  `department_id` varchar(10) NOT NULL,
  `zone` varchar(10) NOT NULL,
  `role` varchar(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `add_date` date NOT NULL,
  `modify_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_master`
--

INSERT INTO `staff_master` (`id`, `department_id`, `zone`, `role`, `name`, `mobile`, `email`, `user_id`, `status`, `add_date`, `modify_date`) VALUES
(1, '2', 'zone_1', 'staff', 'arzoo', '8866152292', 'a@a.com', 'arzoo', 1, '2019-07-02', '0000-00-00'),
(2, '2', 'zone_1', 'staff', 'आरजू शेख ', '8866152292', 'a@gmail.com', 'arzoo123', 1, '2019-07-02', '2019-07-02'),
(3, '2', 'zone_1', 'staff', 'ajaz', '8866152292', 'a@a.com', 'ajaz', 1, '2019-07-03', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`id`, `name`, `email`, `mobile`, `password`, `status`) VALUES
(1, 'arzoo', '', '8866152292', '123456', 0),
(2, 'arzoo', '', '8866152292', '123456', 1),
(3, 'ajaz', 'ajaz@gmail.com', '9904760745', '123', 1),
(4, 'sameer andankar', 'zodiactechsoft@gmail.com', '9325695631', 'admin', 1),
(5, 'Dhiraj', 'dhirajpeocit123@gmail.com', '8390966444', '', 0),
(6, 'Dhiraj junarkar', 'dhiraj44@hotmail.com', '7083828076', 'dhiraj@123', 1),
(7, 'ajaz', 'ajaz@gmail.com', '9904760745', '112233', 1),
(8, 'digvijay', 'digvijay_warade@yahoo.com', '9028665254', 'prashik260', 1),
(9, 'digvijay warade', 'digvijay_warade@yahoo.com', '9075613611', 'sanika26', 1),
(10, 'Ajazkhan', 'ajazkhanpathan14@gmail.com', '7016158344', '111111', 1),
(11, 'Vishal Akbari', 'vishal.rkcet@gmail.com', '7574865414', '1234', 1),
(12, 'Dhiraj Junarkar', 'dhiraj44@hotmail.com', '8390966444', 'dhiraj1990', 1),
(13, 'sameer andankar', 'sam.andankar1990@gmail.com', '9970255587', '', 0),
(14, 'vasanti', 'vasantibahadure@gmail.com', '9423416948', 'vasantib', 1),
(15, 'ARTI ROBERT JOSEPH', 'naharkararti@gmail.com', '8087407567', 'Aarti@777', 1),
(16, 'sameer andankar', 'zodiactechsoft@gmail.com', '9325695631', '16021990', 1),
(17, 'sarita', 'saritamahatav83@gmail.com', '9588492821', 'Pinku@2011', 1),
(18, 'sarita', 'saritamahatav83@gmail.com', '9588492821', 'Pinku@2011', 1),
(19, 'sarita', 'saritamahatav83@gmail.com', '9588492821', 'sam1602', 1),
(20, 'sarita', 'saritamahatav83@gmail.com', '9588492821', '12345', 1),
(21, 'sarita', 'saritamahatav83@gmail.com', '9588492821', 'Pinku@2011', 1),
(22, 'sarita', 'saritamahatav83@gmail.com', '9588492821', 'Pinku@2011', 1),
(23, 'sarita', 'saritamahatav83@gmail.com', '9588492821', 'Pinku@2011', 1),
(24, 'sarita', 'saritamahatav83@gmail.com', '9588492821', 'Pinku@2011', 1),
(25, 'sarita', 'saritamahatav83@gmail.com', '9588492821', 'Pinku@2011', 1),
(26, 'sameer andankar', 'zodiactechsoft@gmail.com', '8983263896', '1602', 1),
(27, 'sarita', 'saritamahatav83@gmail.com', '9588492821', 'Pinku@2011', 1),
(28, 'sarita', 'saritamahatav83@gmail.com', '9588492821', '', 0),
(29, 'sarita', 'saritamahatav83@gmail.com', '9588492821', '', 0),
(30, 'sarita', 'saritamahatav83@gmail.com', '9588492821', '', 0),
(31, 'sarita', 'saritamahatav83@gmail.com', '9588492821', '', 0),
(32, 'sarita', 'saritasberiya@gmail.com', '9588492821', '', 0),
(33, 'sarita', 'saritamahatav83@gmail.com', '9588492821', 'Pinku@2011', 1),
(34, 'arvind nikure', 'Arvind@123', '9673577664', 'nikure', 1),
(35, 'poonam mahatav', 'mahatav.punam@gmail.com', '7083879254', 'poonam', 1),
(36, 'kishori gharote', '123@gmail.com', '9423115475', 'kishori@12', 1),
(37, 'kishori gharote', '123@gmail.com', '9423115475', 'kishori', 1),
(38, 'sarita', 'saritasberiya@gmail.com', '9588492821', 'Pinku@2011', 1),
(39, 'arvind nikure', 'Arvind@123', '9673577664', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `zone_certificate`
--

CREATE TABLE `zone_certificate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `municipality_ward_no` varchar(10) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `language` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(4) NOT NULL,
  `unique_no` varchar(15) NOT NULL,
  `sr_no` int(5) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `remark` varchar(50) NOT NULL,
  `upload_doc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `birth_appointment`
--
ALTER TABLE `birth_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birth_documents`
--
ALTER TABLE `birth_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `birth_registration`
--
ALTER TABLE `birth_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_counter`
--
ALTER TABLE `cash_counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_counter_challan`
--
ALTER TABLE `cash_counter_challan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `construction_certificate`
--
ALTER TABLE `construction_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_master`
--
ALTER TABLE `department_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doc_upload`
--
ALTER TABLE `doc_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fire_fighting`
--
ALTER TABLE `fire_fighting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fire_fighting_noc`
--
ALTER TABLE `fire_fighting_noc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formd`
--
ALTER TABLE `formd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inheritance_certificate`
--
ALTER TABLE `inheritance_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_master`
--
ALTER TABLE `login_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marrige_challan`
--
ALTER TABLE `marrige_challan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marrige_documents`
--
ALTER TABLE `marrige_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marrige_receipt`
--
ALTER TABLE `marrige_receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marrige_registration`
--
ALTER TABLE `marrige_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marrige_upload`
--
ALTER TABLE `marrige_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marrige_voucher`
--
ALTER TABLE `marrige_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noc_certificate`
--
ALTER TABLE `noc_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `occuption_certificate`
--
ALTER TABLE `occuption_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outstanding_certificate`
--
ALTER TABLE `outstanding_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `part_certificate`
--
ALTER TABLE `part_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant_certificate`
--
ALTER TABLE `plant_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_transfer_record`
--
ALTER TABLE `property_transfer_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resident_certificate`
--
ALTER TABLE `resident_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_master`
--
ALTER TABLE `staff_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zone_certificate`
--
ALTER TABLE `zone_certificate`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `birth_appointment`
--
ALTER TABLE `birth_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `birth_documents`
--
ALTER TABLE `birth_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `birth_registration`
--
ALTER TABLE `birth_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cash_counter`
--
ALTER TABLE `cash_counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cash_counter_challan`
--
ALTER TABLE `cash_counter_challan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `construction_certificate`
--
ALTER TABLE `construction_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department_master`
--
ALTER TABLE `department_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doc_upload`
--
ALTER TABLE `doc_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fire_fighting`
--
ALTER TABLE `fire_fighting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fire_fighting_noc`
--
ALTER TABLE `fire_fighting_noc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formd`
--
ALTER TABLE `formd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `inheritance_certificate`
--
ALTER TABLE `inheritance_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_master`
--
ALTER TABLE `login_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `marrige_challan`
--
ALTER TABLE `marrige_challan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `marrige_documents`
--
ALTER TABLE `marrige_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `marrige_receipt`
--
ALTER TABLE `marrige_receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `marrige_registration`
--
ALTER TABLE `marrige_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `marrige_upload`
--
ALTER TABLE `marrige_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marrige_voucher`
--
ALTER TABLE `marrige_voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `noc_certificate`
--
ALTER TABLE `noc_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `occuption_certificate`
--
ALTER TABLE `occuption_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `outstanding_certificate`
--
ALTER TABLE `outstanding_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `part_certificate`
--
ALTER TABLE `part_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plant_certificate`
--
ALTER TABLE `plant_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property_transfer_record`
--
ALTER TABLE `property_transfer_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resident_certificate`
--
ALTER TABLE `resident_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_master`
--
ALTER TABLE `staff_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `zone_certificate`
--
ALTER TABLE `zone_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
