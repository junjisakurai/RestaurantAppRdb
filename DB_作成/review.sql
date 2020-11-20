-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 
-- サーバのバージョン： 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `review`
--

CREATE TABLE `review` (
  `menu_id` char(10) NOT NULL COMMENT 'メニューID',
  `user_id` char(10) NOT NULL COMMENT 'ユーザーID',
  `review` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'レビュー文',
  `evaluation` char(1) NOT NULL COMMENT '評価(1～5)',
  `create_date` timestamp NULL COMMENT '作成日時',
  `create_op_cd` char(10) NOT NULL DEFAULT 'Umknown' COMMENT '作成担当コード',
  `update_date` timestamp NULL COMMENT '更新日時',
  `update_op_cd` char(10) NOT NULL DEFAULT 'Umknown' COMMENT '更新担当コード',
  `abolish_date` timestamp NULL COMMENT '廃止日時',
  `abolish_op_cd` char(10) NOT NULL DEFAULT 'Umknown' COMMENT '廃止担当コード'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `review`
--

INSERT INTO `review` (`menu_id`, `user_id`, `review`, `evaluation`, `create_date`, `create_op_cd`, `update_date`, `update_op_cd`, `abolish_date`, `abolish_op_cd`) VALUES
('0000000001', '1000000001', '果肉たっぷりのオレンジジュースです！', '5', '2020-11-06 18:29:56.31078', 'Umknown', '2020-11-06 18:29:56.31078', 'Umknown', NULL, 'Umknown'),
('0000000002', '1000000001', '苦味がちょうどよくて、おすすめです', '4', '2020-11-06 18:58:02.54003', 'Umknown', '2020-11-06 18:58:02.54003', 'Umknown', NULL, 'Umknown'),
('0000000004', '1000000001', 'この一杯の為に生きてます！！', '5', '2020-11-06 18:42:02.38618', 'Umknown', '2020-11-06 18:42:02.38618', 'Umknown', NULL, 'Umknown'),
('0000000002', '1000000002', '香りがいいです', '3', '2020-11-06 18:30:33.68416', 'Umknown', '2020-11-06 18:30:33.68416', 'Umknown', NULL, 'Umknown'),
('0000000005', '1000000002', 'ソースが絶品です。また食べたい。', '5', '2020-11-06 18:42:02.38618', 'Umknown', '2020-11-06 18:42:02.38618', 'Umknown', NULL, 'Umknown'),
('0000000001', '1000000003', '普通のジュース', '2', '2020-11-06 18:29:56.31078', 'Umknown', '2020-11-06 18:29:56.31078', 'Umknown', NULL, 'Umknown'),
('0000000002', '1000000003', '', '3', '2020-11-06 18:42:02.38618', 'Umknown', '2020-11-06 18:42:02.38618', 'Umknown', NULL, 'Umknown'),
('0000000003', '1000000003', '具がゴロゴロしていてとてもおいしいです', '4', '2020-11-06 18:42:02.38618', 'Umknown', '2020-11-06 18:42:02.38618', 'Umknown', NULL, 'Umknown'),
('0000000005', '1000000003', '具材にこだわりを感じました', '4', '2020-11-06 18:42:02.38618', 'Umknown', '2020-11-06 18:42:02.38618', 'Umknown', NULL, 'Umknown'),
('0000000003', '1000000004', '値段の割においしいカレーだと思いました', '3', '2020-11-06 18:42:02.38618', 'Umknown', '2020-11-06 18:42:02.38618', 'Umknown', NULL, 'Umknown'),
('0000000006', '1000000004', '野菜が新鮮', '4', '2020-11-06 18:42:02.38618', 'Umknown', '2020-11-06 18:42:02.38618', 'Umknown', NULL, 'Umknown');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`user_id`,`menu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
