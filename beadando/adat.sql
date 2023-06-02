-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Máj 24. 20:45
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `adat`
--
CREATE DATABASE IF NOT EXISTS `adat` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `adat`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `europa`
--

CREATE TABLE `europa` (
  `ut` varchar(50) NOT NULL,
  `eurout` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `europa`
--

INSERT INTO `europa` (`ut`, `eurout`) VALUES
('M0', 'E60'),
('M0', 'E71'),
('M0', 'E75'),
('M0', 'E77'),
('M1', 'E60'),
('M1', 'E65'),
('M1', 'E75'),
('M15', 'E65'),
('M15', 'E75'),
('M2', 'E77'),
('M3', 'E573'),
('M3', 'E579'),
('M3', 'E71'),
('M3', 'E79'),
('M30', 'E71'),
('M30', 'E79'),
('M31', 'E71'),
('M34', 'E573'),
('M35', 'E573'),
('M35', 'E79'),
('M4', 'E60'),
('M4', 'E79'),
('M43', 'E68'),
('M5', 'E66'),
('M5', 'E75'),
('M6', 'E66'),
('M6', 'E73'),
('M7', 'E65'),
('M7', 'E66'),
('M7', 'E71'),
('M70', 'E653'),
('M8', 'E66'),
('M80', 'E66'),
('M86', 'E65'),
('M90', 'E661'),
('ut', 'eurout');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `palya`
--

CREATE TABLE `palya` (
  `ut` varchar(50) NOT NULL,
  `kesz` int(11) DEFAULT NULL,
  `epul` int(11) DEFAULT NULL,
  `terv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `palya`
--

INSERT INTO `palya` (`ut`, `kesz`, `epul`, `terv`) VALUES
('M0', 76, 0, 32),
('M1', 159, 0, 0),
('M100', 0, 0, 126),
('M15', 14, 0, 0),
('M19', 9, 0, 0),
('M2', 30, 0, 38),
('M25', 18, 0, 0),
('M3', 269, 0, 27),
('M30', 28, 56, 0),
('M31', 12, 0, 0),
('M32', 0, 0, 63),
('M34', 0, 0, 36),
('M35', 67, 0, 0),
('M4', 98, 27, 97),
('M43', 57, 0, 0),
('M44', 76, 14, 20),
('M49', 0, 0, 45),
('M5', 160, 0, 0),
('M51', 4, 0, 0),
('M6', 175, 19, 0),
('M60', 31, 0, 66),
('M7', 226, 0, 0),
('M70', 21, 0, 0),
('M76', 6, 3, 74),
('M8', 10, 0, 153),
('M80', 7, 21, 0),
('M81', 0, 0, 114),
('M83', 0, 36, 0),
('M85', 89, 6, 0),
('M86', 64, 0, 58),
('M87', 1, 0, 21),
('M9', 21, 0, 10),
('M90', 0, 0, 221),
('ut', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telepules`
--

CREATE TABLE `telepules` (
  `id` int(11) NOT NULL,
  `ut` varchar(50) DEFAULT NULL,
  `nev` varchar(50) DEFAULT NULL,
  `hatar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `telepules`
--

INSERT INTO `telepules` (`id`, `ut`, `nev`, `hatar`) VALUES
(0, 'ut', 'nev', 'hatar'),
(1, 'M32', 'Abony', ''),
(2, 'M4', 'Abony', ''),
(3, 'M8', 'Abony', ''),
(4, 'M100', 'Albertirsa', ''),
(5, 'M4', 'Albertirsa', ''),
(6, 'M7', 'Balatonfőkajár', ''),
(7, 'M8', 'Balatonfőkajár', ''),
(8, 'M60', 'Barcs', 'Horvátország'),
(9, 'M44', 'Békéscsaba', ''),
(10, 'M3', 'Beregdaróc', 'Ukrajna'),
(11, 'M35', 'Berettyóújfalu', ''),
(12, 'M4', 'Berettyóújfalu', ''),
(13, 'M0', 'Biatorbágy', ''),
(14, 'M1', 'Biatorbágy', ''),
(15, 'M6', 'Bóly', ''),
(16, 'M60', 'Bóly', ''),
(17, 'M90', 'Bóly', ''),
(18, 'M0', 'Budafok-Tétény', ''),
(19, 'M6', 'Budafok-Tétény', ''),
(20, 'M0', 'Budaörs', ''),
(21, 'M1', 'Budapest', ''),
(22, 'M3', 'Budapest', ''),
(23, 'M4', 'Budapest', ''),
(24, 'M5', 'Budapest', ''),
(25, 'M51', 'Budapest', ''),
(26, 'M7', 'Budapest', ''),
(27, 'M43', 'Csanádpalota', 'Románia'),
(28, 'M49', 'Csenger', 'Románia'),
(29, 'M85', 'Csorna', ''),
(30, 'M86', 'Csorna', ''),
(31, 'M35', 'Debrecen', ''),
(32, 'M0', 'Dunaharaszti', ''),
(33, 'M51', 'Dunaharaszti', ''),
(34, 'M0', 'Dunakeszi', ''),
(35, 'M2', 'Dunakeszi', ''),
(36, 'M6', 'Dunaújváros', ''),
(37, 'M8', 'Dunaújváros', ''),
(38, 'M25', 'Eger', ''),
(39, 'M3', 'Emőd', ''),
(40, 'M30', 'Emőd', ''),
(41, 'M100', 'Ercsi', ''),
(42, 'M6', 'Ercsi', ''),
(43, 'M100', 'Esztergom', 'Szlovákia'),
(44, 'M3', 'Gödöllő', ''),
(45, 'M31', 'Gödöllő', ''),
(46, 'M3', 'Görbeháza', ''),
(47, 'M35', 'Görbeháza', ''),
(48, 'M0', 'Gyál', ''),
(49, 'M5', 'Gyál', ''),
(50, 'M1', 'Győr', ''),
(51, 'M19', 'Győr', ''),
(52, 'M83', 'Győr', ''),
(53, 'M85', 'Győr', ''),
(54, 'M1', 'Hegyeshalom', 'Ausztria'),
(55, 'M7', 'Hollád', ''),
(56, 'M76', 'Hollád', ''),
(57, 'M90', 'Hollád', ''),
(58, 'M2', 'Hont', ''),
(59, 'M6', 'Ivándárda', 'Horvátország'),
(60, 'M25', 'Kál', ''),
(61, 'M3', 'Kál', ''),
(62, 'M32', 'Kál', ''),
(63, 'M90', 'Kaposvár', ''),
(64, 'M5', 'Kecskemét', ''),
(65, 'M8', 'Kecskemét', ''),
(66, 'M76', 'Keszthely', ''),
(67, 'M1', 'Kisigmánd', ''),
(68, 'M81', 'Kisigmánd', ''),
(69, 'M81', 'Komárom', 'Szlovákia'),
(70, 'M76', 'Körmend', ''),
(71, 'M80', 'Körmend', ''),
(72, 'M86', 'Körmend', ''),
(73, 'M87', 'Kőszeg', 'Ausztria'),
(74, 'M7', 'Letenye', 'Horvátország'),
(75, 'M70', 'Letenye', ''),
(76, 'M1', 'Levél', ''),
(77, 'M15', 'Levél', ''),
(78, 'M86', 'Levél', ''),
(79, 'M43', 'Makó', ''),
(80, 'M100', 'Martonvásár', ''),
(81, 'M49', 'Mátészalka', ''),
(82, 'M30', 'Miskolc', ''),
(83, 'M7', 'Nagykanizsa', ''),
(84, 'M4', 'Nagykereki', 'Románia'),
(85, 'M44', 'Nagykőrös', ''),
(86, 'M8', 'Nagykőrös', ''),
(87, 'M0', 'Nagytarcsa', ''),
(88, 'M31', 'Nagytarcsa', ''),
(89, 'M9', 'Nemesnádudvar', ''),
(90, 'M3', 'Nyíregyháza', ''),
(91, 'M3', 'Őr', ''),
(92, 'M49', 'Őr', ''),
(93, 'M83', 'Pápa', ''),
(94, 'M2', 'Parasapuszta', 'Szlovákia'),
(95, 'M60', 'Pécs', ''),
(96, 'M80', 'Rábafüzes', 'Ausztria'),
(97, 'M15', 'Rajka', 'Szlovákia'),
(98, 'M2', 'Rétság', ''),
(99, 'M5', 'Röszke', 'Szerbia'),
(100, 'M8', 'Sárbogárd', ''),
(101, 'M81', 'Sárbogárd', ''),
(102, 'M7', 'Siófok', ''),
(103, 'M85', 'Sopron', 'Ausztria'),
(104, 'M44', 'Szarvas', ''),
(105, 'M43', 'Szeged', ''),
(106, 'M5', 'Szeged', ''),
(107, 'M90', 'Szeged', ''),
(108, 'M7', 'Székesfehérvár', ''),
(109, 'M81', 'Székesfehérvár', ''),
(110, 'M6', 'Szekszárd', ''),
(111, 'M9', 'Szekszárd', ''),
(112, 'M60', 'Szigetvár', ''),
(113, 'M90', 'Szigetvár', ''),
(114, 'M86', 'Szombathely', ''),
(115, 'M87', 'Szombathely', ''),
(116, 'M90', 'Tompa', ''),
(117, 'M70', 'Tornyiszentmiklós', 'Szlovénia'),
(118, 'M30', 'Tornyosnémeti', 'Szlovákia'),
(119, 'M0', 'Törökbálint', ''),
(120, 'M7', 'Törökbálint', ''),
(121, 'M100', 'Újhartyán', ''),
(122, 'M5', 'Újhartyán', ''),
(123, 'M0', 'Újpalota', ''),
(124, 'M3', 'Újpalota', ''),
(125, 'M0', 'Üröm', ''),
(126, 'M2', 'Vác', ''),
(127, 'M3', 'Vásárosnamény', ''),
(128, 'M34', 'Vásárosnamény', ''),
(129, 'M0', 'Vecsés', ''),
(130, 'M4', 'Vecsés', ''),
(131, 'M34', 'Záhony', 'Ukrajna'),
(132, 'M76', 'Zalaegerszeg', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vege`
--

CREATE TABLE `vege` (
  `id` int(11) NOT NULL,
  `ut` varchar(50) DEFAULT NULL,
  `telepid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `vege`
--

INSERT INTO `vege` (`id`, `ut`, `telepid`) VALUES
(0, 'ut', 0),
(1, 'M0', 13),
(2, 'M0', 20),
(3, 'M1', 21),
(4, 'M1', 54),
(5, 'M2', 34),
(6, 'M2', 94),
(7, 'M3', 22),
(8, 'M3', 10),
(9, 'M4', 23),
(10, 'M4', 84),
(11, 'M5', 24),
(12, 'M5', 99),
(13, 'M6', 19),
(14, 'M6', 59),
(15, 'M7', 26),
(16, 'M7', 74),
(17, 'M8', 6),
(18, 'M8', 3),
(19, 'M9', 111),
(20, 'M9', 89),
(21, 'M15', 77),
(22, 'M15', 97),
(23, 'M19', 51),
(24, 'M19', 51),
(25, 'M25', 60),
(26, 'M25', 38),
(27, 'M30', 40),
(28, 'M30', 118),
(29, 'M31', 88),
(30, 'M31', 45),
(31, 'M32', 1),
(32, 'M32', 62),
(33, 'M34', 128),
(34, 'M34', 131),
(35, 'M35', 47),
(36, 'M35', 11),
(37, 'M43', 105),
(38, 'M43', 27),
(39, 'M44', 85),
(40, 'M44', 9),
(41, 'M49', 92),
(42, 'M49', 28),
(43, 'M51', 25),
(44, 'M51', 33),
(45, 'M60', 16),
(46, 'M60', 8),
(47, 'M70', 75),
(48, 'M70', 117),
(49, 'M76', 56),
(50, 'M76', 70),
(51, 'M80', 96),
(52, 'M80', 71),
(53, 'M81', 69),
(54, 'M81', 101),
(55, 'M83', 52),
(56, 'M83', 93),
(57, 'M85', 53),
(58, 'M85', 103),
(59, 'M86', 72),
(60, 'M86', 78),
(61, 'M87', 115),
(62, 'M87', 73),
(63, 'M90', 57),
(64, 'M90', 107),
(65, 'M100', 43),
(66, 'M100', 4);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `europa`
--
ALTER TABLE `europa`
  ADD PRIMARY KEY (`ut`,`eurout`);

--
-- A tábla indexei `palya`
--
ALTER TABLE `palya`
  ADD PRIMARY KEY (`ut`);

--
-- A tábla indexei `telepules`
--
ALTER TABLE `telepules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_telepules_palya` (`ut`);

--
-- A tábla indexei `vege`
--
ALTER TABLE `vege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vege_palya` (`ut`),
  ADD KEY `fk_vege_telepules` (`telepid`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `europa`
--
ALTER TABLE `europa`
  ADD CONSTRAINT `fk_europa_palya` FOREIGN KEY (`ut`) REFERENCES `palya` (`ut`);

--
-- Megkötések a táblához `telepules`
--
ALTER TABLE `telepules`
  ADD CONSTRAINT `fk_telepules_palya` FOREIGN KEY (`ut`) REFERENCES `palya` (`ut`);

--
-- Megkötések a táblához `vege`
--
ALTER TABLE `vege`
  ADD CONSTRAINT `fk_vege_palya` FOREIGN KEY (`ut`) REFERENCES `palya` (`ut`),
  ADD CONSTRAINT `fk_vege_telepules` FOREIGN KEY (`telepid`) REFERENCES `telepules` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
