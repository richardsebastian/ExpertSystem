-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 06:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `t_depresi`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Gejala'),
(4, 'depression'),
(5, 'Pengetahuan'),
(6, 'Laporan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_depression`
--

CREATE TABLE `tbl_depression` (
  `id_depression` int(11) NOT NULL,
  `kode_depression` char(3) NOT NULL,
  `nama_depression` varchar(100) NOT NULL,
  `solusi` text NOT NULL,
  `probabilitas` float NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_depression`
--

INSERT INTO `tbl_depression` (`id_depression`, `kode_depression`, `nama_depression`, `solusi`, `probabilitas`, `gambar`) VALUES
(1, 'K01', 'Depresi Ringan', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 0.4, 'messageImage_1636548261540.jpg'),
(2, 'K02', 'Depresi Sedang', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 0.25, 'messageImage_1636548273287.jpg'),
(3, 'K03', 'Depresi Berat', 'Pergi ke Psikoterapi.\r\nMelakukan terapi Cognitive behavior therapy (CBT). Terapi ini bertujuan untuk membantu pengidap melepaskan pikiran dan perasaan negatif, serta menggantinya dengan respon positif.\r\nProblem-solving therapy (PST), untuk meningkatkan kemampuan pengidap menghadapi pengalaman yang memicu rasa tertekan.\r\nInterpersonal therapy (IPT) untuk membantu mengatasi masalah yang muncul saat berhubungan dengan orang lain. ', 0.04, 'messageImage_1636548280424.jpg'),
(4, 'K04', 'Tidak Depresi', 'Tetap pertahankan!', 0.3, 'boy-face-avatar-cartoon-free-vector.jpg'),
(5, 'K05', 'Depresi Berat dengan Psikotik', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 0.01, 'inspiration-advice-health-mental-health-different-types-of-depression-hero-1360x502.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gejala`
--

CREATE TABLE `tbl_gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode_gejala` char(3) NOT NULL,
  `nama_gejala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gejala`
--

INSERT INTO `tbl_gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`) VALUES
(1, 'D01', 'mudah marah'),
(2, 'D02', 'mudah merasa putus asa'),
(3, 'D03', 'mudah merasa bersalah'),
(4, 'D04', 'membenci diri sendiri'),
(5, 'D05', 'kehilangan minat pada aktivitas atau hobi'),
(6, 'D06', 'sulit berkonsentrasi'),
(7, 'D07', 'kurang motivasi'),
(8, 'D08', 'rasa ingin bersosialisasi berkurang'),
(9, 'D09', 'merasa harga diri rendah'),
(10, 'D10', 'Merasa tidak ingin untuk melakukan kegiatan seharian'),
(11, 'D11', 'khawatir berlebihan'),
(12, 'D12', 'delusi dan halusinasi'),
(13, 'D13', 'memiliki pikiran untuk bunuh diri / mengakhiri hidup');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hasil_diagnosa`
--

CREATE TABLE `tbl_hasil_diagnosa` (
  `id_hasil` int(11) NOT NULL,
  `hasil_probabilitas` float NOT NULL,
  `nama_depression` varchar(100) NOT NULL,
  `nama_user` varchar(25) NOT NULL,
  `solusi` text NOT NULL,
  `waktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hasil_diagnosa`
--

INSERT INTO `tbl_hasil_diagnosa` (`id_hasil`, `hasil_probabilitas`, `nama_depression`, `nama_user`, `solusi`, `waktu`) VALUES
(5, 100, 'Mudah marah', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat\r\n', 1576814169),
(6, 80, 'Mudah merasa putus asa', 'Herdhani Eko', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi. ', 1576814575),
(7, 66, 'mudah merasa bersalah', 'Herdhani Eko', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1577676233),
(8, 66, 'Membenci diri sendiri', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1578761537),
(9, 66, 'Kehilangan minat pada aktivitas atau hobi', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.\r\n', 1579072194),
(10, 66, 'Sulit berkonsentrasi', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1579357189),
(11, 66, 'Kurang motivasi', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1579361910),
(12, 100, 'Rasa ingin bersosialisasi berkurang', 'Member', '\r\nBerlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1579362117),
(13, 0, 'delusi dan halusinasi', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1636536103),
(14, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636550742),
(15, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636550753),
(16, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636550756),
(17, 100, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636550761),
(18, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636550770),
(19, 100, 'Depresi Sedang', 'Member', '\r\nBerlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636550782),
(20, 100, 'Depresi Sedang', 'Member', '\r\nBerlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636550786),
(21, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636550792),
(22, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636550796),
(23, 100, 'Depresi Sedang', 'Member', '\r\nBerlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636550799),
(24, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636550802),
(25, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636550806),
(26, 80, 'Depresi Berat', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik.      ', 1636550812),
(27, 100, 'Depresi Sedang', 'Member', '\r\nBerlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636550819),
(28, 100, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636553033),
(29, 58, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636553504),
(30, 100, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636553513),
(31, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636553519),
(32, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636553753),
(33, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636553767),
(34, 100, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636553781),
(35, 100, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636554711),
(36, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636554897),
(37, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636554963),
(38, 58, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636554970),
(39, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636554978),
(40, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636554982),
(41, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636554988),
(42, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636554992),
(43, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636554996),
(44, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636555219),
(45, 100, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636555791),
(46, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636555800),
(47, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636555897),
(48, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636555902),
(49, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636555906),
(50, 100, 'Depresi Berat', 'Member', 'Kecemasan dalam gejala depresi berat dapat meliputi kegugupan, kegelisahan, atau perasaan tegang, perasaan bahaya, panik, atau takut, detak jantung dan pernapasan menjadi cepat, keringat meningkat, gemetar atau otot berkedut, dan kesulitan fokus atau berpikir jernih tentang banyak hal   ', 1636555910),
(51, 57, 'Depresi Berat', 'Member', 'Kecemasan dalam gejala depresi berat dapat meliputi kegugupan, kegelisahan, atau perasaan tegang, perasaan bahaya, panik, atau takut, detak jantung dan pernapasan menjadi cepat, keringat meningkat, gemetar atau otot berkedut, dan kesulitan fokus atau berpikir jernih tentang banyak hal   ', 1636555916),
(52, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636555923),
(53, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636555930),
(54, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636555935),
(55, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636557031),
(56, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636557034),
(57, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636557039),
(58, 100, 'Depresi Berat', 'Member', 'Kecemasan dalam gejala depresi berat dapat meliputi kegugupan, kegelisahan, atau perasaan tegang, perasaan bahaya, panik, atau takut, detak jantung dan pernapasan menjadi cepat, keringat meningkat, gemetar atau otot berkedut, dan kesulitan fokus atau berpikir jernih tentang banyak hal   ', 1636557051),
(59, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636557055),
(60, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636557059),
(61, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636557064),
(62, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636557067),
(63, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636557077),
(64, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636557080),
(65, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636557084),
(66, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636557314),
(67, 100, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636557461),
(68, 100, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636557467),
(69, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636557472),
(70, 60, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636557475),
(71, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636559059),
(72, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636559064),
(73, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636559068),
(74, 66, 'Depresi Berat', 'Member', 'Kecemasan dalam gejala depresi berat dapat meliputi kegugupan, kegelisahan, atau perasaan tegang, perasaan bahaya, panik, atau takut, detak jantung dan pernapasan menjadi cepat, keringat meningkat, gemetar atau otot berkedut, dan kesulitan fokus atau berpikir jernih tentang banyak hal   ', 1636559072),
(75, 100, 'Depresi Akut', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1636559986),
(76, 60, 'Tidak Depresi', 'Member', 'Tetap pertahankan!', 1636560000),
(77, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636560023),
(78, 62, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1636561394),
(79, 100, 'Depresi Akut', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1636561410),
(80, 80, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636561425),
(81, 70, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636561442),
(82, 82, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636561447),
(83, 69, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636561454),
(84, 100, 'Depresi Akut', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1636561462),
(85, 56, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636561467),
(86, 35, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636561471),
(87, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636561477),
(88, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636561481),
(89, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1636561487),
(90, 56, 'Depresi Sedang', 'aldo', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637228508),
(91, 100, 'Depresi Akut', 'aldo', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637583670),
(92, 100, 'Depresi Akut', 'aldo', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637583677),
(93, 42, 'Depresi Sedang', 'aldo', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637583684),
(94, 60, 'Tidak Depresi', 'aldo', 'Tetap pertahankan!', 1637583688),
(95, 76, 'Depresi Ringan', 'aldo', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637583694),
(96, 100, 'Depresi Akut', 'aldo', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637583700),
(97, 58, 'Depresi Sedang', 'aldo', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637583705),
(98, 100, 'Depresi Akut', 'aldo', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637583714),
(99, 0, 'Depresi Ringan', 'aldo', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637583719),
(100, 0, 'Depresi Ringan', 'aldo', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637583722),
(101, 0, 'Depresi Ringan', 'aldo', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637583735),
(102, 62, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637589054),
(103, 62, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637589059),
(104, 100, 'Depresi Akut', 'ryan', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637589583),
(105, 0, 'Depresi Ringan', 'ryan', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637589592),
(106, 0, 'Depresi Ringan', 'ryan', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637589600),
(107, 62, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637591717),
(108, 62, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637592034),
(109, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637593988),
(110, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594001),
(111, 52, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637594023),
(112, 46, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594032),
(113, 42, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594051),
(114, 68, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637594133),
(115, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594167),
(116, 100, 'Depresi Berat', 'Member', 'Kecemasan dalam gejala depresi berat dapat meliputi kegugupan, kegelisahan, atau perasaan tegang, perasaan bahaya, panik, atau takut, detak jantung dan pernapasan menjadi cepat, keringat meningkat, gemetar atau otot berkedut, dan kesulitan fokus atau berpikir jernih tentang banyak hal   ', 1637594170),
(117, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594179),
(118, 46, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594193),
(119, 100, 'Depresi Berat', 'Member', 'Kecemasan dalam gejala depresi berat dapat meliputi kegugupan, kegelisahan, atau perasaan tegang, perasaan bahaya, panik, atau takut, detak jantung dan pernapasan menjadi cepat, keringat meningkat, gemetar atau otot berkedut, dan kesulitan fokus atau berpikir jernih tentang banyak hal   ', 1637594199),
(120, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594204),
(121, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637594211),
(122, 100, 'Depresi Berat', 'Member', 'Kecemasan dalam gejala depresi berat dapat meliputi kegugupan, kegelisahan, atau perasaan tegang, perasaan bahaya, panik, atau takut, detak jantung dan pernapasan menjadi cepat, keringat meningkat, gemetar atau otot berkedut, dan kesulitan fokus atau berpikir jernih tentang banyak hal   ', 1637594216),
(123, 100, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594224),
(124, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594231),
(125, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594235),
(126, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594240),
(127, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594242),
(128, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594245),
(129, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594250),
(130, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594254),
(131, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637594973),
(132, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637595846),
(133, 80, 'Depresi Berat', 'Member', 'Kecemasan dalam gejala depresi berat dapat meliputi kegugupan, kegelisahan, atau perasaan tegang, perasaan bahaya, panik, atau takut, detak jantung dan pernapasan menjadi cepat, keringat meningkat, gemetar atau otot berkedut, dan kesulitan fokus atau berpikir jernih tentang banyak hal   ', 1637595854),
(134, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637595861),
(135, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637595876),
(136, 67, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637595898),
(137, 76, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637595905),
(138, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637596017),
(139, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637596023),
(140, 64, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637596029),
(141, 86, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596037),
(142, 75, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596044),
(143, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637596049),
(144, 55, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596174),
(145, 49, 'Depresi Berat', 'Member', 'Kecemasan dalam gejala depresi berat dapat meliputi kegugupan, kegelisahan, atau perasaan tegang, perasaan bahaya, panik, atau takut, detak jantung dan pernapasan menjadi cepat, keringat meningkat, gemetar atau otot berkedut, dan kesulitan fokus atau berpikir jernih tentang banyak hal   ', 1637596178),
(146, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637596202),
(147, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637596216),
(148, 55, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596224),
(149, 35, 'Tidak Depresi', 'Member', 'Tetap pertahankan!', 1637596233),
(150, 80, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596497),
(151, 67, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596502),
(152, 71, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596506);
INSERT INTO `tbl_hasil_diagnosa` (`id_hasil`, `hasil_probabilitas`, `nama_depression`, `nama_user`, `solusi`, `waktu`) VALUES
(153, 51, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596513),
(154, 60, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596517),
(155, 67, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596524),
(156, 80, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596528),
(157, 52, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596531),
(158, 69, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596536),
(159, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637596540),
(160, 66, 'Depresi Berat', 'Member', 'Pergi ke Psikoterapi.\r\nMelakukan terapi Cognitive behavior therapy (CBT). Terapi ini bertujuan untuk membantu pengidap melepaskan pikiran dan perasaan negatif, serta menggantinya dengan respon positif.\r\nProblem-solving therapy (PST), untuk meningkatkan kemampuan pengidap menghadapi pengalaman yang memicu rasa tertekan.\r\nInterpersonal therapy (IPT) untuk membantu mengatasi masalah yang muncul saat berhubungan dengan orang lain. ', 1637596546),
(161, 55, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637596565),
(162, 93, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637597030),
(163, 71, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637597052),
(164, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637597426),
(165, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637597508),
(166, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637597522),
(167, 96, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637597533),
(168, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637597554),
(169, 96, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637597681),
(170, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637597693),
(171, 93, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637597717),
(172, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637597742),
(173, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637597757),
(174, 100, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637597777),
(175, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637597781),
(176, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637597787),
(177, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637597795),
(178, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637597799),
(179, 94, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637599543),
(180, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637599546),
(181, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637599551),
(182, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637599557),
(183, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637599562),
(184, 0, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637599565),
(185, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637599568),
(186, 70, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637602188),
(187, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637602204),
(188, 85, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637602217),
(189, 75, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637602222),
(190, 62, 'Depresi Ringan', 'Member', 'Jadilah lebih aktif,  Makan yang sehat, Tidur yang cukup,  Hadapi masalah Anda, Lakukan hal-hal yang baru dan menyenangkan dengan orang-orang terdekat', 1637602230),
(191, 75, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637602243),
(192, 67, 'Depresi Sedang', 'Member', 'Berlatih memerangi setiap pikiran negatif yang datang dengan menggunakan logika, lakukan hal baru, berbeda, dan menyenangkan setiap Anda mulai merasa depresi atau aura negatif menyerang, misalnya dengan mengikuti kelas menyelam, melakukan olahraga seperti jalan kaki sebanyak 3-5 kali seminggu selama 20-30 menit bisa mencetuskan produksi hormon endorfin, sehingga mampu meningkatkan suasana hati menjadi lebih bergairah dan semangat, memiliki waktu tidur yang cukup minimal 6 hingga 8 jam perhari. Kurangnya waktu tidur maupun waktu tidur yang berlebihan, dapat memperburuk depresi.', 1637602247),
(193, 100, 'Depresi Berat dengan Psikotik', 'Member', 'Mengonsumsi obat antidepresan seperti SSRIs sering kali diresepkan untuk penderita depresi berat, pergi ke psikoterapi dapat menjadi pengobatan yang efektif untuk penderita depresi berat, dukungan keluarga dapat membantu kondisi Anda lebih membaik. ', 1637602261),
(194, 80, 'Depresi Berat', 'Member', 'Pergi ke Psikoterapi.\r\nMelakukan terapi Cognitive behavior therapy (CBT). Terapi ini bertujuan untuk membantu pengidap melepaskan pikiran dan perasaan negatif, serta menggantinya dengan respon positif.\r\nProblem-solving therapy (PST), untuk meningkatkan kemampuan pengidap menghadapi pengalaman yang memicu rasa tertekan.\r\nInterpersonal therapy (IPT) untuk membantu mengatasi masalah yang muncul saat berhubungan dengan orang lain. ', 1637602266);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengetahuan`
--

CREATE TABLE `tbl_pengetahuan` (
  `id` int(11) NOT NULL,
  `id_depression` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL,
  `probabilitas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengetahuan`
--

INSERT INTO `tbl_pengetahuan` (`id`, `id_depression`, `id_gejala`, `probabilitas`) VALUES
(1, 1, 1, 0.88),
(2, 1, 2, 1),
(3, 1, 3, 1),
(5, 1, 4, 1),
(6, 1, 5, 0.63),
(7, 1, 6, 1),
(8, 1, 7, 0.83),
(9, 1, 8, 0.13),
(10, 1, 9, 0.13),
(11, 1, 10, 0),
(12, 1, 11, 0),
(13, 1, 12, 0),
(14, 1, 13, 0),
(15, 2, 1, 0.8),
(16, 2, 2, 1),
(17, 2, 3, 1),
(18, 2, 4, 1),
(19, 2, 5, 1),
(20, 2, 6, 0.8),
(21, 2, 7, 0.84),
(22, 2, 8, 0.6),
(23, 2, 9, 0.6),
(24, 2, 10, 0.4),
(25, 2, 11, 0.2),
(26, 2, 12, 0),
(27, 2, 13, 0),
(28, 3, 1, 0.25),
(29, 3, 2, 0.75),
(30, 3, 3, 0.75),
(31, 3, 4, 0.75),
(32, 3, 5, 0.75),
(33, 3, 6, 0.5),
(34, 3, 7, 0.5),
(35, 3, 8, 1),
(36, 3, 9, 1),
(37, 3, 10, 1),
(38, 3, 11, 1),
(39, 3, 12, 0),
(40, 3, 13, 1),
(67, 4, 1, 0.83),
(68, 4, 2, 0.07),
(69, 4, 3, 0.03),
(70, 4, 4, 0.1),
(71, 4, 5, 0),
(72, 4, 6, 0.93),
(73, 4, 7, 0.67),
(74, 4, 8, 0),
(75, 4, 9, 0),
(76, 4, 10, 0.17),
(77, 4, 11, 0.03),
(78, 4, 12, 0),
(79, 4, 13, 0),
(80, 5, 1, 1),
(81, 5, 2, 1),
(83, 5, 4, 1),
(84, 5, 5, 1),
(85, 5, 6, 1),
(86, 5, 7, 1),
(87, 5, 8, 1),
(88, 5, 9, 1),
(89, 5, 10, 1),
(90, 5, 11, 1),
(91, 5, 12, 1),
(92, 5, 13, 1),
(94, 5, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `image` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `image`, `password`, `role_id`, `date_created`) VALUES
(6, 'leonardo martine', 'leonardo', 'face-1.jpg', '$2y$10$RvVYgo42792Sni6uvIKSieQ79XnIC72pIfdGZWYRigpRON.tGjcRC', 1, 1573977778),
(7, 'Member', 'Member', 'default.jpg', '$2y$10$gam52naGqUaHYPkQ49WDn.NtUmAUqZ5jdoMwKGAkw8DW8daCdLmoW', 2, 1575266061),
(10, 'Herdhani Eko', 'herdhani', 'default.jpg', '$2y$10$9ZOtFTPipOtsZDWatw4RvuqbTtWIHo/ZSotuGaAsfL4MDkz4u/8cm', 2, 1576725354),
(11, 'aldo', 'aldo123', 'default.jpg', '$2y$10$Yiw4RQ/RC1PWH4sBBXNGK..1k4Vc54YkSyIRe9xjkX8Dn4P9BbWj.', 2, 1636551493),
(12, 'aldo', 'aldo', 'default.jpg', '$2y$10$niN9XhNJs5jZ3mAUbZyPbuTcH39Y3ttWfHHq5jeo9kxxh9RYeEFkq', 2, 1637228488),
(13, 'aldo', 'aldo123', 'default.jpg', '$2y$10$jwAHEvBpqlvSO.vsUkDH/uS4LWNFiThchNdfxuYcN/kyKDmPrbZU2', 2, 1637583392),
(14, 'ryan', 'ryan13', 'default.jpg', '$2y$10$Z5wqN3QERlYDTr1J1DiyketKmlr/Vme6y/JA5YOJWfu62xKsKIFNK', 2, 1637589570);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_final`
--

CREATE TABLE `tmp_final` (
  `id` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL,
  `id_depression` int(11) NOT NULL,
  `probabilitas` float NOT NULL,
  `hasil_probabilitas` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_final`
--

INSERT INTO `tmp_final` (`id`, `id_gejala`, `id_depression`, `probabilitas`, `hasil_probabilitas`) VALUES
(1, 9, 1, 0.13, 0),
(2, 9, 2, 0.6, 0),
(3, 9, 3, 1, 0.8),
(4, 9, 4, 0, 0),
(5, 9, 5, 1, 0.2),
(6, 10, 1, 0, 0),
(7, 10, 2, 0.4, 0),
(8, 10, 3, 1, 0.8),
(9, 10, 4, 0.17, 0),
(10, 10, 5, 1, 0.2),
(11, 13, 1, 0, 0),
(12, 13, 2, 0, 0),
(13, 13, 3, 1, 0.8),
(14, 13, 4, 0, 0),
(15, 13, 5, 1, 0.2);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `id_user` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`id_user`, `id_gejala`) VALUES
(7, 9),
(7, 10),
(7, 13);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(8, 1, 3),
(9, 1, 4),
(10, 1, 5),
(11, 1, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_depression`
--
ALTER TABLE `tbl_depression`
  ADD PRIMARY KEY (`id_depression`);

--
-- Indexes for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `tbl_hasil_diagnosa`
--
ALTER TABLE `tbl_hasil_diagnosa`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `tbl_pengetahuan`
--
ALTER TABLE `tbl_pengetahuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_gejala` (`id_gejala`),
  ADD KEY `id_kerusakan` (`id_depression`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tmp_final`
--
ALTER TABLE `tmp_final`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_depression`
--
ALTER TABLE `tbl_depression`
  MODIFY `id_depression` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_hasil_diagnosa`
--
ALTER TABLE `tbl_hasil_diagnosa`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `tbl_pengetahuan`
--
ALTER TABLE `tbl_pengetahuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tmp_final`
--
ALTER TABLE `tmp_final`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_pengetahuan`
--
ALTER TABLE `tbl_pengetahuan`
  ADD CONSTRAINT `tbl_pengetahuan_ibfk_1` FOREIGN KEY (`id_depression`) REFERENCES `tbl_depression` (`id_depression`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
