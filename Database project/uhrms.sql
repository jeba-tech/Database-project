-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2020 at 05:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uhrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(12) NOT NULL,
  `sname` varchar(25) NOT NULL,
  `sphone` int(11) NOT NULL,
  `sdob` date NOT NULL,
  `uid` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `sname`, `sphone`, `sdob`, `uid`) VALUES
(301, 'Riju', 135554455, '1999-11-03', 101),
(302, 'Rahul', 17555886, '1999-11-01', 102),
(303, 'Rohan', 16544555, '1999-11-10', 103),
(304, 'Tanisha', 19542655, '1999-11-11', 104),
(305, 'Sumi', 154863545, '1999-11-15', 105);

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_view`
-- (See below for the actual view)
--
CREATE TABLE `student_view` (
`sid` int(12)
,`sname` varchar(25)
,`sphone` int(11)
,`sdob` date
);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(12) NOT NULL,
  `tname` varchar(25) NOT NULL,
  `tsalary` float NOT NULL,
  `tphone` int(11) NOT NULL,
  `uid` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `tname`, `tsalary`, `tphone`, `uid`) VALUES
(201, 'Tanha', 20000, 1687954, 101),
(202, 'Sara', 15000, 16848625, 102),
(203, 'Ahsan', 12000, 17549628, 103),
(204, 'Nishat', 15000, 13554965, 105);

-- --------------------------------------------------------

--
-- Stand-in structure for view `teacher_view`
-- (See below for the actual view)
--
CREATE TABLE `teacher_view` (
`tid` int(12)
,`tname` varchar(25)
,`tsalary` float
);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(12) NOT NULL,
  `uname` varchar(22) NOT NULL,
  `usalary` float NOT NULL,
  `ujoiningdate` date NOT NULL,
  `uaddress` varchar(100) NOT NULL,
  `utid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `usalary`, `ujoiningdate`, `uaddress`, `utid`) VALUES
(101, 'Tasnim', 20000, '2020-09-01', 'Uttara, Dhaka', 3),
(102, 'Rupa', 10000, '2020-09-03', 'Dhanmondi, Dhaka', 3),
(103, 'Babu', 30000, '2020-08-01', 'Uttara, Dhaka', 2),
(104, 'Toma', 50000, '2020-07-01', 'Gulsan, Dhaka', 1),
(105, 'Fatin', 15000, '2020-08-04', 'Uttara, Dhaka', 4);

-- --------------------------------------------------------

--
-- Table structure for table `usercredential`
--

CREATE TABLE `usercredential` (
  `username` varchar(25) NOT NULL,
  `password` int(15) NOT NULL,
  `uid` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usercredential`
--

INSERT INTO `usercredential` (`username`, `password`, `uid`) VALUES
('efgh', 22556, 102),
('ijklm', 5555, 103),
('mfjdr', 4776678, 105),
('nopqr', 664586, 104),
('simu', 3456555, 101);

-- --------------------------------------------------------

--
-- Stand-in structure for view `usercredential_view`
-- (See below for the actual view)
--
CREATE TABLE `usercredential_view` (
`username` varchar(25)
,`password` int(15)
,`uid` int(12)
);

-- --------------------------------------------------------

--
-- Table structure for table `userphone`
--

CREATE TABLE `userphone` (
  `uphone` int(11) NOT NULL,
  `uid` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userphone`
--

INSERT INTO `userphone` (`uphone`, `uid`) VALUES
(159898589, 101),
(139898589, 101),
(16595888, 102),
(17986548, 103),
(13545468, 104),
(13545468, 105);

-- --------------------------------------------------------

--
-- Stand-in structure for view `userphone_view`
-- (See below for the actual view)
--
CREATE TABLE `userphone_view` (
`uphone` int(11)
,`uid` int(12)
);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `utid` int(10) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`utid`, `role`) VALUES
(1, 'Owner'),
(2, 'CEO'),
(3, 'Manager'),
(4, 'employee');

-- --------------------------------------------------------

--
-- Stand-in structure for view `usertype_view`
-- (See below for the actual view)
--
CREATE TABLE `usertype_view` (
`role` varchar(25)
,`utid` int(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_view`
-- (See below for the actual view)
--
CREATE TABLE `user_view` (
`uid` int(12)
,`uname` varchar(22)
,`usalary` float
,`ujoiningdate` date
,`uaddress` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `student_view`
--
DROP TABLE IF EXISTS `student_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_view`  AS  select `student`.`sid` AS `sid`,`student`.`sname` AS `sname`,`student`.`sphone` AS `sphone`,`student`.`sdob` AS `sdob` from `student` ;

-- --------------------------------------------------------

--
-- Structure for view `teacher_view`
--
DROP TABLE IF EXISTS `teacher_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `teacher_view`  AS  select `teacher`.`tid` AS `tid`,`teacher`.`tname` AS `tname`,`teacher`.`tsalary` AS `tsalary` from `teacher` ;

-- --------------------------------------------------------

--
-- Structure for view `usercredential_view`
--
DROP TABLE IF EXISTS `usercredential_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usercredential_view`  AS  select `usercredential`.`username` AS `username`,`usercredential`.`password` AS `password`,`usercredential`.`uid` AS `uid` from `usercredential` ;

-- --------------------------------------------------------

--
-- Structure for view `userphone_view`
--
DROP TABLE IF EXISTS `userphone_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `userphone_view`  AS  select `userphone`.`uphone` AS `uphone`,`userphone`.`uid` AS `uid` from `userphone` ;

-- --------------------------------------------------------

--
-- Structure for view `usertype_view`
--
DROP TABLE IF EXISTS `usertype_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usertype_view`  AS  select `usertype`.`role` AS `role`,`usertype`.`utid` AS `utid` from `usertype` ;

-- --------------------------------------------------------

--
-- Structure for view `user_view`
--
DROP TABLE IF EXISTS `user_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_view`  AS  select `user`.`uid` AS `uid`,`user`.`uname` AS `uname`,`user`.`usalary` AS `usalary`,`user`.`ujoiningdate` AS `ujoiningdate`,`user`.`uaddress` AS `uaddress` from `user` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `utid` (`utid`);

--
-- Indexes for table `usercredential`
--
ALTER TABLE `usercredential`
  ADD PRIMARY KEY (`username`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `userphone`
--
ALTER TABLE `userphone`
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`utid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`utid`) REFERENCES `usertype` (`utid`);

--
-- Constraints for table `usercredential`
--
ALTER TABLE `usercredential`
  ADD CONSTRAINT `usercredential_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `userphone`
--
ALTER TABLE `userphone`
  ADD CONSTRAINT `userphone_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
