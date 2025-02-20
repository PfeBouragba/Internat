-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2024 at 12:21 AM
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

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `createBoysRooms` ()   BEGIN
    DECLARE i INT DEFAULT 1;
    
    WHILE i <= 110 DO
        INSERT INTO rooms (room, building, num_students) VALUES (i, 'boys', NULL);
        SET i = i + 1;
    END WHILE;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `createGirlsRooms` ()   BEGIN
    DECLARE i INT DEFAULT 100;
    DECLARE j INT DEFAULT 200;
    DECLARE k INT DEFAULT 300;
    DECLARE l INT DEFAULT 400;
    
    WHILE i <= 129 DO
        INSERT INTO rooms (room, building, num_students) VALUES (i, 'girls', NULL);
        SET i = i + 1;
    END WHILE;

    WHILE j <= 229 DO
        INSERT INTO rooms (room, building, num_students) VALUES (j, 'girls', NULL);        
        SET j = j + 1;
    END WHILE;

    WHILE k <= 329 DO
        INSERT INTO rooms (room, building, num_students) VALUES (k, 'girls', NULL);       
        SET k = k + 1;
    END WHILE;

    WHILE l <= 429 DO
        INSERT INTO rooms (room, building, num_students) VALUES (l, 'girls', NULL);       
        SET l = l + 1;
    END WHILE;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertEtudi` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  
  WHILE i <= 100 DO
    INSERT INTO `test`(`cin`, `nom`, `status`, `password`, `email`, `image`, `room_number`, `date_naissance`, `ville`, `tel`, `filliere`, `annee_scolaire`, `sexe`)
    VALUES
      (CONCAT('BKi', LPAD(i, 4, '0')), '1-GM1', 'externe', NULL, CONCAT(i, '-GM1@gmail.com'), '../images/default_user.png', NULL, NULL, NULL, NULL, 'Génie mécanique (GM)', '1', IF(i % 2 = 0, 'girl', 'boy'));

    SET i = i + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertEtudiantsGE1` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 50 DO
    INSERT INTO `users`(`cin`, `name`, `status`, `role`, `password`, `email`, `filliere`, `annee_scolaire`, `genre`)
    VALUES
      (CONCAT('GE1', LPAD(i, 3, '0')), CONCAT(j, '-GE1'), 'externe', 'student', NULL, CONCAT(j, '-GE1@gmail.com'), 'Génie éléctrique (GE)', '1', IF(i % 2 = 0, 'girl', 'boy'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertEtudiantsGE2` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 50 DO
    INSERT INTO `users`(`cin`, `name`, `status`, `role`, `password`, `email`, `filliere`, `annee_scolaire`, `genre`)
    VALUES
      (CONCAT('GE2', LPAD(i, 3, '0')), CONCAT(j, '-GE2'), 'externe', 'student', NULL, CONCAT(j, '-GE2@gmail.com'), 'Génie éléctrique (GE)', '2', IF(i % 2 = 0, 'girl', 'boy'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertEtudiantsGI1` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 50 DO
    INSERT INTO `users`(`cin`, `name`, `status`, `role`, `password`, `email`, `filliere`, `annee_scolaire`, `genre`)
    VALUES
      (CONCAT('GI1', LPAD(i, 3, '0')), CONCAT(j, '-GI1'), 'externe', 'student', NULL, CONCAT(j, '-GI1@gmail.com'), 'Génie informatique (GI)', '1', IF(i % 2 = 0, 'girl', 'boy'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertEtudiantsGI2` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 50 DO
    INSERT INTO `users`(`cin`, `name`, `status`, `role`, `password`, `email`, `filliere`, `annee_scolaire`, `genre`)
    VALUES
      (CONCAT('GI2', LPAD(i, 3, '0')), CONCAT(j, '-GI2'), 'externe', 'student', NULL, CONCAT(j, '-GI2@gmail.com'), 'Génie informatique', '1', IF(i % 2 = 0, 'girl', 'boy'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertEtudiantsGM1` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 50 DO
    INSERT INTO `users`(`cin`, `name`, `status`, `role`, `password`, `email`, `filliere`, `annee_scolaire`, `genre`)
    VALUES
      (CONCAT('GM1', LPAD(i, 3, '0')), CONCAT(j, '-GM1'), 'externe', 'student', NULL, CONCAT(j, '-GM1@gmail.com'), 'Génie mécanique', '1', IF(i % 2 = 0, 'girl', 'boy'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertEtudiantsGM2` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 50 DO
    INSERT INTO `users`(`cin`, `name`, `status`, `role`, `password`, `email`, `filliere`, `annee_scolaire`, `genre`)
    VALUES
      (CONCAT('GM2', LPAD(i, 3, '0')), CONCAT(j, '-GM2'), 'externe', 'student', NULL, CONCAT(j, '-GM2@gmail.com'), 'Génie mécanique', '2', IF(i % 2 = 0, 'girl', 'boy'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertEtudiantsGP1` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 50 DO
    INSERT INTO `users`(`cin`, `name`, `status`, `role`, `password`, `email`, `filliere`, `annee_scolaire`, `genre`)
    VALUES
      (CONCAT('GP1', LPAD(i, 3, '0')), CONCAT(j, '-GP1'), 'externe', 'student', NULL, CONCAT(j, '-GP1@gmail.com'), 'Génie de procédé', '1', IF(i % 2 = 0, 'girl', 'boy'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertEtudiantsGP2` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 50 DO
    INSERT INTO `users`(`cin`, `name`, `status`, `role`, `password`, `email`, `filliere`, `annee_scolaire`, `genre`)
    VALUES
      (CONCAT('GP2', LPAD(i, 3, '0')), CONCAT(j, '-GP2'), 'externe', 'student', NULL, CONCAT(j, '-GP2@gmail.com'), 'Génie de procédé', '2', IF(i % 2 = 0, 'girl', 'boy'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertGE1` ()   BEGIN
  DECLARE i INT DEFAULT 1;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 50 DO
    INSERT INTO `comptes`(`cin`, `nom`, `role`, `password`, `email`)
    VALUES
      (CONCAT('GE1', LPAD(i, 3, '0')), CONCAT(j, '-GE1'), 'student', NULL, CONCAT(j, '-GE1@gmail.com'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertGE2` ()   BEGIN
  DECLARE i INT DEFAULT 51;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 100 DO
    INSERT INTO `comptes`(`cin`, `nom`, `role`, `password`, `email`)
    VALUES
      (CONCAT('GE2', LPAD(i, 3, '0')), CONCAT(j, '-GE2'), 'student', NULL, CONCAT(j, '-GE2@gmail.com'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertGI1` ()   BEGIN
  DECLARE i INT DEFAULT 101;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 150 DO
    INSERT INTO `comptes`(`cin`, `nom`, `role`, `password`, `email`)
    VALUES
      (CONCAT('GI1', LPAD(i, 3, '0')), CONCAT(j, '-GI1'), 'student', NULL, CONCAT(j, '-GI1@gmail.com'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertGI2` ()   BEGIN
  DECLARE i INT DEFAULT 151;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 200 DO
    INSERT INTO `comptes`(`cin`, `nom`, `role`, `password`, `email`)
    VALUES
      (CONCAT('GI2', LPAD(i, 3, '0')), CONCAT(j, '-GI2'), 'student', NULL, CONCAT(j, '-GI2@gmail.com'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertGM1` ()   BEGIN
  DECLARE i INT DEFAULT 201;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 250 DO
    INSERT INTO `comptes`(`cin`, `nom`, `role`, `password`, `email`)
    VALUES
      (CONCAT('GM1', LPAD(i, 3, '0')), CONCAT(j, '-GM1'), 'student', NULL, CONCAT(j, '-GM1@gmail.com'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertGM2` ()   BEGIN
  DECLARE i INT DEFAULT 251;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 300 DO
    INSERT INTO `comptes`(`cin`, `nom`, `role`, `password`, `email`)
    VALUES
      (CONCAT('GM2', LPAD(i, 3, '0')), CONCAT(j, '-GM2'), 'student', NULL, CONCAT(j, '-GM2@gmail.com'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertGP1` ()   BEGIN
  DECLARE i INT DEFAULT 301;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <=350 DO
    INSERT INTO `comptes`(`cin`, `nom`, `role`, `password`, `email`)
    VALUES
      (CONCAT('GP1', LPAD(i, 3, '0')), CONCAT(j, '-GP1'), 'student', NULL, CONCAT(j, '-GP1@gmail.com'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertGP2` ()   BEGIN
  DECLARE i INT DEFAULT 351;
  DECLARE j INT DEFAULT 1;
  
  WHILE i <= 400 DO
    INSERT INTO `comptes`(`cin`, `nom`, `role`, `password`, `email`)
    VALUES
      (CONCAT('GP2', LPAD(i, 3, '0')), CONCAT(j, '-GP2'), 'student', NULL, CONCAT(j, '-GP2@gmail.com'));

    SET i = i + 1;
    SET j = j + 1;
  END WHILE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAllNumStudents` ()   BEGIN
    DECLARE room_var INT;
    DECLARE count_students INT;
    DECLARE done BOOLEAN DEFAULT FALSE;  -- Add this line to declare the 'done' variable

    -- Declare a cursor to iterate through all rooms in the rooms table
    DECLARE room_cursor CURSOR FOR
        SELECT room
        FROM rooms;

    -- Declare continue handler for the cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    -- Open the cursor
    OPEN room_cursor;

    -- Start looping through rooms
    room_loop: LOOP
        -- Fetch the room_id
        FETCH room_cursor INTO room_var;

        -- Exit the loop if there are no more rooms
        IF done THEN
            LEAVE room_loop;
        END IF;

        -- Calculate the count of students for the current room
        SET count_students = (
            SELECT COUNT(*) 
            FROM users 
            WHERE room_number = room_var
        );

        -- Update num_students in the rooms table
        UPDATE rooms
        SET num_students = count_students
        WHERE room = room_var;
    END LOOP;

    -- Close the cursor
    CLOSE room_cursor;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateNumStudentsForAllRooms` ()   BEGIN
    DECLARE room_var INT;
    DECLARE building_var VARCHAR(255); -- Assuming VARCHAR(255) is the correct data type for the 'building' column
    DECLARE count_students INT;
    DECLARE done BOOLEAN DEFAULT FALSE;

    -- Declare a cursor to iterate through all rooms in the rooms table
    DECLARE room_cursor CURSOR FOR
        SELECT room, building
        FROM rooms;

    -- Declare continue handler for the cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    -- Open the cursor
    OPEN room_cursor;

    -- Start looping through rooms
    room_loop: LOOP
        -- Fetch the room_id and building
        FETCH room_cursor INTO room_var, building_var;

        -- Exit the loop if there are no more rooms
        IF done THEN
            LEAVE room_loop;
        END IF;

        -- Calculate the count of students for the current room and building
        SET count_students = (
            SELECT COUNT(*) 
            FROM users 
            WHERE room_number = room_var AND genre = building_var COLLATE utf8mb4_general_ci
        );

        -- Update num_students in the rooms table
        UPDATE rooms
        SET num_students = count_students
        WHERE room = room_var AND building = building_var COLLATE utf8mb4_general_ci;
    END LOOP;

    -- Close the cursor
    CLOSE room_cursor;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `decharge`
--

CREATE TABLE `decharge` (
  `id_demande` int NOT NULL,
  `student_id` int NOT NULL,
  `status` enum('Validé','En attente') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'En attente',
  `read_departement` int NOT NULL DEFAULT '0',
  `read_internat` int NOT NULL DEFAULT '0',
  `read_economique` int NOT NULL DEFAULT '0',
  `read_administartion` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `valide_departement` int NOT NULL DEFAULT '0',
  `valide_internat` int NOT NULL DEFAULT '0',
  `valide_economique` int NOT NULL DEFAULT '0',
  `valide_administration` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE COLLATE utf8mb4_general_ci

--
-- Dumping data for table `decharge`
--

INSERT INTO `decharge` (`id_demande`, `student_id`, `status`, `read_departement`, `read_internat`, `read_economique`, `read_administartion`, `created_at`, `updated_at`, `valide_departement`, `valide_internat`, `valide_economique`, `valide_administration`) VALUES
(12, 1, 'Validé', 1, 1, 1, 1, '2024-01-27 23:17:48', '2024-01-29 23:17:14', 1, 1, 1, 1),
(13, 2, 'Validé', 1, 1, 1, 1, '2024-01-29 23:06:38', '2024-01-29 23:17:18', 1, 1, 1, 1),
(16, 4, 'En attente', 1, 1, 1, 0, '2024-01-30 15:03:00', '2024-04-02 02:41:59', 1, 1, 0, 0),
(34, 23, 'En attente', 1, 0, 0, 0, '2024-02-23 12:33:43', '2024-03-05 12:49:47', 0, 0, 0, 0),
(35, 22, 'En attente', 1, 0, 0, 0, '2024-02-23 12:34:04', '2024-03-05 12:49:47', 0, 0, 0, 0),
(36, 24, 'En attente', 1, 0, 0, 0, '2024-02-23 12:34:17', '2024-03-05 12:49:47', 0, 0, 0, 0),
(37, 25, 'En attente', 1, 0, 0, 0, '2024-02-23 12:34:29', '2024-03-05 12:49:47', 0, 0, 0, 0),
(38, 200, 'En attente', 1, 0, 0, 0, '2024-02-23 12:40:32', '2024-03-05 12:49:47', 0, 0, 0, 0),
(39, 201, 'En attente', 1, 0, 0, 0, '2024-02-23 12:40:43', '2024-03-05 12:49:47', 0, 0, 0, 0),
(40, 202, 'En attente', 1, 0, 0, 0, '2024-02-23 12:41:46', '2024-03-05 12:49:47', 0, 0, 0, 0),
(41, 203, 'En attente', 1, 0, 0, 0, '2024-02-23 12:42:04', '2024-03-05 12:49:47', 0, 0, 0, 0),
(42, 204, 'En attente', 1, 0, 0, 0, '2024-02-23 12:42:25', '2024-03-05 12:49:47', 0, 0, 0, 0),
(45, 16, 'En attente', 1, 1, 0, 0, '2024-03-05 12:37:38', '2024-04-02 02:41:59', 1, 1, 0, 0),
(48, 9, 'En attente', 0, 1, 0, 0, '2024-04-01 13:13:03', '2024-04-02 02:41:59', 1, 1, 0, 0),
(50, 17, 'En attente', 0, 1, 0, 0, '2024-04-02 02:46:18', '2024-04-02 11:05:20', 1, 1, 0, 0),
(51, 13, 'En attente', 0, 1, 0, 0, '2024-04-02 11:03:37', '2024-04-02 11:05:19', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `degats`
--

CREATE TABLE `degats` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cin` varchar(8) DEFAULT NULL,
  `type` enum('Incident','Emprunt') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `materiel` varchar(255) DEFAULT NULL,
  `montant` decimal(10,2) DEFAULT NULL,
  `commentaire` text NOT NULL,
  `report` enum('Payé','Non Payé','Retourné','Non Retourné') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Non Payé',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

--
-- Dumping data for table `degats`
--

INSERT INTO `degats` (`id`, `user_id`, `user_name`, `cin`, `type`, `materiel`, `montant`, `commentaire`, `report`, `date`) VALUES
(6, 1, 'Adam Ait Oufkir', 'AGI201', 'Incident', 'arduino uno', '300.00', 'a', 'Non Payé', '2024-03-01 14:25:20'),
(7, 2, 'Ayoub Moutik', 'AGI202', 'Emprunt', 'arduino uno', '300.00', 'p', 'Non Retourné', '2024-03-01 14:25:46'),
(8, 16, 'Othman Hamida', 'AGI216', 'Emprunt', 'clavier ', '300.00', '^l', 'Non Retourné', '2024-03-05 12:51:09'),
(10, 17, 'Hamza El Kaoui', 'AGI217', 'Emprunt', 'Laptop Hp EliteBook G6', '3000.00', ' ', 'Non Retourné', '2024-03-27 00:36:44'),
(11, 9, 'Houssam Abdellah Louazna ', 'AGI209', 'Emprunt', 'Laptop Hp EliteBook G6', '3000.00', 'jp', 'Retourné', '2024-04-01 13:25:59'),
(13, 13, 'Noaman Makhlouf', 'AGI213', 'Emprunt', 'Laptop Hp EliteBook G6', '3000.00', 'tp', 'Non Retourné', '2024-04-02 11:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `historique_internat`
--

CREATE TABLE `historique_internat` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_cin` varchar(20) DEFAULT NULL,
  `old_room` int DEFAULT NULL,
  `new_room` int DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

--
-- Dumping data for table `historique_internat`
--

INSERT INTO `historique_internat` (`id`, `user_id`, `user_name`, `user_cin`, `old_room`, `new_room`, `date`) VALUES
(2, 1, 'Adam Ait Oufkir', 'AGI201', 1, 6, '2024-02-18 23:12:18'),
(6, 2, 'Ayoub Moutik', 'AGI202', 6, 1, '2024-02-19 13:34:59'),
(79, 4, 'Yassine Rmidi', 'AGI204', 2, 1, '2024-03-01 13:27:03'),
(80, 1, 'Adam Ait Oufkir', 'AGI201', 1, 2, '2024-03-08 15:21:55'),
(82, 16, 'Othman Hamida', 'AGI216', 6, 5, '2024-03-26 23:27:45'),
(90, 1, 'Adam Ait Oufkir', 'AGI201', 1, 3, '2024-04-02 10:57:40'),
(91, 1, 'Adam Ait Oufkir', 'AGI201', 3, 1, '2024-04-02 10:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `internat`
--

CREATE TABLE `internat` (
  `id_demande` int NOT NULL,
  `student_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ville` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `valide` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

--
-- Dumping data for table `internat`
--

INSERT INTO `internat` (`id_demande`, `student_id`, `name`, `ville`, `created_at`, `updated_at`, `status`, `genre`, `valide`) VALUES
(66, 6, 'Aymane Laaroui', 'k', '2024-02-23 12:18:38', '2024-02-23 12:18:38', 'Accepté', 'boy', 1),
(67, 5, 'Adnane Elkihel', 'Casablanca', '2024-02-23 12:18:48', '2024-02-23 12:18:48', 'Accepté', 'boy', 0),
(68, 22, 'Test 5', 'Mohamadia', '2024-02-23 12:33:30', '2024-02-23 12:33:30', 'En attente', 'girl', 1),
(69, 23, 'Test 6', 'El Jadida', '2024-02-23 12:33:48', '2024-02-23 12:33:48', 'Accepté', 'girl', 1),
(70, 24, 'Test 7', 'Bouznika', '2024-02-23 12:34:15', '2024-02-23 12:34:15', 'En attente', 'girl', 1),
(71, 25, 'Test 8', 'Hed soualem ', '2024-02-23 12:34:27', '2024-02-23 12:34:27', 'En attente', 'girl', 1),
(72, 200, '1-GI2', 'Rabat', '2024-02-23 12:40:30', '2024-02-23 12:40:30', 'En attente', 'boy', 1),
(73, 201, '2-GI2', '', '2024-02-23 12:40:41', '2024-02-23 12:40:41', 'En attente', 'boy', 0),
(74, 202, '3-GI2', '', '2024-02-23 12:41:44', '2024-02-23 12:41:44', 'En attente', 'boy', 0),
(75, 203, '4-GI2', '', '2024-02-23 12:42:02', '2024-02-23 12:42:02', 'En attente', 'girl', 0),
(76, 204, '5-GI2', '', '2024-02-23 12:42:24', '2024-02-23 12:42:24', 'En attente', 'boy', 0),
(81, 16, 'Othman Hamida', '', '2024-03-05 12:37:36', '2024-03-05 12:37:36', 'Accepté', 'boy', 1),
(84, 9, 'Houssam Abdellah Louazna ', 'Ra7ma', '2024-04-01 13:13:00', '2024-04-01 13:13:00', 'Accepté', 'boy', 1),
(87, 50, '1-GE1', 'Ra7ma', '2024-04-02 02:19:06', '2024-04-02 02:19:06', 'Accepté', 'boy', 1),
(88, 13, 'Noaman Makhlouf', 'Khmissat', '2024-04-02 10:55:51', '2024-04-02 10:55:51', 'Accepté', 'boy', 1),
(89, 17, 'Hamza El Kaoui', '', '2024-04-02 10:56:27', '2024-04-02 10:56:27', 'Accepté', 'boy', 0),
(100, 21, 'Test 4', 'Casablanca', '2024-04-05 18:53:46', '2024-04-05 18:53:46', 'En attente', 'girl', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paiements`
--

CREATE TABLE `paiements` (
  `id` int NOT NULL,
  `recu` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `cin` varchar(9) DEFAULT NULL,
  `trimestre` int DEFAULT NULL,
  `montant` decimal(10,2) DEFAULT NULL,
  `date_paiement` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

--
-- Dumping data for table `paiements`
--

INSERT INTO `paiements` (`id`, `recu`, `user_id`, `user_name`, `cin`, `trimestre`, `montant`, `date_paiement`) VALUES
(38, 11, 1, 'Adam Ait Oufkir', 'AGI201', 1, '1050.00', '2024-02-13 16:03:11'),
(39, 44, 1, 'Adam Ait Oufkir', 'AGI201', 2, '375.00', '2024-02-13 16:03:31'),
(40, 1, 5, 'Adnane Elkihel', 'AGI205', 1, '1050.00', '2024-02-15 23:49:32'),
(47, 999, 6, 'Aymane Laaroui', 'AGI206', 1, '1050.00', '2024-02-16 15:57:03'),
(50, 9990, 16, 'Othman Hamida', 'AGI216', 1, '1050.00', '2024-03-05 12:54:57'),
(54, 96636, 9, 'Houssam Abdellah Louazna ', 'AGI209', 1, '1050.00', '2024-04-01 13:21:56'),
(55, 1444, 9, 'Houssam Abdellah Louazna ', 'AGI209', 2, '20.00', '2024-04-01 13:22:08'),
(56, 789, 13, 'Noaman Makhlouf', 'AGI213', 1, '1050.00', '2024-04-02 11:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int NOT NULL,
  `room` int DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `type` enum('room','stock') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'room',
  `num_students` int DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room`, `building`, `type`, `num_students`, `last_updated`) VALUES
(1, 1, 'boy', 'room', 4, '2024-04-02 10:57:48'),
(2, 2, 'boy', 'room', 4, '2024-04-02 10:59:21'),
(3, 3, 'boy', 'room', 1, '2024-04-05 18:02:28'),
(4, 4, 'boy', 'room', 0, '2024-04-02 02:08:47'),
(5, 5, 'boy', 'room', 0, '2024-03-27 00:13:38'),
(6, 6, 'boy', 'room', 2, '2024-04-05 16:47:32'),
(7, 7, 'boy', 'room', 0, '2024-02-23 12:30:37'),
(8, 8, 'boy', 'room', 0, '2024-02-22 21:43:00'),
(9, 9, 'boy', 'room', 0, '2024-03-01 13:26:54'),
(10, 10, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(11, 11, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(12, 12, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(13, 13, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(14, 14, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(15, 15, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(16, 16, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(17, 17, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(18, 18, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(19, 19, 'boy', 'room', 0, '2024-04-02 02:52:45'),
(20, 20, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(21, 21, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(22, 22, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(23, 23, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(24, 24, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(25, 25, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(26, 26, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(27, 27, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(28, 28, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(29, 29, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(30, 30, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(31, 31, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(32, 32, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(33, 33, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(34, 34, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(35, 35, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(36, 36, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(37, 37, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(38, 38, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(39, 39, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(40, 40, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(41, 41, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(42, 42, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(43, 43, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(44, 44, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(45, 45, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(46, 46, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(47, 47, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(48, 48, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(49, 49, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(50, 50, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(51, 51, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(52, 52, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(53, 53, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(54, 54, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(55, 55, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(56, 56, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(57, 57, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(58, 58, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(59, 59, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(60, 60, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(61, 61, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(62, 62, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(63, 63, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(64, 64, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(65, 65, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(66, 66, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(67, 67, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(68, 68, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(69, 69, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(70, 70, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(71, 71, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(72, 72, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(73, 73, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(74, 74, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(75, 75, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(76, 76, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(77, 77, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(78, 78, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(79, 79, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(80, 80, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(81, 81, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(82, 82, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(83, 83, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(84, 84, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(85, 85, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(86, 86, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(87, 87, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(88, 88, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(89, 89, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(90, 90, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(91, 91, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(92, 92, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(93, 93, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(94, 94, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(95, 95, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(96, 96, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(97, 97, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(98, 98, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(99, 99, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(100, 100, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(101, 101, 'boy', 'room', 0, '2024-02-23 12:44:00'),
(102, 102, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(103, 103, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(104, 104, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(105, 105, 'boy', 'room', 0, '2024-02-22 16:58:38'),
(106, 106, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(107, 107, 'boy', 'room', 0, '2024-02-22 16:41:14'),
(108, 108, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(109, 109, 'boy', 'room', 0, '2024-02-22 16:35:41'),
(110, 110, 'boy', 'room', 0, '2024-02-22 15:57:47'),
(111, 100, 'girl', 'stock', 0, '2024-02-22 21:21:04'),
(112, 101, 'girl', 'room', 4, '2024-03-08 15:25:20'),
(113, 102, 'girl', 'stock', 0, '2024-02-22 21:21:12'),
(114, 103, 'girl', 'room', 0, '2024-02-26 11:20:47'),
(115, 104, 'girl', 'room', 0, '2024-02-22 21:17:48'),
(116, 105, 'girl', 'room', 0, '2024-02-22 16:58:38'),
(117, 106, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(118, 107, 'girl', 'room', 0, '2024-02-22 16:59:37'),
(119, 108, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(120, 109, 'girl', 'room', 0, '2024-02-22 16:35:41'),
(121, 110, 'girl', 'room', 0, '2024-02-22 17:00:16'),
(122, 111, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(123, 112, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(124, 113, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(125, 114, 'girl', 'room', 0, '2024-02-22 21:27:58'),
(126, 115, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(127, 116, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(128, 117, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(129, 118, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(130, 119, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(131, 120, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(132, 121, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(133, 122, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(134, 123, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(135, 124, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(136, 125, 'girl', 'stock', 0, '2024-02-22 21:21:31'),
(137, 126, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(138, 127, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(139, 128, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(140, 129, 'girl', 'room', 0, '2024-02-26 10:59:43'),
(141, 200, 'girl', 'stock', 0, '2024-02-26 11:09:42'),
(142, 201, 'girl', 'room', 0, '2024-02-26 11:10:25'),
(143, 202, 'girl', 'stock', 0, '2024-02-22 21:21:23'),
(144, 203, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(145, 204, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(146, 205, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(147, 206, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(148, 207, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(149, 208, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(150, 209, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(151, 210, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(152, 211, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(153, 212, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(154, 213, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(155, 214, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(156, 215, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(157, 216, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(158, 217, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(159, 218, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(160, 219, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(161, 220, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(162, 221, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(163, 222, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(164, 223, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(165, 224, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(166, 225, 'girl', 'stock', 0, '2024-02-22 21:21:40'),
(167, 226, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(168, 227, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(169, 228, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(170, 229, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(171, 300, 'girl', 'stock', 0, '2024-02-22 21:21:49'),
(172, 301, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(173, 302, 'girl', 'stock', 0, '2024-02-22 21:21:55'),
(174, 303, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(175, 304, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(176, 305, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(177, 306, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(178, 307, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(179, 308, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(180, 309, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(181, 310, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(182, 311, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(183, 312, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(184, 313, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(185, 314, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(186, 315, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(187, 316, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(188, 317, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(189, 318, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(190, 319, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(191, 320, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(192, 321, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(193, 322, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(194, 323, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(195, 324, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(196, 325, 'girl', 'stock', 0, '2024-02-22 21:22:12'),
(197, 326, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(198, 327, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(199, 328, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(200, 329, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(201, 400, 'girl', 'stock', 0, '2024-02-22 21:22:18'),
(202, 401, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(203, 402, 'girl', 'stock', 0, '2024-02-22 21:22:22'),
(204, 403, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(205, 404, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(206, 405, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(207, 406, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(208, 407, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(209, 408, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(210, 409, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(211, 410, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(212, 411, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(213, 412, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(214, 413, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(215, 414, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(216, 415, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(217, 416, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(218, 417, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(219, 418, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(220, 419, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(221, 420, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(222, 421, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(223, 422, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(224, 423, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(225, 424, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(226, 425, 'girl', 'stock', 0, '2024-02-22 21:22:29'),
(227, 426, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(228, 427, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(229, 428, 'girl', 'room', 0, '2024-02-22 15:57:49'),
(230, 429, 'girl', 'room', 0, '2024-02-22 15:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `setting_name` varchar(255) DEFAULT NULL,
  `setting_value` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_name`, `setting_value`) VALUES
(1, 'phase', 1),
(2, 'decharge', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_history`
--

CREATE TABLE `ticket_history` (
  `id` int NOT NULL,
  `student_id` int NOT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `day_collected` date DEFAULT NULL,
  `week_start_date` date DEFAULT NULL,
  `week_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

--
-- Dumping data for table `ticket_history`
--

INSERT INTO `ticket_history` (`id`, `student_id`, `student_name`, `day_collected`, `week_start_date`, `week_end_date`) VALUES
(150, 1, 'Adam Ait Oufkir', '2024-02-13', '2024-02-09', '2024-02-16'),
(151, 1, 'Adam Ait Oufkir', '2024-02-23', '2024-02-23', '2024-03-01'),
(152, 1, 'Adam Ait Oufkir', '2024-01-29', '2024-01-26', '2024-01-31'),
(153, 5, 'Adnane Elkihel', '2024-02-02', '2024-02-02', '2024-02-09'),
(154, 5, 'Adnane Elkihel', '2024-02-09', '2024-02-09', '2024-02-16'),
(163, 16, 'Othman Hamida', '2024-03-01', '2024-03-01', '2024-03-07'),
(168, 9, 'Houssam Abdellah Louazna ', '2024-04-01', '2024-03-30', '2024-03-31'),
(176, 13, 'Noaman Makhlouf', '2024-03-01', '2024-03-02', '2024-03-08'),
(177, 13, 'Noaman Makhlouf', '2024-02-26', '2024-02-24', '2024-03-01'),
(178, 13, 'Noaman Makhlouf', '2024-03-29', '2024-03-30', '2024-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `cin` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('interne','externe','admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'externe',
  `role` enum('student','departement','internat','economique','administration','super_admin','restaurant') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'student',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '../images/default_user.png',
  `room_number` int DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `pays` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ville` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `arrondissement` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `filliere` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `annee_scolaire` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `genre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `cin`, `name`, `status`, `role`, `password`, `email`, `image`, `room_number`, `date_naissance`, `pays`, `ville`, `arrondissement`, `tel`, `filliere`, `annee_scolaire`, `genre`) VALUES
(1, 'AGI201', 'Adam Ait Oufkir', 'interne', 'student', 'a', 'adamoufkir05@gmail.com', '../images/lklb.jpeg', 1, '2005-03-01', '', 'Casablanca', NULL, '+212673155179', 'Genie Informatique', '2', 'boy'),
(2, 'AGI202', 'Ayoub Moutik', 'externe', 'student', 'a', 'whoami9630@gmail.com', '../images/moulchi.jpeg', NULL, '2004-08-31', 'Morocco', 'Casablanca', 'Hay Hassani', '0660002406', 'Génie informatique', '2', 'boy'),
(3, 'AGI203', 'Hitler The Cat', 'admin', 'super_admin', 'a', 'hitler_anti_jews@gmail.com', '../images/hitler.jpg', NULL, NULL, '', 'Ra7ma', NULL, '6969696969', 'Génie informatique', '2', 'boy'),
(4, 'AGI204', 'Yassine Rmidi', 'interne', 'student', 'a', 'yrmidi7@gmail.com', '../images/yassuine.jpeg', 1, NULL, '', 'Casablanca', NULL, '06060606', 'Genie Informatique', '2', 'boy'),
(5, 'AGI205', 'Adnane Elkihel', 'interne', 'student', 'a', 'adnaneelkihel63@gmail.com', '../images/adnoune.jpeg', 6, NULL, '', 'Casablanca', NULL, NULL, 'Genie Informatique', '2', 'boy'),
(6, 'AGI206', 'Aymane Laaroui', 'externe', 'student', 'a', 'laarouiaymane@gmail.com', '../images/laaroui.jpeg', NULL, NULL, '', 'k', NULL, NULL, 'Genie Informatique', '2', 'boy'),
(7, 'AGI207', 'Yassine EL MESBAHY ', 'interne', 'student', 'a', 'yassineelmesbahy226@gmail.com', '../images/7alla9.jpeg', 1, NULL, '', 'Casablanca', NULL, NULL, 'Genie Informatique', '2', 'boy'),
(8, 'AGI208', 'Amine Aghoudid ', 'interne', 'student', 'a', 'amine.aghoudide@gmail.com', '../images/ms3oud.jpeg', 1, NULL, '', 'Casablanca', NULL, NULL, 'Genie Informatique', '2', 'boy'),
(9, 'AGI209', 'Houssam Abdellah Louazna ', 'externe', 'student', 'a', 'fatalmodalal@gmail.com', '../images/louazna.jpeg', NULL, '2024-04-01', 'Morocco', 'Ra7ma', NULL, '06', 'Genie Informatique', '2', 'boy'),
(11, 'AGI211', 'Oussama Arhannaj', 'interne', 'student', NULL, 'Oussamaarhannaj66@gmail.com', '../images/oussama.jpeg', 2, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(12, 'AGI212', 'Mohammed Boukhatem', 'interne', 'student', NULL, 'mohammedboukhatem069@gmail.com', '../images/boukhatem.jpeg', 2, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(13, 'AGI213', 'Noaman Makhlouf', 'interne', 'student', 'a', 'makhloufnoaman58@gmail.com', '../images/noaman.jpeg', 6, '2024-04-02', 'Morocco', 'Khmissat', NULL, '06', 'Génie informatique', '2', 'boy'),
(14, 'AGI214', 'Yassine ElFal', 'externe', 'student', NULL, 'yassineelfal8@gmail.com', '../images/sbata.jpeg', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(15, 'AGI215', 'Chatira', 'externe', 'student', 'a', 'chatira@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(16, 'AGI216', 'Othman Hamida', 'interne', 'student', 'a', 'hamida@gmail.com', '../images/hamida.jpeg', 2, '2024-03-05', 'Morocco', 'Casablanca', 'Al Fida', '06', 'Genie Informatique', '1', 'boy'),
(17, 'AGI217', 'Hamza El Kaoui', 'interne', 'student', 'a', 'hamzaelkaouii04@gmail.com', '../images/lorem.jpeg', 3, '2024-03-27', 'Morocco', 'Casablanca', 'Hay Hassani', '0606060606', 'Genie Informatique', '2', 'boy'),
(18, 'AGI218', 'Test 1', 'interne', 'student', 'a', 'test1@example.com', '../images/hitler.jpg', 101, '2024-02-09', 'Morocco', 'Ra7ma', 'Hay Hassani', '0612345678', 'Génie informatique', '2', 'girl'),
(19, 'AGI219', 'Test 2', 'interne', 'student', 'a', 'test2@gmail.com', '../images/hitler.jpg', 101, '2024-02-09', 'Morocco', 'Casablanca', 'Anfa', '06', 'Génie informatique', '2', 'girl'),
(20, 'AGI220', 'Test 3', 'interne', 'student', 'a', 'test3@example.com', '../images/hitler.jpg', 101, '2000-03-03', 'Morocco', 'Casablanca', NULL, '1234567893', 'Génie informatique', '2', 'girl'),
(21, 'AGI221', 'Test 4', 'externe', 'student', 'a', 'test4@example.com', '../images/default_user.png', NULL, '2000-04-04', '', 'Casablanca', NULL, '1234567894', 'Génie informatique', '1', 'girl'),
(22, 'AGI222', 'Test 5', 'externe', 'student', 'a', 'test5@example.com', '../images/default_user.png', NULL, '2000-05-05', '', 'Mohamadia', NULL, '1234567895', 'Génie informatique', '2', 'girl'),
(23, 'AGI223', 'Test 6', 'interne', 'student', 'a', 'test6@example.com', '../images/default_user.png', 101, '2000-06-06', '', 'El Jadida', NULL, '1234567896', 'Génie informatique', '1', 'girl'),
(24, 'AGI224', 'Test 7', 'externe', 'student', 'a', 'test7@example.com', '../images/default_user.png', NULL, '2000-07-07', '', 'Bouznika', NULL, '1234567897', 'Génie informatique', '2', 'girl'),
(25, 'AGI225', 'Test 8', 'externe', 'student', 'a', 'test8@example.com', '../images/default_user.png', NULL, '2000-08-08', '', 'Hed soualem ', NULL, '1234567898', 'Génie informatique', '2', 'girl'),
(30, 'AD0001', 'Khalid Bouragba', 'admin', 'departement', 'a', 'bouragba2008@gmail.com', '../images/bouragba.jpg', NULL, '1980-01-01', '', 'Casablanca', NULL, '061234567', 'Génie informatique', '', 'boy'),
(31, 'AD0002', 'Admin Internat', 'admin', 'internat', 'a', 'internat@gmail.com', '../images/default_user.png', NULL, NULL, '', 'Casablanca\n', NULL, NULL, '[value-9]', NULL, 'boy'),
(32, 'AD0003', 'Admin Economique', 'admin', 'economique', 'a', 'eco@gmail.com', '../images/default_user.png', NULL, NULL, '', 'Casablanca\n', NULL, NULL, '[value-9]', NULL, 'boy'),
(33, 'AD0004', 'Administrateur', 'admin', 'administration', 'a', 'admin@gmail.com', '../images/default_user.png', NULL, NULL, '', 'Casablanca\n', NULL, NULL, '[value-9]', NULL, 'boy'),
(34, 'AD0005', 'Admin Restaurant', 'admin', 'restaurant', 'a', 'restau@gmail.com', '../images/default_user.png', NULL, '1980-06-13', '', NULL, NULL, NULL, '', '', 'boy'),
(35, 'AD0006', 'Chef filière GE', 'admin', 'departement', 'a', 'ge@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique', NULL, NULL),
(36, 'AD0007', 'Chef filière GM', 'admin', 'departement', 'a', 'gm@gmail.com', '../images/default_user.png', NULL, NULL, 'Mar', NULL, NULL, NULL, 'Génie mécanique', NULL, NULL),
(37, 'AD0008', 'Chef filière GP', 'admin', 'departement', '', 'gp@gmail.com', '../images/default_user.png', NULL, NULL, 'Mar', NULL, NULL, NULL, 'Génie de procédé', NULL, NULL),
(50, 'GE1001', '1-GE1', 'interne', 'student', 'a', '1-GE1@gmail.com', '../images/default_user.png', 2, NULL, '', 'Ra7ma', NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(51, 'GE1002', '2-GE1', 'externe', 'student', NULL, '2-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(52, 'GE1003', '3-GE1', 'externe', 'student', NULL, '3-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(53, 'GE1004', '4-GE1', 'externe', 'student', NULL, '4-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(54, 'GE1005', '5-GE1', 'externe', 'student', NULL, '5-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(55, 'GE1006', '6-GE1', 'externe', 'student', NULL, '6-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(56, 'GE1007', '7-GE1', 'externe', 'student', NULL, '7-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(57, 'GE1008', '8-GE1', 'externe', 'student', NULL, '8-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(58, 'GE1009', '9-GE1', 'externe', 'student', NULL, '9-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(59, 'GE1010', '10-GE1', 'externe', 'student', NULL, '10-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(60, 'GE1011', '11-GE1', 'externe', 'student', NULL, '11-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(61, 'GE1012', '12-GE1', 'externe', 'student', NULL, '12-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(62, 'GE1013', '13-GE1', 'externe', 'student', NULL, '13-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(63, 'GE1014', '14-GE1', 'externe', 'student', NULL, '14-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(64, 'GE1015', '15-GE1', 'externe', 'student', NULL, '15-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(65, 'GE1016', '16-GE1', 'externe', 'student', NULL, '16-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(66, 'GE1017', '17-GE1', 'externe', 'student', NULL, '17-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(67, 'GE1018', '18-GE1', 'externe', 'student', NULL, '18-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(68, 'GE1019', '19-GE1', 'externe', 'student', NULL, '19-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(69, 'GE1020', '20-GE1', 'externe', 'student', NULL, '20-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(70, 'GE1021', '21-GE1', 'externe', 'student', NULL, '21-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(71, 'GE1022', '22-GE1', 'externe', 'student', NULL, '22-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(72, 'GE1023', '23-GE1', 'externe', 'student', NULL, '23-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(73, 'GE1024', '24-GE1', 'externe', 'student', NULL, '24-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(74, 'GE1025', '25-GE1', 'externe', 'student', NULL, '25-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(75, 'GE1026', '26-GE1', 'externe', 'student', NULL, '26-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(76, 'GE1027', '27-GE1', 'externe', 'student', NULL, '27-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(77, 'GE1028', '28-GE1', 'externe', 'student', NULL, '28-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(78, 'GE1029', '29-GE1', 'externe', 'student', NULL, '29-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(79, 'GE1030', '30-GE1', 'externe', 'student', NULL, '30-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(80, 'GE1031', '31-GE1', 'externe', 'student', NULL, '31-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(81, 'GE1032', '32-GE1', 'externe', 'student', NULL, '32-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(82, 'GE1033', '33-GE1', 'externe', 'student', NULL, '33-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(83, 'GE1034', '34-GE1', 'externe', 'student', NULL, '34-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(84, 'GE1035', '35-GE1', 'externe', 'student', NULL, '35-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(85, 'GE1036', '36-GE1', 'externe', 'student', NULL, '36-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(86, 'GE1037', '37-GE1', 'externe', 'student', NULL, '37-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(87, 'GE1038', '38-GE1', 'externe', 'student', NULL, '38-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(88, 'GE1039', '39-GE1', 'externe', 'student', NULL, '39-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(89, 'GE1040', '40-GE1', 'externe', 'student', NULL, '40-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(90, 'GE1041', '41-GE1', 'externe', 'student', NULL, '41-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(91, 'GE1042', '42-GE1', 'externe', 'student', NULL, '42-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(92, 'GE1043', '43-GE1', 'externe', 'student', NULL, '43-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(93, 'GE1044', '44-GE1', 'externe', 'student', NULL, '44-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(94, 'GE1045', '45-GE1', 'externe', 'student', NULL, '45-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(95, 'GE1046', '46-GE1', 'externe', 'student', NULL, '46-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(96, 'GE1047', '47-GE1', 'externe', 'student', NULL, '47-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(97, 'GE1048', '48-GE1', 'externe', 'student', NULL, '48-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(98, 'GE1049', '49-GE1', 'externe', 'student', NULL, '49-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'boy'),
(99, 'GE1050', '50-GE1', 'externe', 'student', NULL, '50-GE1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '1', 'girl'),
(100, 'GE2001', '1-GE2', 'externe', 'student', NULL, '1-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(101, 'GE2002', '2-GE2', 'externe', 'student', NULL, '2-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(102, 'GE2003', '3-GE2', 'externe', 'student', NULL, '3-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(103, 'GE2004', '4-GE2', 'externe', 'student', NULL, '4-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(104, 'GE2005', '5-GE2', 'externe', 'student', NULL, '5-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(105, 'GE2006', '6-GE2', 'externe', 'student', NULL, '6-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(106, 'GE2007', '7-GE2', 'externe', 'student', NULL, '7-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(107, 'GE2008', '8-GE2', 'externe', 'student', NULL, '8-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(108, 'GE2009', '9-GE2', 'externe', 'student', NULL, '9-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(109, 'GE2010', '10-GE2', 'externe', 'student', NULL, '10-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(110, 'GE2011', '11-GE2', 'externe', 'student', NULL, '11-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(111, 'GE2012', '12-GE2', 'externe', 'student', NULL, '12-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(112, 'GE2013', '13-GE2', 'externe', 'student', NULL, '13-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(113, 'GE2014', '14-GE2', 'externe', 'student', NULL, '14-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(114, 'GE2015', '15-GE2', 'externe', 'student', NULL, '15-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(115, 'GE2016', '16-GE2', 'externe', 'student', NULL, '16-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(116, 'GE2017', '17-GE2', 'externe', 'student', NULL, '17-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(117, 'GE2018', '18-GE2', 'externe', 'student', NULL, '18-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(118, 'GE2019', '19-GE2', 'externe', 'student', NULL, '19-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(119, 'GE2020', '20-GE2', 'externe', 'student', NULL, '20-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(120, 'GE2021', '21-GE2', 'externe', 'student', NULL, '21-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(121, 'GE2022', '22-GE2', 'externe', 'student', NULL, '22-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(122, 'GE2023', '23-GE2', 'externe', 'student', NULL, '23-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(123, 'GE2024', '24-GE2', 'externe', 'student', NULL, '24-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(124, 'GE2025', '25-GE2', 'externe', 'student', NULL, '25-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(125, 'GE2026', '26-GE2', 'externe', 'student', NULL, '26-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(126, 'GE2027', '27-GE2', 'externe', 'student', NULL, '27-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(127, 'GE2028', '28-GE2', 'externe', 'student', NULL, '28-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(128, 'GE2029', '29-GE2', 'externe', 'student', NULL, '29-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(129, 'GE2030', '30-GE2', 'externe', 'student', NULL, '30-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(130, 'GE2031', '31-GE2', 'externe', 'student', NULL, '31-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(131, 'GE2032', '32-GE2', 'externe', 'student', NULL, '32-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(132, 'GE2033', '33-GE2', 'externe', 'student', NULL, '33-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(133, 'GE2034', '34-GE2', 'externe', 'student', NULL, '34-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(134, 'GE2035', '35-GE2', 'externe', 'student', NULL, '35-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(135, 'GE2036', '36-GE2', 'externe', 'student', NULL, '36-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(136, 'GE2037', '37-GE2', 'externe', 'student', NULL, '37-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(137, 'GE2038', '38-GE2', 'externe', 'student', NULL, '38-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(138, 'GE2039', '39-GE2', 'externe', 'student', NULL, '39-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(139, 'GE2040', '40-GE2', 'externe', 'student', NULL, '40-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(140, 'GE2041', '41-GE2', 'externe', 'student', NULL, '41-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(141, 'GE2042', '42-GE2', 'externe', 'student', NULL, '42-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(142, 'GE2043', '43-GE2', 'externe', 'student', NULL, '43-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(143, 'GE2044', '44-GE2', 'externe', 'student', NULL, '44-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(144, 'GE2045', '45-GE2', 'externe', 'student', NULL, '45-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(145, 'GE2046', '46-GE2', 'externe', 'student', NULL, '46-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(146, 'GE2047', '47-GE2', 'externe', 'student', NULL, '47-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(147, 'GE2048', '48-GE2', 'externe', 'student', NULL, '48-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(148, 'GE2049', '49-GE2', 'externe', 'student', NULL, '49-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'boy'),
(149, 'GE2050', '50-GE2', 'externe', 'student', NULL, '50-GE2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie éléctrique ', '2', 'girl'),
(150, 'GI1001', '1-GI1', 'externe', 'student', NULL, '1-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(151, 'GI1002', '2-GI1', 'externe', 'student', NULL, '2-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(152, 'GI1003', '3-GI1', 'externe', 'student', NULL, '3-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(153, 'GI1004', '4-GI1', 'externe', 'student', NULL, '4-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(154, 'GI1005', '5-GI1', 'externe', 'student', NULL, '5-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(155, 'GI1006', '6-GI1', 'externe', 'student', NULL, '6-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(156, 'GI1007', '7-GI1', 'externe', 'student', NULL, '7-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(157, 'GI1008', '8-GI1', 'externe', 'student', NULL, '8-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(158, 'GI1009', '9-GI1', 'externe', 'student', NULL, '9-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(159, 'GI1010', '10-GI1', 'externe', 'student', NULL, '10-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(160, 'GI1011', '11-GI1', 'externe', 'student', NULL, '11-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(161, 'GI1012', '12-GI1', 'externe', 'student', NULL, '12-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(162, 'GI1013', '13-GI1', 'externe', 'student', NULL, '13-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(163, 'GI1014', '14-GI1', 'externe', 'student', NULL, '14-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(164, 'GI1015', '15-GI1', 'externe', 'student', NULL, '15-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(165, 'GI1016', '16-GI1', 'externe', 'student', NULL, '16-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(166, 'GI1017', '17-GI1', 'externe', 'student', NULL, '17-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(167, 'GI1018', '18-GI1', 'externe', 'student', NULL, '18-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(168, 'GI1019', '19-GI1', 'externe', 'student', NULL, '19-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(169, 'GI1020', '20-GI1', 'externe', 'student', NULL, '20-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(170, 'GI1021', '21-GI1', 'externe', 'student', NULL, '21-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(171, 'GI1022', '22-GI1', 'externe', 'student', NULL, '22-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(172, 'GI1023', '23-GI1', 'externe', 'student', NULL, '23-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(173, 'GI1024', '24-GI1', 'externe', 'student', NULL, '24-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(174, 'GI1025', '25-GI1', 'externe', 'student', NULL, '25-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(175, 'GI1026', '26-GI1', 'externe', 'student', NULL, '26-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(176, 'GI1027', '27-GI1', 'externe', 'student', NULL, '27-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(177, 'GI1028', '28-GI1', 'externe', 'student', NULL, '28-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(178, 'GI1029', '29-GI1', 'externe', 'student', NULL, '29-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(179, 'GI1030', '30-GI1', 'externe', 'student', NULL, '30-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(180, 'GI1031', '31-GI1', 'externe', 'student', NULL, '31-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(181, 'GI1032', '32-GI1', 'externe', 'student', NULL, '32-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(182, 'GI1033', '33-GI1', 'externe', 'student', NULL, '33-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(183, 'GI1034', '34-GI1', 'externe', 'student', NULL, '34-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(184, 'GI1035', '35-GI1', 'externe', 'student', NULL, '35-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(185, 'GI1036', '36-GI1', 'externe', 'student', NULL, '36-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(186, 'GI1037', '37-GI1', 'externe', 'student', NULL, '37-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(187, 'GI1038', '38-GI1', 'externe', 'student', NULL, '38-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(188, 'GI1039', '39-GI1', 'externe', 'student', NULL, '39-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(189, 'GI1040', '40-GI1', 'externe', 'student', NULL, '40-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(190, 'GI1041', '41-GI1', 'externe', 'student', NULL, '41-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(191, 'GI1042', '42-GI1', 'externe', 'student', NULL, '42-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(192, 'GI1043', '43-GI1', 'externe', 'student', NULL, '43-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(193, 'GI1044', '44-GI1', 'externe', 'student', NULL, '44-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(194, 'GI1045', '45-GI1', 'externe', 'student', NULL, '45-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(195, 'GI1046', '46-GI1', 'externe', 'student', NULL, '46-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(196, 'GI1047', '47-GI1', 'externe', 'student', NULL, '47-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(197, 'GI1048', '48-GI1', 'externe', 'student', NULL, '48-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(198, 'GI1049', '49-GI1', 'externe', 'student', NULL, '49-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'boy'),
(199, 'GI1050', '50-GI1', 'externe', 'student', NULL, '50-GI1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique ', '1', 'girl'),
(200, 'GI2001', '1-GI2', 'externe', 'student', 'a', '1-GI2@gmail.com', '../images/default_user.png', NULL, NULL, 'Morocco (‫المغرب‬‎)', 'Rabat', NULL, NULL, 'Génie informatique', '2', 'boy'),
(201, 'GI2002', '2-GI2', 'externe', 'student', 'a', '2-GI2@gmail.com', '../images/hitler.jpg', NULL, '2024-02-09', 'Morocco (‫المغرب‬‎)', 'Casablanca', 'Hay Mohammadi', '06', 'Génie informatique', '2', 'boy'),
(202, 'GI2003', '3-GI2', 'externe', 'student', 'a', '3-GI2@gmail.com', '../images/adnoune.jpeg', NULL, '2024-02-09', 'Mauritania (‫موريتانيا‬‎)', 'Casablanca', NULL, '06060606', 'Génie informatique', '2', 'boy'),
(203, 'GI2004', '4-GI2', 'externe', 'student', 'a', '4-GI2@gmail.com', '../images/default_user.png', NULL, NULL, 'Morocco (‫المغرب‬‎)', 'Casablanca', NULL, NULL, 'Génie informatique', '2', 'girl'),
(204, 'GI2005', '5-GI2', 'externe', 'student', 'a', '5-GI2@gmail.com', '../images/moulchi.jpeg', NULL, '2024-02-01', 'Morocco (‫المغرب‬‎)', 'Casablanca', 'Hay Mohammadi', '06060606', 'Génie informatique', '2', 'boy'),
(205, 'GI2006', '6-GI2', 'externe', 'student', NULL, '6-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(206, 'GI2007', '7-GI2', 'externe', 'student', NULL, '7-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(207, 'GI2008', '8-GI2', 'externe', 'student', NULL, '8-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(208, 'GI2009', '9-GI2', 'externe', 'student', NULL, '9-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(209, 'GI2010', '10-GI2', 'externe', 'student', NULL, '10-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(210, 'GI2011', '11-GI2', 'externe', 'student', NULL, '11-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(211, 'GI2012', '12-GI2', 'externe', 'student', NULL, '12-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(212, 'GI2013', '13-GI2', 'externe', 'student', NULL, '13-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(213, 'GI2014', '14-GI2', 'externe', 'student', NULL, '14-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(214, 'GI2015', '15-GI2', 'externe', 'student', NULL, '15-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(215, 'GI2016', '16-GI2', 'externe', 'student', NULL, '16-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(216, 'GI2017', '17-GI2', 'externe', 'student', NULL, '17-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(217, 'GI2018', '18-GI2', 'externe', 'student', NULL, '18-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(218, 'GI2019', '19-GI2', 'externe', 'student', NULL, '19-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(219, 'GI2020', '20-GI2', 'externe', 'student', NULL, '20-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(220, 'GI2021', '21-GI2', 'externe', 'student', NULL, '21-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(221, 'GI2022', '22-GI2', 'externe', 'student', NULL, '22-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(222, 'GI2023', '23-GI2', 'externe', 'student', NULL, '23-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(223, 'GI2024', '24-GI2', 'externe', 'student', NULL, '24-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(224, 'GI2025', '25-GI2', 'externe', 'student', NULL, '25-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(225, 'GI2026', '26-GI2', 'externe', 'student', NULL, '26-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(226, 'GI2027', '27-GI2', 'externe', 'student', NULL, '27-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(227, 'GI2028', '28-GI2', 'externe', 'student', NULL, '28-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(228, 'GI2029', '29-GI2', 'externe', 'student', NULL, '29-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(229, 'GI2030', '30-GI2', 'externe', 'student', NULL, '30-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(230, 'GI2031', '31-GI2', 'externe', 'student', NULL, '31-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(231, 'GI2032', '32-GI2', 'externe', 'student', NULL, '32-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(232, 'GI2033', '33-GI2', 'externe', 'student', NULL, '33-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(233, 'GI2034', '34-GI2', 'externe', 'student', NULL, '34-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(234, 'GI2035', '35-GI2', 'externe', 'student', NULL, '35-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(235, 'GI2036', '36-GI2', 'externe', 'student', NULL, '36-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(236, 'GI2037', '37-GI2', 'externe', 'student', NULL, '37-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(237, 'GI2038', '38-GI2', 'externe', 'student', NULL, '38-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(238, 'GI2039', '39-GI2', 'externe', 'student', NULL, '39-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(239, 'GI2040', '40-GI2', 'externe', 'student', NULL, '40-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(240, 'GI2041', '41-GI2', 'externe', 'student', NULL, '41-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(241, 'GI2042', '42-GI2', 'externe', 'student', NULL, '42-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(242, 'GI2043', '43-GI2', 'externe', 'student', NULL, '43-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(243, 'GI2044', '44-GI2', 'externe', 'student', NULL, '44-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(244, 'GI2045', '45-GI2', 'externe', 'student', NULL, '45-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(245, 'GI2046', '46-GI2', 'externe', 'student', NULL, '46-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(246, 'GI2047', '47-GI2', 'externe', 'student', NULL, '47-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(247, 'GI2048', '48-GI2', 'externe', 'student', NULL, '48-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(248, 'GI2049', '49-GI2', 'externe', 'student', NULL, '49-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'boy'),
(249, 'GI2050', '50-GI2', 'externe', 'student', NULL, '50-GI2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie informatique', '2', 'girl'),
(250, 'GM1001', '1-GM1', 'externe', 'student', NULL, '1-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(251, 'GM1002', '2-GM1', 'externe', 'student', NULL, '2-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(252, 'GM1003', '3-GM1', 'externe', 'student', NULL, '3-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(253, 'GM1004', '4-GM1', 'externe', 'student', NULL, '4-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(254, 'GM1005', '5-GM1', 'externe', 'student', NULL, '5-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(255, 'GM1006', '6-GM1', 'externe', 'student', NULL, '6-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(256, 'GM1007', '7-GM1', 'externe', 'student', NULL, '7-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(257, 'GM1008', '8-GM1', 'externe', 'student', NULL, '8-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(258, 'GM1009', '9-GM1', 'externe', 'student', NULL, '9-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(259, 'GM1010', '10-GM1', 'externe', 'student', NULL, '10-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(260, 'GM1011', '11-GM1', 'externe', 'student', NULL, '11-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(261, 'GM1012', '12-GM1', 'externe', 'student', NULL, '12-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(262, 'GM1013', '13-GM1', 'externe', 'student', NULL, '13-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(263, 'GM1014', '14-GM1', 'externe', 'student', NULL, '14-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(264, 'GM1015', '15-GM1', 'externe', 'student', NULL, '15-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(265, 'GM1016', '16-GM1', 'externe', 'student', NULL, '16-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(266, 'GM1017', '17-GM1', 'externe', 'student', NULL, '17-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(267, 'GM1018', '18-GM1', 'externe', 'student', NULL, '18-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(268, 'GM1019', '19-GM1', 'externe', 'student', NULL, '19-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(269, 'GM1020', '20-GM1', 'externe', 'student', NULL, '20-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(270, 'GM1021', '21-GM1', 'externe', 'student', NULL, '21-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(271, 'GM1022', '22-GM1', 'externe', 'student', NULL, '22-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(272, 'GM1023', '23-GM1', 'externe', 'student', NULL, '23-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(273, 'GM1024', '24-GM1', 'externe', 'student', NULL, '24-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(274, 'GM1025', '25-GM1', 'externe', 'student', NULL, '25-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(275, 'GM1026', '26-GM1', 'externe', 'student', NULL, '26-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(276, 'GM1027', '27-GM1', 'externe', 'student', NULL, '27-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(277, 'GM1028', '28-GM1', 'externe', 'student', NULL, '28-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(278, 'GM1029', '29-GM1', 'externe', 'student', NULL, '29-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(279, 'GM1030', '30-GM1', 'externe', 'student', NULL, '30-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(280, 'GM1031', '31-GM1', 'externe', 'student', NULL, '31-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(281, 'GM1032', '32-GM1', 'externe', 'student', NULL, '32-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(282, 'GM1033', '33-GM1', 'externe', 'student', NULL, '33-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(283, 'GM1034', '34-GM1', 'externe', 'student', NULL, '34-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(284, 'GM1035', '35-GM1', 'externe', 'student', NULL, '35-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(285, 'GM1036', '36-GM1', 'externe', 'student', NULL, '36-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(286, 'GM1037', '37-GM1', 'externe', 'student', NULL, '37-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(287, 'GM1038', '38-GM1', 'externe', 'student', NULL, '38-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(288, 'GM1039', '39-GM1', 'externe', 'student', NULL, '39-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(289, 'GM1040', '40-GM1', 'externe', 'student', NULL, '40-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(290, 'GM1041', '41-GM1', 'externe', 'student', NULL, '41-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(291, 'GM1042', '42-GM1', 'externe', 'student', NULL, '42-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(292, 'GM1043', '43-GM1', 'externe', 'student', NULL, '43-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(293, 'GM1044', '44-GM1', 'externe', 'student', NULL, '44-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(294, 'GM1045', '45-GM1', 'externe', 'student', NULL, '45-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(295, 'GM1046', '46-GM1', 'externe', 'student', NULL, '46-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(296, 'GM1047', '47-GM1', 'externe', 'student', NULL, '47-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(297, 'GM1048', '48-GM1', 'externe', 'student', NULL, '48-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(298, 'GM1049', '49-GM1', 'externe', 'student', NULL, '49-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'boy'),
(299, 'GM1050', '50-GM1', 'externe', 'student', NULL, '50-GM1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '1', 'girl'),
(300, 'GM2001', '1-GM2', 'externe', 'student', NULL, '1-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(301, 'GM2002', '2-GM2', 'externe', 'student', NULL, '2-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(302, 'GM2003', '3-GM2', 'externe', 'student', NULL, '3-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(303, 'GM2004', '4-GM2', 'externe', 'student', NULL, '4-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(304, 'GM2005', '5-GM2', 'externe', 'student', NULL, '5-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy');
INSERT INTO `users` (`id`, `cin`, `name`, `status`, `role`, `password`, `email`, `image`, `room_number`, `date_naissance`, `pays`, `ville`, `arrondissement`, `tel`, `filliere`, `annee_scolaire`, `genre`) VALUES
(305, 'GM2006', '6-GM2', 'externe', 'student', NULL, '6-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(306, 'GM2007', '7-GM2', 'externe', 'student', NULL, '7-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(307, 'GM2008', '8-GM2', 'externe', 'student', NULL, '8-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(308, 'GM2009', '9-GM2', 'externe', 'student', NULL, '9-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(309, 'GM2010', '10-GM2', 'externe', 'student', NULL, '10-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(310, 'GM2011', '11-GM2', 'externe', 'student', NULL, '11-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(311, 'GM2012', '12-GM2', 'externe', 'student', NULL, '12-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(312, 'GM2013', '13-GM2', 'externe', 'student', NULL, '13-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(313, 'GM2014', '14-GM2', 'externe', 'student', NULL, '14-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(314, 'GM2015', '15-GM2', 'externe', 'student', NULL, '15-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(315, 'GM2016', '16-GM2', 'externe', 'student', NULL, '16-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(316, 'GM2017', '17-GM2', 'externe', 'student', NULL, '17-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(317, 'GM2018', '18-GM2', 'externe', 'student', NULL, '18-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(318, 'GM2019', '19-GM2', 'externe', 'student', NULL, '19-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(319, 'GM2020', '20-GM2', 'externe', 'student', NULL, '20-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(320, 'GM2021', '21-GM2', 'externe', 'student', NULL, '21-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(321, 'GM2022', '22-GM2', 'externe', 'student', NULL, '22-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(322, 'GM2023', '23-GM2', 'externe', 'student', NULL, '23-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(323, 'GM2024', '24-GM2', 'externe', 'student', NULL, '24-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(324, 'GM2025', '25-GM2', 'externe', 'student', NULL, '25-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(325, 'GM2026', '26-GM2', 'externe', 'student', NULL, '26-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(326, 'GM2027', '27-GM2', 'externe', 'student', NULL, '27-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(327, 'GM2028', '28-GM2', 'externe', 'student', NULL, '28-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(328, 'GM2029', '29-GM2', 'externe', 'student', NULL, '29-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(329, 'GM2030', '30-GM2', 'externe', 'student', NULL, '30-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(330, 'GM2031', '31-GM2', 'externe', 'student', NULL, '31-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(331, 'GM2032', '32-GM2', 'externe', 'student', NULL, '32-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(332, 'GM2033', '33-GM2', 'externe', 'student', NULL, '33-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(333, 'GM2034', '34-GM2', 'externe', 'student', NULL, '34-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(334, 'GM2035', '35-GM2', 'externe', 'student', NULL, '35-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(335, 'GM2036', '36-GM2', 'externe', 'student', NULL, '36-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(336, 'GM2037', '37-GM2', 'externe', 'student', NULL, '37-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(337, 'GM2038', '38-GM2', 'externe', 'student', NULL, '38-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(338, 'GM2039', '39-GM2', 'externe', 'student', NULL, '39-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(339, 'GM2040', '40-GM2', 'externe', 'student', NULL, '40-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(340, 'GM2041', '41-GM2', 'externe', 'student', NULL, '41-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(341, 'GM2042', '42-GM2', 'externe', 'student', NULL, '42-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(342, 'GM2043', '43-GM2', 'externe', 'student', NULL, '43-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(343, 'GM2044', '44-GM2', 'externe', 'student', NULL, '44-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(344, 'GM2045', '45-GM2', 'externe', 'student', NULL, '45-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(345, 'GM2046', '46-GM2', 'externe', 'student', NULL, '46-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(346, 'GM2047', '47-GM2', 'externe', 'student', NULL, '47-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(347, 'GM2048', '48-GM2', 'externe', 'student', NULL, '48-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(348, 'GM2049', '49-GM2', 'externe', 'student', NULL, '49-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'boy'),
(349, 'GM2050', '50-GM2', 'externe', 'student', NULL, '50-GM2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie mécanique', '2', 'girl'),
(350, 'GP1001', '1-GP1', 'externe', 'student', NULL, '1-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(351, 'GP1002', '2-GP1', 'externe', 'student', NULL, '2-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(352, 'GP1003', '3-GP1', 'externe', 'student', NULL, '3-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(353, 'GP1004', '4-GP1', 'externe', 'student', NULL, '4-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(354, 'GP1005', '5-GP1', 'externe', 'student', NULL, '5-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(355, 'GP1006', '6-GP1', 'externe', 'student', NULL, '6-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(356, 'GP1007', '7-GP1', 'externe', 'student', NULL, '7-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(357, 'GP1008', '8-GP1', 'externe', 'student', NULL, '8-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(358, 'GP1009', '9-GP1', 'externe', 'student', NULL, '9-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(359, 'GP1010', '10-GP1', 'externe', 'student', NULL, '10-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(360, 'GP1011', '11-GP1', 'externe', 'student', NULL, '11-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(361, 'GP1012', '12-GP1', 'externe', 'student', NULL, '12-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(362, 'GP1013', '13-GP1', 'externe', 'student', NULL, '13-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(363, 'GP1014', '14-GP1', 'externe', 'student', NULL, '14-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(364, 'GP1015', '15-GP1', 'externe', 'student', NULL, '15-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(365, 'GP1016', '16-GP1', 'externe', 'student', NULL, '16-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(366, 'GP1017', '17-GP1', 'externe', 'student', NULL, '17-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(367, 'GP1018', '18-GP1', 'externe', 'student', NULL, '18-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(368, 'GP1019', '19-GP1', 'externe', 'student', NULL, '19-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(369, 'GP1020', '20-GP1', 'externe', 'student', NULL, '20-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(370, 'GP1021', '21-GP1', 'externe', 'student', NULL, '21-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(371, 'GP1022', '22-GP1', 'externe', 'student', NULL, '22-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(372, 'GP1023', '23-GP1', 'externe', 'student', NULL, '23-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(373, 'GP1024', '24-GP1', 'externe', 'student', NULL, '24-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(374, 'GP1025', '25-GP1', 'externe', 'student', NULL, '25-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(375, 'GP1026', '26-GP1', 'externe', 'student', NULL, '26-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(376, 'GP1027', '27-GP1', 'externe', 'student', NULL, '27-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(377, 'GP1028', '28-GP1', 'externe', 'student', NULL, '28-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(378, 'GP1029', '29-GP1', 'externe', 'student', NULL, '29-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(379, 'GP1030', '30-GP1', 'externe', 'student', NULL, '30-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(380, 'GP1031', '31-GP1', 'externe', 'student', NULL, '31-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(381, 'GP1032', '32-GP1', 'externe', 'student', NULL, '32-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(382, 'GP1033', '33-GP1', 'externe', 'student', NULL, '33-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(383, 'GP1034', '34-GP1', 'externe', 'student', NULL, '34-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(384, 'GP1035', '35-GP1', 'externe', 'student', NULL, '35-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(385, 'GP1036', '36-GP1', 'externe', 'student', NULL, '36-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(386, 'GP1037', '37-GP1', 'externe', 'student', NULL, '37-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(387, 'GP1038', '38-GP1', 'externe', 'student', NULL, '38-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(388, 'GP1039', '39-GP1', 'externe', 'student', NULL, '39-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(389, 'GP1040', '40-GP1', 'externe', 'student', NULL, '40-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(390, 'GP1041', '41-GP1', 'externe', 'student', NULL, '41-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(391, 'GP1042', '42-GP1', 'externe', 'student', NULL, '42-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(392, 'GP1043', '43-GP1', 'externe', 'student', NULL, '43-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(393, 'GP1044', '44-GP1', 'externe', 'student', NULL, '44-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(394, 'GP1045', '45-GP1', 'externe', 'student', NULL, '45-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(395, 'GP1046', '46-GP1', 'externe', 'student', NULL, '46-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(396, 'GP1047', '47-GP1', 'externe', 'student', NULL, '47-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(397, 'GP1048', '48-GP1', 'externe', 'student', NULL, '48-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(398, 'GP1049', '49-GP1', 'externe', 'student', NULL, '49-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'boy'),
(399, 'GP1050', '50-GP1', 'externe', 'student', NULL, '50-GP1@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '1', 'girl'),
(400, 'GP2001', '1-GP2', 'externe', 'student', NULL, '1-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(401, 'GP2002', '2-GP2', 'externe', 'student', NULL, '2-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(402, 'GP2003', '3-GP2', 'externe', 'student', NULL, '3-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(403, 'GP2004', '4-GP2', 'externe', 'student', NULL, '4-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(404, 'GP2005', '5-GP2', 'externe', 'student', NULL, '5-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(405, 'GP2006', '6-GP2', 'externe', 'student', NULL, '6-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(406, 'GP2007', '7-GP2', 'externe', 'student', NULL, '7-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(407, 'GP2008', '8-GP2', 'externe', 'student', NULL, '8-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(408, 'GP2009', '9-GP2', 'externe', 'student', NULL, '9-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(409, 'GP2010', '10-GP2', 'externe', 'student', NULL, '10-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(410, 'GP2011', '11-GP2', 'externe', 'student', NULL, '11-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(411, 'GP2012', '12-GP2', 'externe', 'student', NULL, '12-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(412, 'GP2013', '13-GP2', 'externe', 'student', NULL, '13-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(413, 'GP2014', '14-GP2', 'externe', 'student', NULL, '14-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(414, 'GP2015', '15-GP2', 'externe', 'student', NULL, '15-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(415, 'GP2016', '16-GP2', 'externe', 'student', NULL, '16-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(416, 'GP2017', '17-GP2', 'externe', 'student', NULL, '17-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(417, 'GP2018', '18-GP2', 'externe', 'student', NULL, '18-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(418, 'GP2019', '19-GP2', 'externe', 'student', NULL, '19-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(419, 'GP2020', '20-GP2', 'externe', 'student', NULL, '20-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(420, 'GP2021', '21-GP2', 'externe', 'student', NULL, '21-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(421, 'GP2022', '22-GP2', 'externe', 'student', NULL, '22-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(422, 'GP2023', '23-GP2', 'externe', 'student', NULL, '23-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(423, 'GP2024', '24-GP2', 'externe', 'student', NULL, '24-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(424, 'GP2025', '25-GP2', 'externe', 'student', NULL, '25-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(425, 'GP2026', '26-GP2', 'externe', 'student', NULL, '26-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(426, 'GP2027', '27-GP2', 'externe', 'student', NULL, '27-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(427, 'GP2028', '28-GP2', 'externe', 'student', NULL, '28-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(428, 'GP2029', '29-GP2', 'externe', 'student', NULL, '29-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(429, 'GP2030', '30-GP2', 'externe', 'student', NULL, '30-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(430, 'GP2031', '31-GP2', 'externe', 'student', NULL, '31-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(431, 'GP2032', '32-GP2', 'externe', 'student', NULL, '32-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(432, 'GP2033', '33-GP2', 'externe', 'student', NULL, '33-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(433, 'GP2034', '34-GP2', 'externe', 'student', NULL, '34-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(434, 'GP2035', '35-GP2', 'externe', 'student', NULL, '35-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(435, 'GP2036', '36-GP2', 'externe', 'student', NULL, '36-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(436, 'GP2037', '37-GP2', 'externe', 'student', NULL, '37-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(437, 'GP2038', '38-GP2', 'externe', 'student', NULL, '38-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(438, 'GP2039', '39-GP2', 'externe', 'student', NULL, '39-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(439, 'GP2040', '40-GP2', 'externe', 'student', NULL, '40-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(440, 'GP2041', '41-GP2', 'externe', 'student', NULL, '41-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(441, 'GP2042', '42-GP2', 'externe', 'student', NULL, '42-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(442, 'GP2043', '43-GP2', 'externe', 'student', NULL, '43-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(443, 'GP2044', '44-GP2', 'externe', 'student', NULL, '44-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(444, 'GP2045', '45-GP2', 'externe', 'student', NULL, '45-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(445, 'GP2046', '46-GP2', 'externe', 'student', NULL, '46-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(446, 'GP2047', '47-GP2', 'externe', 'student', NULL, '47-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(447, 'GP2048', '48-GP2', 'externe', 'student', NULL, '48-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl'),
(448, 'GP2049', '49-GP2', 'externe', 'student', NULL, '49-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'boy'),
(449, 'GP2050', '50-GP2', 'externe', 'student', NULL, '50-GP2@gmail.com', '../images/default_user.png', NULL, NULL, '', NULL, NULL, NULL, 'Génie de procédé', '2', 'girl');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `updateNumStudentsAfterInsert` AFTER INSERT ON `users` FOR EACH ROW BEGIN
    DECLARE count_students INT;
    SET count_students = (
        SELECT COUNT(*) 
        FROM users 
        WHERE room_number = NEW.room_number AND genre = NEW.genre
    );

    UPDATE rooms
    SET num_students = count_students
    WHERE room = NEW.room_number;  -- Assuming room_id is the primary key of the rooms table
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateNumStudentsAfterUpdate` AFTER UPDATE ON `users` FOR EACH ROW BEGIN
    -- Update the previous room's num_students
    UPDATE rooms
    SET num_students = (
        SELECT COUNT(*)
        FROM users
        WHERE room_number = OLD.room_number AND genre = OLD.genre COLLATE utf8mb4_0900_ai_ci
    )
    WHERE room = OLD.room_number AND building = OLD.genre COLLATE utf8mb4_0900_ai_ci;

    -- Update the new room's num_students
    UPDATE rooms
    SET num_students = (
        SELECT COUNT(*)
        FROM users
        WHERE room_number = NEW.room_number AND genre = NEW.genre COLLATE utf8mb4_0900_ai_ci
    )
    WHERE room = NEW.room_number AND building = NEW.genre COLLATE utf8mb4_0900_ai_ci;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `decharge`
--
ALTER TABLE `decharge`
  ADD PRIMARY KEY (`id_demande`);

--
-- Indexes for table `degats`
--
ALTER TABLE `degats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `historique_internat`
--
ALTER TABLE `historique_internat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `internat`
--
ALTER TABLE `internat`
  ADD PRIMARY KEY (`id_demande`);

--
-- Indexes for table `paiements`
--
ALTER TABLE `paiements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recu` (`recu`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `ticket_history`
--
ALTER TABLE `ticket_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cin` (`cin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `decharge`
--
ALTER TABLE `decharge`
  MODIFY `id_demande` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `degats`
--
ALTER TABLE `degats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `historique_internat`
--
ALTER TABLE `historique_internat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `internat`
--
ALTER TABLE `internat`
  MODIFY `id_demande` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `paiements`
--
ALTER TABLE `paiements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_history`
--
ALTER TABLE `ticket_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `degats`
--
ALTER TABLE `degats`
  ADD CONSTRAINT `degats_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `historique_internat`
--
ALTER TABLE `historique_internat`
  ADD CONSTRAINT `historique_internat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `paiements`
--
ALTER TABLE `paiements`
  ADD CONSTRAINT `paiements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ticket_history`
--
ALTER TABLE `ticket_history`
  ADD CONSTRAINT `ticket_history_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
