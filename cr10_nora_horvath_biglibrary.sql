-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2018 at 04:43 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_nora_horvath_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `FK_media` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `firstname`, `lastname`, `media`, `FK_media`) VALUES
(1, 'John', 'Brown', 'Book of love', 1),
(2, 'Erik', 'Meddling', 'While away', 2),
(3, 'Brown', 'Breem', 'QWE', 3),
(4, 'Milan', 'Brows', 'Ahead of mine', 2),
(5, 'Vera', 'Gill', 'Nice', 4),
(6, 'Lali', 'Lala', 'Music of love', 5),
(7, 'Jhon', 'Doe', 'Werter', 5),
(8, 'More', 'JOhn', 'Doe', 4),
(9, 'Ester', 'Mester', 'When the wind blows', 4),
(10, 'Qlok', 'Erte', 'G', 4),
(11, 'Piros', 'Ka', 'Nagymama', 3);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `coverIMG` varchar(255) DEFAULT NULL,
  `publishdate` date DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `FK_media` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`media_id`, `title`, `summary`, `coverIMG`, `publishdate`, `status`, `FK_media`, `type`) VALUES
(0, 'Secrets', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/vintage_bookcover-tb-263x0.png', '2010-08-28', 'out', 4, 'CD'),
(1, 'When is when', 'Lorem ipsum os supsim lala Lorem ipsum os supsim lala Lorem ipsum os supsim lala', NULL, '2010-06-11', 'in', 1, 'BOOK'),
(2, 'Still holding on', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eget orci nulla. Donec convallis fermentum quam ut convallis. ', 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/romance_bookcover-tb-263x0.png', '2012-06-12', 'in', 2, 'BOOK'),
(3, 'The missing ride', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eget orci nulla. Donec convallis fermentum quam ut convallis. Nam arcu libero, dictum vitae diam sit amet, convallis rutrum ex. Sed sit amet lobortis massa. Donec', 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/thriller_bookcover-tb-263x0.png', '2010-08-20', 'out', 3, 'BOOK\r\n'),
(4, 'The guide to Europe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eget orci nulla. Donec convallis fermentum quam ut convallis. Nam arcu libero, dictum vitae diam sit amet, convallis rutrum ex. Sed sit amet lobortis massa.', 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/nonfiction_bookcover-tb-263x0.png', '2011-06-18', 'out', 4, 'AUDIO BOOK'),
(5, 'Making things happen', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eget orci nulla. Donec convallis fermentum quam ut convallis. Nam arcu libero, dictum vitae diam sit amet, convallis rutrum ex. Sed sit amet lobortis massa.', 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/business_bookcover-tb-263x0.png', '2013-06-05', 'out', 5, 'CD'),
(6, 'Outside the window', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eget orci nulla. Donec convallis fermentum quam ut convallis. Nam arcu libero, dictum vitae diam sit amet, convallis rutrum ex. Sed sit amet lobortis massa.', 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/fiction_bookcover-tb-263x0.png', '2013-06-11', 'in', 5, 'DVD'),
(7, 'Pre Pre kraft', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eget orci nulla. Donec convallis fermentum quam ut convallis. Nam arcu libero, dictum vitae diam sit amet, convallis rutrum ex. Sed sit amet lobortis massa.', 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/creative_bookcover-tb-263x0.png', '2017-06-11', 'in', 6, 'DVD'),
(8, 'Crossing oceans', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eget orci nulla. Donec convallis fermentum quam ut convallis. Nam arcu libero, dictum vitae diam sit amet, convallis rutrum ex. Sed sit amet lobortis massa.', 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/photo_bookcover-tb-263x0.png', '2013-06-05', 'in', 6, 'CD'),
(9, 'Secrets', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/vintage_bookcover-tb-263x0.png', '2010-08-28', 'out', 4, 'BOOK'),
(10, 'A girl in the world', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/illustration_bookcover-tb-263x0.png', '2010-06-11', 'in', 1, 'BOOK'),
(11, 'Thing I am inn', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/notebook_bookcover-tb-263x0.png', '2011-03-18', 'in', 4, 'BOOK'),
(12, 'Where the wind blows', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/collage_bookcover-tb-263x0.png', '2001-06-05', 'out', 6, 'BOOK');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` varchar(25) DEFAULT NULL,
  `FK_author` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `address`, `name`, `size`, `FK_author`) VALUES
(0, '21 Erden St. \r\nMissuri, MN 54580', 'Erden Books', 'small', 3),
(1, '8407 Nut Swamp St. \r\nSouthfield, MI 48076', 'Small Mouse', 'small', 1),
(2, '9990 Carriage Ave. \r\nCaldwell, NJ 07006', 'BigBook', 'big', 2),
(3, '96 Green Ave. \r\nWestport, CT 06880', 'Green Port', 'middle', 3),
(4, '1 Buttonwood St. \r\nBronx, NY 10451', 'Button Books', 'small', 4),
(5, '795B Fifth Street \r\nBloomington, IN 47401', 'Fifth Publish', 'big', 5),
(6, '39 Fulton St. \r\nOwatonna, MN 55060', 'Fulton Records', 'small', 6),
(12, '21 Erden St. \r\nMissuri, MN 54580', 'Erden Books', 'small', 3),
(13, '39 Fulton St. \r\nOwatonna, MN 55060', 'The other Publisher', 'middle', 2),
(14, '2 Vert St. \r\nOrb, MN 55210', 'Vertical Books', 'small', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `rent_id` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `FK_userid` int(11) DEFAULT NULL,
  `FK_media` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`rent_id`, `start_date`, `end_date`, `FK_userid`, `FK_media`) VALUES
(1, '2018-06-03', '2018-07-08', 2, 1),
(2, '2018-06-05', '2018-07-11', 2, 2),
(3, '2018-07-18', '2018-07-25', 3, 3),
(4, '2018-06-11', '2018-07-20', 4, 4),
(5, '2018-06-13', '2018-07-21', 5, 5),
(6, '2018-07-26', '2018-08-22', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `surname`, `address`, `email`, `password`, `firstname`) VALUES
(0, 'muvek', NULL, 'elso@gmail.com', '123456', 'nalassuk'),
(1, 'Taylor', '728 Heritage Hls Unit D\r\nSomers, NY 10589-4082', 'taylor@robert.com', '123456', 'Robertson'),
(2, 'Melanie', '123 Stage rd Unit D\r\nSome, NY 4082', 'M.erder@asd.com', '123456', 'Werde'),
(3, 'Cecil', 'Kelley A. Fleming 196 Woodside Circle Mobile, FL 36602 Phone:240-256-1942', 'asd@gte.com', '123456', 'Qellog'),
(4, 'Martina', ' 3756 Preston Street Wichita, KS 67213 Phone:857-778-1265', 'michael@gmail.com', '123456', 'Michael '),
(5, 'Csücsök', 'Dog street 234. Berlin 1230', 'csucsi@gmail.com', '123456', 'Csont'),
(6, 'Verdem', '213. National road London N16 2341', 'erdeo.lo@gmail.com', '123456', 'Kolleg'),
(12, 'first_name', 'sgsd', 'emai@dsf.com', 'password', 'last_name'),
(98, 'adfgsdfg', 'werwerwe', 'yfasadf@ad.com', 'afsdf', 'asdfasdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `first_name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `pass` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `first_name`, `last_name`, `email`, `pass`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL),
(5, 'DQEWT', 'ASDF', 'adsf@dsf.com', 'qqweqweq'),
(13, 'Manden', 'Verter', 'verter@fre.com', '123456'),
(14, 'LoLka', 'Bolka', 'lolka@bolka.com', '123456'),
(15, 'Terem', 'Verd', 'asd@gmail.com', '123456'),
(16, 'koko', 'Luci', 'koko@gmail.com', '123456'),
(17, 'vert', 'Mert', 'Vert@mer.com', '1234566'),
(18, 'lohe', 'Inde', 'aik@geml.com', '123456'),
(19, 'Őpoli', 'Luki', 'adl@gmeil.com', '123456'),
(20, 'Marton', 'Heade', 'hade@fer.com', '123456'),
(21, 'relok', 'Laoske', 'ajdsh@gej.com', '123456'),
(22, 'nore', 'norea', 'nor@gmail.com', '123456'),
(23, 'qwew', 'weqwe', 'wew@gds.com', '123123'),
(24, 'asdasd', 'asdasd', 'asdasd@asdas.com', '1234414124');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `FK_media` (`FK_media`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `FK_media` (`FK_media`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD KEY `FK_author` (`FK_author`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rent_id`),
  ADD KEY `FK_userid` (`FK_userid`),
  ADD KEY `FK_media` (`FK_media`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`FK_media`) REFERENCES `author` (`author_id`);

--
-- Constraints for table `publisher`
--
ALTER TABLE `publisher`
  ADD CONSTRAINT `publisher_ibfk_1` FOREIGN KEY (`FK_author`) REFERENCES `author` (`author_id`);

--
-- Constraints for table `rent`
--
ALTER TABLE `rent`
  ADD CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`FK_userid`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`FK_media`) REFERENCES `media` (`media_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
