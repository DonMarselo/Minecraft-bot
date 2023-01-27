-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 27, 2023 alle 22:57
-- Versione del server: 10.4.24-MariaDB
-- Versione PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minecraft_recipes`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `recipes`
--

CREATE TABLE `recipes` (
  `id` int(4) NOT NULL,
  `command_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `materials` varchar(200) NOT NULL,
  `gif` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `recipes`
--

INSERT INTO `recipes` (`id`, `command_name`, `name`, `image`, `materials`, `gif`) VALUES
(1, 'wood_planks', 'Wood Planks', 'https://www.minecraftcrafting.info/imgs/craft_wood.gif', '1 Oak Plank', 1),
(2, 'crafting_table', 'Crafting Table', 'https://www.minecraftcrafting.info/imgs/craft_workbench.png', '4 Wood Planks', 0),
(3, 'sas', 'Marselo', 'https://media.fstatic.com/8BTp-IMHFS_JGQZ5GOD1A77BhNQ=/fit-in/640x480/smart/filters:format(webp)/media/movies/covers/2020/07/IMG_4908.PNG', 'TANTA FEDE NEL SAS', 0),
(4, 'sticks', 'Sticks', 'https://www.minecraftcrafting.info/imgs/craft_stick.png', '2 Wood Planks', 0),
(5, 'furnace', 'Furnace', 'https://www.minecraftcrafting.info/imgs/craft_furnace.gif', '8 Cobblestone', 1),
(7, 'sword', 'Sword', 'https://www.minecraftcrafting.info/imgs/craft_swords.gif', '2 Wood Planks/Iron Ingots/\r\nGold Ingots/Diamonds\r\n1 Stick', 1),
(8, 'armor_helmet', 'Armor Helmet', 'https://www.minecraftcrafting.info/imgs/craft_helmets.gif', '5 Leather/Iron Ingots/\r\nGold Ingots/Diamonds', 1),
(9, 'armor_chestplate', 'Armor Chestplate', 'https://www.minecraftcrafting.info/imgs/craft_chestplates.gif', '8 Leather/Iron Ingots/\r\nGold Ingots/Diamonds', 1),
(10, 'armor_leggings', 'Armor Leggings', 'https://www.minecraftcrafting.info/imgs/craft_leggings.gif', '7 Leather/Iron Ingots/\r\nGold Ingots/Diamonds', 1),
(11, 'armor_boots', 'Armor Boots', 'https://www.minecraftcrafting.info/imgs/craft_boots.gif', '4 Leather/Iron Ingots/\r\nGold Ingots/Diamonds', 1),
(12, 'bow', 'Bow', 'https://www.minecraftcrafting.info/imgs/craft_bow.png', '3 Sticks\r\n2 Strings', 0),
(13, 'arrows', 'Arrows', 'https://www.minecraftcrafting.info/imgs/craft_arrow.png', '1 Flint\r\n1 Stick\r\n1 Feather', 0),
(14, 'rails', 'Rails', 'https://www.minecraftcrafting.info/imgs/craft_tracks.png', '6 Iron ingots\r\n1 Stick', 0),
(15, 'bread', 'Bread', 'https://www.minecraftcrafting.info/imgs/craft_bread.png', '3 Wheat', 0),
(16, 'cake', 'Cake', 'https://www.minecraftcrafting.info/imgs/craft_cake.png', '3 Milk Buckets\r\n2 Sugar\r\n1 Egg\r\n3 Wheats', 0),
(17, 'cookies', 'Cookies', 'https://www.minecraftcrafting.info/imgs/craft_cookie.png', '2 Wheats\r\n1 Cocoa Beans', 0),
(18, 'bed', 'Bed', 'https://www.minecraftcrafting.info/imgs/craft_bed.png', '3 Wood Planks\r\n3 Wool', 0),
(19, 'torch', 'Torch', 'https://www.minecraftcrafting.info/imgs/craft_torch.png', '1 Cooal\r\n1 Stick', 0),
(20, 'ladders', 'Ladders', 'https://www.minecraftcrafting.info/imgs/new_craft_ladder.png', '7 Sticks', 0),
(21, 'boat', 'Boat', 'https://www.minecraftcrafting.info/imgs/craft_boat.png', '5 Wood Planks', 0),
(22, 'tnt', 'TNT', 'https://www.minecraftcrafting.info/imgs/craft_tnt.png', '5 Gunpowder\r\n4 Sand\r\n', 0),
(23, 'bookshelf', 'Bookshelf', 'https://www.minecraftcrafting.info/imgs/craft_bookshelf.png', '6 Wood PLanks\r\n3 Books', 0),
(24, 'pickaxe', 'Pickaxe', 'https://www.minecraftcrafting.info/imgs/craft_pickaxes.gif', '3 Wood Planks/Iron Ingots/\r\nGold Ingots/Diamonds\r\n2 Sticks', 1),
(25, 'axe', 'Axe', 'https://www.minecraftcrafting.info/imgs/craft_axes.gif', '3 Wood Planks/Iron Ingots/\r\nGold Ingots/Diamonds\r\n2 Sticks', 1),
(26, 'shovels', 'Shovels', 'https://www.minecraftcrafting.info/imgs/craft_shovels.gif', '1 Wood Planks/Iron Ingots/\r\nGold Ingots/Diamonds\r\n2 Sticks', 1),
(27, 'hoes', 'Hoes', 'https://www.minecraftcrafting.info/imgs/craft_hoes.gif', '2 Wood Planks/Iron Ingots/\r\nGold Ingots/Diamonds\r\n2 Sticks', 1),
(28, 'fishing_rod', 'Fishing Rod', 'https://www.minecraftcrafting.info/imgs/craft_fishingrod.png', '3 Sticks\r\n2 Strings', 0);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
