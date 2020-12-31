-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2020 at 01:30 PM
-- Server version: 10.3.24-MariaDB-log-cll-lve
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
-- Database: `doctxnyx_bari`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertises`
--

CREATE TABLE `advertises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `animation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `animation_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertises`
--

INSERT INTO `advertises` (`id`, `image1`, `image1_link`, `image2`, `image2_link`, `animation`, `animation_link`, `video`, `video_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'image/advertise/rGNbgWDJaTpMp2eewkOgRENnffY19kIhS9ViGk94.jpeg', '#', 'image/advertise/91E7mw1iQdTnOBzRm7DFa4IFCFM2r7j4itMC2lJE.jpeg', '#', 'image/advertise/PgzUekTNOieruaiEhZAq9LQskZbuBrcB9IhvFmTg.gif', NULL, 'image/advertise/h1ew0rJppQd2rEOBQhH9UFrgkI9GaflJA5kb5h4r.mp4', NULL, NULL, '2020-10-30 05:12:02', '2020-10-31 21:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `ambulances`
--

CREATE TABLE `ambulances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ambulances`
--

INSERT INTO `ambulances` (`id`, `name`, `slug`, `phone`, `hotline`, `address`, `details`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'আদর্শ এম্বুলেন্স সার্ভিস', 'adarsha-ambulance-service', '+8801715971685', '+8801715971685', 'ওসমানী মেডিকেল কলেজ ও হাসপাতাল, সিলেট।', '<p>আদর্শ এম্বুলেন্স সার্ভিস এন্ড লাশবাহী ফ্রিজিং গাড়ী সার্ভিস<br />\r\nদিবারাত্রি এ্যাম্বুলেন্স সার্ভিস</p>\r\n\r\n<p>ঠিকানাঃ ওসমানী মেডিকেল কলেজ ও হাসপাতাল, সিলেট।</p>\r\n\r\n<p>যোগাযোগ: +8801715971685</p>', 'image/ambulances/Idm8LsB0WsJMxr2zxJgBkP1bejzVP6W5GTo4QDeL.jpeg', 1, '2020-11-02 21:36:44', '2020-11-02 21:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `appoinments`
--

CREATE TABLE `appoinments` (
  `appoint_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `doc_id` bigint(20) UNSIGNED DEFAULT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_shown` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `past_doctor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appoint_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appoinments`
--

INSERT INTO `appoinments` (`appoint_id`, `name`, `department_id`, `doc_id`, `age`, `phone`, `email`, `doctor_shown`, `past_doctor`, `details`, `appoint_date`, `time`, `entry_date`, `month`, `year`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Md Shahed  Hossain', 1, 4, '35', '01710888280', NULL, 'No', NULL, 'জ্বর,কাশি, শ্বাসকষ্ট', '2020-11-03', NULL, '03-11-2020', 'November', '2020', 0, '2020-11-03 12:12:10', '2020-11-03 12:12:10'),
(8, 'Md Shahed  Hossain', 1, 4, '35', '01710888280', NULL, 'No', NULL, 'জ্বর,কাশি, শ্বাসকষ্ট', '2020-11-03', NULL, '03-11-2020', 'November', '2020', 0, '2020-11-03 12:12:10', '2020-11-03 12:12:10'),
(9, 'Sadi', 1, 4, '27', '01829844898', 'ash@gmail.com', 'Yes', 'Dr Azadur Rahman', 'Gastrological problem.', '2020-11-03', NULL, '03-11-2020', 'November', '2020', 0, '2020-11-03 13:49:57', '2020-11-03 13:49:57'),
(10, 'Sadi', 1, 4, '27', '01829844898', 'ash@gmail.com', 'Yes', 'Dr Azadur Rahman', 'Gastrological problem.', '2020-11-03', NULL, '03-11-2020', 'November', '2020', 0, '2020-11-03 13:49:57', '2020-11-03 13:49:57'),
(11, 'Zahra Islam Rahmi', 4, 5, '3month 13days', '01758494795', 'pushpo01758@gmail.com', 'Yes', 'Dr Ronjit, lions children hospital', 'ডায়রিয়া,পেট ব্যাথা', '2020-11-03', NULL, '03-11-2020', 'November', '2020', 0, '2020-11-03 14:34:24', '2020-11-03 14:34:24'),
(12, 'Zahra Islam Rahmi', 4, 5, '3month 13days', '01758494795', 'pushpo01758@gmail.com', 'Yes', 'Dr Ronjit, lions children hospital', 'ডায়রিয়া,পেট ব্যাথা', '2020-11-03', NULL, '03-11-2020', 'November', '2020', 0, '2020-11-03 14:34:24', '2020-11-03 14:34:24'),
(13, 'তামিম আহমদ', 14, 6, '১১', '০১৭২১৫৯৪১৮৮', NULL, 'Yes', 'ডাঃ মোহাম্মদ মাহিন', 'পায়ের হাড়ে সমস্যা', '2020-11-04', NULL, '03-11-2020', 'November', '2020', 1, '2020-11-03 17:27:11', '2020-11-03 18:04:14'),
(14, 'তামিম আহমদ', 14, 6, '১১', '০১৭২১৫৯৪১৮৮', NULL, 'Yes', 'ডাঃ মোহাম্মদ মাহিন', 'পায়ের হাড়ে সমস্যা', '2020-11-04', NULL, '03-11-2020', 'November', '2020', 1, '2020-11-03 17:27:11', '2020-11-03 18:04:25'),
(15, 'সায়া', 14, 7, '২৮', '01726690431', 'sabbir5050@gmail.com', 'No', NULL, 'বুক্সকমস', '2020-11-04', NULL, '03-11-2020', 'November', '2020', 0, '2020-11-03 18:25:21', '2020-11-03 18:25:21'),
(16, 'সায়া', 14, 7, '২৮', '01726690431', 'sabbir5050@gmail.com', 'No', NULL, 'বুক্সকমস', '2020-11-04', NULL, '03-11-2020', 'November', '2020', 0, '2020-11-03 18:25:21', '2020-11-03 18:25:21'),
(17, 'ন্ধজ্জদ্মদ', 14, 7, '২৮', '01813868878', 'sabbir5050@gmail.com', 'No', NULL, 'BbccgKao', '2020-11-04', NULL, '03-11-2020', 'November', '2020', 0, '2020-11-03 18:31:32', '2020-11-03 18:31:32'),
(18, 'ন্ধজ্জদ্মদ', 14, 7, '২৮', '01813868878', 'sabbir5050@gmail.com', 'No', NULL, 'BbccgKao', '2020-11-04', NULL, '03-11-2020', 'November', '2020', 0, '2020-11-03 18:31:32', '2020-11-03 18:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'HR Mahid', 'hrmahid@gmail.com', 'Hello', 'How are you?', '2020-10-31 18:01:21', '2020-10-31 18:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `name`, `slug`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'মেডিসিন বিশেষজ্ঞ', 'medicine-specialist', 'image/departments/JNf7BpDFAbRmr1w0XTxYXlRtGzLWtvOTctopithI.jpeg', '<p>This is the invention</p>', 1, '2020-10-01 14:05:19', '2020-10-31 16:41:34'),
(2, 'সার্জারী/ ল্যাপারোস্কপিক বিশেষজ্ঞ', 'surgery-specialist', 'image/departments/XvVI7qwo2NbZgkewich43uhZenmklI1TJM7BhIXB.jpeg', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum voluptatibus corrupti ducimus sequi vero eos nisi architecto optio quaerat adipisci</p>\r\n\r\n<h2 style=\"font-style:italic\"><strong><em>suscipit eaque vitae</em></strong></h2>\r\n\r\n<p>quia animi fugit at. Maiores, est omnis!Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum voluptatibus corrupti ducimus sequi vero eos nisi architecto optio quaerat adipisci suscipit eaque vitae, quia animi fugit at. Maiores, est omnis!Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum voluptatibus corrupti ducimus sequi vero eos nisi architecto optio quaerat adipisci suscipit eaque vitae, quia animi fugit at. Maiores, est omnis!</p>', 1, '2020-10-01 14:05:30', '2020-10-28 12:00:47'),
(3, 'কিডনী বিশেষজ্ঞ', 'kidney-specialist', 'image/departments/jbkMck5kRp39S3FWUOXQFA7KZMxvTevn8nHC4C9c.jpeg', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum voluptatibus corrupti ducimus sequi vero eos nisi architecto optio quaerat adipisci suscipit eaque vitae, quia animi fugit at. Maiores, est omnis!Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum voluptatibus corrupti ducimus sequi vero eos nisi architecto optio quaerat adipisci suscipit eaque vitae, quia animi fugit at. Maiores, est omnis!Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum voluptatibus corrupti ducimus sequi vero eos nisi architecto optio quaerat adipisci suscipit eaque vitae, quia animi fugit at. Maiores, est omnis!Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum voluptatibus corrupti ducimus sequi vero eos nisi architecto optio quaerat adipisci suscipit eaque vitae, quia animi fugit at. Maiores, est omnis!Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum voluptatibus corrupti ducimus sequi vero eos nisi architecto optio quaerat adipisci suscipit eaque vitae, quia animi fugit at. Maiores, est omnis!</p>', 1, '2020-10-01 14:05:52', '2020-10-28 12:01:52'),
(4, 'শিশু রোগ বিশেষজ্ঞ', 'pediatrician', 'image/departments/2FmUco7nQCyWBf96YxwbbfLDEEM64WUZXiRAD5HJ.jpeg', '<p>শিশু রোগ বিশেষজ্ঞ</p>', 1, '2020-10-28 12:10:08', '2020-10-28 12:10:08'),
(5, 'হৃদরোগ/কার্ডিওলজি বিশেষজ্ঞ চক্ষু বিশেষজ্ঞ', 'cardiologist-ophthalmologist', 'image/departments/9VYQ1ZDx4NXvRvdVB4FYkirQFpkBXhQ1O2TB5ThP.png', '<p>হৃদরোগ/কার্ডিওলজি বিশেষজ্ঞ চক্ষু বিশেষজ্ঞ</p>', 1, '2020-10-28 12:13:02', '2020-10-28 12:13:02'),
(6, 'নাক, কান, গলা বিশেষজ্ঞ', 'nose-ear-throat-specialist', 'image/departments/YkiyhWDe17k1S93TnfBN58EZnpPAFLANO0flNOpV.png', '<p>নাক, কান, গলা বিশেষজ্ঞ</p>', 1, '2020-10-28 12:13:57', '2020-10-28 12:13:57'),
(7, 'গাইনী/স্ত্রী রোগ বিশেষজ্ঞ', 'gynecologist', 'image/departments/LLUkE29AOtS3Gsn8EU9F0MHXgLhgWbRQ4tPKZ7sC.png', '<p>গাইনী/স্ত্রী রোগ বিশেষজ্ঞ</p>', 1, '2020-10-28 12:14:38', '2020-10-28 12:14:38'),
(8, 'ডায়বেটিস বিশেষজ্ঞ', 'diabetes-specialist', 'image/departments/BURdGK9xNpFdkCIP2VK5myPdI760cln1QhjDjuC9.jpeg', '<p>ডায়বেটিস বিশেষজ্ঞ</p>', 1, '2020-10-28 12:27:13', '2020-10-28 12:27:13'),
(9, 'ইউরোলজী বিশেষজ্ঞ', 'urologist', 'image/departments/PrSmL3PYuNwh48xgM5RAZwRIlvuWMCHM5qfiQeQ2.jpeg', '<p>ইউরোলজী বিশেষজ্ঞ</p>', 1, '2020-10-28 12:27:56', '2020-10-28 12:27:56'),
(10, 'নিউরোলজী বিশেষজ্ঞ', 'neurology-specialist', 'image/departments/Z3kqnKzTNhlLi1G4HFZH7A7gWkcfKiOBLeIxKf9F.jpeg', '<p>নিউরোলজী বিশেষজ্ঞ</p>', 1, '2020-10-28 12:28:43', '2020-10-28 12:28:43'),
(11, 'বার্ণ ও প্লাস্টিক সার্জারী', 'burn-and-plastic-surgery', 'image/departments/f0zby675I1vDRuZej2zP5E55JKiQhIsoGIW983oU.jpeg', '<p>বার্ণ ও প্লাস্টিক সার্জারী</p>', 1, '2020-10-28 12:29:59', '2020-10-28 12:29:59'),
(12, 'রক্ত রোগ বিশেষজ্ঞ', 'hematologist', 'image/departments/F3cL3EoJbA49sjdGOWeGmVS5fCos5UuFxqU5hgjZ.png', '<p>রক্ত রোগ বিশেষজ্ঞ</p>', 1, '2020-10-28 12:30:40', '2020-10-28 12:30:40'),
(13, 'দন্তরোগ বিশেষজ্ঞ', 'dentist', 'image/departments/duSk8vV7fEOQW4726VLWDA9CfkA7NrNF1HLcvMte.jpeg', '<p>দন্তরোগ বিশেষজ্ঞ</p>', 1, '2020-10-28 12:31:16', '2020-10-28 12:31:16'),
(14, 'ট্রমা,অর্থোপেডিক্স ও হাড় জোড় বিশেষজ্ঞ', 'trauma-orthopedics-and-orthopedic-specialist', 'image/departments/Mp6NnKEoqiLMEUjgAj7uo8ZKjoBYdxTeOpxI8cUr.jpeg', '<p>ট্রমা,অর্থোপেডিক্স ও হাড় জোড় বিশেষজ্ঞ</p>', 1, '2020-10-28 12:32:06', '2020-10-28 12:32:06'),
(15, 'মানসিক/মনোরোগ রোগ বিশেষজ্ঞ', 'psychiatrist', 'image/departments/K4be2tCI31kRMQWLU4Ku23ehgld7NhzZviexrC7r.png', '<p>মানসিক/মনোরোগ রোগ বিশেষজ্ঞ</p>', 1, '2020-10-28 12:41:59', '2020-10-28 12:41:59'),
(16, 'বক্ষব্যাধি ও এজমা বিশেষজ্ঞ', 'chest-and-asthma-specialist', 'image/departments/pluzASaGdEYUZnt1PafeCktbfbNbMWud7G5oW1qM.jpeg', '<p>বক্ষব্যাধি ও এজমা বিশেষজ্ঞ</p>', 1, '2020-10-28 12:42:44', '2020-10-28 12:42:44'),
(17, 'বাত, ব্যাথা,প্যারালাইসিস বিশেষজ্ঞ', 'arthritis-pain-paralysis-specialist', 'image/departments/DWjovqvuUm89YVadfxWfuaZaSRsXMMBFLZUMTXa8.jpeg', '<p>বাত, ব্যাথা,প্যারালাইসিস বিশেষজ্ঞ</p>', 1, '2020-10-28 12:44:38', '2020-10-28 12:44:38'),
(18, 'ফিজিওথেরাপিস্ট', 'physiotherapist', 'image/departments/y3rx16ygtxarxFbgID4Se1A5QH5RVjG4PngjJGw5.jpeg', '<p>ফিজিওথেরাপিস্ট</p>', 1, '2020-10-28 12:46:10', '2020-10-28 12:46:10'),
(19, 'প্রাথমিক চিকিৎসাক/ লোকাল ডাক্তার', 'primary-physician-local-doctor', 'image/departments/Wi0EdpIQwlNK27oVaiP1eyH81PfNA3DLFyOFGFHs.png', '<p>প্রাথমিক চিকিৎসাক/ লোকাল ডাক্তার</p>', 1, '2020-10-28 12:49:03', '2020-10-28 12:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `diagnostics`
--

CREATE TABLE `diagnostics` (
  `diag_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `diagnostics`
--

INSERT INTO `diagnostics` (`diag_id`, `name`, `slug`, `phone`, `hotline`, `address`, `details`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Popular Medical Center Ltd, Sylhet', 'popular-medical-centre-hospital', '+8801715971685', '+8801715971685', 'New Medical Road, Kajalshah, Sylhet, 3100', '<h1>Contact Details</h1>\r\n\r\n<h1>New Medical Road, Kajalshah, Sylhet, 3100</h1>', 'image/diagnostics/JUEvCPQuW1A9is0Zt9Ep2Suy04k75AsyvRo1MnjJ.jpeg', 1, '2020-11-01 23:35:21', '2020-11-01 23:35:21'),
(2, 'Medinova Medical Services Ltd', 'medinova-medical-services-ltd', '+8801715971685', '+8801715971685', '98, Kajal Shah, New Medical Road, Sylhet', '<h1><em><strong>98, Kajal Shah, </strong></em></h1>\r\n\r\n<h1><em><strong>New Medical Road</strong></em></h1>\r\n\r\n<h1><em><strong>(Near Osmani Medical College East Gate), </strong></em></h1>\r\n\r\n<h1><em><strong>Sylhet, 3100 </strong></em></h1>', 'image/diagnostics/YdTl9r04vXixtT2c2L4WRND75w1ELlZEkUViBdQm.png', 1, '2020-11-01 23:39:21', '2020-11-01 23:39:21'),
(3, 'Trust Medical Services, Sylhet', 'trust-medical-services', '+8801715971685', '+8801715971685', '16, Madhu Shahid, Medical College Roadm, Sylhet', '<h1>Contact Details</h1>\r\n\r\n<h1>16, Madhu Shahid, Medical College Road,</h1>\r\n\r\n<h1>Rikabi Bazar , Sylhet, 3100</h1>', 'image/diagnostics/DNPw8KRY218Dr2eosUZpZcq64YNEYthebIysEtfH.jpeg', 1, '2020-11-01 23:42:17', '2020-11-01 23:42:17'),
(4, 'Medi Aid Diagnostic & Consultation Center', 'medi-aid-diagnostic', '+8801715971685', '+8801715971685', 'Osmani Medical Road, Sylhet, 3100', '<h3>Contact Details</h3>\r\n\r\n<h1>Osmani Medical Road, Sylhet, 3100</h1>', 'image/diagnostics/ZZ5In5k1CEVC1eC1TwlE3muQkYeEjkTM85UKOcwi.png', 1, '2020-11-01 23:46:23', '2020-11-01 23:46:23'),
(5, 'Ibn Sina Diagnostic and Consultation Center', 'ibn-sina-hospital-sylhet-ltd', '+8801715971685', '+8801715971685', 'Medical College Road, Rikabi Bazar, Sylhet', '<h1>Contact Details</h1>\r\n\r\n<h1>Medical College Road, Rikabi Bazar,</h1>\r\n\r\n<h1>Madhu Shahid, Sylhet, 3100</h1>', 'image/diagnostics/ay1NUnwkvVBmVkiyEViS2IzZe07Sck0pOpS0Wq9D.png', 1, '2020-11-01 23:49:26', '2020-11-01 23:49:26'),
(6, 'Comfort Medical Services', 'comfort-medical-services', '+8801715971685', '+8801715971685', '17, Kajolshah, New Medical Road, Sylhet', '<h1>Contact Details:</h1>\r\n\r\n<h1>17, Kajolshah, New Medical Road,</h1>\r\n\r\n<h1>Sylhet, 3100</h1>', 'image/diagnostics/XlAwK1qa3tads6KGE4WiQ6NfZ1rbTnH4q7yU1Hx5.png', 1, '2020-11-01 23:52:12', '2020-11-01 23:52:12'),
(7, 'Popular Diagnostic Complex', 'popular-diagnostic-complex', '+8801715971685', '+8801715971685', 'Mirboxtula, East Chowhatta, Sylhet', '<h3>Contact Details</h3>\r\n\r\n<h1>Mirboxtula, East Chowhatta,</h1>\r\n\r\n<h1>Sylhet, 3100</h1>', 'image/diagnostics/H0Qs1V96TCs8hXChH1rzr6rjgjP0pFEDjPBUgbsq.png', 1, '2020-11-02 00:01:25', '2020-11-02 00:01:25'),
(8, 'Shahjalal Medical Services', 'shahjalal-medical-services', '+8801715971685', '+8801715971685', 'Ornob - 33, Mirer Moidan, Sylhet, 3100', '<h1>Contact Details</h1>\r\n\r\n<h1>Ornob - 33, Mirer Moidan,</h1>\r\n\r\n<h1>Sylhet, 3100</h1>', 'image/diagnostics/CIH1dISxntXdYuAdJ9uJmEaHs8lc7dOq7FMh02h0.jpeg', 1, '2020-11-02 00:10:04', '2020-11-02 00:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_name`, `division_id`, `created_at`, `updated_at`) VALUES
(3, 'Sylhet', 4, '2020-10-24 09:16:45', '2020-10-24 09:16:45'),
(4, 'Habiganj', 4, '2020-10-24 09:16:56', '2020-10-24 09:16:56'),
(5, 'Moulvibazar', 4, '2020-10-28 08:56:28', '2020-10-28 08:56:28'),
(6, 'Sunamganj', 4, '2020-10-28 08:56:46', '2020-10-28 08:56:46'),
(7, 'Dhaka', 5, '2020-10-28 09:12:04', '2020-10-28 09:12:04'),
(8, 'Gazipur', 5, '2020-10-28 09:12:41', '2020-10-28 09:12:41'),
(9, 'Kishoreganj', 5, '2020-10-28 09:12:55', '2020-10-28 09:12:55'),
(10, 'Manikganj', 5, '2020-10-28 09:13:11', '2020-10-28 09:13:11'),
(11, 'Munshiganj', 5, '2020-10-28 09:13:34', '2020-10-28 09:13:34'),
(12, 'Narayanganj', 5, '2020-10-28 09:13:51', '2020-10-28 09:13:51'),
(13, 'Narsingdi', 5, '2020-10-28 09:14:06', '2020-10-28 09:14:06'),
(14, 'Tangail', 5, '2020-10-28 09:14:24', '2020-10-28 09:14:24'),
(15, 'Faridpur', 5, '2020-10-28 09:14:38', '2020-10-28 09:14:38'),
(16, 'Gopalganj', 5, '2020-10-28 09:14:59', '2020-10-28 09:14:59'),
(17, 'Madaripur', 5, '2020-10-28 09:15:16', '2020-10-28 09:15:16'),
(18, 'Rajbari', 5, '2020-10-28 09:15:30', '2020-10-28 09:15:30'),
(19, 'Shariatpur', 5, '2020-10-28 09:15:45', '2020-10-28 09:15:45'),
(20, 'Rajshahi', 6, '2020-10-31 17:26:46', '2020-10-31 17:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(4, 'Sylhet', '2020-10-24 09:16:24', '2020-10-24 09:16:24'),
(5, 'Dhaka', '2020-10-28 08:52:40', '2020-10-28 08:52:40'),
(6, 'Rajshahi', '2020-10-31 17:26:23', '2020-10-31 17:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doc_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sur_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `upzila_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `h_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doc_id`, `department_id`, `name`, `slug`, `phone`, `hotline`, `designation`, `sur_name`, `description`, `image`, `division_id`, `district_id`, `upzila_id`, `status`, `h_status`, `created_at`, `updated_at`) VALUES
(1, 10, 'ডাঃ এম এ মুনিম সাজু', 'dr-m-a-munim-saju', '01715971685', '01715971685', 'এমবিবিএস(এসইউ), এমডি (আমেরিকা), এমআরসিপি (যুক্তরাজ্য) মেম্বার অফ দ্যা এনএএমইউ (কনসালটেন্ট নিউরোলজিস্ট)', 'Dr. M A Munim Saju', '<p>ডাঃ এম, এ, মুনিম, সাজু</p>\r\n\r\n<p>মাথাব্যাথা, মস্তিষ্ক, ও স্নায়ুরোগ বিশেষজ্ঞ<br />\r\nএম.বি.বি.এস(এসইউ), এম.ডি (আমেরিকা), এম.আর.সি.পি (যুক্তরাজ্য)<br />\r\nমেম্বার অফ দ্যা এন.এ.এম.ইউ (কনসালটেন্ট নিউরোলজিস্ট)<br />\r\nসহযোগী অধ্যাপক,&nbsp;<br />\r\nএনাম মেডিকেল কলেজ, ঢাকা।<br />\r\nবিএমডিসি নং- ৩৮০৯৭</p>\r\n\r\n<p>চেম্বার-দি মেডিনোভা ডায়াগনস্টিক এন্ড কলসালটেশন সেন্টার।<br />\r\n(রিকাবীবাজার, মদন মোহন কলেজের পাশে)</p>\r\n\r\n<p>রোগী দেখার সময়ঃ<br />\r\nপ্রতিদিন বিকাল ৫ টা থেকে রাত ৯ টা পর্যন্ত। (শুক্রবার বন্ধ)</p>\r\n\r\n<p>যোগাযোগ +৮৮০১৭১৫৯৭১৬৮৫</p>', 'image/doctors/6tFB9HWfBVzkJvtjy0Vmz0W4agyhmW6r6pURdLfZ.jpeg', 4, 3, 1, 1, 1, '2020-10-31 17:02:52', '2020-11-03 16:14:06'),
(2, 6, 'ডা: মোঃ আজিজুল হক মানিক', 'dr-azizul-haque-manik', '+8801715971685', '+8801715971685', 'ডিএলও, এমসিপিএস, এফসিপিএস (ইএনটি) এমবিবিএস, বিসিএস (স্বাস্থ্য)', 'Dr. Md. Azizul Hoque Manik', '<p>ডা: মোঃ আজিজুল হক মানিক<br />\r\nডিএলও, এমসিপিএস, এফসিপিএস (ইএনটি)<br />\r\nএমবিবিএস, বিসিএস (স্বাস্থ্য)<br />\r\nবঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়<br />\r\nনাক, কান, গলারোগ বিশেষজ্ঞ ও হেড নেক সার্জন</p>\r\n\r\n<p>চেম্বার ০১: শাহজালাল মেডিকেল সার্ভিস, মিরের ময়দান, সিলেট।<br />\r\nপ্রতি বুধবার ২:৩০ টা হতে ৬:৩০ টা পর্যন্ত এবং বৃহস্পতিবার ২:০০টা হতে ৪:০০টা পর্যন্ত।</p>\r\n\r\n<p>চেম্বার ০২: পপুলার মেডিকেল সেন্টার এন্ড হসপিটাল, সোবহানিঘাট, সিলেট।<br />\r\nপ্রতি বুধবার ৬:৩০ টা হতে ৮:০০ টা পর্যন্ত।</p>\r\n\r\n<p>যোগাযোগ- +৮৮০১৭১৫৯৭১৬৮৫</p>', 'image/doctors/qW1B9GPaTIm9eQ7plYiEMHVn7Bx2gG1YJ7vjrD6e.jpeg', 4, 3, 1, 1, 1, '2020-11-02 00:21:26', '2020-11-03 16:23:26'),
(3, 14, 'অধ্যাপক ডাঃ দীপংকর নাথ তালুকদার', 'dr-diponkor-nath-talukdar', '+8801715971685', '+8801715971685', 'এম.বি.বি.এস, এম.পি.এইচ.এম.এস (অর্থো) হাড়-জোড়া ও বিকলাঙ্গ বিশেষজ্ঞ ট্রমা ও অর্থোপেডিক সার্জন অধ্যাপক ও প্রাক্তন বিভাগীয় প্রধান অর্থোপেডিক সার্জারী', 'Dr. Diponkor Nath Talukder', '<p>অধ্যাপক ডাঃ দীপংকর নাথ তালুকদার<br />\r\nএম.বি.বি.এস, এম.পি.এইচ.এম.এস (অর্থো)<br />\r\nহাড়-জোড়া ও বিকলাঙ্গ বিশেষজ্ঞ<br />\r\nট্রমা ও অর্থোপেডিক সার্জন<br />\r\nঅধ্যাপক ও প্রাক্তন বিভাগীয় প্রধান<br />\r\nঅর্থোপেডিক সার্জারী<br />\r\nএম.এ.জি ওসমানী মেডিকেল কলেজ ও হাসপাতাল সিলেট</p>\r\n\r\n<p>চেম্বারঃ এ.বি.সি ডায়গনস্টিক সেন্টারের নীচতলা, সেন্ট্রাল ফার্মেসীর পাশে, চৌহাট্টা পয়েন্ট, সিলেট</p>\r\n\r\n<p>রোগী দেখার সময়ঃ প্রতিদিন বিকাল ৪টা হতে রাত ৯টা পর্যন্ত<br />\r\n(শুক্রবার ও সরকারি ছুটির দিন বন্ধ)</p>\r\n\r\n<p>যোগাযোগ +8801715971685</p>', 'image/doctors/bfKSvRCl8MBGcPCJZrOeu6B0KhNt2L4eZYmbbzOG.jpeg', 4, 3, 1, 1, 1, '2020-11-02 21:15:47', '2020-11-03 23:02:36'),
(4, 1, 'ডাঃ মোঃ জাহাঙ্গীর আলম', 'dr-jahangir-alam', '8801715971685', '+8801715971685', 'এম.বি.বি.এস (ঢাকা), এম.সি.পি.এস (মেডিসিন)  এম.ডি (গ্যাস্ট্রো এন্টারলজী) মেডিসিন, গ্যাস্ট্রোইনটেষ্টাইন ও লিভার ব্যাধি বিশেষজ্ঞ', 'Dr. Md. Jahangir Alam', '<p>ডাঃ মোঃ জাহাঙ্গীর আলম<br />\r\nএম.বি.বি.এস (ঢাকা), এম.সি.পি.এস (মেডিসিন)&nbsp; এম.ডি (গ্যাস্ট্রো এন্টারলজী)<br />\r\nমেডিসিন, গ্যাস্ট্রোইনটেষ্টাইন ও লিভার ব্যাধি বিশেষজ্ঞ<br />\r\nসহযোগী অধ্যাপক ও বিভাগীয় প্রধান<br />\r\nএম.এ.জি ওসমানী মেডিকেল কলেজ হাসপাতাল, সিলেট</p>\r\n\r\n<p>চেম্বারঃ ট্রাস্ট মেডিকেল সার্ভিসেস<br />\r\n১৬,মধুশহীদ, ওসমানী মেডিকেল রোড, সিলেট।</p>\r\n\r\n<p>রোগী দেখার সময়ঃ প্রতিদিন বিকাল ৫ টা থেকে রাত ৯ টা পর্যন্ত</p>\r\n\r\n<p>যোগাযোগ +8801715971685</p>', 'image/doctors/pcwJqjKJP57MJyPS2fA5x3vJbbVRNqeeskia5EDK.jpeg', 4, 3, 1, 1, 1, '2020-11-02 21:19:06', '2020-11-03 22:58:32'),
(5, 4, 'অধ্যাপক ডাঃ সৈয়দ মূসা এম.এ কাইয়ুম', 'dr-syed-musa-m-a-kaiyum', '+8801715971685', '+8801715971685', 'এম.বি.বি.এস, ডি.সি.এইচ, এফ.সি.পি.এস, পি.জি.পি.এন (ইউ.এস.এ) আর.সি.পি.এন্ড এস (আয়ারল্যান্ড)', 'Dr. Syed Musa M.A Kaiyum', '<p>অধ্যাপক ডাঃ সৈয়দ মূসা এম.এ কাইয়ুম<br />\r\nএম.বি.বি.এস, ডি.সি.এইচ, এফ.সি.পি.এস, পি.জি.পি.এন (ইউ.এস.এ)<br />\r\nআর.সি.পি.এন্ড এস (আয়ারল্যান্ড)<br />\r\nপ্রাক্তন বিভাগীয় প্রধান (শিশু রোগ বিভাগ)<br />\r\nনর্থইস্ট মেডিকেল কলেজ হাসপাতাল এবং রাগিব রাবেয়া মেডিকেল কলেজ প্রাক্তন শিশুরোগ বিশেষজ্ঞ, মদিনা হসপিটাল ও রয়েল হসপিটাল,গ্লাসগো,যুক্তরাজ্য।</p>\r\n\r\n<p>চেম্বার: ইবনে সিনা হাসপাতাল সিলেট।<br />\r\nসোবহানীঘাট পয়েন্ট, সিলেট।</p>\r\n\r\n<p>রোগী দেখার সময়: প্রতিদিন বিকাল ৪টা থেকে রাত ৯টা পর্যন্ত।</p>\r\n\r\n<p>যোগাযোগ - +৮৮০১৭১৫৯৭১৬৮৫</p>', 'image/doctors/zSlOAxw8FXIXCDWLtgsb3E2ics1QOnMWluifMSxg.jpeg', 4, 3, 1, 1, 1, '2020-11-02 21:45:50', '2020-11-02 22:46:05'),
(6, 14, 'ডাঃ মোহাম্মদ মাহিন', 'dr-mohammad-mahin', '+8801715971685', '+8801715971685', 'এম.বি.বি.এস, (ডি অর্থো)', 'Dr. Mohammad Mahin', '<p>ডাঃ মোহাম্মদ মাহিন<br />\r\nএম.বি.বি.এস, (ডি অর্থো)<br />\r\nবঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়</p>\r\n\r\n<p>অর্থোপেডিক ও ট্রমা সার্জন</p>\r\n\r\n<p>(বাত-ব্যাথা,মেরুদণ্ড ও হাড় জোড়া রোগ বিশেষজ্ঞ ও সার্জন)<br />\r\nনর্থ ইষ্ট মেডিকেল কলেজ ও হাসপাতাল,সিলেট।</p>\r\n\r\n<p><br />\r\nচেম্বার ০১ঃ ৭১-৭২ নং, পূর্ব স্টেডিয়াম মার্কেট (২য় তলা), সিলেট।<br />\r\nরোগী দেখার সময়ঃ প্রতিদিন বিকাল ৫টা থেকে রাত ৯টা</p>\r\n\r\n<p>চেম্বার ০২ঃ নিউ নাহিদ ফার্মেসী-২<br />\r\nমোকাম রোড, বিয়ানীবাজার, সিলেট।<br />\r\nরোগী দেখার সময়ঃ প্রতি শুক্রবার সকাল ১০টা থেকে বিকাল ৪টা</p>\r\n\r\n<p>যোগাযোগ- ০১৭১৫৯৭১৬৮৫</p>', 'image/doctors/hZPjV0wavQ1rmO3Jj0AfcRa0EgUDDyTr1saCmokO.jpeg', 4, 3, 1, 1, 1, '2020-11-02 21:49:30', '2020-11-03 16:30:37'),
(7, 14, 'ডাঃ ইশতিয়াক উল ফাত্তাহ', 'dr-eshtiaque-ul-fattah', '01715971685', '+8801715971685', 'এম.বি.বি.এস, এম.এস (অর্থোপেডিক্স) হাড়-জোড়া, বিকলাঙ্গ ও আঘাতজনিত রোগ বিশেষজ্ঞ', 'Dr. Ishtiaque ul Fattah', '<p>ডাঃ ইশতিয়াক উল ফাত্তাহ<br />\r\nএম.বি.বি.এস, এম.এস (অর্থোপেডিক্স)<br />\r\nহাড়-জোড়া, বিকলাঙ্গ ও আঘাতজনিত রোগ বিশেষজ্ঞ<br />\r\nঅধ্যাপক, অর্থো-সার্জারী বিভাগ<br />\r\nএম.এ.জি ওসমানী মেডিকেল কলেজ ও হাসপাতাল সিলেট</p>\r\n\r\n<p>চেম্বারঃ মেডিএইড ডায়গনস্টিক এন্ড কনসালটেশন সেন্টার<br />\r\nওসমানী মেডিকেল রোড(মধুশহীদ মাজার সংলগ্ন), সিলেট</p>\r\n\r\n<p>রোগী দেখার সময়ঃ প্রতিদিন বিকাল ৪ঃ৩০ থেকে রাত ৯ঃ৩০ পর্যন্ত (শুক্রবার বন্ধ)</p>\r\n\r\n<p>সিরিয়ালের জন্য সকাল ৯ঃ৩০থেকে -&nbsp; 01792326212</p>', 'image/doctors/ZBPlWsz6m7sKOk7VFPegzXsWmVrfUiRAiyhLEEqL.jpeg', 4, 3, 1, 1, 1, '2020-11-02 22:29:04', '2020-11-03 19:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `h_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`h_id`, `name`, `slug`, `phone`, `hotline`, `address`, `details`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AL HARAMAIN HOSPITAL PVT LTD', 'al-haramain-hospital', '01715971685', '01715971685', 'Chali Bandar, Subhani Ghat, Sylhet-3100', '<p>The Hospital provides round-the-clock emergency and hospitalization services.</p>', 'image/hospitals/xc7sQ9G6UPt4odr6Sby3t6XjVzWBbSjSPwhH0Q6e.jpeg', 1, '2020-10-31 17:10:15', '2020-11-01 21:28:38'),
(2, 'MAG Osmani Medical College Sylhet', 'osmani-medical-college', '0821-713667', '0821-713667', 'Medical Road, Kajolshah, Sylhet', '<p>সিলেট এম.এ.জি ওসমানী মেডিকেল কলেজ</p>', 'image/hospitals/OPIzX84EwL0qf6vcoEWnqLCs8FGaVnGgohBA4okr.png', 1, '2020-11-01 21:10:30', '2020-11-01 21:10:30'),
(3, 'Jalalabad Ragib-Rabeya Medical College & Hospital', 'jalalabad-ragib-rabeya-medical-college', '0821-719090', '0821-719090', '29/5 Pathantola Rd, Sylhet', '<p>Jalalabad Ragib-Rabeya Medical College &amp; Hospital</p>', 'image/hospitals/pr0l7aF8vQTlVsZmrpmSWpptkqSQRumF3ELu5sEe.jpeg', 1, '2020-11-01 21:18:23', '2020-11-01 21:18:23'),
(4, 'North East Medical College & Hospital', 'north-east-medical-college-sylhet', '0821-728587', '0821-728587', 'South Surma, Gohorpur Rd, Sylhet 3100', '<h2>North East Medical College &amp; Hospital</h2>', 'image/hospitals/B2ltgwBOBg9M69dlzTQLsvkKBuoUGR0J2ZZPCFdw.jpeg', 1, '2020-11-01 21:24:17', '2020-11-01 21:24:17'),
(5, 'Park View Medical College Hospital', 'park-view-medical-college', '0821-728878', '0821-728878', 'VIP Road, Taltala, Sylhet, Bangladesh.', '<h2>Park View Medical College Hospital</h2>', 'image/hospitals/ES8RZ8evgtkTiXcHkedDki04h0RVuroYNKRjpN2I.png', 1, '2020-11-01 21:27:49', '2020-11-01 21:27:49'),
(6, 'Oasis Hospital', 'oasis-hospital', '01611-99 0000', '01611-99 0000', 'Subani Ghat Road, Machimpur, Sylhet 3100', '<h2>Oasis Hospital</h2>', 'image/hospitals/qTH3RaCDZMnSLyBW2QXpiqjlJKr8dbmz8PG9nwvN.png', 1, '2020-11-01 21:31:50', '2020-11-01 21:31:50'),
(7, 'Mount Adora Hospital, Akhalia', 'mount-adora-hospital-akhalia', '+8801707 079717', '+8801707 079717', 'Akhalia, Sylhet-Sunamganj Road, Sylhet -3100', '<h3>Mount Adora Hospital, Akhalia</h3>', 'image/hospitals/skUSRt0lx3kX6rtIhuc2fwESoEJqsFROvSxXcIH6.png', 1, '2020-11-01 21:36:38', '2020-11-01 21:36:38'),
(8, 'Mount Adora Hospital, Nayasarak', 'mount-adora-hospital-nayasarak', '+8801786-637 476', '+8801786-637 476', 'Mirboxtula, Nayasarak Sylhet -3100', '<h3>Mount Adora Hospital, Nayasarak</h3>', 'image/hospitals/Jbdj5XZuwk1IOBf58pYVpLYoZLLey5GtdIB8YofL.png', 1, '2020-11-01 21:38:15', '2020-11-01 21:38:15'),
(9, 'Popular Medical Centre and Hospital', 'popular-medical-centre-hospital', '+8801730935676', '+8801730935676', 'Subhanighat, Sylhet-3100', '<p>Popular Medical Centre and Hospital</p>', 'image/hospitals/AcBWtEdv8Wzw68M2sRHBMmWoipAtbsStytVpImoz.jpeg', 1, '2020-11-01 22:08:58', '2020-11-01 22:08:58'),
(10, 'Ibn Sina Hospital Sylhet Ltd', 'ibn-sina-hospital-sylhet-ltd', '+88 08212832735', '+88 08212832735', 'Subhanighat Point, Sylhet 3100, Bangladesh', '<p>Ibn Sina Hospital Sylhet Ltd</p>', 'image/hospitals/L4BjmQoPLnbSGZRWyuVP8QDenfZP2w9lk0EkPHmm.png', 1, '2020-11-01 22:12:54', '2020-11-01 22:12:54'),
(11, 'Matrimangal and Red Crescent Hospital', 'matrimangal-red-cresent', '+88 0821716214', '+88 0821716214', 'Zindabazar, Sylhet 3100, Bangladesh', '<p>Matrimangal and Red Crescent Hospital</p>\r\n\r\n<p><a href=\"https://www.google.com/search?client=firefox-b-d&amp;q=Matrimangal+and+Red+Crescent+Hospital#\">0821-724098</a></p>', 'image/hospitals/h1kwJWafJQjhD64e55HqK0TMmkOB5KWKCJTNE51v.png', 1, '2020-11-01 22:58:42', '2020-11-01 22:58:42'),
(12, 'Niramoy Poly Clinic', 'niramoy-poly-clinic', '+8801715971685', '+8801715971685', 'Nowab road, Sylhet 3100, Bangladesh', '<p>Niramoy Poly Clinic</p>', 'image/hospitals/dVGY7wdcrpA2xqi95vQpNdydY54qanwDmirdb32N.jpeg', 1, '2020-11-01 23:03:09', '2020-11-01 23:03:09'),
(13, 'Sylhet Diabetic Hospital', 'sylhet-diabetic-hospital', '+88 0821713632', '+88 0821713632', 'Modhuban Super Market, Zindabazar Sylhet Sadar', '<p>Sylhet Diabetic Hospital<br />\r\nModhuban Super Market, Zindabazar<br />\r\nSylhet Sadar<br />\r\nSylhet 3100, Bangladesh<br />\r\nPhone: +88 0821713632, +88 08212830383</p>', 'image/hospitals/LQvFfY62kymOmAPugwuOCYIkL5EQYRmfGckmzxxW.jpeg', 1, '2020-11-01 23:05:51', '2020-11-01 23:05:51'),
(14, 'Sadar Hospital', 'sadar-hospital', '+88 0821713506', '+88 0821713506', 'Chowhatta, Sylhet 3100, Bangladesh', '<p>Sadar Hospital<br />\r\nChowhatta<br />\r\nSylhet Sadar<br />\r\nSylhet 3100, Bangladesh<br />\r\nPhone: +88 0821713506</p>', 'image/hospitals/Wvz8tDuqPk9TzVdaqHReXxarERDq79RZhhj0bH3p.jpeg', 1, '2020-11-01 23:08:44', '2020-11-01 23:08:44'),
(15, 'Sylhet Womens Medical College Hospital', 'sylhet-womens-medical-college-hospital', '+8808212830040', '+8808212830040', 'Mirboxtula, Sylhet 3100, Bangladesh', '<h2 style=\"font-style: italic;\"><em><strong>Sylhet Womens Medical College Hospital<br />\r\nMirboxtula<br />\r\nSylhet Sadar<br />\r\nSylhet 3100, Bangladesh<br />\r\nPhone: +8808212830040</strong></em></h2>', 'image/hospitals/nUSp6GQX32f1Xy7Zl9M3lU6a4gBcBpfTvw87EkDm.jpeg', 1, '2020-11-01 23:11:57', '2020-11-01 23:11:57'),
(16, 'Nurjahan Hospital', 'nurjahan-hospital', '+8801715971685', '+8801715971685', 'Dorgah Gate, Sylhet 3100, Bangladesh', '<h2><big><strong><em>Nurjahan Hospital<br />\r\nDorgah Gate<br />\r\nSylhet Sadar<br />\r\nSylhet 3100, Bangladesh</em></strong></big></h2>', 'image/hospitals/5PXYj8Ma6GKifWUsEU8JPMYSDHtQ4Cqfize7EV9e.png', 1, '2020-11-01 23:19:54', '2020-11-01 23:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_24_133751_create_departments_table', 1),
(5, '2020_09_24_144034_create_doctors_table', 1),
(6, '2020_09_26_084356_create_hospitals_table', 1),
(7, '2020_09_26_095047_create_diagnostics_table', 1),
(8, '2020_09_26_103051_create_ambulances_table', 1),
(9, '2020_09_26_111728_create_socialorganizes_table', 1),
(10, '2020_09_26_131915_create_shops_table', 1),
(11, '2020_09_26_144510_create_settings_table', 1),
(12, '2020_09_27_073525_create_clients_table', 1),
(13, '2020_09_27_080311_create_galleries_table', 1),
(14, '2020_09_27_085208_create_postcategories_table', 1),
(15, '2020_09_27_134208_create_posts_table', 1),
(16, '2020_09_27_144245_create_appoinments_table', 1),
(17, '2020_09_28_092534_create_sliders_table', 1),
(18, '2020_09_28_112742_create_staff_table', 1),
(19, '2020_10_02_001844_create_contacts_table', 1),
(20, '2020_10_23_203248_create_divisions_table', 1),
(21, '2020_10_23_203545_create_districts_table', 1),
(22, '2020_10_24_150029_create_upzilas_table', 1),
(23, '2020_10_24_185115_create_advertises_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postcategories`
--

CREATE TABLE `postcategories` (
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `postcategories`
--

INSERT INTO `postcategories` (`cat_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Health Tips', 'health-tips', 1, '2020-10-31 17:14:58', '2020-10-31 17:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_years` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_patients` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_doctors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_staffs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `meta_description`, `about`, `meta_keywords`, `email`, `phone`, `hotline`, `address`, `web_link`, `fb_link`, `twitter_link`, `instagram_link`, `youtube_link`, `service_years`, `total_patients`, `total_doctors`, `total_staffs`, `notice`, `logo`, `favicon`, `cover_image`, `created_at`, `updated_at`) VALUES
(1, 'DoctorEbari', 'DoctorEbari is the largest finding doctor guide website. You will also find a doctor list, get appointments, hospital list, clinic. Doctor Serial Bangladesh', 'Contact us for a variety of hassle-free medical assistance. Request an appointment from our web site to get the serial of doctors with your required experience', 'doctorbari,doctorebari,find doctor,best doctor bd, doctor appointment, doctor booking, doctor service bd, doctor ticket, doctor service, bangldadesh doctor, doctors help', 'doctorebari@gmail.com', '8801715971685', '8801765885996', 'Sylhet-3100, Bangladesh', 'https://doctorebari.com', 'https://facebook.com/doctorEbari', 'https://twitter.com/doctorebari', 'https://www.instagram.com/doctorebari/', 'https://www.youtube.com/channel/UCK6wWhN5vM7Deg8CIPcoO3w', NULL, NULL, '5', NULL, 'প্রিয় ভিজিট\'র আসসালামু আলাইকুম DoctorEbari.com এর পক্ষ থেকে আপনাকে স্বাগতম। আমরা সিলেট বিভাগে ফেইসবুক গ্রুপ- \"সিলেট ডাক্তারি সহায়তা\" এর মাধ্যমে দীর্ঘ দিন যাবত ফ্রী\'তে ডাক্তারি তথ্যসেবা দিয়ে যাচ্ছি। এরই ধারাবাহিকতায় সুবিধাভোগিদের কথা চিন্তা করে আরও উন্নত চিকিৎসা সেবা সহজ ভাবে প্রদান করার লক্ষে \"DoctorEbari.com এর শুভসূচনা করলাম। এখন থেকে এই ওয়েবসাইটের মাধ্যমে খুব সহজেই আপনারা আপনার কাঙ্খিত ডাক্তারের এপয়ন্টমেন্ট নিতে পারেন। অথবা আমাদের ওয়েবসাইটের হটলাইন নাম্বারে যোগাযোগ করতে পারেন। আপনাদের যে কোন পরামর্শ ও অভিযোগ থাকলে ফোন করুন +৮৮০১৭৬৫৮৮৫৯৯৬', 'image/setting/sdhCPuD3sTG4CmLEisOiOrYLIpEfY1wyvXnnt0iR.png', NULL, 'image/setting/AFI3kzazeFXcbLesJzwPHACanwYj2dnkOaD0u9lH.jpeg', '2020-10-30 05:18:14', '2020-11-01 23:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `shop_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sell_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `details`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DoctorEbari', 'The Best Platform For Getting Doctors Appointment in Bangladesh', 'image/sliders/bAHjLGGeNHItuXjr3saaKYRiHgpQSKziTFkvyi9d.jpeg', 1, '2020-10-30 08:00:54', '2020-10-30 08:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `socialorganizes`
--

CREATE TABLE `socialorganizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upzilas`
--

CREATE TABLE `upzilas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `upzila_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upzilas`
--

INSERT INTO `upzilas` (`id`, `division_id`, `district_id`, `upzila_name`, `created_at`, `updated_at`) VALUES
(1, 4, 3, 'Shadar -3100', '2020-10-24 09:27:33', '2020-10-24 09:49:26'),
(2, 4, 3, 'Balaganj', '2020-10-28 08:58:13', '2020-10-28 08:58:13'),
(3, 4, 3, 'Beanibazar', '2020-10-28 08:58:23', '2020-10-28 08:58:23'),
(4, 4, 3, 'Bishwanath', '2020-10-28 08:58:39', '2020-10-28 08:58:39'),
(5, 4, 3, 'Companiganj', '2020-10-28 08:58:50', '2020-10-28 08:58:50'),
(6, 4, 3, 'Dakshin Surma', '2020-10-28 08:58:59', '2020-10-28 08:58:59'),
(7, 4, 3, 'Fenchuganj', '2020-10-28 08:59:15', '2020-10-28 08:59:15'),
(8, 4, 3, 'Golapganj', '2020-10-28 08:59:26', '2020-10-28 08:59:26'),
(9, 4, 3, 'Gowainghat', '2020-10-28 08:59:34', '2020-10-28 08:59:34'),
(10, 4, 3, 'Jaintiapur', '2020-10-28 08:59:44', '2020-10-28 08:59:44'),
(11, 4, 3, 'Kanaighat', '2020-10-28 08:59:53', '2020-10-28 08:59:53'),
(12, 4, 3, 'Osmani Nagar', '2020-10-28 09:00:03', '2020-10-28 09:00:03'),
(13, 4, 3, 'Zakiganj', '2020-10-28 09:00:14', '2020-10-28 09:00:14'),
(14, 4, 4, 'Ajmiriganj', '2020-10-28 09:00:41', '2020-10-28 09:00:41'),
(15, 4, 4, 'Baniachang', '2020-10-28 09:02:10', '2020-10-28 09:02:10'),
(16, 4, 4, 'Bahubal', '2020-10-28 09:02:19', '2020-10-28 09:02:19'),
(17, 4, 4, 'Chunarughat', '2020-10-28 09:02:30', '2020-10-28 09:02:30'),
(18, 4, 4, 'Habiganj Sadar', '2020-10-28 09:02:42', '2020-10-28 09:02:42'),
(19, 4, 4, 'Lakhai', '2020-10-28 09:02:58', '2020-10-28 09:02:58'),
(20, 4, 4, 'Madhabpur', '2020-10-28 09:03:13', '2020-10-28 09:03:13'),
(21, 4, 4, 'Nabiganj', '2020-10-28 09:03:23', '2020-10-28 09:03:23'),
(22, 4, 4, 'Sayestaganj', '2020-10-28 09:03:31', '2020-10-28 09:03:56'),
(23, 4, 5, 'Moulvibazar Sadar', '2020-10-28 09:05:00', '2020-10-28 09:05:00'),
(24, 4, 5, 'Kamalganj', '2020-10-28 09:05:19', '2020-10-28 09:05:19'),
(25, 4, 5, 'Kulaura', '2020-10-28 09:05:31', '2020-10-28 09:05:31'),
(26, 4, 5, 'Rajnagar', '2020-10-28 09:05:42', '2020-10-28 09:05:42'),
(27, 4, 5, 'Sreemangal', '2020-10-28 09:05:57', '2020-10-28 09:05:57'),
(28, 4, 5, 'Barlekha', '2020-10-28 09:06:14', '2020-10-28 09:06:14'),
(29, 4, 5, 'Juri', '2020-10-28 09:06:42', '2020-10-28 09:06:42'),
(30, 4, 6, 'Sunamganj Sadar', '2020-10-28 09:07:11', '2020-10-28 09:07:11'),
(31, 4, 6, 'Bishwamvarpur', '2020-10-28 09:07:24', '2020-10-28 09:07:24'),
(32, 4, 6, 'Chhatak', '2020-10-28 09:07:34', '2020-10-28 09:07:34'),
(33, 4, 6, 'Derai', '2020-10-28 09:08:22', '2020-10-28 09:08:22'),
(34, 4, 6, 'Dharamapasha', '2020-10-28 09:08:33', '2020-10-28 09:08:33'),
(35, 4, 6, 'Dowarabazar', '2020-10-28 09:08:44', '2020-10-28 09:08:44'),
(36, 4, 6, 'Jagannathpur', '2020-10-28 09:08:53', '2020-10-28 09:08:53'),
(37, 4, 6, 'Jamalganj', '2020-10-28 09:09:02', '2020-10-28 09:09:02'),
(38, 4, 6, 'Sullah', '2020-10-28 09:09:12', '2020-10-28 09:09:12'),
(39, 4, 6, 'Tahirpur', '2020-10-28 09:09:24', '2020-10-28 09:09:24'),
(40, 5, 7, 'Dhamrai', '2020-10-28 09:17:18', '2020-10-28 09:17:18'),
(41, 5, 7, 'Dohar', '2020-10-28 09:17:35', '2020-10-28 09:17:35'),
(42, 5, 7, 'Keraniganj', '2020-10-28 09:17:55', '2020-10-28 09:17:55'),
(43, 5, 7, 'Nawabganj', '2020-10-28 09:18:13', '2020-10-28 09:18:13'),
(44, 5, 7, 'Savar', '2020-10-28 09:18:29', '2020-10-28 09:18:29'),
(45, 5, 7, 'Demra', '2020-10-28 09:18:41', '2020-10-28 09:18:41'),
(46, 5, 8, 'Gazipur Sadar', '2020-10-28 09:19:04', '2020-10-28 09:19:04'),
(47, 5, 8, 'Kaliakair', '2020-10-28 09:19:19', '2020-10-28 09:19:19'),
(48, 5, 8, 'Kapasia', '2020-10-28 09:19:34', '2020-10-28 09:19:34'),
(49, 5, 8, 'Sreepur', '2020-10-28 09:19:48', '2020-10-28 09:19:48'),
(50, 5, 8, 'Kaliganj', '2020-10-28 09:20:00', '2020-10-28 09:20:00'),
(51, 6, 20, 'Shadar', '2020-10-31 17:27:11', '2020-10-31 17:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rimon Nahid', 'admin@gmail.com', NULL, 1, '$2y$10$r3rq2/NixMjM6WqOgkb.jubiIvsLtJ/Z6PGAPjM1kTKmczqPXCzTu', NULL, '2020-10-30 04:48:41', '2020-10-30 04:48:41'),
(2, 'Tanvir Hossain', 'tanvir.th96@gmail.com', NULL, 1, '$2y$10$EMxwJPYWIp3kG/1Wee/GU./5JviihPP/T1ysqfJeT/v81mN9ix/RW', NULL, '2020-11-01 12:26:40', '2020-11-01 12:26:40'),
(3, 'Sabbir Ahmed', 'sabbir5050@gmail.com', NULL, 1, '$2y$10$7zeLxsYwYpr1aCAYgJaPb.qZmeOa85LLe.ICGfo5s2uinp0hXjPdC', NULL, '2020-11-01 12:28:01', '2020-11-01 12:28:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertises`
--
ALTER TABLE `advertises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulances`
--
ALTER TABLE `ambulances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appoinments`
--
ALTER TABLE `appoinments`
  ADD PRIMARY KEY (`appoint_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `diagnostics`
--
ALTER TABLE `diagnostics`
  ADD PRIMARY KEY (`diag_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `postcategories`
--
ALTER TABLE `postcategories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialorganizes`
--
ALTER TABLE `socialorganizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `staff_slug_unique` (`slug`);

--
-- Indexes for table `upzilas`
--
ALTER TABLE `upzilas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertises`
--
ALTER TABLE `advertises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ambulances`
--
ALTER TABLE `ambulances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appoinments`
--
ALTER TABLE `appoinments`
  MODIFY `appoint_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `diagnostics`
--
ALTER TABLE `diagnostics`
  MODIFY `diag_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `h_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `postcategories`
--
ALTER TABLE `postcategories`
  MODIFY `cat_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `shop_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialorganizes`
--
ALTER TABLE `socialorganizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upzilas`
--
ALTER TABLE `upzilas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
