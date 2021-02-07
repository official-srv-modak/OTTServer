-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 07, 2021 at 03:24 PM
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
CREATE DATABASE IF NOT EXISTS `modak_flix` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `modak_flix`;

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
(100, 'Speed (1994)', 'Movies', '../../Movies/Speed (1994)', 'Hindi', 'Summary : A young police officer must prevent a bomb exploding aboard a city bus by keeping its speed above 50 mph. \n\nIMDB Rating : 7.2/10\n\nDirector:  Jan de Bont\n\nWriter:  Graham Yost\n\nStars:  Keanu Reeves, Dennis Hopper, Sandra Bullock, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Speed (1994)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Speed (1994)/Speed.1994.720p.BrRip.x264.BOKUTOX.YIFY.mp4'),
(101, 'Silver Linings Playbook (2012)', 'Movies', '../../Movies/Silver Linings Playbook (2012)', 'Hindi', 'Summary : After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own. \n\nIMDB Rating : 7.7/10\n\nDirector:  David O. Russell\n\nWriters:  David O. Russell, Matthew Quick\n\nStars:  Bradley Cooper, Jennifer Lawrence, Robert De Niro, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Silver Linings Playbook (2012)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Silver Linings Playbook (2012)/SILVER_LININGS_PLAYBOOK.avi'),
(102, 'Batman Begins (2005)', 'Movies', '../../Movies/Batman Begins (2005)', 'Hindi', 'Summary : After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption. \r\n\r\nIMDB Rating : 8.2/10\r\n\r\nDirector:  Christopher Nolan\r\n\r\nWriters:  Bob Kane, David S. Goyer, etc.\r\n\r\nStars:  Christian Bale, Michael Caine, Ken Watanabe, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Batman Begins (2005)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Batman Begins (2005)/Batman.Begins.2005.720p.BRrip.x264.YIFY.mp4'),
(103, 'Dinner for Schmucks (2010)', 'Movies', '../../Movies/Dinner for Schmucks (2010)', 'Hindi', 'Summary : When he finds out that his work superiors host a dinner celebrating the idiocy of their guests, a rising executive questions it when he\'s invited, just as he befriends a man who would be the perfect guest. \r\n\r\nIMDB Rating : 5.9/10\r\n\r\nDirector:  Jay Roach\r\n\r\nWriters:  David Guion, Michael Handelman, etc.\r\n\r\nStars:  Steve Carell, Paul Rudd, Stephanie Szostak, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Dinner for Schmucks (2010)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Dinner for Schmucks (2010)/Dinner For Schmucks.2010.mkv'),
(104, 'P.S. I Love You (2007)', 'Movies', '../../Movies/P.S. I Love You (2007)', 'Hindi', 'Summary : A young widow discovers that her late husband has left her 10 messages intended to help ease her pain and start a new life. \r\n\r\nIMDB Rating : 7.0/10\r\n\r\nDirector:  Richard LaGravenese\r\n\r\nWriters:  Richard LaGravenese, Steven Rogers, etc.\r\n\r\nStars:  Hilary Swank, Gerard Butler, Harry Connick Jr., etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/P.S. I Love You (2007)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/P.S. I Love You (2007)/P.S.I.Love.You.2007.720p.BrRip.x264.YIFY.mp4'),
(105, 'The Dark Knight (2008)', 'Movies', '../../Movies/The Dark Knight (2008)', 'Hindi', 'Summary : When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice. \r\n\r\nIMDB Rating : 9.0/10\r\n\r\nDirector:  Christopher Nolan\r\n\r\nWriters:  Jonathan Nolan, Christopher Nolan, etc.\r\n\r\nStars:  Christian Bale, Heath Ledger, Aaron Eckhart, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Dark Knight (2008)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Dark Knight (2008)/The.Dark.Knight.2008.720p.BluRay.x264.YIFY.mp4'),
(106, 'The Dark Knight Rises (2012)', 'Movies', '../../Movies/The Dark Knight Rises (2012)', 'Hindi', 'Summary : Eight years after the Joker\'s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane. \r\n\r\nIMDB Rating : 8.4/10\r\n\r\nDirector:  Christopher Nolan\r\n\r\nWriters:  Jonathan Nolan, Christopher Nolan, etc.\r\n\r\nStars:  Christian Bale, Tom Hardy, Anne Hathaway, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Dark Knight Rises (2012)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Dark Knight Rises (2012)/The.Dark.Knight.Rises.2012.720p.BluRay.x264.YIFY.mp4'),
(107, 'The Shawshank Redemption (1994)', 'Movies', '../../Movies/The Shawshank Redemption (1994)', 'Hindi', 'Summary : Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency. \r\n\r\nIMDB Rating : 9.3/10\r\n\r\nDirector:  Frank Darabont\r\n\r\nWriters:  Stephen King, Frank Darabont\r\n\r\nStars:  Tim Robbins, Morgan Freeman, Bob Gunton, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Shawshank Redemption (1994)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Shawshank Redemption (1994)/The.Shawshank.Redemption.1994.1080p.x264.YIFY.mp4'),
(108, 'Ant-Man (2015)', 'Movies', '../../Movies/Ant-Man (2015)', 'Hindi', 'Summary : Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, cat burglar Scott Lang must embrace his inner hero and help his mentor, Dr. Hank Pym, plan and pull off a heist that will save the world. \r\n\r\nIMDB Rating : 7.3/10\r\n\r\nDirector:  Peyton Reed\r\n\r\nWriters:  Edgar Wright, Joe Cornish, etc.\r\n\r\nStars:  Paul Rudd, Michael Douglas, Corey Stoll, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Ant-Man (2015)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Ant-Man (2015)/Ant-Man.2015.720p.BRRip.1GB.MkvCage.mkv'),
(109, 'Avengers Age of Ultron (2015)', 'Movies', '../../Movies/Avengers Age of Ultron (2015)', 'Hindi', 'Summary : When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it\'s up to Earth\'s mightiest heroes to stop the villainous Ultron from enacting his terrible plan. \r\n\r\nIMDB Rating : 7.3/10\r\n\r\nDirector:  Joss Whedon\r\n\r\nWriters:  Joss Whedon, Stan Lee, etc.\r\n\r\nStars:  Robert Downey Jr., Chris Evans, Mark Ruffalo, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Avengers Age of Ultron (2015)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Avengers Age of Ultron (2015)/Avengers.Age.of.Ultron.2015.720p.BluRay.x264.YIFY.mp4'),
(110, 'Captain America The First Avenger (2011)', 'Movies', '../../Movies/Captain America The First Avenger (2011)', 'Hindi', 'Summary : Steve Rogers, a rejected military soldier, transforms into Captain America after taking a dose of a \'Super-Soldier serum\'. But being Captain America comes at a price as he attempts to take down a war monger and a terrorist organization. \r\n\r\nIMDB Rating : 6.9/10\r\n\r\nDirector:  Joe Johnston\r\n\r\nWriters:  Christopher Markus, Stephen McFeely, etc.\r\n\r\nStars:  Chris Evans, Hugo Weaving, Samuel L. Jackson, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Captain America The First Avenger (2011)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Captain America The First Avenger (2011)/Captain.America.The.First.Avenger.1080p.BrRip.x264.YIFY.mp4'),
(111, 'Captain America Civil War (2016)', 'Movies', '../../Movies/Captain America Civil War (2016)', 'Hindi', 'Summary : Political involvement in the Avengers\' affairs causes a rift between Captain America and Iron Man. \r\n\r\nIMDB Rating : 7.8/10\r\n\r\nDirectors:  Anthony Russo, Joe Russo\r\n\r\nWriters:  Christopher Markus, Stephen McFeely, etc.\r\n\r\nStars:  Chris Evans, Robert Downey Jr., Scarlett Johansson, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Captain America Civil War (2016)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Captain America Civil War (2016)/Captain.America.Civil.War.2016.720p.BluRay.x264-[YTS.AG].mp4'),
(112, 'Deadpool (2016)', 'Movies', '../../Movies/Deadpool (2016)', 'Hindi', 'Summary : A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks. \r\n\r\nIMDB Rating : 8.0/10\r\n\r\nDirector:  Tim Miller\r\n\r\nWriters:  Rhett Reese, Paul Wernick\r\n\r\nStars:  Ryan Reynolds, Morena Baccarin, T.J. Miller, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Deadpool (2016)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Deadpool (2016)/Deadpool.2016.1080p.BluRay.5.1.X264.DUAL-WWW.BLUDV.COM.mkv'),
(113, 'Doctor Strange (2016)', 'Movies', '../../Movies/Doctor Strange (2016)', 'Hindi', 'Summary : While on a journey of physical and spiritual healing, a brilliant neurosurgeon is drawn into the world of the mystic arts. \r\n\r\nIMDB Rating : 7.5/10\r\n\r\nDirector:  Scott Derrickson\r\n\r\nWriters:  Jon Spaihts, Scott Derrickson, etc.\r\n\r\nStars:  Benedict Cumberbatch, Chiwetel Ejiofor, Rachel McAdams, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Doctor Strange (2016)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Doctor Strange (2016)/Doctor.Strange.2016.720p.BluRay.x264-[YTS.AG].mp4'),
(114, 'Iron Man (2008)', 'Movies', '../../Movies/Iron Man (2008)', 'Hindi', 'Summary : After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil. \r\n\r\nIMDB Rating : 7.9/10\r\n\r\nDirector:  Jon Favreau\r\n\r\nWriters:  Mark Fergus, Hawk Ostby, etc.\r\n\r\nStars:  Robert Downey Jr., Gwyneth Paltrow, Terrence Howard, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Iron Man (2008)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Iron Man (2008)/Iron Man 2008.720p.BrRip.x264.YIFY.mp4'),
(115, 'Iron Man 2 (2010)', 'Movies', '../../Movies/Iron Man 2 (2010)', 'Hindi', 'Summary : With the world now aware of his identity as Iron Man, Tony Stark must contend with both his declining health and a vengeful mad man with ties to his father\'s legacy. \r\n\r\nIMDB Rating : 7.0/10\r\n\r\nDirector:  Jon Favreau\r\n\r\nWriters:  Justin Theroux, Stan Lee, etc.\r\n\r\nStars:  Robert Downey Jr., Mickey Rourke, Gwyneth Paltrow, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Iron Man 2 (2010)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Iron Man 2 (2010)/Iron.Man.2.2010.1080p.BrRip.x264.YIFY.mp4'),
(116, 'Iron Man 3 (2013)', 'Movies', '../../Movies/Iron Man 3 (2013)', 'Hindi', 'Summary : When Tony Stark\'s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution. \r\n\r\nIMDB Rating : 7.1/10\r\n\r\nDirector:  Shane Black\r\n\r\nWriters:  Drew Pearce, Shane Black, etc.\r\n\r\nStars:  Robert Downey Jr., Guy Pearce, Gwyneth Paltrow, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Iron Man 3 (2013)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Iron Man 3 (2013)/Iron.Man.3.2013.1080p.BluRay.x264.YIFY.mp4'),
(117, 'The Avengers (2012)', 'Movies', '../../Movies/The Avengers (2012)', 'Hindi', 'Summary : Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity. \r\n\r\nIMDB Rating : 8.0/10\r\n\r\nDirector:  Joss Whedon\r\n\r\nWriters:  Joss Whedon, Zak Penn, etc.\r\n\r\nStars:  Robert Downey Jr., Chris Evans, Scarlett Johansson, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Avengers (2012)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Avengers (2012)/The.Avengers.2012.1080p.BluRay.x264.YIFY.mp4'),
(118, 'Apollo 13 (1995)', 'Movies', '../../Movies/Apollo 13 (1995)', 'Hindi', 'Summary : NASA must devise a strategy to return Apollo 13 to Earth safely after the spacecraft undergoes massive internal damage putting the lives of the three astronauts on board in jeopardy. \r\n\r\nIMDB Rating : 7.6/10\r\n\r\nDirector:  Ron Howard\r\n\r\nWriters:  Jim Lovell, Jeffrey Kluger, etc.\r\n\r\nStars:  Tom Hanks, Bill Paxton, Kevin Bacon, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Apollo 13 (1995)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Apollo 13 (1995)/Apollo.13.1995.720p.BluRay.x264.YIFY.mp4'),
(119, 'Argo (2012)', 'Movies', '../../Movies/Argo (2012)', 'Hindi', 'Summary : Acting under the cover of a Hollywood producer scouting a location for a science fiction film, a CIA agent launches a dangerous operation to rescue six Americans in Tehran during the U.S. hostage crisis in Iran in 1979. \r\n\r\nIMDB Rating : 7.7/10\r\n\r\nDirector:  Ben Affleck\r\n\r\nWriters:  Chris Terrio, Tony Mendez, etc.\r\n\r\nStars:  Ben Affleck, Bryan Cranston, John Goodman, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Argo (2012)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Argo (2012)/Argo.2012.720p.bluray.HEVC.Team - x265mkv.com 420MB.mp4'),
(120, 'Burnt (2015)', 'Movies', '../../Movies/Burnt (2015)', 'Hindi', 'Summary : Adam Jones ( ) is a chef who destroyed his career with drugs and diva behavior. He cleans up and returns to London, determined to redeem himself by spearheading a top restaurant that can gain three Michelin stars. \r\n\r\nIMDB Rating : 6.6/10\r\n\r\nDirector:  John Wells\r\n\r\nWriters:  Steven Knight, Michael Kalesniko\r\n\r\nStars:  Bradley Cooper, Sienna Miller, Daniel Brühl, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Burnt (2015)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Burnt (2015)/Burnt 2015 1080p BluRay x264 DTS-JYK.mkv'),
(121, 'Captain Phillips (2013)', 'Movies', '../../Movies/Captain Phillips (2013)', 'Hindi', 'Summary : The true story of Captain and the 2009 hijacking by Somali pirates of the U.S.-flagged MV Maersk Alabama, the first American cargo ship to be hijacked in two hundred years. \r\n\r\nIMDB Rating : 7.8/10\r\n\r\nDirector:  Paul Greengrass\r\n\r\nWriters:  Billy Ray, Richard Phillips, etc.\r\n\r\nStars:  Tom Hanks, Barkhad Abdi, Barkhad Abdirahman, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Captain Phillips (2013)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Captain Phillips (2013)/Captain.Phillips.2013.1080p.BluRay.x264.YIFY.mp4'),
(122, 'Chhichhore (2019)', 'Movies', '../../Movies/Chhichhore (2019)', 'Hindi', 'Summary : A tragic incident forces Anirudh, a middle-aged man, to take a trip down memory lane and reminisce his college days along with his friends, who were labelled as losers. \r\n\r\nIMDB Rating : 8.2/10\r\n\r\nDirector:  Nitesh Tiwari\r\n\r\nWriters:  Piyush Gupta, Nikhil Mehrotra, etc.\r\n\r\nStars:  Sushant Singh Rajput, Shraddha Kapoor, Varun Sharma, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Chhichhore (2019)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Chhichhore (2019)/Chhichhore 2019 Hindi 1080p WEBRip x264 AAC ESubs - LOKiHD - Telly.mkv'),
(123, 'Definitely, Maybe (2008)', 'Movies', '../../Movies/Definitely, Maybe (2008)', 'Hindi', 'Summary : A political consultant tries to explain his impending divorce and past relationships to his 11-year-old daughter. \r\n\r\nIMDB Rating : 7.1/10\r\n\r\nDirector:  Adam Brooks\r\n\r\nWriter:  Adam Brooks\r\n\r\nStars:  Ryan Reynolds, Rachel Weisz, Abigail Breslin, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Definitely, Maybe (2008)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Definitely, Maybe (2008)/Definitely.Maybe.2008.1080p.BrRip.x264.YIFY.mp4'),
(124, 'Django Unchained (2012)', 'Movies', '../../Movies/Django Unchained (2012)', 'Hindi', 'Summary : With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner. \r\n\r\nIMDB Rating : 8.4/10\r\n\r\nDirector:  Quentin Tarantino\r\n\r\nWriter:  Quentin Tarantino\r\n\r\nStars:  Jamie Foxx, Christoph Waltz, Leonardo DiCaprio, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Django Unchained (2012)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Django Unchained (2012)/Django.Unchained.2012.720p.BluRay.x264.YIFY.mp4'),
(125, 'Easy A (2010)', 'Movies', '../../Movies/Easy A (2010)', 'Hindi', 'Summary : A clean-cut high school student relies on the school\'s rumor mill to advance her social and financial standing. \r\n\r\nIMDB Rating : 7.0/10\r\n\r\nDirector:  Will Gluck\r\n\r\nWriter:  Bert V. Royal\r\n\r\nStars:  Emma Stone, Amanda Bynes, Penn Badgley, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Easy A (2010)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Easy A (2010)/Easy.A.2010.BrRip.1080p.x264.YIFY.mp4'),
(126, 'Eternal Sunshine of the Spotless Mind (2004)', 'Movies', '../../Movies/Eternal Sunshine of the Spotless Mind (2004)', 'Hindi', 'Summary : When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories. \r\n\r\nIMDB Rating : 8.3/10\r\n\r\nDirector:  Michel Gondry\r\n\r\nWriters:  Charlie Kaufman, Michel Gondry, etc.\r\n\r\nStars:  Jim Carrey, Kate Winslet, Tom Wilkinson, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Eternal Sunshine of the Spotless Mind (2004)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Eternal Sunshine of the Spotless Mind (2004)/Eternal.Sunshine.of.the.Spotless.Mind.2004.1080p.BrRip.x264.BOKUTOX.YIFY.mp4'),
(127, 'Frozen II (2019)', 'Movies', '../../Movies/Frozen II (2019)', 'Hindi', 'Summary : Anna, Elsa, Kristoff, Olaf and Sven leave Arendelle to travel to an ancient, autumn-bound forest of an enchanted land. They set out to find the origin of Elsa\'s powers in order to save their kingdom. \r\n\r\nIMDB Rating : 6.9/10\r\n\r\nDirectors:  Chris Buck, Jennifer Lee\r\n\r\nWriters:  Jennifer Lee, Hans Christian Andersen, etc.\r\n\r\nStars:  Kristen Bell, Idina Menzel, Josh Gad, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Frozen II (2019)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Frozen II (2019)/Frozen.II.2019.1080p.BluRay.x264.AAC5.1-[YTS.MX].mp4'),
(128, 'Fury (2014)', 'Movies', '../../Movies/Fury (2014)', 'Hindi', 'Summary : A grizzled tank commander makes tough decisions as he and his crew fight their way across Germany in April, 1945. \r\n\r\nIMDB Rating : 7.6/10\r\n\r\nDirector:  David Ayer\r\n\r\nWriter:  David Ayer\r\n\r\nStars:  Brad Pitt, Shia LaBeouf, Logan Lerman, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Fury (2014)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Fury (2014)/Fury.2014.1080p.BluRay.x264.YIFY.mp4'),
(129, 'Geetha Govindam (2018)', 'Movies', '../../Movies/Geetha Govindam (2018)', 'Hindi', 'Summary : An innocent young lecturer is misunderstood as a pervert and despised by a woman who co-incidentally turns out to be the younger sister of his brother-in-law. Eventually differences subside and love blooms between them. \r\n\r\nIMDB Rating : 7.7/10\r\n\r\nDirector:  Parasuram\r\n\r\nWriter:  Parasuram\r\n\r\nStars:  Vijay Deverakonda, Rashmika Mandanna, Subbaraju, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Geetha Govindam (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Geetha Govindam (2018)/Geetha Govindam.2018.1080p.WebDL.AVC.AAC.ESub.DTOne.mp4'),
(130, 'Gully Boy (2019)', 'Movies', '../../Movies/Gully Boy (2019)', 'Hindi', 'Summary : A coming-of-age story based on the lives of street rappers in Mumbai. \r\n\r\nIMDB Rating : 8.0/10\r\n\r\nDirector:  Zoya Akhtar\r\n\r\nWriters:  Zoya Akhtar, Reema Kagti, etc.\r\n\r\nStars:  Vijay Varma, Nakul Roshan Sahdev, Ranveer Singh, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Gully Boy (2019)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Gully Boy (2019)/Gully boy.mp4'),
(131, 'J. Edgar (2011)', 'Movies', '../../Movies/J. Edgar (2011)', 'Hindi', 'Summary : J. Edgar Hoover, powerful head of the F.B.I. for nearly fifty years, looks back on his professional and personal life. \r\n\r\nIMDB Rating : 6.5/10\r\n\r\nDirector:  Clint Eastwood\r\n\r\nWriter:  Dustin Lance Black\r\n\r\nStars:  Leonardo DiCaprio, Armie Hammer, Naomi Watts, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/J. Edgar (2011)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/J. Edgar (2011)/J.Edgar.2011.720p.BrRip.x264.YIFY.mp4'),
(132, 'Joker (2019)', 'Movies', '../../Movies/Joker (2019)', 'Hindi', 'Summary : In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker. \r\n\r\nIMDB Rating : 8.5/10\r\n\r\nDirector:  Todd Phillips\r\n\r\nWriters:  Todd Phillips, Scott Silver, etc.\r\n\r\nStars:  Joaquin Phoenix, Robert De Niro, Zazie Beetz, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Joker (2019)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Joker (2019)/Joker.2019.1080p.WEBRip.x264-[YTS.LT].mp4'),
(133, 'Main Hoon Na (2004)', 'Movies', '../../Movies/Main Hoon Na (2004)', 'Hindi', 'Summary : An army major goes undercover as a college student. His mission is both professional and personal: to protect his general\'s daughter from a radical militant, and to find his estranged half-brother. \r\n\r\nIMDB Rating : 7.0/10\r\n\r\nDirector:  Farah Khan\r\n\r\nWriters:  Farah Khan, Abbas Tyrewala, etc.\r\n\r\nStars:  Shah Rukh Khan, Sushmita Sen, Sunil Shetty, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Main Hoon Na (2004)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Main Hoon Na (2004)/Main Hoon Na 2004 720p DvDRip CharmeLeon SilverRG.mkv'),
(134, 'Once Upon a Time... In Hollywood (2019)', 'Movies', '../../Movies/Once Upon a Time... In Hollywood (2019)', 'Hindi', 'Summary : A faded television actor and his stunt double strive to achieve fame and success in the final years of Hollywood\'s Golden Age in 1969 Los Angeles. \r\n\r\nIMDB Rating : 7.6/10\r\n\r\nDirector:  Quentin Tarantino\r\n\r\nWriter:  Quentin Tarantino\r\n\r\nStars:  Leonardo DiCaprio, Brad Pitt, Margot Robbie, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Once Upon a Time... In Hollywood (2019)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Once Upon a Time... In Hollywood (2019)/Once.Upon.A.Time.....In.Hollywood.2019.1080p.BluRay.x264-[YTS.LT].mp4'),
(135, 'Onward (2020)', 'Movies', '../../Movies/Onward (2020)', 'Hindi', 'Summary : Two elven brothers embark on a quest to bring their father back for one day. \r\n\r\nIMDB Rating : 7.4/10\r\n\r\nDirector:  Dan Scanlon\r\n\r\nWriters:  Dan Scanlon, Keith Bunin, etc.\r\n\r\nStars:  Tom Holland, Chris Pratt, Julia Louis-Dreyfus, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Onward (2020)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Onward (2020)/Onward.2020.1080p.BluRay.x264.AAC5.1-[YTS.MX].mp4'),
(136, 'Pokémon Detective Pikachu (2019)', 'Movies', '../../Movies/Pokémon Detective Pikachu (2019)', 'Hindi', 'Summary : In a world where people collect Pokémon to do battle, a boy comes across an intelligent talking Pikachu who seeks to be a detective. \r\n\r\nIMDB Rating : 6.6/10\r\n\r\nDirector:  Rob Letterman\r\n\r\nWriters:  Dan Hernandez, Benji Samit, etc.\r\n\r\nStars:  Ryan Reynolds, Justice Smith, Kathryn Newton, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Pokémon Detective Pikachu (2019)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Pokémon Detective Pikachu (2019)/Pokémon.Detective.Pikachu.2019.1080p.HDRip.x264-MkvCage.ws.mkv'),
(137, 'Saving Private Ryan (1998)', 'Movies', '../../Movies/Saving Private Ryan (1998)', 'Hindi', 'Summary : Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action. \r\n\r\nIMDB Rating : 8.6/10\r\n\r\nDirector:  Steven Spielberg\r\n\r\nWriter:  Robert Rodat\r\n\r\nStars:  Tom Hanks, Matt Damon, Tom Sizemore, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Saving Private Ryan (1998)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Saving Private Ryan (1998)/Saving.Private.Ryan.1998.1080p.BrRip.x264.YIFY.mp4'),
(138, 'Shazam (2019)', 'Movies', '../../Movies/Shazam (2019)', 'Hindi', 'Summary : A newly fostered young boy in search of his mother instead finds unexpected super powers and soon gains a powerful enemy. \r\n\r\nIMDB Rating : 7.0/10\r\n\r\nDirector:  David F. Sandberg\r\n\r\nWriters:  Henry Gayden, Henry Gayden, etc.\r\n\r\nStars:  Zachary Levi, Mark Strong, Asher Angel, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Shazam (2019)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Shazam (2019)/Shazam.2019.1080p.HC.HDRip.1400MB.DD2.0.x264-GalaxyRG.mkv'),
(139, 'The First Temptation of Christ (2019)', 'Movies', '../../Movies/The First Temptation of Christ (2019)', 'Hindi', 'Summary : Jesus, who\'s hitting the big 3-0, brings a surprise guest to meet the family. \r\n\r\nIMDB Rating : 4.6/10\r\n\r\nDirector:  Rodrigo Van Der Put\r\n\r\nWriters:  Fábio Porchat, Gustavo Martins\r\n\r\nStars:  Gregório Duvivier, Fábio Porchat, Antonio Tabet, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The First Temptation of Christ (2019)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The First Temptation of Christ (2019)/the.first.temptation.of.christ.2019.internal.1080p.web.x264-strife.mkv'),
(140, 'The Pianist (2002)', 'Movies', '../../Movies/The Pianist (2002)', 'Hindi', 'Summary : A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II. \r\n\r\nIMDB Rating : 8.5/10\r\n\r\nDirector:  Roman Polanski\r\n\r\nWriters:  Ronald Harwood, Wladyslaw Szpilman\r\n\r\nStars:  Adrien Brody, Thomas Kretschmann, Frank Finlay, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Pianist (2002)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Pianist (2002)/The.Pianist.720p.BrRip.x264.YIFY.mkv'),
(141, 'The Wedding Guest (2018)', 'Movies', '../../Movies/The Wedding Guest (2018)', 'Hindi', 'Summary : A story centered on a mysterious British Muslim man (Dev Patel) on his journey across Pakistan and India. \r\n\r\nIMDB Rating : 5.7/10\r\n\r\nDirector:  Michael Winterbottom\r\n\r\nWriter:  Michael Winterbottom\r\n\r\nStars:  Dev Patel, Radhika Apte, Jim Sarbh, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Wedding Guest (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Wedding Guest (2018)/The.Wedding.Guest.2019.720p.WEBRip.800MB.x264-GalaxyRG.mkv'),
(142, 'Wonder Woman 1984 (2020)', 'Movies', '../../Movies/Wonder Woman 1984 (2020)', 'Hindi', 'Summary : Diana must contend with a work colleague and businessman, whose desire for extreme wealth sends the world down a path of destruction, after an ancient artifact that grants wishes goes missing. \r\n\r\nIMDB Rating : 5.4/10\r\n\r\nDirector:  Patty Jenkins\r\n\r\nWriters:  Patty Jenkins, Geoff Johns, etc.\r\n\r\nStars:  Gal Gadot, Chris Pine, Kristen Wiig, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Wonder Woman 1984 (2020)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Wonder Woman 1984 (2020)/Wonder.Woman.1984.2020.IMAX.1080p.WEB.H264-NOGRP.mkv'),
(143, 'Zero Dark Thirty (2012)', 'Movies', '../../Movies/Zero Dark Thirty (2012)', 'Hindi', 'Summary : A chronicle of the decade-long hunt for al-Qaeda terrorist leader after the September 2001 attacks, and his death at the hands of the Navy S.E.A.L.s Team 6 in May 2011. \r\n\r\nIMDB Rating : 7.4/10\r\n\r\nDirector:  Kathryn Bigelow\r\n\r\nWriter:  Mark Boal\r\n\r\nStars:  Jessica Chastain, Joel Edgerton, Chris Pratt, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Zero Dark Thirty (2012)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Zero Dark Thirty (2012)/Zero.Dark.Thirty.2012.1080p.BrRip.x264.BOKUTOX.YIFY.mp4'),
(144, 'Thor (2011)', 'Movies', '../../Movies/Thor (2011)', 'Hindi', 'Summary : The powerful but arrogant god Thor is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders. \r\n\r\nIMDB Rating : 7.0/10\r\n\r\nDirector:  Kenneth Branagh\r\n\r\nWriters:  Ashley Miller, Zack Stentz, etc.\r\n\r\nStars:  Chris Hemsworth, Anthony Hopkins, Natalie Portman, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Thor (2011)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Thor (2011)/Thor.2011.1080p.BrRip.x264.YIFY+HI.mp4'),
(145, 'Thor Ragnarok (2017)', 'Movies', '../../Movies/Thor Ragnarok (2017)', 'Hindi', 'Summary : Imprisoned on the planet Sakaar, Thor must race against time to return to Asgard and stop Ragnarök, the destruction of his world, at the hands of the powerful and ruthless villain Hela. \r\n\r\nIMDB Rating : 7.9/10\r\n\r\nDirector:  Taika Waititi\r\n\r\nWriters:  Eric Pearson, Craig Kyle, etc.\r\n\r\nStars:  Chris Hemsworth, Tom Hiddleston, Cate Blanchett, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Thor Ragnarok (2017)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Thor Ragnarok (2017)/Thor.Ragnarok.2017.1080p.WEB-DL.AC3.6CH.MkvCage.mkv'),
(146, 'Thor The Dark World (2013)', 'Movies', '../../Movies/Thor The Dark World (2013)', 'Hindi', 'Summary : When the Dark Elves attempt to plunge the universe into darkness, Thor must embark on a perilous and personal journey that will reunite him with doctor Jane Foster. \r\n\r\nIMDB Rating : 6.9/10\r\n\r\nDirector:  Alan Taylor\r\n\r\nWriters:  Christopher L. Yost, Christopher Markus, etc.\r\n\r\nStars:  Chris Hemsworth, Natalie Portman, Tom Hiddleston, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Thor The Dark World (2013)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Thor The Dark World (2013)/Thor.The.Dark.World.2013.1080p.BluRay.x264.YIFY.mp4'),
(147, 'Ant-Man and the Wasp (2018)', 'Movies', '../../Movies/Ant-Man and the Wasp (2018)', 'Hindi', 'Summary : As Scott Lang balances being both a superhero and a father, Hope van Dyne and Dr. Hank Pym present an urgent new mission that finds the Ant-Man fighting alongside The Wasp to uncover secrets from their past. \r\n\r\nIMDB Rating : 7.1/10\r\n\r\nDirector:  Peyton Reed\r\n\r\nWriters:  Chris McKenna, Erik Sommers, etc.\r\n\r\nStars:  Paul Rudd, Evangeline Lilly, Michael Peña, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Ant-Man and the Wasp (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Ant-Man and the Wasp (2018)/Ant-Man.And.The.Wasp.2018.1080p.BluRay.x264-[YTS.AM].mp4'),
(148, 'Avengers Endgame (2019)', 'Movies', '../../Movies/Avengers Endgame (2019)', 'Hindi', 'Summary : After the devastating events of (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe. \r\n\r\nIMDB Rating : 8.4/10\r\n\r\nDirectors:  Anthony Russo, Joe Russo\r\n\r\nWriters:  Christopher Markus, Stephen McFeely, etc.\r\n\r\nStars:  Robert Downey Jr., Chris Evans, Mark Ruffalo, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Avengers Endgame (2019)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Avengers Endgame (2019)/Avengers.Endgame.2019.1080p.BluRay.x264-[YTS.LT].mp4'),
(149, 'Captain America The Winter Soldier (2014)', 'Movies', '../../Movies/Captain America The Winter Soldier (2014)', 'Hindi', 'Summary : As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat from history: an assassin known as the Winter Soldier. \r\n\r\nIMDB Rating : 7.7/10\r\n\r\nDirectors:  Anthony Russo, Joe Russo\r\n\r\nWriters:  Christopher Markus, Stephen McFeely, etc.\r\n\r\nStars:  Chris Evans, Samuel L. Jackson, Scarlett Johansson, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Captain America The Winter Soldier (2014)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Captain America The Winter Soldier (2014)/Captain America The Winter Soldier (2014) 720p Blu-Ray x264 [Dual Audio] [Hindi 5.1 - Eng 2.0] By Mx-.mkv'),
(150, 'Deadpool 2 (2018)', 'Movies', '../../Movies/Deadpool 2 (2018)', 'Hindi', 'Summary : Foul-mouthed mutant mercenary Wade Wilson (a.k.a. Deadpool), brings together a team of fellow mutant rogues to protect a young boy with supernatural abilities from the brutal, time-traveling cyborg Cable. \r\n\r\nIMDB Rating : 7.7/10\r\n\r\nDirector:  David Leitch\r\n\r\nWriters:  Rhett Reese, Paul Wernick, etc.\r\n\r\nStars:  Ryan Reynolds, Josh Brolin, Morena Baccarin, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Deadpool 2 (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Deadpool 2 (2018)/Deadpool.2.2018.1080p.WEB-DL.DD5.1.H264-FGT.mkv'),
(151, 'Guardians of the Galaxy (2014)', 'Movies', '../../Movies/Guardians of the Galaxy (2014)', 'Hindi', 'Summary : A group of intergalactic criminals must pull together to stop a fanatical warrior with plans to purge the universe. \r\n\r\nIMDB Rating : 8.0/10\r\n\r\nDirector:  James Gunn\r\n\r\nWriters:  James Gunn, Nicole Perlman, etc.\r\n\r\nStars:  Chris Pratt, Vin Diesel, Bradley Cooper, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Guardians of the Galaxy (2014)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Guardians of the Galaxy (2014)/Guardians.of.the.Galaxy.2014.1080p.BluRay.x264.YIFY.mp4'),
(152, 'Guardians of the Galaxy Vol. 2 (2017)', 'Movies', '../../Movies/Guardians of the Galaxy Vol. 2 (2017)', 'Hindi', 'Summary : The Guardians struggle to keep together as a team while dealing with their personal family issues, notably Star-Lord\'s encounter with his father the ambitious celestial being Ego. \r\n\r\nIMDB Rating : 7.6/10\r\n\r\nDirector:  James Gunn\r\n\r\nWriters:  James Gunn, Dan Abnett, etc.\r\n\r\nStars:  Chris Pratt, Zoe Saldana, Dave Bautista, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Guardians of the Galaxy Vol. 2 (2017)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Guardians of the Galaxy Vol. 2 (2017)/Guardians.Of.The.Galaxy.Vol..2.2017.1080p.BluRay.x264-[YTS.AG].mp4'),
(153, 'Spider-Man Homecoming (2017)', 'Movies', '../../Movies/Spider-Man Homecoming (2017)', 'Hindi', 'Summary : Peter Parker balances his life as an ordinary high school student in Queens with his superhero alter-ego Spider-Man, and finds himself on the trail of a new menace prowling the skies of New York City. \r\n\r\nIMDB Rating : 7.4/10\r\n\r\nDirector:  Jon Watts\r\n\r\nWriters:  Jonathan Goldstein, John Francis Daley, etc.\r\n\r\nStars:  Tom Holland, Michael Keaton, Robert Downey Jr., etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Spider-Man Homecoming (2017)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Spider-Man Homecoming (2017)/Spider-Man.Homecoming.2017.720p.BluRay.x264-[YTS.AG].mp4'),
(154, 'The Incredible Hulk (2008)', 'Movies', '../../Movies/The Incredible Hulk (2008)', 'Hindi', 'Summary : Bruce Banner, a scientist on the run from the U.S. Government, must find a cure for the monster he turns into whenever he loses his temper. \r\n\r\nIMDB Rating : 6.7/10\r\n\r\nDirector:  Louis Leterrier\r\n\r\nWriters:  Zak Penn, Zak Penn, etc.\r\n\r\nStars:  Edward Norton, Liv Tyler, Tim Roth, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Incredible Hulk (2008)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Incredible Hulk (2008)/The.Incredible.Hulk.2008.1080p.BluRay.x264.YIFY.mp4'),
(155, 'The Others (2001)', 'Movies', '../../Movies/The Others (2001)', 'Hindi', 'Summary : A woman who lives in her darkened old family house with her two photosensitive children becomes convinced that the home is haunted. \r\n\r\nIMDB Rating : 7.6/10\r\n\r\nDirector:  Alejandro Amenábar\r\n\r\nWriter:  Alejandro Amenábar\r\n\r\nStars:  Nicole Kidman, Christopher Eccleston, Fionnula Flanagan, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Others (2001)_album_art.jpg', ''),
(156, 'The Change-Up (2011)', 'Movies', '../../Movies/The Change-Up (2011)', 'Hindi', 'Summary : Dave is a married man with three kids and a loving wife, and Mitch is a single man who is at the prime of his sexual life. One fateful night while Mitch and Dave are peeing in a fountain, lightning strikes and they switch bodies. \r\n\r\nIMDB Rating : 6.3/10\r\n\r\nDirector:  David Dobkin\r\n\r\nWriters:  Jon Lucas, Scott Moore\r\n\r\nStars:  Jason Bateman, Ryan Reynolds, Olivia Wilde, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Change-Up (2011)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Change-Up (2011)/The.Change.Up.2011.BrRip.720p.x264.YIFY.mp4'),
(157, '2001 A Space Odyssey (1968)', 'Movies', '../../Movies/2001 A Space Odyssey (1968)', 'Hindi', 'Summary : After discovering a mysterious artifact buried beneath the Lunar surface, mankind sets off on a quest to find its origins with help from intelligent supercomputer H.A.L. 9000. \r\n\r\nIMDB Rating : 8.3/10\r\n\r\nDirector:  Stanley Kubrick\r\n\r\nWriters:  Stanley Kubrick, Arthur C. Clarke\r\n\r\nStars:  Keir Dullea, Gary Lockwood, William Sylvester, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/2001 A Space Odyssey (1968)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/2001 A Space Odyssey (1968)/2001.A.Space.Odyssey.1968.720p.BrRip.x264.YIFY.mp4'),
(158, 'Despicable Me (2010)', 'Movies', '../../Movies/Despicable Me (2010)', 'Hindi', 'Summary : When a criminal mastermind uses a trio of orphan girls as pawns for a grand scheme, he finds their love is profoundly changing him for the better. \r\n\r\nIMDB Rating : 7.6/10\r\n\r\nDirectors:  Pierre Coffin, Chris Renaud\r\n\r\nWriters:  Cinco Paul, Ken Daurio, etc.\r\n\r\nStars:  Steve Carell, Jason Segel, Russell Brand, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Despicable Me (2010)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Despicable Me (2010)/Despicable.Me.2010.1080p.BluRay.x264.YIFY.mp4'),
(159, 'Despicable Me 2 (2013)', 'Movies', '../../Movies/Despicable Me 2 (2013)', 'Hindi', 'Summary : When Gru, the world\'s most super-bad turned super-dad has been recruited by a team of officials to stop lethal muscle and a host of Gru\'s own, He has to fight back with new gadgetry, cars, and more minion madness. \r\n\r\nIMDB Rating : 7.3/10\r\n\r\nDirectors:  Pierre Coffin, Chris Renaud\r\n\r\nWriters:  Cinco Paul, Ken Daurio\r\n\r\nStars:  Steve Carell, Kristen Wiig, Benjamin Bratt, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Despicable Me 2 (2013)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Despicable Me 2 (2013)/Despicable.Me.2.2013.1080p.BluRay.x264.YIFY.mp4'),
(160, 'Harold  Kumar Escape from Guantanamo Bay (2008)', 'Movies', '../../Movies/Harold  Kumar Escape from Guantanamo Bay (2008)', 'Hindi', 'Summary : After being mistaken for terrorists and thrown into Guantánamo Bay, stoners Harold and Kumar escape and return to the U.S., where they proceed to flee across the country with federal agents in hot pursuit. \r\n\r\nIMDB Rating : 6.6/10\r\n\r\nDirectors:  Jon Hurwitz, Hayden Schlossberg\r\n\r\nWriters:  Jon Hurwitz, Hayden Schlossberg, etc.\r\n\r\nStars:  John Cho, Kal Penn, Neil Patrick Harris, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Harold  Kumar Escape from Guantanamo Bay (2008)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Harold  Kumar Escape from Guantanamo Bay (2008)/Harold.and.Kumar.Escape.From.Guantanamo.Bay.2008.UNRATED.BrRip.720p.x264.YIFY.mp4'),
(161, 'Harry Potter and the Chamber of Secrets (2002)', 'Movies', '../../Movies/Harry Potter and the Chamber of Secrets (2002)', 'Hindi', 'Summary : An ancient prophecy seems to be coming true when a mysterious presence begins stalking the corridors of a school of magic and leaving its victims paralyzed. \r\n\r\nIMDB Rating : 7.4/10\r\n\r\nDirector:  Chris Columbus\r\n\r\nWriters:  J.K. Rowling, Steve Kloves\r\n\r\nStars:  Daniel Radcliffe, Rupert Grint, Emma Watson, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Harry Potter and the Chamber of Secrets (2002)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Harry Potter and the Chamber of Secrets (2002)/Harry.Potter.and.the.Chamber.of.Secrets.2002.1080p.BrRip.x264.YIFY.mp4'),
(162, 'Harry Potter and the Deathly Hallows Part 1 (2010)', 'Movies', '../../Movies/Harry Potter and the Deathly Hallows Part 1 (2010)', 'Hindi', 'Summary : As Harry, Ron, and Hermione race against time and evil to destroy the Horcruxes, they uncover the existence of the three most powerful objects in the wizarding world: the Deathly Hallows. \r\n\r\nIMDB Rating : 7.7/10\r\n\r\nDirector:  David Yates\r\n\r\nWriters:  Steve Kloves, J.K. Rowling\r\n\r\nStars:  Daniel Radcliffe, Emma Watson, Rupert Grint, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Harry Potter and the Deathly Hallows Part 1 (2010)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Harry Potter and the Deathly Hallows Part 1 (2010)/Harry.Potter.and.the.Deathly.Hallows.Part.1.2010.1080p.BrRip.x264.YIFY.mp4'),
(163, 'Harry Potter and the Order of the Phoenix (2007)', 'Movies', '../../Movies/Harry Potter and the Order of the Phoenix (2007)', 'Hindi', 'Summary : With their warning about Lord Voldemort\'s return scoffed at, Harry and Dumbledore are targeted by the Wizard authorities as an authoritarian bureaucrat slowly seizes power at Hogwarts. \r\n\r\nIMDB Rating : 7.5/10\r\n\r\nDirector:  David Yates\r\n\r\nWriters:  Michael Goldenberg, J.K. Rowling\r\n\r\nStars:  Daniel Radcliffe, Emma Watson, Rupert Grint, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Harry Potter and the Order of the Phoenix (2007)_album_art.jpg', ''),
(164, 'The Notebook (2004)', 'Movies', '../../Movies/The Notebook (2004)', 'Hindi', 'Summary : A poor yet passionate young man falls in love with a rich young woman, giving her a sense of freedom, but they are soon separated because of their social differences. \r\n\r\nIMDB Rating : 7.8/10\r\n\r\nDirector:  Nick Cassavetes\r\n\r\nWriters:  Jeremy Leven, Jan Sardi, etc.\r\n\r\nStars:  Gena Rowlands, James Garner, Rachel McAdams, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Notebook (2004)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Notebook (2004)/The.Notebook.2004.1080p.BluRay.x264.YIFY.mp4'),
(165, 'Valerian and the City of a Thousand Planets (2017)', 'Movies', '../../Movies/Valerian and the City of a Thousand Planets (2017)', 'Hindi', 'Summary : A dark force threatens Alpha, a vast metropolis and home to species from a thousand planets. Special operatives Valerian and Laureline must race to identify the marauding menace and safeguard not just Alpha, but the future of the universe. \r\n\r\nIMDB Rating : 6.5/10\r\n\r\nDirector:  Luc Besson\r\n\r\nWriters:  Pierre Christin, Jean-Claude Mézières, etc.\r\n\r\nStars:  Dane DeHaan, Cara Delevingne, Clive Owen, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Valerian and the City of a Thousand Planets (2017)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Valerian and the City of a Thousand Planets (2017)/Valerian.And.The.City.Of.A.Thousand.Planets.2017.720p.BluRay.x264-[YTS.AG].mp4'),
(166, 'Harold  Kumar Go to White Castle (2004)', 'Movies', '../../Movies/Harold  Kumar Go to White Castle (2004)', 'Hindi', 'Summary : A Korean-American office worker and his Indian-American stoner friend embark on a quest to satisfy their desire for White Castle burgers. \r\n\r\nIMDB Rating : 7.1/10\r\n\r\nDirector:  Danny Leiner\r\n\r\nWriters:  Jon Hurwitz, Hayden Schlossberg\r\n\r\nStars:  John Cho, Kal Penn, Ethan Embry, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Harold  Kumar Go to White Castle (2004)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Harold  Kumar Go to White Castle (2004)/Harold.and.Kumar.Go.To.White.Castle.2004.UNRATED.BrRip.x264.YIFY.mp4'),
(167, 'The Wolf of Wall Street (2013)', 'Movies', '../../Movies/The Wolf of Wall Street (2013)', 'Hindi', 'Summary : Based on the true story of , from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government. \r\n\r\nIMDB Rating : 8.2/10\r\n\r\nDirector:  Martin Scorsese\r\n\r\nWriters:  Terence Winter, Jordan Belfort\r\n\r\nStars:  Leonardo DiCaprio, Jonah Hill, Margot Robbie, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Wolf of Wall Street (2013)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Wolf of Wall Street (2013)/The.Wolf.of.Wall.Street.2013.1080p.BluRay.x264.YIFY.mp4'),
(168, 'A Very Harold  Kumar Christmas (2011)', 'Movies', '../../Movies/A Very Harold  Kumar Christmas (2011)', 'Hindi', 'Summary : Six years after their Guantanamo Bay adventure, stoner buds Harold Lee and Kumar Patel cause a holiday fracas by inadvertently burning down Harold\'s father-in-law\'s prize Christmas tree. \r\n\r\nIMDB Rating : 6.3/10\r\n\r\nDirector:  Todd Strauss-Schulson\r\n\r\nWriters:  Jon Hurwitz, Hayden Schlossberg, etc.\r\n\r\nStars:  Kal Penn, John Cho, Neil Patrick Harris, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/A Very Harold  Kumar Christmas (2011)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/A Very Harold  Kumar Christmas (2011)/A.Very.Harold.Kumar.Christmas.2011.BrRip.x264.YIFY.mp4'),
(169, 'A Christmas Prince The Royal Wedding (2018)', 'Movies', '../../Movies/A Christmas Prince The Royal Wedding (2018)', 'Hindi', 'Summary : A year after helping Richard get to the throne, Amber is about to become his wife. But is she really made to be queen? \r\n\r\nIMDB Rating : 5.3/10\r\n\r\nDirector:  John Schultz\r\n\r\nWriters:  Nate Atkins, Karen Schaler\r\n\r\nStars:  Rose McIver, Ben Lamb, Alice Krige, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/A Christmas Prince The Royal Wedding (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/A Christmas Prince The Royal Wedding (2018)/A.Christmas.Prince.The.Royal.Wedding.2018.WEB-DL.x264-iKA[EtHD].mkv'),
(170, 'About Time (2013)', 'Movies', '../../Movies/About Time (2013)', 'Hindi', 'Summary : At the age of 21, Tim discovers he can travel in time and change what happens and has happened in his own life. His decision to make his world a better place by getting a girlfriend turns out not to be as easy as you might think. \r\n\r\nIMDB Rating : 7.8/10\r\n\r\nDirector:  Richard Curtis\r\n\r\nWriter:  Richard Curtis\r\n\r\nStars:  Domhnall Gleeson, Rachel McAdams, Bill Nighy, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/About Time (2013)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/About Time (2013)/About.Time.2013.720p.BluRay.x264.YIFY.mp4'),
(171, 'Andhadhun (2018)', 'Movies', '../../Movies/Andhadhun (2018)', 'Hindi', 'Summary : A series of mysterious events change the life of a blind pianist, who must now report a crime that he should technically know nothing of. \r\n\r\nIMDB Rating : 8.3/10\r\n\r\nDirector:  Sriram Raghavan\r\n\r\nWriters:  Arijit Biswas, Yogesh Chandekar, etc.\r\n\r\nStars:  Ayushmann Khurrana, Tabu, Radhika Apte, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Andhadhun (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Andhadhun (2018)/Andhadhun 2018 Hindi 1080p WEB-DL DD 5.1 x264 ESub [MW].mkv'),
(172, 'Beauty and the Beast (2017)', 'Movies', '../../Movies/Beauty and the Beast (2017)', 'Hindi', 'Summary : A selfish Prince is cursed to become a monster for the rest of his life, unless he learns to fall in love with a beautiful young woman he keeps prisoner. \r\n\r\nIMDB Rating : 7.1/10\r\n\r\nDirector:  Bill Condon\r\n\r\nWriters:  Stephen Chbosky, Evan Spiliotopoulos, etc.\r\n\r\nStars:  Emma Watson, Dan Stevens, Luke Evans, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Beauty and the Beast (2017)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Beauty and the Beast (2017)/Beauty.and.the.Beast.2017.1080p.BRRip.6CH.MkvCage.mkv'),
(173, 'Bird Box (2018)', 'Movies', '../../Movies/Bird Box (2018)', 'Hindi', 'Summary : Five years after an ominous unseen presence drives most of society to suicide, a mother and her two children make a desperate bid to reach safety. \r\n\r\nIMDB Rating : 6.6/10\r\n\r\nDirector:  Susanne Bier\r\n\r\nWriters:  Eric Heisserer, Josh Malerman\r\n\r\nStars:  Sandra Bullock, Trevante Rhodes, John Malkovich, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Bird Box (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Bird Box (2018)/Bird.Box.2018.1080p.WEBRip.x264-[YTS.AM].mp4');
INSERT INTO `file_system` (`id`, `name`, `category`, `path`, `language`, `des`, `album_art_path`, `url`) VALUES
(174, 'Catch Me If You Can (2002)', 'Movies', '../../Movies/Catch Me If You Can (2002)', 'Hindi', 'Summary : Barely 21 yet, Frank is a skilled forger who has passed as a doctor, lawyer and pilot. FBI agent Carl becomes obsessed with tracking down the con man, who only revels in the pursuit. \r\n\r\nIMDB Rating : 8.1/10\r\n\r\nDirector:  Steven Spielberg\r\n\r\nWriters:  Jeff Nathanson, Frank Abagnale Jr., etc.\r\n\r\nStars:  Leonardo DiCaprio, Tom Hanks, Christopher Walken, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Catch Me If You Can (2002)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Catch Me If You Can (2002)/Catch.Me.If.You.Can.2002.1080p.BluRay.x264.VPPV.mp4'),
(175, 'Chef (2017)', 'Movies', '../../Movies/Chef (2017)', 'Hindi', 'Summary : Chef Roshan Kalra sets out to find the true source of happiness and reignite his passion for food while being more present in his son\'s life. \r\n\r\nIMDB Rating : 5.7/10\r\n\r\nDirector:  Raja Menon\r\n\r\nWriters:  Jon Favreau, Ritesh Shah, etc.\r\n\r\nStars:  Saif Ali Khan, Padmapriya, Svar Kamble, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Chef (2017)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Chef (2017)/www.hon3yhd.to.mkv'),
(176, 'English Vinglish (2012)', 'Movies', '../../Movies/English Vinglish (2012)', 'Hindi', 'Summary : A quiet, sweet tempered housewife endures small slights from her well-educated husband and daughter every day because of her inability to speak and understand English. \r\n\r\nIMDB Rating : 7.8/10\r\n\r\nDirector:  Gauri Shinde\r\n\r\nWriter:  Gauri Shinde\r\n\r\nStars:  Sridevi, Adil Hussain, Mehdi Nebbou, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/English Vinglish (2012)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/English Vinglish (2012)/English Vinglish 2012 Hindi BRRip 720p x264 AAC 5.1...Hon3y.mp4'),
(177, 'Fifty Shades Freed (2018)', 'Movies', '../../Movies/Fifty Shades Freed (2018)', 'Hindi', 'Summary : Anastasia and Christian get married, but Jack Hyde continues to threaten their relationship. \r\n\r\nIMDB Rating : 4.5/10\r\n\r\nDirector:  James Foley\r\n\r\nWriters:  Niall Leonard, E.L. James\r\n\r\nStars:  Dakota Johnson, Jamie Dornan, Eric Johnson, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Fifty Shades Freed (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Fifty Shades Freed (2018)/Fifty.Shades.Freed.2018.1080p.BluRay.x264-[YTS.AM].mp4'),
(178, 'First Man (2018)', 'Movies', '../../Movies/First Man (2018)', 'Hindi', 'Summary : A look at the life of the astronaut, , and the legendary space mission that led him to become the first man to walk on the Moon on July 20, 1969. \r\n\r\nIMDB Rating : 7.3/10\r\n\r\nDirector:  Damien Chazelle\r\n\r\nWriters:  Josh Singer, James R. Hansen\r\n\r\nStars:  Ryan Gosling, Claire Foy, Jason Clarke, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/First Man (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/First Man (2018)/First.Man.2018.1080p.WEBRip.x264-[YTS.AM].mp4'),
(179, 'Harry Potter and the Deathly Hallows Part 2 (2011)', 'Movies', '../../Movies/Harry Potter and the Deathly Hallows Part 2 (2011)', 'Hindi', 'Summary : Harry, Ron, and Hermione search for Voldemort\'s remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts. \r\n\r\nIMDB Rating : 8.1/10\r\n\r\nDirector:  David Yates\r\n\r\nWriters:  Steve Kloves, J.K. Rowling\r\n\r\nStars:  Daniel Radcliffe, Emma Watson, Rupert Grint, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Harry Potter and the Deathly Hallows Part 2 (2011)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Harry Potter and the Deathly Hallows Part 2 (2011)/Harry Potter And The Deathly Hallows Part 2 2011 1080p Bluray x264 (DTS) - HarryLala.mkv'),
(180, 'Harry Potter and the Goblet of Fire (2005)', 'Movies', '../../Movies/Harry Potter and the Goblet of Fire (2005)', 'Hindi', 'Summary : Harry Potter finds himself competing in a hazardous tournament between rival schools of magic, but he is distracted by recurring nightmares. \r\n\r\nIMDB Rating : 7.7/10\r\n\r\nDirector:  Mike Newell\r\n\r\nWriters:  Steve Kloves, J.K. Rowling\r\n\r\nStars:  Daniel Radcliffe, Emma Watson, Rupert Grint, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Harry Potter and the Goblet of Fire (2005)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Harry Potter and the Goblet of Fire (2005)/Harry.Potter.and.the.Goblet.of.Fire.2005.1080p.BrRip.x264.YIFY.mp4'),
(181, 'Harry Potter and the Half-Blood Prince (2009)', 'Movies', '../../Movies/Harry Potter and the Half-Blood Prince (2009)', 'Hindi', 'Summary : As Harry Potter begins his sixth year at Hogwarts, he discovers an old book marked as \'the property of the Half-Blood Prince\' and begins to learn more about Lord Voldemort\'s dark past. \r\n\r\nIMDB Rating : 7.6/10\r\n\r\nDirector:  David Yates\r\n\r\nWriters:  Steve Kloves, J.K. Rowling\r\n\r\nStars:  Daniel Radcliffe, Emma Watson, Rupert Grint, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Harry Potter and the Half-Blood Prince (2009)_album_art.jpg', ''),
(182, 'Midnight in Paris (2011)', 'Movies', '../../Movies/Midnight in Paris (2011)', 'Hindi', 'Summary : While on a trip to Paris with his fiancée\'s family, a nostalgic screenwriter finds himself mysteriously going back to the 1920s every day at midnight. \r\n\r\nIMDB Rating : 7.7/10\r\n\r\nDirector:  Woody Allen\r\n\r\nWriter:  Woody Allen\r\n\r\nStars:  Owen Wilson, Rachel McAdams, Kathy Bates, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Midnight in Paris (2011)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Midnight in Paris (2011)/Midnight.in.Paris.2011.720p.BrRip.x264.mp4'),
(183, 'Minions (2015)', 'Movies', '../../Movies/Minions (2015)', 'Hindi', 'Summary : Minions Stuart, Kevin, and Bob are recruited by Scarlet Overkill, a supervillain who, alongside her inventor husband Herb, hatches a plot to take over the world. \r\n\r\nIMDB Rating : 6.4/10\r\n\r\nDirectors:  Kyle Balda, Pierre Coffin\r\n\r\nWriter:  Brian Lynch\r\n\r\nStars:  Sandra Bullock, Jon Hamm, Michael Keaton, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Minions (2015)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Minions (2015)/Minions 2015 1080p BluRay x264 AC3-JYK.mkv'),
(184, 'Mission Impossible - Fallout (2018)', 'Movies', '../../Movies/Mission Impossible - Fallout (2018)', 'Hindi', 'Summary : Ethan Hunt and his IMF team, along with some familiar allies, race against time after a mission gone wrong. \r\n\r\nIMDB Rating : 7.7/10\r\n\r\nDirector:  Christopher McQuarrie\r\n\r\nWriters:  Bruce Geller, Christopher McQuarrie\r\n\r\nStars:  Tom Cruise, Henry Cavill, Ving Rhames, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Mission Impossible - Fallout (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Mission Impossible - Fallout (2018)/Mission.Impossible.-.Fallout.2018.720p.WEBRip.x264-[YTS.AM].mp4'),
(185, 'Mr. Peabody  Sherman (2014)', 'Movies', '../../Movies/Mr. Peabody  Sherman (2014)', 'Hindi', 'Summary : The time-travelling adventures of an advanced canine and his adopted son, as they endeavor to fix a time rift they created. \r\n\r\nIMDB Rating : 6.8/10\r\n\r\nDirector:  Rob Minkoff\r\n\r\nWriters:  Jay Ward, Craig Wright, etc.\r\n\r\nStars:  Ty Burrell, Max Charles, Stephen Colbert, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Mr. Peabody  Sherman (2014)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Mr. Peabody  Sherman (2014)/Mr..Peabody.and.Sherman.2014.1080p.BluRay.x264.YIFY.mp4'),
(186, 'Next Gen (2018)', 'Movies', '../../Movies/Next Gen (2018)', 'Hindi', 'Summary : A friendship with a top-secret robot turns a lonely girl\'s life into a thrilling adventure as they take on bullies, evil bots and a scheming madman. \r\n\r\nIMDB Rating : 6.6/10\r\n\r\nDirectors:  Kevin R. Adams, Joe Ksander, etc.\r\n\r\nWriters:  Kevin R. Adams, Joe Ksander, etc.\r\n\r\nStars:  John Krasinski, Charlyne Yi, Jason Sudeikis, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Next Gen (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Next Gen (2018)/Next.Gen.2018.720p.WEBRip.x264-[YTS.AM].mp4'),
(187, 'Pad Man (2018)', 'Movies', '../../Movies/Pad Man (2018)', 'Hindi', 'Summary : Upon realizing the extent to which women are affected by their menses, a man sets out to create a sanitary pad machine and to provide inexpensive sanitary pads to the women of rural India. \r\n\r\nIMDB Rating : 7.9/10\r\n\r\nDirector:  R. Balki\r\n\r\nWriters:  R. Balki, Swanand Kirkire\r\n\r\nStars:  Akshay Kumar, Radhika Apte, Sonam Kapoor, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Pad Man (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Pad Man (2018)/Padman 2018 720p PreDVD-Rip x264 MP3 Mafiaking M2Tv.mkv'),
(188, 'Ralph Breaks the Internet (2018)', 'Movies', '../../Movies/Ralph Breaks the Internet (2018)', 'Hindi', 'Summary : Six years after the events of \'Wreck-It Ralph,\' Ralph and Vanellope, now friends, discover a wi-fi router in their arcade, leading them into a new adventure. \r\n\r\nIMDB Rating : 7.0/10\r\n\r\nDirectors:  Phil Johnston, Rich Moore\r\n\r\nWriters:  Phil Johnston, Pamela Ribon, etc.\r\n\r\nStars:  John C. Reilly, Sarah Silverman, Gal Gadot, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Ralph Breaks the Internet (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Ralph Breaks the Internet (2018)/Ralph Breaks the Internet.2018.DVDSCR.XviD.AC3-EVO.avi'),
(189, 'Slumdog Millionaire (2008)', 'Movies', '../../Movies/Slumdog Millionaire (2008)', 'Hindi', 'Summary : A Mumbai teenager reflects on his life after being accused of cheating on the Indian version of \'Who Wants to be a Millionaire?\'. \r\n\r\nIMDB Rating : 8.0/10\r\n\r\nDirectors:  Danny Boyle, Loveleen Tandan\r\n\r\nWriters:  Simon Beaufoy, Vikas Swarup\r\n\r\nStars:  Dev Patel, Freida Pinto, Saurabh Shukla, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Slumdog Millionaire (2008)_album_art.jpg', ''),
(190, 'The Day After Tomorrow (2004)', 'Movies', '../../Movies/The Day After Tomorrow (2004)', 'Hindi', 'Summary : Jack Hall, paleoclimatologist, must make a daring trek from Washington, D.C. to New York City to reach his son, trapped in the cross-hairs of a sudden international storm which plunges the planet into a new Ice Age. \r\n\r\nIMDB Rating : 6.4/10\r\n\r\nDirector:  Roland Emmerich\r\n\r\nWriters:  Roland Emmerich, Roland Emmerich, etc.\r\n\r\nStars:  Dennis Quaid, Jake Gyllenhaal, Emmy Rossum, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Day After Tomorrow (2004)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Day After Tomorrow (2004)/The Day After Tomorrow (2004) 1080p.mp4'),
(191, 'The Great Gatsby (2013)', 'Movies', '../../Movies/The Great Gatsby (2013)', 'Hindi', 'Summary : A writer and wall street trader, Nick, finds himself drawn to the past and lifestyle of his millionaire neighbor, Jay Gatsby. \r\n\r\nIMDB Rating : 7.2/10\r\n\r\nDirector:  Baz Luhrmann\r\n\r\nWriters:  Baz Luhrmann, Craig Pearce, etc.\r\n\r\nStars:  Leonardo DiCaprio, Carey Mulligan, Joel Edgerton, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Great Gatsby (2013)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Great Gatsby (2013)/The.Great.Gatsby.2013.720p.BluRay.x264.YIFY.mp4'),
(192, 'The Christmas Chronicles (2018)', 'Movies', '../../Movies/The Christmas Chronicles (2018)', 'Hindi', 'Summary : The story of sister and brother, Kate and Teddy Pierce, whose Christmas Eve plan to catch Santa Claus on camera turns into an unexpected journey that most kids could only dream about. \r\n\r\nIMDB Rating : 7.0/10\r\n\r\nDirector:  Clay Kaytis\r\n\r\nWriters:  Matt Lieberman, David Guggenheim, etc.\r\n\r\nStars:  Kurt Russell, Darby Camp, Judah Lewis, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Christmas Chronicles (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Christmas Chronicles (2018)/The.Christmas.Chronicles.2018.1080p.WEB-DL.x264 - ExYuSubs.mp4'),
(193, 'The Princess Switch (2018)', 'Movies', '../../Movies/The Princess Switch (2018)', 'Hindi', 'Summary : Competing in a Christmas baking competition in Belgravia, a Chicago baker bumps into the prince\'s fiancée--who looks just like her. They switch lives for two days. \r\n\r\nIMDB Rating : 6.0/10\r\n\r\nDirector:  Mike Rohl\r\n\r\nWriters:  Robin Bernheim, Megan Metzger\r\n\r\nStars:  Vanessa Hudgens, Sam Palladio, Nick Sagar, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The Princess Switch (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The Princess Switch (2018)/The.Princess.Switch.2018.720p.NF.WEB-DL.DD5.1.H264-CMRG[EtHD].mkv'),
(194, 'Van Wilder Freshman Year (Video 2009)', 'Movies', '../../Movies/Van Wilder Freshman Year (Video 2009)', 'Hindi', 'Summary : Van Wilder starts his freshman year at Coolidge College and embarks on an adventure to land the campus hottie and liberate his school from sexual oppression and party dysfunction. \r\n\r\nIMDB Rating : 5.3/10\r\n\r\nDirector:  Harvey Glazer\r\n\r\nWriters:  Brent Goldberg, David Wagner, etc.\r\n\r\nStars:  Jonathan Bennett, Kristin Cavallari, Kurt Fuller, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Van Wilder Freshman Year (Video 2009)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Van Wilder Freshman Year (Video 2009)/Van.Wilder.Freshman.Year.2009.720p.HDTV.x264.Feel-Free.mkv'),
(195, 'Van Wilder Party Liaison (2002)', 'Movies', '../../Movies/Van Wilder Party Liaison (2002)', 'Hindi', 'Summary : The most popular kid on campus meets a beautiful journalist who makes him realize that maybe he\'s afraid to graduate. \r\n\r\nIMDB Rating : 6.4/10\r\n\r\nDirector:  Walt Becker\r\n\r\nWriters:  Brent Goldberg, David Wagner\r\n\r\nStars:  Ryan Reynolds, Tara Reid, Tim Matheson, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Van Wilder Party Liaison (2002)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Van Wilder Party Liaison (2002)/Van.Wilder.UNRATED.2002.720p.BrRip.x264.YIFY.mp4'),
(196, 'Van Wilder 2 The Rise of Taj (2006)', 'Movies', '../../Movies/Van Wilder 2 The Rise of Taj (2006)', 'Hindi', 'Summary : Taj Mahal Badalandabad leaves Coolidge College behind for the halls of Camford University in England, where he looks to continue his education, and teach an uptight student how to make the most out of her academic career. \r\n\r\nIMDB Rating : 4.9/10\r\n\r\nDirector:  Mort Nathan\r\n\r\nWriters:  David Drew Gallagher, Brent Goldberg, etc.\r\n\r\nStars:  Kal Penn, Lauren Cohan, Daniel Percival, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Van Wilder 2 The Rise of Taj (2006)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Van Wilder 2 The Rise of Taj (2006)/Van.Wilder.2.The.Rise.Of.Taj.2006.DvDrip.x264-TehDowns.mkv'),
(197, 'Venom (2018)', 'Movies', '../../Movies/Venom (2018)', 'Hindi', 'Summary : A failed reporter is bonded to an alien entity, one of many symbiotes who have invaded Earth. But the being takes a liking to Earth and decides to protect it. \r\n\r\nIMDB Rating : 6.7/10\r\n\r\nDirector:  Ruben Fleischer\r\n\r\nWriters:  Jeff Pinkner, Scott Rosenberg, etc.\r\n\r\nStars:  Tom Hardy, Michelle Williams, Riz Ahmed, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Venom (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Venom (2018)/Venom.2018.1080p.WEBRip.x264-[YTS.AM].mp4'),
(198, 'When We First Met (2018)', 'Movies', '../../Movies/When We First Met (2018)', 'Hindi', 'Summary : Noah meets Avery at a Halloween party and falls in love but gets friend-zoned. 3 years later, she\'s engaged to someone else. Noah returns in a time machine to fix things. \r\n\r\nIMDB Rating : 6.4/10\r\n\r\nDirector:  Ari Sandel\r\n\r\nWriter:  John Whittington\r\n\r\nStars:  Adam Devine, Alexandra Daddario, Shelley Hennig, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/When We First Met (2018)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/When We First Met (2018)/When.We.First.Met.2018.720p.WEB.x264-METCON[EtHD].mkv'),
(199, 'Wonder (2017)', 'Movies', '../../Movies/Wonder (2017)', 'Hindi', 'Summary : Based on the New York Times bestseller, this movie tells the incredibly inspiring and heartwarming story of August Pullman, a boy with facial differences who enters the fifth grade, attending a mainstream elementary school for the first time. \r\n\r\nIMDB Rating : 8.0/10\r\n\r\nDirector:  Stephen Chbosky\r\n\r\nWriters:  Stephen Chbosky, Steve Conrad, etc.\r\n\r\nStars:  Jacob Tremblay, Owen Wilson, Izabela Vidovic, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Wonder (2017)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Wonder (2017)/Wonder 2017 1080p WEB-DL DD5 1 H264-CMRG.mkv'),
(200, 'Yeh Jawaani Hai Deewani (2013)', 'Movies', '../../Movies/Yeh Jawaani Hai Deewani (2013)', 'Hindi', 'Summary : Kabir and Naina bond during a trekking trip. Before Naina can express herself, Kabir leaves India to pursue his career. They meet again years later, but he still cherishes his dreams more than bonds. \r\n\r\nIMDB Rating : 7.1/10\r\n\r\nDirector:  Ayan Mukherjee\r\n\r\nWriters:  Hussain Dalal, Ayan Mukherjee\r\n\r\nStars:  Ranbir Kapoor, Deepika Padukone, Aditya Roy Kapoor, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Yeh Jawaani Hai Deewani (2013)_album_art.jpg', 'http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Yeh Jawaani Hai Deewani (2013)/Yeh jawani hai deewani.M0viesC0unter.mp4'),
(201, 'The Good Place Season 4 Complete 720p NF WEB-DL x264 [i_c]', 'TV_Shows', '../../TV_Shows/The Good Place Season 4 Complete 720p NF WEB-DL x264 [i_c]', 'Hindi', '', '', ''),
(202, 'Friends', 'TV_Shows', '../../TV_Shows/Friends', 'Hindi', '', '', ''),
(203, 'How i met your mother', 'TV_Shows', '../../TV_Shows/How i met your mother', 'Hindi', '', '', ''),
(204, 'Joey S01-S02 (2004-)', 'TV_Shows', '../../TV_Shows/Joey S01-S02 (2004-)', 'Hindi', '', '', ''),
(205, 'joey Season 2', 'TV_Shows', '../../TV_Shows/joey Season 2', 'Hindi', '', '', ''),
(206, 'Sacred Games 2019 S02 Hindi 720p NetFlix x264 AAC MSub - xRG', 'TV_Shows', '../../TV_Shows/Sacred Games 2019 S02 Hindi 720p NetFlix x264 AAC MSub - xRG', 'Hindi', '', '', ''),
(207, '13 Reasons Why (TV Series 2017–2020)', 'TV_Shows', '../../TV_Shows/13 Reasons Why (TV Series 2017–2020)', 'Hindi', 'Summary : Follows teenager Clay Jensen, in his quest to uncover the story behind his classmate and crush, Hannah, and her decision to end her life. \r\n\r\nIMDB Rating : 7.6/10\r\n\r\nCreator:  Brian Yorkey\r\n\r\nStars:  Dylan Minnette, Katherine Langford, Christian Navarro, etc.', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/13 Reasons Why (TV Series 2017–2020)_album_art.jpg', '');

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
('http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Avengers Age of Ultron (2015)/Avengers.Age.of.Ultron.2015.720p.BluRay.x264.YIFY.mp4', 1895420, 'admin', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Avengers Age of Ultron (2015)_album_art.jpg', 'Summary : When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it\'s up to Earth\'s mightiest heroes to stop the villainous Ultron from enacting his terrible plan. \r\n\r\nIMDB Rating : 7.3/10\r\n\r\nDirector:  Joss Whedon\r\n\r\nWriters:  Joss Whedon, Stan Lee, etc.\r\n\r\nStars:  Robert Downey Jr., Chris Evans, Mark Ruffalo, etc.', 8478827, 'user', 'Avengers Age of Ultron (2015)', 157),
('http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Chhichhore (2019)/Chhichhore 2019 Hindi 1080p WEBRip x264 AAC ESubs - LOKiHD - Telly.mkv', 554551, 'admin', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Chhichhore (2019)_album_art.jpg', 'Summary : A tragic incident forces Anirudh, a middle-aged man, to take a trip down memory lane and reminisce his college days along with his friends, who were labelled as losers. \r\n\r\nIMDB Rating : 8.2/10\r\n\r\nDirector:  Nitesh Tiwari\r\n\r\nWriters:  Piyush Gupta, Nikhil Mehrotra, etc.\r\n\r\nStars:  Sushant Singh Rajput, Shraddha Kapoor, Varun Sharma, etc.', 8607412, 'user', 'Chhichhore (2019)', 158),
('http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Mr. Peabody  Sherman (2014)/Mr..Peabody.and.Sherman.2014.1080p.BluRay.x264.YIFY.mp4', 1686664, 'admin', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Mr. Peabody  Sherman (2014)_album_art.jpg', 'Summary : The time-travelling adventures of an advanced canine and his adopted son, as they endeavor to fix a time rift they created. \r\n\r\nIMDB Rating : 6.8/10\r\n\r\nDirector:  Rob Minkoff\r\n\r\nWriters:  Jay Ward, Craig Wright, etc.\r\n\r\nStars:  Ty Burrell, Max Charles, Stephen Colbert, etc.', 5549546, 'user', 'Mr. Peabody  Sherman (2014)', 161),
('http://192.168.0.4/OTTServer/ModakFlix/../../Movies/The First Temptation of Christ (2019)/the.first.temptation.of.christ.2019.internal.1080p.web.x264-strife.mkv', 14966, 'admin', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/The First Temptation of Christ (2019)_album_art.jpg', 'Summary : Jesus, who\'s hitting the big 3-0, brings a surprise guest to meet the family. \r\n\r\nIMDB Rating : 4.6/10\r\n\r\nDirector:  Rodrigo Van Der Put\r\n\r\nWriters:  Fábio Porchat, Gustavo Martins\r\n\r\nStars:  Gregório Duvivier, Fábio Porchat, Antonio Tabet, etc.', 2780960, 'user', 'The First Temptation of Christ (2019)', 163),
('http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Thor The Dark World (2013)/Thor.The.Dark.World.2013.1080p.BluRay.x264.YIFY.mp4', 1821149, 'admin', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Thor The Dark World (2013)_album_art.jpg', 'Summary : When the Dark Elves attempt to plunge the universe into darkness, Thor must embark on a perilous and personal journey that will reunite him with doctor Jane Foster. \r\n\r\nIMDB Rating : 6.9/10\r\n\r\nDirector:  Alan Taylor\r\n\r\nWriters:  Christopher L. Yost, Christopher Markus, etc.\r\n\r\nStars:  Chris Hemsworth, Natalie Portman, Tom Hiddleston, etc.', 6723306, 'user', 'Thor The Dark World (2013)', 165),
('http://192.168.0.4/OTTServer/ModakFlix/../../Movies/A Very Harold  Kumar Christmas (2011)/A.Very.Harold.Kumar.Christmas.2011.BrRip.x264.YIFY.mp4', 1290786, 'Sourav Modak', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/A Very Harold  Kumar Christmas (2011)_album_art.jpg', 'Summary : Six years after their Guantanamo Bay adventure, stoner buds Harold Lee and Kumar Patel cause a holiday fracas by inadvertently burning down Harold\'s father-in-law\'s prize Christmas tree. \r\n\r\nIMDB Rating : 6.3/10\r\n\r\nDirector:  Todd Strauss-Schulson\r\n\r\nWriters:  Jon Hurwitz, Hayden Schlossberg, etc.\r\n\r\nStars:  Kal Penn, John Cho, Neil Patrick Harris, etc.', 5380523, 'user', 'A Very Harold  Kumar Christmas (2011)', 171),
('http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Despicable Me (2010)/Despicable.Me.2010.1080p.BluRay.x264.YIFY.mp4', 55925, 'Sourav Modak', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Despicable Me (2010)_album_art.jpg', 'Summary : When a criminal mastermind uses a trio of orphan girls as pawns for a grand scheme, he finds their love is profoundly changing him for the better. \r\n\r\nIMDB Rating : 7.6/10\r\n\r\nDirectors:  Pierre Coffin, Chris Renaud\r\n\r\nWriters:  Cinco Paul, Ken Daurio, etc.\r\n\r\nStars:  Steve Carell, Jason Segel, Russell Brand, etc.', 5681621, 'user', 'Despicable Me (2010)', 172),
('http://192.168.0.4/OTTServer/ModakFlix/../../Movies/Minions (2015)/Minions 2015 1080p BluRay x264 AC3-JYK.mkv', 4714633, 'Sourav Modak', 'http://192.168.0.4/OTTServer/ModakFlix/cached_images/Minions (2015)_album_art.jpg', 'Summary : Minions Stuart, Kevin, and Bob are recruited by Scarlet Overkill, a supervillain who, alongside her inventor husband Herb, hatches a plot to take over the world. \r\n\r\nIMDB Rating : 6.4/10\r\n\r\nDirectors:  Kyle Balda, Pierre Coffin\r\n\r\nWriter:  Brian Lynch\r\n\r\nStars:  Sandra Bullock, Jon Hamm, Michael Keaton, etc.', 5458016, 'user', 'Minions (2015)', 176);

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
('Sourav', 'Modak', 'souravmodak', 80),
('Anurav', 'Modak', 'anuravmodak', 81),
('Shyamal', 'Modak', 'shyamalmodak', 82),
('Dolly', 'Modak', 'dollymodak', 83);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `shows_watched`
--
ALTER TABLE `shows_watched`
  MODIFY `serial` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `Serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'modak_flix', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"file_system\",\"shows_watched\",\"user_info\"],\"table_structure[]\":[\"file_system\",\"shows_watched\",\"user_info\"],\"table_data[]\":[\"file_system\",\"shows_watched\",\"user_info\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"modak_flix\",\"table\":\"user_info\"},{\"db\":\"modak_flix\",\"table\":\"shows_watched\"},{\"db\":\"modak_flix\",\"table\":\"file_system\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'modak_flix', 'file_system', '[]', '2021-01-26 16:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-02-07 14:23:40', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
