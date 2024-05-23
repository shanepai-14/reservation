-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 07:04 PM
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
-- Database: `db_hor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `password`) VALUES
(1, 'Administrator', 'Admin', 'admin'),
(2, 'kim', 'kim', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contactno` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `firstname`, `middlename`, `lastname`, `address`, `contactno`) VALUES
(1, 'kim', 'sibugon', 'tilandoca', 'peñano st. calinan davao city', '09108706701'),
(2, 'kim', 'sibugon', 'Albaira', 'peñano st. calinan davao city', '09108706701'),
(3, 'kim', 'sibugon', 'tilandoca', 'peñano st. calinan davao city', '09108706701'),
(4, 'kim', 'sibugon', 'tilandoca', 'peñano st. calinan davao city', '09108706701'),
(5, 'kim', 'sibugon', 'tilandoca', 'peñano st. calinan davao city', '09108706701'),
(6, 'kim', 'sibugon', 'tilandoca', 'peñano st. calinan davao city', '09108706701'),
(7, 'kim', 'sibugon', 'tilandoca', 'peñano st. calinan davao city', '09108706701'),
(8, 'kim', 'sibugon', 'tilandoca', 'peñano st. calinan davao city', '09108706701'),
(9, 'kim', 'sibugon', 'tilandoca', 'peñano st. calinan davao city', '09108706701'),
(10, 'kim', 'sibugon', 'tilandoca', 'peñano st. calinan davao city', '09108706701'),
(11, 'kim', 'sibugon', 'tilandoca', 'peñano st. calinan davao city', '09108706701'),
(12, 'kim', 'sibugon', 'tilandoca', 'peñano st. calinan davao city', '09108706701'),
(14, 'Myles', 'Kessie Osborne', 'Morse', 'Autem tempore place', 'Iure est pers'),
(19, 'Mylen', 'sibugon', 'tilandoca', 'Veniam aperiam dele', '09108706701'),
(20, 'Quyn', 'Lee Pickett', 'Richmond', 'Impedit maiores mod', '09108706701'),
(21, 'Aubrey', 'Ginger Bullock', 'Trevino', 'In laborum Enim dol', '09108706701'),
(22, 'Alan', 'Orla Hodges', 'Nielsen', 'Minim repellendus Q', '40'),
(23, 'Aretha', 'Roary Kirby', 'Owen', 'Tempore quas cumque', '80'),
(24, 'Riley', 'Joelle Day', 'Clayton', 'Libero lorem natus m', '62'),
(25, 'Susan', 'Stella Long', 'Bennett', 'Iste assumenda cum i', '22'),
(26, 'Noel', 'Channing Johnson', 'Curry', 'Velit non aliquid ac', '81'),
(27, 'Porter', 'Morgan Green', 'Camacho', 'Tempor aliquid error', '31'),
(28, 'Russell', 'Keelie Maddox', 'Andrews', 'Esse et adipisci et', '53'),
(29, 'Neil', 'Jada Hayes', 'Olson', 'Repudiandae ipsum qu', '62'),
(30, 'Charles', 'Benedict Shannon', 'Chen', 'Exercitationem volup', '8'),
(31, 'Eaton', 'Darrel Cline', 'Horn', 'Sunt adipisci tempor', '3'),
(32, 'Caryn', 'Cedric Abbott', 'Caldwell', 'Cupidatat temporibus', '9'),
(33, 'Walter', 'Grace Ratliff', 'Olsen', 'Voluptatem Suscipit', '14'),
(34, 'Anne', 'Jerry Ryan', 'Preston', 'Perspiciatis consec', '48'),
(35, 'Hayfa', 'Suki Gould', 'Pearson', 'Ullamco unde volupta', '11'),
(36, 'Ulysses', 'Lara Ramsey', 'Trevino', 'Incidunt ipsum iust', '22'),
(37, 'Ulysses', 'Lara Ramsey', 'Trevino', 'Incidunt ipsum iust', '22'),
(38, 'Ulysses', 'Lara Ramsey', 'Trevino', 'Incidunt ipsum iust', '22'),
(39, 'Quin', 'Cheryl Herrera', 'Lang', 'Repellendus Velit m', '49'),
(40, 'Rajah', 'Ciara Hodges', 'Everett', 'Non aliquid sapiente', '54'),
(41, 'Chester', 'Grady Obrien', 'Reilly', 'Atque sit quod cill', '51'),
(42, 'Shaine', 'Lacy Joyce', 'Whitfield', 'Necessitatibus exerc', '83'),
(43, 'Naida', 'Amethyst Bowen', 'Moore', 'Cupidatat dicta ulla', '63'),
(44, 'Carson', 'Violet Koch', 'Burgess', 'Amet aut ducimus n', '91'),
(45, 'Chadwick', 'Delilah Rush', 'Kemp', 'Corporis qui ad saep', '93'),
(46, 'Joan', 'Brianna Bowen', 'Noble', 'Aut adipisicing exce', '50'),
(47, 'Joan', 'Brianna Bowen', 'Noble', 'Aut adipisicing exce', '50'),
(48, 'Britanney', 'Daryl Small', 'Castillo', 'Sunt omnis cupidita', '10'),
(49, 'Shane', 'Jerry Ryan', 'tilandkasodksadas', 'Catalunan Grande', '09909090'),
(50, 'Gabriel', 'Caldwell Burks', 'Stark', 'Esse similique do es', '41'),
(51, 'Madison', 'Regina Saunders', 'Ray', 'Architecto ut rem ma', '37'),
(52, 'James', 'Kuame Bruce', 'Ferrell', 'Irure rerum aute est', '20'),
(53, 'Helen', 'Wallace Lawrence', 'Vaughn', 'Dignissimos sunt vo', '43'),
(54, 'Alana', 'Gary Phelps', 'Sullivan', 'Vitae laborum nihil ', '95'),
(55, 'Berk', 'Genevieve Downs', 'Knight', 'Quis velit voluptat', '62'),
(56, 'Tucker', 'Hilary Wise', 'Kaufman', 'Excepturi consectetu', '17'),
(57, 'Fallon', 'Avye Nash', 'Hensley', 'Quis ut autem qui qu', '55'),
(58, 'Montana', 'Elizabeth Cooper', 'Caldwell', 'Nostrud deserunt eli', '55'),
(59, 'Pascale', 'Sacha Russell', 'Montoya', 'Aliquid temporibus v', '9'),
(60, 'Janna', 'Alyssa Calhoun', 'Cole', 'Laborum adipisci cum', '35'),
(61, 'Indira', 'Zenia Sampson', 'Gonzales', 'Officia et dolores s', '62'),
(62, 'Bruno', 'Hilary Nguyen', 'Robertson', 'Modi quod amet veni', '98'),
(63, 'Aimee', 'Grant Winters', 'Burgess', 'Iste consectetur rei', '49'),
(64, 'Mercedes', 'Madonna Cervantes', 'Sears', 'Unde blanditiis dign', '98'),
(65, 'Desiree', 'Ria Hatfield', 'Bird', 'Accusantium aliquid ', '1'),
(66, 'Jerry', 'Victor Sherman', 'Nash', 'Nihil et enim repudi', '47'),
(67, 'Samson', 'Fiona Mcclure', 'Cline', 'Repudiandae officiis', '1'),
(68, 'Zelda', 'Jared Garrison', 'Keith', 'Do natus soluta reic', '76'),
(69, 'Hammett', 'Daphne Durham', 'Trevino', 'Quo minus consequatu', '15'),
(70, 'Hammett', 'Daphne Durham', 'Trevino', 'Quo minus consequatu', '15'),
(71, 'Hammett', 'Daphne Durham', 'Trevino', 'Quo minus consequatu', '15'),
(72, 'Nichole', 'Uma Tucker', 'Burks', 'Est nobis qui ut od', '47'),
(73, 'asdas', 'asdas', 'dasdasd', 'asdas', '123123'),
(74, 'Robert', 'Kim Cherry', 'Snider', 'Id nostrum irure ani', '33'),
(75, 'Nicole', 'Virginia Grimes', 'Kramer', 'Animi cum praesenti', '65'),
(76, 'Zachary', 'Malachi Tate', 'Shannon', 'Ipsum esse labore s', '35'),
(77, 'Shea', 'Alika Osborne', 'Noble', 'Quasi explicabo Rei', '29'),
(78, 'Jana', 'Alan Head', 'Evans', 'Neque maiores conseq', '45'),
(79, 'Barry', 'Ulric Hampton', 'Mendoza', 'Sint omnis ducimus ', '45'),
(80, 'Zorita', 'Fuller Witt', 'Rosa', 'Do ducimus quod sim', '95'),
(81, 'Oren', 'Kaden Stokes', 'Coffey', 'Beatae omnis cupidit', '74'),
(82, 'Timothy', 'Gregory Mcknight', 'Zimmerman', 'Quaerat minus fugiat', '60'),
(83, 'Carly', 'Lila Rivers', 'Vega', 'Autem ut in do volup', '7'),
(84, 'Audrey', 'Wyatt Browning', 'Mcintosh', 'Ut dolorem sit offic', '32'),
(85, 'Kay', 'Jakeem Hickman', 'Downs', 'Non ea sapiente ut d', '73'),
(86, 'Jescie', 'Briar Eaton', 'Merritt', 'Commodo deserunt par', '44'),
(87, 'Russell', 'Neville Richard', 'Rogers', 'Voluptatibus consequ', '46'),
(88, 'Silas', 'Kamal Ballard', 'Phillips', 'Quo rem error conseq', '1'),
(89, 'Micah', 'Summer Whitley', 'Vance', 'Impedit qui iure ac', '67');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `price` varchar(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type`, `price`, `photo`) VALUES
(8, 'Room 1', '300', '1.jpg'),
(9, 'Room 2', '200', '2.jpg'),
(10, 'Room 3', '400', '3.jpg'),
(11, 'Room 4', '500', '5.jpg'),
(12, 'Room 5', '600', '4.jpg'),
(13, 'Room 6', '800', '6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_no` int(5) NOT NULL,
  `extra_bed` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `stayType` varchar(20) DEFAULT NULL,
  `days` int(2) NOT NULL,
  `checkin` date NOT NULL,
  `checkin_time` time NOT NULL,
  `checkout` date NOT NULL,
  `checkout_time` time NOT NULL,
  `bill` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `guest_id`, `room_id`, `room_no`, `extra_bed`, `status`, `stayType`, `days`, `checkin`, `checkin_time`, `checkout`, `checkout_time`, `bill`) VALUES
(1, 1, 1, 1, 0, 'Check Out', NULL, 1, '2023-12-12', '03:18:43', '2023-12-12', '03:21:30', '2000'),
(5, 1, 8, 1, 0, 'Check Out', NULL, 1, '2023-12-12', '22:10:09', '2023-12-13', '22:49:51', '200'),
(7, 1, 8, 0, 0, 'Check Out', NULL, 1, '2023-12-12', '22:49:14', '2023-12-13', '22:49:33', '200'),
(8, 19, 8, 1, 0, 'Check Out', NULL, 1, '2023-12-12', '22:59:41', '2023-12-13', '23:22:27', '300'),
(9, 22, 8, 0, 0, 'Check Out', NULL, 1, '2023-12-12', '23:19:55', '2023-12-13', '23:22:24', '300'),
(10, 23, 8, 0, 0, 'Check Out', NULL, 3, '2023-12-12', '23:22:55', '2023-12-15', '23:48:44', '900'),
(11, 24, 8, 1, 0, 'Check Out', NULL, 0, '2023-12-12', '23:30:50', '2023-12-12', '23:48:54', '0'),
(12, 25, 8, 3, 0, 'Check Out', NULL, 1, '2023-12-12', '23:49:36', '2023-12-13', '23:53:54', '2700'),
(13, 26, 8, 6, 0, 'Check Out', NULL, 2, '2023-12-12', '23:54:31', '2023-12-14', '23:57:04', '4200'),
(14, 27, 8, 12, 0, 'Check Out', NULL, 0, '2023-12-12', '23:57:44', '2023-12-12', '01:47:39', '1200'),
(15, 31, 8, 3, 0, 'Check Out', NULL, 2, '2023-12-13', '00:18:50', '2023-12-14', '01:47:36', '3900'),
(16, 42, 8, 2, 0, 'Check Out', NULL, 3, '2023-12-13', '01:48:21', '2023-12-15', '01:48:24', '5600'),
(17, 43, 8, 0, 0, 'Check Out', NULL, 0, '2023-12-13', '00:00:00', '0000-00-00', '02:14:36', ''),
(18, 44, 8, 1, 0, 'Check Out', NULL, 1, '2023-12-13', '02:23:39', '2023-12-13', '02:23:51', '1900'),
(19, 45, 8, 2, 0, 'Check Out', NULL, 1, '2023-12-13', '00:00:00', '0000-00-00', '02:21:14', '2000'),
(20, 48, 8, 2, 0, 'Check Out', NULL, 1, '2023-12-13', '00:00:00', '0000-00-00', '03:49:55', '2000'),
(21, 49, 9, 0, 0, 'Check Out', NULL, 1, '2023-12-13', '03:50:19', '2023-12-13', '03:56:31', '1200'),
(22, 50, 10, 2, 0, 'Check Out', NULL, 0, '2023-12-13', '10:52:58', '2023-12-13', '03:55:32', '266.666666'),
(23, 51, 11, 2, 0, 'Check Out', NULL, 0, '2023-12-13', '02:56:20', '2023-12-13', '03:56:34', '333.333333'),
(24, 52, 9, 1, 0, 'Check Out', NULL, 0, '2023-12-13', '03:13:45', '2023-12-13', '04:30:48', '66.6666666'),
(25, 53, 9, 2, 0, 'Check Out', NULL, 2, '2023-12-13', '03:21:40', '2023-12-15', '04:22:50', '2533.33333'),
(26, 54, 9, 2, 0, 'Check Out', NULL, 0, '2023-12-13', '03:25:19', '2023-12-13', '04:30:43', '133.333333'),
(27, 55, 9, 1, 0, 'Check Out', NULL, 0, '2023-12-13', '03:40:38', '2023-12-13', '04:40:46', '66.6666666'),
(28, 56, 9, 1, 0, 'Check Out', NULL, 0, '2023-12-13', '00:00:00', '0000-00-00', '04:46:13', '66.6666666'),
(29, 57, 9, 1, 0, 'Check Out', NULL, 0, '2023-12-13', '03:46:40', '2023-12-13', '23:40:26', '66.6666666'),
(30, 58, 10, 3, 0, 'Check Out', NULL, 0, '2023-12-13', '03:53:23', '0000-00-00', '23:40:04', '400'),
(32, 60, 9, 2, 0, 'Check Out', 'Regular Type', 0, '2024-01-15', '22:00:49', '2024-01-15', '23:41:20', '133.333333'),
(33, 61, 13, 4, 0, 'Check Out', 'Regular Type', 0, '2024-01-15', '22:46:28', '2024-01-15', '23:46:46', '1066.66666'),
(34, 62, 8, 0, 0, 'Check Out', 'Regular Type', 1, '2024-01-15', '22:49:49', '2024-01-16', '06:50:06', '1800'),
(35, 67, 8, 2, 0, 'Check Out', 'Regular Type', 0, '2024-01-16', '23:23:41', '2024-01-15', '07:47:27', '200'),
(36, 76, 8, 3, 0, 'Check Out', 'Regular Type', 2, '2024-01-16', '23:54:33', '2024-01-17', '07:59:51', '3900'),
(37, 77, 11, 9, 0, 'Check Out', 'Open Time', 9, '2024-01-16', '00:00:25', '2024-01-16', '01:28:45', '244.444444'),
(38, 78, 12, 3, 0, 'Check Out', 'Regular Type', 0, '2024-01-16', '00:06:24', '2024-01-16', '03:06:00', '600'),
(39, 79, 11, 0, 0, 'Check Out', 'Open Time', 0, '2024-01-16', '00:46:15', '2024-01-16', '00:59:25', '0'),
(40, 80, 13, 1, 0, 'Check Out', 'Regular Type', 2, '2024-01-18', '00:37:23', '0000-00-00', '01:37:00', '9866.66666'),
(41, 81, 8, 4, 0, 'Check Out', 'Regular Type', 3, '2024-01-16', '01:04:05', '0000-00-00', '05:04:00', '5800'),
(42, 82, 10, 4, 0, 'Check Out', 'Regular Type', 4, '2024-01-16', '01:05:25', '0000-00-00', '05:05:00', '10133.3333'),
(43, 83, 12, 0, 0, 'Check Out', 'Open Time', 0, '2024-01-16', '01:37:19', '2024-01-16', '01:39:29', '5206.66666'),
(44, 84, 11, 0, 0, 'Check Out', 'Open Time', 0, '2024-01-16', '01:42:22', '2024-01-16', '01:42:44', '0'),
(45, 85, 11, 0, 0, 'Check Out', 'Open Time', 0, '2024-01-16', '01:48:29', '2024-01-16', '01:48:39', '0'),
(46, 86, 8, 0, 0, 'Check Out', 'Open Time', 0, '2024-01-16', '01:49:18', '2024-01-16', '01:49:21', '0'),
(47, 87, 9, 0, 0, 'Check Out', 'Open Time', 0, '2024-01-16', '01:51:40', '2024-01-16', '01:51:43', '0'),
(48, 88, 10, 6, 0, 'Check Out', 'Regular Type', 1, '2024-01-16', '01:52:26', '0000-00-00', '07:52:00', '3200'),
(49, 89, 12, 2, 0, 'Check Out', 'Open Time', 1, '2024-01-16', '01:58:47', '2024-01-16', '01:58:59', '5200');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
