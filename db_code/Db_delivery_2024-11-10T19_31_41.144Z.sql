CREATE TABLE `deliveries` (
	`id` LINESTRING NOT NULL UNIQUE,
	`Status` LINESTRING,
	`trackingCode` LINESTRING,
	`customerId` LINESTRING,
	PRIMARY KEY(`id`)
);


CREATE TABLE `accounts` (
	`id` LINESTRING NOT NULL UNIQUE,
	`accountType` LINESTRING,
	PRIMARY KEY(`id`)
);


CREATE TABLE `Customers` (
	`id` LINESTRING NOT NULL UNIQUE,
	`accountId` LINESTRING,
	`Name` LINESTRING,
	`email` LINESTRING,
	PRIMARY KEY(`id`)
);


CREATE TABLE `payments` (
	`id` LINESTRING NOT NULL UNIQUE,
	`customerid` LINESTRING,
	`paymentMethod` LINESTRING,
	PRIMARY KEY(`id`)
);


ALTER TABLE `deliveries`
ADD FOREIGN KEY(`customerId`) REFERENCES `Customers`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `accounts`
ADD FOREIGN KEY(`id`) REFERENCES `Customers`(`accountId`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Customers`
ADD FOREIGN KEY(`id`) REFERENCES `payments`(`customerid`)
ON UPDATE NO ACTION ON DELETE NO ACTION;