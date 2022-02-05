-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2022 at 01:07 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameofmemes`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userID` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `platform` varchar(255) NOT NULL DEFAULT 'Android',
  `authProvider` enum('Guest','Apple','Facebook') NOT NULL DEFAULT 'Guest',
  `image` varchar(255) DEFAULT NULL,
  `Coins` int(11) DEFAULT 20,
  `score` int(11) DEFAULT 0,
  `Xp` int(11) DEFAULT 0,
  `level` int(11) DEFAULT 0,
  `gamePlayed` int(11) DEFAULT 0,
  `gameWon` int(11) DEFAULT 0,
  `winPercentage` int(11) DEFAULT 0,
  `career` int(11) DEFAULT 0,
  `isNewUser` int(11) DEFAULT 1,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userID`, `userName`, `email`, `country`, `platform`, `authProvider`, `image`, `Coins`, `score`, `Xp`, `level`, `gamePlayed`, `gameWon`, `winPercentage`, `career`, `isNewUser`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '3', 'john', 'john@gmail.com', NULL, 'Android', 'Guest', '1643924922.png', 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-03 14:54:14', '2022-02-03 18:33:54'),
(21, '7', 'john', 'john@gmail.com', 'pakistan', 'Android', 'Guest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BAScAPEbtStmJNK5No1hDyOhto3V4Cwu', '2022-02-03 18:45:12', '2022-02-03 18:47:31'),
(22, '8', 'john', 'john@gmail.com', 'pakistan', 'Android', 'Guest', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vB5cykYVhF8blukc8t6ALVaGtiu1TxEn', '2022-02-03 18:47:36', '2022-02-03 19:06:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
