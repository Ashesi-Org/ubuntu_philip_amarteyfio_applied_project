-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 11:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ubuntu_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `assessment_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `reviewer_id` int(11) NOT NULL,
  `reviewee_id` int(11) NOT NULL,
  `q1_score` int(3) NOT NULL,
  `q2_score` int(3) NOT NULL,
  `q3_score` int(3) NOT NULL,
  `q4_score` int(3) NOT NULL,
  `q5_score` int(3) NOT NULL,
  `q6_score` int(3) NOT NULL,
  `q7_response` text NOT NULL,
  `q8_response` text NOT NULL,
  `feedback` text NOT NULL,
  `total` int(5) NOT NULL,
  `evaluated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`assessment_id`, `group_id`, `reviewer_id`, `reviewee_id`, `q1_score`, `q2_score`, `q3_score`, `q4_score`, `q5_score`, `q6_score`, `q7_response`, `q8_response`, `feedback`, `total`, `evaluated_at`) VALUES
(6, 16, 38, 1, 4, 5, 5, 5, 5, 5, 'His punctuality and attitude were highly beneficial to the team. Overall he has been a valuable member', 'I learnt how to have a hardworking attitude from him', 'Great Work', 86, '2023-03-31 13:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `assessment_date`
--

CREATE TABLE `assessment_date` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `assessment_start` date NOT NULL,
  `assessment_end` date NOT NULL,
  `status` int(3) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assessment_date`
--

INSERT INTO `assessment_date` (`id`, `group_id`, `assessment_start`, `assessment_end`, `status`, `created_at`) VALUES
(2, 16, '2023-03-31', '2023-04-07', 0, '2023-03-31 13:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `record_id` int(15) NOT NULL,
  `group_id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `attendee_id` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`record_id`, `group_id`, `meeting_id`, `attendee_id`, `status`, `created_at`) VALUES
(14, 10, 11, 1, 0, '2023-03-30 23:11:02'),
(15, 10, 11, 5, 2, '2023-03-30 23:50:22'),
(16, 6, 8, 1, 2, '2023-03-31 10:15:28'),
(17, 6, 9, 1, 2, '2023-03-31 10:15:28'),
(18, 6, 8, 3, 2, '2023-03-31 10:15:28'),
(19, 6, 9, 3, 2, '2023-03-31 10:15:28'),
(20, 6, 8, 4, 2, '2023-03-31 10:15:28'),
(21, 6, 9, 4, 2, '2023-03-31 10:15:28'),
(22, 6, 8, 5, 2, '2023-03-31 10:15:28'),
(23, 6, 9, 5, 2, '2023-03-31 10:15:28'),
(24, 6, 14, 1, 2, '2023-03-31 12:47:16'),
(25, 6, 14, 3, 2, '2023-03-31 12:47:16'),
(26, 6, 14, 4, 2, '2023-03-31 12:47:16'),
(27, 6, 14, 5, 2, '2023-03-31 12:47:16'),
(28, 16, 15, 38, 1, '2023-03-31 13:46:43'),
(29, 16, 16, 38, 2, '2023-03-31 19:35:46'),
(30, 16, 17, 38, 2, '2023-03-31 19:35:46'),
(31, 16, 15, 1, 2, '2023-03-31 19:35:46'),
(32, 16, 16, 1, 2, '2023-03-31 19:35:46'),
(33, 16, 17, 1, 2, '2023-03-31 19:35:46'),
(34, 16, 19, 38, 2, '2023-04-01 15:39:02'),
(35, 16, 19, 1, 2, '2023-04-01 15:39:02'),
(36, 16, 23, 38, 0, '2023-04-01 16:09:44'),
(37, 16, 22, 38, 2, '2023-04-02 15:53:47'),
(38, 16, 22, 1, 2, '2023-04-02 15:53:47'),
(39, 16, 23, 1, 2, '2023-04-02 15:53:47'),
(40, 16, 24, 38, 2, '2023-04-05 11:27:43'),
(41, 16, 24, 1, 2, '2023-04-05 11:27:43'),
(42, 16, 18, 38, 2, '2023-04-06 19:46:17'),
(43, 16, 18, 1, 2, '2023-04-06 19:46:17'),
(44, 10, 12, 1, 2, '2023-04-16 15:52:46'),
(45, 10, 12, 5, 2, '2023-04-16 15:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `chat_name` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sent_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `event_tit` varchar(200) NOT NULL,
  `event_desc` text NOT NULL,
  `event_date` date NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `group_id`, `event_tit`, `event_desc`, `event_date`, `status`, `created_at`) VALUES
(1, 6, 'Assign Group Roles', 'Assign group Roles to everybody to fostter effective gortruaicbajkbanbdajkbsdajbsdjkbbdasjkbsdajkbkdjbdjkbjbdakbdsabkjdbkjsdbjkdbdkbdsbkdbjdbsdkjbsjkd', '2023-03-29', 0, '2023-03-13 00:08:23'),
(2, 6, 'Complete Wireframe', 'lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,', '2023-03-31', 0, '2023-03-13 00:11:59'),
(3, 6, 'javjavdsa', 'is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors', '2023-03-22', 0, '2023-03-13 00:13:18'),
(4, 6, 'Complete Wireframe', 'fdfjhhhhhhhhhhhhhhhhhh', '2023-03-30', 0, '2023-03-13 00:18:50'),
(5, 6, 'ukifksjkhfdjkfhdkj', 'jlkwfeeeeeeeeeeeeeeeeeeeeeeehjdkjvbkbskbksvdbjkdsbkjsdbjdsyfueiyhiwe78276782364782bfbmn\\ mnvbmnvsbksvbkvbndsbjvjhdhbcdbdhjsbdhjsdcjsdbdsjbcdjhdsbdhbdsjhbdcjhdbsjh', '2023-03-16', 0, '2023-03-13 00:21:56'),
(6, 4, 'Assign Group Roles', 'saddddddddddddddddd', '2023-03-30', 0, '2023-03-13 14:33:04'),
(7, 9, 'Finish Midsem Report', 'Complete Midsem Report wih:\r\n- Intro\r\n-Purpose\r\n- Motivation\r\n-Etc', '2023-03-15', 0, '2023-03-13 17:01:21'),
(8, 4, 'Finish Midsem Report', 'ghghchggchchgch', '2023-03-22', 0, '2023-03-13 17:22:13'),
(9, 3, 'Assign Group Roles', 'ssssssssssssssssssss', '2023-03-15', 0, '2023-03-14 10:03:59'),
(10, 3, 'Complete Wireframe', 'afasassda', '2023-03-31', 0, '2023-03-21 00:22:11'),
(11, 5, 'Assign Group Roles', 'Assign Roles for the Members in the Group', '2023-03-30', 0, '2023-03-21 18:25:38'),
(12, 16, 'Assign Group Roles', 'Assign Group Roles', '2023-04-04', 0, '2023-04-03 21:56:16'),
(13, 16, 'Assign Group Roles', 'Complete Wireframe', '2023-04-08', 0, '2023-04-03 21:56:36'),
(14, 16, 'Team Bonding', 'Test', '2023-04-19', 0, '2023-04-03 21:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_desc` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`, `group_desc`, `created_at`) VALUES
(3, 'COA TEAM A', 'This Group Was created for Final COA project', '2023-02-25 17:13:43'),
(4, 'ACI Team Ama Ata Aidoo', 'Created for the African Team Presentation', '2023-02-25 17:57:49'),
(5, 'OS Presentation Group', 'Group was created for the OS Final Presentation', '2023-02-25 18:05:08'),
(6, 'Applied Capstone Project', 'Ubuntu: An Efficient Teamwork Solution Project ', '2023-02-26 12:40:42'),
(7, 'Capstone Presentation', 'This group was created for the Capstone Demo', '2023-02-26 23:32:31'),
(8, 'Group', 'dddd', '2023-02-28 10:19:28'),
(9, 'HCI Group', 'Created for the HCI Group Final Project/Assesment', '2023-03-13 16:54:57'),
(10, 'Groupjhhhhhhhhhhvjvjvjhvjhvhjv', 'fghghghghghghghghghghghgh', '2023-03-13 17:23:25'),
(11, 'test_group', 'test_group', '2023-03-25 14:19:21'),
(16, 'COA TEAM B', 'Team to tackle COA team project from April 6th to 7th May', '2023-03-31 12:33:03'),
(17, 'Test Group', 'This is a test group', '2023-04-03 10:54:38'),
(18, 'Functional Test Group', 'Functional Test Group', '2023-04-03 22:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `group_admin`
--

CREATE TABLE `group_admin` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_admin`
--

INSERT INTO `group_admin` (`group_id`, `user_id`) VALUES
(3, 1),
(4, 1),
(5, 3),
(6, 1),
(7, 4),
(8, 1),
(9, 5),
(10, 1),
(16, 38),
(11, 32),
(18, 38);

-- --------------------------------------------------------

--
-- Table structure for table `invites`
--

CREATE TABLE `invites` (
  `invite_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `email_to` varchar(200) NOT NULL,
  `token` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `expires_at` datetime NOT NULL,
  `status` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invites`
--

INSERT INTO `invites` (`invite_id`, `group_id`, `email_to`, `token`, `created_at`, `expires_at`, `status`) VALUES
(2, 6, 'b.tunde@ashesi.edu.gh', 'DbaCN9L1FetCZ0mPDuNURxGApYYae5', '2023-03-03 21:02:15', '2023-03-10 22:02:15', 1),
(3, 5, 'philip.amarteyfio@ashesi.edu.gh', 'npVOmiIAiJT9jvLyq8eywMl3tpy0eZjCrfFAja95', '2023-03-04 00:01:58', '2023-03-11 01:01:58', 1),
(4, 6, 'kbrantuo@ashesi.edu.gh', 'KSCAMiFsZvesId0NSlkS2rVdZVc3U17BZCMjs4xy', '2023-03-04 00:21:20', '2023-03-11 01:21:20', 1),
(5, 5, 'philip.amarteyfio@ashesi.edu.gh', 'viTg4iAbl8mMF8uCo2BqmdJmM0jJXIRRUdiCrZBV', '2023-03-04 09:23:24', '2023-03-11 10:23:24', 1),
(6, 6, 'b.tunde@ashesi.edu.gh', 'UdSdLUGqD6H71rXOI3GShicrWw6Vo18on9K2zex6', '2023-03-04 09:27:02', '2023-03-11 10:27:02', 1),
(7, 4, 'b.tunde@ashesi.edu.gh', 'acIRxg0TWaagYNRpCAaPxVejRBd1EuDe9bbA17cq', '2023-03-04 09:28:10', '2023-03-11 10:28:10', 1),
(8, 5, 'philip.amarteyfio@ashesi.edu.gh', 'ErTauZPq6v9sMxk7ReWMrakpVXC7XZnWHNkvzMwB', '2023-03-04 09:30:23', '2023-03-11 10:30:23', 2),
(9, 3, 'b.tunde@ashesi.edu.gh', 'ghpg51GPY8ZNcu94g7uQMn9I7YyFrc4m9FPzwCL0', '2023-03-09 22:58:28', '2023-03-16 23:58:28', 1),
(10, 9, 'philip.amarteyfio@ashesi.edu.gh', 'oqGH6zrZXzDh5aeTy1Rk6ao8sL75thKsHYGHp1yB', '2023-03-13 16:55:39', '2023-03-20 17:55:39', 1),
(11, 9, 'b.tunde@ashesi.edu.gh', 'RwZEuA8IKAHm6isQ83Pl9dvVIHMqb5X7YZgSvEWB', '2023-03-13 16:55:52', '2023-03-20 17:55:52', 2),
(12, 9, 'b.tunde@ashesi.edu.gh', 'PnRb96iraFRjfOoAIfN97TKvxNzVz3pmZJYbJa3t', '2023-03-13 16:55:54', '2023-03-20 17:55:54', 2),
(13, 9, 'b.tunde@ashesi.edu.gh', 'k4PbXFoMWBkDLNUB8uYuzfXLqpD1W9B4GmIDdReU', '2023-03-13 16:55:57', '2023-03-20 17:55:57', 2),
(14, 9, 'b.tunde@ashesi.edu.gh', '62X8t5BCWawyPVREBaqahvLRK87g5dMc8H3HyqRW', '2023-03-13 16:56:06', '2023-03-20 17:56:06', 1),
(15, 3, 'p.adderall@ashesi.edu.gh', 'kIOJCc3XNi6n9p7PfLE1t9b0B2k2f6aOWgspuPjP', '2023-03-13 17:23:55', '2023-03-20 18:23:55', 1),
(16, 6, 'p.adderall@ashesi.edu.gh', '8NwHJFZjSNKk6FQk2vAjGNr6t8TqeCsOk7oQYl1k', '2023-03-13 17:24:19', '2023-03-20 18:24:19', 1),
(17, 4, 'p.adderall@ashesi.edu.gh', 'bMOA7DUgrw2ryhPUsxJP4oZfF4FPSMRpjarHF6Bx', '2023-03-13 17:24:43', '2023-03-20 18:24:43', 1),
(18, 10, 'p.adderall@ashesi.edu.gh', 'ruxTPZZuJrRtWUHsqEpznSWfw1LSYgdLDQIVWFIk', '2023-03-13 17:37:42', '2023-03-20 18:37:42', 1),
(19, 16, 'philip.amarteyfio@ashesi.edu.gh', 'UHejxJrXZ5p3Se7LSNYXS1zoQ329CucwnC68ysmS', '2023-03-31 12:33:20', '2023-04-07 14:33:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `meeting_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `meeting_title` varchar(150) NOT NULL,
  `meeting_desc` text NOT NULL,
  `meeting_type` varchar(50) NOT NULL,
  `meeting_loc` varchar(200) NOT NULL,
  `begins_at` datetime NOT NULL,
  `ends_at` datetime NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`meeting_id`, `group_id`, `meeting_title`, `meeting_desc`, `meeting_type`, `meeting_loc`, `begins_at`, `ends_at`, `status`, `created_at`) VALUES
(7, 3, 'Test Meeting 1', 'This is a Testt', 'Online', 'link', '2023-03-19 20:04:00', '2023-03-19 20:45:00', 0, '2023-03-19 20:03:27'),
(8, 6, 'Meeting 1', '45000000000', 'Online', 'Norton Mutolsky', '2023-03-20 23:15:00', '2023-03-20 23:20:00', 0, '2023-03-20 23:10:13'),
(9, 6, 'RN', 'fgdfgdfgdfgdfgdfgdfgdfgd', 'In-Person', 'Norton Mutolsky', '2023-03-20 23:31:00', '2023-03-20 23:47:00', 0, '2023-03-20 23:13:11'),
(10, 5, 'Meeting 1', '500', 'In-Person', 'Norton Mutolsky', '2023-03-21 18:31:00', '2023-03-21 18:52:00', 0, '2023-03-21 18:29:36'),
(11, 10, 'Meeting 1', 'GGGGGGGG', 'Online', 'Norton Mutolsky', '2023-03-30 23:10:00', '2023-03-30 23:32:00', 0, '2023-03-30 23:06:11'),
(12, 10, 'Test', 'adada', 'Online', 'zoom.link', '2023-04-15 16:10:00', '2023-04-15 16:40:00', 0, '2023-03-30 23:10:27'),
(13, 6, 'Meeting 1', 'Dependencies', 'In-Person', 'Norton Mutolsky', '2023-04-08 10:20:00', '2023-04-08 10:53:00', 0, '2023-03-31 10:17:10'),
(14, 6, 'Meeting 3', 'Please Work', 'In-Person', 'Norton Mutolsky', '2023-03-31 10:43:00', '2023-03-31 11:24:00', 0, '2023-03-31 10:20:03'),
(15, 16, 'Meeting 1', 'To introduce ourselves, discuss objectives, etc', 'In-Person', 'Norton Mutolsky', '2023-03-31 13:35:00', '2023-03-31 14:35:00', 0, '2023-03-31 12:34:50'),
(16, 16, 'Meeting 2', 'To assign group roles and discuss strategy', 'In-Person', 'Norton Mutolsky', '2023-03-31 14:40:00', '2023-03-31 15:40:00', 0, '2023-03-31 12:38:39'),
(17, 16, 'Meeting 3', 'At this point abeg come', 'Online', 'zoom.us.091u81hfuinvnu1fin1onk1kfn1jnfnk1n', '2023-03-31 16:50:00', '2023-03-31 17:50:00', 0, '2023-03-31 12:48:13'),
(18, 16, 'Lorem Ipsum loret', 'Lorem Ipsum loret Lorem Ipsum loret Lorem Ipsum loret Lorem Ipsum loret Lorem Ipsum loret Lorem Ipsum loret', 'In-Person', 'Norton Mutolsky', '2023-04-05 14:42:00', '2023-04-05 15:43:00', 0, '2023-03-31 13:43:16'),
(19, 16, 'Meeting 5', 'Lorem Ipsum loret Lorem Ipsum loret Lorem Ipsum loret Lorem Ipsum loret Lorem Ipsum loret', 'In-Person', 'zoom.us.091u81hfuinvnu1fin1onk1kfn1jnfnk1n', '2023-04-01 14:45:00', '2023-04-01 15:30:00', 0, '2023-03-31 13:45:36'),
(22, 16, 'Test Meeting 1', 'Test Meeting', 'In-Person', 'RB 116', '2023-04-01 16:20:00', '2023-04-01 17:20:00', 0, '2023-04-01 15:55:07'),
(23, 16, 'Test Attendance', 'adaddadaadassdada', 'Online', 'zoom', '2023-04-01 16:09:00', '2023-04-01 16:34:00', 0, '2023-04-01 16:08:08'),
(24, 16, 'Function Test 1', 'Functional Test 1', 'In-Person', 'Norton Mutolsky', '2023-04-04 21:10:00', '2023-04-04 22:10:00', 0, '2023-04-03 21:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `resource_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `resource_desc` varchar(200) NOT NULL,
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(150) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `group_id`, `created_at`) VALUES
(1, 'Frontend Engineer', 5, '2023-04-01 18:17:30'),
(3, 'Database Developer', 6, '2023-04-01 18:47:06'),
(5, 'Research Lead', 16, '2023-04-02 13:05:46'),
(6, 'Backend Developer', 16, '2023-04-03 22:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `task_title` varchar(150) NOT NULL,
  `task_desc` text NOT NULL,
  `deadline` date NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `group_id`, `task_title`, `task_desc`, `deadline`, `assigned_to`, `status`, `created_at`) VALUES
(7, 6, 'Water', 'Water', '2023-03-30', 1, 1, '2023-03-10 00:03:12'),
(8, 6, 'Finish File Transfer System', 'Complete file.class', '2023-03-30', 3, 1, '2023-03-10 01:11:05'),
(9, 6, 'Deadlift 1000 Pounds', 'Go INsisddeeeee', '2023-03-29', 4, 1, '2023-03-11 16:21:41'),
(10, 5, 'Get Paa Sum Bishes', 'Nigga going out sad', '2023-03-29', 1, 1, '2023-03-12 18:54:24'),
(11, 4, 'Deadlift 1000 Pounds', 'GGGG', '2023-04-27', 3, 1, '2023-03-12 20:59:43'),
(12, 4, 'Water', 'Water', '2023-03-30', 3, 1, '2023-03-12 21:00:38'),
(13, 6, 'modern family', 'hgadjhsdagjhsjhgahs', '2023-03-22', 4, 1, '2023-03-12 21:41:05'),
(14, 6, 'Waterdd', 'jsvfjhfhbajhad jajda', '2023-04-07', 3, 1, '2023-03-12 21:43:59'),
(15, 6, 'hfhg', 'hhchgcgcgch', '2023-03-30', 3, 1, '2023-03-12 21:44:19'),
(16, 9, 'Get Paa Sum Bishes', 'hhhhhhh', '2023-03-21', 1, 1, '2023-03-13 16:57:31'),
(17, 9, 'GGGG', 'ahasdbgkjajda', '2023-03-29', 3, 2, '2023-03-13 16:58:27'),
(18, 3, 'Water', 'mnmn', '2023-03-15', 3, 1, '2023-03-14 10:04:49'),
(42, 16, 'Deadlift 1000 Pounds', 'Lorem Ipsum loret Lorem Ipsum loret', '2023-04-06', 1, 1, '2023-03-31 13:47:28'),
(43, 16, 'modern family', 'Lorem Ipsum loret Lorem Ipsum loret Lorem Ipsum loret', '2023-04-07', 38, 0, '2023-03-31 13:47:51'),
(44, 5, 'Test Task', 'Description', '2023-04-08', 3, 0, '2023-04-01 17:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(200) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `password`, `contact`, `role`, `created_at`) VALUES
(1, 'Philip', 'Amarteyfio', 'philip.amarteyfio@ashesi.edu.gh', '$2y$10$0bVJa.ktNsqu3oEjdR8te.shf5UF8nPRbHFxM.hjWUwSeCcOZANJy', '0204576391', 0, '2023-02-22 11:17:06'),
(3, 'Baba', 'Tunde', 'b.tunde@ashesi.edu.gh', '$2y$10$2jT5ASprUSVtT4uPBEPVPOQ5kQosuStgvQe8OCGZbxh/6ixCf0AUS', '+2330204567891', 0, '2023-02-25 18:03:17'),
(4, 'Kwame', 'Brantuo', 'kbrantuo@ashesi.edu.gh', '$2y$10$rlG4Lk0DaekCMOPOwZxDYe9gPp5ZEQ83CDG1clRe5n1L.nkwkS3Zy', '+2330202145687', 0, '2023-02-26 23:31:12'),
(5, 'Paa Kwasi', 'Adderall', 'p.adderall@ashesi.edu.gh', '$2y$10$bwdJBrFube5FN.BzIBqZ7.g5qC1il9j.Qx9/5pTLbg/nbgl1j.VR6', '+23320456783', 0, '2023-03-13 16:53:47'),
(32, 'test', 'user', 'test.user@ashesi.edu.gh', 'password', '0203456781', 0, '2023-03-25 14:20:17'),
(38, 'Dennis', 'Kwarteng', 'dkwart@gmail.com', '$2y$10$uAdwpnH0yxQZMucxkW8HgOjsBICghMB7R71o.FLMA/Ba3gkES2shu', '0244812345', 0, '2023-03-31 12:32:11'),
(39, 'John', 'Doe', 'newemail@example.com', '$2y$10$7LCHeDwlgIWOruRQgfYsVuZglsbCVDSYUbgdOVBaByXVtQoODRG1e', '1234567890', 0, '2023-04-03 10:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`user_id`, `group_id`) VALUES
(1, 3),
(1, 4),
(3, 5),
(1, 6),
(4, 7),
(1, 8),
(3, 6),
(4, 6),
(1, 5),
(3, 4),
(3, 3),
(5, 9),
(1, 9),
(3, 9),
(1, 10),
(5, 3),
(5, 6),
(5, 4),
(5, 10),
(38, 16),
(1, 16),
(32, 11),
(38, 18);

-- --------------------------------------------------------

--
-- Table structure for table `user_invites`
--

CREATE TABLE `user_invites` (
  `user_id` int(11) NOT NULL,
  `invite_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `group_id`) VALUES
(3, 3, 6),
(1, 5, 16),
(38, 6, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`assessment_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `reviewee_id` (`reviewee_id`),
  ADD KEY `reviewer_id` (`reviewer_id`);

--
-- Indexes for table `assessment_date`
--
ALTER TABLE `assessment_date`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `attendee_id` (`attendee_id`),
  ADD KEY `meeting_id` (`meeting_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `group_admin`
--
ALTER TABLE `group_admin`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `invites`
--
ALTER TABLE `invites`
  ADD PRIMARY KEY (`invite_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`meeting_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`resource_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `assigned_to` (`assigned_to`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `user_invites`
--
ALTER TABLE `user_invites`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `invite_id` (`invite_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `assessment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `assessment_date`
--
ALTER TABLE `assessment_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `record_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `invites`
--
ALTER TABLE `invites`
  MODIFY `invite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `meeting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assessment`
--
ALTER TABLE `assessment`
  ADD CONSTRAINT `assessment_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`),
  ADD CONSTRAINT `assessment_ibfk_2` FOREIGN KEY (`reviewee_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `assessment_ibfk_3` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `assessment_date`
--
ALTER TABLE `assessment_date`
  ADD CONSTRAINT `assessment_date_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`attendee_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`meeting_id`),
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`chat_id`) REFERENCES `chat` (`chat_id`),
  ADD CONSTRAINT `chat_messages_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Constraints for table `group_admin`
--
ALTER TABLE `group_admin`
  ADD CONSTRAINT `group_admin_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`),
  ADD CONSTRAINT `group_admin_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `invites`
--
ALTER TABLE `invites`
  ADD CONSTRAINT `invites_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Constraints for table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`),
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD CONSTRAINT `user_groups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_groups_ibfk_3` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);

--
-- Constraints for table `user_invites`
--
ALTER TABLE `user_invites`
  ADD CONSTRAINT `user_invites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_invites_ibfk_2` FOREIGN KEY (`invite_id`) REFERENCES `invites` (`invite_id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_roles_ibfk_3` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
