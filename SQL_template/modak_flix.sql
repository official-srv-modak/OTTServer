-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 07:35 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modak_flix`
--

-- --------------------------------------------------------

--
-- Table structure for table `file_system`
--

CREATE TABLE `file_system` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `category` varchar(20) NOT NULL,
  `path` longtext NOT NULL,
  `language` varchar(20) NOT NULL,
  `des` longtext NOT NULL,
  `album_art_path` longtext NOT NULL,
  `url` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_system`
--

INSERT INTO `file_system` (`id`, `name`, `category`, `path`, `language`, `des`, `album_art_path`, `url`) VALUES
(100, 'Devdas (2002)', 'Movies', 'Movies/Devdas (2002)', 'Hindi', 'Summary : After his wealthy family prohibits him from marrying the woman he is in love with, Devdas Mukherjee\'s life spirals further and further out of control as he takes up alcohol and a life of vice to numb the pain. \r\n\r\nIMDB Rating : 7.6/10\r\n\r\nCrews of movies :   Sanjay Leela Bhansali, Saratchandra Chatterjee, Prakash Kapadia, Sanjay Leela Bhansali, Stars, Shah Rukh Khan, Aishwarya Rai Bachchan, Madhuri Dixit', 'http://3.108.236.185/cached_images/Devdas (2002)_album_art.jpg', 'http://3.108.236.185/Movies/Devdas (2002)/testvideo.m3u8'),
(101, 'Friends The Reunion (TV Special 2021)', 'Movies', 'Movies/Friends The Reunion (TV Special 2021)', 'Hindi', 'Summary : An unscripted Friends reunion special. \r\n\r\nIMDB Rating : 8.1/10\r\n\r\nCrews of movies :   Ben Winston, David Crane, Marta Kauffman, Stars, Jennifer Aniston, Courteney Cox, Lisa Kudrow', 'http://3.108.236.185/cached_images/Friends The Reunion (TV Special 2021)_album_art.jpg', 'http://3.108.236.185/Movies/Friends The Reunion (TV Special 2021)/Rainy Day [short 30 sec animation].m3u8'),
(102, 'Helmet (2021)', 'Movies', 'Movies/Helmet (2021)', 'Hindi', 'Summary : A quirky comedy from the heartland of India, it touches upon a topic that is considered embarrassing for most people in India and will showcase the same in a hilariously entertaining manner. \r\n\r\nIMDB Rating : 6.8/10\r\n\r\nCrews of movies :   Satram Ramani, Gopal Mudhane, Satram Ramani, Rohan Shankar, Stars, Aparshakti Khurana, Abhishek Banerjee, Ashish Verma', 'http://3.108.236.185/cached_images/Helmet (2021)_album_art.jpg', 'http://3.108.236.185/Movies/Helmet (2021)/testvideo.m3u8');

-- --------------------------------------------------------

--
-- Table structure for table `shows_watched`
--

CREATE TABLE `shows_watched` (
  `url` longtext NOT NULL,
  `position` bigint(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `album_art_path` longtext NOT NULL,
  `des` longtext NOT NULL,
  `duration` bigint(20) NOT NULL,
  `cause` varchar(30) NOT NULL,
  `name` longtext NOT NULL,
  `serial` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shows_watched`
--

INSERT INTO `shows_watched` (`url`, `position`, `username`, `album_art_path`, `des`, `duration`, `cause`, `name`, `serial`) VALUES
('http://3.108.236.185/Movies/Devdas (2002)/testvideo.m3u8', 181845, 'Sourav Modak', 'http://3.108.236.185/cached_images/Devdas (2002)_album_art.jpg', 'Summary : After his wealthy family prohibits him from marrying the woman he is in love with, Devdas Mukherjee\'s life spirals further and further out of control as he takes up alcohol and a life of vice to numb the pain. \r\n\r\nIMDB Rating : 7.6/10\r\n\r\nCrews of movies :   Sanjay Leela Bhansali, Saratchandra Chatterjee, Prakash Kapadia, Sanjay Leela Bhansali, Stars, Shah Rukh Khan, Aishwarya Rai Bachchan, Madhuri Dixit', 299432, 'null', 'Devdas (2002)', 398),
('http://3.108.236.185/Movies/Friends The Reunion (TV Special 2021)/Rainy Day [short 30 sec animation].m3u8', 0, 'Sourav Modak', 'http://3.108.236.185/cached_images/Friends The Reunion (TV Special 2021)_album_art.jpg', 'Summary : An unscripted Friends reunion special. \r\n\r\nIMDB Rating : 8.1/10\r\n\r\nCrews of movies :   Ben Winston, David Crane, Marta Kauffman, Stars, Jennifer Aniston, Courteney Cox, Lisa Kudrow', 28361, 'null', 'Friends The Reunion (TV Special 2021)', 402);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `Serial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`first_name`, `last_name`, `username`, `Serial`) VALUES
('Sourav', 'Modak', 'souravmodak', 106),
('Anurav', 'Modak', 'anuravmodak', 107),
('Shyamal', 'Modak', 'shyamalmodak', 108),
('Dolly', 'Modak', 'dollymodak', 109);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file_system`
--
ALTER TABLE `file_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shows_watched`
--
ALTER TABLE `shows_watched`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`Serial`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file_system`
--
ALTER TABLE `file_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `shows_watched`
--
ALTER TABLE `shows_watched`
  MODIFY `serial` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `Serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
