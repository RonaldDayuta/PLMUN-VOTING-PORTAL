-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 06:37 AM
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
-- Database: `evoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `admin_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(68) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`admin_id`, `fname`, `mname`, `lname`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(3, 'Ronald', 'Combate', 'Dayuta', 'ronald', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4');

-- --------------------------------------------------------

--
-- Table structure for table `tblcandidate`
--

CREATE TABLE `tblcandidate` (
  `id` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `partyid` int(11) NOT NULL,
  `candidatepositionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcandidate`
--

INSERT INTO `tblcandidate` (`id`, `studentid`, `partyid`, `candidatepositionid`) VALUES
(128, 233, 23, 5),
(129, 235, 22, 5),
(130, 236, 24, 5),
(132, 237, 23, 7),
(133, 239, 25, 7),
(134, 238, 24, 7),
(135, 241, 27, 6),
(136, 243, 25, 6),
(137, 242, 22, 6),
(138, 247, 23, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tblcandidateposition`
--

CREATE TABLE `tblcandidateposition` (
  `id` int(11) NOT NULL,
  `positionname` varchar(50) NOT NULL,
  `sortorder` int(5) NOT NULL,
  `votesallowed` int(5) NOT NULL,
  `allowperparty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcandidateposition`
--

INSERT INTO `tblcandidateposition` (`id`, `positionname`, `sortorder`, `votesallowed`, `allowperparty`) VALUES
(5, 'President', 1, 1, 1),
(6, 'Vice President for Internal Affairs', 2, 1, 1),
(7, 'Vice President for External Affairs ', 3, 1, 1),
(8, 'Executive Secretary', 4, 1, 1),
(9, 'Associate Secretary: ', 5, 1, 1),
(10, 'Executive Treasurer ', 6, 1, 1),
(11, 'Associate Treasurer', 7, 1, 1),
(12, 'Auditors', 8, 2, 2),
(13, 'Business Managers', 9, 2, 2),
(14, 'Public Relations for Internal Affairs ', 10, 1, 1),
(15, 'Public Relations for External Affairs', 11, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `id` int(11) NOT NULL,
  `courseinitial` varchar(8) NOT NULL,
  `coursename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`id`, `courseinitial`, `coursename`) VALUES
(11, 'BSIT', 'Bachelor of Science in Information Technology'),
(12, 'BSBA', 'Bachelor of Science in Business Administration'),
(15, 'BSCRIM', 'Bachelor of Science in Criminology'),
(17, 'BSED', 'Bachelor of Secondary Education'),
(18, 'BSE', 'Bachelor of Elementary Education');

-- --------------------------------------------------------

--
-- Table structure for table `tblparty`
--

CREATE TABLE `tblparty` (
  `id` int(11) NOT NULL,
  `partyinitial` varchar(11) NOT NULL,
  `partyname` varchar(100) NOT NULL,
  `party_election_date_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblparty`
--

INSERT INTO `tblparty` (`id`, `partyinitial`, `partyname`, `party_election_date_id`) VALUES
(22, 'LP', 'Love Party list', 39),
(23, 'LBP', 'Laban Party list', 39),
(24, 'SMP', 'Smart Partylist', 39),
(25, 'STR', 'Straight', 39),
(26, 'Lbp', 'Love Party list', 36),
(27, 'SP', 'Single Partylist', 39);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `id` int(11) NOT NULL,
  `idno` varchar(15) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `courseid` int(5) DEFAULT NULL,
  `image` varchar(30) NOT NULL,
  `votingcode` varchar(15) DEFAULT NULL,
  `votestatus` char(1) DEFAULT NULL COMMENT '0 - not voted, 1 - voted',
  `yearlevelid` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`id`, `idno`, `lastname`, `firstname`, `middlename`, `courseid`, `image`, `votingcode`, `votestatus`, `yearlevelid`) VALUES
(233, '21138587', 'Dayuta', 'Ronald', 'C.', 11, 'me.png', 'ITM-76C755', '0', 19),
(235, '21137908', 'Tamaray', 'Joanne Sophia ', 'Florece', 11, 'jo.jpg', 'JWS-41E586', '0', 19),
(236, '21137943', 'Tuyay', 'Aaron Cyril', 'T.', 11, 'aaron.jpg', 'TUJ-654E66', '0', 19),
(237, '16119035', 'Peralta', 'Jecille', 'Roque', 11, 'je.jpg', 'NGL-71F602', '0', 19),
(238, '21138318', 'Briones', 'Ashnie Bernadeth', 'B.', 11, 'ash.png', 'MQF-64745E', '0', 19),
(239, '21138572', 'Bonto', 'Rhon Carlo', 'B.', 11, 'bonto.jpg', 'VXJ-0139C1', '0', 19),
(240, '21136588', 'Magbitang', 'Kriszy Mae', 'D.', 11, 'maezy.jpg', 'BMI-8A0E25', '0', 19),
(241, '21136977', 'Bartolo', 'Alvin Niño', 'D.', 11, 'tiger.jpg', 'TDU-118C9B', '0', 19),
(242, '21138468', 'Gaspar', 'Aimme Larina', 'A.', 11, 'aims.jpg', 'EVL-51D707', '0', 19),
(243, '20134537', 'Buenaventura', 'Eris Alyana', 'O.', 11, 'eris.jpg', 'QSE-512941', '0', 19),
(244, '21137899', 'Polancos', 'Carlo James', 'U.', 11, 'carlo.jpg', 'HWD-D27E57', '0', 19),
(245, '21136831', 'Narvasa', 'Mark Louie', 'N.', 11, '', 'VYN-04620A', '0', 19),
(246, '22143416', 'Juan', 'Vince Ruel', 'V.', 11, 'vince.jpg', 'NDS-25E476', '0', 19),
(247, '21136379', 'Lanzar', 'Kyle', 'H.', 11, 'kyle.jpg', 'FKM-8B0B66', '0', 19);

-- --------------------------------------------------------

--
-- Table structure for table `tblvotes`
--

CREATE TABLE `tblvotes` (
  `id` int(11) NOT NULL,
  `candidateid` int(11) NOT NULL,
  `daterecorded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblvotestatus`
--

CREATE TABLE `tblvotestatus` (
  `vote_status_id` int(11) NOT NULL,
  `vote_status_election_date_id` int(11) NOT NULL,
  `vote_status_studentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvotestatus`
--

INSERT INTO `tblvotestatus` (`vote_status_id`, `vote_status_election_date_id`, `vote_status_studentid`) VALUES
(55, 34, 233);

-- --------------------------------------------------------

--
-- Table structure for table `tblyearlevel`
--

CREATE TABLE `tblyearlevel` (
  `id` int(12) NOT NULL,
  `yearlevelinitial` varchar(10) NOT NULL,
  `yearlevelname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblyearlevel`
--

INSERT INTO `tblyearlevel` (`id`, `yearlevelinitial`, `yearlevelname`) VALUES
(17, '1ST-YR', 'First Year'),
(18, '2ND-YR', 'Second Year'),
(19, '3RD-YR', 'Third Year'),
(20, '4TH-YR', 'Fourth Year');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_election_date`
--

CREATE TABLE `tbl_election_date` (
  `election_date_id` int(11) NOT NULL,
  `election_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_election_date`
--

INSERT INTO `tbl_election_date` (`election_date_id`, `election_date`) VALUES
(34, '2023-12-01'),
(39, '2023-12-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tblcandidate`
--
ALTER TABLE `tblcandidate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partyid` (`partyid`),
  ADD KEY `candidatepositionid` (`candidatepositionid`),
  ADD KEY `candidatepositionid_2` (`candidatepositionid`),
  ADD KEY `studentid` (`studentid`);

--
-- Indexes for table `tblcandidateposition`
--
ALTER TABLE `tblcandidateposition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblparty`
--
ALTER TABLE `tblparty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oneid` (`idno`),
  ADD UNIQUE KEY `votingcode` (`votingcode`),
  ADD KEY `courseid` (`courseid`),
  ADD KEY `yearlevelid` (`yearlevelid`);

--
-- Indexes for table `tblvotes`
--
ALTER TABLE `tblvotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidateid` (`candidateid`);

--
-- Indexes for table `tblvotestatus`
--
ALTER TABLE `tblvotestatus`
  ADD PRIMARY KEY (`vote_status_id`),
  ADD KEY `vote_status_election_date_id` (`vote_status_election_date_id`,`vote_status_studentid`),
  ADD KEY `vote_status_studentid` (`vote_status_studentid`);

--
-- Indexes for table `tblyearlevel`
--
ALTER TABLE `tblyearlevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_election_date`
--
ALTER TABLE `tbl_election_date`
  ADD PRIMARY KEY (`election_date_id`),
  ADD UNIQUE KEY `election_date` (`election_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcandidate`
--
ALTER TABLE `tblcandidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `tblcandidateposition`
--
ALTER TABLE `tblcandidateposition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblparty`
--
ALTER TABLE `tblparty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `tblvotes`
--
ALTER TABLE `tblvotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `tblvotestatus`
--
ALTER TABLE `tblvotestatus`
  MODIFY `vote_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tblyearlevel`
--
ALTER TABLE `tblyearlevel`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_election_date`
--
ALTER TABLE `tbl_election_date`
  MODIFY `election_date_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcandidate`
--
ALTER TABLE `tblcandidate`
  ADD CONSTRAINT `fk_candidate_student` FOREIGN KEY (`studentid`) REFERENCES `tblstudent` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblcandidate_ibfk_2` FOREIGN KEY (`partyid`) REFERENCES `tblparty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblcandidate_ibfk_3` FOREIGN KEY (`candidatepositionid`) REFERENCES `tblcandidateposition` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblcandidate_ibfk_4` FOREIGN KEY (`studentid`) REFERENCES `tblstudent` (`id`);

--
-- Constraints for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD CONSTRAINT `tblstudent_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `tblcourse` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tblstudent_ibfk_2` FOREIGN KEY (`yearlevelid`) REFERENCES `tblyearlevel` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tblvotes`
--
ALTER TABLE `tblvotes`
  ADD CONSTRAINT `tblvotes_ibfk_1` FOREIGN KEY (`candidateid`) REFERENCES `tblcandidate` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblvotestatus`
--
ALTER TABLE `tblvotestatus`
  ADD CONSTRAINT `fk_vote_status_student` FOREIGN KEY (`vote_status_studentid`) REFERENCES `tblstudent` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblvotestatus_ibfk_1` FOREIGN KEY (`vote_status_election_date_id`) REFERENCES `tbl_election_date` (`election_date_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblvotestatus_ibfk_2` FOREIGN KEY (`vote_status_studentid`) REFERENCES `tblstudent` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
