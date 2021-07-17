-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2019 at 09:42 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `football_club_management_system__1___1_`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `Name` varchar(20) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`Name`, `Password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `Name` varchar(40) NOT NULL,
  `Club_CODE` varchar(10) NOT NULL,
  `Country` enum('England','Spain','Germany','Italy','France') NOT NULL,
  `League_Level` enum('First Tier','Second Tier','Others') NOT NULL,
  `In_League_Since` varchar(10) NOT NULL,
  `Stadium` varchar(40) NOT NULL,
  `President` varchar(40) NOT NULL,
  `Club_Value` varchar(20) NOT NULL,
  `Honors` varchar(40) NOT NULL,
  `Manager` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`Name`, `Club_CODE`, `Country`, `League_Level`, `In_League_Since`, `Stadium`, `President`, `Club_Value`, `Honors`, `Manager`) VALUES
('Chelsea FC', '#ENG-CHE', 'England', 'First Tier', '1905', 'Stamford Bridge ', 'Roman Abramovich', '807 mil euro', '15 trophies', 'Frank Lampard'),
('Liverpool FC', '#ENG-LFC', 'England', 'First Tier', '1892', 'Anfield', 'Michael S. Gordon', '1.07 bil euro', '31 trophies', 'Jürgen Klopp'),
('Manchester City ', '#ENG-MNC', 'England', 'First Tier', '1894', 'Etihad Stadium', 'Khaldoon Al Mubarak', '1.28 bil euro', '12 trophies', 'Pep Guardiola'),
('Paris Saint-Germain', '#FRA-PSG', 'France', 'First Tier', '1970', 'Le Parc des Princes', 'Nasser Al-Khelaifi', '1.5 bil euro', '20 trophies', 'Thomas Tuchel'),
('Borussia Dortmund', '#GER-BVB', 'Germany', 'First Tier', '1909', 'Signal Iduna Park', 'Hans-Joachim Watzke', '640 mil euro ', '13 trophies', 'Lucien Favre'),
('FC Bayern Munich', '#GER-FCB', 'Germany', 'First Tier', '1900', 'Allianz Arena', 'Karl-Heinz Rummenigge', '882 mil euro', '53  trophies', 'Hans-Dieter Flick'),
('Inter Milan', '#ITA-INT', 'Italy', 'First Tier', '1908', 'San Siro Stadium', 'Steven Zhang', '567 mil euro', '28 trophies', 'Antonio Conte'),
('Juventus FC', '#ITA-JUV', 'Italy', 'First Tier', '1897', 'Allianz Stadium', 'Andrea Agnelli', '837 mil euro', '50 trophies', 'Maurizio Sarri'),
('FC Barcelona', '#SPA-FCB', 'Spain', 'First Tier', '1899', 'Camp Nou', 'Josep Maria Bartomeu', '1.18 bil euro', '64 trophies', 'Ernesto Valverde'),
('Real Madrid', '#SPA-RM', 'Spain', 'First Tier', '1902', 'Santiago Bernabéu', 'Florentino Pérez', '1.19 bil euro', '72 trophies', 'Zinedine Zidane');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `Name` varchar(40) NOT NULL,
  `Manager_CODE` varchar(10) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Place_of_Birth` varchar(40) NOT NULL,
  `Age` int(2) NOT NULL,
  `Citizenship` varchar(40) NOT NULL,
  `Avg._term_as_coach` varchar(20) NOT NULL,
  `Coaching_Licence` varchar(40) NOT NULL,
  `Preferred_Formation` varchar(40) NOT NULL,
  `Club_CODE` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`Name`, `Manager_CODE`, `Date_of_Birth`, `Place_of_Birth`, `Age`, `Citizenship`, `Avg._term_as_coach`, `Coaching_Licence`, `Preferred_Formation`, `Club_CODE`) VALUES
('Frank Lampard', '#ENG-FL', '1978-06-20', 'London', 41, 'England', '0,76 Years ', ' UEFA A Licence', '4-2-3-1', '#ENG-CHE'),
('Zinedine Zidane', '#FRA-ZZ', '1972-06-13', 'Marseille', 47, 'France', '1,38 Years', 'UEFA Pro Licence', '4-3-3 Attacking', '#SPA-RM'),
('Hans-Dieter Flick', '#GER-HDF', '1965-02-24', 'Heidelberg', 54, 'Germany', '3,16 Years', 'Head Coach', '4-3-3 Attacking', '#GER-FCB'),
('Jürgen Klopp', '#GER-JK', '1967-06-16', 'Stuttgart', 52, 'Germany', '6,17 Years', 'Head Coach', '4-3-3 Attacking', '#ENG-LFC'),
('Thomas Tuchel', '#GER-TT', '1973-10-29', 'Krumbach', 46, 'Germany', '2,32 Years', 'Head Coach', '4-3-3 Attacking', '#FRA-PSG'),
('Antonio Conte', '#ITA-AC', '1969-07-31', ' Lecce', 50, 'Italy', '1,05 Years', 'UEFA Pro Licence', '3-4-2-1', '#ITA-INT'),
('Maurizio Sarri', '#ITA-MS', '1959-01-10', 'Napoli', 60, 'Italy', '1,15 Years', 'Head Coach', '4-3-3 Attacking', '#ITA-JUV'),
('Ernesto Valverde', '#SPA-EV', '1964-02-09', 'Viandar de la Vera', 55, 'Spain', '1,72 Years', 'Head Coach', '4-3-3 Attacking', '#SPA-FCB'),
('Pep Guardiola', '#SPA-PG', '1971-01-18', 'Santpedor', 48, 'Spain', '2,86 Years', 'UEFA Pro Licence', '4-3-3 Attacking', '#ENG-MNC'),
('Lucien Favre', '#SWT-LF', '1957-11-02', 'Saint-Barthélemy', 62, 'Switzerland', '2,98 Years', 'Licence trainer', '4-2-3-1', '#GER-BVB');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `Name` varchar(40) NOT NULL,
  `Player_CODE` varchar(20) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Place_of_Birth` varchar(40) NOT NULL,
  `Age` int(2) NOT NULL,
  `Height` varchar(10) NOT NULL,
  `Citizenship` varchar(40) NOT NULL,
  `Position` enum('Goalkeeper','Center-Back','Right-Back','Left-Back','Defensive Midfield','Central Midfield','Attacking Midfield','Right Winger','Left Winger','Center-Forward') NOT NULL,
  `Foot` enum('Right','Left','Both') NOT NULL,
  `Player_Agent` varchar(40) NOT NULL,
  `Club_CODE` varchar(10) NOT NULL,
  `Joined` date NOT NULL,
  `Contract_expires` date NOT NULL,
  `Market_value` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`Name`, `Player_CODE`, `Date_of_Birth`, `Place_of_Birth`, `Age`, `Height`, `Citizenship`, `Position`, `Foot`, `Player_Agent`, `Club_CODE`, `Joined`, `Contract_expires`, `Market_value`) VALUES
('Lionel Messi', '#ARG-LM10', '1987-06-24', 'Rosario, Argentina', 32, '1,70', 'Argentina, Spain', 'Right Winger', 'Left', 'Relatives', '#SPA-FCB', '2005-07-01', '2021-06-30', '150 mil euro'),
('Eden Hazard', '#BEL-EH07', '1991-01-07', 'La Louvière, Belgium', 28, '1,75 ', 'Belgium', 'Left Winger', 'Both', 'Relatives', '#SPA-RM', '2019-07-10', '2024-06-30', '150 mil euro'),
('Thibaut Courtois', '#BEL-TC01', '1992-05-11', 'Bree, Belgium', 27, '1,99', 'Belgium', 'Goalkeeper', 'Left', 'Christophe Henrotay', '#SPA-RM', '2018-08-09', '2024-06-30', '55 mil euro'),
('Alisson', '#BRA-A01', '1992-10-02', 'Novo Hamburgo', 27, '1,91', 'Brazil', 'Goalkeeper', 'Right', 'NWS - Neis World Sports', '#ENG-LFC', '2018-07-19', '2024-06-30', '80 mil euro'),
('Arthur Melo', '#BRA-AM08', '1996-08-12', 'Goiânia, Brazil', 23, '1,72', 'Brazil', 'Central Midfield', 'Right', 'Relatives', '#SPA-FCB', '2018-07-09', '2024-06-30', '70 mil euro'),
('Casemiro', '#BRA-C14', '1992-02-23', 'São José dos Campos, Brazil', 27, '1,85 ', 'Brazil, Spain', 'Defensive Midfield', 'Right', 'Best of You', '#SPA-RM', '2013-07-01', '2021-06-30', '60 mil euro'),
('Marcelo', '#BRA-M12', '1988-05-12', 'Rio de Janeiro, Brazil', 31, '1,74 ', 'Brazil, Spain', 'Left-Back', 'Left', 'LIFEPRO', '#SPA-RM', '2007-01-01', '2022-06-30', '25 mil euro'),
('Luka Modric', '#CRO-LM10', '1985-09-09', 'Zadar, Croatia', 34, '1,72 ', 'Croatia', 'Central Midfield', 'Both', 'Universal Sports Group', '#SPA-RM', '2012-08-27', '2020-06-30', '20 mil euro'),
('Mohamed Salah', '#EGY-MS11', '1992-07-15', 'Nagrig, Basyoun', 27, '1,75', 'Egypt', 'Right Winger', 'Left', 'SPOCS Global Sports', '#ENG-LFC', '2017-07-01', '2023-06-30', '150 mil euro'),
('Clément Lenglet', '#FAR-CL15', '1995-06-17', 'Beauvais, France', 24, '1,86', 'France', 'Center-Back', 'Left', 'Wasserman', '#SPA-FCB', '2018-07-12', '2023-06-30', '60 mil euro'),
('Antoine Griezmann', '#FRA-AG17', '1991-03-21', 'Mâcon, France', 28, '1,76', 'France', 'Center-Forward', 'Left', 'Relatives', '#SPA-FCB', '2019-07-14', '2024-06-30', '130 mil euro'),
('Karim Benzema', '#FRA-KB09', '1987-12-19', 'Lyon, France', 31, '1,84', 'Algeria, France', 'Center-Forward', 'Both', 'Best of You', '#SPA-RM', '2009-07-09', '2021-06-30', '40 mil euro'),
('N\'Golo Kanté', '#FRA-NGK07', '1991-03-29', 'Paris', 28, '1,68', 'France', 'Central Midfield', 'Right', 'not clarified', '#ENG-CHE', '2016-07-16', '2023-06-30', '100 mil euro'),
('Ousmane Dembélé', '#FRA-OD11', '1997-05-15', 'Vernon, France', 22, '1,78', 'France', 'Right Winger', 'Both', 'Relatives', '#SPA-FCB', '2017-08-25', '2022-06-30', '100 mil euro'),
('Toni Kroos', '#GER-TK08', '1990-01-04', 'Greifswald, Germany', 29, '1,83 ', 'Germany', 'Attacking Midfield', 'Right', 'SportsTotal', '#SPA-RM', '2014-07-17', '2023-06-30', '60 mil euro'),
('Marc-André ter Stegen', '#GER-TS01', '1992-04-30', 'Mönchengladbach, Germany', 27, '1,87', 'Germany', 'Goalkeeper', 'Right', 'Coaches & More GmbH', '#SPA-FCB', '2014-07-01', '2022-06-30', '90 mil euro'),
('Frenkie de Jong', '#NED-FJ21', '1997-05-12', 'Arkel, Netherlands', 22, '1,81', 'Netherlands', 'Central Midfield', 'Right', 'HCM Sports Management', '#SPA-FCB', '2019-07-01', '2024-06-30', '85 mil euro'),
('Virgil van Dijk', '#NED-VVD04', '1991-07-08', 'Breda', 28, '1,93', 'Netherlands', 'Center-Back', 'Right', 'not clarified', '#ENG-LFC', '2018-01-01', '2023-06-30', '100 mil euro'),
('Nélson Semedo', '#POR-NS02', '1993-11-16', 'Lisboa, Portugal', 26, '1,77', 'Portugal', 'Right-Back', 'Right', 'Gestifute', '#SPA-FCB', '2017-07-14', '2022-06-30', '40 mil euro'),
('Anssumane Fati', '#SPA-AF23', '2002-10-31', 'Bissau, Guinea-Bissau', 17, '1,78', 'Spain', 'Left Winger', 'Right', 'Player under 18', '#SPA-FCB', '2019-08-01', '2022-06-30', '25 mil euro'),
('Gerard Piqué', '#SPA-GP03', '1987-02-02', 'Barcelona, Spain', 32, '1,92', 'Spain', 'Center-Back', 'Right', 'AC Talent', '#SPA-FCB', '2008-07-01', '2022-06-30', '35 mil euro'),
('Isco', '#SPA-I22', '1992-04-21', 'Benalmádena , Spain', 27, '1,76 ', 'Spain', 'Attacking Midfield', 'Right', 'Relatives', '#SPA-RM', '2013-07-01', '2022-06-30', '60 mil euro'),
('Jordi Alba', '#SPA-JA18', '1989-03-21', 'L\'Hospitalet de Llobregat, Spain', 30, '1,70', 'Spain', 'Left-Back', 'Left', 'InterStarDeporte', '#SPA-FCB', '2012-07-01', '2024-06-30', '50 mil euro'),
('Kepa', '#SPA-K01', '1994-10-03', 'Ondarroa', 25, '1,86', 'Spain', 'Goalkeeper', 'Right', 'Bahía Internacional', '#ENG-CHE', '2018-08-08', '2025-06-03', '60 mil euro'),
('Sergio Busquets', '#SPA-SB05', '1988-07-16', 'Sabadell, Spain', 31, '1,89', 'Spain', 'Defensive Midfield', 'Right', 'TACTIC GRUP - OROBITG', '#SPA-FCB', '2008-09-01', '2023-06-30', '50 mil euro'),
('Sergio Ramos', '#SPA-SR04', '1986-03-30', 'Camas (Sevilla), Spain', 33, '1,84 ', 'Spain', 'Center-Back', 'Right', 'Relatives', '#SPA-RM', '2005-08-31', '2021-06-30', '25 mil euro'),
('Sergi Roberto', '#SPA-SR20', '1992-02-07', 'Reus, Spain', 27, '1,78', 'Spain', 'Attacking Midfield', 'Right', 'TACTIC GRUP - OROBITG', '#SPA-FCB', '2013-07-01', '2022-06-30', '50 mil euro'),
('Federico Valverde', '#URU-FV15', '1998-07-22', 'Montevideo, Uruguay', 21, '1,82 ', 'Spain, Uruguay', 'Attacking Midfield', 'Right', 'Arandilla Calcio y Asociados', '#SPA-RM', '2018-07-01', '2021-06-30', '20 mil euro'),
('Luis Suárez', '#URU-LS09', '1987-01-24', 'Salto, Uruguay', 32, '1,82', 'Uruguay, Italy', 'Center-Forward', 'Right', 'Relatives', '#SPA-FCB', '2014-07-11', '2021-06-30', '50 mil euro'),
('Christian Pulisic', '#USA-CP22', '1998-09-18', 'Hershey, Pennsylvania', 21, '1,72', 'United States', 'Attacking Midfield', 'Right', 'Relatives', '#ENG-CHE', '2019-01-02', '2024-06-30', '60 mil euro'),
('Gareth Bale', '#WAL-GB11', '1989-07-16', 'Cardiff, Wales', 30, '1,85 ', 'Wales', 'Left Winger', 'Left', 'Stellar Football Ltd', '#SPA-RM', '2013-09-01', '2022-06-30', '60 mil euro');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`Club_CODE`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`Manager_CODE`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`Player_CODE`),
  ADD KEY `Club_code` (`Club_CODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
