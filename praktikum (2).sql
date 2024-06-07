-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 03, 2024 at 02:54 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum`
--

-- --------------------------------------------------------

--
-- Table structure for table `alamats`
--

CREATE TABLE `alamats` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` int NOT NULL,
  `kota_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alamats`
--

INSERT INTO `alamats` (`id`, `created_at`, `updated_at`, `user_id`, `alamat`, `province_id`, `kota_id`) VALUES
(2, NULL, '2024-05-17 08:25:52', 4, 'Jl Pemuda 73', 10, 177);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city_id` int NOT NULL,
  `province_id` int NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `city_id`, `province_id`, `province`, `type`, `city_name`, `postal_code`) VALUES
(1504, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 1, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat', '23681'),
(1505, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 2, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat Daya', '23764'),
(1506, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 3, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Besar', '23951'),
(1507, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 4, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Jaya', '23654'),
(1508, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 5, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Selatan', '23719'),
(1509, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 6, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Singkil', '24785'),
(1510, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 7, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tamiang', '24476'),
(1511, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 8, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tengah', '24511'),
(1512, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 9, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tenggara', '24611'),
(1513, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 10, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Timur', '24454'),
(1514, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 11, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Utara', '24382'),
(1515, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 12, 32, 'Sumatera Barat', 'Kabupaten', 'Agam', '26411'),
(1516, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 13, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Alor', '85811'),
(1517, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 14, 19, 'Maluku', 'Kota', 'Ambon', '97222'),
(1518, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 15, 34, 'Sumatera Utara', 'Kabupaten', 'Asahan', '21214'),
(1519, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 16, 24, 'Papua', 'Kabupaten', 'Asmat', '99777'),
(1520, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 17, 1, 'Bali', 'Kabupaten', 'Badung', '80351'),
(1521, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 18, 13, 'Kalimantan Selatan', 'Kabupaten', 'Balangan', '71611'),
(1522, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 19, 15, 'Kalimantan Timur', 'Kota', 'Balikpapan', '76111'),
(1523, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 20, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Banda Aceh', '23238'),
(1524, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 21, 18, 'Lampung', 'Kota', 'Bandar Lampung', '35139'),
(1525, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 22, 9, 'Jawa Barat', 'Kabupaten', 'Bandung', '40311'),
(1526, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 23, 9, 'Jawa Barat', 'Kota', 'Bandung', '40111'),
(1527, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 24, 9, 'Jawa Barat', 'Kabupaten', 'Bandung Barat', '40721'),
(1528, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 25, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai', '94711'),
(1529, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 26, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai Kepulauan', '94881'),
(1530, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 27, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka', '33212'),
(1531, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 28, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Barat', '33315'),
(1532, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 29, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Selatan', '33719'),
(1533, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 30, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Tengah', '33613'),
(1534, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 31, 11, 'Jawa Timur', 'Kabupaten', 'Bangkalan', '69118'),
(1535, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 32, 1, 'Bali', 'Kabupaten', 'Bangli', '80619'),
(1536, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 33, 13, 'Kalimantan Selatan', 'Kabupaten', 'Banjar', '70619'),
(1537, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 34, 9, 'Jawa Barat', 'Kota', 'Banjar', '46311'),
(1538, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 35, 13, 'Kalimantan Selatan', 'Kota', 'Banjarbaru', '70712'),
(1539, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 36, 13, 'Kalimantan Selatan', 'Kota', 'Banjarmasin', '70117'),
(1540, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 37, 10, 'Jawa Tengah', 'Kabupaten', 'Banjarnegara', '53419'),
(1541, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 38, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bantaeng', '92411'),
(1542, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 39, 5, 'DI Yogyakarta', 'Kabupaten', 'Bantul', '55715'),
(1543, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 40, 33, 'Sumatera Selatan', 'Kabupaten', 'Banyuasin', '30911'),
(1544, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 41, 10, 'Jawa Tengah', 'Kabupaten', 'Banyumas', '53114'),
(1545, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 42, 11, 'Jawa Timur', 'Kabupaten', 'Banyuwangi', '68416'),
(1546, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 43, 13, 'Kalimantan Selatan', 'Kabupaten', 'Barito Kuala', '70511'),
(1547, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 44, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Selatan', '73711'),
(1548, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 45, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Timur', '73671'),
(1549, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 46, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Utara', '73881'),
(1550, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 47, 28, 'Sulawesi Selatan', 'Kabupaten', 'Barru', '90719'),
(1551, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 48, 17, 'Kepulauan Riau', 'Kota', 'Batam', '29413'),
(1552, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 49, 10, 'Jawa Tengah', 'Kabupaten', 'Batang', '51211'),
(1553, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 50, 8, 'Jambi', 'Kabupaten', 'Batang Hari', '36613'),
(1554, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 51, 11, 'Jawa Timur', 'Kota', 'Batu', '65311'),
(1555, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 52, 34, 'Sumatera Utara', 'Kabupaten', 'Batu Bara', '21655'),
(1556, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 53, 30, 'Sulawesi Tenggara', 'Kota', 'Bau-Bau', '93719'),
(1557, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 54, 9, 'Jawa Barat', 'Kabupaten', 'Bekasi', '17837'),
(1558, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 55, 9, 'Jawa Barat', 'Kota', 'Bekasi', '17121'),
(1559, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 56, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung', '33419'),
(1560, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 57, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung Timur', '33519'),
(1561, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 58, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Belu', '85711'),
(1562, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 59, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bener Meriah', '24581'),
(1563, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 60, 26, 'Riau', 'Kabupaten', 'Bengkalis', '28719'),
(1564, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 61, 12, 'Kalimantan Barat', 'Kabupaten', 'Bengkayang', '79213'),
(1565, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 62, 4, 'Bengkulu', 'Kota', 'Bengkulu', '38229'),
(1566, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 63, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Selatan', '38519'),
(1567, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 64, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Tengah', '38319'),
(1568, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 65, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Utara', '38619'),
(1569, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 66, 15, 'Kalimantan Timur', 'Kabupaten', 'Berau', '77311'),
(1570, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 67, 24, 'Papua', 'Kabupaten', 'Biak Numfor', '98119'),
(1571, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 68, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Bima', '84171'),
(1572, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 69, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Bima', '84139'),
(1573, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 70, 34, 'Sumatera Utara', 'Kota', 'Binjai', '20712'),
(1574, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 71, 17, 'Kepulauan Riau', 'Kabupaten', 'Bintan', '29135'),
(1575, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 72, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bireuen', '24219'),
(1576, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 73, 31, 'Sulawesi Utara', 'Kota', 'Bitung', '95512'),
(1577, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 74, 11, 'Jawa Timur', 'Kabupaten', 'Blitar', '66171'),
(1578, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 75, 11, 'Jawa Timur', 'Kota', 'Blitar', '66124'),
(1579, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 76, 10, 'Jawa Tengah', 'Kabupaten', 'Blora', '58219'),
(1580, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 77, 7, 'Gorontalo', 'Kabupaten', 'Boalemo', '96319'),
(1581, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 78, 9, 'Jawa Barat', 'Kabupaten', 'Bogor', '16911'),
(1582, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 79, 9, 'Jawa Barat', 'Kota', 'Bogor', '16119'),
(1583, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 80, 11, 'Jawa Timur', 'Kabupaten', 'Bojonegoro', '62119'),
(1584, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 81, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow (Bolmong)', '95755'),
(1585, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 82, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Selatan', '95774'),
(1586, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 83, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Timur', '95783'),
(1587, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 84, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Utara', '95765'),
(1588, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 85, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Bombana', '93771'),
(1589, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 86, 11, 'Jawa Timur', 'Kabupaten', 'Bondowoso', '68219'),
(1590, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 87, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bone', '92713'),
(1591, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 88, 7, 'Gorontalo', 'Kabupaten', 'Bone Bolango', '96511'),
(1592, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 89, 15, 'Kalimantan Timur', 'Kota', 'Bontang', '75313'),
(1593, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 90, 24, 'Papua', 'Kabupaten', 'Boven Digoel', '99662'),
(1594, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 91, 10, 'Jawa Tengah', 'Kabupaten', 'Boyolali', '57312'),
(1595, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 92, 10, 'Jawa Tengah', 'Kabupaten', 'Brebes', '52212'),
(1596, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 93, 32, 'Sumatera Barat', 'Kota', 'Bukittinggi', '26115'),
(1597, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 94, 1, 'Bali', 'Kabupaten', 'Buleleng', '81111'),
(1598, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 95, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bulukumba', '92511'),
(1599, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 96, 16, 'Kalimantan Utara', 'Kabupaten', 'Bulungan (Bulongan)', '77211'),
(1600, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 97, 8, 'Jambi', 'Kabupaten', 'Bungo', '37216'),
(1601, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 98, 29, 'Sulawesi Tengah', 'Kabupaten', 'Buol', '94564'),
(1602, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 99, 19, 'Maluku', 'Kabupaten', 'Buru', '97371'),
(1603, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 100, 19, 'Maluku', 'Kabupaten', 'Buru Selatan', '97351'),
(1604, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 101, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton', '93754'),
(1605, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 102, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton Utara', '93745'),
(1606, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 103, 9, 'Jawa Barat', 'Kabupaten', 'Ciamis', '46211'),
(1607, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 104, 9, 'Jawa Barat', 'Kabupaten', 'Cianjur', '43217'),
(1608, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 105, 10, 'Jawa Tengah', 'Kabupaten', 'Cilacap', '53211'),
(1609, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 106, 3, 'Banten', 'Kota', 'Cilegon', '42417'),
(1610, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 107, 9, 'Jawa Barat', 'Kota', 'Cimahi', '40512'),
(1611, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 108, 9, 'Jawa Barat', 'Kabupaten', 'Cirebon', '45611'),
(1612, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 109, 9, 'Jawa Barat', 'Kota', 'Cirebon', '45116'),
(1613, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 110, 34, 'Sumatera Utara', 'Kabupaten', 'Dairi', '22211'),
(1614, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 111, 24, 'Papua', 'Kabupaten', 'Deiyai (Deliyai)', '98784'),
(1615, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 112, 34, 'Sumatera Utara', 'Kabupaten', 'Deli Serdang', '20511'),
(1616, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 113, 10, 'Jawa Tengah', 'Kabupaten', 'Demak', '59519'),
(1617, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 114, 1, 'Bali', 'Kota', 'Denpasar', '80227'),
(1618, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 115, 9, 'Jawa Barat', 'Kota', 'Depok', '16416'),
(1619, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 116, 32, 'Sumatera Barat', 'Kabupaten', 'Dharmasraya', '27612'),
(1620, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 117, 24, 'Papua', 'Kabupaten', 'Dogiyai', '98866'),
(1621, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 118, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Dompu', '84217'),
(1622, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 119, 29, 'Sulawesi Tengah', 'Kabupaten', 'Donggala', '94341'),
(1623, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 120, 26, 'Riau', 'Kota', 'Dumai', '28811'),
(1624, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 121, 33, 'Sumatera Selatan', 'Kabupaten', 'Empat Lawang', '31811'),
(1625, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 122, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ende', '86351'),
(1626, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 123, 28, 'Sulawesi Selatan', 'Kabupaten', 'Enrekang', '91719'),
(1627, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 124, 25, 'Papua Barat', 'Kabupaten', 'Fakfak', '98651'),
(1628, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 125, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Flores Timur', '86213'),
(1629, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 126, 9, 'Jawa Barat', 'Kabupaten', 'Garut', '44126'),
(1630, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 127, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Gayo Lues', '24653'),
(1631, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 128, 1, 'Bali', 'Kabupaten', 'Gianyar', '80519'),
(1632, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 129, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo', '96218'),
(1633, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 130, 7, 'Gorontalo', 'Kota', 'Gorontalo', '96115'),
(1634, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 131, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo Utara', '96611'),
(1635, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 132, 28, 'Sulawesi Selatan', 'Kabupaten', 'Gowa', '92111'),
(1636, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 133, 11, 'Jawa Timur', 'Kabupaten', 'Gresik', '61115'),
(1637, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 134, 10, 'Jawa Tengah', 'Kabupaten', 'Grobogan', '58111'),
(1638, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 135, 5, 'DI Yogyakarta', 'Kabupaten', 'Gunung Kidul', '55812'),
(1639, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 136, 14, 'Kalimantan Tengah', 'Kabupaten', 'Gunung Mas', '74511'),
(1640, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 137, 34, 'Sumatera Utara', 'Kota', 'Gunungsitoli', '22813'),
(1641, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 138, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Barat', '97757'),
(1642, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 139, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Selatan', '97911'),
(1643, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 140, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Tengah', '97853'),
(1644, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 141, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Timur', '97862'),
(1645, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 142, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Utara', '97762'),
(1646, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 143, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Selatan', '71212'),
(1647, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 144, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Tengah', '71313'),
(1648, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 145, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Utara', '71419'),
(1649, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 146, 34, 'Sumatera Utara', 'Kabupaten', 'Humbang Hasundutan', '22457'),
(1650, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 147, 26, 'Riau', 'Kabupaten', 'Indragiri Hilir', '29212'),
(1651, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 148, 26, 'Riau', 'Kabupaten', 'Indragiri Hulu', '29319'),
(1652, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 149, 9, 'Jawa Barat', 'Kabupaten', 'Indramayu', '45214'),
(1653, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 150, 24, 'Papua', 'Kabupaten', 'Intan Jaya', '98771'),
(1654, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 151, 6, 'DKI Jakarta', 'Kota', 'Jakarta Barat', '11220'),
(1655, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 152, 6, 'DKI Jakarta', 'Kota', 'Jakarta Pusat', '10540'),
(1656, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 153, 6, 'DKI Jakarta', 'Kota', 'Jakarta Selatan', '12230'),
(1657, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 154, 6, 'DKI Jakarta', 'Kota', 'Jakarta Timur', '13330'),
(1658, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 155, 6, 'DKI Jakarta', 'Kota', 'Jakarta Utara', '14140'),
(1659, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 156, 8, 'Jambi', 'Kota', 'Jambi', '36111'),
(1660, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 157, 24, 'Papua', 'Kabupaten', 'Jayapura', '99352'),
(1661, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 158, 24, 'Papua', 'Kota', 'Jayapura', '99114'),
(1662, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 159, 24, 'Papua', 'Kabupaten', 'Jayawijaya', '99511'),
(1663, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 160, 11, 'Jawa Timur', 'Kabupaten', 'Jember', '68113'),
(1664, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 161, 1, 'Bali', 'Kabupaten', 'Jembrana', '82251'),
(1665, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 162, 28, 'Sulawesi Selatan', 'Kabupaten', 'Jeneponto', '92319'),
(1666, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 163, 10, 'Jawa Tengah', 'Kabupaten', 'Jepara', '59419'),
(1667, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 164, 11, 'Jawa Timur', 'Kabupaten', 'Jombang', '61415'),
(1668, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 165, 25, 'Papua Barat', 'Kabupaten', 'Kaimana', '98671'),
(1669, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 166, 26, 'Riau', 'Kabupaten', 'Kampar', '28411'),
(1670, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 167, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kapuas', '73583'),
(1671, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 168, 12, 'Kalimantan Barat', 'Kabupaten', 'Kapuas Hulu', '78719'),
(1672, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 169, 10, 'Jawa Tengah', 'Kabupaten', 'Karanganyar', '57718'),
(1673, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 170, 1, 'Bali', 'Kabupaten', 'Karangasem', '80819'),
(1674, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 171, 9, 'Jawa Barat', 'Kabupaten', 'Karawang', '41311'),
(1675, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 172, 17, 'Kepulauan Riau', 'Kabupaten', 'Karimun', '29611'),
(1676, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 173, 34, 'Sumatera Utara', 'Kabupaten', 'Karo', '22119'),
(1677, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 174, 14, 'Kalimantan Tengah', 'Kabupaten', 'Katingan', '74411'),
(1678, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 175, 4, 'Bengkulu', 'Kabupaten', 'Kaur', '38911'),
(1679, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 176, 12, 'Kalimantan Barat', 'Kabupaten', 'Kayong Utara', '78852'),
(1680, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 177, 10, 'Jawa Tengah', 'Kabupaten', 'Kebumen', '54319'),
(1681, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 178, 11, 'Jawa Timur', 'Kabupaten', 'Kediri', '64184'),
(1682, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 179, 11, 'Jawa Timur', 'Kota', 'Kediri', '64125'),
(1683, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 180, 24, 'Papua', 'Kabupaten', 'Keerom', '99461'),
(1684, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 181, 10, 'Jawa Tengah', 'Kabupaten', 'Kendal', '51314'),
(1685, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 182, 30, 'Sulawesi Tenggara', 'Kota', 'Kendari', '93126'),
(1686, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 183, 4, 'Bengkulu', 'Kabupaten', 'Kepahiang', '39319'),
(1687, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 184, 17, 'Kepulauan Riau', 'Kabupaten', 'Kepulauan Anambas', '29991'),
(1688, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 185, 19, 'Maluku', 'Kabupaten', 'Kepulauan Aru', '97681'),
(1689, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 186, 32, 'Sumatera Barat', 'Kabupaten', 'Kepulauan Mentawai', '25771'),
(1690, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 187, 26, 'Riau', 'Kabupaten', 'Kepulauan Meranti', '28791'),
(1691, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 188, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Sangihe', '95819'),
(1692, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 189, 6, 'DKI Jakarta', 'Kabupaten', 'Kepulauan Seribu', '14550'),
(1693, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 190, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '95862'),
(1694, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 191, 20, 'Maluku Utara', 'Kabupaten', 'Kepulauan Sula', '97995'),
(1695, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 192, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Talaud', '95885'),
(1696, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 193, 24, 'Papua', 'Kabupaten', 'Kepulauan Yapen (Yapen Waropen)', '98211'),
(1697, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 194, 8, 'Jambi', 'Kabupaten', 'Kerinci', '37167'),
(1698, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 195, 12, 'Kalimantan Barat', 'Kabupaten', 'Ketapang', '78874'),
(1699, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 196, 10, 'Jawa Tengah', 'Kabupaten', 'Klaten', '57411'),
(1700, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 197, 1, 'Bali', 'Kabupaten', 'Klungkung', '80719'),
(1701, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 198, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka', '93511'),
(1702, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 199, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka Utara', '93911'),
(1703, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 200, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe', '93411'),
(1704, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 201, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Selatan', '93811'),
(1705, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 202, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Utara', '93311'),
(1706, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 203, 13, 'Kalimantan Selatan', 'Kabupaten', 'Kotabaru', '72119'),
(1707, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 204, 31, 'Sulawesi Utara', 'Kota', 'Kotamobagu', '95711'),
(1708, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 205, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Barat', '74119'),
(1709, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 206, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Timur', '74364'),
(1710, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 207, 26, 'Riau', 'Kabupaten', 'Kuantan Singingi', '29519'),
(1711, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 208, 12, 'Kalimantan Barat', 'Kabupaten', 'Kubu Raya', '78311'),
(1712, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 209, 10, 'Jawa Tengah', 'Kabupaten', 'Kudus', '59311'),
(1713, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 210, 5, 'DI Yogyakarta', 'Kabupaten', 'Kulon Progo', '55611'),
(1714, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 211, 9, 'Jawa Barat', 'Kabupaten', 'Kuningan', '45511'),
(1715, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 212, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Kupang', '85362'),
(1716, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 213, 23, 'Nusa Tenggara Timur (NTT)', 'Kota', 'Kupang', '85119'),
(1717, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 214, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Barat', '75711'),
(1718, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 215, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Kartanegara', '75511'),
(1719, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 216, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Timur', '75611'),
(1720, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 217, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu', '21412'),
(1721, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 218, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Selatan', '21511'),
(1722, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 219, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Utara', '21711'),
(1723, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 220, 33, 'Sumatera Selatan', 'Kabupaten', 'Lahat', '31419'),
(1724, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 221, 14, 'Kalimantan Tengah', 'Kabupaten', 'Lamandau', '74611'),
(1725, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 222, 11, 'Jawa Timur', 'Kabupaten', 'Lamongan', '64125'),
(1726, '2024-05-17 08:26:03', '2024-05-17 08:26:03', 223, 18, 'Lampung', 'Kabupaten', 'Lampung Barat', '34814'),
(1727, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 224, 18, 'Lampung', 'Kabupaten', 'Lampung Selatan', '35511'),
(1728, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 225, 18, 'Lampung', 'Kabupaten', 'Lampung Tengah', '34212'),
(1729, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 226, 18, 'Lampung', 'Kabupaten', 'Lampung Timur', '34319'),
(1730, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 227, 18, 'Lampung', 'Kabupaten', 'Lampung Utara', '34516'),
(1731, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 228, 12, 'Kalimantan Barat', 'Kabupaten', 'Landak', '78319'),
(1732, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 229, 34, 'Sumatera Utara', 'Kabupaten', 'Langkat', '20811'),
(1733, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 230, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Langsa', '24412'),
(1734, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 231, 24, 'Papua', 'Kabupaten', 'Lanny Jaya', '99531'),
(1735, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 232, 3, 'Banten', 'Kabupaten', 'Lebak', '42319'),
(1736, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 233, 4, 'Bengkulu', 'Kabupaten', 'Lebong', '39264'),
(1737, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 234, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Lembata', '86611'),
(1738, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 235, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Lhokseumawe', '24352'),
(1739, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 236, 32, 'Sumatera Barat', 'Kabupaten', 'Lima Puluh Koto/Kota', '26671'),
(1740, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 237, 17, 'Kepulauan Riau', 'Kabupaten', 'Lingga', '29811'),
(1741, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 238, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Barat', '83311'),
(1742, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 239, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Tengah', '83511'),
(1743, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 240, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Timur', '83612'),
(1744, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 241, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Utara', '83711'),
(1745, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 242, 33, 'Sumatera Selatan', 'Kota', 'Lubuk Linggau', '31614'),
(1746, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 243, 11, 'Jawa Timur', 'Kabupaten', 'Lumajang', '67319'),
(1747, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 244, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu', '91994'),
(1748, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 245, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Timur', '92981'),
(1749, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 246, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Utara', '92911'),
(1750, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 247, 11, 'Jawa Timur', 'Kabupaten', 'Madiun', '63153'),
(1751, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 248, 11, 'Jawa Timur', 'Kota', 'Madiun', '63122'),
(1752, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 249, 10, 'Jawa Tengah', 'Kabupaten', 'Magelang', '56519'),
(1753, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 250, 10, 'Jawa Tengah', 'Kota', 'Magelang', '56133'),
(1754, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 251, 11, 'Jawa Timur', 'Kabupaten', 'Magetan', '63314'),
(1755, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 252, 9, 'Jawa Barat', 'Kabupaten', 'Majalengka', '45412'),
(1756, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 253, 27, 'Sulawesi Barat', 'Kabupaten', 'Majene', '91411'),
(1757, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 254, 28, 'Sulawesi Selatan', 'Kota', 'Makassar', '90111'),
(1758, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 255, 11, 'Jawa Timur', 'Kabupaten', 'Malang', '65163'),
(1759, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 256, 11, 'Jawa Timur', 'Kota', 'Malang', '65112'),
(1760, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 257, 16, 'Kalimantan Utara', 'Kabupaten', 'Malinau', '77511'),
(1761, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 258, 19, 'Maluku', 'Kabupaten', 'Maluku Barat Daya', '97451'),
(1762, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 259, 19, 'Maluku', 'Kabupaten', 'Maluku Tengah', '97513'),
(1763, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 260, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara', '97651'),
(1764, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 261, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara Barat', '97465'),
(1765, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 262, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamasa', '91362'),
(1766, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 263, 24, 'Papua', 'Kabupaten', 'Mamberamo Raya', '99381'),
(1767, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 264, 24, 'Papua', 'Kabupaten', 'Mamberamo Tengah', '99553'),
(1768, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 265, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju', '91519'),
(1769, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 266, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju Utara', '91571'),
(1770, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 267, 31, 'Sulawesi Utara', 'Kota', 'Manado', '95247'),
(1771, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 268, 34, 'Sumatera Utara', 'Kabupaten', 'Mandailing Natal', '22916'),
(1772, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 269, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai', '86551'),
(1773, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 270, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Barat', '86711'),
(1774, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 271, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Timur', '86811'),
(1775, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 272, 25, 'Papua Barat', 'Kabupaten', 'Manokwari', '98311'),
(1776, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 273, 25, 'Papua Barat', 'Kabupaten', 'Manokwari Selatan', '98355'),
(1777, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 274, 24, 'Papua', 'Kabupaten', 'Mappi', '99853'),
(1778, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 275, 28, 'Sulawesi Selatan', 'Kabupaten', 'Maros', '90511'),
(1779, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 276, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Mataram', '83131'),
(1780, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 277, 25, 'Papua Barat', 'Kabupaten', 'Maybrat', '98051'),
(1781, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 278, 34, 'Sumatera Utara', 'Kota', 'Medan', '20228'),
(1782, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 279, 12, 'Kalimantan Barat', 'Kabupaten', 'Melawi', '78619'),
(1783, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 280, 8, 'Jambi', 'Kabupaten', 'Merangin', '37319'),
(1784, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 281, 24, 'Papua', 'Kabupaten', 'Merauke', '99613'),
(1785, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 282, 18, 'Lampung', 'Kabupaten', 'Mesuji', '34911'),
(1786, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 283, 18, 'Lampung', 'Kota', 'Metro', '34111'),
(1787, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 284, 24, 'Papua', 'Kabupaten', 'Mimika', '99962'),
(1788, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 285, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa', '95614'),
(1789, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 286, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Selatan', '95914'),
(1790, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 287, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Tenggara', '95995'),
(1791, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 288, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Utara', '95316'),
(1792, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 289, 11, 'Jawa Timur', 'Kabupaten', 'Mojokerto', '61382'),
(1793, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 290, 11, 'Jawa Timur', 'Kota', 'Mojokerto', '61316'),
(1794, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 291, 29, 'Sulawesi Tengah', 'Kabupaten', 'Morowali', '94911'),
(1795, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 292, 33, 'Sumatera Selatan', 'Kabupaten', 'Muara Enim', '31315'),
(1796, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 293, 8, 'Jambi', 'Kabupaten', 'Muaro Jambi', '36311'),
(1797, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 294, 4, 'Bengkulu', 'Kabupaten', 'Muko Muko', '38715'),
(1798, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 295, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Muna', '93611'),
(1799, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 296, 14, 'Kalimantan Tengah', 'Kabupaten', 'Murung Raya', '73911'),
(1800, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 297, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Banyuasin', '30719'),
(1801, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 298, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Rawas', '31661'),
(1802, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 299, 24, 'Papua', 'Kabupaten', 'Nabire', '98816'),
(1803, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 300, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Nagan Raya', '23674'),
(1804, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 301, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Nagekeo', '86911'),
(1805, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 302, 17, 'Kepulauan Riau', 'Kabupaten', 'Natuna', '29711'),
(1806, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 303, 24, 'Papua', 'Kabupaten', 'Nduga', '99541'),
(1807, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 304, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ngada', '86413'),
(1808, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 305, 11, 'Jawa Timur', 'Kabupaten', 'Nganjuk', '64414'),
(1809, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 306, 11, 'Jawa Timur', 'Kabupaten', 'Ngawi', '63219'),
(1810, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 307, 34, 'Sumatera Utara', 'Kabupaten', 'Nias', '22876'),
(1811, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 308, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Barat', '22895'),
(1812, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 309, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Selatan', '22865'),
(1813, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 310, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Utara', '22856'),
(1814, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 311, 16, 'Kalimantan Utara', 'Kabupaten', 'Nunukan', '77421'),
(1815, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 312, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Ilir', '30811'),
(1816, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 313, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ilir', '30618'),
(1817, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 314, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu', '32112'),
(1818, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 315, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Selatan', '32211'),
(1819, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 316, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Timur', '32312'),
(1820, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 317, 11, 'Jawa Timur', 'Kabupaten', 'Pacitan', '63512'),
(1821, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 318, 32, 'Sumatera Barat', 'Kota', 'Padang', '25112'),
(1822, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 319, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas', '22763'),
(1823, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 320, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas Utara', '22753'),
(1824, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 321, 32, 'Sumatera Barat', 'Kota', 'Padang Panjang', '27122'),
(1825, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 322, 32, 'Sumatera Barat', 'Kabupaten', 'Padang Pariaman', '25583'),
(1826, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 323, 34, 'Sumatera Utara', 'Kota', 'Padang Sidempuan', '22727'),
(1827, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 324, 33, 'Sumatera Selatan', 'Kota', 'Pagar Alam', '31512'),
(1828, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 325, 34, 'Sumatera Utara', 'Kabupaten', 'Pakpak Bharat', '22272'),
(1829, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 326, 14, 'Kalimantan Tengah', 'Kota', 'Palangka Raya', '73112'),
(1830, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 327, 33, 'Sumatera Selatan', 'Kota', 'Palembang', '30111'),
(1831, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 328, 28, 'Sulawesi Selatan', 'Kota', 'Palopo', '91911'),
(1832, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 329, 29, 'Sulawesi Tengah', 'Kota', 'Palu', '94111'),
(1833, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 330, 11, 'Jawa Timur', 'Kabupaten', 'Pamekasan', '69319'),
(1834, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 331, 3, 'Banten', 'Kabupaten', 'Pandeglang', '42212'),
(1835, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 332, 9, 'Jawa Barat', 'Kabupaten', 'Pangandaran', '46511'),
(1836, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 333, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pangkajene Kepulauan', '90611'),
(1837, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 334, 2, 'Bangka Belitung', 'Kota', 'Pangkal Pinang', '33115'),
(1838, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 335, 24, 'Papua', 'Kabupaten', 'Paniai', '98765'),
(1839, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 336, 28, 'Sulawesi Selatan', 'Kota', 'Parepare', '91123'),
(1840, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 337, 32, 'Sumatera Barat', 'Kota', 'Pariaman', '25511'),
(1841, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 338, 29, 'Sulawesi Tengah', 'Kabupaten', 'Parigi Moutong', '94411'),
(1842, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 339, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman', '26318'),
(1843, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 340, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman Barat', '26511'),
(1844, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 341, 15, 'Kalimantan Timur', 'Kabupaten', 'Paser', '76211'),
(1845, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 342, 11, 'Jawa Timur', 'Kabupaten', 'Pasuruan', '67153'),
(1846, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 343, 11, 'Jawa Timur', 'Kota', 'Pasuruan', '67118'),
(1847, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 344, 10, 'Jawa Tengah', 'Kabupaten', 'Pati', '59114'),
(1848, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 345, 32, 'Sumatera Barat', 'Kota', 'Payakumbuh', '26213'),
(1849, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 346, 25, 'Papua Barat', 'Kabupaten', 'Pegunungan Arfak', '98354'),
(1850, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 347, 24, 'Papua', 'Kabupaten', 'Pegunungan Bintang', '99573'),
(1851, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 348, 10, 'Jawa Tengah', 'Kabupaten', 'Pekalongan', '51161'),
(1852, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 349, 10, 'Jawa Tengah', 'Kota', 'Pekalongan', '51122'),
(1853, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 350, 26, 'Riau', 'Kota', 'Pekanbaru', '28112'),
(1854, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 351, 26, 'Riau', 'Kabupaten', 'Pelalawan', '28311'),
(1855, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 352, 10, 'Jawa Tengah', 'Kabupaten', 'Pemalang', '52319'),
(1856, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 353, 34, 'Sumatera Utara', 'Kota', 'Pematang Siantar', '21126'),
(1857, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 354, 15, 'Kalimantan Timur', 'Kabupaten', 'Penajam Paser Utara', '76311'),
(1858, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 355, 18, 'Lampung', 'Kabupaten', 'Pesawaran', '35312'),
(1859, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 356, 18, 'Lampung', 'Kabupaten', 'Pesisir Barat', '35974'),
(1860, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 357, 32, 'Sumatera Barat', 'Kabupaten', 'Pesisir Selatan', '25611'),
(1861, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 358, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie', '24116'),
(1862, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 359, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie Jaya', '24186'),
(1863, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 360, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pinrang', '91251'),
(1864, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 361, 7, 'Gorontalo', 'Kabupaten', 'Pohuwato', '96419'),
(1865, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 362, 27, 'Sulawesi Barat', 'Kabupaten', 'Polewali Mandar', '91311'),
(1866, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 363, 11, 'Jawa Timur', 'Kabupaten', 'Ponorogo', '63411'),
(1867, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 364, 12, 'Kalimantan Barat', 'Kabupaten', 'Pontianak', '78971'),
(1868, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 365, 12, 'Kalimantan Barat', 'Kota', 'Pontianak', '78112'),
(1869, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 366, 29, 'Sulawesi Tengah', 'Kabupaten', 'Poso', '94615'),
(1870, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 367, 33, 'Sumatera Selatan', 'Kota', 'Prabumulih', '31121'),
(1871, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 368, 18, 'Lampung', 'Kabupaten', 'Pringsewu', '35719'),
(1872, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 369, 11, 'Jawa Timur', 'Kabupaten', 'Probolinggo', '67282'),
(1873, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 370, 11, 'Jawa Timur', 'Kota', 'Probolinggo', '67215'),
(1874, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 371, 14, 'Kalimantan Tengah', 'Kabupaten', 'Pulang Pisau', '74811'),
(1875, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 372, 20, 'Maluku Utara', 'Kabupaten', 'Pulau Morotai', '97771'),
(1876, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 373, 24, 'Papua', 'Kabupaten', 'Puncak', '98981'),
(1877, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 374, 24, 'Papua', 'Kabupaten', 'Puncak Jaya', '98979'),
(1878, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 375, 10, 'Jawa Tengah', 'Kabupaten', 'Purbalingga', '53312'),
(1879, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 376, 9, 'Jawa Barat', 'Kabupaten', 'Purwakarta', '41119'),
(1880, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 377, 10, 'Jawa Tengah', 'Kabupaten', 'Purworejo', '54111'),
(1881, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 378, 25, 'Papua Barat', 'Kabupaten', 'Raja Ampat', '98489'),
(1882, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 379, 4, 'Bengkulu', 'Kabupaten', 'Rejang Lebong', '39112'),
(1883, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 380, 10, 'Jawa Tengah', 'Kabupaten', 'Rembang', '59219'),
(1884, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 381, 26, 'Riau', 'Kabupaten', 'Rokan Hilir', '28992'),
(1885, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 382, 26, 'Riau', 'Kabupaten', 'Rokan Hulu', '28511'),
(1886, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 383, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Rote Ndao', '85982'),
(1887, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 384, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Sabang', '23512'),
(1888, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 385, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sabu Raijua', '85391'),
(1889, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 386, 10, 'Jawa Tengah', 'Kota', 'Salatiga', '50711'),
(1890, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 387, 15, 'Kalimantan Timur', 'Kota', 'Samarinda', '75133'),
(1891, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 388, 12, 'Kalimantan Barat', 'Kabupaten', 'Sambas', '79453'),
(1892, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 389, 34, 'Sumatera Utara', 'Kabupaten', 'Samosir', '22392'),
(1893, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 390, 11, 'Jawa Timur', 'Kabupaten', 'Sampang', '69219'),
(1894, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 391, 12, 'Kalimantan Barat', 'Kabupaten', 'Sanggau', '78557'),
(1895, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 392, 24, 'Papua', 'Kabupaten', 'Sarmi', '99373'),
(1896, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 393, 8, 'Jambi', 'Kabupaten', 'Sarolangun', '37419'),
(1897, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 394, 32, 'Sumatera Barat', 'Kota', 'Sawah Lunto', '27416'),
(1898, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 395, 12, 'Kalimantan Barat', 'Kabupaten', 'Sekadau', '79583'),
(1899, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 396, 28, 'Sulawesi Selatan', 'Kabupaten', 'Selayar (Kepulauan Selayar)', '92812'),
(1900, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 397, 4, 'Bengkulu', 'Kabupaten', 'Seluma', '38811'),
(1901, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 398, 10, 'Jawa Tengah', 'Kabupaten', 'Semarang', '50511'),
(1902, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 399, 10, 'Jawa Tengah', 'Kota', 'Semarang', '50135'),
(1903, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 400, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Barat', '97561'),
(1904, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 401, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Timur', '97581'),
(1905, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 402, 3, 'Banten', 'Kabupaten', 'Serang', '42182'),
(1906, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 403, 3, 'Banten', 'Kota', 'Serang', '42111'),
(1907, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 404, 34, 'Sumatera Utara', 'Kabupaten', 'Serdang Bedagai', '20915'),
(1908, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 405, 14, 'Kalimantan Tengah', 'Kabupaten', 'Seruyan', '74211'),
(1909, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 406, 26, 'Riau', 'Kabupaten', 'Siak', '28623'),
(1910, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 407, 34, 'Sumatera Utara', 'Kota', 'Sibolga', '22522'),
(1911, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 408, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sidenreng Rappang/Rapang', '91613'),
(1912, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 409, 11, 'Jawa Timur', 'Kabupaten', 'Sidoarjo', '61219'),
(1913, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 410, 29, 'Sulawesi Tengah', 'Kabupaten', 'Sigi', '94364'),
(1914, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 411, 32, 'Sumatera Barat', 'Kabupaten', 'Sijunjung (Sawah Lunto Sijunjung)', '27511'),
(1915, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 412, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sikka', '86121'),
(1916, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 413, 34, 'Sumatera Utara', 'Kabupaten', 'Simalungun', '21162'),
(1917, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 414, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Simeulue', '23891'),
(1918, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 415, 12, 'Kalimantan Barat', 'Kota', 'Singkawang', '79117'),
(1919, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 416, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sinjai', '92615'),
(1920, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 417, 12, 'Kalimantan Barat', 'Kabupaten', 'Sintang', '78619'),
(1921, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 418, 11, 'Jawa Timur', 'Kabupaten', 'Situbondo', '68316'),
(1922, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 419, 5, 'DI Yogyakarta', 'Kabupaten', 'Sleman', '55513'),
(1923, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 420, 32, 'Sumatera Barat', 'Kabupaten', 'Solok', '27365'),
(1924, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 421, 32, 'Sumatera Barat', 'Kota', 'Solok', '27315'),
(1925, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 422, 32, 'Sumatera Barat', 'Kabupaten', 'Solok Selatan', '27779'),
(1926, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 423, 28, 'Sulawesi Selatan', 'Kabupaten', 'Soppeng', '90812'),
(1927, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 424, 25, 'Papua Barat', 'Kabupaten', 'Sorong', '98431'),
(1928, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 425, 25, 'Papua Barat', 'Kota', 'Sorong', '98411'),
(1929, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 426, 25, 'Papua Barat', 'Kabupaten', 'Sorong Selatan', '98454'),
(1930, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 427, 10, 'Jawa Tengah', 'Kabupaten', 'Sragen', '57211'),
(1931, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 428, 9, 'Jawa Barat', 'Kabupaten', 'Subang', '41215'),
(1932, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 429, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Subulussalam', '24882'),
(1933, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 430, 9, 'Jawa Barat', 'Kabupaten', 'Sukabumi', '43311'),
(1934, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 431, 9, 'Jawa Barat', 'Kota', 'Sukabumi', '43114'),
(1935, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 432, 14, 'Kalimantan Tengah', 'Kabupaten', 'Sukamara', '74712'),
(1936, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 433, 10, 'Jawa Tengah', 'Kabupaten', 'Sukoharjo', '57514'),
(1937, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 434, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat', '87219'),
(1938, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 435, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat Daya', '87453'),
(1939, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 436, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Tengah', '87358'),
(1940, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 437, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Timur', '87112'),
(1941, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 438, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa', '84315'),
(1942, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 439, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa Barat', '84419'),
(1943, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 440, 9, 'Jawa Barat', 'Kabupaten', 'Sumedang', '45326');
INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `city_id`, `province_id`, `province`, `type`, `city_name`, `postal_code`) VALUES
(1944, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 441, 11, 'Jawa Timur', 'Kabupaten', 'Sumenep', '69413'),
(1945, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 442, 8, 'Jambi', 'Kota', 'Sungaipenuh', '37113'),
(1946, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 443, 24, 'Papua', 'Kabupaten', 'Supiori', '98164'),
(1947, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 444, 11, 'Jawa Timur', 'Kota', 'Surabaya', '60119'),
(1948, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 445, 10, 'Jawa Tengah', 'Kota', 'Surakarta (Solo)', '57113'),
(1949, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 446, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tabalong', '71513'),
(1950, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 447, 1, 'Bali', 'Kabupaten', 'Tabanan', '82119'),
(1951, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 448, 28, 'Sulawesi Selatan', 'Kabupaten', 'Takalar', '92212'),
(1952, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 449, 25, 'Papua Barat', 'Kabupaten', 'Tambrauw', '98475'),
(1953, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 450, 16, 'Kalimantan Utara', 'Kabupaten', 'Tana Tidung', '77611'),
(1954, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 451, 28, 'Sulawesi Selatan', 'Kabupaten', 'Tana Toraja', '91819'),
(1955, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 452, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Bumbu', '72211'),
(1956, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 453, 32, 'Sumatera Barat', 'Kabupaten', 'Tanah Datar', '27211'),
(1957, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 454, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Laut', '70811'),
(1958, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 455, 3, 'Banten', 'Kabupaten', 'Tangerang', '15914'),
(1959, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 456, 3, 'Banten', 'Kota', 'Tangerang', '15111'),
(1960, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 457, 3, 'Banten', 'Kota', 'Tangerang Selatan', '15435'),
(1961, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 458, 18, 'Lampung', 'Kabupaten', 'Tanggamus', '35619'),
(1962, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 459, 34, 'Sumatera Utara', 'Kota', 'Tanjung Balai', '21321'),
(1963, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 460, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Barat', '36513'),
(1964, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 461, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Timur', '36719'),
(1965, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 462, 17, 'Kepulauan Riau', 'Kota', 'Tanjung Pinang', '29111'),
(1966, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 463, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Selatan', '22742'),
(1967, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 464, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Tengah', '22611'),
(1968, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 465, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Utara', '22414'),
(1969, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 466, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tapin', '71119'),
(1970, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 467, 16, 'Kalimantan Utara', 'Kota', 'Tarakan', '77114'),
(1971, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 468, 9, 'Jawa Barat', 'Kabupaten', 'Tasikmalaya', '46411'),
(1972, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 469, 9, 'Jawa Barat', 'Kota', 'Tasikmalaya', '46116'),
(1973, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 470, 34, 'Sumatera Utara', 'Kota', 'Tebing Tinggi', '20632'),
(1974, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 471, 8, 'Jambi', 'Kabupaten', 'Tebo', '37519'),
(1975, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 472, 10, 'Jawa Tengah', 'Kabupaten', 'Tegal', '52419'),
(1976, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 473, 10, 'Jawa Tengah', 'Kota', 'Tegal', '52114'),
(1977, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 474, 25, 'Papua Barat', 'Kabupaten', 'Teluk Bintuni', '98551'),
(1978, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 475, 25, 'Papua Barat', 'Kabupaten', 'Teluk Wondama', '98591'),
(1979, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 476, 10, 'Jawa Tengah', 'Kabupaten', 'Temanggung', '56212'),
(1980, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 477, 20, 'Maluku Utara', 'Kota', 'Ternate', '97714'),
(1981, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 478, 20, 'Maluku Utara', 'Kota', 'Tidore Kepulauan', '97815'),
(1982, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 479, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Selatan', '85562'),
(1983, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 480, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Utara', '85612'),
(1984, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 481, 34, 'Sumatera Utara', 'Kabupaten', 'Toba Samosir', '22316'),
(1985, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 482, 29, 'Sulawesi Tengah', 'Kabupaten', 'Tojo Una-Una', '94683'),
(1986, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 483, 29, 'Sulawesi Tengah', 'Kabupaten', 'Toli-Toli', '94542'),
(1987, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 484, 24, 'Papua', 'Kabupaten', 'Tolikara', '99411'),
(1988, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 485, 31, 'Sulawesi Utara', 'Kota', 'Tomohon', '95416'),
(1989, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 486, 28, 'Sulawesi Selatan', 'Kabupaten', 'Toraja Utara', '91831'),
(1990, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 487, 11, 'Jawa Timur', 'Kabupaten', 'Trenggalek', '66312'),
(1991, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 488, 19, 'Maluku', 'Kota', 'Tual', '97612'),
(1992, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 489, 11, 'Jawa Timur', 'Kabupaten', 'Tuban', '62319'),
(1993, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 490, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang', '34613'),
(1994, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 491, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang Barat', '34419'),
(1995, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 492, 11, 'Jawa Timur', 'Kabupaten', 'Tulungagung', '66212'),
(1996, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 493, 28, 'Sulawesi Selatan', 'Kabupaten', 'Wajo', '90911'),
(1997, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 494, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Wakatobi', '93791'),
(1998, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 495, 24, 'Papua', 'Kabupaten', 'Waropen', '98269'),
(1999, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 496, 18, 'Lampung', 'Kabupaten', 'Way Kanan', '34711'),
(2000, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 497, 10, 'Jawa Tengah', 'Kabupaten', 'Wonogiri', '57619'),
(2001, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 498, 10, 'Jawa Tengah', 'Kabupaten', 'Wonosobo', '56311'),
(2002, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 499, 24, 'Papua', 'Kabupaten', 'Yahukimo', '99041'),
(2003, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 500, 24, 'Papua', 'Kabupaten', 'Yalimo', '99481'),
(2004, '2024-05-17 08:26:04', '2024-05-17 08:26:04', 501, 5, 'DI Yogyakarta', 'Kota', 'Yogyakarta', '55111');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_04_19_133130_create_alamats_table', 1),
(7, '2024_04_19_133152_create_produks_table', 1),
(8, '2024_04_19_133232_create_transaksis_table', 1),
(11, '2014_10_12_000000_create_users_table', 2),
(12, '2024_04_19_132211_edit_users_table', 3),
(13, '2024_05_03_153517_alter_produk', 4),
(14, '2024_05_08_121321_create_provinces_table', 5),
(15, '2024_05_08_122811_create_cities_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ukuran` int NOT NULL DEFAULT '0',
  `berat` int NOT NULL,
  `rasa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `province_id` int NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `created_at`, `updated_at`, `province_id`, `province`) VALUES
(69, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 1, 'Bali'),
(70, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 2, 'Bangka Belitung'),
(71, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 3, 'Banten'),
(72, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 4, 'Bengkulu'),
(73, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 5, 'DI Yogyakarta'),
(74, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 6, 'DKI Jakarta'),
(75, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 7, 'Gorontalo'),
(76, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 8, 'Jambi'),
(77, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 9, 'Jawa Barat'),
(78, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 10, 'Jawa Tengah'),
(79, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 11, 'Jawa Timur'),
(80, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 12, 'Kalimantan Barat'),
(81, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 13, 'Kalimantan Selatan'),
(82, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 14, 'Kalimantan Tengah'),
(83, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 15, 'Kalimantan Timur'),
(84, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 16, 'Kalimantan Utara'),
(85, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 17, 'Kepulauan Riau'),
(86, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 18, 'Lampung'),
(87, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 19, 'Maluku'),
(88, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 20, 'Maluku Utara'),
(89, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 21, 'Nanggroe Aceh Darussalam (NAD)'),
(90, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 22, 'Nusa Tenggara Barat (NTB)'),
(91, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 23, 'Nusa Tenggara Timur (NTT)'),
(92, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 24, 'Papua'),
(93, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 25, 'Papua Barat'),
(94, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 26, 'Riau'),
(95, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 27, 'Sulawesi Barat'),
(96, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 28, 'Sulawesi Selatan'),
(97, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 29, 'Sulawesi Tengah'),
(98, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 30, 'Sulawesi Tenggara'),
(99, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 31, 'Sulawesi Utara'),
(100, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 32, 'Sumatera Barat'),
(101, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 33, 'Sumatera Selatan'),
(102, '2024-05-17 08:26:07', '2024-05-17 08:26:07', 34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tanggal_order` datetime NOT NULL,
  `tanggal_bayar` datetime DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `alamat_id` bigint NOT NULL,
  `produk_id` bigint NOT NULL,
  `qty` int NOT NULL,
  `weight` int NOT NULL,
  `courier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_kirim` int NOT NULL,
  `ongkos_kirim` int NOT NULL,
  `harga_barang` int NOT NULL,
  `total_harga` int NOT NULL,
  `status_transaksi` enum('PESAN','TERBAYAR','SELESAI') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PESAN',
  `tanggal_terima` datetime DEFAULT NULL,
  `rating` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('KONSUMEN','TOKO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'KONSUMEN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Administrator Toko', 'admin@tokoku.com', '2024-04-24 05:19:12', '$2y$10$aNfKu9yHi06w55nfaCSm8.Os6pBcPLHDrCxbVJv86rnfg4q9Gs0z2', 'phU0bfqvEEY54j1dJ4LzpVL5uTyihpm2QYvo5oXCwAYJOZo8UvNtOMBT0uFQ', NULL, NULL, 'TOKO'),
(2, 'bimo 1', 'bimo@gmail.com', NULL, '$2y$10$SnkM1Sb0tdkPH.8qLezsr.XplpAA9tfYhIFLo1VjlYqT1W4OlLUQS', NULL, '2024-04-24 05:32:44', '2024-04-26 06:21:37', 'KONSUMEN'),
(4, 'Bimo12', 'test@gmail.com', NULL, '$2y$10$sqgiQlKvixNdMJlnRNi3UOyHBcm72bZQcTOWFnTCa5lpWfQS/dBwW', NULL, '2024-04-26 06:25:39', '2024-04-26 06:25:48', 'KONSUMEN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alamats`
--
ALTER TABLE `alamats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alamats`
--
ALTER TABLE `alamats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2005;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
