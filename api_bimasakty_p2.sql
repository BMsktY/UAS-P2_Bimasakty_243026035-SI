-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2024 at 04:29 AM
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
-- Database: `api_bimasakty_p2`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `tinggi` varchar(20) NOT NULL,
  `umur` int(100) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `julukan` varchar(255) NOT NULL,
  `kepribadian` text NOT NULL,
  `devil_fruit` varchar(255) NOT NULL,
  `haki_user` varchar(255) NOT NULL,
  `debut_char` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `nama`, `gender`, `tinggi`, `umur`, `pangkat`, `julukan`, `kepribadian`, `devil_fruit`, `haki_user`, `debut_char`) VALUES
(1, 'sengoku', 'laki - laki ', '278 cm', 79, 'Inspector general, Fleet admiral (former)', 'Sengoku sang Buddha', 'bijaksana, strategis, disiplin.', 'Hito - Hito no Mi, model: Daibutsu / buddha ( \'Mythical Zoan\' )', 'Kenbunshoku Haki : true,  Busoshoku Haki : true,  Haoshoku Haki: unknown', 'Episode 152'),
(2, 'Monkey D. Garp', 'laki - laki ', '287 cm', 78, 'Vice Admiral', 'Garp the Fist, Garp sang Pahlawan.', 'Ceria, bodoh amat, keras kepala, sengklek, penyayang keluarga kemudian sedikit tegas soal tujuan.', 'None pengguna', 'Kenbunshoku Haki : true,  Busoshoku Haki : true,  Haoshoku Haki: true', 'Episode 68'),
(3, 'Tsuru', 'Perempuan', '204 cm', 76, 'Vice Admiral', 'Tsuru Sang Penegak Keadilan', 'Tenang, bijaksana, dan tegas.', ' Woshu Woshu no Mi ( \'Paramecia \')', 'Kenbunshoku Haki : true,  Busoshoku Haki : true,  Haoshoku Haki: unknown', 'Episode 151'),
(4, 'Sakazuki ( \'Akainu\' )', 'laki - laki', '306 cm', 55, 'Fleet Admiral', 'Anjing merah, Donut Maker :D', 'Tegas, ekstrem, kejam dan tidak kenal batas derajat, memiliki kepercayaan pada keadilan absolut, buah iblis panas dengan karakter yang dingin', 'Magu Magu no Mi ( \' Logia \' )', 'Kenbunshoku Haki : true,  Busoshoku Haki : true,  Haoshoku Haki: unknown', 'Episode 278'),
(5, 'Kuzan (  \'Aokiji\' )', 'laki - laki ', '298 cm', 49, 'Admiral (former)', 'Burung biru, Pria dingin', 'Santai, adil, memiliki rasa moral yang kuat kepada orang lain, buah iblis dingin dengan karakter yang hangat.', 'Hie - Hie no Mi (  \'Logia\' )', 'Kenbunshoku Haki: true ,  Busoshoku Haki: true,  Haoshoku Haki: true', 'Episode 225'),
(6, 'Borsalino ( \'Kizaru\')', 'laki - laki ', '302 cm', 58, 'Admiral ', 'Monyet kuning', 'Santai, sarkastik, sering terlihat acuh, buah iblis kecepatan dengan karakter yang lambat', 'Pika - Pika no Mi (  \'Logia\' )', 'Kenbunshoku Haki: true ,  Busoshoku Haki: true,  Haoshoku Haki: unknown', 'Episode 398'),
(7, 'Issho ( \'Fujitora\' )', 'laki - laki ', '270 cm', 54, 'Admiral ', 'harimau wisteria', 'Adil, bijaksana, dan memiliki rasa keadilan yang kuat meskipun buta. meskipun buta tapi bisa dapat melihat segala keadilannya ', 'Zushi - Zushi no Mi (  \'Paramecia\' )', 'Kenbunshoku Haki: true ,  Busoshoku Haki: true,  Haoshoku Haki: unknown', 'Episode 630'),
(8, 'Aramaki ( \'Ryokugyu\')', 'laki - laki ', '308 cm', 41, 'Admiral ', 'GreenBull', 'Tegas, sedikit pemalas, memiliki pandangan keadilan yang keras dan tidak segan-segan mengambil tindakan ekstrem dan fanatik dalam pengabdiannya kepada Pemerintah Dunia bahkan dengan Sakazuki. ', 'Mori- Mori no Mi (  \'Logia\' )', 'Kenbunshoku Haki: true ,  Busoshoku Haki: true,  Haoshoku Haki: unknown', 'Episode 882'),
(9, 'Kong', 'laki - laki ', 'unknown', 0, 'Fleet Admiral ( former )', 'Kong Sang Raja Laut', 'Bijaksana, tegas, sangat menghargai disiplin dan keadilan, memiliki hubungan erat dengan anggota lainnya ', 'unknown', 'Kenbunshoku Haki: unknown ,  Busoshoku Haki: unknown,  Haoshoku Haki: unknown', 'Episode 0'),
(10, 'Koby', 'laki - laki ', '167 cm', 18, 'Captain', 'Pahlawan koby, koby sang impian', 'Teguh, percaya pada keadilan, sangat berusaha keras untuk menjadi prajurit yang lebih baik, sangat menghargai disiplin dan keadilan, memiliki hubungan erat yang baik dengan anggota lain.', 'none pengguna', 'Kenbunshoku Haki: true ,  Busoshoku Haki: true,  Haoshoku Haki: unknown', 'Episode 1'),
(11, 'Helmeppo', 'laki - laki ', '179 cm', 22, 'Lieutenants', 'null', 'Awalnya pemalas dan manja, tetapi berkembang menjadi lebih disiplin dan berani setelah bergabung dengan Marine bersama koby', 'none pengguna', 'Kenbunshoku Haki: true ,  Busoshoku Haki: true,  Haoshoku Haki: false', 'Episode 2'),
(12, 'Smoker', 'laki - laki ', '209 cm', 36, 'Rear Admiral', 'Pemburu Putih (White Hunter), Smoker sang Perokok berat', 'Tegas, tidak suka bajak laut, sangat setia pada keadilan dan prinsip, meskipun memiliki pandangan yang berbeda dari Marine pada umumnya', 'Moku - Moku no Mi ( \'Paramecia\' )', 'Kenbunshoku Haki: true ,  Busoshoku Haki: true,  Haoshoku Haki: false', 'Episode 48'),
(13, 'Hina', 'Perempuan', '181 cm', 34, 'Rear Admiral', 'Hina si kandang hitam', 'Tegas, cerdas, dan memiliki rasa keadilan yang tinggi. Hina juga dikenal sangat perhatian terhadap bawahan dan rekan-rekannya', 'Ori Ori no Mi ( \'Paramecia\' )', 'Kenbunshoku Haki: true ,  Busoshoku Haki: true,  Haoshoku Haki: false', 'Episode 127'),
(14, 'Tashigi', 'Perempuan', '170 cm', 23, 'Captain', 'Perempuan pendekar pedang', 'Teguh, serius, memiliki rasa keadilan yang tinggi, sedikkit kikkuk, dan sangat menghargai pedang serta penggunaannya dengan cara yang bena', 'None pengguna', 'Kenbunshoku Haki: true ,  Busoshoku Haki: true,  Haoshoku Haki: false', 'Episode 48'),
(15, 'T-bone , status: dead', 'laki - laki', '200 cm', 53, 'Rear Admiral', 'Pemotong kapal', 'T-Bone sangat berkomitmen untuk melindungi rakyat dan menegakkan hukum Marine dan peduli dengan anggota lain.', 'none pengguna', 'Kenbunshoku Haki: true ,  Busoshoku Haki: true,  Haoshoku Haki: false', 'Episode 255'),
(17, 'Donquixote Rosinante ( \'Corazon\') status : dead', 'laki - laki', '293 cm', 26, 'Mata mata angkatan laut untuk bajak laut Donquixote', 'Corazon the silent, One of best character', 'Baik hati, peduli, dan sangat penyayang, meskipun ia berperan sebagai penipu demi melindungi keluarga Doflamingo. Meskipun berasal dari keluarga jahat, Corazon memiliki hati yang baik dan berjuang demi kebaikan, terutama untuk melindungi Trafalgar D. Water Law, telah mati di tangan saudaranya.', 'Nagi Nagi no Mi ( \'Paramecia\' )', 'Kenbunshoku Haki: true ,  Busoshoku Haki: true,  Haoshoku Haki: false', 'Episode 700');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
