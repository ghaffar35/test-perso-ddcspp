-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 24 Novembre 2016 à 23:16
-- Version du serveur :  5.7.13-0ubuntu0.16.04.2
-- Version de PHP :  7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `DDCSPP`
--
CREATE DATABASE IF NOT EXISTS `DDCSPP` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `DDCSPP`;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `url` text NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `post`
--

INSERT INTO `post` (`id`, `id_user`, `title`, `description`, `date`, `url`, `type`) VALUES
(1, 0, 'article 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis turpis a massa facilisis vehicula. Aliquam a orci at elit rhoncus tincidunt. Duis fringilla dolor a accumsan vulputate. Proin rhoncus mauris eu orci pharetra varius. Nunc ut risus ac elit venenatis scelerisque. Vestibulum a sem fermentum, commodo risus ut, varius dolor. Integer eu gravida diam. Phasellus convallis nisl sed ex imperdiet mattis.', '2016-11-24', 'images/article1.jpg', 1),
(2, 1, 'article 2', 'Mauris pretium lectus nulla, vitae egestas eros gravida sit amet. Sed faucibus ligula sit amet lacus laoreet, ac sagittis neque gravida. Phasellus lorem tortor, cursus non dignissim nec, tincidunt eget magna. Proin vel magna vulputate, porttitor ipsum et, vehicula turpis. Nam nec quam lectus. Praesent nec augue vulputate, interdum massa quis, sagittis nibh. Phasellus commodo elementum tincidunt. Quisque eget nulla nulla. Integer egestas feugiat lacus eu porta. Donec id ligula nisi. Quisque eget porta erat. Nulla feugiat mattis felis, nec fermentum massa dictum a. Sed iaculis viverra metus, ut viverra risus faucibus nec. Curabitur metus metus, placerat at mi faucibus, dictum ornare augue.', '2016-11-24', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `modif_users` tinyint(1) NOT NULL,
  `modif_post` tinyint(1) NOT NULL,
  `modif_theme` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `modif_users`, `modif_post`, `modif_theme`) VALUES
(1, 'admin', 1, 1, 1),
(2, 'modo', 0, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `color` varchar(25) NOT NULL,
  `image` text NOT NULL,
  `opacity` int(1) NOT NULL,
  `bg_repeat` tinyint(1) NOT NULL,
  `bg_parallax` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `theme`
--

INSERT INTO `theme` (`color`, `image`, `opacity`, `bg_repeat`, `bg_parallax`) VALUES
('white', 'images/bg.jpg', 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(25) NOT NULL,
  `pwd` varchar(25) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `pwd`, `mail`, `id_role`) VALUES
(0, 'megaju', 'megaju', 'megaju@mail.com', 0),
(1, 'lemodo', 'lemodo', 'lemodo@mail.com', 1),
(3, 'momau', 'momau', 'momau@mail.com', 1),
(4, 'Prunelle', 'prunelle', 'prunelle@mail.com', 1),
(5, 'liky', 'liky', 'liky@gmail.com', 1),
(6, 'juju', 'juju', 'juju@mail.com', 1),
(7, 'Man', 'man', 'man@gmail.com', 1),
(8, 'Darkvador', 'darkvador', 'darkvador@mail.com', 1),
(9, 'Magoa', 'magoa', 'magoa@mail.com', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
