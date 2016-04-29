CREATE TABLE customer (
  `customerId` INT NOT NULL AUTO_INCREMENT,
  `customerName` VARCHAR(45) NOT NULL,
    `customerPhone` INT NULL,
  `customerEmail` VARCHAR(45) NOT NULL,
  `customerAddress` VARCHAR(45) NOT NULL,
  `customerState` VARCHAR(45) NULL,
  `customerCity` VARCHAR(45) NOT NULL,
  `customerZip` INT NOT NULL,
  `customerPassword` VARCHAR(45) NULL,
  PRIMARY KEY (`customerId`),
  UNIQUE INDEX `customerPhone_UNIQUE` (`customerPhone` ASC),
  UNIQUE INDEX `customerEmail_UNIQUE` (`customerEmail` ASC))
COMMENT = 'stores customer data';


CREATE TABLE `category` (
  `categoryName` VARCHAR(45) NOT NULL,
  `categoryDetails` VARCHAR(45) NULL,
  PRIMARY KEY (`categoryName`));
  
  
  CREATE TABLE `supplier` (
  `supplierId` INT NOT NULL AUTO_INCREMENT,
  `supplierName` VARCHAR(45) NOT NULL,
  `supplierAddress` VARCHAR(45) NOT NULL,
  `supplierPhone` INT NOT NULL,
  `supplierEmail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`supplierid`));
  
  CREATE TABLE `product` (
  `productId` INT NOT NULL AUTO_INCREMENT,
  `productName` VARCHAR(45) NOT NULL,
  `categoryName` VARCHAR(45) NOT NULL,
  `productAvailability` VARCHAR(45) NULL,
  `productQuantity` INT NULL DEFAULT 'yes',
  `productPrice` INT NULL,
  `supplierId` INT NULL,
  PRIMARY KEY (`productId`),
  COMMENT = 'Contain details of products ';

CREATE TABLE `order` (
  `orderId` INT NOT NULL AUTO_INCREMENT,
  `paymentId` INT NOT NULL,
  `customerId` INT NOT NULL,
  `orderStatus` VARCHAR(45) NOT NULL,
  `shipmentId` INT NOT NULL,
  PRIMARY KEY (`orderId`))
COMMENT = 'stores the details of order placed by customer';

CREATE TABLE `admin` (
  `AdminId` INT NOT NULL AUTO_INCREMENT,
  `AdminName` VARCHAR(45) NOT NULL,
  `AdminEmail` VARCHAR(45) NOT NULL,
  `AdminPhone` VARCHAR(45) NOT NULL,
  `AdminPassword` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`AdminId`))
COMMENT = 'manages all the transactions and check whether there is any requirement';

CREATE TABLE `shipment` (
  `shipmentId` INT NOT NULL AUTO_INCREMENT,
  `shipmentAddress` VARCHAR(45) NOT NULL,
  `shipmentType` VARCHAR(45) NOT NULL,
  `shippedDate` DATETIME NOT NULL,
  PRIMARY KEY (`shipmentId`))
COMMENT = 'Contains shipment details';

CREATE TABLE `complaint` (
  `complaintId` INT NOT NULL AUTO_INCREMENT,
  `customerId` VARCHAR(45) NOT NULL,
  `complaintDetail` VARCHAR(45) NULL,
  PRIMARY KEY (`complaintId`));
  
  CREATE TABLE `payment` (
  `paymentId` INT NOT NULL AUTO_INCREMENT,
  `paymentDetail` VARCHAR(45) NOT NULL,
  `customerId` INT NOT NULL,
  `paymentMode` VARCHAR(45) NOT NULL,
  `cardType` VARCHAR(45) NULL,
  PRIMARY KEY (`paymentId`));






