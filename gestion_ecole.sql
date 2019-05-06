-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 06 mai 2019 à 16:21
-- Version du serveur :  10.1.36-MariaDB
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
-- Base de données :  `gestion_ecole`
--

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id` int(11) NOT NULL,
  `nom_classe` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id`, `nom_classe`) VALUES
(1, 'BTS1 SIO (Service Informatique aux Organisati'),
(2, 'BTS2 SIO (Service Informatique aux Organisati'),
(5, 'BTS1 NRC (Négociation et Relation Client)'),
(6, 'BTS2 NRC (Négociation et Relation Client)'),
(7, 'BTS1 MUC (Management des Unités Commerciales)'),
(8, 'BTS2 MUC (Management des Unités Commerciales)'),
(9, 'BTS1 CG (Comptabilité Gestion)'),
(10, 'BTS2 CG (Comptabilité Gestion)'),
(11, 'BTS1 TPL (Transport et Prestation Logistique)'),
(12, 'BTS2 TPL (Transport et Prestation Logistique)');

-- --------------------------------------------------------

--
-- Structure de la table `emploi_du_temps`
--

CREATE TABLE `emploi_du_temps` (
  `id` int(11) NOT NULL,
  `emploi` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `formation_id` int(11) NOT NULL,
  `type_formation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `formation_id`, `type_formation_id`) VALUES
(5, 6, 4),
(12, 5, 4),
(17, 2, 4),
(18, 1, 4),
(19, 9, 1),
(21, 5, 4);

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `date_naissance` datetime NOT NULL,
  `adresse` varchar(150) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `date_naissance`, `adresse`, `telephone`, `email`) VALUES
(1, 'Amadji', 'kevin', '2019-03-16 00:00:00', '2 rue du bois de bray Lieusaint', '0767429452', 'kevinamadji742@yahoo.com'),
(4, 'NDIAYE', 'Oumar', '1993-10-20 00:00:00', '22 rue saint clement, 93200 saint denis', '0758055700', 'csamonmail@gmail.com'),
(5, 'Gandonou', 'Audes', '2019-03-01 00:00:00', '41 rue Perrier 92220 Montrouge', '0767429452', 'audesmail@gmail.com'),
(6, 'Amadji', 'kevin', '2019-03-01 00:00:00', '45 rue du bois de bray Lieusaint', '0767429452', 'kevinamadji742@yahoo.com'),
(12, 'Seck', 'Linda', '2019-03-03 00:00:00', '2 rue du bois de bray Lieusaint', '0202020202', 'lindagogo@yahoo.com'),
(17, 'Banka', 'joel', '2019-03-14 00:00:00', '2222 rue du bois de bray Lieusaint', '0767429452', 'joelbank25@yahoo.com'),
(18, 'Amadji', 'mahougnon', '2019-03-01 00:00:00', '22 rue du bois de bray Lieusaint', '0767429452', 'kevinamadji742@yahoo.com'),
(19, 'Alokpo', 'Angele', '2017-02-09 00:00:00', '15 Avenue Cassin 94290 Villeneuve le roi', '0666870404', 'alokange@yahoo.com'),
(21, 'Kounou ', 'Sylvain', '1994-05-04 00:00:00', '45 rue de cotonou 75010 Paris', '0627975454', 'ksylvain@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `type_formation`
--

CREATE TABLE `type_formation` (
  `id` int(11) NOT NULL,
  `type_formation` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_formation`
--

INSERT INTO `type_formation` (`id`, `type_formation`) VALUES
(1, 'Formation en Initial'),
(4, 'Formation en Alternance');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `password`) VALUES
(1, 'secretaire', 'goldenboy229'),
(2, 'admin_steve', 'apple');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `emploi_du_temps`
--
ALTER TABLE `emploi_du_temps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_etudiant_personne_idx` (`id`),
  ADD KEY `fk_etudiant_formation1_idx` (`formation_id`),
  ADD KEY `fk_etudiant_type_formation1_idx` (`type_formation_id`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_professeur_personne1_idx` (`id`),
  ADD KEY `fk_professeur_matiere1_idx` (`matiere_id`);

--
-- Index pour la table `type_formation`
--
ALTER TABLE `type_formation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `emploi_du_temps`
--
ALTER TABLE `emploi_du_temps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `type_formation`
--
ALTER TABLE `type_formation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `fk_etudiant_formation1` FOREIGN KEY (`formation_id`) REFERENCES `classe` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_etudiant_personne` FOREIGN KEY (`id`) REFERENCES `personne` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_etudiant_type_formation1` FOREIGN KEY (`type_formation_id`) REFERENCES `type_formation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD CONSTRAINT `fk_professeur_matiere1` FOREIGN KEY (`matiere_id`) REFERENCES `matiere` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_professeur_personne1` FOREIGN KEY (`id`) REFERENCES `personne` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
