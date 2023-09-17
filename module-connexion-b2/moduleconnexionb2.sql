-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 17 sep. 2023 à 19:04
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `moduleconnexionb2`
--

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `firstname`, `lastname`, `password`) VALUES
(1, 'azerty', '', '', 'azerty'),
(2, 'ljkn', '', '', 'kjkn'),
(3, 'azerty', '', '', '$2y$10$lwNkJDLOg5zOfPsB6HrCGeb1qhAg2x95dA4d.Xi5Q8Z3WG4Te5Wdm'),
(8, 'ljkn', '', '', '$2y$10$BWhU6UGPtgKAYYobPCBM0OQFuaJt2uzZPgvTrN5HFn3m6CN0TPR.W'),
(19, 'ljkn', '', '', '$2y$10$r4ffpbNMkJ1neTxG/e.ju.f7I8088EBve4dbs0.CQDzsxEg7oFF2y'),
(20, 'ljkn', '', '', '$2y$10$H4KbiuIp82.ikfY7d2P56uk3AjjspJgVN9j.XYAnfP18H3wfzqIry'),
(21, 'ljkn', '', '', '$2y$10$0QafsPZcC9ZIg4hRVJFBZOAolQJxM.CrVzszJD4B8u9L1SPTbbPCa'),
(22, 'ljkn', '', '', '$2y$10$G1nV02qqBeR//lGWKkFTNuLm3Q7x05t534.K9MGsVKU0c0WFJpkAS'),
(23, 'ljkn', '', '', '$2y$10$FAHPTDp69RuuJW16qweY6OaGTWMWsgtF0DID89Z66Xwjcs/1m4w6y'),
(24, 'ljkn', '', '', '$2y$10$QdFSvXyzD7luJskhNvb9Ye6HGd8Pk93jYRpT.xcR52EBmwPCfUSt.'),
(25, 'ljkn', '', '', '$2y$10$ooiIUewNu0jvYzn1ngmgAeKV8jpak1ZW.T.oBP3NMijZbGNolAIZm'),
(26, 'ljkn', '', '', '$2y$10$neEfnUo3SLXzD6c.6pbRbuCOUIYGAzdJiLHAaN.JcddmVH7tr9KIG'),
(27, 'ljkn', '', '', '$2y$10$qTNKPFWKDCqePFtZKlcIZOD4GXGvgUoT2VUZX43dHH62HZC5Dh1hK'),
(28, 'ljkn', '', '', '$2y$10$ba2GkgoYezv/5NfleAO0D.SIHqWo3mGlWmrI3DTqqvnP2n9sdFE5y'),
(32, 'antony.', '', '', '$2y$10$vPvbB0YisLFXrw9Gy9w2PeIiKPesNT8tmOvWdzmNULrZz.kxkeMEi'),
(30, 'ljkn', '', '', '$2y$10$tT1P5m8LqT5CKdZ8WC1ciOsgRs6fWM2qqgMiOfE1E0Q2suVX8duc.'),
(31, 'antony.', '', '', '$2y$10$/goUHXkHKWmQAeG7WjURK.bBStVDRq.oZMucvKK1iU5OURHGVuzTS'),
(33, 'pipoudou', '', '', '$2y$10$wli750Su/AuOVXtgrJJz3et3YQ9ZCuUK65haMoZTx2aKWFKrX/BUC'),
(41, 'hello', '', '', '$2y$10$ImtNlkt/wBs.KOKFigQrR.wDxZ7avqc8PvnJFzTHiXe5nJQfdP0uC'),
(40, 'LILI', '', '', '$2y$10$veX11jOyHYAyj0bBPtaQ3eMGa0LTvoK4OUBGmMru6JZ5mF1pwZ6RW'),
(36, 'antony.', '', '', '$2y$10$Rlfwf8Dpve6Xed7nzJhFaOGZt12ZkyOUfsy84Zxch9GgsduXBKLK.'),
(37, 'antony-lucide', '', '', '$2y$10$vr/96J1/07BVKUOROrIEhuVQwX8XmhZ3jL6OrsJr7tAmdtnNEXxv2'),
(38, 'antony-lucide', '', '', '$2y$10$ENrRmzp9nXsM4NDYCrOpduxTfdirECT1K0nhNQKgreD1x0XOPgEF.'),
(44, 'haha', '', '', '$2y$10$EcqNYnmgoTcuODXffX1WPOlcF/WvXji8QTws2Q7AI.CWIrURxLR.C'),
(45, 'haha', '', '', '$2y$10$83BpwtgDiaIQSYqgio9CkuHoAVCkbMJQfWy4dN.Jd0GhNZaxUCa3O'),
(46, 'Jean', '', '', '$2y$10$R/5F0YUDMeAeNA9pKuPCzeIqEy.ZRonLp6WRcdkivD1eYC4AdwYFm'),
(47, 'Jean', '', '', '$2y$10$PjbEgeKJTKzFUiUM5PbJruzEe28Hachc6B6rn6TDUWu3glKJVJiEG'),
(48, 'Jean', '', '', '$2y$10$166Z7bZhERjcjWLrgDPvp.szqhX1UsZsrB6dPVtlhaVvmonFrOG6O'),
(49, 'Jean', '', '', '$2y$10$F1atdrtO0B87YOzsANa.Pe1Bjsbh6XV6G.LPGY9Eq8soVjOVezeOu');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
