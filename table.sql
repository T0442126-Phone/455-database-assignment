CREATE DATABASE CruiseBookingSystem;
USE CruiseBookingSystem;

CREATE TABLE Passengers (
    PassengerID VARCHAR(5) PRIMARY KEY,
    PassengerName VARCHAR (100) NOT NULL CHECK (PassengerName <> ''),
    Cabin INT
);

CREATE TABLE Cruises (
    CruiseNo INT AUTO_INCREMENT PRIMARY KEY,
    CruiseName VARCHAR(100) NOT NULL CHECK (CruiseName <> '')
);

CREATE TABLE Orders (
    OrderID VARCHAR(5) PRIMARY KEY,
    PassengerID VARCHAR(5),
    CruiseNo INT,
    TotalCost DECIMAL(10, 2),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(passengerID),
    FOREIGN KEY (CruiseNo) REFERENCES Cruises(cruiseNo)
);


CREATE TABLE Excursion_Leaders (
    ExcursionLeaderID VARCHAR(5) PRIMARY KEY,
    ExcursionLeader VARCHAR(100),
    Port VARCHAR(50)
);

CREATE TABLE Excursions (
    ExcursionNo VARCHAR(5) PRIMARY KEY,
    Excursion VARCHAR(100),
    PricePerExcursion DECIMAL(10, 2),
    ExcursionLeaderID VARCHAR(5),
    FOREIGN KEY (ExcursionLeaderID) REFERENCES Excursion_Leaders(ExcursionLeaderID)
);

CREATE TABLE Order_Excursions (
    OrderID VARCHAR(5),
    ExcursionNo VARCHAR(5),
    Qty INT,
    PRIMARY KEY (orderID, excursionNo),
    FOREIGN KEY (orderID) REFERENCES Orders(orderID),
    FOREIGN KEY (excursionNo) REFERENCES Excursions(excursionNo)
);