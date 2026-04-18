-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 18, 2026 at 08:23 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librairie`
--

-- --------------------------------------------------------

--
-- Table structure for table `livres`
--

CREATE TABLE `livres` (
  `id` int NOT NULL,
  `titre` varchar(255) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `annee_publication` int DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `livres`
--

INSERT INTO `livres` (`id`, `titre`, `auteur`, `annee_publication`, `disponible`) VALUES
(1, 'Le Petit Prince', 'Antoine de Saint-Exupéry', 1943, 1),
(2, '1984', 'George Orwell', 1949, 1),
(3, 'Harry Potter à l\'école des sorciers', 'J.K. Rowling', 1997, 1),
(4, 'L\'Anomalie', 'Hervé Le Tellier', 2020, 1),
(5, 'Le petit prince', 'Antoine de Saint-Exupéry', 1943, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
