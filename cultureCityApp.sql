-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : jeu. 31 mars 2022 à 19:24
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cultureCityApp`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`) VALUES
(1, 'Concert', 'concert'),
(2, 'Spectacle', 'spectacle'),
(3, 'Exposition', 'exposition'),
(4, 'Loisir', 'loisir'),
(5, 'Événementiel', 'evenementiel');

-- --------------------------------------------------------

--
-- Structure de la table `ch_cookieconsent_log`
--

CREATE TABLE `ch_cookieconsent_log` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `cookie_consent_key` varchar(255) NOT NULL,
  `cookie_name` varchar(255) NOT NULL,
  `cookie_value` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ch_cookieconsent_log`
--

INSERT INTO `ch_cookieconsent_log` (`id`, `ip_address`, `cookie_consent_key`, `cookie_name`, `cookie_value`, `timestamp`) VALUES
(27, '127.0.0.x', '623348bac4328', 'tracking', 'false', '2022-03-17 15:42:02'),
(28, '127.0.0.x', '62335eb6b3e62', 'tracking', 'true', '2022-03-17 17:15:50'),
(29, '127.0.0.x', '623362385be01', 'tracking', 'false', '2022-03-17 17:30:48'),
(30, '127.0.0.x', '62336752018b3', 'tracking', 'true', '2022-03-17 17:52:34'),
(31, '127.0.0.x', '6234ec2f5abf3', 'tracking', 'false', '2022-03-18 21:31:43'),
(32, '127.0.0.x', '6235066d61638', 'tracking', 'true', '2022-03-18 23:23:41'),
(33, '127.0.0.x', '6235d08d7f173', 'tracking', 'false', '2022-03-19 13:46:05'),
(34, '127.0.0.x', '6235d58e97a31', 'tracking', 'false', '2022-03-19 14:07:26'),
(35, '127.0.0.x', '6238409b82de3', 'tracking', 'true', '2022-03-21 10:08:43'),
(36, '127.0.0.x', '6239c1dad675d', 'tracking', 'true', '2022-03-22 13:32:26'),
(37, '127.0.0.x', '6241e3b316e03', 'tracking', 'true', '2022-03-28 18:34:59'),
(38, '127.0.0.x', '6242da6719884', 'tracking', 'true', '2022-03-29 12:07:35');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220308111252', '2022-03-08 12:48:06', 375);

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `is_premium` tinyint(1) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` date NOT NULL COMMENT '(DC2Type:date_immutable)',
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `event`
--

INSERT INTO `event` (`id`, `category_id`, `user_id`, `name`, `price`, `description`, `is_premium`, `start_date`, `end_date`, `created_at`, `updated_at`, `slug`, `picture`) VALUES
(1, 1, 4, 'Jacky Cordéon', 14, '<p>Le Lorem Ipsum est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte. Il n&#39;a pas fait que survivre cinq si&egrave;cles, mais s&#39;est aussi adapt&eacute; &agrave; la bureautique informatique, sans que son contenu n&#39;en soit modifi&eacute;. Il a &eacute;t&eacute; popularis&eacute; dans les ann&eacute;es 1960 gr&acirc;ce &agrave; la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus r&eacute;cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>', 0, '2022-04-03 21:00:00', NULL, '2022-03-08', NULL, 'jacky-cordeon', NULL),
(2, 1, 4, 'Kaden Horn', 19, '<p>Le Lorem Ipsum est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte.</p>', 0, '2022-04-01 21:00:00', NULL, '2022-03-08', NULL, 'kaden-horn', NULL),
(3, 1, 4, 'Bone tee & The Slughunters', 20, '<p>Leur passion pour de grands artistes tel Champion Jack Dupree, Willie Dixon ou Freddy King et marquait la naissance du &quot;New Antique Sound&quot;!</p>\r\n\r\n<p>Mixant les multiples influences de ces passionn&eacute;s de blues ce disque navigue habilement entre le son rude et chaud du Mississippi,le boogie woogie exalt&eacute; des shouters ou encore le jump blues du g&eacute;nial T Bone Walker. Un bouillon de modernit&eacute; vintage.</p>', 0, '2022-04-02 21:00:00', NULL, '2022-03-08', NULL, 'bone-tee-the-slughunters', NULL),
(4, 1, 4, 'Los Fanfaros', 14, '<p>Le Lorem Ipsum est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte.</p>', 0, '2022-03-31 21:00:00', NULL, '2022-03-08', NULL, 'los-fanfaros', NULL),
(5, 1, 4, 'Petra Villarreal', 20, '<p>Le Lorem Ipsum est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte.</p>', 1, '2022-04-03 21:00:00', NULL, '2022-03-08', NULL, 'petra-villarreal', NULL),
(6, 1, 4, 'Maurice Wampus', 19, '<p>Le Lorem Ipsum est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte.</p>', 0, '2022-03-31 21:00:00', NULL, '2022-03-08', NULL, 'maurice-wampus', NULL),
(7, 1, 4, 'Pearl Velasquez', 19, '<p>Le Lorem Ipsum est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte.</p>', 0, '2022-04-02 21:00:00', NULL, '2022-03-08', NULL, 'pearl-velasquez', NULL),
(8, 1, 4, 'Aristotle Vargas', 21, '<p>Le Lorem Ipsum est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte.</p>', 0, '2022-03-31 21:00:00', NULL, '2022-03-08', NULL, 'aristotle-vargas', NULL),
(9, 2, 5, 'Ballet du Conservatoire', 25, '<p>Le Lorem Ipsum est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte.</p>', 0, '2022-04-03 21:00:00', NULL, '2022-03-08', NULL, 'ballet-du-conservatoire', NULL),
(10, 4, 5, 'Atelier d\'intitiation à la comédie', NULL, '<p>Le Lorem Ipsum est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte.</p>', 0, '2022-04-03 21:00:00', NULL, '2022-03-08', NULL, 'atelier-d-intitiation-a-la-comedie', NULL),
(11, 2, 5, 'Fantastic Creatures', 19, '<p>Le Lorem Ipsum est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte.</p>', 1, '2022-03-31 21:00:00', NULL, '2022-03-08', NULL, 'fantastic-creatures', NULL),
(12, 1, 5, 'Concert de l\'orchestre municipal', 22, '<p>Le Lorem Ipsum est simplement du faux texte employ&eacute; dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l&#39;imprimerie depuis les ann&eacute;es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour r&eacute;aliser un livre sp&eacute;cimen de polices de texte.</p>', 0, '2022-04-02 21:00:00', NULL, '2022-03-08', NULL, 'concert-de-l-orchestre-municipal', NULL),
(13, 4, 6, 'Escalade Jeunesse', 5, 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.', 0, '2022-03-31 21:00:00', NULL, '2022-03-08', NULL, 'escalade-jeunesse', NULL),
(14, 4, 6, 'Jouer pour se rencontrer !', 0, 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.', 0, '2022-03-31 21:00:00', NULL, '2022-03-08', NULL, 'jouer-pour-se-rencontrer', NULL),
(15, 4, 6, 'Les petits jeux', 0, 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.', 0, '2022-03-31 21:00:00', NULL, '2022-03-08', NULL, 'les-petits-jeux', NULL),
(16, 4, 6, 'Poterie pour tous !', 2, 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.', 0, '2022-04-03 21:00:00', NULL, '2022-03-08', NULL, 'poterie-pour-tous', NULL),
(17, 4, 6, 'Plein les doigts !', 5, 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.', 1, '2022-03-31 21:00:00', NULL, '2022-03-08', NULL, 'plein-les-doigts', NULL),
(18, 4, 6, 'Tournoi de foot ados', 3, 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.', 0, '2022-04-03 21:00:00', NULL, '2022-03-08', NULL, 'tournoi-de-foot-ados', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `event_tag`
--

CREATE TABLE `event_tag` (
  `event_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `event_tag`
--

INSERT INTO `event_tag` (`event_id`, `tag_id`) VALUES
(1, 1),
(10, 2),
(11, 1),
(13, 1),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 3),
(17, 1),
(18, 1);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `author_id`, `event_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'J\'adore...ce mec a vraiment un super feeling !!!', '2022-03-12 15:33:39', NULL),
(5, 2, 1, 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n\'a pas fait que survivre cinq siècles, mais s\'est aussi adapté à la bureautique informatique, sans que son contenu n\'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', '2022-03-20 03:00:43', '2022-03-20 03:05:20');

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reset_password_request`
--

INSERT INTO `reset_password_request` (`id`, `user_id`, `selector`, `hashed_token`, `requested_at`, `expires_at`) VALUES
(2, 8, 'SMqy2Ekz0qx96pWctM0F', '3KXlR9pb1ghd4YaQe4XJTq12/Zk+A9uNQsRaYqPkEgs=', '2022-03-16 19:49:05', '2022-03-16 20:49:05');

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id`, `name`, `slug`) VALUES
(1, 'jeunesse', 'jeunesse'),
(2, 'gratuit', 'gratuit'),
(3, 'créativité', 'creativite');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siren` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `founded_in` datetime DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date NOT NULL COMMENT '(DC2Type:date_immutable)',
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `place_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `is_verified`, `address_1`, `address_2`, `city`, `zip`, `siren`, `phone`, `founded_in`, `website`, `capacity`, `facebook`, `twitter`, `instagram`, `created_at`, `updated_at`, `slug`, `status`, `place_name`, `description`, `avatar`, `banner`, `lat`, `lng`) VALUES
(2, 'user@user.fr', '[\"ROLE_USER\"]', '$2y$13$kbTafst6qO0tBCqf53o2.evepsX6ZaDqlmU54R88HiwdKGIH5Smiu', 'Jean Utilisateur', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://facebook.fr', NULL, 'http://instagram.fr', '2022-03-08', '2022-03-15 21:57:17', 'jean-utilisateur', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'admin@admin.fr', '[\"ROLE_ADMIN\"]', '$2y$13$uv4s7g39RcoIiqHbaLGRUO16nbaQgcLfqvATORSmR0pCv7QdlU9hO', 'Maurice Administrateur', 1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-12 00:00:00', NULL, NULL, NULL, NULL, NULL, '2022-03-08', '2022-03-12 15:03:17', 'maurice-administrateur', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'dariflo@dariflo.fr', '[\"ROLE_ANNONCEUR\"]', '$2y$13$SXbPgUdtr.z7elv.xIpEE.BIjkX5dHjeTKtiSBt8/nRo2qchBP2Ua', 'Le Dariflo', 1, '15 Boulevard du Président Carnot', NULL, 'Agen', '47000', '836838634', '05 53 55 55 55', '2022-03-17 00:00:00', 'http://ledariflo.fr', 700, 'http://facebook.fr', 'http://twitter.fr', 'https://www.instagram.com/florida_agen/?hl=fr', '2022-03-08', '2022-03-12 14:35:46', 'le-dariflo', 1, 'Le Dariflo', 'Lieu convivial et vivant situé en plein centre ville le Dariflo propose de nombreuses activités liées aux pratiques musicales : des cours d’instruments, des ateliers d’éveil, des rencontres avec des artistes. La structure dispose de 4 studios de répétitions....', NULL, NULL, '44.1981655', '0.620231'),
(5, 'theatre@theatre.fr', '[\"ROLE_ANNONCEUR\"]', '$2y$13$VT8qcfIGNIsRFsQ1aP0tgu8QGP618pm6TToyObDVYUFRQkreVkabm', 'Le Ptt Théâtre ', 1, '10 Rue Molière', NULL, 'Agen', '47000', '836838634', '05 53 35 53 53', '2017-03-12 00:00:00', 'http://theatre.fr', 450, NULL, NULL, NULL, '2022-03-08', '2022-03-12 14:44:13', 'nom-d-utilisateur', 1, 'Le Ptt Théâtre', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.', NULL, NULL, '44.2036013', '0.61552486'),
(6, 'asso@asso.fr', '[\"ROLE_ANNONCEUR\"]', '$2y$13$2lPDtvXbWGoOIXLindaNNOzXFEtbZbLYNCxctIed.bQfpUv6.6hKq', 'Asso de Loisirs', 1, '11 Rue des Iles', '', 'Agen', '47000', '836838634', '05 53 66 77 88 33', '2018-03-12 00:00:00', 'http://loisirs.fr', NULL, NULL, NULL, NULL, '2022-03-08', '2022-03-15 21:53:38', 'asso-de-loisirs', 1, 'Loisirs  Asso', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.', NULL, NULL, '44.20755875', '0.6084718'),
(8, 'simonchabrier@gmail.com', '[\"ROLE_USER\"]', '$2y$13$8QK71VRVMPRZl4QhKOpWeORUPWTwX.T.M4K0n8RKPkONLQfuoJz8C', 'simon', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', '2022-03-16 10:13:41', 'simon', 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_event`
--

CREATE TABLE `user_event` (
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_event`
--

INSERT INTO `user_event` (`user_id`, `event_id`) VALUES
(2, 3),
(2, 4),
(4, 4),
(8, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ch_cookieconsent_log`
--
ALTER TABLE `ch_cookieconsent_log`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3BAE0AA712469DE2` (`category_id`),
  ADD KEY `IDX_3BAE0AA7A76ED395` (`user_id`);

--
-- Index pour la table `event_tag`
--
ALTER TABLE `event_tag`
  ADD PRIMARY KEY (`event_id`,`tag_id`),
  ADD KEY `IDX_1246725071F7E88B` (`event_id`),
  ADD KEY `IDX_12467250BAD26311` (`tag_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A8A6C8DF675F31B` (`author_id`),
  ADD KEY `IDX_5A8A6C8D71F7E88B` (`event_id`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_event`
--
ALTER TABLE `user_event`
  ADD PRIMARY KEY (`user_id`,`event_id`),
  ADD KEY `IDX_D96CF1FFA76ED395` (`user_id`),
  ADD KEY `IDX_D96CF1FF71F7E88B` (`event_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ch_cookieconsent_log`
--
ALTER TABLE `ch_cookieconsent_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_3BAE0AA712469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_3BAE0AA7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `event_tag`
--
ALTER TABLE `event_tag`
  ADD CONSTRAINT `FK_1246725071F7E88B` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_12467250BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8D71F7E88B` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  ADD CONSTRAINT `FK_5A8A6C8DF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user_event`
--
ALTER TABLE `user_event`
  ADD CONSTRAINT `FK_D96CF1FF71F7E88B` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D96CF1FFA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
