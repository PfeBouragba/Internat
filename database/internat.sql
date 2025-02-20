-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2024 at 12:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
-- Table structure for table `internat`
--

CREATE TABLE `internat` (
  `id_demande` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `room_number` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `valide` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

--
-- Dumping data for table `internat`
--

INSERT INTO `internat` (`id_demande`, `student_id`, `name`, `ville`, `created_at`, `updated_at`, `room_number`, `status`, `genre`, `valide`) VALUES
(5, 15, 'Chatira', 'berrechid', '2024-01-27 20:27:19', '2024-01-27 20:27:19', 110, 'pending', 'girl', 0),
(11, 1, 'Adam Ait Oufkir', 'Casablanca', '2024-01-27 23:16:54', '2024-01-27 23:16:54', 5, 'accepted', 'boy', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `internat`
--
ALTER TABLE `internat`
  ADD PRIMARY KEY (`id_demande`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `internat`
--
ALTER TABLE `internat`
  MODIFY `id_demande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
