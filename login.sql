-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2023 at 08:09 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `publishe_selfserve`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `number` varchar(12) NOT NULL,
  `client_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `date`, `name`, `email`, `password`, `number`, `client_name`) VALUES
(150, '2023-03-23', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$nD0cwnwbZ6YKClpCsyMyJeVjPiigatE04P5.wD15CvmQYiM38AFPu', '9711415617', 'hcurve'),
(153, '2023-03-23', 'saleem', 'mohamed.s@hockeycurve.com', '$2y$10$q7D8kQOdYUIvjcpV5VfQTe2PZFojvJHmBtuqcZcveFPxGe5nejDzC', '9988755442', 'hcurve'),
(154, '2023-03-23', 'Prathamesh Bhagwat', 'prathamesh.bhagwat@hockeycurve.com', '$2y$10$kOcPg4j7VgcNPKZgVc6IseQhCz9KowvYDRCeIKeIQ80fy0yYI7scO', '9594892662', 'hcurve'),
(156, '2023-03-23', 'admin', 'jasmeet.singh@hockeycurve.com', '$2y$10$dLiktxIJ90/rxXSY5HHjI.dt5HW5jp8rmrlXySIs4O2GN.FePKg0q', '9823450871', 'HC'),
(158, '2023-03-23', 'Adithi Prakash Rao', 'adithi@hockeycurve.com', '$2y$10$Rmi4nmvb72CswWNcRCzxLOE2dvBTr9SNfGeCEU28chvlinLzVa8T.', '9930498249', 'Adithi'),
(160, '2023-03-23', 'Shivam', 'shivam.singh@hockeycurve.com', '$2y$10$MZ8oBWWnI8PFUB/9iSGFvexyJk5EF9YnYewz.HK06FDW9ABZK6yt.', '9967307992', 'Sports_test'),
(161, '2023-03-23', 'Shivam', 'shivam.singh@hockeycurve.com', '$2y$10$aUBvEgWkHTNf2PdfK0rJeeA7XxIwHEOKHBnf772SiUI2dxo7zqh4S', '9967307992', 'demo12'),
(162, '2023-03-23', 'Mohamed Saleem', 'mohamed.s@hockeycurve.com', '$2y$10$q7D8kQOdYUIvjcpV5VfQTe2PZFojvJHmBtuqcZcveFPxGe5nejDzC', '9873201222', 'hcurve'),
(163, '2023-03-23', 'Mohamed Saleem', 'mohamed.s@hockeycurve.com', '$2y$10$q7D8kQOdYUIvjcpV5VfQTe2PZFojvJHmBtuqcZcveFPxGe5nejDzC', '9834812199', 'hcurve'),
(164, '2023-03-23', 'Mohamed Saleem', 'mohamed.s@hockeycurve.com', '$2y$10$q7D8kQOdYUIvjcpV5VfQTe2PZFojvJHmBtuqcZcveFPxGe5nejDzC', '9851667432', 'hcurve'),
(165, '2023-03-23', 'Mohamed Saleem', 'mohamed.s@hockeycurve.com', '$2y$10$q7D8kQOdYUIvjcpV5VfQTe2PZFojvJHmBtuqcZcveFPxGe5nejDzC', '9851667234', 'hcurve'),
(166, '2023-03-23', 'Mohamed Saleem', 'mohamed.s@hockeycurve.com', '$2y$10$q7D8kQOdYUIvjcpV5VfQTe2PZFojvJHmBtuqcZcveFPxGe5nejDzC', '9851667342', 'hcurve'),
(167, '2023-03-23', 'Mohamed Salemm', 'mohamed.s@hockeycurve.com', '$2y$10$q7D8kQOdYUIvjcpV5VfQTe2PZFojvJHmBtuqcZcveFPxGe5nejDzC', '9816670987', 'hcurve'),
(173, '2023-03-23', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$Vr4X5L106v4d3o2qPnKM2OvjvDPHbzEy1.HA9CY1S9q.exzvq8psG', '9711415617', 'amazonp'),
(174, '2023-03-23', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$wprYnVSaSwnvv9NMnYDreeHyuD7t87H8dYrEiHLQtFSMgjGp1xRp.', '9711415617', 'amazonp'),
(177, '2023-03-23', 'adithi', 'adithi@hockeycurve.com', '$2y$10$kvAXmAbgkDI3pAHQvyyI5OxVw1wqrAkrA/ZynIYqntiphW2QL0m92', '8408088888', 'admin'),
(179, '2023-03-23', 'dinesh', 'dinesh@hockeycurve.com', '$2y$10$9cibBjszjsiuTNBdTfmOiO/0zvSd5JJlQrrdRKfdEUTBJV3ZKoqoy', '9988220011', 'hcurve'),
(180, '2023-03-23', 'Prathamesh Bhagwat', 'prathamesh.bhagwat@hockeycurve.com', '$2y$10$mDUzT.A4CCLnOTU4j.OyMePewNko2ehuAqSZeq8Yllmjcpgm9Tkhm', '9594892662', 'Prathamesh'),
(197, '2023-03-23', 'sapna', 'sapna.g@hockeycurve.com', '$2y$10$0/0ybyaxUO66Jf80f1.2G.FYDNJ.hR19PeJndxXvrDyglrTqd2NwK', '1234567', 'saps'),
(199, '2023-03-23', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$gthxSi9DZN9gHJmDGU7tE.mTY.XIOur2P8r/1oY1FXRhshNdBmvTa', '8975179027', 'aprimeauto'),
(201, '2023-03-23', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$v1Q.cZrsboKTUaOvVi0p6.XtUAWgYlHbm4mD3W.3v6ewP/2zTKB.W', '7507601741', 'aprimeauto'),
(203, '2023-03-23', 'mahesh', 'mahesh.b@hockeycurve.com', '$2y$10$4PVBxQUx3tGzRl92SmtoE.BYcja4CynAJtlalJfT1avsKNO5GtDYC', '8668392182', 'hcurve'),
(204, '2023-03-23', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$YsqdsdROnzQOJafa6zOyIeJ.5p7PUI1TvKdfwVnPKkf0MzmyqQRYO', '9711415617', 'amazonprime'),
(205, '2023-03-23', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$O4V40vVWpMReL2g86wv5keeTCkgXTQAhyZrtT1G/NnER7Hb64PyLu', '8975179027', 'fliptest'),
(206, '2023-03-23', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$u6b/yHqO5ChQ1v9Yg8G2Iu9qyyvrCNH0o7O0eiRF8q6/Z0U.91W8i', '7507601741', 'testcarousal'),
(207, '2023-03-23', 'Hitesh', 'hitesh.shinde@hockeycurve.com', '$2y$10$0na6S4eU8XNuIUqa5IfhI.XUHQY.biOtU7fhnmC1Cuo6dut4nmijW', '9867398440', 'htest'),
(208, '2023-03-23', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$j6OmS3yH4awF0k8NvuKjdeoxHSqj7ngdcWgDw/KaejAdbwmT44qIy', '7507601741', 'testtaskfour'),
(209, '2023-03-23', 'bavika', 'bavika@hockeycurve.com', '$2y$10$vJ0jZWbOqA8oXEpq.UYch.WoXMq15BFAz0pOf1avL9j.d0WNOWKgG', '9167359096', 'Amazon'),
(210, '2023-03-23', 'Hariharan V', 'hariharanv@hockeycurve.com', '$2y$10$Id3gXaavX.CSocON0E4lMuU4kQe3.v4EIAcb8qJglBZSh9Pvmn.2u', '8870901274', 'APV Test'),
(211, '2023-03-23', 'Tejshwini', 'tejshwini@hockeycurve.com', '$2y$10$aQclLofmNOJV1czhTzRw/OzJOjkAuPLwgWin1UThv8vGZWjmYRJl6', '9975001585', 'tejshwini'),
(212, '2023-03-23', 'Hitesh', 'hitesh.shinde@hockeycurve.com', '$2y$10$AUiJfoQxpW33yGKtc3tuAOpHQT5Zx2sMwAkmB8xNZrQG3abK1gCjy', '8967398440', 'aprimeauto'),
(213, '2023-03-23', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$YZwqjqQEGkT8k8jk/PG6h.c0r0MGQUOr3wwtCgmhrLSoCYmt44AH6', '8975179027', 'tcauto'),
(214, '2023-03-23', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$dCrZqyi8DFIgga1RUJ8MlOGqqybraf20PmW5Dp4oTVUbYyX3v4eC6', '9689928616', 'APV'),
(215, '2023-03-23', 'Siddhi ', 'siddhi.phalke@hockeycurve.com', '$2y$10$vE8VPZki2hnCZ6YLbJU2N.WuQDtT9GCuwtytndxuAMrlfn8PRgwUy', '8378839051', 'ABC'),
(216, '2023-03-23', 'Vishwadeep Sonawale', 'vishwadeep.sonawale@hockeycurve.com', '$2y$10$l6jK6eS5xa8cds9Qgb7M/OSWnm6ZfHrpQDvlmYx1omnXIs22ly5Py', '7507628946', 'vishwadeep'),
(217, '2023-03-23', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$NMY6KLIRNKJutr4macXMm.rzyMh.FOzrCW4tgexnqDCxzvD1nq.Vq', '7507601741', 'marksandspencer'),
(218, '2023-03-23', 'Hitesh', 'hitesh.shinde@hockeycurve.com', '$2y$10$5Wcfl0ztQcNgWjO4mP7NHOOeUSGUWNDexPTKPZCE8kI7IPksJ1ehS', '9867398440', 'marksandspenser'),
(219, '2023-03-23', 'Shubham', 'shubham.rathod@hockeycurve.com', '$2y$10$LLk4iM/78wfIrfY.PVRRf.wM.tyXdUSTg9VBSHB70z8qeMpgoy02q', '8261066179', 'shubhamrathod'),
(220, '2023-03-23', 'Adithi Rao', 'adithi@hockeycurve.com', '$2y$10$IeEv/fN5DLwrEnVVf0tzcuwLOvBbDtpNwG8flxFeV4eOkUCqVTTi.', '9930498249', 'Adithitest'),
(221, '2023-03-23', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$LsR05dVQM.f66UzCK788tOHkuyI/cBV66/u8KDbizCGnokjDPvaiq', '7767844137', 'mands'),
(223, '2023-03-23', 'Kajal Thombare', 'kajal.thombare@hockeycurve.com', '$2y$10$qyIBcZl53nZHSOdNhicpa.bTb1roU8gj0UXm5fLUqGKEi3P8n/O3e', '8169415273', 'admin'),
(224, '2023-03-23', 'amar powar', 'apowar@hockecurve.com', '$2y$10$lpHwBV9LZwKVfnZJ/YoSeugp.R19agTpOf7o.G5e.P2jOxJrAiy3y', '7498533231', 'apv'),
(225, '2023-03-23', 'Amar Powar', 'apowar@hockecurve.com', '$2y$10$P40kGSaLV4D96jyfVV3AcucnrvVEBHut/We2CNYRLDrUiG8qTRaOK', '7498533231', 'amarpowar'),
(226, '2023-03-23', 'Vishwadeep Sonawale', 'vishwadeep.sonawale@hockeycurve.com', '$2y$10$WtQf8J6ccwAglDebI2tRZ.tz0I/8RRuxFm/GukFH7Z2pOZ1vce7mu', '7507628946', 'mands123'),
(227, '2023-03-23', 'Amar Powar', 'apowar@hockecurve.com', '$2y$10$gbuE1f.EHabuP8QheX5uHuxCs8ABMhoROgNieAzSYwXYNd1RX50fu', '7498533231', 'amarpowar'),
(228, '2023-03-23', 'Raj Patel', 'raj.p@hockeycurve.com', '$2y$10$blWg1s1sE9CgtCiFib5lpOebjK1RY3vanFk6hzCtHq8GR6JtSNLza', '9689359633', 'HockeyCurve'),
(229, '2023-03-23', 'Rajeshri', 'rajeshri@hockeycurve.com', '$2y$10$tWTVQ6N6HTLgGTLX3CpmWeW91nQtSv1pyF8dbtMtTnEWuDpr77r/S', '8482996092', 'Rajeshri'),
(230, '2023-03-23', 'Amar Powar', 'apowar@hockecurve.com', '$2y$10$JYKTOYTa0oLrJnNSdoc07.F.60UpCXuIHIufAD5puK.R6N99IfrE6', '7498533231', 'amarpowar'),
(231, '2023-03-23', 'Amar Powar', 'apowar@hockeycurve.com', '$2y$10$lK.UqLtS8MnRc5Yv10VqE.L.3lpMzhZn47VTCwFJMp3.ZH.G27sme', '7498533231', 'amarpowar'),
(232, '2023-03-23', 'Amar Powar', 'apowar@hockeycurve.com', '$2y$10$lK.UqLtS8MnRc5Yv10VqE.L.3lpMzhZn47VTCwFJMp3.ZH.G27sme', '7498533231', 'amarpowar'),
(233, '2023-03-23', 'Hariharan', 'hariharanv@hockeycurve.com', '$2y$10$k9z2dFGo4sX.9pLu2DwKtudswDBZbQxSsX3S6MnlA4IAJjTRnE6yi', '8870901274', 'HockeyCurve'),
(234, '2023-03-23', 'Rajeshri', 'rajeshri@hockeycurve.com', '$2y$10$Sbfl0moIETjPipCb2x7QquVoeou4fsndX808Z0LjL29.DOaV97qX6', '8482996092', 'Rajeshri'),
(235, '2023-03-23', 'aditya', 'aditya@hockeycurve.com', '$2y$10$e3ANdh0wJiNQnEoJV/cEeuHFn5sKMQfcf9O6MsQ26tNlNegPO0lMe', '9535660077', 'apv'),
(236, '2023-03-23', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$ywTdaakmzo.unfLBgAM0MOPt4EE4EQhzuT44D9Cu/NYFxJ1JfWOOK', '9711415617', 'jasmeet'),
(237, '2023-03-23', 'Hitesh', 'hitesh.shinde@hockeycurve.com', '$2y$10$s0VGeBExHgr2POp8oRIqNe0Q9EXaW6LL9OyQKChT1OyOClfqV72o.', '9867398440', 'tatacliq'),
(238, '2023-03-23', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$s0VGeBExHgr2POp8oRIqNe0Q9EXaW6LL9OyQKChT1OyOClfqV72o.', '7507601741', 'tatacliq'),
(240, '2023-03-23', 'Pratiksha ', 'pratiksha.chavan@hockeycurve.com', '$2y$10$81JAiAzIjaEUY2hdZaB17.Cw5.pJt96viCdgo1/Bojfsakd3ZlR3u', '7020646997', 'pratiksha'),
(241, '2023-03-23', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$JURmemw38GgIsMLdUie5B.Qu0CsVSr2Tmf/ULcPcNFO2DT4a34bR.', '98123445663', 'demojs'),
(242, '2023-03-23', 'Mahesh', 'mahesh.b@hockeycurve.com', '$2y$10$HTqy74yx.KGxt5eRUrVymOMVAXvDq52RASoMppQPELXlE5LJObYfy', '1234567891', 'demojs'),
(247, '2023-03-23', 'mahesh', 'mahesh.b@hockeycurve.com', '$2y$10$EaZkyAN2kTv5MmG3c49UD.TbP4j1udfZtuto/ryvgcx/PeaMCbzua', '1234567895', 'demohtml'),
(248, '2023-03-23', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$JURmemw38GgIsMLdUie5B.Qu0CsVSr2Tmf/ULcPcNFO2DT4a34bR.', '1234567899', 'demojs'),
(249, '2023-03-23', 'mahesh', 'mahesh.b@hockeycurve.com', '$2y$10$HTqy74yx.KGxt5eRUrVymOMVAXvDq52RASoMppQPELXlE5LJObYfy', '1234567892', 'demojs'),
(250, '2023-03-23', 'Naved', 'naved.shaikh@hockeycurve.com', '$2y$10$oBm1lPQVWDPUxD7Vl0pCHus9vTALk412dl9Y0EQ8sBNYUJ4swtHiq', '8454922374', 'Naved_shaikh'),
(251, '2023-03-23', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$oIjw3nk1bnFjXov0gsYrVe.5EQKnv7FndvinIwSrGe9cUI9nRM9cW', '8975179027', 'idfc'),
(252, '2023-03-23', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$oIjw3nk1bnFjXov0gsYrVe.5EQKnv7FndvinIwSrGe9cUI9nRM9cW', '7507601741', 'idfc'),
(253, '2023-03-23', 'Hitesh', 'hitesh.shinde@hockeycurve.com', '$2y$10$oIjw3nk1bnFjXov0gsYrVe.5EQKnv7FndvinIwSrGe9cUI9nRM9cW', '9867398440', 'idfc'),
(254, '2023-03-23', 'Harsh', 'harsh@hockeycurve.com', '$2y$10$DaYAwPS3s1edx.2syEpgceitQQUR5SnLYJDKorvzynLzRIU36Dadu', '9890098900', 'Test'),
(257, '2023-03-23', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$I6or9.G/Ue/wHksnSWSVMOUXbwzX40vNSnq9wqpJUh77rji/GWhm6', '9876541320', 'test'),
(261, '2023-03-23', 'Jasmeet', 'jasmeet.singh@com', '$2y$10$HTqy74yx.KGxt5eRUrVymOMVAXvDq52RASoMppQPELXlE5LJObYfy', '9811115137', 'demojs'),
(264, '2023-03-23', 'Chavan', 'pratiksha.chavan@hockeycurve.com', '$2y$10$v4xkuQVvY8nPyaqB7w9wo.FPKwjoWcAMPh6wsgDghPZdHbtxidzXu', '7020646997', 'Chavan'),
(265, '2023-03-23', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$q7aGoG2q4ZjNpitH5Q0thOZ6GHjxfV.2XN8tfVAgNKXnu6wazLcq.', '8975179027', 'shaadi'),
(266, '2023-03-23', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$q7aGoG2q4ZjNpitH5Q0thOZ6GHjxfV.2XN8tfVAgNKXnu6wazLcq.', '7507601741', 'shaadi'),
(267, '2023-03-23', 'Hitesh', 'hitesh.shinde@hockeycurve.com', '$2y$10$q7aGoG2q4ZjNpitH5Q0thOZ6GHjxfV.2XN8tfVAgNKXnu6wazLcq.', '9867398440', 'shaadi'),
(270, '2023-03-23', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$402PEM01.yM9WClIMzd.0.4iHgUPGtOi6xm8.RFE5Gmkqpb97Ds9K', '9711415617', 'apv'),
(271, '2023-03-23', 'Hitesh', 'hitesh.shinde@hockeycurve.com', '$2y$10$0Q2pf4gHilMEqwDZg0DaIOZD2nFVc.xwHOP9ujyCYeUnxm84C31F6', '9867398440', 'titan'),
(272, '2023-03-23', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$aH2h4PQpZVk9qMf49jzfZeHm/LhYiU12wDw9mLVrN37TPM7e9vGz.', '7507601741', 'lenovo'),
(273, '2023-03-23', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$zFx0NieDLJGxmPNJrBCKh.4seCceGgTPt8C3QBRTHXW20H.Z6/7Y.', '8975179027', 'lenovo'),
(274, '2023-03-23', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$/vl97ve8asGYfBQRvvNXMemp2.eI55xwrx66n4pWQn89Io78PX2km', '8975179027', 'titan'),
(275, '2023-03-23', 'Hitesh', 'hitesh.shinde@hockeycurve.com', '$2y$10$8xbA26iavM8HW/wHYBL9KOaBpq.W1cYbKV2j2h33nBg8.REvnfZ/6', '9867398440', 'licious'),
(276, '2023-03-23', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$8xbA26iavM8HW/wHYBL9KOaBpq.W1cYbKV2j2h33nBg8.REvnfZ/6', '7507601741', 'licious'),
(278, '2023-03-23', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$8xbA26iavM8HW/wHYBL9KOaBpq.W1cYbKV2j2h33nBg8.REvnfZ/6', '8975179027', 'licious'),
(281, '2023-03-23', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$C4aeqZa.pQRa8PkhwnPI0eA8nqZuz78yRU/kHDQOTQfht/3Eo.v72', '8975179027', 'dunzo'),
(282, '2023-03-23', 'Hitesh', 'hitesh.shinde@hockeycurve.com', '$2y$10$C4aeqZa.pQRa8PkhwnPI0eA8nqZuz78yRU/kHDQOTQfht/3Eo.v72', '9867398440', 'dunzo'),
(283, '2023-03-23', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$C4aeqZa.pQRa8PkhwnPI0eA8nqZuz78yRU/kHDQOTQfht/3Eo.v72', '7507601741', 'dunzo'),
(284, '2023-03-23', 'bavika', 'bavika@hockeycurve.com', '$2y$10$HvKXB7uFKaWiPIYVcFKLJ.rWHqRYcy8.uVZ1AkMFVAcaP6NhUrG5C', '9167359096', 'bavi'),
(285, '2023-03-23', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$uv5HwtbDYbz0Ixg7uskI.uvC2Kyz6UblUCN1hgmOCNAeT.3wMOF56', '9711415617', 'saps'),
(286, '2023-03-23', 'Pratiksha ', 'pratiksha.chavan1@hockeycurve.com', '$2y$10$yi9tOEkW6tGjX6Buf87p.un2MQQRN5OG3Sz/Xt4m0DO1g5W05Y9jW', '0000000000', 'pratiksha'),
(287, '2023-03-23', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$bKgrjpR0ImOSWsJoXnCV2.zaFRAmCphzXP2nabA0Hc/uyr92j6cyu', '7767844137', 'tatacliq'),
(288, '2023-03-23', 'Hitesh', 'hitesh.shinde@hockeycurve.com', '$2y$10$Kxgg.YN.Ukrc.N3bq8Xk9.vbmZkf3sD6LmVesymQA5jKDSYaHZZJ2', '9000000000', 'hstest'),
(289, '2023-03-23', 'Prathamesh', 'prathamesh.bhagwat@hockeycurve.com', '$2y$10$lnY.42s2XT7nIgp4ERyOz.4ONGIaFsQ26schKLoeFIvMQcvlifdqW', '1111111111', 'Prathameshtest'),
(290, '2023-03-23', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$RTdCOArkKaKlrjudrIawnOUFNpU/du7LVbrOHHvtHqlP1qWNrfO9K', '0000000000', 'admin'),
(292, '2023-03-23', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$5Wcfl0ztQcNgWjO4mP7NHOOeUSGUWNDexPTKPZCE8kI7IPksJ1ehS', '8975179027', 'marksandspenser'),
(293, '2023-03-23', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$5Wcfl0ztQcNgWjO4mP7NHOOeUSGUWNDexPTKPZCE8kI7IPksJ1ehS', '7507601741', 'marksandspenser'),
(294, '2023-03-23', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$V2RBJvC.eOABSqo2w5kLaOxLCcck676bMHcCsheuejncrVBkw0lmK', '7767844137', 'idfc'),
(295, '2023-03-23', 'Vishwadeep Sonawale', 'vishwadeep.sonawale@hockeycurve.com', '$2y$10$8KoKi2dEpLzARicC4etQQuMhzWhnWpmdBDc7mha.wlabtrzUG0WuO', '7507628946', 'licious'),
(296, '2023-03-23', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$wFWvnmOsmcVplx1OMR6UCO5hFJmfblc9VY2XHevoNx5Ch60qWK5hO', '7767844137', 'aprimeauto'),
(297, '2023-03-23', 'shivam', 'shivam.singh@hockeycurve.com', '$2y$10$.V89N.AUuAYb32TP0wgZgekKOKvGIm9l0vJPGG87XvRUzDL1Y6NT2', '9967307992', 'aprimeauto'),
(298, '2023-03-23', 'aditya', 'aditya@hockeycurve.com', '$2y$10$l4OWa69HORd00rVJ3CkStOzAGcLAnAen3rWrbu07H5Gou9oqgpkNG', '9535660077', 'aprimeauto'),
(299, '2023-03-23', 'Vishwadeep Sonawale', 'vishwadeep.sonawale@hockeycurve.com', '$2y$10$ieD.C.ULdIlg5rircFDRv.fZEKFhqF4DTW30ffCABq6Y0PZIBCFGK', '7507628946', 'aprimeauto'),
(300, '2023-03-23', 'Hitesh', 'hitesh.shinde@hockeycurve.com', '$2y$10$r78Z2CkJHy3KGbh6tDdUpOFDfiUJGZ1QQhPZJri1uOJw4oUIxOxCy', '9867398440', 'apvideo'),
(301, '2023-03-23', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$mD.88d8fo85H5JUyt0Av9eOtMtF8Mu8JpYACY7XOrp9pQJacT4Ml.', '7507601741', 'apvideo'),
(302, '2023-03-23', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$VpjymBdfoSeT2rQTcXEx8uJxjcKUxs/pJlSMaZ6nAR2whqKkOZ3N6', '8975179027', 'taneira'),
(303, '2023-03-23', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$UGNTS33axGoZNLQaLVqKteY/IUwN0ENQnKUomO9x0f1Cnv.rVb2ne', '7507601741', 'taneira'),
(304, '2023-03-23', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$ZTX.ofTUcmVyNiAZu9sUKe0yAxwIDjL10W68SJr03XCd3Yp1bQLJy', '7767844137', 'licious'),
(305, '2023-03-23', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$QeVRvA7ryK11WJXD6lPO4.fM3iVea/vCv.CX56l77iVwxzYaUq7X6', '8975179027', 'apvideo'),
(306, '2023-03-23', 'aditya', 'aditya@hockeycurve.com', '$2y$10$qDWguLfyPV94GxXBwbBJ3.1PNGivFYnI/eCTB/7I6cbjhixmFGNZm', '9535660077', 'shaadi'),
(307, '2023-03-23', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$Qssv2QikX.AF.ySiRNFMVukXXpyUEOxYstjb1cTwpwvh71QyX1R2i', '7768844137', 'shaadi'),
(308, '2023-03-23', 'Vishwadeep Sonawale', 'vishwadeep.sonawale@hockeycurve.com', '$2y$10$YQI7Y98MY.egmPE.CceyQO3oNwH7QiGDcDsRP2JRLwDoUQqUmrhKC', '7507628946', 'tatacliq'),
(312, '2023-03-23', 'Tejshwinikapase', 'tejshwini@hockeycurve.com', '$2y$10$dcQX2KHqf4ynbsannKiYpennxpWFbwF.Wvq5UXqZdOpuLM7NCKds6', '9975001585', 'Tejshwinikapase'),
(313, '2023-03-23', 'Siddhi ', 'siddhi.phalke@hockeycurve.com', '$2y$10$X/RegbOKBzPhg3JOUi/MvOQnhjY8DlfZH/gCzvdUZYdgIr2syWbwG', '8378839051', 'Lenovo'),
(314, '2023-03-23', 'Vishwadeep Sonawale', 'vishwadeep.sonawale@hockeycurve.com', '$2y$10$njih5Q2fJNAES4GZxgPIZ..9ku3aCRaPHUvxRQiJZAx1jXJ4/x/2G', '7507628946', 'shaadi'),
(315, '2023-03-23', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$6KK60g3wbyeCrvS6jflIX.emAgNuof7paZvichVuIOCMU8E1FNFIq', '9689928616', 'aprimeauto'),
(316, '2023-03-23', 'amarpowar', 'apowar@hockeycurve.com', '$2y$10$WZCGwIHSCaLIuvxazPlpWuGc0NxGPNsvF9varKOk3ik4uTLoI/DGi', '7498533231', 'shaadi'),
(317, '2023-03-23', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$4mdoxzRfWWc8qnPjdbh9g.mkqlpqulq0Jqr6zn3uwQlTrLy84w7vi', '7767844137', 'tataplay'),
(318, '2023-03-23', 'Vishwadeep Sonawale', 'vishwadeep.sonawale@hockeycurve.com', '$2y$10$ARo4incJ5zNHK3PDX9vP1OuNNFqCYyHG44NppLDCnJUi73JTZROhu', '7507628946', 'tataplay'),
(319, '2023-03-23', 'Siddhi', 'siddhi.phalke@hockeycurve.com', '$2y$10$eppN2PU1W.rkdJTWeOoBXeMIiljVg.NedMVyaDTptDNlBiLH1EPp6', '8378839051', 'tataplay'),
(320, '2023-03-23', 'amarpowar', 'apowar@hockeycurve.com', '$2y$10$605TZ6wYWWkzKwVPcqwcZuOgbg0mw6VllCIbGCknSQ3mZYlC9irHm', '7498533231', 'Bajaj-ellianz'),
(350, '2023-03-23', 'Siddhi ', 'siddhi.phalke@hockeycurve.com', '$2y$10$hL9Wk4ULqdSPVDDI9hk5req06WTlT8t.gSsZtW.aYWN75ldiT1YKq', '8378839051', 'Tanishq'),
(353, '2023-03-23', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$4TkyST.A5Cyk3OOegHIWm.m6nCsRMX20.PjQk3aI7dBh.UogU1wLy', '7767844137', 'tanishq'),
(360, '2023-03-23', 'Siddhi ', 'siddhi.phalke@hockeycurve.com', '$2y$10$w.GOVmxi516Q15P2ptsUA.UEVScZMOQ5EcHTwV7P4L7kimdDIFSKS', '8378839051', 'aprimeauto'),
(361, '2023-03-23', 'Siddhi ', 'siddhi.phalke@hockeycurve.com', '$2y$10$ERENNjOKL76CKCfPRVoNTe6nxs84g7RC6yw/wv1m7JpBdAx6Z5Gd6', '8378839051', 'tatacliq'),
(362, '2023-03-23', 'Saps', 'sapna.g@hockeycurve.com', '$2y$10$DuTGAJwjtCp3x5vKrIeLw.RkSVvDyHfhuBK7qpDIW6UbzueId/8Le', '9087602011', 'Nik'),
(363, '2023-03-23', 'Mahesh', 'mahesh.b@hockeycurve.com', '$2y$10$MQpxv07rKZqF/aNm8w7s0OeHavc9a/zMmxEL7qoK19iiHrTizwnZa', '8668392182', 'mbauto'),
(364, '2023-03-23', 'Tanishq', 'mahesh.b@hockeycurve.com', '$2y$10$noWcN5L8ePviGMuppsnoO.N.ya2PSHvsdFGuWrRPqzDLQThu7PRMC', '8998558667', 'mauto'),
(365, '2023-03-23', 'Rapido', 'mahesh.b@hockeycurve.com', '$2y$10$sLLBMyjLVpZ4DtPfc6AKXezGNgurTE2QO/v51Hjt2HpfNmn55fk1q', '8778998556', 'mautotest'),
(366, '2023-03-23', 'Culttest', 'mahesh.b@hockeycurve.com', '$2y$10$C8eZk2.0W2SsLvxDI0eC.eXRAmcYh9Q5eL0dU8PsB5tjWAqodlrOO', '9988774455', 'cultauto'),
(367, '2023-03-23', 'Tatatest', 'mahesh.b@hockeycurve.com', '$2y$10$kOyMTp7S.zMnHnonP1gy2eM47cu2D1.z.8OUlufZPe5ZfSXUDfkNa', '7788994455', 'tatacliq'),
(368, '2023-03-23', 'Siddhi ', 'siddhi.phalke@hockeycurve.com', '$2y$10$49sf.WqrSZnrTnP9zEfqoevyimRUt1M485cs/hawo.Ubp8Enorgdq', '8378839051', 'licious'),
(369, '2023-03-23', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$Mh3gmfDZyr0XukVcVt51g.Nljewlx1YkOImoFVTGQwoM6y6YIQX4i', '9689928616', 'licious'),
(370, '2023-03-23', 'amar', 'apowar@hockeycurve.com', '$2y$10$ltZrePvrltJ2Om.lrt2b1O74gs21cHIWEH1iECzaWNnDh5CETzwbe', '7498533231', 'aprimeauto'),
(371, '2023-03-23', 'Siddhi ', 'siddhi.phalke@hockeycurve.com', '$2y$10$8xtipxe1PPkUX2I2PwYNCOZqWPw/19VUN7EdzXYsUzuMUGpoZyT0S', '8378839051', 'plum'),
(372, '2023-03-23', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$YfkICvvaOG0P2kh1NmI8quQd7O4S85CpAS3zMNzt.6y.9iXpfkP/W', '9711415617', 'jasmeet2'),
(375, '2023-03-23', 'Sapna', 'sapna.g@hockeycurve.com', '$2y$10$Fcw/gmvJZGhb/kTr3XHHx.dapeYKiMWRjeGJW.AeGxHLGivBZ.3P2', '9049667486', 'hcurve'),
(387, '2023-03-23', 'Sapna', 'sapna.g@hockeycurve.com', '$2y$10$oJ1daEdnCYv1tYf4jR87z.4FS6i2PW1kEhKYwVGqFOl8qKeypJ34m', '9877634343', 'SAPSSS'),
(388, '2023-03-23', 'Hariharan V', 'hariharanv@hockeycurve.com', '$2y$10$yN91aWNg4gG7fGmTXmwQ/.1KdQzWRsFhcPN5M5cCgnA5fL0wzXjNq', '8870901274', 'HC_Innovation'),
(389, '2023-03-23', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$Xtt64/9heecMfwB9cVA0ouA7GsN1Ni5421ODDeae6he8rt7Wva1NG', '7767844137', 'niktest'),
(390, '2023-03-23', 'Amar powar', 'apowar@hockeycurve.com', '$2y$10$dVXDyAI8Ez80T6cc0.blkOBIR8.aiSrSeOdx/L33AuUUqydoUpghC', '7498533231', 'tanishq'),
(391, '2023-03-23', 'Vishwadeep Sonawale', 'vishwadeep.sonawale@hockeycurve.com', '$2y$10$HC7yrUZyzzxgbocuaNfU7eGE55L384BH3lECU/2MPZQXrHjqip6Xm', '7507628946', 'Tanishq'),
(392, '2023-03-23', 'Shubham', 'shubham.rathod@hockeycurve.com', '$2y$10$Ano4wiCFt6YqZX7C.gxTY.47SJ6NYCjfC/BXwgRB8ZTeiF6aeA1d6', '8261066179', 'aprimeauto'),
(393, '2023-03-23', 'Tejshwinikapase', 'tejshwini@hockeycurve.com', '$2y$10$HaffYZSu3b/IuhuXTM6JHeK4Fik/xlmuRf7e9vCt4q/vdnB.JD3fm', '9975001585', 'aprimeauto'),
(394, '2023-03-23', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$cj2T3BQkWDNb8hdrbiyT2uH2wl9RMr0KmPhvIz8LG/k/dQ5Fjc3oK', '7767844137', 'lenovoauto'),
(395, '2023-03-23', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$1k4VNjZ1ZEZQYeqV0Zp3S.0ejVlXHMCIm1md1yGk6EVsVvQYqiqem', '7767844137', 'lenovo'),
(396, '2023-03-23', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$BOaTd1BJdH4exMs4Ud/nIuPFFrxeMm71LTekzvmb7OCi4t9j4dySa', '9689928616', 'lenovo'),
(397, '2023-03-23', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$JqQcYAM9Qn7zo3SNVbDa5.SYRYvUugCTLNr.7KvTdKHlNO0BRbsP2', '7767844137', 'apvideo'),
(398, '2023-03-23', 'Amar powar', 'apowar@hockeycurve.com', '$2y$10$hF1yDswy8nmwU6WdzzzHt.IujDZxVIyAav52soO2wkVeTSAdn44RO', '7498533231', 'tatacliq'),
(399, '2023-03-23', 'Tejshwinikapase', 'tejshwini@hockeycurve.com', '$2y$10$o9Dr2Dl6lt0h9v3BUeeIp.1MscP4zJFZL2V5hCWneoxE2VNtQppRS', '9975001585', 'tatacliq'),
(400, '2023-03-23', 'aditya', 'aditya@hockeycurve.com', '$2y$10$UdGCt.NOr9IK5ohUkz286upsYz6He9SrT8IBUOaypcpwtr.u.HCTm', '9535660077', 'Naved_shaikh'),
(402, '2023-03-24', 'Saps', 'sapna.g@hockeycurve.com', '$2y$10$80.nqQd.tUAMeHCPqtPbzO6AZ1CFfkNo4VQ.7dN.Yu48F2Zaf83LC', '7658766565', 'test'),
(403, '2023-03-24', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$18MqYIhfi/CE9V/fRcKViuowa6mNj74MbvwmZaDNOh9pCHqhfHl8C', '9182782319', 'apvideo'),
(408, '2023-03-25', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$XPd0uSlcTD5olqIMI2rtVuhpb5eOSDkPCOI5Su0ClMMvP3kYId3fO', '9689928616', 'Ninad'),
(409, '2023-03-29', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$NpjEotYNHOuzl6uu4QXgQuA0dwotOYcYgxd8FiW49raJyUTfQ8vh2', '7767844137', 'gnc'),
(410, '2023-03-29', 'Vishwadeep Sonawale', 'vishwadeep.sonawale@hockeycurve.com', '$2y$10$RDUJrPKOI2Hi9xKjUqThjuhbOtaBeAeeLnB1W7uPJV39ivXNlCF56', '7507628946', 'gnc'),
(411, '2023-03-30', 'Shubham', 'shubham.rathod@hockeycurve.com', '$2y$10$QSSPFf9FEmMzYr6s1nM5H.8BFcfDFcxSScRiIa0bc/D/X4r1D3Xu.', '8261066179', 'apvideo'),
(412, '2023-03-31', 'Aman Shaikh', 'aman.shaikh@hockeycurve.com', '$2y$10$7boGV7eNsGe1a9VPPj2JXOtr2e3v53dHMmG4wtMctT9tElhOFtCjO', '8652102099', 'Aman'),
(413, '2023-03-31', 'Naved', 'naved.shaikh@hockeycurve.com', '$2y$10$xp6klHsz/8LaQ8x/HYg2Ye.SUJaZgZob6CRjH9ObLT.PFevDVFpza', '8454922374', 'kfc'),
(414, '2023-03-31', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$GfsIaDP7wTAayZvji4OJFuNtb2xnrYDMvEb8IPy0GzY84Jp25GCM2', '7767844137', 'Amazon'),
(415, '2023-03-31', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$V1YjWyQVRuBBlI5CjmJSSOVpGWR88dEsyheR.IY3opH22tAn3jtPq', '7767844137', 'kfc'),
(416, '2023-04-01', 'Bavika', 'bavika@hockeycurve.com', '$2y$10$T2Erjlqsv4tTaXha7mYs9uPTV2Mv2ihW9s9Jyl0oJfOPJ8b3YUiUm', '9167359096', 'bavika_test'),
(417, '2023-04-03', 'Saleem', 'mohamed.s@hockeycurve.com', '$2y$10$MjSwcD232nAPisJBRdwHLehGImaL6OzuZ/swvrfM8jOhd/ZQmUcqy', '9699502822', 'saps'),
(418, '2023-04-03', 'bavika', 'bavika@hockeycurve.com', '$2y$10$GGgRUJC8YezXFk.h..c61uK9yuZSKajOfG58BupOiM8ElOo.AIOSm', '9167359096', 'dunzo'),
(419, '2023-04-03', 'Tejshwinikapase', 'tejshwini@hockeycurve.com', '$2y$10$Xx9kUbu3MaRlgchI0I7ueOX4f3cuLV4j/sxYCkWWKnymfeB4SXXI2', '9975001585', 'Tanishq'),
(420, '2023-04-05', 'amar powar', 'apowar@hockeycurve.com', '$2y$10$tMnnyvwlW/QvlH8SUDO5zu2Hp7UquydJcdnROa3wHP5HPDsW4FIRu', '7498533231', 'KFC'),
(421, '2023-04-05', 'Siddhi', 'siddhi.phalke@hockeycurve.com', '$2y$10$0yAbZH43YpkRscTU6B/1memDPuVseqMCcg1NnHXXNyV0vWU1NsifW', '8378839051', 'KFC'),
(422, '2023-04-05', 'bavika', 'bavika@hockeycurve.com', '$2y$10$g7/RnorIzClfLpSfNq0wbem/sBQ0m/RTEk.4Fun/p2YbyGz6How8i', '9167359096', 'KFC'),
(423, '2023-04-05', 'Vishwadeep Sonawale', 'vishwadeep.sonawale@hockeycurve.com', '$2y$10$STWdeufYowjgJ9GyyWVFSeC35SusiBLVcOjQ4wvtWh7HlJAOyWDsu', '7507628946', 'kfc'),
(424, '2023-04-06', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$SRMeBZ0HypyKzBNvWoAqsOcDRMMVPnXxV3p5zskzxPSpOWQQWJ0S2', '7767844137', 'Naved_shaikh'),
(425, '2023-04-06', 'Siddhi ', 'siddhi.phalke@hockeycurve.com', '$2y$10$ZhHwfv/YNYLyNEcfzqUfXu4YpRdBC5/HlOer4IkIeQou1uD3jIwYq', '8378839051', 'Redbus'),
(426, '2023-04-06', 'bavika', 'bavika@hockeycurve.com', '$2y$10$sGVFFRo038kY39FhlitIFehQo0DGYsufzKgx8RqEB5MC8EGLyE1vW', '9167359096', 'Marks_&_Spencers'),
(427, '2023-04-06', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$b.AuGyTN.k8hDSSaszf4Wefk7rx1kcMaI1MqCJSqNcapD1nZ2RZuK', '9689928616', 'kfc'),
(428, '2023-04-06', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$NUSqNpbJKLq6Vi9MeVCWR.HESY8evxpVw0ECxFoANonTDl3VHU5JS', '7767844137', 'mns'),
(429, '2023-04-06', 'b', 'bavika@hockeycurve.com', '$2y$10$CUVWwhxLnLloDweQkt806uUu.4kzcZyoKvisodPdCRPvctZvpecHu', '9167359096', 'mns'),
(430, '2023-04-06', 'Vishwadeep Sonawale', 'vishwadeep.sonawale@hockeycurve.com', '$2y$10$WuhHv8OkyIzEKcSRavuz7.YYXpuzIK92pmFiowkGTdTG7KSGAo/We', '7507628946', 'mns'),
(431, '2023-04-06', 'Bavika', 'bavika@hockeycurve.com', '$2y$10$.SLWcy4AlnW8j255ciXlP.gp3rrztrM/XXJH6Vmn7XIgdPnCUf0Ye', '9167359096', 'aprimeauto'),
(432, '2023-04-08', 'bavika', 'bavika@hockeycurve.com', '$2y$10$FBV42W9F7J/dbcdzlco5.OdnrjoBQKYMGi7wY/j3Bfq1.vgozavA6', '9167359096', 'swiggy'),
(433, '2023-04-10', 'bavika', 'bavika@hockeycurve.com', '$2y$10$ZgLaCstbCls.yXbGQEtTv.x99DmRNHQNkvrD3MptbFtZbWhNivUX.', '9167359096', 'tanishq'),
(434, '2023-04-11', 'Naved', 'naved.shaikh@hockeycurve.com', '$2y$10$0X8zzLnKdmIfOqVAdsDGfeayteYKKXANNhAH/hU/3JN8dgkuVR1om', '8454922374', 'tanishq'),
(435, '2023-04-11', 'Shubham', 'shubham.rathod@hockeycurve.com', '$2y$10$8B.BivTYORkH3jbOVZ/F5OUw.QmC5VKzUHMbphmFPvd9IrcxcSp3G', '8261066179', 'Tanishq'),
(436, '2023-04-12', 'Siddhi', 'siddhi.phalke@hockeycurve.com', '$2y$10$qa/xj3GrRoX4kzTu6U00LeqfQcMAoyWbbWFWKNAwPKyYUr4tr1o96', '8378839051', 'titan'),
(437, '2023-04-12', 'Bavika', 'bavika@hockeycurve.com', '$2y$10$mNVsKMHOhcp72S/Hi796B.ywTUixcizDHea.JhQZ9GIN6ReBwg24y', '9167359096', 'titan'),
(438, '2023-04-13', 'Prathamesh', 'prathamesh.bhagwat@hockeycurve.com', '$2y$10$Xg6TFrhaFgsQd/b2LCv3Sub54FQgYc8exRJ7yrIuhRXvgFMPTvOIG', '9594892662', 'titan'),
(439, '2023-04-13', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$hX492Axm19FGnxNbPjpYhOre7ovzeI.CiKztg1xcMn8ZdeOeQwNt6', '7767844137', 'titan'),
(440, '2023-04-13', 'Vishwadeep Sonawale', 'vishwadeep.sonawale@hockeycurve.com', '$2y$10$Ipx88mItspW15DG/Wd9HoOwOwiy6t2bhEf51l242ZH33GbHdNrx/W', '7507628946', 'titan'),
(441, '2023-04-14', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$c6nZcAD.VEAW81BS1vdJk.h8P.suVnlnT86eCRl0sN752dOo3kKRe', '7767844137', 'zee'),
(442, '2023-04-14', 'Siddhi ', 'siddhi.phalke@hockeycurve.com', '$2y$10$q1bgRsgWYITOHyaqmJ1FOu8KyZjQ2iUtrKzfCrqI5GbLdT8dRlvee', '8378839051', 'Zee5'),
(443, '2023-04-14', 'pooja', 'pooja@hockeycurve.com', '$2y$10$si23k2eni79Axv/ENKYLBuqx1KhcTDL/vuWSbtEJa5qjKFQmH3A12', '9819626057', 'pooja'),
(444, '2023-04-17', 'Vishwadeep Sonawale', 'vishwadeep.sonawale@hockeycurve.com', '$2y$10$VCigtmbSL.Q17KTarog8POvPNsBAFcUqAr0bGR/tgEBRx2DZze6na', '7507628946', 'zeefive'),
(445, '2023-04-19', 'amar powar', 'apowar@hockeycurve.com', '$2y$10$okoQ.2ykwB5/piz8kN70Meb/S5tr3VpfV2xylw2O76YdWROFPRL8O', '7498533231', 'licious'),
(446, '2023-04-24', 'Tejshwinikapase', 'tejshwini@hockeycurve.com', '$2y$10$xmtg9fy4WeXeEinKb78F2e17cxPSAF7Di8qQF84mYawDtsETbwhKO', '9975001585', 'Licious'),
(447, '2023-04-24', 'Hitesh', 'hitesh.shinde@hockeycurve.com', '$2y$10$Uu4PlYxswi9.xlWpofFfsOj1xJ1FTjIhn.YwpzenVP15ws6TkFucm', '8010937140', 'beats'),
(448, '2023-04-24', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$41G1vabTyZ0vmEelp3OyaO5h0WxpfSsJdCahgqq6EsTcXYwGJv9Ci', '7507601741', 'beats'),
(449, '2023-04-24', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$xAFv8va0LbimmnNQoQ0iMuLs/Oaz.VhpFs6W0X8mmu.rRBb.FeVmy', '8975179027', 'beats'),
(450, '2023-04-24', 'bavika', 'bavika@hockeycurve.com', '$2y$10$nDL.Ag8tB.EHg2F/NtNW3O2WzAy2Ym1W56T.G0PlSyubGtkPdVfpK', '9167359096', 'okaya'),
(451, '2023-04-24', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$Jvr01mkEmqUgttR/0pdhruuqcqGMASM9s64Juxt7X1vN9a2K5ungO', '9689928616', 'okaya'),
(452, '2023-04-25', 'bavika', 'bavika@hockeycurve.com', '$2y$10$zJhU9bgGDC8Dm6zWDF2Fduu2szvAFZeVe1NuLnRkVL60/HFEYEpq2', '9167359096', 'licious'),
(453, '2023-04-26', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$AixNYJRiKvmNkFu2ilC91.px5MhritJC.ywrWHXcDXQSxFGh4Y2yO', '7767844137', 'iqoo'),
(454, '2023-04-26', 'Hitesh', 'hitesh.shinde@hockeycurve.com', '$2y$10$1tM/fMxJ9f0.mVOZFafJd.iIEZqI6KQp5W4JEIojib2ENDstP7Hdy', '8010937140', 'iqoo'),
(455, '2023-04-26', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$uC5NuWQuVk5QHYnGJBwX4u5BV9lcLJbrLG8R4wCc6ey3xN6/2vL8a', '7507601741', 'iqoo'),
(456, '2023-04-26', 'Pavan', 'pavan.vichare@hockeycurve.com', '$2y$10$p4WZdQKQ78o.nyVmFIVoX.GuKCYEukErOiaPvvv/haw/FLPPJnaca', '8975179027', 'iqoo'),
(457, '2023-04-26', 'Shubham', 'shubham.rathod@hockeycurve.com', '$2y$10$QUsJW0O18cnnXrsG5eYlfuUgm5bGIexoiDswVZANfpRuhY1akICWG', '8261066179', 'MNS'),
(458, '2023-04-28', 'Naved', 'naved.shaikh@hockeycurve.com', '$2y$10$JKdBFkq2uwfqOK77v8vcROv5RdqBAXvbYq2bbDhD0DUPryk1mFh8K', '8454922374', 'Milton'),
(459, '2023-04-28', 'Shubham', 'shubham.rathod@hockeycurve.com', '$2y$10$FHx9jge.jE/5rPBF11AameC23/.c94OWKHxXw.7NTlk9l1EJ/eoZy', '8261066179', 'milton'),
(460, '2023-04-28', 'Tejshwinikapase', 'tejshwini@hockeycurve.com', '$2y$10$gbOio2yH7Iq3Px9YybdCVOfzc3n9a/sIiKVLyYcmelYGOPUviB2ay', '9975001585', 'milton'),
(461, '2023-04-29', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$lu.WPA50QllYCvXFzW28GeRhq1jSxmVlvT7ourmTFomWhguVayv9i', '9689928616', 'milton'),
(462, '2023-04-29', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$B5gNyIX/fTVBuxK2SQDhbeQBNQTEYHYXErWZm64qPfx27THJXGwyS', '9711415167', 'test123'),
(463, '2023-05-03', 'amar powar', 'apowar@hockeycurve.com', '$2y$10$1PM9c9ANl6lOwZBfKzDH8.PAKvBEzeULly6EZUe6V1BxyLiZ03UhS', '7498533231', 'redbus'),
(464, '2023-05-04', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$tP7LKW9wieDO5Ps7d4Hla.JPRi/ZXHubmVCdLbftYeZHB1j9pLPku', '7767844137', 'redbus'),
(465, '2023-05-04', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$59Fg4c02OYegQqDSK40g2epE4gDhaCnmxoXhnKQZ5LqMFNXSPyf.W', '9689928616', 'zee5'),
(466, '2023-05-04', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$Ms3fAyCuOYS2oV3hE1PszOahO1JZVEeVbCHOsRTwcSVz2wYbGcWvy', '9689928616', 'zee'),
(467, '2023-05-04', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$U3roizs31v4OSzfId9nEiOmvXKypNJY2VdDgaWIC8zDkHKmBvHVWu', '7767844137', 'okaya'),
(468, '2023-05-05', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$/z8JX/HutnMW4CTP8Rnlrui7X.ng6m1OuDFbnjOf/6ALFmEMkAqi.', '7767844137', 'sony'),
(469, '2023-05-08', 'Bavika', 'bavika@hockeycurve.com', '$2y$10$3WWPuuWqoFsgjRZMvxHf2.Nw9aNhpSG9h5AznAqK.Hd0OtUB1VDou', '9164359096', 'tataplay'),
(470, '2023-05-09', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$uJy46BKQq.ZgjahW84GDFeo.BRFpNAu.bpeVZ7kBbb8MUqKGjvddO', '7767844137', 'zee5'),
(471, '2023-05-09', 'amar powar', 'apowar@hockeycurve.com', '$2y$10$HqYqGAny9ZFCAL2f7YGMVO8zgarnkyHc5Jk3TGrEYg6mb8LSoFlBG', '7498533231', 'audi'),
(472, '2023-05-09', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$soETvOlSAQoYyh5jKBIDIuDiEDNvTg5iuw8qGB/KL/9FUBA2emDfC', '9689928616', 'matter'),
(473, '2023-05-10', 'Bavika', 'bavika@hockeycurve.com', '$2y$10$YCmU6hFnlYbyJmcDvSz5i.E.aZkkeO3Law1fn8ZIeQifrnnnI2pYK', '9167359096', 'matterbikes'),
(474, '2023-05-10', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$ZwmbiTmsxqE76Y9vedHLCe5p4EFQZJ.287zYUABj3wWo.L1qHzEoK', '9689928616', 'matterbikes'),
(475, '2023-05-11', 'Omkar', 'omkar.apandkar@hockeycurve.com', '$2y$10$Yd.9cbXAmgEQcriF9s7greX67WQC8yNbbnQb/YFXJ0XaO7yjXiTVG', '7507601741', 'skinn'),
(476, '2023-05-11', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$IuyFGD1GMthU.JKMtQnRZ.gMTfcrBCu/5Z51.T/IJAfKHh2Kov2ly', '7767844137', 'audi'),
(477, '2023-05-11', 'Bavika', 'bavika@hockeycurve.com', '$2y$10$MfDeJtYEbm1AyRmO0D3L/ut4cnaBObPXWC2VepgxqCrcCwugHQmyW', '9167359096', 'samsung'),
(478, '2023-05-12', 'Jasmeet', 'jasmeet.singh@hockeycurve.com', '$2y$10$uAhUSrEI4hZdowVHZU8PIuvC9gihmaRkIzrtD58ajqnkWf1WcGtwO', '9711415617', 'iqoo'),
(479, '2023-05-12', 'Naved', 'naved.shaikh@hockeycurve.com', '$2y$10$MK44sQhQI.lDjXOvKcNZeeu/.il.yIufVgvmKtti7tJyLgVq.D6LS', '8454922374', 'samsung'),
(480, '2023-05-12', 'Shubham', 'shubham.rathod@hockeycurve.com', '$2y$10$e.7iLbIBdG2SohF857l6fejkgxRYR5CMJ/20g/rjvrHKtOeezb7S6', '8261066197', 'apple'),
(481, '2023-05-15', 'Naved', 'naved.shaikh@hockeycurve.com', '$2y$10$uDhfWJau4SE2jEMM1ZLOa.nDIhJ4PVwfy/rPpVKf2C9zgPv74Ie.W', '8454922374', 'redbus'),
(482, '2023-05-15', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$JTkv3KSbX1Si4s4IpAl5Uu4bG6PRStXR7r1BpMExlG7mnMjj9V4XK', '9689928616', 'homelane'),
(483, '2023-05-15', 'Naved', 'naved.shaikh@hockeycurve.com', '$2y$10$oRT6VdbO6d7CcZyPhkpAse1THLu./b7FTOpxSrGgrqpEPQ.5oSpg.', '8454922374', 'idfc'),
(484, '2023-05-15', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$g.wpstdIdlZ6HleuriC7JuKi3c3fskPUup6WBLPzXrFX5MVSzjoca', '9689928616', 'idfc'),
(485, '2023-05-16', 'Bavika', 'bavika@hockeycurve.com', '$2y$10$PqRmi0L.Gt8aoQylOUpateTEHCBJU4n7JGRx5pEOGzo3AzeCuDk0S', '9167359096', 'idfc'),
(486, '2023-05-16', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$m6w1W9iQj7EV9oBEWJ4c0.jBuALr6v6mVrzLB8AuAv/EOdVfQDriC', '7767844137', 'homelane'),
(487, '2023-05-17', 'Naved', 'naved.shaikh@hockeycurve.com', '$2y$10$DFRgGZgPFaJg31OjBSuw/OBilBt5nIapWOwKeTe1u2Y.oOtwxfvju', '8454922374', 'tatacliq'),
(488, '2023-05-17', 'Shivam', 'shivam.singh@hockeycurve.com', '$2y$10$7KJkyPKFmcbxyW5XGx3azOqjpXQB7CBt9wem662P34hzp7mvbPica', '9967307992', 'groupmdemo'),
(489, '2023-05-17', 'Shivam', 'shivam.singh@hockeycurve.com', '$2y$10$IIiTTge7L36o.vku/IpAN.x16MJTug3FnM9Amx/C1rbpZDi29Fbri', '9967307992', 'groupmdemo2'),
(490, '2023-05-17', 'Bavika', 'bavika@hockeycurve.com', '$2y$10$0oZFTcPDXtColB7kRhohDush.2foKB81c2VZCn1zKdArPqWOyTH4a', '9167359096', 'lenovo'),
(491, '2023-05-17', 'Naved', 'naved.shaikh@hockeycurve.com', '$2y$10$D50bGal.COIr88offv1SyevuTt57R96d1/pXS2bdmyLpYHEpzs1f2', '8454922374', 'lenovo'),
(492, '2023-05-18', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$Z1WrV/N85e1XcWHugJrhwee7c9IgSIt.00OijYdMZWi0YeV85Blby', '7767844137', 'samsung'),
(493, '2023-05-18', 'Shubham', 'shubham.rathod@hockeycurve.com', '$2y$10$xfHcsgeEIUx0xpbZax1BUewDbnatCKK2i8g7IrvAYqDoTSna2zrTu', '8261066179', 'zeefive'),
(494, '2023-05-18', 'Saleem', 'mohamed.s@hockeycurve.com', '$2y$10$k/9K9dJC2539C1z.Ui3d8eQUuBGcxyKgQCRdLlcFGhan/1wA1y4na', '9699503883', 'testhc'),
(495, '2023-05-18', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$kbPWQgmHt/OCzRDDafrcaeglQEWXIfbWgsLmOiTBqyVn1g68m0xae', '7767844137', 'zeefive'),
(496, '2023-05-18', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$o1n3uXq7H8HdKtumCIlhyeKKPuqUVPfQYfP1VYdqrhgyYb5yKJ5Ni', '9689928616', 'ideas'),
(497, '2023-05-19', 'naved', 'naved.shaikh@hockeycurve.com', '$2y$10$VOeM2ZWvREfzfCuvnkUz6.9y8S.XK8z2Su74QsHt2M3cpRgke88ja', '8454922374', 'homelane'),
(498, '2023-05-20', 'Testhc', 'testhc@hockeycurve.com', '$2y$10$46bI77rBLEaJU3vIhAvgmO.KL6JxhvdWBCn0C8FBQM27K1PUoEHjm', '9876543210', 'dummy'),
(499, '2023-05-20', 'Naved', 'naved.shaikh@hockeycurve.com', '$2y$10$ZThFmXxeDevgOKwBw4VG4u2sjSI.HYlkIGYz/72tk8w2LUjDcj.iC', '8454922374', 'aprimeauto'),
(500, '2023-05-20', 'Naved', 'naved.shaikh@hockeycurve.com', '$2y$10$s7zT39lIaf/PORxJWNqko.b1soRvWWYUNlxuzSp9vJMBoHxeztar.', '8454922374', 'purplle'),
(501, '2023-05-20', 'Ninad Ganu', 'ninad.ganu@hockeycurve.com', '$2y$10$I2l0MqDkW2Kzj6rEzvjmJ..Bjn9DUr79OAjPjLU8jW8rbMtUpe99e', '9689928616', 'purplle'),
(502, '2023-05-22', 'Nikhil', 'nikhil.g@hockeycurve.com', '$2y$10$td0DdzAWDzBr82Wxk2FwhuZuNwIG97ZPUrjunos4/K7od0uXYPYeO', '7767844137', 'purplle'),
(503, '2023-05-22', 'Nirali Shah', 'nirali.shah@hockeycurve.com', '$2y$10$zU.aYvF.d.mO4iXrgIs1oOmkgThZj9ruR3F0KMuvdG0RpLrnbubGe', '9962896071', 'Hivemindsdemo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
