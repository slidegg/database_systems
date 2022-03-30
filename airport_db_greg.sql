CREATE DATABASE airport_db;
USE airport_db;

CREATE TABLE airlines (
    Airline_ID int PRIMARY KEY,
    Airline_Name VARCHAR(50) UNIQUE NOT NULL,
    IATA_Code VARCHAR(255) UNIQUE NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE airplane (
    Model_number int PRIMARY KEY,
    Model_Name VARCHAR(50) UNIQUE NOT NULL,
    Airline_ID int UNIQUE NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY (Airline_ID) REFERENCES airlines(Airline_ID)
);

CREATE TABLE pilots (
    PID int PRIMARY KEY,
    Pilot_Name VARCHAR(50) UNIQUE NOT NULL,
    Salary FLOAT(9,2) UNIQUE NOT NULL,
    Airline_ID int UNIQUE NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY (Airline_ID) REFERENCES airlines(Airline_ID)
);

CREATE TABLE flights (
    Flight_code int PRIMARY KEY,
    Model_Number int UNIQUE NOT NULL,
    Airline_ID int UNIQUE NOT NULL,
    PID int UNIQUE NOT NULL,
    Departure VARCHAR(255) UNIQUE NOT NULL,
    Arrival VARCHAR(255) UNIQUE NOT NULL,
    Terminal_Number VARCHAR(50),
	Date_of_departure DATE NOT NULL,
	Has_Connection BIT(1),
    Source_location VARCHAR(255) UNIQUE NOT NULL,
    Destination_location VARCHAR(255) UNIQUE NOT NULL,
    Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY (Model_Number) REFERENCES airplane(Model_Number),
	FOREIGN KEY (Airline_ID) REFERENCES airlines(Airline_ID),
	FOREIGN KEY (PID) REFERENCES pilots(PID),
	FOREIGN KEY (Source_location) REFERENCES airports(AP_Name),
	FOREIGN KEY (Destination_location) REFERENCES airports(AP_Name)
    
);

CREATE TABLE passenger (
    Passport_Nr int PRIMARY KEY,
    Age int UNIQUE NOT NULL,
    Sex VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
	Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE ticket (
    Seat VARCHAR(50) NOT NULL UNIQUE,
    Flight_Code VARCHAR(255) NOT NULL,
    Price FLOAT(9,2) NOT NULL,
    Passport_Nr int NOT NULL,
	Created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    Updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    primary key (Seat, Flight_code),
    FOREIGN KEY (Passport_Nr) REFERENCES passenger(Passport_Nr)
);