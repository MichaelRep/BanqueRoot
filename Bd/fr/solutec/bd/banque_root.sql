-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 25 Novembre 2019 à 15:05
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `banque_root`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--
DROP SCHEMA IF EXISTS banque_root;
CREATE SCHEMA IF NOT EXISTS banque_root;
USE banque_root;
CREATE TABLE IF NOT EXISTS `administrateur` (
  `id_utilisateur` int(11) NOT NULL,
  UNIQUE KEY `id_utilisateur` (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `administrateur`
--

INSERT INTO `administrateur` (`id_utilisateur`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `carte`
--

CREATE TABLE IF NOT EXISTS `carte` (
  `id_compte` int(11) NOT NULL,
  `num_carte` int(11) NOT NULL,
  `statut` tinyint(1) NOT NULL,
  PRIMARY KEY (`num_carte`),
  UNIQUE KEY `id_compte` (`id_compte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id_utilisateur` int(11) NOT NULL,
  `photo` blob,
  `valide` tinyint(1) NOT NULL,
  UNIQUE KEY `id_utilisateur` (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id_utilisateur`, `photo`, `valide`) VALUES
(3, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE IF NOT EXISTS `compte` (
  `id_utilisateur` int(11) NOT NULL,
  `num_compte` int(11) NOT NULL,
  `montant` int(11) NOT NULL,
  `decouvert_aut` int(11) NOT NULL,
  PRIMARY KEY (`num_compte`),
  UNIQUE KEY `id_utilisateur` (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `conseiller`
--

CREATE TABLE IF NOT EXISTS `conseiller` (
  `id_utilisateur` int(11) NOT NULL,
  `photo` blob,
  `actif` tinyint(1) NOT NULL,
  UNIQUE KEY `id_utilisateur` (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `conseiller`
--

INSERT INTO `conseiller` (`id_utilisateur`, `photo`, `actif`) VALUES
(2, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `historique_connexions`
--

CREATE TABLE IF NOT EXISTS `historique_connexions` (
  `date` date NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  UNIQUE KEY `id_utilisateur` (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `historique_conseiller`
--

CREATE TABLE IF NOT EXISTS `historique_conseiller` (
  `id_utilisateur` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `date` date NOT NULL,
  UNIQUE KEY `id_utilisateur` (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `historique_montant`
--

CREATE TABLE IF NOT EXISTS `historique_montant` (
  `id_compte` int(11) NOT NULL,
  `date` date NOT NULL,
  `montant` int(11) NOT NULL,
  UNIQUE KEY `id_compte` (`id_compte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `login_mail` varchar(60) NOT NULL,
  `mdp` varchar(60) NOT NULL,
    `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `login_mail`, `mdp`,`type`) VALUES
(1, 'Mangeot', 'Martin', 'martin.mangeot.6@gmail.com', 'test1','administrateur'),
(2, 'Danlsak', 'Germain', 'gdanlsak@gmail.com', 'conseil1','conseiller'),
(3, 'Time', 'Vincent', 'vtime@gmail.com', 'client1','client');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD CONSTRAINT `administrateur_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `carte`
--
ALTER TABLE `carte`
  ADD CONSTRAINT `carte_ibfk_1` FOREIGN KEY (`id_compte`) REFERENCES `compte` (`num_compte`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `compte_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `client` (`id_utilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `conseiller`
--
ALTER TABLE `conseiller`
  ADD CONSTRAINT `conseiller_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `historique_connexions`
--
ALTER TABLE `historique_connexions`
  ADD CONSTRAINT `historique_connexions_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `historique_conseiller`
--
ALTER TABLE `historique_conseiller`
  ADD CONSTRAINT `historique_conseiller_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `historique_montant`
--
ALTER TABLE `historique_montant`
  ADD CONSTRAINT `historique_montant_ibfk_1` FOREIGN KEY (`id_compte`) REFERENCES `compte` (`num_compte`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
