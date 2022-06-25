-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 08, 2022 at 08:29 AM
-- Server version: 10.8.3-MariaDB-1:10.8.3+maria~jammy
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `izbiraemi`
--

-- --------------------------------------------------------

--
-- Table structure for table `izbiraemi`
--

CREATE TABLE `izbiraemi` (
  `id` int(11) NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `izbiraemi`
--

INSERT INTO `izbiraemi` (`id`, `name`, `teacher`) VALUES
(1, 'Проектно-базирано обучение по математика, информатика и информационни технологии', 'проф. д-р Коста Гъров, доц. д-р Ивайло Старибратов, докт. Деяна Пейкова'),
(2, 'Нестандартни математически задачи', 'проф. д-р Пенка Рангелова'),
(3, 'Математически основи на автоматизираното управление', 'доц. д-р Георги Костадинов'),
(4, 'Въведение в математика на парите', 'проф. д-р Боян Златанов'),
(5, 'Математически основи на компютърната графика', 'доц. д-р Добринка Грибачева, гл. ас. д-р Ива Докузова'),
(6, 'Итерационни методи', 'проф. д.м.н. Петко Пройнов'),
(7, 'Дискретни логистични модели', 'проф. д.м.н. Манчо Манев, гл. ас. д-р Асен Христов'),
(8, 'Аналитична макроикономика', 'проф. д.м.н. Манчо Манев, гл. ас. д-р Асен Христов'),
(9, 'Въведение във функционалния анализ', 'доц. д-р Атанаска Георгиева'),
(10, 'Въведение в теоретичната информатика', 'доц. д-р Христо Кискинов'),
(11, 'Разработка на игри в C++ с Unreal Engine 4', 'проф. д-р Ангел Голев, Колорадо Старк (Enigma Software)'),
(12, 'Изграждане на динамични уеб приложения и SEO Оптимизация', 'проф. д-р Тодорка Терзиева, докторант Николай Чочев'),
(13, 'Проектиране и управление на локални компютърни мрежи', 'доц. д-р Генчо Стоицов'),
(14, 'Информационна и комуникационна сигурност', 'доц.  д-р Генчо Стоицов, маг. Стефан Тафков'),
(15, 'Въведение в Artificial Neural Network и Deep Learning', 'доц. д-р Владимир Вълканов, маг. Минчо Симов'),
(16, 'Бизнес приложения за Интернет с HTML, CSS и JavaScript', 'проф. д-р Минчо Сандалски'),
(17, 'Мобилни приложения - Android за начинаещи', 'проф. д-р Станимир Стоянов, ас. д-р Йордан Тодоров'),
(18, 'Обща теория на правото в информационното общество', 'доц. д-р Иван Шотлеков, хон. ас. д-р Владимир Вълев'),
(19, 'Параметричен и генеративен дизайн; Софтуерни пакети за 3D моделиране на кибер-физични системи', 'доц. д-р Иван Шотлеков, хон. ас. инж. Петко Стоев'),
(20, 'Програмиране в среда Arduino', 'доц. д-р Светослав Енков'),
(21, 'Информационна сигурност', 'доц. д-р Николай Касъклиев'),
(22, 'Интелигентен анализ и визуализация на данни с JasperSoft', 'доц. д-р Силвия Гафтанджиева и докт. Милен Близнаков'),
(23, 'Визуално програмиране с Processing', 'проф. д-р Антон Илиев, ас. Виктор Матански'),
(24, 'Бизнес право', 'проф. д-р Асен Рахнев, хон. ас. Илиан Иванов'),
(25, 'Проектиране на компютърни системи и хардуер', 'проф. д-р Асен Рахнев, хон. ас. Радослав Дервишев'),
(26, 'Преговори в ИТ индустрията', 'доц. д-р Анна Малинова, хон. ас. Силвия Павлова'),
(27, 'Въведение в машинното самообучение', 'доц. д-р Николай Павлов, ас. Симеон Монов'),
(28, 'Паралелно програмиране със C# и Task Parallel Library', 'доц. д-р Николай Павлов'),
(29, 'Основи на моделирането', 'проф. д.м.н. Снежана Христова'),
(30, 'Методически аспекти на решаването на избрани задачи от училищната математика', 'проф. дмн Нако Начев'),
(31, 'Методични интерпретации в елементарната  математика, банковото дело и космологията', 'проф. дмн Тодор Желязков Моллов'),
(32, 'Апроксимационни и моделни аспекти от областта на „Debugging and test theory“', 'проф. д-р Николай Кюркчиев, проф. д-р Антон Илиев, доц. д-р Николай Павлов');

-- --------------------------------------------------------

--
-- Table structure for table `jelaniq`
--

CREATE TABLE `jelaniq` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `izbiraema_id` int(11) NOT NULL,
  `jelanie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jelaniq`
--

INSERT INTO `jelaniq` (`id`, `user_id`, `izbiraema_id`, `jelanie`) VALUES
(5, 1, 4, 17),
(7, 1, 16, 20),
(2, 6, 8, 1),
(3, 6, 30, 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `facultyNumber` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `facultyNumber`, `password`) VALUES
(1, '2001681040', 'asd'),
(3, '2001681041', 'asd'),
(5, '2001681042', 'asd'),
(6, '2001681043', 'asdasd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `izbiraemi`
--
ALTER TABLE `izbiraemi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jelaniq`
--
ALTER TABLE `jelaniq`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jelaniq_unique` (`user_id`,`jelanie`,`izbiraema_id`),
  ADD KEY `izbiraema_id` (`izbiraema_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `facultyNumber` (`facultyNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `izbiraemi`
--
ALTER TABLE `izbiraemi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `jelaniq`
--
ALTER TABLE `jelaniq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jelaniq`
--
ALTER TABLE `jelaniq`
  ADD CONSTRAINT `jelaniq_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `jelaniq_ibfk_2` FOREIGN KEY (`izbiraema_id`) REFERENCES `izbiraemi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
