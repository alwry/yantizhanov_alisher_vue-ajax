-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 14, 2025 at 08:45 PM
-- Server version: 8.0.35
-- PHP Version: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: students_db
--

-- --------------------------------------------------------

--
-- Table structure for table media
--

CREATE TABLE media (
  id int NOT NULL,
  media_name varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  media_url varchar(99) COLLATE utf8mb4_general_ci NOT NULL,
  student_id int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table media
--

INSERT INTO media (id, media_name, media_url, student_id) VALUES
(6, 'Student 1', 'st1.png', 1),
(7, 'Student 2', 'st2.png', 2),
(8, 'Student 3', 'st3.png', 3),
(9, 'Student 4', 'st4.png', 4),
(10, 'Student 5', 'st5.png', 5),
(11, 'Student 6', 'st6.png', 6);

-- --------------------------------------------------------

--
-- Table structure for table migrations
--

CREATE TABLE migrations (
  id int UNSIGNED NOT NULL,
  migration varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  batch int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table students
--

CREATE TABLE students (
  id int NOT NULL,
  fname varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  lname varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  email varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  major varchar(64) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table students
--

INSERT INTO students (id, fname, lname, email, major) VALUES
(1, 'Sashoye', 'Maxwell', 's.maxwell@gmail.com', 'IDP3'),
(2, 'Marcelo', 'Mamamia', 'italianmafia@bonjorno.it', 'Culinary'),
(3, 'Sarah', 'Kim', 'sarah.kim@yahoo.com', 'Business Management'),
(4, 'Nina', 'Patel', 'p.nina@fanshaweonline.ca', 'Web Development'),
(5, 'John', 'Doe', 'iexist@real.ly', 'Multitasking'),
(6, 'Robert', 'Haaf', 'rob@haaf.ca', 'Music Industry Arts');

--
-- Indexes for dumped tables
--

--
-- Indexes for table media
--
ALTER TABLE media
  ADD PRIMARY KEY (id),
  ADD KEY student_id (student_id);

--
-- Indexes for table migrations
--
ALTER TABLE migrations
  ADD PRIMARY KEY (id);

--
-- Indexes for table students
--
ALTER TABLE students
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table media
--
ALTER TABLE media
  MODIFY id int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table migrations
--
ALTER TABLE migrations
  MODIFY id int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table students
--
ALTER TABLE students
  MODIFY id int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table media
--
ALTER TABLE media
  ADD CONSTRAINT media_ibfk_1 FOREIGN KEY (student_id) REFERENCES students (id) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
