-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 03 déc. 2018 à 07:47
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion-vente`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `idArticle` int(10) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `idCategorie` int(10) DEFAULT NULL,
  `prix` int(10) DEFAULT NULL,
  PRIMARY KEY (`idArticle`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`idArticle`, `nom`, `description`, `image`, `idCategorie`, `prix`) VALUES
(1, 'PC Dell', 'Ecran 15.6\" HD LED - Processeur Intel Dual Core Pentium 2127U , 1.9 Ghz  , 2 Mo de mÃ©moire cache -  8 Go de mÃ©moire - Disque 500 Go - Carte graphique Intel HD Graphics - Graveur DVD - Lecteur de cartes - HDMI - USB 3.0 - Wifi - Bluetooth - Webcam avec micro - Garantie 2 ans', '315696.png', 1, 1200),
(2, 'Souris Asus', ' [P301-1AROG-SICA] Souris Optique USB Gamer Asus ROG Republic of Gamers Sica -6x Boutons - RÃ©solution Optique 5000 dpi - AccÃ©lÃ©ration 30G - Dimensions 39 x 62 x 115 mm -  Poids 117g', '864030.png', 2, 30),
(3, 'HP-Pavillon', 'HP Pavilion Power 17-ab401nf - i5, 8 GB, 1 TB, GTX1050', '672442.png', 1, 1500);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `idCategorie` int(11) NOT NULL AUTO_INCREMENT,
  `nomCategorie` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idCategorie`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`idCategorie`, `nomCategorie`) VALUES
(1, 'PC'),
(2, 'Accessoires ');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
CREATE TABLE IF NOT EXISTS `commandes` (
  `idCommande` int(11) NOT NULL AUTO_INCREMENT,
  `idArticle` int(11) NOT NULL,
  `Quantite` int(11) DEFAULT NULL,
  `prixTotal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCommande`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`idCommande`, `idArticle`, `Quantite`, `prixTotal`) VALUES
(2, 2, 10, 300),
(3, 2, 3, 90),
(4, 2, 1, 30),
(5, 3, 1, 1500);

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `Commentaire` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `Commentaire`) VALUES
(1, 'hatem.gmail.hawaria.com', 'yar7em weldik a hp'),
(2, 'chorfanwael@gmail.com', 'aaaaaaaaaaaaaaaaaaaaaaaaa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
