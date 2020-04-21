-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 08:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_page_post`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `slno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`slno`, `name`, `phone`, `email`, `msg`, `date`) VALUES
(1, 'first_post', '123456789', 'first@gmail.com', 'first_post', '2020-04-15 01:10:04'),
(2, 'ajit ka', '123456876', 'kajit@gmail.com', 'hello ajit how are', NULL),
(3, 'aman', '9999999999', 'aman@gmail.com', 'hi bro how are you', NULL),
(4, 'aman', '9999999999', 'aman@gmail.com', 'hi bro how are you', '2020-04-15 12:32:55'),
(5, 'manish', '3456709888', 'manish@gmail.com', 'kya party', '2020-04-15 12:33:16'),
(6, 'baje', '4665777555', 'baje@gmail.com', 'kya maharaj', '2020-04-15 15:19:02'),
(7, 'aman', '12356778999', 'aman@gmail.com', 'hello aman', '2020-04-15 15:22:14'),
(8, 'aman', '3467890876', 'aman@gmail.com', 'hello aman', '2020-04-15 15:34:54'),
(9, 'mohan', '12356778999', 'mohan@gmail', 'helllo kon ham bol rahe hai', '2020-04-15 19:31:29'),
(10, 'mohan', '4665777555', 'manish@gmail.com', 'hello kon', '2020-04-21 13:55:45'),
(11, 'mohan', '4665777555', 'manish@gmail.com', 'hello kon', '2020-04-21 13:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `slno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tag_line` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`slno`, `title`, `tag_line`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'about space technology by mohit kumar sinha', 'my first post', 'first-post', 'Space technology is technology developed by space science or the aerospace industry for use in spaceflight, satellites, or space exploration. Space technology includes spacecraft, satellites, space stations, and support infrastructure, equipment, and procedures. Space is such a novel environment that attempting to work in it requires new tools and techniques. Many common everyday services such as weather forecasting, remote sensing, GPS systems, satellite television, and some long-distance communications systems critically rely on space infrastructure. Of the sciences, astronomy and Earth science benefit from space technology. New technologies originating with or accelerated by space-related endeavors are often subsequently exploited in other economic activities.', 'post-bg.jpg', '2020-04-17 17:19:18'),
(2, 'This is second post', 'let\'s read second post', 'second-post', 'This document describes the syntax and semantics of the template engine and will be most useful as reference to those creating Jinja templates. As the template engine is very flexible, the configuration from the application can be slightly different from the code presented here in terms of delimiters and behavior of undefined values.', 'about-bg.jpg', '2020-04-15 20:37:34'),
(3, 'singham', 'welcome to goa singham', 'third-post', 'Singham is a 2011 Indian Hindi-language action film directed by Rohit Shetty, which is the first installment of the Cop Universe and a remake of the 2010 Tamil film Singam. The film stars Ajay Devgn as Deputy Commissioner of Police (DCP) Bajirao Singham, with Kajal Aggarwal playing his love interest and Prakash Raj playing the main antagonist. Singham was produced and distributed by Reliance Entertainment. The theatrical trailer was attached with Salman Khan\'s Ready in June 2011. It was theatrically released in India on 22 July 2011 with strong box office response;[1] the film earned ₹876 million in India on the first day and a worldwide total of ₹1.57 billion against its ₹460 million budget, becoming an economic success. A sequel, Singham Returns, was released in 2014.', 'post-bg.jpg', '2020-04-15 20:55:55'),
(4, 'ramleela', 'goliyon ki rash-leela', 'fourth-post', 'Goliyon Ki Raasleela Ram-Leela (transl. A Dance of Bullets: Ram-Leela) is a 2013 Indian Hindi-language tragic romance film written and directed by Sanjay Leela Bhansali, who also composed its original soundtrack. The film was jointly produced by Bhansali and Eros International\'s Kishore Lulla; it stars Deepika Padukone and Ranveer Singh. The supporting cast includes Supriya Pathak, Richa Chadda, Sharad Kelkar, Gulshan Devaiah, Barkha Bisht Sengupta, and Abhimanyu Singh. Priyanka Chopra made a cameo appearance in the song Ram Chahe Leela.\r\n\r\nBhansali conceived Ram-Leela while working on his directional debut Khamoshi: The Musical; an insufficient budget led to the project being postponed. After reviving the project in 2012, Singh and Padukone were cast in the lead roles over many other choices. Principal photography began in Gujarat before moving to Rajasthan. Much of the filming was done on sets, despite previous plans against doing so. The background score was composed by Monty Sharma, while the lyrics were written by Siddharth–Garima.', 'post-bg.jpg', '2020-04-15 20:59:41'),
(6, 'bajirao-mastani', 'bajirao ne mastani se mohabbat ki hai koi aiyashi nahi', 'fifth-post', 'Bajirao Mastani is a 2015 Indian Hindi-language epic historical romance film directed by Sanjay Leela Bhansali, who also composed its soundtrack. The film was jointly produced by Bhansali and Eros International\'s Kishore Lulla; it stars Ranveer Singh, Deepika Padukone and Priyanka Chopra. The supporting cast includes Tanvi Azmi, Vaibhav Tatwawaadi and Milind Soman. Based on the fictional Marathi novel Rau by Nagnath S. Inamdar, Bajirao Mastani narrates the story of the Maratha Peshwa Bajirao I (1700–1740 AD) and his second wife.\r\n\r\nConceived as early as the 1990s, Bhansali announced the film in 2003 but production was delayed several times due to its changing cast. Bajirao Mastani, a passion project for Bhansali, spent the next eleven years in development hell before being revived in 2014. Extensive research was done before moving into pre-production, which required the creation of twenty-two highly detailed sets, and numerous costumes and props to strengthen its opulence and high production value. Principal photography took place on sets constructed in Film City, with some portions being filmed on location. Visual effects and CGI were used in post-production to enhance a number of scenes.', 'post-bg.jpg', '2020-04-17 16:19:16'),
(7, 'hello boss', 'raushan', 'guddikk', 'hello boss i am ravi', '', '2020-04-17 17:25:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`slno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `slno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
