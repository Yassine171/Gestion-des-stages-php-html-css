-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 26 jan. 2022 à 18:42
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion des stage`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(8) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mot_de_passe` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `email`, `mot_de_passe`) VALUES
(1, 'admin@uit.ac.ma', 'azerty');

-- --------------------------------------------------------

--
-- Structure de la table `encadrant`
--

CREATE TABLE `encadrant` (
  `id_encadrant` int(8) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `id_entreprise` int(8) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `tel` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `encadrant`
--

INSERT INTO `encadrant` (`id_encadrant`, `nom`, `prenom`, `id_entreprise`, `email`, `tel`) VALUES
(1, '6', '7', 1, NULL, NULL),
(2, '6', '7', 1, NULL, NULL),
(3, '6', '7', 1, NULL, NULL),
(4, '6', '7', 1, NULL, NULL),
(5, '6', '7', 1, NULL, NULL),
(6, '6', '7', 1, NULL, NULL),
(7, '6', '7', 1, NULL, NULL),
(8, '6', '7', 1, NULL, NULL),
(9, '6', '7', 1, NULL, NULL),
(10, '6', '7', 1, NULL, NULL),
(11, '6', '7', 1, NULL, NULL),
(12, '6', '7', 1, NULL, NULL),
(13, '6', '7', 1, NULL, NULL),
(14, '6', '7', 1, NULL, NULL),
(15, '6', '7', 1, NULL, NULL),
(16, '6', '7', 1, NULL, NULL),
(17, '6', '7', 1, NULL, NULL),
(18, '6', '7', 1, NULL, NULL),
(19, '6', '7', 1, NULL, NULL),
(20, '6', '7', 1, NULL, NULL),
(21, '6', '7', 1, NULL, NULL),
(22, '6', '7', 1, NULL, NULL),
(23, '6', '7', 1, NULL, NULL),
(24, '6', '7', 1, NULL, NULL),
(25, '6', '7', 1, NULL, NULL),
(26, '6', '7', 1, NULL, NULL),
(27, '6', '7', 1, NULL, NULL),
(28, '6', '7', 1, NULL, NULL),
(29, '6', '7', 1, NULL, NULL),
(30, '6', '7', 1, NULL, NULL),
(31, '6', '7', 1, NULL, NULL),
(32, '6', '7', 1, NULL, NULL),
(33, '6', '7', 1, NULL, NULL),
(34, '6', '7', 1, NULL, NULL),
(35, '6', '7', 1, NULL, NULL),
(36, '6', '7', 1, NULL, NULL),
(37, '6', '7', 1, NULL, NULL),
(38, '6', '7', 1, NULL, NULL),
(39, '6', '7', 1, NULL, NULL),
(40, '6', '7', 1, NULL, NULL),
(41, '6', '7', 1, NULL, NULL),
(42, '6', '7', 1, NULL, NULL),
(43, '6', '7', 43, NULL, NULL),
(44, '7', '8', 1, NULL, NULL),
(45, '7', '8', 1, NULL, NULL),
(46, '7', '8', 1, NULL, NULL),
(47, '7', '8', 1, NULL, NULL),
(48, '7', '8', 1, NULL, NULL),
(49, '7', '8', 1, NULL, NULL),
(50, '7', '8', 1, NULL, NULL),
(51, '7', '8', 1, NULL, NULL),
(52, '7', '8', 1, NULL, NULL),
(53, 'saad', 'hassan', 53, NULL, NULL),
(54, '999', '999', 54, NULL, NULL),
(55, '999', '999', 54, NULL, NULL),
(56, '999', '999', 54, NULL, NULL),
(57, '999', '999', 54, NULL, NULL),
(58, '999', '999', 54, NULL, NULL),
(59, '111', '111', 59, NULL, NULL),
(60, '333', '333', 60, NULL, NULL),
(61, '555', '555', 61, NULL, NULL),
(62, '666', '666', 62, NULL, NULL),
(63, '666', '666', 62, NULL, NULL),
(64, '666', '666', 62, NULL, NULL),
(65, '666', '666', 62, NULL, NULL),
(66, '666', '666', 62, NULL, NULL),
(67, '111', '111', 59, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id_ens` int(8) NOT NULL,
  `prenom` varchar(25) DEFAULT NULL,
  `nom` varchar(25) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mot_de_passe` varchar(60) DEFAULT NULL,
  `photo` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id_ens`, `prenom`, `nom`, `email`, `mot_de_passe`, `photo`) VALUES
(0, '', 'inconnu', NULL, NULL, 'inconnu.jpg'),
(1, 'Abdellah', ' ABOUABDELLAH', 'abdellah.abouabdellah@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(2, 'Moulay Othman', ' ABOUTAFAIL', 'moulayothman.aboutafail@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(3, 'Ayoub', ' AIT LAHCEN', 'ayoub.aitlahcen@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(4, 'Aouatif', ' AMINE', 'aouatif.amine@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(5, 'Rachid', ' BANNARI', 'rachid.bannari@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(6, 'Samir', ' BELFKIH', 'samir.belfkih@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(7, 'Moulay Taib', ' BELGHITI', 'moulaytaib.belghiti@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(8, 'Youssef', ' BENTALEB', 'youssef.bentaleb@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(9, 'Anas', ' BOUAYAD', 'anas.bouayad@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(10, 'Ibrahim', ' BOUMAZZOU', 'ibrahim.boumazzou@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(11, 'Habiba', ' CHAOUI', 'habiba.chaoui@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(12, 'Khalid', ' CHOUGDALI', 'khalid.chougdali@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(13, 'Laila', ' EL ABBADI', 'laila.elabbadi@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(14, 'Younes', ' EL BOUZEKRI EL IDRISSI', 'y.elbouzekri@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(15, 'Norelislam', ' EL HAMI', 'norelislam.elhami@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(16, 'Abdelmajid', ' ELOUADI', 'abdelmajid.elouadi@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(17, 'Driss', ' GRETETE', 'driss.gretete@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(18, 'Hanaa', ' HACHIMI', 'hanaa.hachimi@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(19, 'Nabil', ' HMINA', 'nabil.hmina@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(20, 'Samira', ' MABTOUL', 'samira.mabtoul@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(21, 'Mostafa', ' MASLOUHI', 'mostafa.maslouhi@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(22, 'Hassan', ' MHARZI', 'h.mharzi@uit.ac.ma', 'azerty', 'inconnu.jpg'),
(23, 'Ilham', ' OUMAIRA', 'ilham.oumaira@uit.ac.ma', 'azerty', 'inconnu.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `id_entreprise` int(8) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `ville` varchar(25) NOT NULL,
  `tell` int(10) DEFAULT 0,
  `rue` int(5) DEFAULT 0,
  `avenue` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`id_entreprise`, `nom`, `ville`, `tell`, `rue`, `avenue`) VALUES
(0, '', '', 0, 0, ''),
(1, '1', '3', 5, 4, '2'),
(43, '88', '3', 5, 4, '2'),
(53, 'adil', 'rabat', 667189814, 63, 'hay rachad'),
(54, '999', '999', 999, 999, '999'),
(55, '999', '999', 999, 999, '999'),
(56, '999', '999', 999, 999, '999'),
(57, '999', '999', 999, 999, '999'),
(58, '999', '999', 999, 999, '999'),
(59, '111', '111', 111, 111, '111'),
(60, '333', '333', 333, 333, '333'),
(61, '555', '555', 555, 555, '555'),
(62, '666', '666', 666, 666, '666'),
(63, '666', '666', 666, 666, '666'),
(64, '666', '666', 666, 666, '666'),
(65, '666', '666', 666, 666, '666'),
(66, '666', '666', 666, 666, '666'),
(67, '111', '111', 111, 111, '111'),
(74, 'inconnu', 'inconnu', 0, 0, 'inconnu');

-- --------------------------------------------------------

--
-- Structure de la table `etudient`
--

CREATE TABLE `etudient` (
  `diplome` varchar(15) NOT NULL,
  `num_apoge_etud` int(8) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `email` varchar(60) NOT NULL,
  `num_apoge_etud2` int(8) DEFAULT NULL,
  `mot_de_passe` varchar(60) NOT NULL,
  `num_apoge_ens` int(8) DEFAULT NULL,
  `photo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudient`
--

INSERT INTO `etudient` (`diplome`, `num_apoge_etud`, `nom`, `prenom`, `email`, `num_apoge_etud2`, `mot_de_passe`, `num_apoge_ens`, `photo`) VALUES
('', 0, '', '', '', 0, 'azerty', 1, 'inconnu.jpg'),
('NDIGEIN', 14000130, 'SAHRAOUI DOUKKALI', 'SAAD', 'saad.sahraouidoukkali@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 15006663, 'ZIAT', 'OUSSAMA', 'oussama.ziat@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 16000022, 'EL AASSALI', 'IMADEDDINE', 'imadeddine.elaassali@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 16000050, 'EL HALABI', 'AYOUB', 'ayoub.elhalabi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 16000086, 'ARZIKI', 'ISMAIL', 'ismail.arziki@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 16000109, 'AKIL', 'OMAR', 'omar.akil@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 16000234, 'ELHADIOUIA', 'LEILA', 'leila.elhadiouia@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 16000360, 'AMARIR', 'ISMAIL', 'ismail.amarir@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 16003897, 'HANSALA', 'SALMA', 'salma.hansala@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 16003987, 'BENGHABRIT', 'MOHAMMED', 'mohammed.benghabrit@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 16004718, 'LAMMARI', 'SAFOUANE', 'safouane.lammari@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 16004719, 'ZEKRI', 'AMAL', 'amal.zekri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 16004865, 'LAMSAOURI', 'HAMZA', 'hamza.lamsaouri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 16004931, 'TEBAA', 'MOHAMMED SAAD', 'mohammedsaad.tebaa@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17000543, 'LAKTAIBI', 'ANASS', 'anass.laktaibi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17000549, 'GOUMIDI', 'ABDERRAZZAK', 'abderrazzak.goumidi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17000711, 'GLIOULA', 'HIND', 'hind.glioula@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17003110, 'FAIZ', 'HAJAR', 'hajar.faiz@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17003784, 'KERDOUD', 'MOUAD', 'mouad.kerdoud@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17004061, 'SRAISAH', 'OUMAIMA', 'oumaima.sraisah@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17004178, 'AZZOUZI', 'ABDELLAH', 'abdellah.azzouzi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17004304, 'ALEM', 'AYOUB', 'ayoub.alem@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17004329, 'KANDIL', 'YAHIA', 'yahia.kandil@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17004423, 'EL GHARBI', 'DOUAA', 'douaa.elgharbi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17004484, 'ALIOUA', 'SALIM', 'salim.alioua@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17004527, 'KADIMI', 'HAMZA', 'hamza.kadimi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17004680, 'BENNANI', 'YASSINE', 'yassine.bennani@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17004777, 'BERRAGRAGUI', 'HASSAN', 'hassan.berragragui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17004960, 'BENAYADA', 'OUSSAMA', 'oussama.benayada@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17004998, 'LAHMAMI', 'AYOUB', 'ayoub.lahmami@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005155, 'LAHRIZI', 'TAHA', 'taha.lahrizi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005162, 'EL BADAOUI', 'OMAR', 'omar.elbadaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17005194, 'MOUNTIJ', 'YASSER', 'yasser.mountij@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005215, 'ELKHDADI', 'AHMED', 'ahmed.elkhdadi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005227, 'ERRAZGOUNI', 'SAAD', 'saad.errazgouni@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005242, 'OUADRHIRI IDRISSI AZZOUZI', 'ZAKARIA', 'zakaria.ouadrhiriidrissiazzouzi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005256, 'EL OUARTITI', 'MOHSINE', 'mohsine.elouartiti@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005269, 'ELHARSI', 'HAMZA', 'hamza.elharsi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005414, 'EL FEKAK', 'ISMAIL', 'ismail.elfekak@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005436, 'FAIK', 'ABDELKHALEK', 'abdelkhalek.faik@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005468, 'SIDATE', 'EL MAHDI', 'elmahdi.sidate@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17005529, 'TABCHI', 'ISSAM', 'issam.tabchi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005537, 'ZEAIKOR', 'YOUSSEF', 'youssef.zeaikor@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005624, 'HMADE', 'ABDELLAH', 'abdellah.hmade@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005686, 'HILIA', 'ANAS', 'anas.hilia@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17005721, 'BENKIRANE', 'SOUKAINA', 'soukaina.benkirane@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005778, 'BAKOUR', 'KAWTAR', 'kawtar.bakour@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17005812, 'BENADDI', 'OUAFAA', 'ouafaa.benaddi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17005819, 'BENSAMDI', 'IMANE', 'imane.bensamdi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005831, 'JABAR', 'YOUNESS', 'youness.jabar@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005847, 'JARHNI', 'AMINE', 'amine.jarhni@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005893, 'JEBBAR', 'ABDENNOUR', 'abdennour.jebbar@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005934, 'BENKADDOUR', 'ASSMA', 'assma.benkaddour@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17005975, 'BEKKALI', 'KAWTAR', 'kawtar.bekkali@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006134, 'BENTASSIL', 'ZINEB', 'zineb.bentassil@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006149, 'GHAZI', 'NERMINE', 'nermine.ghazi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17006198, 'GOUZA', 'SALMA', 'salma.gouza@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006221, 'KRAIA', 'ZINEB', 'zineb.kraia@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006314, 'EL JAAOUANI', 'ZAHRA', 'zahra.eljaaouani@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006335, 'EL GHALI', 'RANIA', 'rania.elghali@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17006391, 'MRABET', 'SALMA', 'salma.mrabet@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006468, 'EL AAZAOUZI', 'IKRAM', 'ikram.elaazaouzi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17006481, 'SAFI', 'OUMAIMA', 'oumaima.safi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17006518, 'ES SEBBANI', 'KAWTAR', 'kawtar.essebbani@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17006533, 'SAFRAOUI', 'CHAIMAE', 'chaimae.safraoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17006537, 'EL KHANFRI', 'HAJAR', 'hajar.elkhanfri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006549, 'FENNIRI', 'JIHAN', 'jihan.fenniri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17006550, 'SABER', 'OUMAIMA', 'oumaima.saber@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006654, 'HADIRI', 'SALOUA', 'saloua.hadiri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006687, 'TAYMOULI', 'ICHRAQ', 'ichraq.taymouli@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006694, 'TADGHOUTI', 'NOUHAILA', 'nouhaila.tadghouti@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006732, 'RADI', 'HAJAR', 'hajar.radi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006800, 'JALAL', 'ACHRAF', 'achraf.jalal@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006833, 'SAHLI', 'OMAYMA', 'omayma.sahli@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17006848, 'MOULAHID', 'KAWTAR', 'kawtar.moulahid@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006852, 'FRIKICH', 'RANIA', 'rania.frikich@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006870, 'TERFAS', 'CHAIMAE', 'chaimae.terfas@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17006903, 'RHAZI', 'YASSINE', 'yassine.rhazi1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17006940, 'MOUSTAHIB', 'OMAR', 'omar.moustahib@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006953, 'R GUIBI', 'CHAIMAA', 'chaimaa.rguibi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006955, 'BOUGATTAYA', 'SOUKAINA', 'soukaina.bougattaya@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006965, 'MAATI', 'KENZA', 'kenza.maati@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006970, 'MELHAOUI', 'RIHAB', 'rihab.melhaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17006980, 'MOSSALLI', 'WIAM', 'wiam.mossalli@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17006986, 'ELAJAJE', 'MALAK', 'malak.elajaje@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17007004, 'OUBELKACEM', 'MANAL', 'manal.oubelkacem@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17007007, 'BOUDAD', 'LATIFA', 'latifa.boudad@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17007017, 'IFKIRNE', 'KENZA', 'kenza.ifkirne@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17007030, 'NOUMA', 'IBTISSAM', 'ibtissam.nouma@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17007548, 'ZAOUI', 'MANAL', 'manal.zaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17007567, 'BOUTRIG', 'OUMNIA', 'oumnia.boutrig@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17007577, 'ABOULHASSANE', 'NIAMA', 'niama.aboulhassane@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17007639, 'EL MESBAHI', 'AYA', 'aya.elmesbahi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17007831, 'EL MOUHTARIM', 'AYMANE', 'aymane.elmouhtarim@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17008374, 'BARAKAT', 'ZINEB NOHAILA', 'zinebnohaila.barakat@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17008695, 'EBOU EL HASSANI', 'AHMED MAHMOUD', 'ahmedmahmoud.ebouelhassani@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 17008796, 'NDIAYE', 'DIOR', 'dior.ndiaye@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17009577, 'ABOU', 'MAWUFEMO JOSUE', 'mawufemo.abou@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 17010439, 'LOGMO ADMEO', 'GOLVEN CALIN', 'golvencalin.logmoadmeo@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000008, 'EL HAOUARI', 'ATIKA', 'ATIKA.ELHAOUARI@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000024, 'DDALLA', 'YOUSRA', 'YOUSRA.DDALLA@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000025, 'ZIYANE', 'NOUHAILA', 'nouhaila.ziyane@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000029, 'LAHLOU', 'HAJAR', 'hajar.lahlou@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000037, 'EL HANI', 'MOHAMED ACHRAF', 'mohamedachraf.elhani@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000041, 'BENZIANE', 'DOUNIA', 'dounia.benziane@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000045, 'AIT MANSOUR', 'ZINEB', 'ZINEB.AITMANSOUR@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000047, 'EL BAKKOURI', 'IMANE', 'IMANE.ELBAKKOURI@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000052, 'TIGRIOUI', 'RHITA', 'rhita.tigrioui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000054, 'TLEMCANI', 'CHAYMA', 'CHAYMA.TLEMCANI@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000062, 'ELHARTI', 'CHAYMAA', 'chaymaa.elharti@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000081, 'EL AZZAOUI', 'MAROUA', 'MAROUA.ELAZZAOUI@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000087, 'ZALLAFI', 'NADA', 'NADA.ZALLAFI@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000091, 'JIRRARI', 'DOHA', 'DOHA.JIRRARI@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000099, 'EL MRHARRAZ', 'SALMA', 'SALMA.ELMRHARRAZ@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000103, 'DAHBI', 'HOUDA', 'dahbi.houda@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000104, 'ELKORRI', 'OUISSAL', 'OUISSAL.ELKORRI@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000111, 'ZAHI', 'ABIR', 'abir.zahi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000141, 'OUKASSOU', 'ILHAM', 'ILHAM.OUKASSOU@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000146, 'ALAOUI', 'ABDELLAH', 'ABDELLAH.ALAOUI@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000155, 'AQUIL', 'ASMAE', 'asmae.aquil@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000157, 'AOUZAL', 'OUMAIMA', 'oumaima.aouzal@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000158, 'AIT HMADOUCH', 'RANIA', 'RANIA.AITHMADOUCH@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000161, 'OUETTAS', 'INTISSAR', 'INTISSAR.OUETTAS@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000163, 'ELMESSAOUDI', 'KHADIJA', 'KHADIJA.ELMESSAOUDI@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000167, 'EL ATTAOUI', 'MOHAMED', 'mohamed.elattaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000168, 'MEZOIR', 'OUSSAMA', 'oussama.mezoir@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000173, 'ZAHI', 'YOUSSEF', 'YOUSSEF.ZAHI1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000176, 'SARDI', 'IHSSANE', 'IHSSANE.SARDI@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000179, 'ZEROUAL', 'AIMEN', 'aimen.zeroual@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000183, 'KASSI', 'AYOUB', 'AYOUB.KASSI@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000184, 'OUJAA', 'YASSINE', 'yassine.oujaa@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000187, 'EL HAJJI', 'LOUBNA', 'loubna.elhajji@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000190, 'BENSSABAHIA', 'MANAL', 'manal.benssabahia@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000193, 'EL AMRANI', 'MANAL', 'MANAL.ELAMRANI1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000194, 'BENSAID', 'MERYEM', 'MERYEM.BENSAID@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000197, 'NASRI', 'ANAS', 'anas.nasri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000199, 'NAJOUI', 'MOHAMMED', 'mohammed.najoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000203, 'FADILI', 'AYOUB', 'AYOUB.FADILI@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000205, 'EL HADY', 'ZAKARIA', 'ZAKARIA.ELHADY@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000212, 'ALLALOU', 'ABDELHAKIM', 'abdelhakim.allalou@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18000215, 'EL YOUSFI-ALAOUI', 'MOHAMMED', 'MOHAMMED.ELYOUSFI-ALAOUI@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18000218, 'LAFDALI', 'HAMZA', 'hamza.lafdali@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18002375, 'FRIHAT', 'TAOUFIK', 'taoufik.frihat@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18004591, 'STITOU', 'NIZAR', 'nizar.stitou@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18005018, 'AMAL', 'AYOUB', 'ayoub.amal@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18006294, 'EL GARAA', 'AYOUB', 'ayoub.elgaraa@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18006305, 'LOUDINI', 'ABDELMALEK', 'abdelmalek.loudini@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18006321, 'ABOURRICHE', 'YOUNESS', 'youness.abourriche@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18006355, 'BARGACH', 'HAMZA', 'hamza.bargach1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18006364, 'BENDEFA', 'AHMED KHALIL', 'ahmedkhalil.bendefa@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18006385, 'ED-DARHRI', 'EL HASSAN', 'elhassan.eddarhri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18006400, 'ECHTOUKI', 'MOHAMED', 'mohamed.echtouki@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18006439, 'EL AMRANI', 'AYMAN', 'ayman.elamrani@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18006452, 'EL HASSNAOUI', 'AOUS', 'aous.elhassnaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18006457, 'EL MEKKAOUI', 'OMAR', 'omar.elmekkaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18006469, 'FETTOUKH', 'ACHRAF', 'achraf.fettoukh@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18006624, 'FANNOUCH', 'AYMEN', 'aymen.fannouch@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18006665, 'HANYF', 'OTHMANE', 'othmane.hanyf@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18006727, 'LAMZALZY', 'ABDELLAH', 'abdellah.lamzalzy@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18006772, 'ASSMOUGUE', 'ASMAE', 'asmae.assmougue@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18006791, 'AL OUARDI', 'SALMA', 'salma.alouardi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18006816, 'MAZOUZI', 'SAAD', 'saad.mazouzi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18006817, 'AGNAOU', 'MINA', 'mina.agnaou@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18006909, 'BOUTLANE', 'MERYEM', 'meryem.boutlane@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18006997, 'BOUTAIB', 'MOHAMED', 'mohamed.boutaib@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18007012, 'BENGELOUNE', 'HIBA', 'hiba.bengeloune@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18007055, 'JARJER', 'FATIMA', 'fatima.jarjer@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18007070, 'EL MOUJOUDI', 'OUMAIMA', 'oumaima.elmoujoudi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18007102, 'EL HAJJI', 'MOUNA', 'mouna.elhajji@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18007124, 'EL GUEROUANI', 'MANAL', 'manal.elguerouani1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18007150, 'MASROUR', 'OUMAYMA', 'oumayma.masrour@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18007157, 'MOUMNI', 'CHAIMAE', 'chaimae.moumni@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18007169, 'MOFAKIR', 'NISRINE', 'nisrine.mofakir@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18007282, 'FAROUQ', 'SOMIA', 'somia.farouq@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18007304, 'HAYTOM', 'IKRAME', 'ikrame.haytom@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18007311, 'HASSINA', 'YOUSRA', 'yousra.hassina@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18007427, 'ELAITARI', 'SOUKAINA', 'soukaina.elaitari@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18007440, 'BELLAALA', 'MOHAMED', 'mohamed.bellaala@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18007488, 'ZIZI', 'LINA', 'lina.zizi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18007854, 'OURAZZOUQ', 'FATIMA EZZAHRA', 'fatimaezzahra.ourazzouq@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18007869, 'OUMAMI', 'MARYAM', 'maryam.oumami@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18007916, 'STITOU', 'NARJIS', 'narjis.stitou@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18007933, 'SMINA', 'NOUHAILA', 'nouhaila.smina@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18007936, 'ZOUHRI', 'FARAH', 'farah.zouhri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18007937, 'TIBARI', 'ZINEB', 'zineb.tibari@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18007992, 'EL MOUSSAOUI', 'HAIFAE', 'haifae.elmoussaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18007996, 'ABOUZBIBA', 'WAFAE', 'wafae.abouzbiba@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18008029, 'KHATTABI', 'AMAL', 'amal.khattabi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18008065, 'EL AZHARY', 'SOUKAINA', 'soukaina.elazhary@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18008290, 'SADRAOUI', 'HIBAT ALLAH', 'hibatallah.sadraoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18009005, 'EL HAOUARI', 'FAHD', 'fahd.elhaouari@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18009006, 'ESSAOUDI', 'FATIMA', 'fatima.essaoudi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18009015, 'BERBACH', 'MALIK', 'malik.berbach@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18009387, 'GHARBI', 'IHSSANE', 'ihssane.gharbi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18009404, 'VALL KHEIR', 'ZEINEBOU', 'zeinebou.vallkheir@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18009444, 'LAAMARTI', 'AKRAM', 'akram.laamarti@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18009449, 'M KHAITIR CHIEKH', 'MAMINA', 'mamina.mkhaitirchiekh@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18009494, 'BENJALLOUL', 'MONTASSIR', 'montassir.benjalloul1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18009497, 'AZIZ', 'OUSSAMA', 'oussama.aziz@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18009590, 'MARRAKCHI', 'AHMED AYMEN', 'ahmedaymen.marrakchi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18009963, 'YAHYAOUI', 'ISMAIL', 'ismail.yahyaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18009966, 'EL HAJJI', 'HASNAA', 'hasnaa.elhajji@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18009968, 'EL GHABI', 'SAFAE', 'safae.elghabi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18010142, 'PIBA', 'KOKO JEAN HUGUES', 'kokojeanhugues.piba@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18010184, 'TIOTSOP FOGUE', 'ADRIANO', 'adriano.tiotsopfogue@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18010233, 'AIT ABBOU', 'HOUYAME', 'houyame.aitabbou@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18010332, 'AZZI', 'ALAA-EDDINE', 'alaaeddine.azzi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18010337, 'ATARRACHI', 'HALIMA', 'halima.atarrachi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 18010404, 'ELAZIZI', 'CHAIMAE', 'elazizi.chaimae@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18010496, 'OUBAHASSOU', 'SANAE', 'oubahassou.sanae@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 18010603, 'ECH-CHOUQI', 'NADA', 'echchouqi.nada@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000006, 'GUENDOULA', 'NOUR-EL HOUDA', 'nour-elhouda.guendoula@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000009, 'SOUKAINI', 'ADIL', 'adil.soukaini@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000010, 'OUKECHI', 'CHAIMAE', 'chaimae.oukechi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000013, 'OHASSAN', 'MOHAMED SAAD', 'mohamedsaad.ohassan@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000015, 'OUSSI', 'YASSINE', 'yassine.oussi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000018, 'DEFAOUI', 'OMAR', 'omar.defaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000030, 'KABBA', 'AYMANE', 'aymane.kabba@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000033, 'FAHIM', 'AHMED', 'ahmed.fahim@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000034, 'EL KAABA', 'MOHAMED AMINE', 'mohamedamine.elkaaba@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000035, 'ZNIBER', 'ALI', 'ali.zniber@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000036, 'OUARDI', 'IKHLASSE', 'ikhlasse.ouardi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000037, 'BENZEKRI', 'ANAS', 'anas.anasbenzekri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000043, 'AGGOUR', 'SARAH', 'sarah.aggour@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000047, 'FENNIRI', 'ABDELJALIL', 'abdeljalil.fenniri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000049, 'BERRAS', 'NAJWA', 'najwa.berras@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000053, 'BENALI', 'MOUAD', 'mouad.benali1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000056, 'DELLALE', 'SOUKAINA', 'soukaina.dellale@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000058, 'DRIAI', 'IMANE', 'imane.driai@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000061, 'MOUAD', 'NOUHAILA', 'nouhaila.mouad@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000063, 'OUGAAMOU', 'MEHDI', 'mehdi.mehdiougaamou@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000066, 'MKADMI', 'OUMKALTOUM', 'oumkaltoum.mkadmi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000067, 'SAAD', 'OUSSAMA', 'oussama.saad@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000076, 'OUAHI', 'KHAOULA', 'khaoula.ouahi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000077, 'LOUZAOUI', 'SAFAA', 'safaa.louzaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000078, 'SOUINIA', 'KELTOUM', 'keltoum.souinia@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000080, 'GAIZI', 'HABIBA', 'habiba.gaizi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000081, 'SOFIANE', 'CHARAF EDDINE', 'charafeddine.sofiane@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000086, 'TAZI', 'HAMZA', 'hamza.tazi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000088, 'TAIB', 'HICHAM', 'hicham.taib@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000095, 'QANNOUF', 'MUSTAPHA', 'mustapha.qannouf1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000097, 'KERCHAOUI', 'OMAR', 'omar.kerchaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000098, 'RIFAY', 'WASSIM', 'wassim.rifay@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000099, 'IMANI', 'FADI', 'fadi.imani@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000100, 'BENSAR', 'OUMAIMA', 'oumaima.bensar@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000102, 'HMOUDAT', 'OUSSAMA', 'oussama.hmoudat@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000126, 'ETTAIEK', 'LAMYAE', 'lamyae.ettaiek@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000127, 'EL HIRECH', 'GHIZLANE', 'ghizlane.elhirech@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000137, 'LAGHRISSI', 'MOHAMED', 'mohamed.laghrissi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000141, 'ABOUSAADIA', 'ANAS', 'anas.abousaadia@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000145, 'BENOUAHI', 'OMAR', 'omar.benouahi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000147, 'BOUTAHLI', 'BILAL', 'bilal.boutahli@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000151, 'BOUNASSEH', 'ABDESSAMAD', 'abdessamad.bounasseh@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000157, 'EL-OTHMANI', 'YOUSSEF', 'youssef.el-othmani@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000167, 'EL HASSOUNI', 'MERYEM', 'meryem.elhassouni1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000168, 'EL FAKER', 'LAMIAE', 'lamiae.elfaker@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000169, 'EL ABASSI', 'MALAK', 'malak.elabassi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000170, 'EL OUAHHABY', 'CHAIMAE', 'chaimae.elouahhaby@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000177, 'DAIBAZI', 'ASMAE', 'asmae.daibazi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000182, 'LOUADNI', 'CHAIMAA', 'chaimaa.louadni@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000186, 'LAGHDIRI', 'CHAIMAA', 'chaimaa.laghdiri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000188, 'BENDEROUACH', 'KARIMA', 'karima.benderouach@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000191, 'JEBBAR', 'NASSIMA', 'nassima.jebbar@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000192, 'IDRI', 'KHAWLA', 'khawla.idri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000194, 'TOULALI', 'MERYEM', 'meryem.toulali@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000217, 'FRIAIN', 'IMAN', 'iman.friain@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19000218, 'FRIAIN', 'OMAYMA', 'omayma.friain@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000243, 'CHABANA', 'HAMZA', 'hamza.chabana@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19000244, 'BENSALIM', 'YOUSRA', 'yousra.bensalim@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19002414, 'BAHAMMOU', 'TAHA', 'taha.bahammou@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19003672, 'ZIRARI', 'MOHAMED', 'mohamed.zirari@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19006950, 'RAFILI', 'SALMA', 'salma.rafili@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19006997, 'MOUSSADIK', 'MEHDI', 'mehdi.moussadik@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19007144, 'OUDADA', 'AYOUB', 'ayoub.oudada@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19007215, 'MOTASSIM', 'AHMED TAHA', 'ahmedtaha.motassim@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19007217, 'ACHAOUI', 'YOUNES', 'younes.achaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19007233, 'EL FEKAK', 'SALMA', 'salma.elfekak@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19007468, 'RAKNI', 'MOHAMED ABDELBASSET', 'mohamedabdelbasset.rakni@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19007523, 'ESSALMANI', 'YASMINE', 'yasmine.essalmani@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19007697, 'MOUSSAFI', 'AYOUB', 'ayoub.moussafi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19008604, 'MOUGTAHIDI', 'SALMA', 'salma.mougtahidi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19008615, 'LARROUSSI', 'SARA', 'sara.larroussi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19008618, 'ZENZOULI', 'IKRAM', 'ikram.zenzouli@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19008624, 'AIT OUAKRIM', 'MERYEM', 'meryem.aitouakrim@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19008627, 'KOURTAH', 'NADA', 'nada.kourtah@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19008634, 'LACHIA', 'SALMA', 'salma.lachia@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19008652, 'BENKERROUM', 'MARWA', 'marwa.benkerroum@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19008663, 'SAMIR', 'TAHA', 'taha.samir@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19008666, 'AHCINE', 'CHAYMAA', 'chaymaa.ahcine@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19008672, 'BENASSER', 'HASSAN AYOUB', 'hassanayoub.benasser@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19008673, 'OUBENMOH', 'YASSINE', 'yassine.oubenmoh@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19008679, 'EL AISSI', 'NOUHAILA', 'nouhaila.elaissi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19008684, 'SINAA', 'HAMZA', 'hamza.sinaa@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19008695, 'DRIOUICH', 'MOHAMMED', 'mohammed.driouich1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19008711, 'EL OURRAT', 'FAYCAL', 'faycal.elourrat@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19008915, 'QAFFSSAOUI', 'MAROUANE', 'marouane.qaffssaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19009650, 'BOUOUZM', 'YASSINE', 'yassine.bououzm@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19010041, 'SMINA', 'OUMAIMA', 'oumaima.smina@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19010618, 'BAHAMAD', 'IMANE', 'imane.bahamad@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19010827, 'SAIDNI', 'INASS', 'inass.saidni@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19010867, 'LAZHAR', 'NADA', 'nada.lazhar@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19010961, 'MOUMNI', 'YAHYA', 'yahya.moumni@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19010967, 'BRIBRI', 'HIND', 'hind.bribri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19010973, 'RAIHANI', 'YOUSSRA', 'youssra.raihani@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011023, 'BOUHADDOU', 'MARWANE', 'marwane.bouhaddou@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011034, 'ATAOUI', 'NIZAR', 'nizar.ataoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011038, 'OUKHRID', 'AMAL', 'amal.oukhrid@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011043, 'NOR', 'NAJLAE', 'najlae.nor@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011053, 'CHIKANDO SINOU', 'EMILIE OLIVE', 'emilieolive.chikandosinou@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19011058, 'BARIK', 'HAYTAM', 'haytam.barik@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19011062, 'MERIZAK', 'HOUSSAM', 'houssam.merizak@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011064, 'EL HAMZAOUI', 'ABDERRAHIM', 'abderrahim.elhamzaoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19011072, 'FOUKHAR', 'ILIASS', 'iliass.foukhar@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011086, 'CHEMRIH', 'YASSINE', 'yassine.chemrih@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19011102, 'BENJELLOUN', 'HAMZA', 'hamza.benjelloun@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011104, 'BIROUK', 'NOURA', 'noura.birouk@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011115, 'TIZIT', 'MOUAD', 'mouad.tizit@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011119, 'ENAGRE', 'FATIMA ZAHRA', 'fatimazahra.enagre@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011141, 'MZALI', 'SALMA', 'salma.mzali@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011142, 'BAHNIF', 'ILYAS', 'ilyas.bahnif@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19011156, 'AIT EL KOUCH', 'ANASS', 'anass.aitelkouch@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011200, 'BOUKHSSIBI', 'HIBA', 'hiba.boukhssibi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011252, 'ZOETYANDE', 'NERKIETA NAFISSATOU', 'nerkietanafissatou.zoetyande@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19011266, 'ZOUNGRANA YVES ALBAN', 'SOM-BE-WENDE', 'som-be-wende.zoungranayvesalban@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19011462, 'BELHAJ-SOULAMI', 'KENZA', 'kenza.belhaj-soulami@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 19012018, 'JNIHA', 'IMANE', 'imane.jniha@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 19015220, 'DEKPE', 'KOSSI ELOLO BERNARD', 'kossielolobernard.dekpe@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 20000307, 'M\'HIN', 'NIMA', 'nima.mhin@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 20000844, 'BELHAJ', 'MAJDA', 'majda.belhaj1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 20000852, 'LBARRAH', 'YAHYA', 'yahya.lbarrah@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 20000857, 'CHLAGUE', 'OUMAIMA', 'oumaima.chlague@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 20000861, 'EL MRIHY', 'SOUHAIL', 'souhail.elmrihy@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 20005505, 'SAFI', 'EL MEHDI', 'elmehdi.safi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 20005536, 'JEMMAL', 'SOUFIANE', 'soufiane.jemmal@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 20005731, 'BEKRINE', 'OUSSAMA', 'oussama.bekrine@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 20006692, 'BOUAINE', 'OMAR', 'omar.bouaine@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 20006852, 'CHTAIBI', 'FATIMA-EZZAHRAE', 'fatima-ezzahrae.chtaibi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 20010521, 'SAHMI', 'IHSSAN', 'ihssan.sahmi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 20011375, 'KHADDAM', 'CHAIMAE', 'chaimae.khaddam@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 20012111, 'ZEROUALI', 'IBTISSAM', 'ibtissam.zerouali@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 20012117, 'BOUSSERRHINE', 'ZIYAD', 'ziyad.bousserrhine@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 20013993, 'BAKHIL', 'AISSA', 'aissa.bakhil@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 21011657, 'KENBOUCH', 'FATIMA', 'fatima.kenbouch@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21011748, 'SAIDI', 'ZAKARIAE', 'zakariae.saidi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21015271, 'EL KHCHINE', 'MOHAMED', 'mohamed.elkhchine1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21015519, 'BITI', 'AYMANE', 'aymane.biti@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21015770, 'ATIR', 'ZAYNAB', 'zaynab.atir@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21015868, 'MEZIANE ZERHOUNI', 'HASSAN', 'hassan.mezianezerhouni@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 21015880, 'ELOMARI', 'ZAKARIAE', 'zakariae.elomari@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 21015881, 'JEBBOUR', 'WIAM', 'wiam.jebbour@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21015883, 'LAATITINE', 'KHADIJA', 'khadija.laatitine@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 21015885, 'AGHRAZ', 'OUARDA', 'ouarda.aghraz@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21015929, 'HAMMADI', 'MASSINA', 'massina.hammadi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21015938, 'AIT BELAID', 'IKRAM', 'ikram.aitbelaid@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 21015951, 'CHEGDANI', 'SARA', 'sara.chegdani@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21017117, 'GHOUMMAID', 'MOHAMMED', 'mohammed.ghoummaid@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 21017126, 'ADRAOUI', 'ANAS', 'anas.adraoui1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21017164, 'ABOU EL HAOUL', 'HOUSSAM EDDINE', 'houssameddine.abouelhaoul@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 21017206, 'BENAIDA', 'ZINEB', 'zineb.benaida@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21017268, 'KAMI', 'YASMINE', 'yasmine.kami@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21017281, 'MOUHAOUIR', 'HAMZA', 'hamza.mouhaouir@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21017537, 'TAHER', 'IKRAM', 'ikram.taher@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21017620, 'JALAL', 'MOHAMED', 'mohamed.jalal1@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 21017629, 'ELASSRAOUI', 'HOUSSAM', 'houssam.elassraoui@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEDU', 21017808, 'GHALLOUDI', 'ADAM', 'adam.ghalloudi@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21017854, 'CHAGRI', 'ANASS', 'anass.chagri@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg'),
('NDIGEIN', 21017855, 'LAZAAR', 'KHAOULA', 'khaoula.lazaar@uit.ac.ma', 0, 'azerty', 0, 'inconnu.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `rapp`
--

CREATE TABLE `rapp` (
  `id_rapport` int(8) NOT NULL,
  `nom_pre_version` varchar(50) DEFAULT NULL,
  `nom_version_corrige` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rapp`
--

INSERT INTO `rapp` (`id_rapport`, `nom_pre_version`, `nom_version_corrige`) VALUES
(0, 'Aucun', 'Aucun'),
(1, '14000130premier_versionpdf', '');

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

CREATE TABLE `stage` (
  `id_stage` int(8) NOT NULL,
  `valide` tinyint(1) DEFAULT 0,
  `note_final` int(8) DEFAULT NULL,
  `attestation` varchar(60) DEFAULT '0',
  `fiche_devaluation` varchar(60) DEFAULT '0',
  `id_ens` int(8) DEFAULT 0,
  `id_sujet` int(8) DEFAULT 0,
  `id_rapport` int(8) DEFAULT 0,
  `id_entreprise` int(8) DEFAULT 0,
  `id_encadrant` int(8) DEFAULT 0,
  `num_apoge_etud` int(8) DEFAULT 0,
  `num_apoge_etud1` int(50) DEFAULT 0,
  `presentation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `stage`
--

INSERT INTO `stage` (`id_stage`, `valide`, `note_final`, `attestation`, `fiche_devaluation`, `id_ens`, `id_sujet`, `id_rapport`, `id_entreprise`, `id_encadrant`, `num_apoge_etud`, `num_apoge_etud1`, `presentation`) VALUES
(38, 0, 10, '1.pdf', '', 0, 1, 1, 1, 1, 16003897, 17004304, ''),
(75, 0, 15, NULL, NULL, 1, 1, 0, 63, 29, 16000109, 17004423, NULL),
(76, 1, 18, NULL, NULL, 22, 1, 1, 43, 35, 15006663, 16000109, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sujet`
--

CREATE TABLE `sujet` (
  `id_sujet` int(8) NOT NULL,
  `intitule_du_sujet` varchar(60) NOT NULL,
  `description` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sujet`
--

INSERT INTO `sujet` (`id_sujet`, `intitule_du_sujet`, `description`) VALUES
(0, 'Aucun', 'Aucun'),
(1, '8', '9');

-- --------------------------------------------------------

--
-- Structure de la table `tech`
--

CREATE TABLE `tech` (
  `id_tech` int(8) NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tech`
--

INSERT INTO `tech` (`id_tech`, `nom`) VALUES
(0, 'Aucun');

-- --------------------------------------------------------

--
-- Structure de la table `utiliser`
--

CREATE TABLE `utiliser` (
  `id_stage` int(8) NOT NULL,
  `id_tech` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utiliser`
--

INSERT INTO `utiliser` (`id_stage`, `id_tech`) VALUES
(38, 0),
(75, 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `encadrant`
--
ALTER TABLE `encadrant`
  ADD PRIMARY KEY (`id_encadrant`),
  ADD KEY `id_entreprise` (`id_entreprise`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id_ens`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id_entreprise`);

--
-- Index pour la table `etudient`
--
ALTER TABLE `etudient`
  ADD PRIMARY KEY (`num_apoge_etud`),
  ADD KEY `photo` (`num_apoge_ens`),
  ADD KEY `num_apoge_ens` (`num_apoge_ens`),
  ADD KEY `num_apoge_etud2` (`num_apoge_etud2`);

--
-- Index pour la table `rapp`
--
ALTER TABLE `rapp`
  ADD PRIMARY KEY (`id_rapport`);

--
-- Index pour la table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`id_stage`),
  ADD KEY `num_apoge_ens` (`id_ens`),
  ADD KEY `id_sujet` (`id_sujet`),
  ADD KEY `id_rapport` (`id_rapport`),
  ADD KEY `id_entreprise` (`id_entreprise`),
  ADD KEY `id_encadrant` (`id_encadrant`),
  ADD KEY `num_apoge_etud` (`num_apoge_etud`),
  ADD KEY `num_apoge_etud1` (`num_apoge_etud1`);

--
-- Index pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD PRIMARY KEY (`id_sujet`);

--
-- Index pour la table `tech`
--
ALTER TABLE `tech`
  ADD PRIMARY KEY (`id_tech`);

--
-- Index pour la table `utiliser`
--
ALTER TABLE `utiliser`
  ADD PRIMARY KEY (`id_stage`,`id_tech`),
  ADD KEY `id_stage` (`id_stage`,`id_tech`),
  ADD KEY `id_tech` (`id_tech`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `encadrant`
--
ALTER TABLE `encadrant`
  MODIFY `id_encadrant` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT pour la table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `id_ens` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `id_entreprise` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `rapp`
--
ALTER TABLE `rapp`
  MODIFY `id_rapport` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `stage`
--
ALTER TABLE `stage`
  MODIFY `id_stage` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `sujet`
--
ALTER TABLE `sujet`
  MODIFY `id_sujet` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `tech`
--
ALTER TABLE `tech`
  MODIFY `id_tech` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `encadrant`
--
ALTER TABLE `encadrant`
  ADD CONSTRAINT `encadrant_ibfk_1` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id_entreprise`);

--
-- Contraintes pour la table `etudient`
--
ALTER TABLE `etudient`
  ADD CONSTRAINT `etudient_ibfk_1` FOREIGN KEY (`num_apoge_ens`) REFERENCES `enseignant` (`id_ens`),
  ADD CONSTRAINT `etudient_ibfk_2` FOREIGN KEY (`num_apoge_etud2`) REFERENCES `etudient` (`num_apoge_etud`);

--
-- Contraintes pour la table `stage`
--
ALTER TABLE `stage`
  ADD CONSTRAINT `stage_ibfk_3` FOREIGN KEY (`id_rapport`) REFERENCES `rapp` (`id_rapport`),
  ADD CONSTRAINT `stage_ibfk_4` FOREIGN KEY (`id_entreprise`) REFERENCES `entreprise` (`id_entreprise`),
  ADD CONSTRAINT `stage_ibfk_5` FOREIGN KEY (`id_encadrant`) REFERENCES `encadrant` (`id_encadrant`),
  ADD CONSTRAINT `stage_ibfk_6` FOREIGN KEY (`num_apoge_etud`) REFERENCES `etudient` (`num_apoge_etud`),
  ADD CONSTRAINT `stage_ibfk_7` FOREIGN KEY (`id_ens`) REFERENCES `enseignant` (`id_ens`),
  ADD CONSTRAINT `stage_ibfk_8` FOREIGN KEY (`id_sujet`) REFERENCES `sujet` (`id_sujet`),
  ADD CONSTRAINT `stage_ibfk_9` FOREIGN KEY (`num_apoge_etud1`) REFERENCES `etudient` (`num_apoge_etud`);

--
-- Contraintes pour la table `utiliser`
--
ALTER TABLE `utiliser`
  ADD CONSTRAINT `utiliser_ibfk_1` FOREIGN KEY (`id_stage`) REFERENCES `stage` (`id_stage`),
  ADD CONSTRAINT `utiliser_ibfk_2` FOREIGN KEY (`id_tech`) REFERENCES `tech` (`id_tech`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
