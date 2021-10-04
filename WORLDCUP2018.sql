-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 18, 2018 at 06:00 AM
-- Server version: 5.6.28
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WORLDCUP2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `COUNTRY`
--

CREATE TABLE `COUNTRY` (
  `Name` varchar(30) NOT NULL,
  `Population` int(11) NOT NULL COMMENT 'Pop In Millions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COUNTRY`
--

INSERT INTO `COUNTRY` (`Name`, `Population`) VALUES
('Argentina', 44),
('Australia', 24),
('Belgium', 11),
('England', 53),
('France', 67),
('Germany', 83),
('Iceland', 1),
('Italy', 61),
('Spain', 47);

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `CountryName` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`ID`, `Name`, `Email`, `CountryName`) VALUES
(1, 'Lewis Hamilton', 'thebestfans@gmail.com', 'England'),
(2, 'Sebastian Vettel', 'ilostthechampionship@gmail.com', 'Germany'),
(3, 'Daniel Riccardo', 'smile@hotmail.com', 'Australia'),
(4, 'Charles Leclerc', 'magnessunwillalwaysbestupid@gmail.com', 'Monaco'),
(5, 'Carlos Sainz', 'vamos@renault.com', 'Spain');

-- --------------------------------------------------------

--
-- Table structure for table `ELIMINATIONGAME`
--

CREATE TABLE `ELIMINATIONGAME` (
  `ID` int(11) NOT NULL,
  `Stage` varchar(30) NOT NULL,
  `HomePenalties` int(11) NOT NULL,
  `AwayPenalties` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ELIMINATIONGAME`
--

INSERT INTO `ELIMINATIONGAME` (`ID`, `Stage`, `HomePenalties`, `AwayPenalties`) VALUES
(6, 'Round Of 16', 2, 4),
(7, 'Round of 16', 2, 3),
(8, 'Semi Final', 4, 3),
(9, 'Final', 1, 4),
(10, 'Third Place Play Off', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `GOALS`
--

CREATE TABLE `GOALS` (
  `PlayerID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `Count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GOALS`
--

INSERT INTO `GOALS` (`PlayerID`, `MatchID`, `Count`) VALUES
(1, 9, 1),
(8, 1, 3),
(9, 10, 2),
(10, 4, 4),
(10, 8, 3),
(11, 3, 2),
(11, 6, 1),
(12, 3, 1),
(13, 1, 1),
(13, 9, 2),
(14, 8, 1),
(15, 3, 1),
(23, 10, 1),
(24, 2, 2),
(24, 5, 1),
(24, 7, 1),
(25, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `HOMECLUB`
--

CREATE TABLE `HOMECLUB` (
  `Name` varchar(40) NOT NULL,
  `Country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `HOMECLUB`
--

INSERT INTO `HOMECLUB` (`Name`, `Country`) VALUES
('Brisbane Roar', 'Australia'),
('Manchester United', 'England'),
('Bayern Munich', 'Germany'),
('Borussia Dortmund', 'Germany'),
('Red Bull Liepzeig', 'Germany'),
('VfL Bochum', 'Germany'),
('AC Milan', 'Italy'),
('Juventus', 'Italy'),
('Napoli', 'Italy'),
('Athletico Madrid', 'Spain'),
('Barcelona FC', 'Spain'),
('Real Madrid FC', 'Spain');

-- --------------------------------------------------------

--
-- Table structure for table `MATCH1`
--

CREATE TABLE `MATCH1` (
  `ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Stadium` varchar(30) NOT NULL,
  `HomeYear` year(4) NOT NULL,
  `HomeTeamID` int(11) NOT NULL,
  `AwayYear` year(4) NOT NULL,
  `AwayTeamID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MATCH1`
--

INSERT INTO `MATCH1` (`ID`, `Date`, `Time`, `Stadium`, `HomeYear`, `HomeTeamID`, `AwayYear`, `AwayTeamID`) VALUES
(1, '2018-10-01', '19:00:00', 'Sydney', 2018, 1, 2018, 2),
(2, '2018-10-03', '11:00:00', 'Melbourne', 2018, 9, 2018, 6),
(3, '2018-10-04', '18:00:00', 'Perth', 2018, 7, 2018, 5),
(4, '2018-10-16', '17:00:00', 'Port Macquarie ', 2018, 4, 2018, 8),
(5, '2018-10-15', '09:00:00', 'Brisbane', 2018, 9, 2018, 2),
(6, '2018-10-17', '16:00:00', 'Adelaide', 2018, 7, 2018, 2),
(7, '2018-10-18', '12:00:00', 'Gold Coast', 2018, 9, 2018, 5),
(8, '2018-10-20', '13:00:00', 'Darwin', 2018, 4, 2018, 6),
(9, '2018-10-24', '13:00:00', 'Newcastle', 2018, 2, 2018, 1),
(10, '2018-10-24', '19:00:00', 'Toowong', 2018, 8, 2018, 3);

-- --------------------------------------------------------

--
-- Table structure for table `MEMBER`
--

CREATE TABLE `MEMBER` (
  `ID` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MEMBER`
--

INSERT INTO `MEMBER` (`ID`, `Name`) VALUES
(1, 'Nikhil Naik'),
(2, 'Marc Andre Ter Stegan'),
(3, 'Thibaut Courtois'),
(4, 'David De Gea'),
(5, 'Gianluigi Donnarumma'),
(6, 'Hugo Llorris'),
(7, 'Sergio Romero'),
(8, 'Robbie Kruse'),
(9, 'Eden Hazard'),
(10, 'Antoine Griezmann'),
(11, 'Marco Asensio'),
(12, 'Sergio Ramos'),
(13, 'Paulo Dybala'),
(14, 'Lorenzo Insinge'),
(15, 'Marco Reus'),
(16, 'Jose Mourinho'),
(17, 'Pep Guardiola'),
(18, 'Zinedine Zidane'),
(19, 'Jurgen Klopp'),
(20, 'John Aloisi'),
(21, 'Mark Schwarzer'),
(22, 'Mitch Langerak '),
(23, 'Harry Kane'),
(24, 'Gylfi Sigurdsson'),
(25, 'Luka Modric');

-- --------------------------------------------------------

--
-- Table structure for table `PLAYER`
--

CREATE TABLE `PLAYER` (
  `ID` int(11) NOT NULL,
  `Position` varchar(15) NOT NULL,
  `HomeClubName` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PLAYER`
--

INSERT INTO `PLAYER` (`ID`, `Position`, `HomeClubName`) VALUES
(1, 'Goalkeeper', 'Brisbane Roar'),
(2, 'Goalkeeper', 'Barcelona FC'),
(3, 'Goalkeeper', 'Real Madrid FC'),
(4, 'Goalkeeper', 'Manchester United'),
(5, 'Goalkeeper', 'AC Milan'),
(6, 'Goalkeeper', 'Juventus'),
(7, 'Goalkeeper', 'Red Bull Liepzeig'),
(8, 'Left Wing', 'VfL Bochum'),
(9, 'Left Wing', 'Bayern Munich'),
(10, 'Striker', 'Athletico Madrid'),
(11, 'Striker', 'Real Madrid FC'),
(12, 'Centre Back', 'Real Madrid FC'),
(13, 'Striker', 'Juventus'),
(14, 'Left Wing', 'Napoli'),
(15, 'Right Wing', 'Borussia Dortmund'),
(22, 'Goalkeeper', 'Manchester United'),
(23, 'Striker', 'Manchester United'),
(24, 'Striker', 'Manchester United'),
(25, 'Right Wing', 'Napoli');

-- --------------------------------------------------------

--
-- Table structure for table `POOLGAME`
--

CREATE TABLE `POOLGAME` (
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POOLGAME`
--

INSERT INTO `POOLGAME` (`ID`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Table structure for table `SAVES`
--

CREATE TABLE `SAVES` (
  `PlayerID` int(11) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `Count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SAVES`
--

INSERT INTO `SAVES` (`PlayerID`, `MatchID`, `Count`) VALUES
(1, 1, 6),
(1, 5, 2),
(1, 6, 2),
(1, 9, 2),
(2, 3, 10),
(2, 7, 12),
(3, 10, 10),
(4, 3, 8),
(4, 6, 3),
(5, 2, 2),
(5, 8, 1),
(6, 4, 4),
(6, 8, 2),
(7, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SUPPORTSTAFF`
--

CREATE TABLE `SUPPORTSTAFF` (
  `ID` int(11) NOT NULL,
  `Role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SUPPORTSTAFF`
--

INSERT INTO `SUPPORTSTAFF` (`ID`, `Role`) VALUES
(16, 'Manager'),
(17, 'Manager'),
(18, 'Manager'),
(19, 'Manager'),
(20, 'Manager'),
(21, 'Goalkeeping Coach');

-- --------------------------------------------------------

--
-- Table structure for table `TEAM`
--

CREATE TABLE `TEAM` (
  `ID` int(11) NOT NULL,
  `Year` year(4) NOT NULL,
  `Country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TEAM`
--

INSERT INTO `TEAM` (`ID`, `Year`, `Country`) VALUES
(1, 2002, 'Argentina'),
(1, 2006, 'Argentina'),
(1, 2010, 'Argentina'),
(1, 2014, 'Argentina'),
(1, 2018, 'Argentina'),
(2, 2018, 'Australia'),
(3, 2018, 'Belgium'),
(8, 2018, 'England'),
(4, 2018, 'France'),
(5, 2002, 'Germany'),
(5, 2006, 'Germany'),
(5, 2010, 'Germany'),
(5, 2014, 'Germany'),
(5, 2018, 'Germany'),
(9, 2018, 'Iceland'),
(6, 2018, 'Italy'),
(7, 2018, 'Spain');

-- --------------------------------------------------------

--
-- Table structure for table `TEAMMEMBER`
--

CREATE TABLE `TEAMMEMBER` (
  `Year` year(4) NOT NULL,
  `TeamID` int(11) NOT NULL,
  `MemberID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TEAMMEMBER`
--

INSERT INTO `TEAMMEMBER` (`Year`, `TeamID`, `MemberID`) VALUES
(2018, 1, 7),
(2018, 1, 13),
(2018, 1, 16),
(2018, 2, 1),
(2018, 2, 8),
(2018, 2, 20),
(2018, 2, 21),
(2018, 2, 22),
(2018, 3, 3),
(2018, 3, 9),
(2018, 4, 6),
(2018, 4, 10),
(2018, 4, 18),
(2018, 5, 2),
(2018, 5, 15),
(2018, 5, 19),
(2018, 6, 5),
(2018, 6, 14),
(2018, 6, 17),
(2018, 7, 4),
(2018, 7, 11),
(2018, 7, 12),
(2018, 8, 23),
(2018, 9, 24),
(2018, 9, 25);

-- --------------------------------------------------------

--
-- Table structure for table `TICKET`
--

CREATE TABLE `TICKET` (
  `MatchID` int(11) NOT NULL,
  `Ticket#` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TICKET`
--

INSERT INTO `TICKET` (`MatchID`, `Ticket#`, `CustomerID`, `Price`) VALUES
(2, 5, 5, 57),
(3, 4, 4, 24),
(6, 1, 1, 50),
(6, 2, 2, 50),
(6, 3, 3, 48);

-- --------------------------------------------------------

--
-- Table structure for table `TOURNAMENT`
--

CREATE TABLE `TOURNAMENT` (
  `Year` year(4) NOT NULL,
  `Country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TOURNAMENT`
--

INSERT INTO `TOURNAMENT` (`Year`, `Country`) VALUES
(2014, 'Argentina'),
(2018, 'Australia'),
(2006, 'Germany'),
(2002, 'Italy'),
(2010, 'Spain');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `COUNTRY`
--
ALTER TABLE `COUNTRY`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ELIMINATIONGAME`
--
ALTER TABLE `ELIMINATIONGAME`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `GOALS`
--
ALTER TABLE `GOALS`
  ADD PRIMARY KEY (`PlayerID`,`MatchID`),
  ADD KEY `PlayerID` (`PlayerID`,`MatchID`),
  ADD KEY `MatchID` (`MatchID`);

--
-- Indexes for table `HOMECLUB`
--
ALTER TABLE `HOMECLUB`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `Country` (`Country`);

--
-- Indexes for table `MATCH1`
--
ALTER TABLE `MATCH1`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `HomeYear` (`HomeYear`,`HomeTeamID`),
  ADD KEY `AwayYear_2` (`AwayYear`,`AwayTeamID`);

--
-- Indexes for table `MEMBER`
--
ALTER TABLE `MEMBER`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PLAYER`
--
ALTER TABLE `PLAYER`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`,`HomeClubName`),
  ADD KEY `HomeClubName` (`HomeClubName`);

--
-- Indexes for table `POOLGAME`
--
ALTER TABLE `POOLGAME`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `SAVES`
--
ALTER TABLE `SAVES`
  ADD PRIMARY KEY (`PlayerID`,`MatchID`),
  ADD KEY `PlayerID` (`PlayerID`,`MatchID`),
  ADD KEY `PlayerID_2` (`PlayerID`),
  ADD KEY `MatchID` (`MatchID`);

--
-- Indexes for table `SUPPORTSTAFF`
--
ALTER TABLE `SUPPORTSTAFF`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `TEAM`
--
ALTER TABLE `TEAM`
  ADD PRIMARY KEY (`ID`,`Year`),
  ADD KEY `ID` (`ID`,`Year`,`Country`),
  ADD KEY `Year` (`Year`),
  ADD KEY `Country` (`Country`);

--
-- Indexes for table `TEAMMEMBER`
--
ALTER TABLE `TEAMMEMBER`
  ADD PRIMARY KEY (`Year`,`TeamID`,`MemberID`),
  ADD KEY `Year` (`Year`),
  ADD KEY `TeamID` (`TeamID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `TICKET`
--
ALTER TABLE `TICKET`
  ADD PRIMARY KEY (`MatchID`,`Ticket#`),
  ADD KEY `MatchID` (`MatchID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `TOURNAMENT`
--
ALTER TABLE `TOURNAMENT`
  ADD PRIMARY KEY (`Year`),
  ADD KEY `Country` (`Country`),
  ADD KEY `Year` (`Year`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ELIMINATIONGAME`
--
ALTER TABLE `ELIMINATIONGAME`
  ADD CONSTRAINT `ELIMINATIONGAME_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `MATCH1` (`ID`);

--
-- Constraints for table `GOALS`
--
ALTER TABLE `GOALS`
  ADD CONSTRAINT `GOALS_ibfk_1` FOREIGN KEY (`PlayerID`) REFERENCES `PLAYER` (`ID`),
  ADD CONSTRAINT `GOALS_ibfk_2` FOREIGN KEY (`MatchID`) REFERENCES `MATCH1` (`ID`);

--
-- Constraints for table `HOMECLUB`
--
ALTER TABLE `HOMECLUB`
  ADD CONSTRAINT `HOMECLUB_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `COUNTRY` (`Name`);

--
-- Constraints for table `MATCH1`
--
ALTER TABLE `MATCH1`
  ADD CONSTRAINT `MATCH1_ibfk_1` FOREIGN KEY (`HomeYear`,`HomeTeamID`) REFERENCES `TEAM` (`Year`, `ID`),
  ADD CONSTRAINT `MATCH1_ibfk_2` FOREIGN KEY (`AwayYear`,`AwayTeamID`) REFERENCES `TEAM` (`Year`, `ID`);

--
-- Constraints for table `PLAYER`
--
ALTER TABLE `PLAYER`
  ADD CONSTRAINT `PLAYER_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `MEMBER` (`ID`),
  ADD CONSTRAINT `PLAYER_ibfk_2` FOREIGN KEY (`HomeClubName`) REFERENCES `HOMECLUB` (`Name`);

--
-- Constraints for table `POOLGAME`
--
ALTER TABLE `POOLGAME`
  ADD CONSTRAINT `POOLGAME_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `MATCH1` (`ID`);

--
-- Constraints for table `SAVES`
--
ALTER TABLE `SAVES`
  ADD CONSTRAINT `SAVES_ibfk_1` FOREIGN KEY (`PlayerID`) REFERENCES `PLAYER` (`ID`),
  ADD CONSTRAINT `SAVES_ibfk_2` FOREIGN KEY (`MatchID`) REFERENCES `MATCH1` (`ID`);

--
-- Constraints for table `SUPPORTSTAFF`
--
ALTER TABLE `SUPPORTSTAFF`
  ADD CONSTRAINT `SUPPORTSTAFF_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `MEMBER` (`ID`);

--
-- Constraints for table `TEAM`
--
ALTER TABLE `TEAM`
  ADD CONSTRAINT `TEAM_ibfk_2` FOREIGN KEY (`Year`) REFERENCES `TOURNAMENT` (`Year`),
  ADD CONSTRAINT `TEAM_ibfk_3` FOREIGN KEY (`Country`) REFERENCES `COUNTRY` (`Name`);

--
-- Constraints for table `TEAMMEMBER`
--
ALTER TABLE `TEAMMEMBER`
  ADD CONSTRAINT `TEAMMEMBER_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `MEMBER` (`ID`),
  ADD CONSTRAINT `TEAMMEMBER_ibfk_2` FOREIGN KEY (`Year`,`TeamID`) REFERENCES `TEAM` (`Year`, `ID`);

--
-- Constraints for table `TICKET`
--
ALTER TABLE `TICKET`
  ADD CONSTRAINT `TICKET_ibfk_1` FOREIGN KEY (`MatchID`) REFERENCES `MATCH1` (`ID`),
  ADD CONSTRAINT `TICKET_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`ID`);

--
-- Constraints for table `TOURNAMENT`
--
ALTER TABLE `TOURNAMENT`
  ADD CONSTRAINT `TOURNAMENT_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `COUNTRY` (`Name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
