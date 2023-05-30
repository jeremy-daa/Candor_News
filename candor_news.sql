-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 06:57 PM
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
-- Database: `candor_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(35) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'admin@admin.com', '$2y$10$fhAVk0okG6hWygrec/pkz.Gli1/2qg8rrLJxZCqVm3WumHlr7Tt6u');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `article_title` varchar(250) NOT NULL,
  `article_image` varchar(200) NOT NULL,
  `article_description` text NOT NULL,
  `article_date` date NOT NULL,
  `article_trend` tinyint(4) NOT NULL,
  `article_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `category_id`, `author_id`, `article_title`, `article_image`, `article_description`, `article_date`, `article_trend`, `article_active`) VALUES
(40, 3, 6, 'The Rise of E-Commerce: Transforming the Way We Shop', 'article-3-1685446639.jpg', 'Explore the exponential growth of e-commerce and its impact on traditional retail. Discover how online shopping has revolutionized the business landscape, changing consumer behavior and presenting new opportunities and challenges for businesses worldwide.', '2023-05-30', 1, 1),
(41, 5, 6, 'Behind the Scenes: Unveiling the Magic of Movie Special Effects', 'article-5-1685446685.jpg', 'Take a peek behind the curtain and delve into the fascinating world of movie special effects. Learn how Hollywood creates breathtaking visuals, mind-bending illusions, and stunning action sequences that bring movies to life, blending artistry and cutting-edge technology.', '2023-05-30', 0, 1),
(42, 1, 6, 'Global Climate Summit: A Crucial Call to Action', 'article-1-1685446762.jpg', 'Dive into the pressing issue of climate change as world leaders gather for a global climate summit. Explore the discussions, commitments, and strategies aimed at mitigating the effects of climate change, fostering international cooperation, and ensuring a sustainable future for our planet.', '2023-05-30', 1, 1),
(43, 4, 6, 'The Rise of Esports: When Virtual Worlds Become Spectator Sports', 'article-4-1685446823.jpg', 'Discover the explosive growth of esports and its emergence as a major sporting phenomenon. Explore the competitive gaming landscape, the rise of professional gamers, massive esports events, and the global fanbase that has turned video games into a thrilling spectator experience.', '2023-05-30', 1, 1),
(44, 2, 6, 'Artificial Intelligence in Healthcare: Revolutionizing Patient Care', 'article-2-1685446886.jpg', 'Uncover how artificial intelligence is transforming the healthcare industry. Learn about AI-powered diagnostic tools, personalized medicine, virtual assistants, and the potential to revolutionize patient care by improving diagnosis accuracy, optimizing treatments, and enhancing overall healthcare delivery.', '2023-05-30', 0, 1),
(45, 3, 6, 'The Gig Economy: Redefining Work in the Digital Age', 'article-3-1685446939.jfif', 'Explore the rise of the gig economy and its impact on traditional employment models. Discover how freelancing, remote work, and platform-based services are reshaping the way people work and how businesses adapt to this evolving landscape.', '2023-05-30', 1, 1),
(46, 5, 6, 'Exploring the World of Virtual Reality: A New Frontier in Entertainment', 'article-5-1685447025.jpg', 'Step into the immersive realm of virtual reality and witness its potential to revolutionize entertainment experiences. Delve into the cutting-edge technology behind VR, its applications in gaming, storytelling, and beyond, and how it\'s redefining the boundaries of imagination.', '2023-05-30', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(35) NOT NULL,
  `author_password` varchar(100) NOT NULL,
  `author_email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`, `author_password`, `author_email`) VALUES
(5, 'Demo', '$2y$10$NG4YcWivUMuiZSuRBTAvN.scIicurY0lsl7xTOIW61ACAt/1cJMsS', 'demo@demo.com'),
(6, 'Author', '$2y$10$JBr/HMRegWVHNpJ/L.UFFOB.KhWa1h5KaA0BocTME1jkbTtkuP2dW', 'author@gmail.com'),
(585, 'lkjhdf', 'test', 'abc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `bookmark_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`bookmark_id`, `user_id`, `article_id`) VALUES
(0, 8, 40),
(0, 8, 42);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(45) NOT NULL,
  `category_color` varchar(35) NOT NULL,
  `category_image` varchar(250) NOT NULL,
  `category_description` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_color`, `category_image`, `category_description`) VALUES
(1, 'Politics', 'tag-brown', 'Politics1685444708.jpg', 'Get insights into political developments, government policies, elections, and international relations, covering a wide range of topics such as governance, diplomacy, legislation, and public affairs.'),
(2, 'Technology', 'tag-orange', 'Technology1616565177.jpg', 'World is changing rapidly because of the development of technology and boom in the need for technology, because nothing can be done without technology in today\'s world. So be up to date on the latest developments.'),
(3, 'Business', 'tag-pink', 'Business1620564308.jpg', 'Stay updated on the latest financial and economic news, including company updates, market trends, investments, and business strategies.'),
(4, 'Sports', 'tag-purple', 'Sports1685445084.jpg', 'Stay in the know about the thrilling world of sports, including coverage of major tournaments, game highlights, player transfers, team performances, and exciting sports-related news and stories.'),
(5, 'Entertainment', 'tag-orange', 'Entertainment1685444686.jpg', 'Discover the latest buzz from the world of entertainment, including celebrity news, movie releases, music updates, TV shows, and exciting events in the entertainment industry.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(35) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(7, 'Demo', 'demo@demo.com', '$2y$10$NG4YcWivUMuiZSuRBTAvN.scIicurY0lsl7xTOIW61ACAt/1cJMsS'),
(8, 'Reader', 'reader@gmail.com', '$2y$10$Jp4Ovrl96HvBSSiTN2i.NOkSJg4gIxtrTkjT.Nf2jka4NxQQWNoH.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
