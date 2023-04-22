-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 18, 2023 at 10:46 PM
-- Server version: 10.6.12-MariaDB-log
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sigma445_secure_ecommersedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `accountNumber` varchar(50) NOT NULL,
  `customerName` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cardType` varchar(50) NOT NULL,
  `cardNumber` varchar(50) DEFAULT NULL,
  `expDate` varchar(10) DEFAULT NULL,
  `cvv` int(11) DEFAULT NULL,
  `balance` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`accountNumber`, `customerName`, `address`, `zipcode`, `mobile`, `email`, `cardType`, `cardNumber`, `expDate`, `cvv`, `balance`) VALUES
('11111', 'administrator', 'US', '97236', '9072983749', 'admin@gmail.com', 'Debit', '8888888888', '12/25', 123, 15820),
('22222', 'Customer', 'New York', '98765', '7687698798', 'customer@gmail.com', 'Debit', '5555555555', '12/25', 123, 85180);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `billId` bigint(20) NOT NULL,
  `billDate` datetime DEFAULT NULL,
  `accountNumber` varchar(200) DEFAULT NULL,
  `cardNumber` varchar(200) DEFAULT NULL,
  `billamount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`billId`, `billDate`, `accountNumber`, `cardNumber`, `billamount`) VALUES
(20233343707, '2023-04-03 10:04:31', '22222', '5555555555', 0),
(202333362702, '2023-04-03 10:36:24', '22222', '5555555555', 0),
(2023217154236, '2023-03-17 21:15:40', '22222', '5555555555', 2280),
(2023217219934, '2023-03-17 21:21:52', '22222', '5555555555', 2280),
(2023217288670, '2023-03-17 21:28:00', '22222', '5555555555', 2280),
(2023218451370, '2023-03-18 23:45:20', '22222', 'cfye0PnduS9hAfcyNIHA5A==', 1140),
(2023218508151, '2023-03-18 23:50:28', '22222', 'cfye0PnduS9hAfcyNIHA5A==', 1140),
(2023218508856, '2023-03-18 23:50:56', '22222', 'cfye0PnduS9hAfcyNIHA5A==', 1140),
(2023218522121, '2023-03-18 23:52:10', '22222', 'cfye0PnduS9hAfcyNIHA5A==', 1140),
(2023218525006, '2023-03-18 23:52:23', '22222', 'cfye0PnduS9hAfcyNIHA5A==', 1140),
(2023218529906, '2023-03-18 23:52:04', '22222', 'cfye0PnduS9hAfcyNIHA5A==', 1140),
(2023219408436, '2023-03-19 22:40:49', '22222', 'cfye0PnduS9hAfcyNIHA5A==', 2280);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(80) NOT NULL,
  `categoryPic` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `categoryName`, `categoryPic`) VALUES
(1, 'Electronics', '819591420title.jpg'),
(2, 'Electronics', '601089220app.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerId` bigint(20) NOT NULL,
  `registerDate` date NOT NULL,
  `customerName` varchar(60) NOT NULL,
  `address` varchar(300) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `mobile` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `customerPic` varchar(150) DEFAULT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerId`, `registerDate`, `customerName`, `address`, `zipcode`, `password`, `mobile`, `email`, `customerPic`, `status`) VALUES
(9, '2023-03-30', 'Customer', 'New york', '23423', 'sYi15oSdDpHQ7pz4ubQpjw==', 'OwyUHc+/HRORdNqjIDvUPA==', 'cjOy54PJMH4YaTRTvzRBxAjvXJdCW/MsJsJAX9drILg=', '620378800shop1122.jpg', 'active'),
(10, '2023-04-03', 'Sruthi', 'America', '97982', 'HUoFBPaIeuH9bHYopYOfRA==', '7LqbrLZ7Q7DaiDhmMvmCQQ==', 'Yvy8/uQPX5v8U9YvRFcv8Y6mO/YTV0Q/', '726205532admin1.png', 'active'),
(16, '2023-04-13', 'Customer1', 'New york', '23234', 'JRo/Zh6vSnqGCbBI7hSDog==', 'Kj0/YRArg+f9WraW32qvxw==', 'cjOy54PJMH4YaTRTvzRBxAjvXJdCW/MsJsJAX9drILg=', '757090288admin1.png', 'active'),
(17, '2023-04-13', 'Sruthi', '903 Avenue C', '76201', 'HUoFBPaIeuGIL6nXcKZMfA==', 'XjBi+rdLznkmecUhVXxhZg==', 'Yvy8/uQPX5v8U9YvRFcv8Y6mO/YTV0Q/', '239389051ckjv6jx7700lscjfzuyspsnv0-customer-service-team-training.one-half.png', 'active'),
(18, '2023-04-15', 'shiva', '903 AOLo', '76201', 'sW9Z4oUKdtwl04ydEqT/ig==', 'vTlb9SMTkFUAQxOtz8AxnQ==', 'r0mLPO3k/WR2JaWVrR0Pk/3NDH+yHY8m6Ee1dUVhWj8=', '105379567ckjv6jx7700lscjfzuyspsnv0-customer-service-team-training.one-half.png', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `customer_cart`
--

CREATE TABLE `customer_cart` (
  `cartId` bigint(20) NOT NULL,
  `customerId` bigint(20) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_cart`
--

INSERT INTO `customer_cart` (`cartId`, `customerId`, `productId`, `quantity`) VALUES
(1, 17, 1001, 1),
(2, 18, 1001, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `orderId` bigint(20) NOT NULL,
  `billId` bigint(20) DEFAULT NULL,
  `customerId` bigint(20) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `totalAmount` float NOT NULL,
  `discountPercentage` int(11) DEFAULT NULL,
  `discountAmount` float DEFAULT NULL,
  `finalAmount` float DEFAULT NULL,
  `wearHouseId` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`orderId`, `billId`, `customerId`, `orderDate`, `productId`, `price`, `quantity`, `totalAmount`, `discountPercentage`, `discountAmount`, `finalAmount`, `wearHouseId`, `status`) VALUES
(8, 20233343707, 9, '2023-04-03 10:04:31', 1001, 1200, 1, 1200, 5, 60, 1140, 1, 'Pending'),
(9, 202333362702, 9, '2023-04-03 10:36:24', 1001, 1200, 1, 1200, 5, 60, 1140, 1, 'Delivered'),
(10, 202333362702, 9, '2023-04-03 10:36:24', 1001, 1200, 1, 1200, 5, 60, 1140, 1, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeId` int(11) NOT NULL,
  `wearHouseId` int(11) DEFAULT NULL,
  `employeeType` varchar(60) NOT NULL,
  `employeeName` varchar(60) NOT NULL,
  `address` varchar(300) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `designation` varchar(60) NOT NULL,
  `employeePic` varchar(150) DEFAULT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeId`, `wearHouseId`, `employeeType`, `employeeName`, `address`, `zipcode`, `mobile`, `email`, `designation`, `employeePic`, `password`) VALUES
(1001, 1, 'Manager', 'kumar1', 'Warangal', '13213', '97987234', 'kumar@gmail.com', 'Manager', '139324203adminlogin2.jpg', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `categoryName` varchar(80) DEFAULT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `productPic` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `categoryName`, `productName`, `description`, `price`, `discount`, `productPic`) VALUES
(1001, 'Electronics', 'Samsung Mobile', ' Samsung Galaxy M33 5G (Emerald Brown, 8GB, 128GB Storage) | 6000mAh Battery | 16GB RAM with RAM Plus | Travel Adapter to be Purchased Separately', 10500, 5, '5735898421_abc.png'),
(1002, 'Electronics', 'HP Laptop', 'HP Victus Gaming Latest AMD Ryzen 5 5600H Processor 16.1 inch(40.9 cm) FHD Gaming Laptop (8GB RAM/512GB SSD/4GB Radeon RX5500M Graphics/B&O/Backlit KB/Win 11/MS Office/Xbox Game Pass),16-E0162ax ', 53990, 10, '3734169hp1.jpg'),
(1003, 'Electronics', 'ASUS Laptops', 'ASUS TUF Gaming A15, 15.6-inch (39.62 cms) FHD 144Hz, AMD Ryzen 5 4600H, 4GB NVIDIA GeForce GTX 1650, Gaming Laptop (8GB/512GB SSD/Windows 11/Black/2.3 Kg), FA506IHRZ-HN111W ', 49990, 4, '18781090asus.jpg'),
(1004, 'Electronics', 'Dell  Vostro Laptop', 'Dell Vostro 3420 Laptop,12th Gen Intel Core i3-1215U, 8GB & 512GB SSD, 14.0\" (35.56Cms) FHD WVA AG 250 nits', 41990, 10, '53918468dell.jpg'),
(1005, 'Electronics', 'Lenovo Laptop', 'Lenovo ThinkBook 15 Intel 12th Gen Core i5 15.6\" (39.62cm) FHD 250 nits Antiglare Thin and Light Laptop (8GB/512GB SSD/Windows 11 Home', 57490, 12, '29907702lenova.jpg'),
(1006, 'Electronics', 'Apple 2022 MacBook Pro Laptop', 'Apple 2022 MacBook Pro Laptop with M2 chip: 33.74 cm (13.3-inch) Retina Display, 8GB RAM, 512GB SSD &#8203;&#8203;&#8203;&#8203;&#8203;&#8203;&#8203;Storage, Touch Bar, Backlit Keyboard, FaceTime HD Camera; Space Grey &#8203;&#8203;&#8203;&#8203;&#8203;&#8203;&#8203; ', 149900, 10, '5847466apple.jpg'),
(1008, 'Electronics', 'Apple iPhone Mobile', 'Apple iPhone', 79900, 10, '7117834app.jpg'),
(1009, 'Electronics', 'Lava Blaze 5G Mobile', 'Lava Blaze 5G (Glass Green, 6GB RAM, UFS 2.2 128GB Storage) | 5G Ready | 50MP AI Triple Camera | Upto 9GB Expandable RAM | Charger Included | Clean Android (No Bloatware) ', 11990, 2, '37744418lava.jpg'),
(1010, 'Electronics', 'realme narzo 50i Prime  Mobile', 'realme narzo 50i Prime (Dark Blue 4GB RAM+64GB Storage) Octa-core Processor | 5000 mAh Battery ', 7499, 2, '48899842realme.jpg'),
(1012, 'Electronics', 'Nokia C12 Mobile', 'Nokia C12 Android 12 (Go Edition) Smartphone, All-Day Battery, 4GB RAM (2GB RAM + 2GB Virtual RAM) + 64GB Capacity | Light Mint ', 6099, 2, '66016990nokia.jpg'),
(1013, 'Electronics', 'Samsung Mobile', 'Samsung Galaxy M33 5G (Mystique Green, 8GB, 128GB Storage) | 6000mAh Battery | Upto 16GB RAM with RAM Plus | Without Charger', 12000, 10, '3160613samsung.jpg'),
(1014, 'Electronics', 'Redmi A1  Mobile', 'Redmi A1 (Light Blue, 2GB RAM, 32GB Storage) | Segment Best AI Dual Cam | 5000mAh Battery | Leather Texture Design | Android 12', 7999, 10, '5236411redmia1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviewId` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `customerId` bigint(20) DEFAULT NULL,
  `reviewDate` date NOT NULL,
  `review` varchar(300) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`reviewId`, `productId`, `customerId`, `reviewDate`, `review`, `rating`) VALUES
(3, 1001, 9, '2023-04-03', 'good product', 5);

-- --------------------------------------------------------

--
-- Table structure for table `shippingaddress`
--

CREATE TABLE `shippingaddress` (
  `shipid` bigint(20) NOT NULL,
  `billId` bigint(20) NOT NULL,
  `customerId` bigint(20) NOT NULL,
  `custName` varchar(60) NOT NULL,
  `address` varchar(250) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `city` varchar(60) NOT NULL,
  `state` varchar(60) NOT NULL,
  `zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shippingaddress`
--

INSERT INTO `shippingaddress` (`shipid`, `billId`, `customerId`, `custName`, `address`, `mobile`, `city`, `state`, `zipcode`) VALUES
(13, 20233343707, 9, 'Customer', 'New york', '97987498789', 'Amsterdam', 'New York', '234234'),
(14, 202333362702, 9, 'Customer', 'New york', '97987498789', 'Amsterdam', 'New York', '234234');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transactionId` bigint(20) NOT NULL,
  `transactionDate` datetime DEFAULT NULL,
  `fromAccount` varchar(50) DEFAULT NULL,
  `toAccount` varchar(50) DEFAULT NULL,
  `amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transactionId`, `transactionDate`, `fromAccount`, `toAccount`, `amount`) VALUES
(11, '2023-04-03 10:04:31', '22222', '11111', 1140),
(12, '2023-04-03 10:36:24', '22222', '11111', 2280);

-- --------------------------------------------------------

--
-- Table structure for table `wearhouses`
--

CREATE TABLE `wearhouses` (
  `wearHouseId` int(11) NOT NULL,
  `location` varchar(300) NOT NULL,
  `city` varchar(60) NOT NULL,
  `zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wearhouses`
--

INSERT INTO `wearhouses` (`wearHouseId`, `location`, `city`, `zipcode`) VALUES
(1, 'Warangal', 'Amsterdam', '979234'),
(2, 'Warfangal', 'Amsterdam', '123123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accountNumber`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`billId`),
  ADD KEY `accountNumber` (`accountNumber`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerId`);

--
-- Indexes for table `customer_cart`
--
ALTER TABLE `customer_cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `productId` (`productId`),
  ADD KEY `customerId` (`customerId`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `productId` (`productId`),
  ADD KEY `customerId` (`customerId`),
  ADD KEY `billId` (`billId`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeId`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password` (`password`),
  ADD KEY `wearHouseId` (`wearHouseId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviewId`),
  ADD KEY `customerId` (`customerId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `shippingaddress`
--
ALTER TABLE `shippingaddress`
  ADD PRIMARY KEY (`shipid`),
  ADD KEY `billId` (`billId`),
  ADD KEY `customerId` (`customerId`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transactionId`),
  ADD KEY `fromAccount` (`fromAccount`),
  ADD KEY `toAccount` (`toAccount`);

--
-- Indexes for table `wearhouses`
--
ALTER TABLE `wearhouses`
  ADD PRIMARY KEY (`wearHouseId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer_cart`
--
ALTER TABLE `customer_cart`
  MODIFY `cartId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `orderId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1015;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviewId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shippingaddress`
--
ALTER TABLE `shippingaddress`
  MODIFY `shipid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transactionId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wearhouses`
--
ALTER TABLE `wearhouses`
  MODIFY `wearHouseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`accountNumber`) REFERENCES `accounts` (`accountNumber`);

--
-- Constraints for table `customer_cart`
--
ALTER TABLE `customer_cart`
  ADD CONSTRAINT `customer_cart_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`),
  ADD CONSTRAINT `customer_cart_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`);

--
-- Constraints for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD CONSTRAINT `customer_orders_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`),
  ADD CONSTRAINT `customer_orders_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`),
  ADD CONSTRAINT `customer_orders_ibfk_3` FOREIGN KEY (`billId`) REFERENCES `bills` (`billId`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`wearHouseId`) REFERENCES `wearhouses` (`wearHouseId`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`);

--
-- Constraints for table `shippingaddress`
--
ALTER TABLE `shippingaddress`
  ADD CONSTRAINT `shippingaddress_ibfk_1` FOREIGN KEY (`billId`) REFERENCES `bills` (`billId`),
  ADD CONSTRAINT `shippingaddress_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`fromAccount`) REFERENCES `accounts` (`accountNumber`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`toAccount`) REFERENCES `accounts` (`accountNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
