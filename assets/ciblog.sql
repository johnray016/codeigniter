-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2018 at 05:49 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Business', '2018-04-22 13:10:15'),
(2, 'Technology', '2018-04-22 13:10:15'),
(3, 'Lifestyle', '2018-04-22 13:10:27'),
(4, 'Game', '2018-04-22 13:10:27'),
(5, 'Love', '2018-04-22 14:06:26'),
(6, 'Mobile', '2018-04-22 14:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 7, 'John Ray Pantaleon', 'johnraypantaleon@yahoo.com', 'test comment', '2018-04-22 14:50:06'),
(2, 7, 'John Ray Pantaleon', 'sdasdas@email.com', 'asd', '2018-04-22 14:54:28'),
(3, 7, 'Jane Doe', 'jane@email.com', 'Great Work!', '2018-04-22 15:05:45'),
(4, 7, 'James Bond', 'unclesam@yahoo.com', 'Super Nice!', '2018-04-22 15:06:54');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `body`, `post_image`, `category_id`, `user_id`, `created_at`) VALUES
(1, 'Post One', 'post-one', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Iure aut consequuntur voluptatibus quasi nesciunt omnis repellendus animi nam vel, inventore, magnam mollitia, et enim ab! Laboriosam ullam corporis delectus voluptas.', 'noimage.jpg', 3, 0, '2018-04-22 02:29:00'),
(2, 'Post Two', 'Post-Two', 'asdSit amet consectetur adipisicing elit. Iure aut consequuntur voluptatibus quasi nesciunt omnis repellendus animi nam vel, inventore, magnam mollitia, et enim ab! Laboriosam ullam corporis delectus voluptas.', 'noimage.jpg', 1, 0, '2018-04-22 02:29:00'),
(3, 'Post Three', 'Post-Three', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Iure aut consequuntur voluptatibus quasi nesciunt omnis repellendus animi nam vel, inventore, magnam mollitia, et enim ab! Laboriosam ullam corporis delectus voluptas.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Iure aut consequuntur voluptatibus quasi nesciunt omnis repellendus animi nam vel, inventore, magnam mollitia, et enim ab! Laboriosam ullam corporis delectus voluptas.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Iure aut consequuntur voluptatibus quasi nesciunt omnis repellendus animi nam vel, inventore, magnam mollitia, et enim ab! Laboriosam ullam corporis delectus voluptas.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Iure aut consequuntur voluptatibus quasi nesciunt omnis repellendus animi nam vel, inventore, magnam mollitia, et enim ab! Laboriosam ullam corporis delectus voluptas.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Iure aut consequuntur voluptatibus quasi nesciunt omnis repellendus animi nam vel, inventore, magnam mollitia, et enim ab! Laboriosam ullam corporis delectus voluptas.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Iure aut consequuntur voluptatibus quasi nesciunt omnis repellendus animi nam vel, inventore, magnam mollitia, et enim ab! Laboriosam ullam corporis delectus voluptas.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Iure aut consequuntur voluptatibus quasi nesciunt omnis repellendus animi nam vel, inventore, magnam mollitia, et enim ab! Laboriosam ullam corporis delectus voluptas.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Iure aut consequuntur voluptatibus quasi nesciunt omnis repellendus animi nam vel, inventore, magnam mollitia, et enim ab! Laboriosam ullam corporis delectus voluptas.', 'noimage.jpg', 2, 0, '2018-04-22 13:07:17'),
(4, 'Post Four', 'Post-Four', 'lorem', 'noimage.jpg', 4, 0, '2018-04-22 13:18:27'),
(5, 'Test Post with Image', 'Test-Post-with-Image', 'this is a test body', 'noimage.jpg', 4, 0, '2018-04-22 13:34:42'),
(6, 'Test test test', 'Test-test-test', 'test', 'noimage.jpg', 1, 0, '2018-04-22 13:36:29'),
(7, 'Blender test', 'Blender-test', 'asdasd2323', 'Ninja-BL682ANZ-Ninja-Blender-System-With-Auto-iQ.jpg', 3, 0, '2018-04-22 13:37:51'),
(8, 'Post without image', 'Post-without-image', 'asdads', 'noimage.jpg', 4, 0, '2018-04-22 13:41:05'),
(9, 'Web Developer with E-commerce Experience', 'Web-Developer-with-E-commerce-Experience', 'tes', 'furnopot.jpg', 1, 0, '2018-04-22 13:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'John Ray Pantaleon', '1960', 'john@email.com', 'johnray016', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2018-04-22 15:39:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
