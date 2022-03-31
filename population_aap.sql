### ASSUMING Airport_db is in use

# INSERTING INTO AIRLINES:
INSERT INTO airlines(Airline_ID, Airline_Name, IATA_Code)  VALUES
	(0, 'SAS', 'SK'),
    (1, 'Ryanair', 'FR'),
    (2, 'Lufthansa Group', 'LH'),
    (3, 'Delta Air Lines', 'DL'),
    (4, 'China Southern Airlines', 'CZ');
    
# INSERTING INTO Airplanes
INSERT INTO pilots(PID, Pilot_Name, Salary, Airline_ID) VALUES 
	(0, "Adams Armstrong", 45000, 0),
    (1, "James Hansen",  40500, 0),
    (2, "Robert Neil",  43200, 1),
    (3, "John Depp",  45100, 1),
    (4, "Michael Jackson",  38800, 2),
    (5, "William Macbeth",  39600, 2),
    (6, "David Anderson",  36300, 3),
    (7, "Kenneth Pløger",  55000, 3),
    (8, "Nadia Antonio",  46200, 3),
    (9, "Rabija Gandhi",  41500, 4),
    (10, "Sun Tzu",  39500, 4),
    (11, "Wi Tu Lo",  38000, 4);
    
# INSERTING INTO Airplanes
INSERT INTO airplanes(Model_Number, Model_Name, Airline_ID) VALUES
	(10120, "Sukhoi Superjet 100", 0),
    (10320, "Boeing 737-800", 1),
    (10121, "Sukhoi Superjet 100", 2),
    (11230, "Airbus A330-300", 3),
    (11231, "Airbus A330-300", 3),
    (12310, "Embraer 170/175", 4),
    (12311, "Embraer 170/175 ", 4);