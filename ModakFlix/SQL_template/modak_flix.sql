-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 01, 2021 at 12:32 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

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
(100, 'The Dark Knight Rises (2012)', 'Movies', '/Applications/XAMPP/xamppfiles/htdocs/OTTServer/ModakFlix/Movies/The Dark Knight Rises (2012)', 'Hindi', 'Summary : Eight years after the Joker\'s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane. \n\nIMDB Rating : 8.4/10\n\nDirector:  Christopher Nolan\n\nWriters:  Jonathan Nolan, Christopher Nolan, etc.\n\nStars:  Christian Bale, Tom Hardy, Anne Hathaway, etc.', 'http://192.168.43.59/OTTServer/ModakFlix/cached_images/The Dark Knight Rises (2012)_album_art.jpg', 'http://192.168.43.59/OTTServer/ModakFlix/Movies/The Dark Knight Rises (2012)/The.Dark.Knight.Rises.2012.720p.BluRay.x264.YIFY.mp4'),
(101, 'Burnt (2015)', 'Movies', '/Applications/XAMPP/xamppfiles/htdocs/OTTServer/ModakFlix/Movies/Burnt (2015)', 'Hindi', 'Summary : Adam Jones ( ) is a chef who destroyed his career with drugs and diva behavior. He cleans up and returns to London, determined to redeem himself by spearheading a top restaurant that can gain three Michelin stars. \n\nIMDB Rating : 6.6/10\n\nDirector:  John Wells\n\nWriters:  Steven Knight, Michael Kalesniko\n\nStars:  Bradley Cooper, Sienna Miller, Daniel Brühl, etc.', 'http://192.168.43.59/OTTServer/ModakFlix/cached_images/Burnt (2015)_album_art.jpg', 'http://192.168.43.59/OTTServer/ModakFlix/Movies/Burnt (2015)/Burnt 2015 1080p BluRay x264 DTS-JYK.mkv'),
(102, 'The Dark Knight (2008)', 'Movies', '/Applications/XAMPP/xamppfiles/htdocs/OTTServer/ModakFlix/Movies/The Dark Knight (2008)', 'Hindi', 'Summary : When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice. \n\nIMDB Rating : 9.0/10\n\nDirector:  Christopher Nolan\n\nWriters:  Jonathan Nolan, Christopher Nolan, etc.\n\nStars:  Christian Bale, Heath Ledger, Aaron Eckhart, etc.', 'http://192.168.43.59/OTTServer/ModakFlix/cached_images/The Dark Knight (2008)_album_art.jpg', 'http://192.168.43.59/OTTServer/ModakFlix/Movies/The Dark Knight (2008)/The.Dark.Knight.2008.720p.BluRay.x264.YIFY.mp4'),
(103, 'SILVER LININGS (2013)', 'Movies', '/Applications/XAMPP/xamppfiles/htdocs/OTTServer/ModakFlix/Movies/SILVER LININGS (2013)', 'Hindi', 'Summary : After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own. \n\nIMDB Rating : 7.7/10\n\nDirector:  David O. Russell\n\nWriters:  David O. Russell, Matthew Quick\n\nStars:  Bradley Cooper, Jennifer Lawrence, Robert De Niro, etc.', 'http://192.168.43.59/OTTServer/ModakFlix/cached_images/SILVER LININGS (2013)_album_art.jpg', 'http://192.168.43.59/OTTServer/ModakFlix/Movies/SILVER LININGS (2013)/SILVER_LININGS_PLAYBOOK.avi'),
(104, 'Batman Begins (2005)', 'Movies', '/Applications/XAMPP/xamppfiles/htdocs/OTTServer/ModakFlix/Movies/Batman Begins (2005)', 'Hindi', 'Summary : After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption. \n\nIMDB Rating : 8.2/10\n\nDirector:  Christopher Nolan\n\nWriters:  Bob Kane, David S. Goyer, etc.\n\nStars:  Christian Bale, Michael Caine, Ken Watanabe, etc.', 'http://192.168.43.59/OTTServer/ModakFlix/cached_images/Batman Begins (2005)_album_art.jpg', 'http://192.168.43.59/OTTServer/ModakFlix/Movies/Batman Begins (2005)/Batman.Begins.2005.720p.BRrip.x264.YIFY.mp4'),
(105, 'Avengers Endgame (2019)', 'Movies', '/Applications/XAMPP/xamppfiles/htdocs/OTTServer/ModakFlix/Movies/Avengers Endgame (2019)', 'Hindi', 'Summary : After the devastating events of (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe. \n\nIMDB Rating : 8.4/10\n\nDirectors:  Anthony Russo, Joe Russo\n\nWriters:  Christopher Markus, Stephen McFeely, etc.\n\nStars:  Robert Downey Jr., Chris Evans, Mark Ruffalo, etc.', 'http://192.168.43.59/OTTServer/ModakFlix/cached_images/Avengers Endgame (2019)_album_art.jpg', 'http://192.168.43.59/OTTServer/ModakFlix/Movies/Avengers Endgame (2019)/Avengers Endgame 2019.mp4');

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
('Sourav', 'Modak', 'sourav', 1),
('Anurav', 'Modak', 'anurav', 2),
('Shyamal', 'Modak', 'shyamal', 3),
('Dolly', 'Modak', 'dolly', 4);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `shows_watched`
--
ALTER TABLE `shows_watched`
  MODIFY `serial` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `Serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
