-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2025 at 08:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobile_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image_url`) VALUES
(1, 'Samsung', 'https://blog.boon.so/wp-content/uploads/2024/03/Samsung-logo-4-scaled.jpg'),
(2, 'Apple', 'https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F8ed3d547-94ff-48e1-9f20-8c14a7030a02_2000x2000.jpeg'),
(3, 'Xiaomi', 'https://blog.boon.so/wp-content/uploads/2024/03/Xiaomi-Logo-scaled.jpg'),
(4, 'Oppo', 'https://static.vecteezy.com/system/resources/thumbnails/020/336/425/small_2x/oppo-logo-oppo-icon-free-free-vector.jpg'),
(5, 'Realme', 'https://cdn1.sgliteasset.com/imt/images/collection/collection-12181/cached/79HZCfav64d209feda0ad_1691486718_420x420.jpg'),
(6, 'Huawei', 'https://static.vecteezy.com/system/resources/previews/020/190/713/non_2x/huawei-logo-huawei-icon-free-free-vector.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mobiles`
--

CREATE TABLE `mobiles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobiles`
--

INSERT INTO `mobiles` (`id`, `name`, `brand_id`, `price`, `image_url`) VALUES
(1, 'iPhone 11', 2, 699.00, 'https://i5.walmartimages.com/seo/Pre-Owned-iPhone-11-64GB-Red-Unlocked-Refurbished-Good_a51d1737-1408-43b6-8c4d-e922061ae9ad.f71830b1d54cb8d8aa8e956080af67ff.jpeg'),
(2, 'iPhone 12', 2, 799.00, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmd5vjpPZOoTD0Z1IpDvBadjJYNVcgck1IOg&s'),
(3, 'iPhone 13', 2, 399.00, 'https://btech.com/media/catalog/product/cache/c9b2062a9631cf67602d389d403a4a1d/0/4/0453660f0d7b94ab676b901bf7a8f79de66624d71bcef81825a124cafc0d1ea5.jpeg'),
(4, 'iPhone 14', 2, 1099.00, 'https://osamasalama.com/wp-content/uploads/2023/02/apple_iphone_13_azul_02_ad_l.jpg'),
(5, 'iPhone 16', 2, 899.00, 'https://inspireonline.in/cdn/shop/files/iPhone_16_Teal_PDP_Image_Position_1__en-IN_6aed3712-113a-4579-8a71-41c02aa0003c.jpg?v=1727247732'),
(8, 'Samsung Galaxy Z Fold 5', 1, 1799.99, 'https://btech.com/media/catalog/product/cache/2263cd383aff97b1dabf39e431e10909/4/3/4323ba4f92a8ce3479cdd29b02837b5247c16860e7812dd2faf18b97dac6981d.jpeg'),
(9, 'Samsung Galaxy S22+', 1, 899.99, 'https://btech.com/media/catalog/product/cache/2263cd383aff97b1dabf39e431e10909/4/3/4323ba4f92a8ce3479cdd29b02837b5247c16860e7812dd2faf18b97dac6981d.jpeg'),
(10, 'Samsung Galaxy A14', 1, 199.99, 'https://btech.com/media/catalog/product/cache/2263cd383aff97b1dabf39e431e10909/4/3/4323ba4f92a8ce3479cdd29b02837b5247c16860e7812dd2faf18b97dac6981d.jpeg'),
(11, 'Samsung Galaxy S23 ', 1, 1199.99, 'https://btech.com/media/catalog/product/cache/2263cd383aff97b1dabf39e431e10909/4/3/4323ba4f92a8ce3479cdd29b02837b5247c16860e7812dd2faf18b97dac6981d.jpeg'),
(12, 'Samsung Galaxy A54', 1, 449.99, 'https://btech.com/media/catalog/product/cache/2263cd383aff97b1dabf39e431e10909/4/3/4323ba4f92a8ce3479cdd29b02837b5247c16860e7812dd2faf18b97dac6981d.jpeg'),
(13, 'Samsung Galaxy Z Fold 5', 1, 1799.99, 'https://btech.com/media/catalog/product/cache/2263cd383aff97b1dabf39e431e10909/4/3/4323ba4f92a8ce3479cdd29b02837b5247c16860e7812dd2faf18b97dac6981d.jpeg'),
(14, 'Samsung Galaxy S22+', 1, 899.99, 'https://btech.com/media/catalog/product/cache/2263cd383aff97b1dabf39e431e10909/4/3/4323ba4f92a8ce3479cdd29b02837b5247c16860e7812dd2faf18b97dac6981d.jpeg'),
(15, 'Samsung Galaxy A14', 1, 199.99, 'https://btech.com/media/catalog/product/cache/2263cd383aff97b1dabf39e431e10909/4/3/4323ba4f92a8ce3479cdd29b02837b5247c16860e7812dd2faf18b97dac6981d.jpeg'),
(16, 'Xiaomi Redmi Note 14', 3, 289.99, 'https://shop.orange.eg/content/images/thumbs/0012074_xiaomi-redmi-note-14_550.jpeg'),
(17, 'Xiaomi Poco X5 Pro', 3, 359.99, 'https://shop.orange.eg/content/images/thumbs/0012074_xiaomi-redmi-note-14_550.jpeg'),
(18, 'Xiaomi 13T Pro', 3, 799.99, 'https://shop.orange.eg/content/images/thumbs/0012074_xiaomi-redmi-note-14_550.jpeg'),
(19, 'Xiaomi Mi 11 Lite', 3, 249.99, 'https://shop.orange.eg/content/images/thumbs/0012074_xiaomi-redmi-note-14_550.jpeg'),
(20, 'Xiaomi Redmi 12C', 3, 179.99, 'https://shop.orange.eg/content/images/thumbs/0012074_xiaomi-redmi-note-14_550.jpeg'),
(21, 'Oppo Reno 13', 4, 499.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(22, 'Oppo A78 5G', 4, 279.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(23, 'Oppo Find X6 Pro', 4, 899.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(24, 'Oppo A57', 4, 199.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(25, 'Oppo F21 Pro', 4, 329.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(26, 'realme Reno 13', 5, 499.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(27, 'realme A78 5G', 5, 279.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(28, 'realme Find X6 Pro', 5, 899.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(29, 'realme A57', 5, 199.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(30, 'realme F21 Pro', 5, 329.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(31, 'Huawei Reno 13', 6, 499.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(32, 'Huawei A78 5G', 6, 279.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(33, 'Huawei Find X6 Pro', 6, 899.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(34, 'Huawei A57', 6, 199.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg'),
(35, 'Huawei F21 Pro', 6, 329.99, 'https://tradingshenzhen.com/15759-large_default/oppo-reno-13-16gb512gb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_specs`
--

CREATE TABLE `mobile_specs` (
  `id` int(11) NOT NULL,
  `mobile_id` int(11) DEFAULT NULL,
  `battery` varchar(255) DEFAULT NULL,
  `screen` varchar(255) DEFAULT NULL,
  `camera` varchar(255) DEFAULT NULL,
  `processor` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `network` varchar(100) DEFAULT NULL,
  `model_3d_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobile_specs`
--

INSERT INTO `mobile_specs` (`id`, `mobile_id`, `battery`, `screen`, `camera`, `processor`, `ram`, `storage`, `os`, `network`, `model_3d_url`) VALUES
(1, 1, '3110 mAh', '6.1 inch LCD', '12MP Dual', 'A13 Bionic', '4GB', '64GB', 'iOS 13', '4G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(2, 2, '2815 mAh', '6.1 inch OLED', '12MP Dual', 'A14 Bionic', '4GB', '128GB', 'iOS 14', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(3, 3, '3240 mAh', '6.1 inch OLED', '12MP Dual', 'A15 Bionic', '4GB', '128GB', 'iOS 15', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(4, 4, '3279 mAh', '6.1 inch OLED', '12MP Dual', 'A15 Bionic', '6GB', '256GB', 'iOS 16', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(5, 5, '3349 mAh', '6.1 inch OLED', '48MP + 12MP', 'A16 Bionic', '6GB', '256GB', 'iOS 17', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(6, 8, '4400 mAh', '7.6 inch Foldable AMOLED', '50MP Triple', 'Snapdragon 8 Gen2', '12GB', '512GB', 'Android 13', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(7, 9, '4700 mAh', '6.6 inch AMOLED', '108MP Triple', 'Exynos 2200', '8GB', '256GB', 'Android 13', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(8, 10, '5000 mAh', '6.6 inch PLS LCD', '50MP Triple', 'Snapdragon 680', '6GB', '128GB', 'Android 13', '4G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(9, 11, '3900 mAh', '6.1 inch AMOLED', '50MP Triple', 'Snapdragon 8 Gen2', '8GB', '256GB', 'Android 14', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(10, 12, '5000 mAh', '6.4 inch Super AMOLED', '50MP Triple', 'Exynos 1380', '6GB', '128GB', 'Android 13', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(11, 13, '4400 mAh', '7.6 inch Foldable AMOLED', '50MP Triple', 'Snapdragon 8 Gen2', '12GB', '512GB', 'Android 13', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(12, 14, '4700 mAh', '6.6 inch AMOLED', '108MP Triple', 'Exynos 2200', '8GB', '256GB', 'Android 13', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(13, 15, '5000 mAh', '6.6 inch PLS LCD', '50MP Triple', 'Snapdragon 680', '6GB', '128GB', 'Android 13', '4G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(14, 16, '5000 mAh', '6.67 inch IPS LCD', '50MP Dual', 'Snapdragon 685', '6GB', '128GB', 'Android 13', '4G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(15, 17, '5000 mAh', '6.67 inch AMOLED', '64MP Dual', 'Snapdragon 695', '8GB', '256GB', 'Android 12', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(16, 18, '5000 mAh', '6.79 inch IPS LCD', '50MP Dual', 'Snapdragon 4 Gen1', '6GB', '128GB', 'Android 13', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(17, 19, '5000 mAh', '6.55 inch AMOLED', '64MP Triple', 'Snapdragon 732G', '6GB', '128GB', 'Android 11', '4G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(18, 20, '5000 mAh', '6.71 inch IPS LCD', '50MP Dual', 'MediaTek Helio G85', '6GB', '128GB', 'Android 13', '4G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(19, 21, '5000 mAh', '6.72 inch IPS LCD', '50MP Dual', 'MediaTek Dimensity 6020', '8GB', '128GB', 'Android 13', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(20, 22, '3200 mAh', '5.8 inch OLED', '12MP Single', 'A12 Bionic', '3GB', '64GB', 'iOS 12', '4G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(21, 23, '4500 mAh', '6.43 inch AMOLED', '64MP Triple', 'Snapdragon 778G', '8GB', '128GB', 'Android 12', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(22, 24, '4200 mAh', '6.5 inch AMOLED', '48MP Dual', 'Kirin 980', '6GB', '128GB', 'Android 10', '4G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(23, 25, '4500 mAh', '6.6 inch IPS LCD', '50MP Dual', 'Snapdragon 695', '6GB', '128GB', 'Android 13', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(24, 26, '5000 mAh', '6.5 inch PLS LCD', '48MP Dual', 'MediaTek Dimensity 700', '6GB', '128GB', 'Android 11', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb'),
(25, 27, '5000 mAh', '6.72 inch IPS LCD', '64MP Dual', 'Snapdragon 695', '8GB', '128GB', 'Android 13', '5G', 'Pics and vid/Apple Iphone 14 Pro.glb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobiles`
--
ALTER TABLE `mobiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `mobile_specs`
--
ALTER TABLE `mobile_specs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mobile_id` (`mobile_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mobiles`
--
ALTER TABLE `mobiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `mobile_specs`
--
ALTER TABLE `mobile_specs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mobiles`
--
ALTER TABLE `mobiles`
  ADD CONSTRAINT `mobiles_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `mobile_specs`
--
ALTER TABLE `mobile_specs`
  ADD CONSTRAINT `mobile_specs_ibfk_1` FOREIGN KEY (`mobile_id`) REFERENCES `mobiles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
