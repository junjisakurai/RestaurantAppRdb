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
-- テーブルの構造 `user_m`
--

CREATE TABLE `user_m` (
  `user_id` char(10) NOT NULL COMMENT 'ユーザーID',
  `user_name` varchar(255) NOT NULL COMMENT 'ユーザー名',
  `sex` char(1) NOT NULL COMMENT '性別',
  `age` char(3) NOT NULL COMMENT '年齢',
  `user_kbn` char(1) NOT NULL COMMENT 'ユーザー区分',
  `create_date` timestamp NULL COMMENT '作成日時',
  `create_op_cd` char(10) NOT NULL DEFAULT 'Umknown' COMMENT '作成担当コード',
  `update_date` timestamp NULL COMMENT '更新日時',
  `update_op_cd` char(10) NOT NULL DEFAULT 'Umknown' COMMENT '更新担当コード',
  `abolish_date` timestamp NULL COMMENT '廃止日時',
  `abolish_op_cd` char(10) NOT NULL DEFAULT 'Umknown' COMMENT '廃止担当コード'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `user_m`
--

INSERT INTO `user_m` (`user_id`, `user_name`, `sex`, `age`, `user_kbn`, `create_date`, `create_op_cd`, `update_date`, `update_op_cd`, `abolish_date`, `abolish_op_cd`) VALUES
('1000000001', 'suzuki', '1', '20', '0', '2020-11-07 03:13:55.14103', 'Umknown', '2020-11-07 03:13:55.14103', 'Umknown', NULL, 'Umknown'),
('1000000002', 'tanaka', '1', '31', '0', '2020-11-07 03:15:11.78866', 'Umknown', '2020-11-07 03:15:11.78866', 'Umknown', NULL, 'Umknown'),
('1000000003', 'suzuki', '2', '25', '0', '2020-11-07 03:26:42.61048', 'Umknown', '2020-11-07 03:26:42.61048', 'Umknown', NULL, 'Umknown'),
('1000000004', 'sato', '2', '41', '0', '2020-11-20 09:40:14.45458', 'Umknown', '2020-11-20 09:40:14.45458', 'Umknown', NULL, 'Umknown');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_m`
--
ALTER TABLE `user_m`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
