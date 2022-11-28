-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 28.11.2022 klo 08:35
-- Palvelimen versio: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `town_db`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `blacksmith_shop`
--

CREATE TABLE `blacksmith_shop` (
  `Location` varchar(30) NOT NULL,
  `Build_year` int(11) NOT NULL,
  `Price` double(10,2) DEFAULT NULL,
  `townLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `blacksmith_shop`
--

INSERT INTO `blacksmith_shop` (`Location`, `Build_year`, `Price`, `townLocation`) VALUES
('Old Street 5', 1032, 2350.00, 'Green Hills');

-- --------------------------------------------------------

--
-- Rakenne taululle `blacksmith_shop_owner`
--

CREATE TABLE `blacksmith_shop_owner` (
  `Owner` varchar(20) NOT NULL,
  `shopLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `blacksmith_shop_owner`
--

INSERT INTO `blacksmith_shop_owner` (`Owner`, `shopLocation`) VALUES
('Luke Miller', 'Old Street 5'),
('Monica Miller', 'Old Street 5');

-- --------------------------------------------------------

--
-- Rakenne taululle `blacksmith_shop_workers`
--

CREATE TABLE `blacksmith_shop_workers` (
  `Workers` varchar(20) NOT NULL,
  `shopLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `blacksmith_shop_workers`
--

INSERT INTO `blacksmith_shop_workers` (`Workers`, `shopLocation`) VALUES
('Ava Anvilmaster', 'Old Street 5'),
('Henry Hammerman', 'Old Street 5'),
('Jacob Stood', 'Old Street 5');

-- --------------------------------------------------------

--
-- Rakenne taululle `church`
--

CREATE TABLE `church` (
  `Location` varchar(30) NOT NULL,
  `townLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `church`
--

INSERT INTO `church` (`Location`, `townLocation`) VALUES
('Old Street 3', 'Green Hills');

-- --------------------------------------------------------

--
-- Rakenne taululle `church_location`
--

CREATE TABLE `church_location` (
  `Location` varchar(30) NOT NULL,
  `Build_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `church_location`
--

INSERT INTO `church_location` (`Location`, `Build_year`) VALUES
('Old Street 3', 1018);

-- --------------------------------------------------------

--
-- Rakenne taululle `church_residents`
--

CREATE TABLE `church_residents` (
  `Residents` varchar(20) NOT NULL,
  `churchLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `church_residents`
--

INSERT INTO `church_residents` (`Residents`, `churchLocation`) VALUES
('Brother Fernold', 'Old Street 3'),
('Brother Xavier', 'Old Street 3'),
('Father Galbert', 'Old Street 3'),
('Lyssa Dawn', 'Old Street 3'),
('Sister Annabel', 'Old Street 3'),
('Sister Mary', 'Old Street 3');

-- --------------------------------------------------------

--
-- Rakenne taululle `horse`
--

CREATE TABLE `horse` (
  `Name` varchar(30) NOT NULL,
  `Breed` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `Age` int(11) NOT NULL,
  `stablesLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `horse`
--

INSERT INTO `horse` (`Name`, `Breed`, `Price`, `Age`, `stablesLocation`) VALUES
('Dover', 'Andalusian', 1600, 6, 'Old Street 4'),
('Dover', 'Friesian', 2600, 11, 'New Avenue 5'),
('Magnolia', 'Andalusian', 1100, 10, 'Old Street 4'),
('Roast', 'Andalusian', 1500, 8, 'Old Street 4'),
('Roast', 'Friesian', 3500, 8, 'New Avenue 5'),
('Wildfire', 'Arabian', 4300, 7, 'New Avenue 5');

-- --------------------------------------------------------

--
-- Rakenne taululle `house`
--

CREATE TABLE `house` (
  `Location` varchar(30) NOT NULL,
  `Build_year` int(11) DEFAULT NULL,
  `Value` double(10,2) DEFAULT NULL,
  `townLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `house`
--

INSERT INTO `house` (`Location`, `Build_year`, `Value`, `townLocation`) VALUES
('New Avenue 4', 1142, 5100.00, 'Green Hills'),
('New Avenue 5', 1143, 6250.00, 'Green Hills'),
('New Avenue 8', 1143, 3050.00, 'Green Hills'),
('Old Street 1', 1012, 3050.00, 'Green Hills'),
('Old Street 10', 1032, 3050.00, 'Green Hills'),
('Old Street 11', 1042, 3050.00, 'Green Hills'),
('Old Street 8', 1042, 3050.00, 'Green Hills'),
('Old Street 9', 1042, 2050.00, 'Green Hills');

-- --------------------------------------------------------

--
-- Rakenne taululle `house_owner`
--

CREATE TABLE `house_owner` (
  `Owner` varchar(20) NOT NULL,
  `houseLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `house_owner`
--

INSERT INTO `house_owner` (`Owner`, `houseLocation`) VALUES
('Arnold Hawk', 'New Avenue 8'),
('Judette Hawk', 'New Avenue 8'),
('Samuel Oldfield', 'Old Street 1'),
('Mike Miller', 'Old Street 8'),
('Sophia Danes', 'Old Street 9');

-- --------------------------------------------------------

--
-- Rakenne taululle `house_residents`
--

CREATE TABLE `house_residents` (
  `Residents` varchar(20) NOT NULL,
  `houseLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `house_residents`
--

INSERT INTO `house_residents` (`Residents`, `houseLocation`) VALUES
('Arnold Hawk', 'New Avenue 8'),
('Judette Hawk', 'New Avenue 8'),
('Samuel Oldfield', 'Old Street 1'),
('Jack Miller', 'Old Street 8'),
('Julia Miller', 'Old Street 8'),
('Mike Miller', 'Old Street 8'),
('Sarah Miller', 'Old Street 8'),
('Oliver Danes', 'Old Street 9'),
('Sophia Danes', 'Old Street 9'),
('Vivian Danes', 'Old Street 9');

-- --------------------------------------------------------

--
-- Näkymän vararakenne `most_valuable_item`
--
CREATE TABLE `most_valuable_item` (
`Name` varchar(30)
,`Price` double(10,2)
);

-- --------------------------------------------------------

--
-- Rakenne taululle `stables`
--

CREATE TABLE `stables` (
  `Location` varchar(30) NOT NULL,
  `Price` double(10,2) DEFAULT NULL,
  `Build_year` int(11) NOT NULL,
  `townLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `stables`
--

INSERT INTO `stables` (`Location`, `Price`, `Build_year`, `townLocation`) VALUES
('New Avenue 5', 12560.00, 1145, 'Green Hills'),
('Old Street 4', 7460.00, 1015, 'Green Hills');

-- --------------------------------------------------------

--
-- Rakenne taululle `stables_owner`
--

CREATE TABLE `stables_owner` (
  `Owner` varchar(30) NOT NULL,
  `stablesLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `stables_owner`
--

INSERT INTO `stables_owner` (`Owner`, `stablesLocation`) VALUES
('Harald Gambler', 'New Avenue 5'),
('Kaleb Fast', 'Old Street 4'),
('Minnie Fast', 'Old Street 4');

-- --------------------------------------------------------

--
-- Rakenne taululle `tailor_shop`
--

CREATE TABLE `tailor_shop` (
  `Location` varchar(30) NOT NULL,
  `Value` double(10,2) DEFAULT NULL,
  `Name` varchar(20) NOT NULL,
  `Build_year` int(11) NOT NULL,
  `townLocation` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `tailor_shop`
--

INSERT INTO `tailor_shop` (`Location`, `Value`, `Name`, `Build_year`, `townLocation`) VALUES
('Old Street 2', 1800.00, 'Mias Tailorings', 1021, 'Green Hills');

-- --------------------------------------------------------

--
-- Rakenne taululle `tailor_shop_owner`
--

CREATE TABLE `tailor_shop_owner` (
  `Owner` varchar(20) NOT NULL,
  `shopLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `tailor_shop_owner`
--

INSERT INTO `tailor_shop_owner` (`Owner`, `shopLocation`) VALUES
('Mia Weaver', 'Old Street 2'),
('Sarah Weaver', 'Old Street 2');

-- --------------------------------------------------------

--
-- Rakenne taululle `tailor_shop_workers`
--

CREATE TABLE `tailor_shop_workers` (
  `Workers` varchar(20) NOT NULL,
  `shopLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `tailor_shop_workers`
--

INSERT INTO `tailor_shop_workers` (`Workers`, `shopLocation`) VALUES
('Leo Needle', 'Old Street 2'),
('Mia Weaver', 'Old Street 2'),
('Sarah Weaver', 'Old Street 2'),
('Simon Leather', 'Old Street 2');

-- --------------------------------------------------------

--
-- Rakenne taululle `tavern`
--

CREATE TABLE `tavern` (
  `Location` varchar(30) NOT NULL,
  `Value` int(11) DEFAULT NULL,
  `Innkeeper` varchar(20) DEFAULT NULL,
  `townLocation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `tavern`
--

INSERT INTO `tavern` (`Location`, `Value`, `Innkeeper`, `townLocation`) VALUES
('Middle Square 2', 4500, 'Sophia Miller', 'Green Hills'),
('New avenue 4', 8500, 'Leonard Evening', 'Green Hills');

-- --------------------------------------------------------

--
-- Rakenne taululle `tavern_residents`
--

CREATE TABLE `tavern_residents` (
  `Residents` varchar(20) NOT NULL,
  `tavernLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `tavern_residents`
--

INSERT INTO `tavern_residents` (`Residents`, `tavernLocation`) VALUES
('Björg the cook', 'Middle Square 2'),
('Emma Miller', 'Middle Square 2'),
('Helena Berrypicker', 'Middle Square 2'),
('James', 'Middle Square 2'),
('Oscar Basicman', 'Middle Square 2'),
('Ronald Poorpocket', 'Middle Square 2'),
('Bert Big', 'New avenue 4'),
('Carl Cleaner', 'New avenue 4'),
('Donald the cook', 'New avenue 4'),
('Gerald Goblinhunter', 'New avenue 4'),
('Makayla Ruinsrunner', 'New avenue 4'),
('Missy Sureshot', 'New avenue 4');

-- --------------------------------------------------------

--
-- Rakenne taululle `town`
--

CREATE TABLE `town` (
  `Location` varchar(20) NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `town`
--

INSERT INTO `town` (`Location`, `Name`) VALUES
('Green Hills', 'Lockwoord Village');

-- --------------------------------------------------------

--
-- Rakenne taululle `ware_blacksmith`
--

CREATE TABLE `ware_blacksmith` (
  `Name` varchar(30) NOT NULL,
  `Stock_amount` int(11) NOT NULL,
  `Price` double(10,2) NOT NULL,
  `shopLocation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `ware_blacksmith`
--

INSERT INTO `ware_blacksmith` (`Name`, `Stock_amount`, `Price`, `shopLocation`) VALUES
('Copper Axe', 2, 25.00, 'Old Street 5'),
('Copper Battleaxe', 1, 35.00, 'Old Street 5'),
('Copper Bolt', 400, 1.00, 'Old Street 5'),
('Copper Boots', 2, 20.00, 'Old Street 5'),
('Copper bracers', 2, 15.00, 'Old Street 5'),
('Copper Breastplate', 2, 50.00, 'Old Street 5'),
('Copper chainmail', 2, 25.00, 'Old Street 5'),
('Copper Crossbow', 2, 30.00, 'Old Street 5'),
('Copper Dagger', 10, 10.00, 'Old Street 5'),
('Copper gloves', 2, 20.00, 'Old Street 5'),
('Copper Greatsword', 1, 35.00, 'Old Street 5'),
('Copper Helmet', 2, 25.00, 'Old Street 5'),
('Copper leggings', 2, 40.00, 'Old Street 5'),
('Copper Mace', 3, 20.00, 'Old Street 5'),
('Copper Pickaxe', 3, 20.00, 'Old Street 5'),
('Copper Sword', 6, 20.00, 'Old Street 5'),
('Iron Axe', 2, 35.00, 'Old Street 5'),
('Iron Battleaxe', 1, 55.00, 'Old Street 5'),
('Iron Bolt', 300, 2.00, 'Old Street 5'),
('Iron Boots', 2, 30.00, 'Old Street 5'),
('Iron bracers', 2, 25.00, 'Old Street 5'),
('Iron Breastplate', 2, 90.00, 'Old Street 5'),
('Iron chainmail', 2, 45.00, 'Old Street 5'),
('Iron Crossbow', 2, 50.00, 'Old Street 5'),
('Iron Dagger', 10, 10.00, 'Old Street 5'),
('Iron gloves', 2, 30.00, 'Old Street 5'),
('Iron Greatsword', 1, 55.00, 'Old Street 5'),
('Iron Helmet', 2, 35.00, 'Old Street 5'),
('Iron leggings', 2, 70.00, 'Old Street 5'),
('Iron Mace', 3, 20.00, 'Old Street 5'),
('Iron Pickaxe', 3, 30.00, 'Old Street 5'),
('Iron Sword', 6, 20.00, 'Old Street 5'),
('Steel Axe', 2, 55.00, 'Old Street 5'),
('Steel Battleaxe', 1, 125.00, 'Old Street 5'),
('Steel Bolt', 400, 3.00, 'Old Street 5'),
('Steel Boots', 2, 45.00, 'Old Street 5'),
('Steel bracers', 2, 35.00, 'Old Street 5'),
('Steel Breastplate', 2, 100.00, 'Old Street 5'),
('Steel chainmail', 2, 70.00, 'Old Street 5'),
('Steel Crossbow', 2, 60.00, 'Old Street 5'),
('Steel Dagger', 10, 30.00, 'Old Street 5'),
('Steel gloves', 2, 45.00, 'Old Street 5'),
('Steel Greatsword', 1, 125.00, 'Old Street 5'),
('Steel Helmet', 2, 60.00, 'Old Street 5'),
('Steel leggings', 2, 80.00, 'Old Street 5'),
('Steel Mace', 3, 50.00, 'Old Street 5'),
('Steel Pickaxe', 3, 50.00, 'Old Street 5'),
('Steel Pike', 2, 80.00, 'Old Street 5'),
('Steel Saddle', 1, 200.00, 'Old Street 5'),
('Steel Sword', 6, 60.00, 'Old Street 5');

-- --------------------------------------------------------

--
-- Rakenne taululle `ware_material_blacksmith`
--

CREATE TABLE `ware_material_blacksmith` (
  `material` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `ware_material_blacksmith`
--

INSERT INTO `ware_material_blacksmith` (`material`, `Name`) VALUES
('Copper, cloth string', 'Copper Axe'),
('Copper, cloth string', 'Copper Battleaxe'),
('Copper, cloth string', 'Copper Bolt'),
('Copper, cloth string', 'Copper Boots'),
('Copper, cloth string', 'Copper bracers'),
('Copper, cloth string', 'Copper Breastplate'),
('Copper, cloth string', 'Copper chainmail'),
('Copper, cloth string', 'Copper Crossbow'),
('Copper, cloth string', 'Copper Dagger'),
('Copper, cloth string', 'Copper gloves'),
('Copper, cloth string', 'Copper Greatsword'),
('Copper, cloth string', 'Copper Helmet'),
('Copper, cloth string', 'Copper leggings'),
('Copper, cloth string', 'Copper Mace'),
('Copper, cloth string', 'Copper Pickaxe'),
('Copper, cloth string', 'Copper Sword'),
('Iron, cloth string', 'Iron Axe'),
('Iron, cloth string', 'Iron Battleaxe'),
('Iron, cloth string', 'Iron Bolt'),
('Iron, cloth string', 'Iron Boots'),
('Iron, cloth string', 'Iron bracers'),
('Iron, cloth string', 'Iron Breastplate'),
('Iron, cloth string', 'Iron chainmail'),
('Iron, cloth string', 'Iron Crossbow'),
('Iron, cloth string', 'Iron Dagger'),
('Iron, cloth string', 'Iron gloves'),
('Iron, cloth string', 'Iron Greatsword'),
('Iron, cloth string', 'Iron Helmet'),
('Iron, cloth string', 'Iron leggings'),
('Iron, cloth string', 'Iron Mace'),
('Iron, cloth string', 'Iron Pickaxe'),
('Iron, cloth string', 'Iron Sword');

-- --------------------------------------------------------

--
-- Rakenne taululle `ware_material_tailor`
--

CREATE TABLE `ware_material_tailor` (
  `material` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `ware_material_tailor`
--

INSERT INTO `ware_material_tailor` (`material`, `Name`) VALUES
('Linen', 'Cloth bag'),
('Linen', 'Cloth cape'),
('Linen', 'Cloth gloves'),
('Linen', 'Cloth hat'),
('Linen', 'Cloth pants'),
('Linen', 'Cloth shirt'),
('Linen', 'Cloth shoes'),
('Leather', 'Leather bag'),
('Leather', 'Leather cape'),
('Leather', 'Leather gloves'),
('Leather', 'Leather hat'),
('Leather', 'Leather pants'),
('Leather', 'Leather shirt'),
('Leather', 'Leather shoes');

-- --------------------------------------------------------

--
-- Rakenne taululle `ware_tailor`
--

CREATE TABLE `ware_tailor` (
  `Name` varchar(20) NOT NULL,
  `Stock_amount` int(11) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `shopLocation` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `ware_tailor`
--

INSERT INTO `ware_tailor` (`Name`, `Stock_amount`, `Price`, `shopLocation`) VALUES
('Cloth bag', 5, 20, 'Old Street 2'),
('Cloth cape', 2, 10, 'Old Street 2'),
('Cloth gloves', 2, 7, 'Old Street 2'),
('Cloth hat', 3, 7, 'Old Street 2'),
('Cloth pants', 5, 15, 'Old Street 2'),
('Cloth shirt', 5, 15, 'Old Street 2'),
('Cloth shoes', 5, 7, 'Old Street 2'),
('Leather bag', 5, 40, 'Old Street 2'),
('Leather cape', 2, 20, 'Old Street 2'),
('Leather gloves', 2, 17, 'Old Street 2'),
('Leather hat', 3, 17, 'Old Street 2'),
('Leather pants', 5, 25, 'Old Street 2'),
('Leather shirt', 5, 25, 'Old Street 2'),
('Leather shoes', 15, 7, 'Old Street 2');

-- --------------------------------------------------------

--
-- Näkymän rakenne `most_valuable_item`
--
DROP TABLE IF EXISTS `most_valuable_item`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `most_valuable_item`  AS  select `ware_blacksmith`.`Name` AS `Name`,`ware_blacksmith`.`Price` AS `Price` from `ware_blacksmith` where (`ware_blacksmith`.`Price` = (select max(`ware_blacksmith`.`Price`) from `ware_blacksmith`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blacksmith_shop`
--
ALTER TABLE `blacksmith_shop`
  ADD PRIMARY KEY (`Location`),
  ADD KEY `shopRemoval` (`townLocation`);

--
-- Indexes for table `blacksmith_shop_owner`
--
ALTER TABLE `blacksmith_shop_owner`
  ADD PRIMARY KEY (`Owner`,`shopLocation`),
  ADD KEY `shop` (`shopLocation`);

--
-- Indexes for table `blacksmith_shop_workers`
--
ALTER TABLE `blacksmith_shop_workers`
  ADD PRIMARY KEY (`Workers`,`shopLocation`),
  ADD KEY `shopworkers` (`shopLocation`);

--
-- Indexes for table `church`
--
ALTER TABLE `church`
  ADD PRIMARY KEY (`Location`),
  ADD KEY `churchRemoval` (`townLocation`);

--
-- Indexes for table `church_location`
--
ALTER TABLE `church_location`
  ADD PRIMARY KEY (`Location`);

--
-- Indexes for table `church_residents`
--
ALTER TABLE `church_residents`
  ADD PRIMARY KEY (`Residents`,`churchLocation`),
  ADD KEY `churchResidentsRemoval` (`churchLocation`);

--
-- Indexes for table `horse`
--
ALTER TABLE `horse`
  ADD PRIMARY KEY (`Name`,`Breed`),
  ADD KEY `horseRemoval` (`stablesLocation`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`Location`),
  ADD KEY `houseRemoval` (`townLocation`);

--
-- Indexes for table `house_owner`
--
ALTER TABLE `house_owner`
  ADD PRIMARY KEY (`Owner`,`houseLocation`),
  ADD KEY `houseOwnerRemoval` (`houseLocation`);

--
-- Indexes for table `house_residents`
--
ALTER TABLE `house_residents`
  ADD PRIMARY KEY (`Residents`,`houseLocation`),
  ADD KEY `houseResidentsRemoval` (`houseLocation`);

--
-- Indexes for table `stables`
--
ALTER TABLE `stables`
  ADD PRIMARY KEY (`Location`),
  ADD KEY `stablesRemoval` (`townLocation`);

--
-- Indexes for table `stables_owner`
--
ALTER TABLE `stables_owner`
  ADD PRIMARY KEY (`Owner`,`stablesLocation`),
  ADD KEY `stablesOwnerRemoval` (`stablesLocation`);

--
-- Indexes for table `tailor_shop`
--
ALTER TABLE `tailor_shop`
  ADD PRIMARY KEY (`Location`),
  ADD KEY `tailor_removal` (`townLocation`);

--
-- Indexes for table `tailor_shop_owner`
--
ALTER TABLE `tailor_shop_owner`
  ADD PRIMARY KEY (`Owner`,`shopLocation`),
  ADD KEY `tailorOwner_removal` (`shopLocation`);

--
-- Indexes for table `tailor_shop_workers`
--
ALTER TABLE `tailor_shop_workers`
  ADD PRIMARY KEY (`Workers`,`shopLocation`),
  ADD KEY `tailorWorkersRemoval` (`shopLocation`);

--
-- Indexes for table `tavern`
--
ALTER TABLE `tavern`
  ADD PRIMARY KEY (`Location`),
  ADD KEY `residents_migration` (`townLocation`);

--
-- Indexes for table `tavern_residents`
--
ALTER TABLE `tavern_residents`
  ADD PRIMARY KEY (`Residents`,`tavernLocation`),
  ADD KEY `residents_removal` (`tavernLocation`);

--
-- Indexes for table `town`
--
ALTER TABLE `town`
  ADD PRIMARY KEY (`Location`);

--
-- Indexes for table `ware_blacksmith`
--
ALTER TABLE `ware_blacksmith`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `ware_removal` (`shopLocation`);

--
-- Indexes for table `ware_material_blacksmith`
--
ALTER TABLE `ware_material_blacksmith`
  ADD PRIMARY KEY (`material`,`Name`),
  ADD KEY `material_removal` (`Name`);

--
-- Indexes for table `ware_material_tailor`
--
ALTER TABLE `ware_material_tailor`
  ADD PRIMARY KEY (`material`,`Name`),
  ADD KEY `tailorMaterialRemoval` (`Name`);

--
-- Indexes for table `ware_tailor`
--
ALTER TABLE `ware_tailor`
  ADD PRIMARY KEY (`Name`),
  ADD KEY `tailorWareRemoval` (`shopLocation`);

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `blacksmith_shop`
--
ALTER TABLE `blacksmith_shop`
  ADD CONSTRAINT `shopRemoval` FOREIGN KEY (`townLocation`) REFERENCES `town` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `blacksmith_shop_owner`
--
ALTER TABLE `blacksmith_shop_owner`
  ADD CONSTRAINT `shop` FOREIGN KEY (`shopLocation`) REFERENCES `blacksmith_shop` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `blacksmith_shop_workers`
--
ALTER TABLE `blacksmith_shop_workers`
  ADD CONSTRAINT `shopworkers` FOREIGN KEY (`shopLocation`) REFERENCES `blacksmith_shop` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `church`
--
ALTER TABLE `church`
  ADD CONSTRAINT `churchRemoval` FOREIGN KEY (`townLocation`) REFERENCES `town` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `church_location`
--
ALTER TABLE `church_location`
  ADD CONSTRAINT `churchLocationRemoval` FOREIGN KEY (`Location`) REFERENCES `church` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `church_residents`
--
ALTER TABLE `church_residents`
  ADD CONSTRAINT `churchResidentsRemoval` FOREIGN KEY (`churchLocation`) REFERENCES `church` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `horse`
--
ALTER TABLE `horse`
  ADD CONSTRAINT `horseRemoval` FOREIGN KEY (`stablesLocation`) REFERENCES `stables` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `house`
--
ALTER TABLE `house`
  ADD CONSTRAINT `houseRemoval` FOREIGN KEY (`townLocation`) REFERENCES `town` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `house_owner`
--
ALTER TABLE `house_owner`
  ADD CONSTRAINT `houseOwnerRemoval` FOREIGN KEY (`houseLocation`) REFERENCES `house` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `house_residents`
--
ALTER TABLE `house_residents`
  ADD CONSTRAINT `houseResidentsRemoval` FOREIGN KEY (`houseLocation`) REFERENCES `house` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `stables`
--
ALTER TABLE `stables`
  ADD CONSTRAINT `stablesRemoval` FOREIGN KEY (`townLocation`) REFERENCES `town` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `stables_owner`
--
ALTER TABLE `stables_owner`
  ADD CONSTRAINT `stablesOwnerRemoval` FOREIGN KEY (`stablesLocation`) REFERENCES `stables` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `tailor_shop`
--
ALTER TABLE `tailor_shop`
  ADD CONSTRAINT `tailor_removal` FOREIGN KEY (`townLocation`) REFERENCES `town` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `tailor_shop_owner`
--
ALTER TABLE `tailor_shop_owner`
  ADD CONSTRAINT `tailorOwner_removal` FOREIGN KEY (`shopLocation`) REFERENCES `tailor_shop` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `tailor_shop_workers`
--
ALTER TABLE `tailor_shop_workers`
  ADD CONSTRAINT `tailorWorkersRemoval` FOREIGN KEY (`shopLocation`) REFERENCES `tailor_shop` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `tavern`
--
ALTER TABLE `tavern`
  ADD CONSTRAINT `residents_migration` FOREIGN KEY (`townLocation`) REFERENCES `town` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tavern_ibfk_1` FOREIGN KEY (`townLocation`) REFERENCES `town` (`Location`);

--
-- Rajoitteet taululle `tavern_residents`
--
ALTER TABLE `tavern_residents`
  ADD CONSTRAINT `residents_removal` FOREIGN KEY (`tavernLocation`) REFERENCES `tavern` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `ware_blacksmith`
--
ALTER TABLE `ware_blacksmith`
  ADD CONSTRAINT `ware_removal` FOREIGN KEY (`shopLocation`) REFERENCES `blacksmith_shop` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `ware_material_blacksmith`
--
ALTER TABLE `ware_material_blacksmith`
  ADD CONSTRAINT `material_removal` FOREIGN KEY (`Name`) REFERENCES `ware_blacksmith` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `ware_material_tailor`
--
ALTER TABLE `ware_material_tailor`
  ADD CONSTRAINT `tailorMaterialRemoval` FOREIGN KEY (`Name`) REFERENCES `ware_tailor` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `ware_tailor`
--
ALTER TABLE `ware_tailor`
  ADD CONSTRAINT `tailorWareRemoval` FOREIGN KEY (`shopLocation`) REFERENCES `tailor_shop` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
