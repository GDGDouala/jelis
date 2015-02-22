-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 22 Février 2015 à 12:59
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `jelisdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `DataParu` date NOT NULL,
  `DatePublication` date NOT NULL,
  `Titre` varchar(500) NOT NULL,
  `Description` text NOT NULL,
  `Lien` varchar(500) NOT NULL,
  `IDBlog` int(10) NOT NULL,
  `Tags` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `NomBlogs` varchar(500) NOT NULL,
  `NomBloggeur` varchar(500) NOT NULL,
  `UrlHomePage` text NOT NULL,
  `CatBlog` int(5) NOT NULL,
  `DateAjout` date NOT NULL,
  `Email` varchar(500) NOT NULL,
  `Telephone` varchar(100) NOT NULL,
  `Adresse` text NOT NULL,
  `Sexe` int(5) NOT NULL,
  `Metadonnees` text NOT NULL,
  `Tags` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `categorie_blogs`
--

CREATE TABLE IF NOT EXISTS `categorie_blogs` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(500) NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `IDArticle` int(5) NOT NULL,
  `DateHeure` datetime(6) NOT NULL,
  `IP` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `vues`
--

CREATE TABLE IF NOT EXISTS `vues` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `IDArticle` int(10) NOT NULL,
  `DateHeure` datetime(6) NOT NULL,
  `IP` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
