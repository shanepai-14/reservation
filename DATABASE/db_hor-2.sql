-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 08:33 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
(89, 'Micah', 'Summer Whitley', 'Vance', 'Impedit qui iure ac', '67'),
(90, 'Nell', 'Isabelle Boyer', 'Middleton', 'Veritatis ea minus a', '67'),
(91, 'Charles', 'Callie Walker', 'Brennan', 'Debitis quia qui rer', '6'),
(92, 'Declan', 'Latifah Rollins', 'Grant', 'Consectetur itaque ', '80'),
(93, 'Olympia', 'Gray Huff', 'Rocha', 'Hic et commodo praes', '75'),
(94, 'kim', 'sibugon', 'tilandoca', 'Purok 4, penano St. Calinan Davao City', '09108706701'),
(95, 'Jeraline', 'L', 'Astillo', 'Tulips', '0913080218932'),
(96, 'sad', 'sibugon', 'tilandoca', 'Purok 4, penano St. Calinan Davao City', '09108706701'),
(97, 'Jeraline', 'L', 'Astillo', 'Tulips', '0913080218932'),
(98, 'lol', 'reyes', 'alo', 'Tulips', '09108706701'),
(99, 'jester', 'sabas', 'silot', 'bago aplaya', '09108706701'),
(100, 'Jeraline', 'L', 'Astillo', 'Tulips', '0913080218932'),
(101, 'Jeraline', 'L', 'Astillo', 'Tulips', '09108706701'),
(102, 'Jeraline', 'L', 'Astillo', 'Tulips', '0913080218932'),
(103, 'Jeraline', 'L', 'Astillo', 'Tulips', '09108706701'),
(104, 'Jeraline', 'L', 'Astillo', 'Tulips', '0913080218932'),
(105, 'Jeraline', 'L', 'Astillo', 'Tulips', '09108706701'),
(106, 'Holandel', 'S', 'Samiana', 'San Gabriel', '0913080218932'),
(107, 'Jeraline', 'L', 'Astillo', 'Tulips', '09108706701'),
(108, 'Jeraline', 'L', 'Astillo', 'Tulips', '09108706701'),
(109, 'Alec', 'Danielle Middleton', 'Cannon', 'Voluptas est asperna', '09108706701'),
(110, 'Kim Brian', 'sibugon', 'Tilandoca', 'Purok 4 peñano st. Calinan Davao City', '09108706701');

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
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
