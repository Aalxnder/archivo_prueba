-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 06:26 AM
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
-- Database: `tienda`
--

--
-- Table structure for table `user`
--


CREATE TABLE `user` (
                        `id` int(50) NOT NULL,
                        `nombre` varchar(100) NOT NULL,
                        `correo` varchar(50) NOT NULL,
                        `clave` varchar(50) NOT NULL,
                        `username` varchar(20) NOT NULL,
                        `img` mediumblob NOT NULL,
                        `tipodeimg` varchar(50) NOT NULL,
                        `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nombre`, `correo`, `clave`, `username`, `img`, `tipodeimg`, `descripcion`) VALUES
                                                                                                          (1, 'Rosa', 'Rosa.avila@gmail.com', 'HOLA15', 'rosa.avila', '', '', ''),
                                                                                                          (2, 'Rosa', 'avilarosita23@hotmail.com', '12345', 'rosaaaa', '', '', ''),
                                                                                                          (3, 'Maria', 'kkat5961@gmail.com', '4567', '_itsoswaldo_', '', '', '');
--
-- Indexes for table `user`
--
ALTER TABLE `user`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
    MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
