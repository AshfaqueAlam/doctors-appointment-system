-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2018 at 10:44 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `projectmms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE IF NOT EXISTS `bloodgroup` (
  `bg_id` int(11) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(12) NOT NULL,
  PRIMARY KEY (`bg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
(1, 'O+'),
(2, 'O-'),
(3, 'AB+'),
(4, 'AB-'),
(5, 'A+'),
(6, 'A-'),
(7, 'B+'),
(8, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` int(22) NOT NULL AUTO_INCREMENT,
  `dname` varchar(22) NOT NULL,
  `userid` int(22) NOT NULL,
  `dcontact` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `fee` varchar(22) NOT NULL,
  `pname` varchar(22) NOT NULL,
  `pcontact` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `address` varchar(22) NOT NULL,
  `dates` date NOT NULL,
  `tyme` varchar(22) NOT NULL,
  `payment` varchar(22) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `dname`, `userid`, `dcontact`, `expertise`, `fee`, `pname`, `pcontact`, `email`, `address`, `dates`, `tyme`, `payment`) VALUES
(13, 'Md. Azharul Islam', 1007, '01521470368', 'Cardiologist', '800', 'azad', '01521470368', 'azad.ece13@gmail.com', 'Delhi', '2021-07-27', '11.00am', 'Bhim'),
(14, 'Dr. Majedul Islam', 1008, '01734761999', 'Medicine', '800', 'patient', 'contact', 'mamun@gmail.com', 'Mumbai', '2020-07-28', '03.00pm', 'Cash'),
(15, 'Md. Azharul Islam', 1009, '01521470368', 'Cardiologist', '800', 'mamun', '01521470368', 'mamun@gmail.com', 'Kolkata', '2021-07-26', '11.00am', 'PhonePe'),
(16, 'Dr. Badol Miah', 1004, '01949389983', 'Kidney', '700', 'mamun', '01521470368', 'mamun@gmail.com', 'Mumbai', '2020-07-20', '11.00am', 'Gpay'),
(17, 'Dr. Azharul Islam', 1002, '01764761919', 'Medicine', '500', 'azad', '01521470368', 'azad.ece13@gmail.com', 'Kolkata', '2019-07-26', '03.00pm', 'PhonePe'),
(18, 'Dr. Badol Miah', 1004, '01949389983', 'Kidney', '700', 'dezazad', 'dezazad', 'azad.hstu@gmai', 'Mumbai', '2018-07-07', '11.00am', 'Gpay');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `cat` varchar(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat`) VALUES
(1, 'Medicine'),
(2, 'Heart'),
(3, 'Orthopedic'),
(4, 'Kidney'),
(5, 'Cardiologist'),
(6, 'Plastic Surgeon'),
(7, 'General Physician'),
(8, 'Neurologist');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `email` varchar(15) NOT NULL,
  `comment` varchar(111) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `firstname`, `lastname`, `email`, `comment`) VALUES
(1, 'Azharul', 'Islam', 'azad.ece13@gmai', 'My comment is getting successful.'),
(2, 'Zahid', 'Hasan', 'hasan@gmail.com', 'good job');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `doc_id` int(22) NOT NULL AUTO_INCREMENT,
  `doctor_id` varchar(22) NOT NULL,
  `name` varchar(22) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(14) NOT NULL,
  `email` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `id` int(11) NOT NULL,
  `fee` varchar(111) NOT NULL,
  `userid` varchar(22) NOT NULL,
  `password` varchar(22) NOT NULL,
  `pic` varchar(111) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doctor_id`, `name`, `address`, `contact`, `email`, `expertise`, `id`, `fee`, `userid`, `password`, `pic`) VALUES
(1, '2', 'Dr A K Bardhan', 'Airport', '12345690', 'abc@gmail.com', 'Cardiologist', 2, '500', '1001', '123', 'doctor1.jpg'),
(2, '1', 'Dr. Sandip Rungta', 'Girish Park', '1234567890', 'abc13@gmail.com', 'General Physician', 1, '500', '1002', '123', 'doctor5.jpg'),
(3, '1', 'Dr. Samarjit Ghosh', 'Garia', '1234567890', 'abc@gmail.com', 'General Physician', 1, '600', '1003', '123', 'doctor1.jpg'),
(4, '4', 'Dr. Ashutosh Nayak', 'Saltlake', '1234567890', 'abcd@gmail.com', 'Laparoscopic Surgeon', 4, '700', '1004', '123', 'doctor5.jpg'),
(5, '5', 'Dr. S A Mallick', 'Garia', '1234567890', 'abcd@gmail.com', 'General Physician', 5, '700', '1005', '123', 'itsme.jpg'),
(6, '1', 'Dr. Nikita Parasrampur', 'SK Deb Road', '1234567890', 'abcd@gmail.com', 'Prosthodontist', 1, '800', '1006', '123', 'itzme.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE IF NOT EXISTS `donation` (
  `donation_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `unit` varchar(2) NOT NULL,
  `dates` date NOT NULL,
  `email` varchar(222) NOT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `name`, `address`, `unit`, `dates`, `email`) VALUES
(1, 'Mazhar', 'khulna', '1', '2017-11-07', 'abul@gmail.com'),
(2, 'Mokarrom', 'Saidpur', '2', '2017-11-11', 'mamun@gmail.com'),
(3, 'Azad', 'hstu', '2', '2017-01-21', 'mamun@gmail.com'),
(4, 'sumaiya', 'Saidpur', '1', '2017-11-15', 'azad.ece13@gmail.com'),
(5, 'Al-Mamun', 'hstu', '1', '2017-12-05', 'azad.ece13@gmail.com'),
(6, 'Azad', 'aaa', '2', '2017-12-29', 'azad.ece13@gmail.com'),
(7, 'Md. Azharul Islam', 'Delhi', '2', '2018-05-12', 'azad.ece13@gmail.com'),
(8, 'Md. Azharul Islam', 'Delhi', '1', '2018-05-10', 'azad.ece13@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(22) NOT NULL,
  `feedback` varchar(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `feedback`) VALUES
(1, 'azad.tee@gmail.com', 'easy way'),
(2, 'azad.ece13@gmail.com', 'nice getting you');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) NOT NULL,
  `age` varchar(22) NOT NULL,
  `contact` varchar(22) NOT NULL,
  `address` varchar(22) NOT NULL,
  `bgroup` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `age`, `contact`, `address`, `bgroup`, `email`, `password`) VALUES
(1, 'SUVA', '21', '1234567890', 'rajpur', 'O+', 'syuj@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `donar_id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `type` varchar(22) NOT NULL,
  `city` varchar(221) NOT NULL,
  `address` varchar(100) NOT NULL,
  `bgroup` varchar(100) NOT NULL,
  `dates` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL,
  PRIMARY KEY (`donar_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=123 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`donar_id`, `username`, `gender`, `age`, `contact`, `type`, `city`, `address`, `bgroup`, `dates`, `email`, `password`, `pic`) VALUES
(86, 'Syeda Musharrat', 'female', '21', '01712292009', 'Blood Donor', 'Mumbai', 'Ghashipara', 'O+', '0000-00-00', 'musharratnashrum.mn@gmail.com', 123, ''),
(87, 'Hussain Al Mortuza', 'male', '21', '01706742647', 'Blood Donor', 'Kolkata', 'Dhap', 'B+', '0000-00-00', 'mortuza1202089@gmail.com', 123, ''),
(88, 'Rumana Akter Ela', 'female', '21', '01734301217', 'Blood Donor', 'Mumbai', 'Ramnagar', 'O+', '0000-00-00', 'elahstu@gmail.com', 123, ''),
(89, 'Miftahul Jannat', 'female', '22', '01734472278', 'Blood Seeker', 'Panchagarh', 'Panchagarh', 'O+', '0000-00-00', 'mj.nure@gmail.com', 123, ''),
(90, 'Farjana Lina', 'female', '21', '01773438430', 'Blood Seeker', 'Mumbai', 'Basherhat', 'O+', '0000-00-00', 'lina73farjana@gmail.com', 123, ''),
(91, 'Dristy Das', 'female', '21', '01795660520', 'Blood Donor', 'Mumbai', 'Kalitola', 'B+', '0000-00-00', 'dristydas.hstu@gmail.com', 123, ''),
(92, 'Hamidul Islam', 'male', '21', '01751318963', 'Blood Seeker', 'Kurigram', 'Razarhat', 'O+', '0000-00-00', 'imdhamidul13@gmail.com', 123, ''),
(93, 'Sirazum Monira', 'female', '22', '01757950876', 'Blood Donor', 'Mumbai', 'Doshmail', 'O+', '0000-00-00', 'sirazum79@gmail.com', 123, ''),
(94, 'Atiya Sanjida Etu', 'female', '20', '01836022493', 'Blood Seeker', 'Mumbai', 'Nimtola', 'B+', '0000-00-00', 'atiyasanjida42@gmail.com', 123, ''),
(95, 'Sazzad Hossain', 'male', '21', '017738783899', 'Blood Donor', 'Mumbai', 'Birol', 'O+', '0000-00-00', 'sazzad1002@gmail.com', 123, ''),
(96, 'S.M. Janardan Roy', 'male', '21', '01738082848', 'Blood Donor', 'Thakurgaon', 'Setabgonj', 'A+', '0000-00-00', 'janardanroyhstu2013@gmail.com', 123, ''),
(97, 'Shafiqul Islam ', 'male', '21', '01722710298', 'Blood Donor', 'Panchagarh', 'Debigonj', 'O+', '0000-00-00', 'sujon.hstu.tee013@gmail.com', 123, ''),
(98, 'Uswatun Hasana ', 'female', '22', '01747125554', 'Blood Donor', 'Mumbai', 'Paharpur', 'A+', '0000-00-00', 'uswatun.h5554@gmail.com', 123, ''),
(99, 'Keshob Ray', 'male', '21', '01761023408', 'Blood Donor', 'Kolkata', 'Keranir hat', 'B+', '0000-00-00', 'keshobrayhstu91@gmail.com', 123, ''),
(100, 'Md. Elias Hossain', 'male', '21', '01751119073', 'Blood Donor', 'Mumbai', 'Kosba,Pulhat', 'B+', '0000-00-00', 'md.eliashossain13@gmail.com', 123, ''),
(101, 'Md. Azharul Islam', 'male', '21', '01764761919', 'Blood Donor', 'Nilphamari', 'saidpur', 'O+', '0000-00-00', 'azad.ece13@gmail.com', 123, ''),
(102, 'Maruf Hasan Piko', 'male', '21', '01737366366', 'Blood Donor', 'Kolkata', 'Dhap Kakolilane', 'O+', '0000-00-00', 'pikohasan73@gmail.com', 123, ''),
(103, 'Fatema Farin', 'female', '21', '01714442319', 'Blood Seeker', 'Jessore', 'West Barandipara', 'O+', '0000-00-00', 'fatema.farin13@gmail.com', 123, ''),
(104, 'Fahim Ahmed ', 'male', '21', '01765676686', 'Blood Seeker', 'Kushtia', 'Bheramara', 'O-', '0000-00-00', 'fahimahmed100@gmail.com', 123, ''),
(105, 'Mokarram Hossain', 'male', '22', '01723155254', 'Blood Donor', 'Nilphamari', 'Saidpur', 'A+', '0000-00-00', 'connect.with.me254@gmail.com', 123, ''),
(106, 'Arabi Mohammad ', 'male', '21', '01742827093', 'Blood Donor', 'Kurigram', 'Kurigram', 'B+', '0000-00-00', 'didar247@gmail.com', 123, ''),
(107, 'Ajmary Jahan Riny', 'female', '21', '01772974973', 'Blood Donor', 'Mumbai', 'Uttor Faridpur', 'O+', '0000-00-00', 'ajmaryjahan@gmail.com', 123, ''),
(108, 'Resmi Rashid', 'female', '21', '01762946949', 'Blood Donor', 'Lalmonirhat', 'Mission more', 'B+', '0000-00-00', 'resmi.tee13@gmail.com', 123, ''),
(109, 'Sazia Haider', 'female', '21', '01705808656', 'Blood Donor', 'Mumbai', 'Newtown 3', 'B+', '0000-00-00', 'saziahaidersizu@gmail.com', 123, ''),
(110, 'Shohel Rana', 'male', '21', '01761273269', 'Blood Donor', 'Thakurgaon', 'Pirgonj', 'A+', '0000-00-00', 'shohelhstu117@gmail.com', 123, ''),
(111, 'Al-Mamun', 'male', '22', '01746314882', 'Blood Donor', 'Nilphamari', 'Saidpur', 'AB+', '0000-00-00', 'mamunhstu13@gmail.com', 123, ''),
(112, 'Babul Hossain', 'male', '21', '01738421785', 'Blood Donor', 'Chapainawabganj', 'Shibgonj', 'B+', '0000-00-00', 'babul.hstu@gmail.com', 123, ''),
(113, 'Aysha Siddika Shova', 'female', '21', '01793965152', 'Blood Seeker', 'Mumbai', 'Munshipara', 'B+', '0000-00-00', 'siddika.shova5152@gmail.com', 123, ''),
(114, 'Kanak Borman', 'male', '21', '01758964988', 'Blood Donor', 'Bogra', 'Adamdighi', 'A+', '0000-00-00', 'kanakborman@gmail.com', 123, ''),
(115, 'Mukesh Chaudhary', 'male', '21', '01794953611', 'Blood Donor', 'Mumbai', 'HSTU', 'B+', '0000-00-00', 'mukesh101mak@gmail.com', 123, ''),
(116, 'username', 'female', '21', '3', 'Blood Seeker', 'Chapainawabganj', 'hstu', 'O-', '2017-11-29', 'azad.ece13@gmail.com', 123, ''),
(121, 'admin', '', '', '01764761919', '', 'Mumbai', '', 'O+', '0000-00-00', 'admin@gmail.com', 123, ''),
(122, 'admin', '', '', '', '', '', '', '', '0000-00-00', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE IF NOT EXISTS `requestes` (
  `reg_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `bgroup` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `reqdate` date NOT NULL,
  `detail` varchar(100) NOT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`reg_id`, `name`, `gender`, `age`, `mobile`, `bgroup`, `email`, `reqdate`, `detail`) VALUES
(3, 'admin', 'male', 33, '01764761919', '', 'g@gmail.com', '2022-01-19', 'save life'),
(4, 'admin', 'male', 33, '01764761919', '', 'g@gmail.com', '2022-01-19', 'save life'),
(5, 'sana', 'female', 21, '017777777', 'A-', 'g@gmail.com', '2017-12-01', 'save life'),
(6, 'sana', 'female', 21, '017777777', 'A-', 'g@gmail.com', '2017-12-01', 'save life'),
(7, 'sana', 'female', 21, '017777777', 'A-', 'g@gmail.com', '2017-12-01', 'save life'),
(8, 'sana', 'female', 21, '017777777', 'A-', 'g@gmail.com', '2017-12-01', 'save life'),
(9, 'mamun', 'male', 22, '01777777', 'AB+', 'mamun@gmail.com', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `type`) VALUES
('admin', 'admin', 'admin'),
('adnim', '13020944', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL primary key,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `type`) VALUES
('adnim', '13020944', 'admin'),
('admin', 'admin', 'admin');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
