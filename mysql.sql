-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2022 at 05:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_follow`
--

CREATE TABLE `tbl_follow` (
  `follow_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_follow`
--

INSERT INTO `tbl_follow` (`follow_id`, `sender_id`, `receiver_id`) VALUES
(35, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_like`
--

CREATE TABLE `tbl_like` (
  `like_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_like`
--

INSERT INTO `tbl_like` (`like_id`, `user_id`, `post_id`) VALUES
(12, 6, 59),
(13, 7, 63);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `notification_id` int(11) NOT NULL,
  `notification_receiver_id` int(11) NOT NULL,
  `notification_text` text NOT NULL,
  `read_notification` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`notification_id`, `notification_receiver_id`, `notification_text`, `read_notification`) VALUES
(12, 6, '\r\n				<b>test0</b> has like your post - \"...\"\r\n				', 'yes'),
(13, 6, '<b>test02</b> has follow you.', 'yes'),
(14, 6, '<b>test02</b> has unfollow you.', 'yes'),
(15, 6, '<b>test02</b> has follow you.', 'yes'),
(16, 6, '<b>test02</b> has unfollow you.', 'yes'),
(17, 6, '<b>test02</b> has follow you.', 'yes'),
(18, 6, '<b>test02</b> has unfollow you.', 'yes'),
(19, 6, '<b>test02</b> has follow you.', 'yes'),
(20, 6, '<b>test02</b> has unfollow you.', 'yes'),
(21, 6, '<b>test02</b> has follow you.', 'yes'),
(22, 6, '<b>test02</b> has unfollow you.', 'yes'),
(23, 6, '<b>test02</b> has follow you.', 'yes'),
(24, 6, '<b>test02</b> has unfollow you.', 'yes'),
(25, 6, '<b>test02</b> has follow you.', 'yes'),
(26, 6, '<b>test02</b> has unfollow you.', 'yes'),
(27, 6, '<b>test02</b> has follow you.', 'yes'),
(28, 6, '<b>test02</b> has unfollow you.', 'yes'),
(29, 6, '<b>test02</b> has follow you.', 'yes'),
(30, 6, '<b>test02</b> has unfollow you.', 'yes'),
(31, 6, '<b>test02</b> has follow you.', 'yes'),
(32, 6, '<b>test02</b> has unfollow you.', 'yes'),
(33, 6, '<b>test02</b> has follow you.', 'yes'),
(34, 6, '<b>test02</b> has unfollow you.', 'yes'),
(35, 6, '<b>test02</b> has follow you.', 'yes'),
(36, 6, '<b>test02</b> has repost your post - \"test...\"', 'yes'),
(37, 6, '<b>test02</b> has repost your post - \"...\"', 'yes'),
(38, 7, '\r\n				<b>test02</b> has like your post - \"...\"\r\n				', 'yes'),
(39, 6, '<b>test02</b> has unfollow you.', 'yes'),
(40, 6, '<b>test02</b> has follow you.', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_repost`
--

CREATE TABLE `tbl_repost` (
  `repost_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_repost`
--

INSERT INTO `tbl_repost` (`repost_id`, `post_id`, `user_id`) VALUES
(8, 60, 7),
(9, 59, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_samples_post`
--

CREATE TABLE `tbl_samples_post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `post_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_samples_post`
--

INSERT INTO `tbl_samples_post` (`post_id`, `user_id`, `post_content`, `post_datetime`) VALUES
(59, 6, '<p><img src=\"images/13523.jpg\" class=\"img-responsive img-thumbnail\"></p><br>', '2022-09-18 13:02:54'),
(60, 6, 'test', '2022-09-18 13:03:08'),
(61, 7, 'what', '2022-09-18 13:10:46'),
(62, 7, 'test', '2022-09-18 13:11:05'),
(63, 7, '<p><img src=\"images/13523.jpg\" class=\"img-responsive img-thumbnail\"></p><br>', '2022-09-18 13:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_twitter_user`
--

CREATE TABLE `tbl_twitter_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `profile_image` varchar(150) NOT NULL,
  `bio` text NOT NULL,
  `follower_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_twitter_user`
--

INSERT INTO `tbl_twitter_user` (`user_id`, `username`, `password`, `name`, `profile_image`, `bio`, `follower_number`) VALUES
(6, 'test0', '$2y$10$O4T54wekvI66zCypoDaWjeD6/zJFMPZwqqBufxgc391nue8NljLNy', '', '', '', 1),
(7, 'test02', '$2y$10$8iI3Mblh2zq8tQHgSZuCu.CCBr/0CSc7KFo.kNyVL3GUZBdulelMW', 'hello', '1832345395.jpg', '', 0),
(8, '111', '$2y$10$Qc562fqup0BOww0NK2eUB.Jz89HxP4idtzPwWiHV6T/LLCGqWnZJq', '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_follow`
--
ALTER TABLE `tbl_follow`
  ADD PRIMARY KEY (`follow_id`);

--
-- Indexes for table `tbl_like`
--
ALTER TABLE `tbl_like`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `tbl_repost`
--
ALTER TABLE `tbl_repost`
  ADD PRIMARY KEY (`repost_id`);

--
-- Indexes for table `tbl_samples_post`
--
ALTER TABLE `tbl_samples_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_twitter_user`
--
ALTER TABLE `tbl_twitter_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_follow`
--
ALTER TABLE `tbl_follow`
  MODIFY `follow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_like`
--
ALTER TABLE `tbl_like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_repost`
--
ALTER TABLE `tbl_repost`
  MODIFY `repost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_samples_post`
--
ALTER TABLE `tbl_samples_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_twitter_user`
--
ALTER TABLE `tbl_twitter_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
