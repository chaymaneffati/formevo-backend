-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 10 nov. 2020 à 14:49
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `application`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(100) NOT NULL,
  `titre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `titre`) VALUES
(1, 'design'),
(2, 'infographie');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `formation` int(100) NOT NULL,
  `commentaire` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `name`, `lastname`, `formation`, `commentaire`) VALUES
(1, 'ahmed', 'ahmed', 1, 'jsfhklsjdf lkmjdlsgks ?????'),
(2, 'ahmed', 'ahmed', 1, 'comment je peut faire un bloc de 3 text');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` int(100) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `fichier` varchar(100) NOT NULL,
  `formation` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `titre`, `date`, `fichier`, `formation`) VALUES
(2, 'cours dev web css3', '2020-10-13', '31d26973ece1946b262cd84534cdfc9d.pdf', 4),
(3, 'cours web designe', '2020-10-13', '592c6429dfe7ed373925b73a72862dff.pdf', 1),
(4, 'cours ui/ux designe', '2020-10-13', '4e65194cb754145d841609554ca6fb2c.pdf', 5);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id` int(100) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `date` varchar(30) NOT NULL,
  `dateremise` varchar(110) NOT NULL,
  `duree` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `etat` varchar(10) NOT NULL,
  `categorie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `titre`, `description`, `date`, `dateremise`, `duree`, `image`, `etat`, `categorie`) VALUES
(4, 'web development workshop', 'web development workshop hosted by esen android club', '2020-10-21', '15:40', '10', '1cae5ef6e6212e6f028ff14716ed95e6.jpg', '0', 'web'),
(5, 'design thinking ui/ux', 'learn ui/ux and design thinking with raouf sallemi', '2020-10-23', '14:45', '15', 'e582165b6d15475c0dab6b00d37d975b.jpg', '1', 'design'),
(6, 'qsdfsdg', 'sdfgsdfg', '2020-09-30', '15:15', '41', '6b68b522b5b0287fd034436adecc300e.PNG', '1', 'web'),
(7, 'qsdfsdg', 'sdfgsdfg', '2020-09-30', '15:30', '41', '50c8186a853667b1b87c304d44eb19da.PNG', '1', 'web'),
(8, 'test test test', 'test test test', '2020-10-31', '15:10', '20', '41ea4c79f2bb87ad60ee9e138ee383ec.gif', '0', 'design'),
(9, 'ljlfjlkjflk', 'f,nkfkjflkjflkjfl', '2020-11-12', '', '', '1ec072175db63be8e01b7b37664f4393.', '1', 'design'),
(10, 'ljlfjlkjflk', 'f,nkfkjflkjflkjfl', '2020-11-12', '', '', 'af0e3264efaf75e06bff15a3b9ca114d.', '1', 'design'),
(11, 'ljlfjlkjflk', 'f,nkfkjflkjflkjfl', '2020-11-12', '', '', 'f35f5c3a92616431c07fe41384cf5282.jpg', '1', 'design');

-- --------------------------------------------------------

--
-- Structure de la table `inscrir`
--

CREATE TABLE `inscrir` (
  `id` int(100) NOT NULL,
  `formation` int(100) NOT NULL,
  `user` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inscrir`
--

INSERT INTO `inscrir` (`id`, `formation`, `user`) VALUES
(4, 1, 6),
(8, 4, 6),
(9, 4, 9);

-- --------------------------------------------------------

--
-- Structure de la table `option`
--

CREATE TABLE `option` (
  `id` int(100) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `text` varchar(250) NOT NULL,
  `question` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `option`
--

INSERT INTO `option` (`id`, `titre`, `text`, `question`) VALUES
(1, 'a', 'jkgkjhj', 1),
(2, 'b', 'jiuglhoimh', 1),
(3, 'c', 'gkh', 1),
(4, 'b', 'kjgkh', 2),
(5, 'a', 'kjgjkhkgjkuf', 2),
(6, 'a', 'hyper text markup language', 3),
(7, 'a', 'header text markup language', 3),
(8, 'a', 'hello world', 4),
(9, 'b', 'helloooooooooooooooo', 4),
(10, 'c', 'hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 4),
(11, 'a', 'hehehheheehehhehhe', 5),
(12, 'b', 'hahahahhahahhahhahahaha', 5),
(13, 'c', 'ekekkekkekkeekkekee', 5),
(14, 'a', 'hehehheheehehhehhe', 6),
(15, 'b', 'hahahahhahahhahhahahaha', 6),
(16, 'c', 'ekekkekkekkeekkekee', 6),
(17, 'a', '111111111111111111111111111111111', 7),
(18, 'b', '2222222222222222222222222222', 7),
(19, 'c', '3333333333333333', 7),
(20, 'a', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 8),
(21, 'c', 'ccccccccccccccccccccccccccccccc', 8),
(22, 'b', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', 8),
(23, 'a', 'aaaaaaaaaaaaaazazaza', 9),
(24, 'c', 'cecececececececececec', 9),
(25, 'b', 'bbbbbbbbbbbbbbbbbbbb', 9),
(26, 'b', 'toi', 10),
(27, 'c', 'elle', 10),
(28, 'a', 'moi', 10),
(29, 'a', 'moi', 11),
(30, 'b', 'toi', 11),
(31, 'a', 'ha', 11),
(32, 'c', 'elle', 11),
(33, 'a', 'moi', 12),
(34, 'b', 'toi', 12),
(35, 'c', 'elle', 12),
(36, 'a', 'ha', 12),
(37, 'b', 'toi', 13),
(38, 'a', 'moi', 13),
(39, 'a', 'ha', 13),
(40, 'c', 'elle', 13),
(41, 'c', 'je', 13),
(42, 'a', 'moi', 14),
(43, 'b', 'vous', 14),
(44, 'c', 'nous', 14);

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `test` varchar(100) NOT NULL,
  `score` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `name`, `lastname`, `test`, `score`) VALUES
(1, 'ahmed', 'ahmed', 'ghkghj', '1'),
(2, 'ahmed', 'ahmed', 'quiz 1', '1'),
(3, 'ahmed', 'ahmed', 'ghkghj', '4'),
(4, 'ahmed', 'ahmed', 'ghkghj', '0');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(100) NOT NULL,
  `text` varchar(100) NOT NULL,
  `reponse` varchar(100) NOT NULL,
  `quiz` int(100) NOT NULL,
  `test` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `text`, `reponse`, `quiz`, `test`) VALUES
(1, 'question kjsfhsqflkj', 'a', 2, 0),
(2, 'question test ', 'b', 0, 1),
(3, 'what is html ', 'a', 3, 0),
(4, 'question de test ', 'b', 2, 0),
(5, 'question de test 2', 'c', 2, 0),
(6, 'question de test 2', 'c', 2, 0),
(7, 'question de test 3', 'b', 2, 0),
(8, 'question de test 111', 'b', 0, 1),
(9, 'question de test 22222', 'a', 0, 1),
(10, 'pourqui tattatat', 'b', 3, 0),
(11, 'pourqui tattatat', 'b', 3, 0),
(12, 'pourqui tattatat', 'b', 3, 0),
(13, 'question', 'b', 3, 0),
(14, 'bonjour', 'b', 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `formation` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`id`, `titre`, `description`, `formation`) VALUES
(3, 'quiz 1', 'this quiz make you sure if you are understand the course or no', 4),
(4, 'math', 'jdhkhdkhdkdh', 4);

-- --------------------------------------------------------

--
-- Structure de la table `test`
--

CREATE TABLE `test` (
  `id` int(100) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `formation` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `test`
--

INSERT INTO `test` (`id`, `titre`, `formation`) VALUES
(1, 'ljgljkjhmkhkhhkjhkj', 1),
(2, 'ui/ux', 5),
(3, 'devoir', 5),
(4, 'devoir', 5);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `enable` varchar(100) NOT NULL,
  `categorie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `lastname`, `email`, `login`, `adress`, `phone`, `password`, `photo`, `Role`, `enable`, `categorie`) VALUES
(1, 'jbali', 'hjkhkljhsf', 'ameano', 'bouhnach', '99087465', '87445214', 'ameano', 'edad74d2944f610301445212627365c3.', 'admin', '1', ''),
(2, 'jbali', 'hjkhkljhsf', 'ameano', 'bouhnach', '99087465', '87445214', 'ameano', '3f810a3b248dcf4cabfd68235a4a4f75.png', 'admin', '1', ''),
(3, 'jbali', 'hjkhkljhsf', 'ameano', 'amine', '99087465', '87445214', 'amine', 'a031db1f0b66ac4ad93c66915f280a1b.png', 'admin', '1', ''),
(8, 'karim', 'trabelsi', 'aminejbali32@gmail.com', 'karim', 'mornaguia', '55478552', 'karim', 'cc685792cb5af42810a0b24434e01813.png', 'prof', '1', 'design'),
(9, 'chayma', 'chayma', 'chayma@gmail.com', 'chayma', 'tunis', '96239662', 'chayma', '13f3b999f707e871a67acc117e8ff80d.jpg', 'etudiant', '1', ''),
(10, 'salah', 'abidi', 'salahkkjlkd', 'flfklklld', 'tunis', '334455676', 'fjlkfkljlkflfk', 'ea0336a5fa16785645aecd39fbd9b053.jpg', 'prof', '1', 'web'),
(11, 'ljljlkjl', 'khdkjhkdj', 'jdjhdj', 'jdlkld', 'jdhdkj', 'dhkjhjdk', 'ddkjdlkdkl', '79c0e4a5159e21303af4abfe887faa5d.', 'prof', '1', 'design');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inscrir`
--
ALTER TABLE `inscrir`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `test`
--
ALTER TABLE `test`
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
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `inscrir`
--
ALTER TABLE `inscrir`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `option`
--
ALTER TABLE `option`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
