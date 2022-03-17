-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql
-- Généré le : jeu. 17 mars 2022 à 10:15
-- Version du serveur : 8.0.28
-- Version de PHP : 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wikifoot`
--

-- --------------------------------------------------------

--
-- Structure de la table `competition`
--

CREATE TABLE `competition` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `competition`
--

INSERT INTO `competition` (`id`, `name`, `type`, `country_id`) VALUES
(1, 'UEFA Champions League', 'cup', 1),
(2, 'Ligue 2', 'championship', 2),
(3, 'Ligue 1', 'championship', 2),
(4, 'Coupe de France', 'cup', 2),
(5, 'Premier League', 'championship', 3),
(6, 'Primera Division', 'championship', 4),
(7, 'Bundesliga', 'championship', 5),
(8, 'Serie A', 'championship', 6);

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Europe'),
(2, 'France'),
(3, 'England'),
(4, 'Spain'),
(5, 'Germany'),
(6, 'Italia'),
(7, 'Brazil'),
(8, 'Austria'),
(9, 'Argentina'),
(10, 'United State'),
(11, 'Marocco'),
(12, 'Algeria'),
(13, 'Poland'),
(14, 'Portugal'),
(15, 'Sénegal');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220310091405', '2022-03-10 10:25:19', 762);

-- --------------------------------------------------------

--
-- Structure de la table `palmares`
--

CREATE TABLE `palmares` (
  `id` int NOT NULL,
  `competition_id` int DEFAULT NULL,
  `team_id` int DEFAULT NULL,
  `year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `palmares`
--

INSERT INTO `palmares` (`id`, `competition_id`, `team_id`, `year`) VALUES
(1, 4, 7, '1982'),
(2, 4, 7, '1983'),
(3, 4, 7, '1993'),
(4, 4, 7, '1995'),
(5, 4, 7, '1998'),
(6, 4, 7, '2004'),
(7, 4, 7, '2006'),
(8, 4, 7, '2010'),
(9, 4, 7, '2015'),
(10, 4, 7, '2016'),
(11, 4, 7, '2017'),
(12, 4, 7, '2018'),
(13, 4, 7, '2020'),
(14, 4, 7, '2021'),
(15, 4, 2, '1924'),
(16, 4, 2, '1926'),
(17, 4, 2, '1927'),
(18, 4, 2, '1935'),
(19, 4, 2, '1938'),
(20, 4, 2, '1943'),
(21, 4, 2, '1969'),
(22, 4, 2, '1972'),
(23, 4, 2, '1976'),
(24, 4, 2, '1989'),
(25, 4, 10, '1962'),
(26, 4, 10, '1968'),
(27, 4, 10, '1970'),
(28, 4, 10, '1974'),
(29, 4, 10, '1975'),
(30, 4, 10, '1977'),
(31, 4, 4, '1946'),
(32, 4, 4, '1947'),
(33, 4, 4, '1948'),
(34, 4, 4, '1953'),
(35, 4, 4, '1955'),
(36, 4, 4, '2011'),
(37, 4, 19, '1960'),
(38, 4, 19, '1963'),
(39, 4, 19, '1980'),
(40, 4, 19, '1985'),
(41, 4, 19, '1991'),
(42, 4, 6, '1964'),
(43, 4, 6, '1967'),
(44, 4, 6, '1973'),
(45, 4, 6, '2008'),
(46, 4, 6, '2012'),
(47, 4, 9, '1941'),
(48, 4, 9, '1986'),
(49, 4, 9, '1987'),
(50, 4, 9, '2013'),
(51, 4, 15, '1979'),
(52, 4, 15, '1999'),
(53, 4, 15, '2000'),
(54, 4, 11, '1965'),
(55, 4, 11, '1971'),
(56, 4, 11, '2019'),
(57, 4, 20, '1951'),
(58, 4, 20, '1966'),
(59, 4, 20, '2001'),
(60, 4, 5, '1952'),
(61, 4, 5, '1954'),
(62, 4, 5, '1997'),
(63, 4, 3, '1929'),
(64, 4, 3, '1990'),
(65, 4, 18, '1950'),
(66, 4, 18, '1958'),
(67, 4, 16, '1984'),
(68, 4, 16, '1988'),
(69, 4, 8, '2002'),
(70, 3, 4, '2021'),
(71, 3, 7, '2020'),
(72, 3, 7, '2019'),
(73, 3, 7, '2018'),
(74, 3, 19, '2017'),
(75, 3, 7, '2016'),
(76, 3, 7, '2015'),
(77, 3, 7, '2014'),
(78, 3, 7, '2013'),
(79, 3, 7, '2012'),
(80, 3, 4, '2011'),
(81, 3, 2, '2010'),
(82, 3, 9, '2009'),
(83, 3, 6, '2008'),
(84, 3, 6, '2007'),
(85, 3, 6, '2006'),
(86, 3, 6, '2005'),
(87, 3, 6, '2004'),
(88, 3, 6, '2003'),
(89, 3, 6, '2002'),
(90, 3, 15, '2001'),
(91, 3, 19, '2000'),
(92, 3, 9, '1999'),
(93, 3, 17, '1998'),
(94, 3, 19, '1997'),
(95, 3, 15, '1995'),
(96, 3, 7, '1994'),
(97, 3, 2, '1993'),
(98, 3, 2, '1992'),
(99, 3, 2, '1991'),
(100, 3, 2, '1990'),
(101, 3, 2, '1989'),
(102, 3, 19, '1988'),
(103, 3, 9, '1987'),
(104, 3, 7, '1986'),
(105, 3, 9, '1985'),
(106, 3, 9, '1984'),
(107, 3, 15, '1983'),
(108, 3, 19, '1982'),
(109, 3, 10, '1981'),
(110, 3, 15, '1980'),
(111, 3, 20, '1979'),
(112, 3, 19, '1978'),
(113, 3, 15, '1977'),
(114, 3, 10, '1976'),
(115, 3, 10, '1975'),
(116, 3, 10, '1974'),
(117, 3, 15, '1973'),
(118, 3, 2, '1972'),
(119, 3, 2, '1971'),
(120, 3, 10, '1970'),
(121, 3, 10, '1969'),
(122, 3, 10, '1968'),
(123, 3, 10, '1967'),
(124, 3, 15, '1966'),
(125, 3, 15, '1965'),
(126, 3, 10, '1964'),
(127, 3, 19, '1963'),
(128, 3, 18, '1962'),
(129, 3, 19, '1961'),
(130, 3, 18, '1960'),
(131, 3, 5, '1959'),
(132, 3, 18, '1958'),
(133, 3, 10, '1957'),
(134, 3, 5, '1956'),
(135, 3, 18, '1955'),
(136, 3, 4, '1954'),
(137, 3, 18, '1953'),
(138, 3, 5, '1952'),
(139, 3, 5, '1951'),
(140, 3, 9, '1950'),
(141, 3, 18, '1949'),
(142, 3, 2, '1948'),
(143, 3, 4, '1946'),
(145, 5, 26, '2021'),
(146, 5, 25, '2020'),
(147, 5, 26, '2019'),
(148, 5, 26, '2018'),
(149, 5, 23, '2017'),
(150, 5, 33, '2016'),
(151, 5, 23, '2015'),
(152, 5, 26, '2014'),
(153, 5, 27, '2013'),
(154, 5, 26, '2012'),
(155, 5, 27, '2011'),
(156, 5, 23, '2010'),
(157, 5, 27, '2009'),
(158, 5, 27, '2008'),
(159, 5, 27, '2007'),
(160, 5, 23, '2006'),
(161, 5, 23, '2005'),
(162, 5, 21, '2004'),
(163, 5, 27, '2003'),
(164, 5, 21, '2002'),
(165, 5, 27, '2001'),
(166, 5, 27, '2000'),
(167, 5, 27, '1999'),
(168, 5, 21, '1998'),
(169, 5, 27, '1997'),
(170, 5, 27, '1996'),
(171, 5, 27, '1994'),
(172, 5, 27, '1993'),
(173, 5, 35, '1992'),
(174, 5, 21, '1991'),
(175, 5, 25, '1990'),
(176, 5, 21, '1989'),
(177, 5, 25, '1988'),
(178, 5, 24, '1987'),
(179, 5, 25, '1986'),
(180, 5, 24, '1985'),
(181, 5, 25, '1984'),
(182, 5, 25, '1983'),
(183, 5, 25, '1982'),
(184, 5, 22, '1981'),
(185, 5, 25, '1980'),
(186, 5, 25, '1979'),
(187, 5, 25, '1977'),
(188, 5, 25, '1976'),
(189, 5, 35, '1974'),
(190, 5, 25, '1973'),
(191, 5, 21, '1971'),
(192, 5, 24, '1970'),
(193, 5, 35, '1969'),
(194, 5, 26, '1968'),
(195, 5, 27, '1967'),
(196, 5, 25, '1966'),
(197, 5, 27, '1965'),
(198, 5, 25, '1964'),
(199, 5, 24, '1963'),
(200, 5, 30, '1961'),
(201, 5, 32, '1960'),
(202, 5, 31, '1959'),
(203, 5, 31, '1958'),
(204, 5, 27, '1957'),
(205, 5, 27, '1956'),
(206, 5, 23, '1955'),
(207, 5, 31, '1954'),
(208, 5, 21, '1953'),
(209, 5, 27, '1952'),
(210, 5, 30, '1951'),
(211, 5, 21, '1948'),
(212, 5, 25, '1947'),
(213, 1, 23, '2021'),
(214, 1, 65, '2020'),
(215, 1, 25, '2019'),
(216, 1, 48, '2018'),
(217, 1, 48, '2017'),
(218, 1, 48, '2016'),
(219, 1, 45, '2015'),
(220, 1, 48, '2014'),
(221, 1, 65, '2013'),
(222, 1, 23, '2012'),
(223, 1, 45, '2011'),
(224, 1, 86, '2010'),
(225, 1, 45, '2009'),
(226, 1, 27, '2008'),
(227, 1, 79, '2007'),
(228, 1, 45, '2006'),
(229, 1, 25, '2005'),
(230, 1, 79, '2003'),
(231, 1, 48, '2002'),
(232, 1, 65, '2001'),
(233, 1, 48, '2000'),
(234, 1, 27, '1999'),
(235, 1, 48, '1998'),
(236, 1, 64, '1997'),
(237, 1, 87, '1996'),
(238, 1, 79, '1994'),
(239, 1, 2, '1993'),
(240, 1, 45, '1992'),
(241, 1, 79, '1990'),
(242, 1, 79, '1989'),
(243, 1, 87, '1985'),
(244, 1, 25, '1984'),
(245, 1, 22, '1982'),
(246, 1, 25, '1981'),
(247, 1, 25, '1978'),
(248, 1, 25, '1977'),
(249, 1, 65, '1976'),
(250, 1, 65, '1975'),
(251, 1, 65, '1974'),
(252, 1, 79, '1969'),
(253, 1, 27, '1968'),
(254, 1, 48, '1966'),
(255, 1, 86, '1965'),
(256, 1, 86, '1964'),
(257, 1, 79, '1963'),
(258, 1, 48, '1960'),
(259, 1, 48, '1959'),
(260, 1, 48, '1958'),
(261, 1, 48, '1957'),
(262, 1, 48, '1956');

-- --------------------------------------------------------

--
-- Structure de la table `player`
--

CREATE TABLE `player` (
  `id` int NOT NULL,
  `team_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `player`
--

INSERT INTO `player` (`id`, `team_id`, `country_id`, `name`) VALUES
(85, 2, 2, 'Mattéo Guendouzi'),
(86, 2, 15, 'Pape Gueye'),
(87, 2, 7, 'Luan Peres'),
(88, 2, 7, 'Gerson'),
(89, 2, 1, 'Cengiz Under'),
(90, 2, 13, 'Arkadiusz Milik'),
(91, 2, 4, 'Pol Mikel Lirola'),
(92, 2, 2, 'Steve Mandanda'),
(93, 2, 2, 'Amine Harit'),
(94, 2, 1, 'Sead Kolasinac'),
(95, 2, 2, 'Boubacar Kamara'),
(96, 2, 2, 'Dimitri Payet'),
(97, 2, 2, 'Valentin Rongier'),
(98, 2, 1, 'Duje Caleta-Car'),
(99, 2, 2, 'Cédric Bakambu'),
(100, 2, 4, 'Pau Lopez'),
(101, 2, 4, 'Alvaro Gonzalez'),
(102, 2, 2, 'William Saliba'),
(103, 2, 9, 'Leonardo Balerdi'),
(104, 2, 7, 'Luis Henrique'),
(105, 2, 2, 'Simon Ngapandouetnbu'),
(106, 2, 10, 'Konrad de la Fuente'),
(107, 2, 2, 'Ugo Bertelli'),
(108, 2, 11, 'Salim Ben Seghir'),
(109, 2, 11, 'Oussama Targhalline'),
(110, 2, 15, 'Cheikh Ahmoud Dieng'),
(111, 2, 2, 'Bilal Nadir'),
(112, 2, 2, 'Paolo Sciortino'),
(115, 19, 5, 'Ismail Jakobs'),
(117, 19, 2, 'Avel Disasi'),
(118, 19, 7, 'Jean Lucas'),
(120, 19, 14, 'Gelson Martins'),
(123, 19, 5, 'Alexander Nubel'),
(124, 19, 1, 'Myron Boadu'),
(125, 19, 4, 'Fabregas'),
(126, 19, 2, 'Ruben Aguilar'),
(129, 19, 14, 'Pelé'),
(130, 19, 2, 'Sofiane Diop'),
(131, 19, 2, 'Youssouf Fofana'),
(139, 19, 13, 'Radoslaw Majecki'),
(140, 19, 2, 'Wissam Ben Yedder'),
(141, 19, 5, 'Kevin Volland'),
(143, 19, 2, 'Jean MArcellin'),
(146, 19, 7, 'Caio Henrique'),
(148, 19, 2, 'Djibril Sidibé'),
(149, 19, 6, 'Vito Mannone'),
(154, 19, 2, 'Aurelien Tchouameni'),
(155, 19, 15, 'Krépin Diatta'),
(159, 19, 1, 'Strahinja Pavlovic'),
(160, 19, 2, 'Chrislain Matsima'),
(161, 19, 1, 'Eliot Matazo'),
(162, 19, 7, 'Vanderson'),
(163, 19, 2, 'Maghnes Akliouche'),
(164, 19, 2, 'Félix Lemarechal'),
(165, 19, 2, 'Benoit Badiashile');

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE `team` (
  `id` int NOT NULL,
  `country_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `team`
--

INSERT INTO `team` (`id`, `country_id`, `name`) VALUES
(1, 2, 'Stade Brestois 29'),
(2, 2, 'Olympique de Marseille'),
(3, 2, 'Montpellier HSC'),
(4, 2, 'Lille OSC'),
(5, 2, 'OGC Nice'),
(6, 2, 'Olympique Lyonnais'),
(7, 2, 'Paris Saint-Germain FC'),
(8, 2, 'FC Lorient'),
(9, 2, 'FC Girondins de Bordeaux'),
(10, 2, 'AS Saint-Étienne'),
(11, 2, 'Stade Rennais FC 1901'),
(12, 2, 'ES Troyes AC'),
(13, 2, 'Angers SCO'),
(14, 2, 'Clermont Foot 63'),
(15, 2, 'FC Nantes'),
(16, 2, 'FC Metz'),
(17, 2, 'Racing Club de Lens'),
(18, 2, 'Stade de Reims'),
(19, 2, 'AS Monaco FC'),
(20, 2, 'RC Strasbourg Alsace'),
(21, 3, 'Arsenal FC'),
(22, 3, 'Aston Villa FC'),
(23, 3, 'Chelsea FC'),
(24, 3, 'Everton FC'),
(25, 3, 'Liverpool FC'),
(26, 3, 'Manchester City FC'),
(27, 3, 'Manchester United FC'),
(28, 3, 'Newcastle United FC'),
(29, 3, 'Norwich City FC'),
(30, 3, 'Tottenham Hotspur FC'),
(31, 3, 'Wolverhampton Wanderers FC'),
(32, 3, 'Burnley FC'),
(33, 3, 'Leicester City FC'),
(34, 3, 'Southampton FC'),
(35, 3, 'Leeds United FC'),
(36, 3, 'Watford FC'),
(37, 3, 'Crystal Palace FC'),
(38, 3, 'Brighton & Hove Albion FC'),
(39, 3, 'Brentford FC'),
(40, 3, 'West Ham United FC'),
(41, 4, 'Athletic Club'),
(42, 4, 'Club Atlético de Madrid'),
(43, 4, 'CA Osasuna'),
(44, 4, 'RCD Espanyol de Barcelona'),
(45, 4, 'FC Barcelona'),
(46, 4, 'Getafe CF'),
(47, 4, 'Granada CF'),
(48, 4, 'Real Madrid CF'),
(49, 4, 'Rayo Vallecano de Madrid'),
(50, 4, 'Levante UD'),
(51, 4, 'RCD Mallorca'),
(52, 4, 'Real Betis Balompié'),
(53, 4, 'Real Sociedad de Fútbol'),
(54, 4, 'Villarreal CF'),
(55, 4, 'Valencia CF'),
(56, 4, 'Deportivo Alavés'),
(57, 4, 'Cádiz CF'),
(58, 4, 'Elche CF'),
(59, 4, 'RC Celta de Vigo'),
(60, 4, 'Sevilla FC'),
(61, 5, '1. FC Köln'),
(62, 5, 'TSG 1899 Hoffenheim'),
(63, 5, 'Bayer 04 Leverkusen'),
(64, 5, 'Borussia Dortmund'),
(65, 5, 'FC Bayern München'),
(66, 5, 'Hertha BSC'),
(67, 5, 'VfB Stuttgart'),
(68, 5, 'VfL Wolfsburg'),
(69, 5, '1. FSV Mainz 05'),
(70, 5, 'FC Augsburg'),
(71, 5, 'SC Freiburg'),
(72, 5, 'Borussia Mönchengladbach'),
(73, 5, 'Eintracht Frankfurt'),
(74, 5, 'SpVgg Greuther Fürth 1903'),
(75, 5, '1. FC Union Berlin'),
(76, 5, 'VfL Bochum 1848'),
(77, 5, 'Arminia Bielefeld'),
(78, 5, 'RB Leipzig'),
(79, 6, 'AC Milan'),
(80, 6, 'ACF Fiorentina'),
(81, 6, 'AS Roma'),
(82, 6, 'Atalanta BC'),
(83, 6, 'Bologna FC 1909'),
(84, 6, 'Cagliari Calcio'),
(85, 6, 'Genoa CFC'),
(86, 6, 'FC Internazionale Milano'),
(87, 6, 'Juventus FC'),
(88, 6, 'SS Lazio'),
(89, 6, 'SSC Napoli'),
(90, 6, 'Udinese Calcio'),
(91, 6, 'Empoli FC'),
(92, 6, 'Hellas Verona FC'),
(93, 6, 'Venezia FC'),
(94, 6, 'US Salernitana 1919'),
(95, 6, 'US Sassuolo Calcio'),
(96, 6, 'Spezia Calcio'),
(97, 6, 'UC Sampdoria'),
(98, 6, 'Torino FC');

-- --------------------------------------------------------

--
-- Structure de la table `team_competition`
--

CREATE TABLE `team_competition` (
  `team_id` int NOT NULL,
  `competition_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `competition`
--
ALTER TABLE `competition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B50A2CB1F92F3E70` (`country_id`);

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `palmares`
--
ALTER TABLE `palmares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FF4EE6497B39D312` (`competition_id`),
  ADD KEY `IDX_FF4EE649296CD8AE` (`team_id`);

--
-- Index pour la table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_98197A65296CD8AE` (`team_id`),
  ADD KEY `IDX_98197A65F92F3E70` (`country_id`);

--
-- Index pour la table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C4E0A61FF92F3E70` (`country_id`);

--
-- Index pour la table `team_competition`
--
ALTER TABLE `team_competition`
  ADD PRIMARY KEY (`team_id`,`competition_id`),
  ADD KEY `IDX_5E3AC3FC296CD8AE` (`team_id`),
  ADD KEY `IDX_5E3AC3FC7B39D312` (`competition_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `competition`
--
ALTER TABLE `competition`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `palmares`
--
ALTER TABLE `palmares`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT pour la table `player`
--
ALTER TABLE `player`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT pour la table `team`
--
ALTER TABLE `team`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `competition`
--
ALTER TABLE `competition`
  ADD CONSTRAINT `FK_B50A2CB1F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Contraintes pour la table `palmares`
--
ALTER TABLE `palmares`
  ADD CONSTRAINT `FK_FF4EE649296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `FK_FF4EE6497B39D312` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`);

--
-- Contraintes pour la table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `FK_98197A65296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `FK_98197A65F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Contraintes pour la table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `FK_C4E0A61FF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Contraintes pour la table `team_competition`
--
ALTER TABLE `team_competition`
  ADD CONSTRAINT `FK_5E3AC3FC296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5E3AC3FC7B39D312` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
