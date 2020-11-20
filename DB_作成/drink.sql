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
-- テーブルの構造 `drink`
--

CREATE TABLE `drink` (
  `menu_id` char(10) NOT NULL COMMENT 'メニューID',
  `hot_ice` char(1) NOT NULL COMMENT 'アイス/ホット',
  `alcol` char(2) DEFAULT NULL COMMENT 'アルコール度数',
  `drink_kbn` char(1) NOT NULL COMMENT 'ドリンク区分',
  `create_date` TIMESTAMP NULL COMMENT '作成日時',
  `create_op_cd` char(10) NOT NULL DEFAULT 'Umknown' COMMENT '作成担当コード',
  `update_date` TIMESTAMP NULL COMMENT '更新日時',
  `update_op_cd` char(10) NOT NULL DEFAULT 'Umknown' COMMENT '更新担当コード',
  `abolish_date` TIMESTAMP NULL DEFAULT NULL COMMENT '廃止日時',
  `abolish_op_cd` char(10) NOT NULL DEFAULT 'Umknown' COMMENT '廃止担当コード'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `drink`
--

INSERT INTO `drink` (`menu_id`, `hot_ice`, `alcol`, `drink_kbn`, `create_date`, `create_op_cd`, `update_date`, `update_op_cd`, `abolish_date`, `abolish_op_cd`) VALUES
('0000000001', '1', NULL, '1', '2020-11-06 07:31:15.00000', 'Umknown', '2020-11-06 07:31:15.00000', 'Umknown', NULL, 'Umknown'),
('0000000002', '2', NULL, '1', '2020-11-06 07:33:40.09150', 'Umknown', '2020-11-06 07:33:40.09150', 'Umknown', NULL, 'Umknown'),
('0000000004', '1', NULL, '2', '2020-11-05 22:33:40.09150', 'Umknown', '2020-11-05 22:33:40.09150', 'Umknown', NULL, 'Umknown');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`menu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
