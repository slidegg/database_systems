DROP DATABASE IF EXISTS airport_db;
CREATE DATABASE airport_db;

USE airport_db;

CREATE TABLE airlines (
    Airline_ID int PRIMARY KEY,
    Airline_Name VARCHAR(50) UNIQUE NOT NULL,
    IATA_Code VARCHAR(255) UNIQUE NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE stores (
    Store_ID INT UNIQUE NOT NULL PRIMARY KEY,
    Store_Name VARCHAR(250) NOT NULL,
    Store_Type VARCHAR(250) NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE city (
    City_Name VARCHAR(250) PRIMARY KEY,
    Country VARCHAR(250) UNIQUE NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE airplane (
    Model_number int PRIMARY KEY,
    Model_Name VARCHAR(50) NOT NULL,
    Airline_ID int NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (Airline_ID) REFERENCES airlines(Airline_ID)
);

CREATE TABLE pilots (
    PID int PRIMARY KEY,
    Pilot_Name VARCHAR(50) UNIQUE NOT NULL,
    Salary FLOAT(9, 2) NOT NULL,
    Airline_ID int NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (Airline_ID) REFERENCES airlines(Airline_ID)
);

CREATE TABLE airports (
    AP_Name VARCHAR(250) UNIQUE NOT NULL PRIMARY KEY,
    City_Name VARCHAR(250) UNIQUE NOT NULL,
    Capacity VARCHAR(250) NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (City_Name) REFERENCES city(City_Name)
);

CREATE TABLE terminal (
    Terminal_Number VARCHAR(50),
    AP_Name VARCHAR(250),
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (Terminal_Number, AP_Name),
    FOREIGN KEY (AP_Name) REFERENCES airports(AP_Name)
);

CREATE TABLE flights (
    Flight_code VARCHAR(255) PRIMARY KEY,
    Model_Number int NOT NULL,
    Airline_ID int NOT NULL,
    Departure VARCHAR(255) NOT NULL,
    Arrival VARCHAR(255) NOT NULL,
    Terminal_Number VARCHAR(50),
    Date_of_departure DATE NOT NULL,
    Has_Connection BIT(1),
    Source_location VARCHAR(255) NOT NULL,
    Destination_location VARCHAR(255) NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (Model_Number) REFERENCES airplane(Model_Number),
    FOREIGN KEY (Terminal_Number) REFERENCES terminal(Terminal_Number),
    FOREIGN KEY (Airline_ID) REFERENCES airlines(Airline_ID),
    FOREIGN KEY (Source_location) REFERENCES airports(AP_Name),
    FOREIGN KEY (Destination_location) REFERENCES airports(AP_Name)
);

CREATE TABLE passenger (
    Passport_Nr VARCHAR(50) PRIMARY KEY,
    Age int UNIQUE NOT NULL,
    Sex VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE ticket (
    Seat VARCHAR(50) NOT NULL UNIQUE,
    Flight_Code VARCHAR(255) NOT NULL,
    Price FLOAT(9, 2) NOT NULL,
    Passport_Nr VARCHAR(50) NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key (Seat, Flight_code),
    FOREIGN KEY (Passport_Nr) REFERENCES passenger(Passport_Nr),
    FOREIGN KEY (Flight_Code) REFERENCES flights(Flight_Code)
);

CREATE TABLE timeslot (
    Time_ID int PRIMARY KEY,
    Time_Slot time(0) UNIQUE NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE flight_pilots (
    PID int UNIQUE NOT NULL,
    Flight_Code VARCHAR(255) UNIQUE NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    primary key (PID, Flight_Code),
    FOREIGN KEY (PID) REFERENCES pilots(PID),
    FOREIGN KEY (Flight_Code) REFERENCES flights(Flight_Code)
);