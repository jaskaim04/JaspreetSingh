-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2024 at 10:08 AM
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
-- Database: `JaspreetSingh`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_url` text DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `image_url`, `content`) VALUES
(1, 'Mountain Bike', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQISjryA1VKq0kx-WDAWS7-LliabPDbos9K6A&s', 'Mountain bikes are designed for off-road cycling, typically featuring sturdy frames, wide tires with deep treads, and suspension systems to absorb impact on rough terrain.'),
(2, 'Road Bike', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL6MjtbwaVBnkL3ah9wU4hC72j_oYMR7FSTQ&s', 'Road bikes are built for speed and efficiency on paved roads, characterized by lightweight frames, narrow tires, and drop handlebars for aerodynamic riding positions.'),
(3, 'Cruiser Bike', 'data:image/jpeg;base64,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', 'Cruiser bikes are known for their classic style and comfortable riding position, with wide handlebars, balloon tires, and simple single-speed or multi-speed drivetrains. They are ideal for relaxed leisurely rides.');

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `header_background_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `header_background_image`) VALUES
(1, 'https://th.bing.com/th/id/R.3a9f0210ff7d1e83039ff237c81bacae?rik=asArcL6qvWfZfA&amp;riu=http%3a%2f%2fs1.picswalls.com%2fwallpapers%2f2016%2f03%2f29%2fbeautiful-nature-high-definition_042323787_304.jpg&amp;ehk=8tO7UxFL%2bC03x6vfc2O9EhdUCe4fl6tC7UGUdlnpdX4%3d&amp;risl=&amp;pid=ImgRaw&amp;r=0');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `submission_date`) VALUES
(1, 'Yusuf', 'yusuf@gmail.com', 'This is a feedback', '2024-02-13 02:40:15'),
(2, 'test', 'test@gmail.com', 'this is a test message', '2024-02-13 03:56:38'),
(3, 'sawdfeghjklo;p', 'asdfgh@gfhjbk.com', 'fchvgjknm', '2024-03-22 16:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `our_story`
--

CREATE TABLE `our_story` (
  `id` int(11) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `our_story`
--

INSERT INTO `our_story` (`id`, `content`) VALUES
(1, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aspernatur nisi qui ipsa nesciunt, non ipsam impedit magni possimus earum ab, praesentium molestias. Tenetur iusto a culpa corporis explicabo quia consequatur blanditiis ducimus. Excepturi, optio debitis minima nam odit veritatis numquam a, possimus recusandae cumque magnam modi');

-- --------------------------------------------------------

--
-- Table structure for table `our_team`
--

CREATE TABLE `our_team` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `our_team`
--

INSERT INTO `our_team` (`id`, `name`, `position`) VALUES
(1, 'Yusuf', 'Founder'),
(2, 'John', 'Content Writer'),
(3, 'Cindy', 'Content Moderator');

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `video_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutorials`
--

INSERT INTO `tutorials` (`id`, `title`, `description`, `video_url`) VALUES
(1, 'How To Build A Website in 2026', 'Description', '<iframe width=\"1007\" height=\"566\" src=\"https://www.youtube.com/embed/acBJsjCqgtM\" title=\"How To Build A Website in 2024\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(2, 'How to Make a Website in 10 mins - Simple & Easy', 'Description 2', '<iframe width=\"1007\" height=\"566\" src=\"https://www.youtube.com/embed/YWA-xbsJrVg\" title=\"How to Make a Website in 10 mins - Simple &amp; Easy\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(4, 'This is a demo title', 'This is a demo description', '<iframe width=\"1007\" height=\"566\" src=\"https://www.youtube.com/embed/HSq5wntbkck\" title=\"How to Make an App [in 2023]\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(8, 'title edit', 'hello', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_story`
--
ALTER TABLE `our_story`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_team`
--
ALTER TABLE `our_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `our_story`
--
ALTER TABLE `our_story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `our_team`
--
ALTER TABLE `our_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
