-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2024 at 12:34 AM
-- Server version: 8.0.32
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estc`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('interne','externe','admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'externe',
  `role` enum('student','departement','internat','economique','administration','super_admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'student',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'images/default_user.png',
  `room_number` int DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `ville` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `filliere` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'Génie informatique',
  `annee_scolaire` varchar(10) COLLATE utf8mb4_general_ci DEFAULT '2',
  `genre` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `status`, `role`, `password`, `email`, `image`, `room_number`, `date_naissance`, `ville`, `tel`, `filliere`, `annee_scolaire`, `genre`) VALUES
(32, 'Test 1', 'externe', 'student', NULL, 'test1@example.com', '../images/default_user.png', 1, '2000-01-01', 'Casablanca', '1234567891', 'Génie informatique', '2', 'girl'),
(33, 'Test 2', 'interne', 'student', NULL, 'test2@example.com', '../images/default_user.png', 7, '2000-02-02', 'Casablanca', '1234567892', 'Génie informatique', '2', 'girl'),
(34, 'Test 3', 'externe', 'student', NULL, 'test3@example.com', '../images/default_user.png', 1, '2000-03-03', 'Casablanca', '1234567893', 'Génie informatique', '2', 'boy'),
(35, 'Test 4', 'interne', 'student', NULL, 'test4@example.com', '../images/default_user.png', 4, '2000-04-04', 'Casablanca', '1234567894', 'Génie informatique', '2', 'girl'),
(36, 'Test 5', 'externe', 'student', NULL, 'test5@example.com', '../images/default_user.png', 8, '2000-05-05', 'Casablanca', '1234567895', 'Génie informatique', '2', 'girl'),
(37, 'Test 6', 'interne', 'student', NULL, 'test6@example.com', '../images/default_user.png', 8, '2000-06-06', 'Casablanca', '1234567896', 'Génie informatique', '2', 'boy'),
(38, 'Test 7', 'externe', 'student', NULL, 'test7@example.com', '../images/default_user.png', 7, '2000-07-07', 'Casablanca', '1234567897', 'Génie informatique', '2', 'girl'),
(39, 'Test 8', 'interne', 'student', NULL, 'test8@example.com', '../images/default_user.png', 8, '2000-08-08', 'Casablanca', '1234567898', 'Génie informatique', '2', 'boy'),
(45, 'Khalid Bouragba', 'admin', 'departement', 'a', 'bouragba2008@gmail.com', '../images/bouragba.jpg', NULL, '1980-01-01', 'Casablanca', '061234567', 'Génie informatique', '', 'boy'),
(46, 'Admin Internat', 'admin', 'internat', 'a', 'internat@gmail.com', '../images/default_user.png', NULL, NULL, 'Casablanca\n', NULL, '[value-9]', NULL, 'boy'),
(47, 'Admin Economique', 'admin', 'economique', 'a', 'eco@gmail.com', '../images/default_user.png', NULL, NULL, 'Casablanca\n', NULL, '[value-9]', NULL, 'boy'),
(48, 'Administrateur', 'admin', 'administration', 'a', 'admin@gmail.com', '../images/default_user.png', NULL, NULL, 'Casablanca\n', NULL, '[value-9]', NULL, 'boy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
