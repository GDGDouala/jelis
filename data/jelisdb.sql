-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 22 Février 2015 à 19:24
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+01:00";


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
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date_parution` date NOT NULL,
  `date_publication` date NOT NULL,
  `titre` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `lien` varchar(500) NOT NULL,
  `id_blog` int(10) NOT NULL,
  `tags` text,
  PRIMARY KEY (`id`),
  KEY `id_blog` (`id_blog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nom_blog` varchar(500) NOT NULL,
  `nom_bloggeur` varchar(500) NOT NULL,
  `url_page_accueil` text NOT NULL,
  `id_categorie` int(10) NOT NULL,
  `date_ajout` date NOT NULL,
  `email` varchar(500) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `adresse` text,
  `sexe` int(5) DEFAULT NULL,
  `metadonnees` text,
  `tags` text,
  PRIMARY KEY (`id`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `categorie_blog`
--

CREATE TABLE IF NOT EXISTS `categorie_blog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nom` varchar(500) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `vote`
--

CREATE TABLE IF NOT EXISTS `vote` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_article` int(10) NOT NULL,
  `date_heure` timestamp NOT NULL,
  `adresse_ip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_article` (`id_article`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `vue`
--

CREATE TABLE IF NOT EXISTS `vue` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_article` int(10) NOT NULL,
  `date_heure` timestamp NOT NULL,
  `adresse_ip` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_article` (`id_article`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`id_blog`) REFERENCES `blog` (`id`);

--
-- Contraintes pour la table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorie_blog` (`id`);

--
-- Contraintes pour la table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `vue`
--
ALTER TABLE `vue`
  ADD CONSTRAINT `vue_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
