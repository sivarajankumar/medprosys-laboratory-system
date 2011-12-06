-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2011 at 02:57 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `indonusa_rsmb`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `company_status` tinyint(1) NOT NULL,
  `company_cp` varchar(255) NOT NULL,
  `company_tlp` varchar(15) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `company_city` varchar(255) NOT NULL,
  `company_zip` varchar(5) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_status`, `company_cp`, `company_tlp`, `company_address`, `company_city`, `company_zip`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 'PT Kreston International', 1, 'Tan Siddharta', '01258000', 'Jl.HR Rasuna  Saild Kav 5', 'DKI  Jakarta', '40252', 0, '2011-11-05 11:01:54', 0, '0000-00-00 00:00:00'),
(2, 'Suhendar 2', 1, 'suhendar', 'Suhendar', 'Suhendar', 'Suhendar', '12222', 0, '2011-11-05 00:00:00', 0, '2011-11-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE IF NOT EXISTS `credit_card` (
  `card_id` int(11) NOT NULL AUTO_INCREMENT,
  `card_name` varchar(255) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_bank` varchar(255) NOT NULL,
  `card_status` tinyint(1) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`card_id`, `card_name`, `card_type`, `card_bank`, `card_status`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 'ANZ Visa', 'Visa', 'Anz', 1, 0, '2011-11-05 11:01:54', 0, '0000-00-00 00:00:00'),
(2, 'BRQ', '', 'BRQ', 1, 0, '2011-11-05 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'Mantapku', '', 'Mantap', 1, 0, '2011-11-05 00:00:00', 0, '2011-11-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `doctor_id` double NOT NULL AUTO_INCREMENT,
  `spec_id` int(11) NOT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  `doctor_gender` enum('Male','Female') DEFAULT NULL,
  `doctor_birthplace` varchar(255) DEFAULT NULL,
  `doctor_birthday` date DEFAULT NULL,
  `doctor_status` tinyint(1) NOT NULL,
  `doctor_address` varchar(244) NOT NULL,
  `doctor_city` varchar(255) DEFAULT NULL,
  `doctor_tlp` varchar(255) DEFAULT NULL,
  `doctor_hp` varchar(255) DEFAULT NULL,
  `doctor_zip` varchar(5) NOT NULL,
  `created_user` double DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `spec_id`, `doctor_name`, `doctor_gender`, `doctor_birthplace`, `doctor_birthday`, `doctor_status`, `doctor_address`, `doctor_city`, `doctor_tlp`, `doctor_hp`, `doctor_zip`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 2, 'dr.Darwis Hartono  MPH', 'Male', 'Bandung', '2011-11-18', 1, 'Jl.Pejaten Village', 'Bandung', 'Bandung', '08532232', '50877', 0, '2011-11-05 11:01:54', 0, '2011-11-16 00:00:00'),
(2, 3, 'dr.Suhendar', 'Male', 'Bandung', '2011-01-01', 1, 'Jl.Pejaten Village', 'Bandung', '021752333', '0852220776', '40252', 0, '2011-11-10 00:00:00', 0, '2011-11-16 00:00:00'),
(3, 1, 'Dr.Mahatma Gandhi', 'Male', 'Bandung', '2009-01-01', 1, 'Jl.H.Mughni No.39', 'Bandung', '021780000', '085222054', '40252', 0, '2011-11-15 00:00:00', 0, '2011-11-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_specialization`
--

CREATE TABLE IF NOT EXISTS `doctor_specialization` (
  `spec_id` int(11) NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(255) NOT NULL,
  `spec_status` tinyint(1) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`spec_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `doctor_specialization`
--

INSERT INTO `doctor_specialization` (`spec_id`, `spec_name`, `spec_status`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 'General Practioner', 1, 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(2, 'Internist', 1, 0, '2011-11-06 20:37:10', 0, '0000-00-00 00:00:00'),
(3, 'Dentist', 1, 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(4, 'Aglutination', 0, 0, '2011-11-12 00:00:00', 0, '2011-11-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `general_admission`
--

CREATE TABLE IF NOT EXISTS `general_admission` (
  `admission_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `admission_charge` enum('Personal','Company','Insurance') NOT NULL,
  `visit_id` int(11) NOT NULL,
  `admission_status` tinyint(1) NOT NULL,
  `admission_lab` tinyint(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`admission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `general_admission`
--

INSERT INTO `general_admission` (`admission_id`, `company_id`, `admission_charge`, `visit_id`, `admission_status`, `admission_lab`, `patient_id`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 0, 'Personal', 1, 1, 1, 1, 0, '2011-11-12 23:38:12', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `general_labs`
--

CREATE TABLE IF NOT EXISTS `general_labs` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_no` varchar(255) NOT NULL,
  `date_sampling` date NOT NULL,
  `time_sampling` time NOT NULL,
  `date_result` date NOT NULL,
  `time_result` time NOT NULL,
  `admission_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `test_status` tinyint(1) NOT NULL,
  `paid_status` tinyint(1) NOT NULL,
  `test_price` decimal(10,0) NOT NULL,
  `test_disc` tinyint(3) NOT NULL,
  `test_pay` double NOT NULL,
  `test_cash_back` double NOT NULL,
  `visit_id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `general_labs`
--

INSERT INTO `general_labs` (`test_id`, `lab_no`, `date_sampling`, `time_sampling`, `date_result`, `time_result`, `admission_id`, `doctor_id`, `test_status`, `paid_status`, `test_price`, `test_disc`, `test_pay`, `test_cash_back`, `visit_id`, `card_id`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, '1111001', '2011-11-01', '12:00:00', '2011-11-11', '12:00:00', 1, 1, 1, 1, 2100000, 10, 2000000, 0, 0, 0, 0, '2011-11-12 23:47:48', 0, '2011-11-12 23:56:25');

-- --------------------------------------------------------

--
-- Table structure for table `general_lab_details`
--

CREATE TABLE IF NOT EXISTS `general_lab_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_result` varchar(255) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `general_lab_details`
--

INSERT INTO `general_lab_details` (`id`, `test_id`, `package_id`, `class_id`, `class_result`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 1, 1, 10, '22', 0, '2011-11-12 23:47:48', 0, '2011-11-13 00:07:39'),
(2, 1, 2, 17, '22', 0, '2011-11-12 23:47:48', 0, '2011-11-13 00:07:39'),
(3, 1, 2, 3, '22', 0, '2011-11-12 23:47:48', 0, '2011-11-13 00:07:39'),
(4, 1, 2, 6, '22', 0, '2011-11-12 23:47:48', 0, '2011-11-13 00:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `general_patient`
--

CREATE TABLE IF NOT EXISTS `general_patient` (
  `patient_id` double NOT NULL AUTO_INCREMENT,
  `no_rm` varchar(255) NOT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_initial` varchar(255) NOT NULL,
  `patient_status` tinyint(1) DEFAULT NULL,
  `patient_gender` varchar(255) DEFAULT NULL,
  `patient_birthplace` varchar(244) DEFAULT NULL,
  `patient_birthday` date DEFAULT NULL,
  `patient_address` varchar(255) NOT NULL,
  `patient_city` varchar(255) DEFAULT NULL,
  `patient_zip` varchar(5) NOT NULL,
  `patient_tlp` varchar(255) DEFAULT NULL,
  `patient_hp` varchar(255) DEFAULT NULL,
  `created_user` double DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `general_patient`
--

INSERT INTO `general_patient` (`patient_id`, `no_rm`, `patient_name`, `patient_initial`, `patient_status`, `patient_gender`, `patient_birthplace`, `patient_birthday`, `patient_address`, `patient_city`, `patient_zip`, `patient_tlp`, `patient_hp`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, '1000001', 'Suhendar', 'Suhe', 1, 'Male', '2011-11-05 16:28:00', '2011-11-05', 'asdad', 'Bandung', '4555', '083434343', '34343433', 0, '2011-11-05 11:01:54', 0, '2011-11-14 06:10:38'),
(2, '1000002', 'Hendarsyah', 'Suhe', 1, 'Male', 'Bandung', '2011-01-01', '242342', '2424', '24242', '4424242', '242', 0, '2011-11-05 00:00:00', 0, '2011-11-14 10:05:38'),
(3, '1000003', 'Mantap', 'Suhe', 1, 'Male', 'Bandung', '2011-01-01', 'Jl.Pejaten Village', 'Bandung', '40252', '021752333', '0852220776', 0, '2011-11-10 00:00:00', 0, '2011-11-13 02:57:44'),
(4, '1000004', 'dara sastrawiguna', 'dara', 1, 'Female', 'bandung', '2011-08-03', 'jl.Jendral Sudirman no.21', 'Jakarta', '40765', '021598664', '0857144695', 0, '2011-11-14 10:09:29', 0, '0000-00-00 00:00:00'),
(5, '1000005', 'rani sarimurni', 'rani', 1, 'Female', 'Jakarta', '2011-02-05', 'jl.Gatot Subroto No.51', 'Jakarta', '06789', '021890000', '081459671256', 0, '2011-11-14 10:11:30', 0, '0000-00-00 00:00:00'),
(6, '1000006', 'Andu Suprapto', 'Andi ', 1, 'Male', 'Jakarta', '2011-04-08', 'Jl.H.Mughni No.39', 'Jakarta', '40252', '021500689', '085123649875', 0, '2011-11-14 10:13:06', 0, '0000-00-00 00:00:00'),
(7, '1000007', 'Sarminah Wati', 'Sarminah', 1, 'Male', 'Semarang', '2009-02-04', 'jl.Jendral Sudirman no.21', 'Jakarta', '08976', '02145569874', '081222569845', 0, '2011-11-15 16:45:44', 0, '2011-11-15 16:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `lab_class`
--

CREATE TABLE IF NOT EXISTS `lab_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_id` int(11) NOT NULL,
  `method_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `class_male` varchar(255) NOT NULL,
  `class_female` varchar(255) NOT NULL,
  `class_acredited` tinyint(1) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `lab_class`
--

INSERT INTO `lab_class` (`class_id`, `lab_id`, `method_id`, `class_name`, `unit_id`, `class_male`, `class_female`, `class_acredited`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(3, 1, 7, 'Leucocyte', 1, 'Tezst', 'Test', 1, 0, '2011-11-05 00:00:00', 0, '2011-11-10 22:04:13'),
(4, 1, 1, 'Diff. count of leucocyte', 0, '10-15', '11-90', 0, 0, '2011-11-05 00:00:00', 0, '2011-11-09 00:00:00'),
(5, 1, 1, 'Lymphocyte', 2, '10-15', '11-90', 1, 0, '2011-11-06 00:00:00', 0, '2011-11-09 00:00:00'),
(6, 1, 0, 'Monocyte,Basophil, Eosinophil', 0, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '2011-11-09 00:00:00'),
(7, 1, 0, 'Granulocyte', 2, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(8, 1, 11, 'Erythrocyte', 1, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '2011-11-10 09:40:23'),
(9, 1, 2, 'Hemoglobin', 1, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(10, 1, 3, 'Hematocrit', 2, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(11, 1, 3, 'MCV', 4, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(12, 1, 2, 'MCH', 5, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(13, 1, 2, 'MCHC', 6, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(14, 1, 1, 'Thrombocyte', 4, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(15, 1, 4, 'ESR', 10, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(16, 2, 5, 'Clotting time', 7, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(17, 2, 5, 'Bleeding time', 2, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(18, 2, 1, 'Clot retraction', 1, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(19, 2, 6, 'D-Dimer', 6, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(20, 3, 7, 'Blood grouping', 0, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(21, 3, 0, 'RH factor', 0, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(22, 3, 8, 'Malaria', 7, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(23, 4, 9, 'Albumin', 1, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(24, 3, 10, 'Globulin', 5, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(25, 4, 11, 'Total Protein', 6, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(26, 4, 3, 'Indirect Bilirubin', 5, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(27, 4, 13, 'Total Bilirubin', 1, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(28, 4, 14, 'AST/SGOT', 8, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(29, 4, 14, 'ALT/SGPT', 0, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(30, 4, 15, 'AP', 9, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(31, 4, 16, 'Gamma GT', 12, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(32, 4, 16, 'GLDH', 0, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(33, 5, 17, 'Ureum', 11, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(34, 5, 18, 'Creatinine', 11, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(35, 5, 19, 'Uric acid', 10, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(36, 6, 9, 'CK', 3, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(37, 6, 10, 'CKMB', 9, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(38, 6, 4, 'LDH', 2, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(39, 7, 0, 'Na', 11, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(40, 7, 0, 'K', 8, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(41, 7, 0, 'Ca', 7, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(42, 7, 0, 'Other ', 0, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(43, 8, 23, 'Total Cholesterol', 7, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(44, 8, 4, 'LDL-Cholesterol', 3, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(45, 8, 4, 'HDL-Cholesterol', 3, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(46, 8, 25, 'Triglyceride', 4, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(47, 8, 5, 'Lipoprotein (a)', 10, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(48, 9, 26, 'Fasting Blood Glucose', 1, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(49, 9, 7, 'Post Prandial ', 4, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(50, 9, 2, 'Blood Glucose', 5, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(51, 9, 5, 'HbA1C', 7, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(52, 10, 6, 'HBsAg', 5, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(53, 10, 12, 'Anti-HCV', 4, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(54, 10, 9, 'Anti-HIV', 0, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(55, 10, 21, 'CRP', 1, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(56, 10, 11, 'hs-CRP', 5, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(57, 11, 5, 'Clarity', 4, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(58, 11, 31, 'Color', 7, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(59, 11, 31, 'Glucose', 0, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(60, 11, 31, 'Bilirubin', 0, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(61, 11, 2, 'Keton', 3, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(62, 11, 31, 'Specific Gravity', 6, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(63, 11, 31, 'Blood', 8, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(64, 11, 4, 'PH ', 3, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(65, 11, 31, 'Protein', 8, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(66, 11, 3, 'Urobilinogen', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(67, 11, 31, 'Nitrit', 17, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(68, 11, 3, 'Leucocyte esterase', 17, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(69, 11, 3, 'Sediment:', 17, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(70, 11, 27, 'RBC', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(71, 11, 9, 'WBC', 4, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(72, 11, 2, 'cast', 10, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(73, 11, 23, 'epithel', 6, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(74, 11, 9, 'crystal', 17, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(75, 11, 23, 'bacteria', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(76, 11, 31, 'Albumin urine', 6, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(77, 11, 13, 'Glucose urine', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(78, 11, 15, 'Bence Jones', 10, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(79, 11, 30, 'HCG test', 17, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(80, 12, 32, 'Gram Staining', 4, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(81, 12, 3, 'AFB Staining', 18, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(82, 12, 33, 'KOH', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(83, 13, 32, 'Gram Staining 2', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(84, 13, 14, 'GO', 4, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(85, 13, 12, 'Trichomonas', 17, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(86, 13, 8, 'Candida albicans', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(87, 13, 8, 'KOH 2', 12, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(88, 14, 8, 'Routine test', 10, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(89, 1, 34, 'Macroscopic :', 6, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(90, 14, 0, 'Amount', 17, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(91, 14, 3, 'Color 2', 17, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(92, 14, 30, 'Consistence', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(93, 14, 9, 'Odor', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(94, 14, 7, 'Blood 2', 17, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(95, 14, 3, 'Mucous', 6, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(96, 14, 2, 'Microscopic :', 10, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(97, 14, 3, 'Epithel 2', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(98, 14, 30, 'RBC 2', 6, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(99, 14, 0, 'WBC 2', 0, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(100, 14, 32, 'Chrystal  Faeces', 4, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(101, 14, 15, 'Parasit', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(102, 14, 23, 'Egg', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(103, 14, 21, 'Stool Occult Blood', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(104, 15, 30, 'Amphetamine', 17, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(105, 15, 28, 'Barbiturate', 4, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(106, 15, 9, 'Cannabis', 17, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(107, 15, 9, 'Cocaine', 4, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(108, 15, 30, 'Morphine', 16, '10-15', '11-90', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(109, 2, 9, 'champaken', 17, '14-15', '15-16', 1, 0, '2011-11-15 17:11:19', 0, '2011-11-15 17:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `lab_group`
--

CREATE TABLE IF NOT EXISTS `lab_group` (
  `lab_id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_name` varchar(255) NOT NULL,
  `lab_status` tinyint(1) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`lab_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `lab_group`
--

INSERT INTO `lab_group` (`lab_id`, `lab_name`, `lab_status`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 'Hematology', 1, 0, '2011-11-05 11:01:54', 0, '2011-11-09 00:00:00'),
(2, 'Coagulation', 1, 0, '2011-11-05 00:00:00', 0, '2011-11-09 00:00:00'),
(3, 'Other Hematology', 1, 0, '2011-11-05 00:00:00', 0, '2011-11-09 00:00:00'),
(4, 'Liver Function Test', 1, 0, '2011-11-05 00:00:00', 0, '2011-11-09 00:00:00'),
(5, 'Renal Function Test', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(6, 'Cardiac Function Test', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(7, 'Electrolite', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(8, ' Lipid Profile', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(9, 'Diabetes', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(10, 'Sero-immunology', 1, 0, '2011-11-09 00:00:00', 0, '2011-11-10 10:03:23'),
(11, 'Urine', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(12, 'Sputum', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(13, 'Secret', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(14, 'Faeces', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(15, 'Drug Abuse 2', 1, 0, '2011-11-09 00:00:00', 0, '2011-11-10 10:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `method_test`
--

CREATE TABLE IF NOT EXISTS `method_test` (
  `method_id` int(11) NOT NULL AUTO_INCREMENT,
  `method_name` varchar(255) NOT NULL,
  `method_status` tinyint(1) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`method_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `method_test`
--

INSERT INTO `method_test` (`method_id`, `method_name`, `method_status`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 'Flow cytometriC', 1, 0, '2011-11-05 11:01:54', 0, '2011-11-10 10:12:55'),
(2, 'Colorimetric', 1, 0, '2011-11-05 00:00:00', 0, '2011-11-09 00:00:00'),
(3, 'Calculated', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'Westergren', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 'Duke', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(6, 'Latex', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(7, 'Aglutination', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(8, 'Microscopic', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(9, 'Bromcresol Green', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(10, 'immunoturbidimetry', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(11, 'Biuret', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(12, 'Walters-Gerarde', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(13, 'Jendrassik-Grof', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(14, 'IFCC', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(15, 'DGKC', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(16, 'Kinetic', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(17, 'Urease-GLDH', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(18, 'Jaffe', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(19, 'Uricase-ASOD', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(20, 'Kinetic UV', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(21, 'Immunoinhibition', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(22, 'UV optimized', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(23, 'CHOD-PAP', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(24, 'Phosphotunestic acid', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(25, 'GPO-PAP', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(26, 'GOD-PAP', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(27, 'boronate affinity', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(28, 'Rapid test-qualitative', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(29, 'immunometric', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(30, 'Chemiluminescent', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(31, 'Uri-stick', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(32, 'Gram', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(33, 'KOH', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(34, 'Direct observation', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(35, 'immunochemical test', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `package_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) NOT NULL,
  `package_type` enum('Single','Multiple') NOT NULL,
  `package_price` double NOT NULL,
  `package_status` tinyint(1) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_name`, `package_type`, `package_price`, `package_status`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 'Hematocrit', 'Single', 900000, 1, 0, '2011-11-12 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'Hemoglobin', 'Multiple', 1200000, 1, 0, '2011-11-12 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `package_details`
--

CREATE TABLE IF NOT EXISTS `package_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL,
  `class_id` varchar(255) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `package_details`
--

INSERT INTO `package_details` (`id`, `package_id`, `class_id`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 1, '10', 0, '2011-11-12 23:42:24', 0, '0000-00-00 00:00:00'),
(2, 2, '3', 0, '2011-11-12 23:44:06', 0, '0000-00-00 00:00:00'),
(3, 2, '6', 0, '2011-11-12 23:44:14', 0, '0000-00-00 00:00:00'),
(4, 2, '17', 0, '2011-11-12 23:44:26', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_description` varchar(255) NOT NULL,
  `hospital_logo` varchar(255) NOT NULL,
  `hospital_birthday` date NOT NULL,
  `hospital_tlp` varchar(255) NOT NULL,
  `hospital_fax` varchar(255) NOT NULL,
  `hospital_address` varchar(244) NOT NULL,
  `hospital_city` varchar(255) NOT NULL,
  `hospital_zip` varchar(5) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `hospital_name`, `hospital_description`, `hospital_logo`, `hospital_birthday`, `hospital_tlp`, `hospital_fax`, `hospital_address`, `hospital_city`, `hospital_zip`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 'RSIA Mutiara Bunda', 'Rumah Sakit Ibu dan Anak Mutiara Bunda', 'assets/images/logo2.png', '2011-11-09', '02158000', '12222222', 'Jl.H.Mucung No.30', 'Bandung', '40250', 1, '2011-11-05 11:01:54', 0, '2011-11-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `special_labs`
--

CREATE TABLE IF NOT EXISTS `special_labs` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_no` varchar(255) NOT NULL,
  `date_sampling` date NOT NULL,
  `time_sampling` time NOT NULL,
  `date_result` date NOT NULL,
  `time_result` time NOT NULL,
  `project_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `test_status` tinyint(1) NOT NULL,
  `paid_status` tinyint(1) NOT NULL,
  `test_price` double NOT NULL,
  `visit_id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `special_labs`
--

INSERT INTO `special_labs` (`test_id`, `lab_no`, `date_sampling`, `time_sampling`, `date_result`, `time_result`, `project_id`, `patient_id`, `doctor_id`, `test_status`, `paid_status`, `test_price`, `visit_id`, `card_id`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, '1111001', '2011-11-13', '00:00:00', '2011-11-23', '00:00:00', 1, 1, 2, 1, 0, 0, 1, 0, 0, '2011-11-13 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `special_lab_details`
--

CREATE TABLE IF NOT EXISTS `special_lab_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_result` varchar(255) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `special_lab_details`
--

INSERT INTO `special_lab_details` (`id`, `test_id`, `package_id`, `class_id`, `class_result`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 1, 0, 3, '20', 0, '2011-11-13 00:44:17', 0, '2011-11-13 00:44:54'),
(2, 1, 0, 4, '50', 0, '2011-11-13 00:44:18', 0, '2011-11-13 00:44:54'),
(3, 1, 0, 5, '50', 0, '2011-11-13 00:44:18', 0, '2011-11-13 00:44:54'),
(4, 1, 0, 6, '80', 0, '2011-11-13 00:44:18', 0, '2011-11-13 00:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `special_patient`
--

CREATE TABLE IF NOT EXISTS `special_patient` (
  `patient_id` double NOT NULL AUTO_INCREMENT,
  `no_rm` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `visit_id` int(11) NOT NULL,
  `patient_initial` varchar(255) NOT NULL,
  `patient_status` tinyint(1) DEFAULT NULL,
  `patient_gender` varchar(255) DEFAULT NULL,
  `patient_birthplace` varchar(244) DEFAULT NULL,
  `patient_birthday` date DEFAULT NULL,
  `patient_address` varchar(255) NOT NULL,
  `patient_city` varchar(255) DEFAULT NULL,
  `patient_zip` varchar(5) NOT NULL,
  `patient_tlp` varchar(255) DEFAULT NULL,
  `patient_hp` varchar(255) DEFAULT NULL,
  `created_user` double DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `special_patient`
--

INSERT INTO `special_patient` (`patient_id`, `no_rm`, `patient_name`, `visit_id`, `patient_initial`, `patient_status`, `patient_gender`, `patient_birthplace`, `patient_birthday`, `patient_address`, `patient_city`, `patient_zip`, `patient_tlp`, `patient_hp`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, '2000001', 'Andi Martha 2', 1, 'Andi 2', 1, 'Male', 'Bandung', '2011-01-01', 'Jl.Pejaten Village', 'Bandung', '40252', '021752333', '0852220776', 0, '2011-11-05 00:00:00', 0, '2011-11-10 07:56:50'),
(2, '2000002', 'Mantap', 1, 'Suhe', 1, 'Male', 'Bandung', '2011-01-01', 'Jl.Pejaten Village', 'Bandung', '40252', '021752333', '0852220776', 0, '2011-11-10 08:05:51', 0, '0000-00-00 00:00:00'),
(3, '2000003', 'Anita Dwipurwanti', 2, 'anita', 1, 'Female', 'Bandung', '2011-03-02', 'jl.Gatot Subroto No.51', 'Jakarta', '24242', '021458769', '081554297569', 0, '2011-11-14 14:19:13', 0, '0000-00-00 00:00:00'),
(4, '2000004', 'Joko suratmaja', 2, 'Joko', 1, 'Male', 'Jakarta', '2011-06-06', 'Jl.H.Mughni No.39', 'Jakarta', '06789', '02156559984', '085769845632', 0, '2011-11-14 14:20:58', 0, '0000-00-00 00:00:00'),
(5, '2000005', 'Sari Indahsari', 3, 'Sari', 1, 'Female', 'bandung', '2011-06-07', 'jl.Jendral Sudirman no.21', 'Jakarta', '08976', '021566654', '081546987565', 0, '2011-11-14 14:22:39', 0, '0000-00-00 00:00:00'),
(6, '2000006', 'Dudi mulyana', 2, 'Dudi', 1, 'Male', 'bandung', '2009-06-06', 'jl.Jendral Sudirman no.21', 'Jakarta', '08976', '02156985545', '081556426545', 0, '2011-11-15 16:53:42', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `special_projects`
--

CREATE TABLE IF NOT EXISTS `special_projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `project_no` varchar(255) NOT NULL,
  `project_date` date NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_status` tinyint(1) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `special_projects`
--

INSERT INTO `special_projects` (`project_id`, `company_id`, `project_no`, `project_date`, `project_name`, `project_status`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 1, 'X0001', '2011-11-13', 'Crictical Project', 1, 0, '2011-11-13 00:31:53', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `special_project_details`
--

CREATE TABLE IF NOT EXISTS `special_project_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `special_project_details`
--

INSERT INTO `special_project_details` (`id`, `project_id`, `patient_id`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 1, 1, 0, '2011-11-13 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 1, 2, 0, '2011-11-13 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE IF NOT EXISTS `units` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(255) NOT NULL,
  `unit_status` tinyint(1) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `unit_name`, `unit_status`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 'x 103/µL', 1, 0, '2011-11-09 00:00:00', 0, '2011-11-09 00:00:00'),
(2, '%', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'x 106/µL', 1, 0, '2011-11-09 00:00:00', 0, '2011-11-10 00:00:00'),
(4, 'fL', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 'pg', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(6, 'g/dL', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(7, 'minutes', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(8, 'hrs', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(9, 'µg/mL', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(10, 'mg/24 hrs', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(11, 'mg/dL', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(12, 'IU/L ', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(14, 'mEq/L', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(15, 'mg/L', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(16, 'EU/dL', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(17, 'cells/HPF', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00'),
(18, 'g', 1, 0, '2011-11-09 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_fullname` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_photo` varchar(255) NOT NULL,
  `user_gender` enum('Male','Female') NOT NULL,
  `user_birthplace` varchar(255) NOT NULL,
  `user_birthday` date NOT NULL,
  `user_status` tinyint(1) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_tlp` varchar(255) NOT NULL,
  `user_hp` varchar(255) NOT NULL,
  `user_address` varchar(244) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_zip` varchar(5) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_fullname`, `user_name`, `user_photo`, `user_gender`, `user_birthplace`, `user_birthday`, `user_status`, `user_password`, `group_id`, `user_tlp`, `user_hp`, `user_address`, `user_city`, `user_zip`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(0, 'Administrator', 'admin', '-', 'Male', 'Bandung', '2011-11-14', 1, 'dd94709528bb1c83d08f3088d4043f4742891f4f', 0, '021780000', '085222054065', 'jl.Jendral Sudirman no.21', 'Bandung', '40252', 0, '2011-11-06 20:35:31', 0, '2011-11-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `group_status` tinyint(1) NOT NULL,
  `group_project` enum('General','Special') NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `group_status`, `group_project`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(0, 'Administrator', 1, 'General', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(1, 'Project Manager', 1, 'General', 0, '2011-11-07 00:00:00', 0, '2011-11-15 00:00:00'),
(2, 'Cashier', 1, 'General', 0, '2011-11-15 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'Petugas Lab', 1, 'General', 0, '2011-11-12 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'Staff FO', 1, 'General', 0, '2011-11-12 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`id`, `created_date`, `type`, `user_id`, `ip_address`, `description`) VALUES
(1, '2011-11-16 12:00:24', 'Update User ', '0', '125.160.170.129', 'Update Doctor For =Dr.Mahatma Gandhi'),
(2, '2011-11-16 12:00:41', 'Update User ', '0', '125.160.170.129', 'Update Doctor For =dr.Suhendar'),
(3, '2011-11-16 12:00:59', 'Update User ', '0', '125.160.170.129', 'Update Doctor For =dr.Darwis Hartono  MPH'),
(4, '2011-11-16 12:11:30', 'Search General Patie', '0', '125.160.170.129', 'Search General Patient'),
(5, '2011-11-16 12:11:34', 'Search General Patie', '0', '125.160.170.129', 'Search General Patient'),
(6, '2011-11-12 11:38:12', 'Add User', '0', '127.0.0.1', 'Add Admission'),
(7, '2011-11-12 11:38:27', 'Admission Status', '0', '127.0.0.1', 'Active Admission Status For ID =1'),
(8, '2011-11-13 02:37:17', 'View Setting Profile', '0', '127.0.0.1', 'View Setting Profile'),
(9, '2011-11-13 02:38:59', 'View My Profile', '0', '127.0.0.1', 'View My Profile'),
(10, '2011-11-13 02:39:27', 'View My Profile', '0', '127.0.0.1', 'View My Profile'),
(11, '2011-11-13 02:40:28', 'View My Profile', '0', '127.0.0.1', 'View My Profile'),
(12, '2011-11-13 02:40:41', 'View My Profile', '0', '127.0.0.1', 'View My Profile'),
(13, '2011-11-13 02:41:23', 'View My Profile', '0', '127.0.0.1', 'View My Profile'),
(14, '2011-11-13 02:41:31', 'View My Profile', '0', '127.0.0.1', 'View My Profile'),
(15, '2011-11-13 02:42:31', 'View My Profile', '0', '127.0.0.1', 'View My Profile'),
(16, '2011-11-13 02:42:32', 'View My Profile', '0', '127.0.0.1', 'View My Profile'),
(17, '2011-11-13 02:42:45', 'View My Profile', '0', '127.0.0.1', 'View My Profile'),
(18, '2011-11-13 02:47:24', 'Update My Profile ', '0', '127.0.0.1', 'Update My Profile'),
(19, '2011-11-13 02:47:24', 'View My Profile', '0', '127.0.0.1', 'View My Profile'),
(20, '2011-11-13 02:51:16', 'View Doctor ', '0', '127.0.0.1', 'View Doctor Status For ID =3');

-- --------------------------------------------------------

--
-- Table structure for table `user_module`
--

CREATE TABLE IF NOT EXISTS `user_module` (
  `mod_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_name` varchar(255) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`mod_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `user_module`
--

INSERT INTO `user_module` (`mod_id`, `mod_name`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 'Dashboard', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(2, 'General Patient', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(3, 'Special Patient', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(4, 'Company', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(5, 'Lab Test', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(6, 'Lab Test Classify', 0, '2011-11-06 20:37:10', 0, '0000-00-00 00:00:00'),
(7, 'Method Test', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(8, 'Lab Test Price', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(9, 'Doctor', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(10, 'Credit Card', 0, '2011-11-06 20:37:10', 0, '0000-00-00 00:00:00'),
(11, 'Visit Type', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(12, 'Admission', 0, '2011-11-06 20:37:10', 0, '0000-00-00 00:00:00'),
(13, 'Cashier', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(14, 'General Laboratory', 0, '2011-11-06 20:37:10', 0, '0000-00-00 00:00:00'),
(15, 'Special Laboratory', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(16, 'Projects', 0, '2011-11-06 20:37:10', 0, '0000-00-00 00:00:00'),
(17, 'Reports', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(18, 'General Setting', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(19, 'Unit Setting', 0, '2011-11-06 20:37:10', 0, '0000-00-00 00:00:00'),
(20, 'Backup', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(21, 'Restore', 0, '2011-11-06 20:37:10', 0, '0000-00-00 00:00:00'),
(22, 'My Account', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(23, 'User Log', 0, '2011-11-06 20:37:10', 0, '0000-00-00 00:00:00'),
(24, 'User Group & Auth', 0, '2011-11-06 20:35:31', 0, '0000-00-00 00:00:00'),
(25, 'Change Password', 0, '2011-11-06 20:37:10', 0, '0000-00-00 00:00:00'),
(26, 'Doctor Specialization', 0, '2011-11-05 11:01:54', 0, '0000-00-00 00:00:00'),
(27, 'Empty Database', 0, '2011-11-05 11:02:07', 0, '0000-00-00 00:00:00'),
(28, 'Users', 0, '2011-11-05 11:01:54', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE IF NOT EXISTS `user_permission` (
  `mod_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`mod_id`, `group_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE IF NOT EXISTS `visits` (
  `visit_id` int(11) NOT NULL AUTO_INCREMENT,
  `visit_name` varchar(255) NOT NULL,
  `visit_status` tinyint(1) NOT NULL,
  `created_user` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_user` int(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  PRIMARY KEY (`visit_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`visit_id`, `visit_name`, `visit_status`, `created_user`, `created_date`, `modified_user`, `modified_date`) VALUES
(1, 'MCU', 1, 0, '2011-11-05 11:01:54', 0, '2011-11-10 10:59:07'),
(2, 'Other', 1, 0, '2011-11-05 11:02:07', 0, '0000-00-00 00:00:00'),
(3, 'Mantap', 1, 0, '2011-11-05 00:00:00', 0, '0000-00-00 00:00:00');
