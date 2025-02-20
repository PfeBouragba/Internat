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
-- Table structure for table `decharge`
--

CREATE TABLE `decharge` (
  `id_demande` int NOT NULL,
  `student_id` int NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Pending',
  `read_departement` int NOT NULL DEFAULT '0',
  `read_internat` int NOT NULL DEFAULT '0',
  `read_economique` int NOT NULL DEFAULT '0',
  `read_administartion` int NOT NULL DEFAULT '0',
  `notification_status` enum('unread','read') NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `valide_departement` int NOT NULL DEFAULT '0',
  `valide_internat` int NOT NULL DEFAULT '0',
  `valide_economique` int NOT NULL DEFAULT '0',
  `valide_administration` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

--
-- Dumping data for table `decharge`
--

INSERT INTO `decharge` (`id_demande`, `student_id`, `status`, `read_departement`, `read_internat`, `read_economique`, `read_administartion`, `notification_status`, `created_at`, `updated_at`, `valide_departement`, `valide_internat`, `valide_economique`, `valide_administration`) VALUES
(4, 2, 'Validé', 1, 1, 1, 1, 'unread', '2024-01-25 19:40:44', '2024-01-27 23:19:05', 1, 1, 1, 1),
(12, 1, 'Validé', 1, 1, 0, 0, 'unread', '2024-01-27 23:17:48', '2024-01-27 23:19:04', 1, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `decharge`
--
ALTER TABLE `decharge`
  ADD PRIMARY KEY (`id_demande`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `decharge`
--
ALTER TABLE `decharge`
  MODIFY `id_demande` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
