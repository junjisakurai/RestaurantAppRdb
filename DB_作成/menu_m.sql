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
-- テーブルの構造 `menu_m`
--

CREATE TABLE `menu_m` (
  `menu_id` char(10) NOT NULL COMMENT 'メニューID',
  `menu_name` varchar(255) NOT NULL COMMENT 'メニュー名',
  `menu_img_url` varchar(255) NOT NULL COMMENT 'メニュー画像URL',
  `price` int(10) NOT NULL COMMENT '値段',
  `menu_kbn` char(1) NOT NULL DEFAULT '0' COMMENT 'メニュー区分',
  `create_date` timestamp NULL COMMENT '作成日時',
  `create_op_cd` char(10) NOT NULL DEFAULT 'Umknown' COMMENT '作成担当コード',
  `update_date` timestamp NULL COMMENT '更新日時',
  `update_op_cd` char(10) NOT NULL DEFAULT 'Umknown' COMMENT '更新担当コード',
  `abolish_date` timestamp NULL COMMENT '廃止日時',
  `abolish_op_cd` char(10) NOT NULL DEFAULT 'Umknown' COMMENT '廃止担当コード'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `menu_m`
--

INSERT INTO `menu_m` (`menu_id`, `menu_name`, `menu_img_url`, `price`, `menu_kbn`, `create_date`, `create_op_cd`, `update_date`, `update_op_cd`, `abolish_date`, `abolish_op_cd`) VALUES
('0000000001', 'JUICE', 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/php/juice.png', 600, '1', '2020-11-03 20:54:32.00000', 'Umknown', '2020-11-03 20:54:48.00000', 'Umknown', NULL, 'Umknown'),
('0000000002', 'COFFEE', 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/php/coffee.png', 500, '1', '2020-11-03 11:54:32.00000', 'Umknown', '2020-11-03 11:54:32.00000', 'Umknown', NULL, 'Umknown'),
('0000000003', 'CURRY', 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/php/curry.png', 900, '2', '2020-11-03 11:54:32.00000', 'Umknown', '2020-11-03 11:54:32.00000', 'Umknown', NULL, 'Umknown'),
('0000000004', 'BEER', 'https://cdn.macaro-ni.jp/assets/img/shutterstock/shutterstock_155354765.jpg', 700, '1', '2020-11-03 02:54:32.00000', 'Umknown', '2020-11-03 02:54:32.00000', 'Umknown', NULL, 'Umknown'),
('0000000005', 'PASTA', 'https://s3-ap-northeast-1.amazonaws.com/progate/shared/images/lesson/php/pasta.png', 1200, '2', '2020-11-03 02:54:32.00000', 'Umknown', '2020-11-03 02:54:32.00000', 'Umknown', NULL, 'Umknown'),
('0000000006', 'SARADA', 'https://img.cpcdn.com/recipes/4491418/280x487s/11a4a2a9c1b792598a460d8f7fddae77.jpg?u=11000068&p=1501231688', 400, '2', '2020-11-03 02:54:32.00000', 'Umknown', '2020-11-03 02:54:32.00000', 'Umknown', NULL, 'Umknown');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_m`
--
ALTER TABLE `menu_m`
  ADD PRIMARY KEY (`menu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
