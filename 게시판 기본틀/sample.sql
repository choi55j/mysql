-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 23-11-03 01:52
-- 서버 버전: 10.4.27-MariaDB
-- PHP 버전: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `sample`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `freeboard`
--

CREATE TABLE `freeboard` (
  `num` int(11) NOT NULL,
  `name` char(20) NOT NULL,
  `pass` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `freeboard`
--

INSERT INTO `freeboard` (`num`, `name`, `pass`, `subject`, `content`, `regist_day`) VALUES
(1, '1', '1', '1', '1', '2023-09-11 (04:40)'),
(2, '1', '1', '1', '1', '2023-09-11 (04:40)'),
(3, '2', '2', '2', '2', '2023-09-11 (04:42)'),
(4, '3', '3', '3', '3', '2023-09-11 (04:42)');

-- --------------------------------------------------------

--
-- 테이블 구조 `memberboard`
--

CREATE TABLE `memberboard` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `memberboard`
--

INSERT INTO `memberboard` (`num`, `id`, `name`, `subject`, `content`, `regist_day`, `file_name`, `file_type`, `file_copied`) VALUES
(12, 'a', 'a', 'a', 'a', '2023-11-03 (01:52)', '123.jpg', 'image/jpeg', '2023_11_03_01_52_17.jpg');

-- --------------------------------------------------------

--
-- 테이블 구조 `members`
--

CREATE TABLE `members` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `pass` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `email` char(80) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `members`
--

INSERT INTO `members` (`num`, `id`, `pass`, `name`, `email`, `regist_day`, `level`, `point`) VALUES
(21, 'c', 'c', 'c', 'c', '2023-10-20 (02:26)', 9, 0),
(22, '', '', '', '', '2023-11-02 (08:06)', 9, 0),
(23, '', '', '', '', '2023-11-02 (08:06)', 9, 0),
(24, 'a', 'a', 'a', 'a', '2023-11-02 (08:08)', 9, 0),
(25, 'a', 'a', 'a', 'a', '2023-11-03 (01:28)', 9, 0);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `freeboard`
--
ALTER TABLE `freeboard`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `memberboard`
--
ALTER TABLE `memberboard`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `freeboard`
--
ALTER TABLE `freeboard`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 테이블의 AUTO_INCREMENT `memberboard`
--
ALTER TABLE `memberboard`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 테이블의 AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
