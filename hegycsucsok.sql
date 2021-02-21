-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Feb 15. 12:31
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `hegycsucsok`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csucs`
--

CREATE TABLE `csucs` (
  `az` int(2) NOT NULL,
  `nev` varchar(14) CHARACTER SET utf8 DEFAULT NULL,
  `magassag` int(4) DEFAULT NULL,
  `edatum` date DEFAULT NULL,
  `orszag` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `mazon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `csucs`
--

INSERT INTO `csucs` (`az`, `nev`, `magassag`, `edatum`, `orszag`, `mazon`) VALUES
(19, 'Csomolungma', 8848, '1953-05-29', 'Kína, Nepál', 8),
(20, 'K2', 8611, '1954-07-31', 'Kína, Pakisztán', 27),
(21, 'Kancsendzönga', 8586, '1955-05-25', 'India, Nepál', 8),
(22, 'Lhoce', 8516, '1956-05-18', 'Kína, Nepál', 8),
(23, 'Makalu', 8463, '1955-05-15', 'Kína, Nepál', 8),
(24, 'Cso-Oju', 8201, '1954-10-19', 'Kína, Nepál', 1),
(25, 'Dhaulagiri', 8167, '1960-05-13', 'Nepál', 8),
(26, 'Manaszlu', 8163, '1956-05-09', 'Nepál', 3),
(27, 'Nanga Parbat', 8126, '1953-07-03', 'Pakisztán', 8),
(28, 'Annapurna', 8091, '1950-06-03', 'Nepál', 27),
(29, 'Gasherbrum I.', 8068, '1958-07-05', 'Kína, Pakisztán', 5),
(30, 'Broad Peak', 8047, '1957-06-09', 'Kína, Pakisztán', 1),
(31, 'Gasherbrum II.', 8035, '1956-07-08', 'Kína, Pakisztán', 1),
(32, 'Sisapangma', 8027, '1964-05-02', 'Kína', 27);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `maszo`
--

CREATE TABLE `maszo` (
  `az` int(2) NOT NULL,
  `nev` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `ferfi` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `maszo`
--

INSERT INTO `maszo` (`az`, `nev`, `ferfi`) VALUES
(1, 'Ács Zoltán', 1),
(2, 'Baranyi Éva', 0),
(3, 'Barna Dániel', 1),
(4, 'Csíkos József', 1),
(5, 'Csizmadia Péter', 1),
(6, 'Csollány Katalin', 0),
(7, 'Decsi István', 1),
(8, 'Erőss Zsolt', 1),
(9, 'Gál László', 1),
(10, 'Jelinkó Attila', 1),
(11, 'Kiss Péter', 1),
(12, 'Klein Dávid', 1),
(13, 'Koncz Ákos', 1),
(14, 'Maku László', 1),
(15, 'Mécs László', 1),
(16, 'Nagy Sándor', 1),
(17, 'Nedeczky Júlia', 0),
(18, 'Pajor István', 1),
(19, 'Sterczer Hilda', 0),
(20, 'Straub József', 1),
(21, 'Szendrő Szabolcs', 1),
(22, 'Tarjányi István', 1),
(23, 'Tóth Csaba', 1),
(24, 'Ugyan Anita', 0),
(25, 'Várkonyi László', 1),
(26, 'Vörös László', 1),
(27, 'idegen', 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `csucs`
--
ALTER TABLE `csucs`
  ADD PRIMARY KEY (`az`),
  ADD KEY `mazon` (`mazon`);

--
-- A tábla indexei `maszo`
--
ALTER TABLE `maszo`
  ADD PRIMARY KEY (`az`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `csucs`
--
ALTER TABLE `csucs`
  MODIFY `az` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT a táblához `maszo`
--
ALTER TABLE `maszo`
  MODIFY `az` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `csucs`
--
ALTER TABLE `csucs`
  ADD CONSTRAINT `mkulcs` FOREIGN KEY (`mazon`) REFERENCES `maszo` (`az`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
