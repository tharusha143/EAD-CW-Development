-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2025 at 01:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`book_id`, `book_name`, `author`, `quantity`) VALUES
(1, 'Madolduwa', 'Martin Wickramasinghe', 3),
(2, 'Aba Yaluwo', 'Martin Wickramasinghe', 3),
(3, 'Duupathe Kathawa', 'Martin Wickramasinghe', 5),
(4, 'Java ABC', 'Java Writer', 5);

-- --------------------------------------------------------

--
-- Table structure for table `issue_book_details`
--

CREATE TABLE `issue_book_details` (
  `issue_id` varchar(10) NOT NULL,
  `book_id` varchar(50) DEFAULT NULL,
  `student_id` varchar(50) DEFAULT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `return_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue_book_details`
--

INSERT INTO `issue_book_details` (`issue_id`, `book_id`, `student_id`, `issue_date`, `due_date`, `status`, `return_date`) VALUES
('I001', 'B001', 'S001', '2025-06-01', '2025-06-15', 'pending', NULL),
('I002', 'B002', 'S002', '2025-06-05', '2025-06-20', 'returned', '2025-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `course` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`student_id`, `name`, `course`, `branch`) VALUES
(1, 'Kevin', 'DCSD', 'Colombo'),
(2, 'Kavishka', 'DSE', 'Colombo'),
(3, 'Kumuditha', 'DSE', 'Colombo'),
(4, 'Thilini', 'DCSD', 'Colombo');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `contact`) VALUES
(1, 'Tony', '123456', 'tony@gmail.com', '0987654321'),
(17, 'Tharusha', '123456', 'tharusha1234@gmail.com', '0123456789'),
(18, 'Adeesha', '123456', 'Adeesha@gmail.com', '0112345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `issue_book_details`
--
ALTER TABLE `issue_book_details`
  ADD PRIMARY KEY (`issue_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`student_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
