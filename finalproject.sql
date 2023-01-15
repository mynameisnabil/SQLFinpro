-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2023 at 06:42 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javatripv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `idRentCar` int(11) NOT NULL,
  `typeCar` varchar(255) DEFAULT NULL,
  `namaMobil` varchar(255) DEFAULT NULL,
  `platNoMobil` varchar(255) DEFAULT NULL,
  `priceMobil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`idRentCar`, `typeCar`, `namaMobil`, `platNoMobil`, `priceMobil`) VALUES
(211, 'Sedan', 'Toyota Altis', 'B 3245 FWG', 200000),
(212, 'JEEP', 'Toyota Land Cruiser', 'B 3465 GWS', 100000),
(213, 'SUV', 'Toyota Fortuner', 'B 5567 SZW', 200000),
(214, 'Sedan', 'Mazda 3', 'B 3245 FHG', 200000),
(215, 'JEEP', 'Mazda CX 5', 'B 9978 JHG', 200000),
(216, 'SUV', 'Mazda CX 9', 'B 7867 JYU', 300000),
(217, 'Sedan', 'Honda Civic', 'B 7656 FRT', 150000),
(218, 'JEEP', 'Honda CRV', 'B 6745 YZW', 200000),
(219, 'JEEP', 'Honda Hrv', 'B 8765 HGU', 300000),
(2110, 'Sedan', 'Honda City', 'B 7645 HJU', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `namaCustomer` varchar(255) NOT NULL,
  `genderCustomer` varchar(255) NOT NULL,
  `noTelpCustomer` varchar(255) DEFAULT NULL,
  `emailCustomer` varchar(255) DEFAULT NULL,
  `alamatCustomer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `namaCustomer`, `genderCustomer`, `noTelpCustomer`, `emailCustomer`, `alamatCustomer`) VALUES
(251, 'Billy Mahendra', 'Laki-Laki', '08315678530', 'billy.mahendra@gmail.com', 'Surabaya'),
(252, 'Zulaikha Handayani', 'Perempuan', '08315232530', 'zulaikha.handayani@gmail.com', 'Malang'),
(253, 'Gamblang Dabukke', 'Laki-Laki', '08315232442', 'gamblang.dabuk@gmail.com', 'Jakarta'),
(254, 'Balapati Mustofa', 'Laki-Laki', '08315256442', 'pati.mustofa@gmail.com', 'Jakarta'),
(255, 'Ratna Winarsih', 'Perempuan', '08315232310', 'ratna.win@gmail.com', 'Bandung'),
(256, 'Syahrini Sudiati ', 'Perempuan', '08315234432', 'syahrini.sud@gmail.com', 'Semarang'),
(257, 'Respati Maulana', 'Laki-Laki', '08315253321', 'pati.maulana@gmail.com', 'Jakarta'),
(258, 'Yahya Gunarto', 'Laki-Laki', '08315259076', 'yahya.gunarto@gmail.com', 'Surabaya'),
(259, 'Putu Wibowo', 'Laki-Laki', '08315251121', 'putu.wib@gmail.com', 'Malang'),
(2510, 'Makuta Prabowo', 'Laki-Laki', '08313378121', 'makut.prab@gmail.com', 'Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `idDestination` int(11) NOT NULL,
  `nameDestination` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`idDestination`, `nameDestination`, `price`, `location`) VALUES
(221, 'Gunung Bromo', 50000, 'Malang, Jawa Timur'),
(222, 'Kawah ijen', 35000, 'Banyuwangi, Jawa Timur'),
(223, 'Coban Rondo', 35000, 'Batu, Jawa Timur'),
(224, 'Floating Market', 20000, 'Bandung, Jawa Barat'),
(225, 'Cangar', 30000, 'Batu, Jawa Timur'),
(226, 'Hutan Pinus Mangunan', 20000, 'DIY'),
(227, 'Gunung Merapi', 30000, 'DIY'),
(228, 'Taman Safari Indonesia Cisarua', 20000, 'Bogor, Jawa Barat'),
(229, 'Kawah Putih', 35000, 'Bandung, Jawa Barat'),
(2210, 'Tangkuban Parahu', 30000, 'Bandung, Jawa Barat');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `idHotel` int(11) NOT NULL,
  `namaHotel` varchar(255) DEFAULT NULL,
  `alamatHotel` varchar(255) DEFAULT NULL,
  `emailHotel` varchar(255) DEFAULT NULL,
  `noTelpHotel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`idHotel`, `namaHotel`, `alamatHotel`, `emailHotel`, `noTelpHotel`) VALUES
(181, 'Swiis Bell', 'Malang', 'swissbell@gmail.com', '0891234567'),
(182, 'Aston', 'Banyuwangi', 'aston@gmail.com', '0891283888'),
(183, 'Kontena', 'Batu', 'kontena@gmail.com', '0891238890'),
(184, 'Amaris Hotel', 'Bandung', 'amaris.bandung@gmail.com', '089128876'),
(185, 'Royal Orchids', 'Batu', 'royalorchids@gmail.com', '0891764567'),
(186, 'Alana', 'Jogja', 'alana@gmail.com', '0891769976'),
(187, 'POP!', 'Jogja', 'pop.jogja@gmail.com', '0891766675'),
(188, 'Whiz Prime', 'Bogor', 'whizprime.bogor@gmail.com', '0891239877'),
(189, 'Harris Hotel', 'Bandung', 'harris.bandung@gmail.com', '0891236543'),
(1810, 'Trans Hotel', 'Bandung', 'transhote@gmail.com', '0891244597');

-- --------------------------------------------------------

--
-- Table structure for table `jadwaldestination`
--

CREATE TABLE `jadwaldestination` (
  `idjadwaldes` int(11) NOT NULL,
  `idDestination_tbjd` int(11) NOT NULL,
  `jadwalDestinasi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwaldestination`
--

INSERT INTO `jadwaldestination` (`idjadwaldes`, `idDestination_tbjd`, `jadwalDestinasi`) VALUES
(451, 221, '2022-11-28'),
(452, 222, '2022-11-22'),
(453, 223, '2022-11-21'),
(454, 224, '2023-01-01'),
(455, 225, '2023-01-03'),
(456, 226, '2023-01-05'),
(457, 227, '2023-01-07'),
(458, 228, '2023-01-11'),
(459, 229, '2023-01-15'),
(4510, 2210, '2023-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `jadwalhotel`
--

CREATE TABLE `jadwalhotel` (
  `idjadwalhotel` int(11) NOT NULL,
  `idRoom_tbjh` int(11) NOT NULL,
  `checkinhotel` date DEFAULT NULL,
  `checkouthotel` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwalhotel`
--

INSERT INTO `jadwalhotel` (`idjadwalhotel`, `idRoom_tbjh`, `checkinhotel`, `checkouthotel`) VALUES
(441, 191, '2022-11-28', '2022-12-01'),
(442, 192, '2022-11-22', '2022-11-25'),
(443, 193, '2022-11-21', '2022-11-27'),
(444, 194, '2023-01-01', '2023-01-03'),
(445, 195, '2023-01-03', '2023-01-06'),
(446, 196, '2023-01-05', '2023-01-12'),
(447, 197, '2023-01-07', '2023-01-14'),
(448, 198, '2023-01-11', '2023-01-14'),
(449, 199, '2023-01-15', '2023-01-18'),
(4410, 1910, '2023-01-20', '2023-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `idRoom` int(11) NOT NULL,
  `idHotel_tbroom` int(11) NOT NULL,
  `typeRoom` varchar(255) DEFAULT NULL,
  `priceRoom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`idRoom`, `idHotel_tbroom`, `typeRoom`, `priceRoom`) VALUES
(191, 181, 'Deluxe Room', 500000),
(192, 182, 'Superior Room', 1300000),
(193, 183, 'Twin Bed Room', 520000),
(194, 184, 'Twin Bed Room', 435000),
(195, 185, 'Single Bed Room', 409500),
(196, 186, 'Twin Bed Room', 500000),
(197, 187, 'Single Bed Room', 35000),
(198, 188, 'Twin Bed Room', 560000),
(199, 189, 'Superior Room', 1750000),
(1910, 1810, 'Twin Bed Room', 560000);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `idPayment` int(11) NOT NULL,
  `idStaff_tbpay` int(11) NOT NULL,
  `id_customer_tbpay` int(11) NOT NULL,
  `idTransaksi_tbpay` int(11) NOT NULL,
  `paymentType` varchar(30) DEFAULT NULL,
  `statusPayment` varchar(30) DEFAULT NULL,
  `paymentDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`idPayment`, `idStaff_tbpay`, `id_customer_tbpay`, `idTransaksi_tbpay`, `paymentType`, `statusPayment`, `paymentDate`) VALUES
(231, 241, 251, 501, 'cash', 'paid', '2022-11-27'),
(232, 241, 252, 502, 'cashless', 'paid', '2022-11-21'),
(233, 242, 253, 503, 'cash', 'unpaid', '0000-00-00'),
(234, 246, 254, 504, 'cashless', 'unpaid', '0000-00-00'),
(235, 247, 255, 505, 'cash', 'paid', '2022-12-23'),
(236, 246, 256, 506, 'cash', 'paid', '2023-01-04'),
(237, 247, 257, 507, 'cashless', 'paid', '2023-01-06'),
(238, 241, 258, 508, 'cashless', 'paid', '2022-01-10'),
(239, 242, 259, 509, 'cash', 'paid', '2023-01-14'),
(2310, 247, 2510, 5010, 'cash', 'paid', '2023-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `idShift` int(11) NOT NULL,
  `waktuShift` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`idShift`, `waktuShift`) VALUES
(1, 'PAGI'),
(2, 'SORE'),
(3, 'MALAM');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `idStaff` int(11) NOT NULL,
  `idShift_staff` int(11) NOT NULL,
  `nameStaff` varchar(255) DEFAULT NULL,
  `staffPosition` varchar(255) DEFAULT NULL,
  `staffSalary` int(20) NOT NULL,
  `staffPhone` varchar(255) DEFAULT NULL,
  `staffGender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`idStaff`, `idShift_staff`, `nameStaff`, `staffPosition`, `staffSalary`, `staffPhone`, `staffGender`) VALUES
(241, 1, 'Juki', 'Staff Oprational', 4000000, '082121923919', 'Laki-Laki'),
(242, 1, 'Zainal', 'Staff Oprational', 4000000, '081293941931', 'Laki-Laki'),
(243, 2, 'Joko', 'Staff Oprational', 4000000, '081232349952', 'Laki-Laki'),
(244, 1, 'Ayu', 'Customer Service', 5000000, '08123134539', 'Perempuan'),
(245, 3, 'Citra', 'Customer Service', 5000000, '081239123', 'Perempuan'),
(246, 2, 'Agung', 'Staff Oprational', 4000000, '08832324123', 'Laki-Laki'),
(247, 1, 'Jono', 'Staff Oprational', 4000000, '0812873434', 'Laki-Laki'),
(248, 2, 'Jeje', 'Finance', 4500000, '0817345869', 'Perempuan'),
(249, 1, 'Violyn', 'Customer Service', 5000000, '082345761232', 'Perempuan'),
(2410, 1, 'Salma', 'Customer Service', 5000000, '0812765563', 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `idTransaksi` int(11) NOT NULL,
  `idjadwaldes_tbnote` int(11) NOT NULL,
  `idRentCar_tbnote` int(11) NOT NULL,
  `idjadwalhotel_tbnote` int(11) NOT NULL,
  `startDateTrip` date DEFAULT NULL,
  `EndDateTrip` date DEFAULT NULL,
  `PaketyangDipilih` varchar(255) NOT NULL,
  `JumlahOrang` int(11) NOT NULL,
  `JumlahSewaMobil` int(11) NOT NULL,
  `JumlahKamar` int(11) NOT NULL,
  `tourGuide` varchar(255) DEFAULT NULL,
  `totalPrice` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`idTransaksi`, `idjadwaldes_tbnote`, `idRentCar_tbnote`, `idjadwalhotel_tbnote`, `startDateTrip`, `EndDateTrip`, `PaketyangDipilih`, `JumlahOrang`, `JumlahSewaMobil`, `JumlahKamar`, `tourGuide`, `totalPrice`) VALUES
(501, 451, 211, 441, '2022-11-28', '2022-12-01', '3 Hari', 1, 1, 1, 'YES', 1750000),
(502, 452, 212, 442, '2022-11-22', '2022-11-25', '3 Hari', 1, 1, 1, 'NO', 4035000),
(503, 453, 213, 443, '2022-11-21', '2022-11-27', '7 Hari', 1, 1, 1, 'YES', 3875000),
(504, 454, 214, 444, '2023-01-01', '2023-01-03', '3 Hari', 1, 1, 1, 'YES', 1525000),
(505, 455, 215, 445, '2023-01-03', '2023-01-06', '3 Hari', 1, 1, 1, 'NO', 1458500),
(506, 456, 216, 446, '2023-01-05', '2023-01-12', '7 Hari', 1, 1, 1, 'NO', 3820000),
(507, 457, 217, 447, '2023-01-07', '2023-01-14', '7 Hari', 1, 1, 1, 'YES', 2630000),
(508, 458, 218, 448, '2023-01-11', '2023-01-14', '3 Hari', 1, 1, 1, 'NO', 1900000),
(509, 459, 219, 449, '2023-01-15', '2023-01-18', '3 Hari', 1, 1, 1, 'YES', 5585000),
(5010, 4510, 2110, 4410, '2023-01-20', '2023-01-23', '3 Hari', 1, 1, 1, 'YES', 1910000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`idRentCar`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`idDestination`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`idHotel`);

--
-- Indexes for table `jadwaldestination`
--
ALTER TABLE `jadwaldestination`
  ADD PRIMARY KEY (`idjadwaldes`),
  ADD KEY `destination` (`idDestination_tbjd`);

--
-- Indexes for table `jadwalhotel`
--
ALTER TABLE `jadwalhotel`
  ADD PRIMARY KEY (`idjadwalhotel`),
  ADD KEY `room` (`idRoom_tbjh`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`idRoom`),
  ADD KEY `hotel` (`idHotel_tbroom`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`idPayment`),
  ADD KEY `staff` (`idStaff_tbpay`),
  ADD KEY `customer` (`id_customer_tbpay`),
  ADD KEY `transaksi` (`idTransaksi_tbpay`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`idShift`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`idStaff`),
  ADD KEY `shift` (`idShift_staff`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idTransaksi`),
  ADD KEY `car` (`idRentCar_tbnote`),
  ADD KEY `jadwalhotel` (`idjadwalhotel_tbnote`),
  ADD KEY `destinationjadwal` (`idjadwaldes_tbnote`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwaldestination`
--
ALTER TABLE `jadwaldestination`
  ADD CONSTRAINT `destination` FOREIGN KEY (`idDestination_tbjd`) REFERENCES `destination` (`idDestination`);

--
-- Constraints for table `jadwalhotel`
--
ALTER TABLE `jadwalhotel`
  ADD CONSTRAINT `room` FOREIGN KEY (`idRoom_tbjh`) REFERENCES `kamar` (`idRoom`);

--
-- Constraints for table `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `hotel` FOREIGN KEY (`idHotel_tbroom`) REFERENCES `hotel` (`idHotel`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `customer` FOREIGN KEY (`id_customer_tbpay`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `staff` FOREIGN KEY (`idStaff_tbpay`) REFERENCES `staff` (`idStaff`),
  ADD CONSTRAINT `transaksi` FOREIGN KEY (`idTransaksi_tbpay`) REFERENCES `transaksi` (`idTransaksi`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `shift` FOREIGN KEY (`idShift_staff`) REFERENCES `shift` (`idShift`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `car` FOREIGN KEY (`idRentCar_tbnote`) REFERENCES `car` (`idRentCar`),
  ADD CONSTRAINT `destinationjadwal` FOREIGN KEY (`idjadwaldes_tbnote`) REFERENCES `jadwaldestination` (`idjadwaldes`),
  ADD CONSTRAINT `jadwalhotel` FOREIGN KEY (`idjadwalhotel_tbnote`) REFERENCES `jadwalhotel` (`idjadwalhotel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
