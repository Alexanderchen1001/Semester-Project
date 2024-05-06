-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2024-05-06 12:38:07
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `shop_db`
--

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_type` varchar(10) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'in progress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `address`, `address_type`, `method`, `product_id`, `price`, `qty`, `date`, `status`) VALUES
('60LOmFWVp048ut5tC4CM', 'KDC9TmM2uqhgmkrGO1xq', 'ALEX', '13456', '614550317@qq.com', '123, 123, 123, 123 - 123', 'home', 'credit or debit card', 'SsdkuTIUcrg7wCxoIDR8', '50', '1', '2024-05-05', 'in progress'),
('dg33XLEExo30zJAihKBH', 'KDC9TmM2uqhgmkrGO1xq', 'ALEX', '13456', '614550317@qq.com', '123, 123, 123, 123 - 123', 'home', 'credit or debit card', 'ypoUXtbTkfIWQhiwPOcw', '299999', '1', '2024-05-05', 'in progress'),
('BBbzmub2USVKI1XaqGeU', 'KDC9TmM2uqhgmkrGO1xq', 'ALEX', '13456', '614550317@qq.com', '123, 123, 123, 123 - 123', 'home', 'credit or debit card', '92BkBz8PqZhCgQe3E7TC', '219999', '1', '2024-05-05', 'in progress'),
('WcArz1AsbHJisMEcxS6o', 'KDC9TmM2uqhgmkrGO1xq', 'ALEX', '123453', '614550317@qq.com', '123, 123, 123, 123 - 313623', 'home', 'credit or debit card', 'ypoUXtbTkfIWQhiwPOcw', '299999', '1', '2024-05-06', 'in progress'),
('i4sOR6f9gHeFuhKEKyz4', 'nFZaUryaaBdddDhwB9tR', 'ALEX', '68572919', '614550317@qq.com', 'W23 4065, Street 01, Macau, China - 5236', 'home', 'credit or debit card', 'ypoUXtbTkfIWQhiwPOcw', '299999', '1', '2024-05-06', 'in progress'),
('085Wl89FHOnBYBKBoDZX', 'nFZaUryaaBdddDhwB9tR', 'ALEX', '68572919', '614550317@qq.com', 'W23 4065, Street 01, Macau, China - 5236', 'home', 'credit or debit card', 'b8zITtShN3zXModFgq11', '1', '1', '2024-05-06', 'in progress'),
('zFzsPv6I11fGmif8luXw', 'nFZaUryaaBdddDhwB9tR', 'ALEX', '68572919', '614550317@qq.com', 'W23 4065, Street 01, Macau, China - 5236', 'home', 'credit or debit card', 'VtoY9fU88dRTvgUNVN9z', '4000', '1', '2024-05-06', 'in progress'),
('Yd0PGVZCI08c2nDCwBhK', 'nFZaUryaaBdddDhwB9tR', 'ALEX', '78455632', '614550317@qq.com', 'W23 4065, Street 01, Macau, China - 45963', 'home', 'net banking', 'ypoUXtbTkfIWQhiwPOcw', '299999', '1', '2024-05-06', 'in progress');

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
('SsdkuTIUcrg7wCxoIDR8', 'Bag', '50', 'dQNYpS8rwdHCS09SPPYy.webp'),
('ypoUXtbTkfIWQhiwPOcw', 'Xiaomi su7 Max', '299999', 'iAwbYQ1RorsOdMfAGY11.png'),
('b8zITtShN3zXModFgq11', 'Pen', '1', 'xnpd5Wg1VbaQ5gijZ5vY.png'),
('XagFJxMGhjcGX6Ha7jwx', 'Sony Headset', '1599', 'Dpyj9cAA2SdISvPUDzB3.png'),
('92BkBz8PqZhCgQe3E7TC', 'Xiaomi SU7 Pro', '219999', '206TPo59a1TQ7JRpsJRk.png'),
('VtoY9fU88dRTvgUNVN9z', 'Monitor', '4000', 'PGznjlWZpHddlLRymxBp.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
