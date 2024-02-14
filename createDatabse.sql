USE MASTER;
GO
IF EXISTS(	SELECT	name
			FROM	MASTER..sysdatabases
			WHERE	name = N'Sunny_spot'
		 )
DROP DATABASE Sunny_spot;
GO


CREATE DATABASE Sunny_spot;
GO
USE Sunny_spot;
Go

CREATE TABLE Cabin (
    cabinID BIGINT identity(1,1) NOT NULL PRIMARY KEY ,
    cabinType VARCHAR(150) NOT NULL,
    cabinDescription VARCHAR(255),
    pricePerNight DECIMAL(10,2) NOT NULL CHECK (pricePerNight >= 0),
    pricePerWeek DECIMAL(10,2) NOT NULL, CHECK (pricePerWeek <= pricePerNight * 5),
    photo VARCHAR(50) default 'testcabin.jpeg'
);

CREATE TABLE Inclusion (
    incID BIGINT identity(1,1) NOT NULL PRIMARY KEY ,
    incName VARCHAR(50) NOT NULL,
    incDetails VARCHAR(255)
);

CREATE TABLE CabinInclusion (
    cabinIncID BIGINT identity(1,1) NOT NULL PRIMARY KEY,
    cabinID BIGINT NOT NULL,
    incID BIGINT NOT NULL,
    FOREIGN KEY (cabinID) REFERENCES Cabin(cabinID),
    FOREIGN KEY (incID) REFERENCES Inclusion(incID)
);

CREATE TABLE Admin (
    staffID BIGINT identity(1,1) NOT NULL PRIMARY KEY,
    userName VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(200) NOT NULL,
    address VARCHAR(200) NOT NULL,
    mobile VARCHAR(10) NOT NULL
);

CREATE TABLE Log (
    logID BIGINT identity(1,1) NOT NULL PRIMARY KEY,
    staffID BIGINT NOT NULL,
    loginDateTime datetime NOT NULL,
    logoutDateTime datetime NOT NULL,
    FOREIGN KEY (staffID) REFERENCES Admin(staffID)
);


select * from Cabin


INSERT INTO Cabin (CabinID, cabinType, cabinDescription, pricePerNight, pricePerWeek, photo)
VALUES 
(1, 'Standard cabin sleeps 4', 'A 2 bedroom cabin with double in main and either double or 2 singles in the second bedroom', 100, 500, 'stCabin.jpg'),
(2, 'Standard open plan cabin sleeps 4', 'An open plan cabin with double bed and set of bunks', 120, 600, 'stOpenCabin.jpg'),
(3, 'Deluxe cabin sleeps 4', 'A 2 bedroom cabin with queen bed and 2 singles in the second bedroom', 140, 700, 'deluxCabin.jpg'),
(4, 'Villa sleeps 4', 'A 2 bedroom cabin with queen bed plus another bedroom with 2 single beds', 150, 750, 'villa.jpg'),
(5, 'Spa villa sleeps 4', 'A 2 bedroom cabin with queen bed plus another bedroom with 2 single beds and spa bath', 200, 1000, 'spaVilla.jpg'),
(6, 'Grass powered site', 'Powered sites on grass', 40, 200, 'grassPower.jpg'),
(7, 'Slab powered', 'Powered sites with slab', 50, 250, 'slabPower.jpg');


INSERT INTO Admin (staffID, userName, password, firstName, lastName, address, mobile)
VALUES 
(1, 'admin1', 'password1', 'A', 'DOG', '123 ABC', '12345678'),
(2, 'admin2', 'password2', 'B', 'CAT', '456 FGH', '87654321');
select * from admin

INSERT INTO Inclusion (incName, incDetails)
VALUES 
('1 bathroom', ''),
('1+ bathroom', '1 bathroom and separate toilet'),
('2 bathroom', ''),
('Air conditioner', 'Reverse cycle'),
('Ceiling fans', ''),
('Bunk bed', ''),
('2 single beds', ''),
('Double bed', ''),
('Dishwasher', ''),
('DVD Player', ''),
('Hair dryer', '');

select * from Inclusion


-- Inserting records for Std Cabin
INSERT INTO CabinInclusion (cabinIncID, cabinID, incID)
VALUES 
(1, 1, 1), -- 1 bathroom
(2, 1, 6), -- Bunk bed
(3, 1, 8); -- Double bed

-- Inserting records for Std Open plan Cabin
INSERT INTO CabinInclusion (cabinIncID, cabinID, incID)
VALUES 
(4, 2, 1),  -- 1+ bathroom
(5, 2, 5),  -- Ceiling fans 
(6, 2, 6),  -- Bunk bed
(7, 2, 8),  -- Double bed
(8, 2, 11); -- Hair dryer 

-- Inserting records for Deluxe Cabin
INSERT INTO CabinInclusion (cabinIncID, cabinID, incID)
VALUES 
(9, 3, 3),  -- 2 bathroom
(10, 3, 4),  -- Air conditioner
(11, 3, 8),  -- 2 single beds
(12, 3, 9),  -- Double bed
(13, 3, 10), -- DVD Player
(14, 3, 11); -- Hair dryer 

-- Inserting records for Villa
INSERT INTO CabinInclusion (cabinIncID, cabinID, incID)
VALUES 
(15, 4, 3),  -- 2 bathroom
(16, 4, 4),  -- Air conditioner
(17, 4, 8),  -- 2 single beds
(18, 4, 8),  -- Double bed
(19, 4, 9),  -- Dishwasher
(20, 4, 10), -- DVD Player
(21, 4, 11); -- Hair dryer

-- Inserting records for Spa Villa
INSERT INTO CabinInclusion (cabinIncID, cabinID, incID)
VALUES 
(22, 5, 3),  -- 2 bathroom
(23, 5, 4),  -- Air conditioner
(24, 5, 7),  -- 2 single beds
(25, 5, 8),  -- Double bed
(26, 5, 9),  -- Dishwasher
(27, 5, 10), -- DVD Player
(28, 5, 11); -- Hair dryer

Select * from CabinInclusion
--delete from CabinInclusion

