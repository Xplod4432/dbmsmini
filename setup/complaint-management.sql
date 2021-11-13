-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2021 at 10:19 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `userId` varchar(12) NOT NULL,
  `userType` varchar(10) NOT NULL,
  `category` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `remarks` varchar(500) NOT NULL DEFAULT 'None',
  `added` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `users` (
  `uid` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `department` varchar(8) NOT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `gender` varchar(2) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `registered` datetime NOT NULL DEFAULT current_timestamp(),
  `last_access` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;