-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2022 pada 07.48
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_attendance_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance_list`
--

CREATE TABLE `attendance_list` (
  `id` int(30) NOT NULL,
  `class_subject_id` int(30) NOT NULL,
  `doc` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `attendance_list`
--

INSERT INTO `attendance_list` (`id`, `class_subject_id`, `doc`, `date_created`) VALUES
(1, 1, '2020-10-28', '2020-10-28 20:06:37'),
(2, 5, '2021-12-23', '2021-12-23 21:20:47'),
(3, 5, '2021-12-24', '2021-12-24 13:45:04'),
(4, 5, '2021-12-01', '2021-12-24 14:12:01'),
(5, 5, '2021-12-20', '2021-12-24 15:19:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance_record`
--

CREATE TABLE `attendance_record` (
  `id` int(30) NOT NULL,
  `attendance_id` int(30) NOT NULL,
  `student_id` int(30) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '0=absent,1=present,2=late',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `attendance_record`
--

INSERT INTO `attendance_record` (`id`, `attendance_id`, `student_id`, `type`, `date_created`) VALUES
(1, 1, 1, 1, '2020-10-28 20:06:37'),
(2, 1, 2, 2, '2020-10-28 20:06:37'),
(3, 2, 5, 2, '2021-12-23 21:20:47'),
(4, 2, 6, 1, '2021-12-23 21:20:47'),
(5, 2, 7, 1, '2021-12-23 21:20:47'),
(6, 2, 8, 1, '2021-12-23 21:20:47'),
(7, 2, 9, 0, '2021-12-23 21:20:47'),
(8, 2, 10, 1, '2021-12-23 21:20:47'),
(9, 2, 11, 0, '2021-12-23 21:20:47'),
(10, 2, 12, 1, '2021-12-23 21:20:47'),
(11, 3, 5, 2, '2021-12-24 13:45:04'),
(12, 3, 6, 1, '2021-12-24 13:45:04'),
(13, 3, 7, 1, '2021-12-24 13:45:04'),
(14, 3, 8, 1, '2021-12-24 13:45:04'),
(15, 3, 9, 0, '2021-12-24 13:45:04'),
(16, 3, 10, 1, '2021-12-24 13:45:04'),
(17, 3, 11, 0, '2021-12-24 13:45:04'),
(18, 3, 12, 1, '2021-12-24 13:45:04'),
(19, 4, 5, 2, '2021-12-24 14:12:01'),
(20, 4, 6, 1, '2021-12-24 14:12:01'),
(21, 4, 7, 1, '2021-12-24 14:12:01'),
(22, 4, 8, 1, '2021-12-24 14:12:01'),
(23, 4, 9, 0, '2021-12-24 14:12:01'),
(24, 4, 10, 1, '2021-12-24 14:12:01'),
(25, 4, 11, 0, '2021-12-24 14:12:01'),
(26, 4, 12, 1, '2021-12-24 14:12:01'),
(27, 5, 5, 0, '2021-12-24 15:19:45'),
(28, 5, 6, 1, '2021-12-24 15:19:45'),
(29, 5, 7, 1, '2021-12-24 15:19:45'),
(30, 5, 8, 1, '2021-12-24 15:19:45'),
(31, 5, 9, 0, '2021-12-24 15:19:45'),
(32, 5, 10, 1, '2021-12-24 15:19:45'),
(33, 5, 11, 0, '2021-12-24 15:19:45'),
(34, 5, 12, 1, '2021-12-24 15:19:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class`
--

CREATE TABLE `class` (
  `id` int(30) NOT NULL,
  `course_id` int(30) NOT NULL,
  `level` varchar(50) NOT NULL,
  `section` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `class`
--

INSERT INTO `class` (`id`, `course_id`, `level`, `section`, `status`, `date_created`) VALUES
(1, 2, '1', 'B', 1, '2020-10-28 10:48:45'),
(2, 2, '1', 'A', 1, '2020-10-28 10:52:58'),
(3, 6, '10', 'ALJABAR', 1, '2021-12-21 22:05:24'),
(4, 6, '10', 'EKSPONENSIAL', 1, '2021-12-21 22:06:20'),
(5, 10, '1', 'Kelas 10', 1, '2021-12-22 21:52:06'),
(6, 10, '2', 'Kelas 10', 1, '2021-12-22 22:06:57'),
(7, 10, '3', 'Kelas 10', 1, '2021-12-22 22:07:08'),
(8, 10, '4', 'Kelas 10', 1, '2021-12-22 22:07:21'),
(9, 10, '5', 'Kelas 10', 1, '2021-12-22 22:07:29'),
(10, 10, '6', 'Kelas 10', 1, '2021-12-22 22:37:55'),
(11, 11, '1', 'Kelas 10', 1, '2021-12-22 22:50:30'),
(12, 11, '3', 'Kelas 10', 1, '2021-12-22 22:50:39'),
(13, 11, '2', 'Kelas 10', 1, '2021-12-22 22:50:48'),
(14, 10, '1', 'Kelas 11', 1, '2021-12-22 22:51:03'),
(15, 10, '2', 'Kelas 11', 1, '2021-12-22 22:51:14'),
(16, 10, '3', 'Kelas 11', 1, '2021-12-22 22:51:24'),
(17, 10, '4', 'Kelas 11', 1, '2021-12-22 22:51:33'),
(18, 11, '1', 'Kelas 11', 1, '2021-12-22 22:51:42'),
(19, 11, '2', 'Kelas 11', 1, '2021-12-22 22:56:43'),
(20, 11, '3', 'Kelas 11', 1, '2021-12-22 22:57:01'),
(21, 10, '1', 'Kelas 12', 1, '2021-12-22 22:57:12'),
(22, 10, '2', 'Kelas 12', 1, '2021-12-22 22:57:22'),
(23, 10, '3', 'Kelas 12', 1, '2021-12-22 22:57:29'),
(24, 10, '4', 'Kelas 12', 1, '2021-12-22 22:57:38'),
(25, 10, '5', 'Kelas 12', 1, '2021-12-22 22:57:49'),
(26, 10, '6', 'Kelas 12', 1, '2021-12-22 22:57:58'),
(27, 11, '1', 'Kelas 12', 1, '2021-12-22 22:58:12'),
(28, 11, '2', 'Kelas 12', 1, '2021-12-22 22:58:20'),
(29, 11, '3', 'Kelas 12', 1, '2021-12-22 22:58:27'),
(30, 11, '4', 'Kelas 12', 1, '2021-12-22 22:58:36'),
(31, 11, '4', 'Kelas 10', 1, '2021-12-22 22:59:04'),
(32, 10, '7', 'Kelas 10', 1, '2021-12-22 22:59:18'),
(33, 11, '4', 'Kelas 11', 1, '2021-12-22 22:59:31'),
(34, 10, '5', 'Kelas 11', 1, '2021-12-22 22:59:55'),
(35, 10, '6', 'Kelas 11', 1, '2021-12-22 23:00:03'),
(36, 10, '7', 'Kelas 11', 1, '2021-12-22 23:00:16'),
(37, 10, '7', 'Kelas 12', 1, '2021-12-22 23:00:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_subject`
--

CREATE TABLE `class_subject` (
  `id` int(30) NOT NULL,
  `class_id` int(30) NOT NULL,
  `subject_id` int(30) NOT NULL,
  `faculty_id` int(30) NOT NULL,
  `student_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `class_subject`
--

INSERT INTO `class_subject` (`id`, `class_id`, `subject_id`, `faculty_id`, `student_ids`, `date_created`) VALUES
(1, 2, 1, 1, '', '0000-00-00 00:00:00'),
(2, 1, 2, 1, '', '0000-00-00 00:00:00'),
(3, 5, 5, 1, '', '2021-12-22 22:13:19'),
(4, 6, 5, 1, '', '2021-12-22 22:15:03'),
(5, 33, 9, 3, '', '2021-12-23 21:17:04'),
(6, 20, 9, 3, '', '2021-12-23 21:17:21'),
(7, 19, 9, 3, '', '2021-12-23 21:19:15'),
(8, 18, 9, 3, '', '2021-12-23 21:19:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `courses`
--

INSERT INTO `courses` (`id`, `course`, `description`, `date_created`) VALUES
(10, 'MIPA', 'Mata pelajaran wajib terdiri dari matematika, fisika, kimia, dan biologi', '2021-12-22 21:50:24'),
(11, 'IPS', 'Mata pelajaran wajib terdiri dari sejarah peminatan, ekonomi, sosiologi, dan geografi', '2021-12-22 21:50:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `id_no` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `faculty`
--

INSERT INTO `faculty` (`id`, `id_no`, `name`, `email`, `contact`, `address`, `date_created`) VALUES
(1, '0000111101', 'Koro Sensei', 'korosensei@gmail.com', '081234567890', 'Assasination Classroom', '2020-10-28 11:32:18'),
(2, '0000111102', 'Aizawa Sensei', 'erasedhead@gmail.com', '080908070600', 'My Hero Academia', '2021-12-22 22:10:55'),
(3, '0000111103', 'Sawatari Masataka', 'waseda@gmail.com', '081213141510', 'Wasteful Days of High School Girls', '2021-12-22 23:17:27'),
(4, '', 'Rachmat', 'rachmat@bsi.ac.id', '0987654321', '', '2021-12-24 15:21:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `id_no` varchar(50) NOT NULL,
  `class_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `id_no`, `class_id`, `name`, `date_created`) VALUES
(1, '06232014', 2, 'Claire Blake', '2020-10-28 11:53:24'),
(2, '123456', 2, 'George Wilson', '2020-10-28 15:20:57'),
(3, '1111000001', 5, 'Kageyama Tobio', '2021-12-22 22:11:42'),
(4, '1111000002', 6, 'Tsukishima Kei', '2021-12-22 22:12:07'),
(5, '1111000003', 33, 'Tanaka Nozomu', '2021-12-22 23:03:16'),
(6, '1111000004', 33, 'Kikuchi Akane', '2021-12-22 23:04:14'),
(7, '1111000005', 33, 'Saginomiya Shiori', '2021-12-22 23:05:37'),
(8, '1111000006', 33, 'Momoi Saku', '2021-12-22 23:06:16'),
(9, '1111000007', 33, 'Yamamoto Minami', '2021-12-22 23:13:38'),
(10, '1111000008', 33, 'Ninomae Kanade', '2021-12-22 23:14:14'),
(11, '1111000009', 33, 'Kujō Hisui', '2021-12-22 23:16:01'),
(12, '1111000010', 33, 'Someya Rirī', '2021-12-22 23:16:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subjects`
--

CREATE TABLE `subjects` (
  `id` int(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `subjects`
--

INSERT INTO `subjects` (`id`, `subject`, `description`, `date_created`) VALUES
(5, 'KINEMATIKA', 'Materi Gerak Lurus, Parabola, dan Melingkar', '2021-12-21 21:54:14'),
(6, 'KALKULUS', 'Materi Limit, Turunan, dan Integral', '2021-12-21 21:56:01'),
(9, 'BARISAN DAN DERET', 'Materi Aritmatika dan Geometri', '2021-12-23 21:18:01'),
(10, 'FLUIDA', 'Materi fluida statis dan dinamis', '2021-12-24 15:15:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Welcome!', 'nurmasita94smpempat@gmail.com', '087776078190', '1603344720_1602738120_pngtree-purple-hd-business-banner-image_5493.jpg', '&lt;p style=&quot;text-align: justify; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff',
  `faculty_id` int(30) NOT NULL COMMENT 'for faculty user only'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `faculty_id`) VALUES
(1, 'Administrator', 'admin', '0192023a7bbd73250516f069df18b500', 1, 0),
(2, 'Koro Sensei', 'korosensei@gmail.com', 'korosensei', 3, 1),
(3, 'Aizawa Sensei', 'erasedhead@gmail.com', 'aizawasensei', 3, 2),
(4, 'Sawatari Masataka', 'waseda@gmail.com', 'wasedasensei', 3, 3),
(5, 'Rachmat', 'rachmat@bsi.ac.id', 'd41d8cd98f00b204e9800998ecf8427e', 3, 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `attendance_list`
--
ALTER TABLE `attendance_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `attendance_record`
--
ALTER TABLE `attendance_record`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `class_subject`
--
ALTER TABLE `class_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `attendance_list`
--
ALTER TABLE `attendance_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `attendance_record`
--
ALTER TABLE `attendance_record`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `class`
--
ALTER TABLE `class`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
