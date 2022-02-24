DROP TABLE IF EXISTS [Taverns]; 
DROP TABLE IF EXISTS [Users]; 
DROP TABLE IF EXISTS [Roles]; 
DROP TABLE IF EXISTS [Locations]; 
DROP TABLE IF EXISTS [BasementRats]; 
DROP TABLE IF EXISTS [Supplies]; 
DROP TABLE IF EXISTS [Inventories]; 
DROP TABLE IF EXISTS [ReceivedItems]; 
DROP TABLE IF EXISTS [Services]; 
DROP TABLE IF EXISTS [Statuses]; 
DROP TABLE IF EXISTS [Sales]; 

CREATE TABLE [Taverns] (
	ID INT IDENTITY (1,1),
	TavernName varchar(250),
	FloorCount INT,
	UserID INT,
	LocationID INT
);

INSERT INTO Taverns (TavernName,FloorCount,UserID,LocationID)
VALUES ('Moes Tavern',3,1,2);
INSERT INTO Taverns (TavernName,FloorCount,UserID,LocationID)
VALUES ('Joes Tavern',2,2,1);
INSERT INTO Taverns (TavernName,FloorCount,UserID,LocationID)
VALUES ('Larys Tavern',3,3,3);
INSERT INTO Taverns (TavernName,FloorCount,UserID,LocationID)
VALUES ('Rons Tavern',4,4,4);
INSERT INTO Taverns (TavernName,FloorCount,UserID,LocationID)
VALUES ('Harrys Tavern',4,1,4);
INSERT INTO Taverns (TavernName,FloorCount,UserID,LocationID)
VALUES ('Lisaa Tavern',2,1,5);

CREATE TABLE [Users] (
	ID INT IDENTITY (1,1),
	UserName varchar(50),
	RoleID INT
);

INSERT INTO Users(UserName,RoleID)
VALUES ('Monica',1);
INSERT INTO Users(UserName,RoleID)
VALUES ('Harry',2);
INSERT INTO Users(UserName,RoleID)
VALUES ('Jon',2);
INSERT INTO Users(UserName,RoleID)
VALUES ('Laura',3);
INSERT INTO Users(UserName,RoleID)
VALUES ('Jessica',2);
INSERT INTO Users(UserName,RoleID)
VALUES ('Tom',2);

CREATE TABLE [Roles] (
	ID INT IDENTITY (1,1),
	RoleName varchar(50),
	RoleDescription varchar(1000)
);

INSERT INTO Roles(RoleName,RoleDescription)
VALUES ('Owner','The owner of the tavern manage the whole building and all employees.');
INSERT INTO Roles(RoleName,RoleDescription)
VALUES ('Manager','Manager take care of everything that is going on a specific floor.');
INSERT INTO Roles(RoleName,RoleDescription)
VALUES ('Bartender','Bartender prepare best cocktails in the area.');
INSERT INTO Roles(RoleName,RoleDescription)
VALUES ('Waitress','Waitress keeps an eye on everybodys table and deliver food and drinks to the clients.');
INSERT INTO Roles(RoleName,RoleDescription)
VALUES ('Cheff','Cheff prepares food and makes people want to come back.');
INSERT INTO Roles(RoleName,RoleDescription)
VALUES ('Janitor','Janitor cleans the mess and all the dirt from the floor, tables and pretty much everything.');

CREATE TABLE [Locations] (
	ID INT IDENTITY (1,1),
	LocationName varchar(50),
	LocationAddress varchar(50)
);

INSERT INTO Locations(LocationName,LocationAddress)
VALUES ('New York','23 West 32 South Street, New York, NY 04627');
INSERT INTO Locations(LocationName,LocationAddress)
VALUES ('Hollywood','22 Freedom Street, Hollywood, LA 20345');
INSERT INTO Locations(LocationName,LocationAddress)
VALUES ('Phildalphia','3453 Roosevalt Ave, Philadelphia, PA 19086');
INSERT INTO Locations(LocationName,LocationAddress)
VALUES ('Princeton','567 Main Street, Princeton, NJ 08346');
INSERT INTO Locations(LocationName,LocationAddress)
VALUES ('Las Vegas','1897 Casino Road, Las Vegas, NV 98736');
INSERT INTO Locations(LocationName,LocationAddress)
VALUES ('Las Vegas','1897 Casino Road, Las Vegas, NV 98736');

CREATE TABLE [BasementRats] (
	ID INT IDENTITY (1,1),
	RateName varchar (50),
	TavernID INT
);

INSERT INTO BasementRats(RateName,TavernID)
VALUES ('Walley',2);
INSERT INTO BasementRats(RateName,TavernID)
VALUES ('Ricky',1);
INSERT INTO BasementRats(RateName,TavernID)
VALUES ('Snoopy',3);
INSERT INTO BasementRats(RateName,TavernID)
VALUES ('Large',4);
INSERT INTO BasementRats(RateName,TavernID)
VALUES ('Fatty',2);
INSERT INTO BasementRats(RateName,TavernID)
VALUES ('Awesome',2);


CREATE TABLE [Supplies] (
	ID INT IDENTITY (1,1),
	SupplyName varchar(50),
	UnitName varchar(20),
	InventoryID INT,
	TavernID INT
);

INSERT INTO Supplies(SupplyName,UnitName,InventoryID,TavernID)
VALUES ('Strong Ale','Gallon',1,2);
INSERT INTO Supplies(SupplyName,UnitName,InventoryID,TavernID)
VALUES ('Wine','Litter',2,1);
INSERT INTO Supplies(SupplyName,UnitName,InventoryID,TavernID)
VALUES ('Apple','lbs',3,3);
INSERT INTO Supplies(SupplyName,UnitName,InventoryID,TavernID)
VALUES ('Cherry','kg',4,3);
INSERT INTO Supplies(SupplyName,UnitName,InventoryID,TavernID)
VALUES ('Wiskey','Gallon',5,3);
INSERT INTO Supplies(SupplyName,UnitName,InventoryID,TavernID)
VALUES ('Vodka','Bottle',6,5);

CREATE TABLE [Inventories] (
	ID INT IDENTITY (1,1),
	Quantity Float,
	DateUpdated DATE
);

INSERT INTO Inventories(Quantity,DateUpdated)
VALUES (30.4,'2021-10-22');
INSERT INTO Inventories(Quantity,DateUpdated)
VALUES (12.9,'2022-01-15');
INSERT INTO Inventories(Quantity,DateUpdated)
VALUES (55.02,'2021-12-28');
INSERT INTO Inventories(Quantity,DateUpdated)
VALUES (32.65,'2022-11-07');
INSERT INTO Inventories(Quantity,DateUpdated)
VALUES (322.2,'2021-12-29');
INSERT INTO Inventories(Quantity,DateUpdated)
VALUES (60,'2022-02-17');

CREATE TABLE [ReceivedItems] (
	ID INT IDENTITY (1,1),
	Cost FLOAT,
	Quantity INT,
	DateUpdated DATE,
	TavernID INT,
	SupplyID INT
);

INSERT INTO ReceivedItems(Cost,Quantity,DateUpdated,TavernID,SupplyID)
VALUES (12.99,45,'2022-01-11',5,2);
INSERT INTO ReceivedItems(Cost,Quantity,DateUpdated,TavernID,SupplyID)
VALUES (45.99,45,'2022-01-12',4,1);
INSERT INTO ReceivedItems(Cost,Quantity,DateUpdated,TavernID,SupplyID)
VALUES (4.99,45,'2022-01-13',4,3);
INSERT INTO ReceivedItems(Cost,Quantity,DateUpdated,TavernID,SupplyID)
VALUES (5.99,45,'2022-01-15',4,4);
INSERT INTO ReceivedItems(Cost,Quantity,DateUpdated,TavernID,SupplyID)
VALUES (54.99,45,'2022-01-16',1,4);
INSERT INTO ReceivedItems(Cost,Quantity,DateUpdated,TavernID,SupplyID)
VALUES (33.99,45,'2022-01-22',3,1);

CREATE TABLE [Services] (
	ID INT IDENTITY (1,1),
	ServiceName varchar(50),
	StatusID INT,
	TavernID INT
);

INSERT INTO Services(ServiceName,StatusID,TavernID)
VALUES ('Weapon Sharpening',1, 4);
INSERT INTO Services(ServiceName,StatusID,TavernID)
VALUES ('Pool',1, 1);
INSERT INTO Services(ServiceName,StatusID,TavernID)
VALUES ('Weapon Sharpening',2, 2);
INSERT INTO Services(ServiceName,StatusID,TavernID)
VALUES ('Pool',2, 2);
INSERT INTO Services(ServiceName,StatusID,TavernID)
VALUES ('Ping Pong',2, 5);
INSERT INTO Services(ServiceName,StatusID,TavernID)
VALUES ('Soccer',2, 6);

CREATE TABLE [Statuses] (
	ID INT IDENTITY (1,1),
	StatusName varchar(50),
);

INSERT INTO Statuses(StatusName)
VALUES ('Active');
INSERT INTO Statuses(StatusName)
VALUES ('Inactive');

CREATE TABLE [Sales] (
	ID INT IDENTITY (1,1),
	GuestName varchar(50),
	Price FLOAT,
	Quantity INT,
	DatePurchased DATE,
	ServiceID INT,
	TavernID INT
);

INSERT INTO Sales(GuestName,Price,Quantity,DatePurchased,ServiceID,TavernID)
VALUES ('Tom',34.67,3,'2022-01-23',2,4);
INSERT INTO Sales(GuestName,Price,Quantity,DatePurchased,ServiceID,TavernID)
VALUES ('Harry',45.77,3,'2021-12-23',1,1);
INSERT INTO Sales(GuestName,Price,Quantity,DatePurchased,ServiceID,TavernID)
VALUES ('Tom',12.90,3,'2021-11-13',4,1);
INSERT INTO Sales(GuestName,Price,Quantity,DatePurchased,ServiceID,TavernID)
VALUES ('Larry',124.56,3,'2021-10-02',4,5);
INSERT INTO Sales(GuestName,Price,Quantity,DatePurchased,ServiceID,TavernID)
VALUES ('James',206.76,3,'2021-11-11',5,4);
INSERT INTO Sales(GuestName,Price,Quantity,DatePurchased,ServiceID,TavernID)
VALUES ('Jared',10.78,3,'2022-02-16',6,3);

SELECT *
FROM Taverns;
SELECT *
FROM Users;
SELECT *
FROM Roles;
SELECT *
FROM Locations;
SELECT *
FROM BasementRats;
SELECT *
FROM Supplies;
SELECT *
FROM Inventories;
SELECT *
FROM ReceivedItems;
SELECT *
FROM Services;
SELECT *
FROM Statuses;
SELECT *
FROM Sales;
