#Population for airports and cities and terminals
USE airport_db;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM
    city;

insert into
    city(City_Name, Country)
Values
    ('Budapest', 'Hungary'),
    ('Copenhagen', 'Denmark'),
    ('Lima', 'Peru'),
    ('Luxembourg', 'Luxembourg'),
    ('Oslo', 'Norway'),
    ('Doha', 'Qatar'),
    ('Tokyo', 'Japan'),
    ('Paris', 'France');

DELETE FROM
    airports;

insert into
    airports(AP_Name, City_Name, Capacity)
Values
    ('Ferenc Liszt', 'Budapest', 500000),
    ('Copenhagen airport', 'Copenhagen', 50000),
    (
        'Jorge Chavez international airport',
        'Lima',
        10000
    ),
    ('Luxembourg Findel airport', 'Luxembourg', 10000),
    ('Oslo airport', 'Oslo', 10000),
    ('Hamad International airport', 'Doha', 12500),
    ('Haneda Airport', 'Tokyo', 30000),
    ('Charles de gaulle airport', 'Paris', 9000);

#Terminals
DELETE FROM
    terminal;

insert into
    terminal(Terminal_Number, AP_Name)
Values
    (1, 'Ferenc Liszt'),
    (2, 'Ferenc Liszt'),
    (3, 'Ferenc Liszt'),
    (1, 'Copenhagen airport'),
    (2, 'Copenhagen airport'),
    (1, 'Jorge Chavez international airport'),
    (2, 'Jorge Chavez international airport'),
    (1, 'Luxembourg Findel airport'),
    (2, 'Luxembourg Findel airport'),
    (3, 'Luxembourg Findel airport'),
    (1, 'Oslo airport'),
    (1, 'Hamad International airport'),
    (2, 'Hamad International airport'),
    (1, 'Haneda Airport'),
    (1, 'Charles de gaulle airport');

DELETE FROM
    timeslot;

INSERT INTO
    timeslot(Time_ID, Time_Slot)
VALUES
    (1, '00:00'),
    (2, '00:15'),
    (3, '00:30'),
    (4, '00:45'),
    (5, '01:00'),
    (6, '01:15'),
    (7, '01:30'),
    (8, '01:45'),
    (9, '02:00'),
    (10, '02:15'),
    (11, '02:30'),
    (12, '02:45'),
    (13, '03:00'),
    (14, '03:15'),
    (15, '03:30'),
    (16, '03:45'),
    (17, '04:00'),
    (18, '04:15'),
    (19, '04:30'),
    (20, '04:45'),
    (21, '05:00'),
    (22, '05:15'),
    (23, '05:30'),
    (24, '05:45'),
    (25, '06:00'),
    (26, '06:15'),
    (27, '06:30'),
    (28, '06:45'),
    (29, '07:00'),
    (30, '07:15'),
    (31, '07:30'),
    (32, '07:45'),
    (33, '08:00'),
    (34, '08:15'),
    (35, '08:30'),
    (36, '08:45'),
    (37, '09:00'),
    (38, '09:15'),
    (39, '09:30'),
    (40, '09:45'),
    (41, '10:00'),
    (42, '10:15'),
    (43, '10:30'),
    (44, '10:45'),
    (45, '11:00'),
    (46, '11:15'),
    (47, '11:30'),
    (48, '11:45'),
    (49, '12:00'),
    (50, '12:15'),
    (51, '12:30'),
    (52, '12:45'),
    (53, '13:00'),
    (54, '13:15'),
    (55, '13:30'),
    (56, '13:45'),
    (57, '14:00'),
    (58, '14:15'),
    (59, '14:30'),
    (60, '14:45'),
    (61, '15:00'),
    (62, '15:15'),
    (63, '15:30'),
    (64, '15:45'),
    (65, '16:00'),
    (66, '16:15'),
    (67, '16:30'),
    (68, '16:45'),
    (69, '17:00'),
    (70, '17:15'),
    (71, '17:30'),
    (72, '17:45'),
    (73, '18:00'),
    (74, '18:15'),
    (75, '18:30'),
    (76, '18:45'),
    (77, '19:00'),
    (78, '19:15'),
    (79, '19:30'),
    (80, '19:45'),
    (81, '20:00'),
    (82, '20:15'),
    (83, '20:30'),
    (84, '20:45'),
    (85, '21:00'),
    (86, '21:15'),
    (87, '21:30'),
    (88, '21:45'),
    (89, '22:00'),
    (90, '22:15'),
    (91, '22:30'),
    (92, '22:45'),
    (93, '23:00'),
    (94, '23:15'),
    (95, '23:30'),
    (96, '23:45');

DELETE FROM
    passenger;

insert into
    passenger(Passport_Nr, Age, Sex, Email)
Values
    (
        'GR23232311',
        '25',
        'MALE',
        'passenger_gr@dtu.com'
    ),
    (
        'BU35265464',
        '26',
        'MALE',
        'passenger_bu@dtu.com'
    ),
    (
        'DA54416575',
        '32',
        'FEMALE',
        'passenger_da@dtu.com'
    ),
    (
        'DE54546422',
        '40',
        'FEMALE',
        'passenger_de@dtu.com'
    ),
    (
        'US15444644',
        '50',
        'FEMALE',
        'passenger_us@dtu.com'
    ),
    (
        'IT15413214',
        '18',
        'MALE',
        'passenger_it@dtu.com'
    ),
    (
        'UK54613146',
        '21',
        'FEMALE',
        'passenger_uk@dtu.com'
    ),
    (
        'FR54416198',
        '70',
        'FEMALE',
        'passenger_fr@dtu.com'
    );

DELETE FROM
    airlines;

INSERT INTO
    airlines(Airline_ID, Airline_Name, IATA_Code)
VALUES
    (0, 'SAS', 'SK'),
    (1, 'Ryanair', 'FR'),
    (2, 'Lufthansa Group', 'LH'),
    (3, 'Delta Air Lines', 'DL'),
    (4, 'China Southern Airlines', 'CZ');

DELETE FROM
    pilots;

INSERT INTO
    pilots(PID, Pilot_Name, Salary, Airline_ID)
VALUES
    (0, "Adams Armstrong", 45000, 0),
    (1, "James Hansen", 40500, 0),
    (2, "Robert Neil", 43200, 1),
    (3, "John Depp", 45100, 1),
    (4, "Michael Jackson", 38800, 2),
    (5, "William Macbeth", 39600, 2),
    (6, "David Anderson", 36300, 3),
    (7, "Kenneth Pløger", 55000, 3),
    (8, "Nadia Antonio", 46200, 3),
    (9, "Rabija Gandhi", 41500, 4),
    (10, "Sun Tzu", 39500, 4),
    (11, "Wi Tu Lo", 38000, 4);

DELETE FROM
    airplane;

INSERT INTO
    airplane(Model_Number, Model_Name, Airline_ID)
VALUES
    (10120, "Sukhoi Superjet 100", 0),
    (10320, "Boeing 737-800", 1),
    (10121, "Sukhoi Superjet 100", 2),
    (11230, "Airbus A330-300", 3),
    (11231, "Airbus A330-300", 3),
    (12310, "Embraer 170/175", 4),
    (12311, "Embraer 170/175 ", 4);

DELETE FROM
    flights;

INSERT INTO
    flights(
        Flight_Code,
        Model_Number,
        Airline_ID,
        Departure,
        Arrival,
        Terminal_Number,
        Date_of_departure,
        Has_Connection,
        Source_location,
        Destination_location
    )
VALUES
    (
        100,
        10120,
        0,
        74,
        78,
        1,
        curdate(),
        0,
        'Copenhagen airport',
        'Ferenc Liszt'
    ),
    (
        101,
        10320,
        1,
        14,
        22,
        1,
        curdate(),
        0,
        'Ferenc Liszt',
        'Oslo airport'
    ),
    (
        102,
        10121,
        2,
        12,
        18,
        2,
        curdate(),
        0,
        'Copenhagen airport',
        'Jorge Chavez international airport'
    ),
    (
        103,
        11230,
        3,
        31,
        40,
        1,
        curdate(),
        1,
        'Haneda Airport',
        'Copenhagen airport'
    ),
    (
        104,
        11231,
        3,
        31,
        35,
        2,
        curdate(),
        0,
        'Jorge Chavez international airport',
        'Copenhagen airport'
    ),
    (
        105,
        12310,
        4,
        12,
        22,
        3,
        curdate(),
        1,
        'Luxembourg Findel airport',
        'Ferenc Liszt'
    ),
    (
        106,
        10121,
        2,
        14,
        24,
        1,
        curdate(),
        0,
        'Oslo airport',
        'Haneda Airport'
    ),
    (
        107,
        12311,
        4,
        2,
        22,
        1,
        curdate(),
        0,
        'Charles de gaulle airport',
        'Haneda Airport'
    ),
    (
        108,
        12311,
        4,
        83,
        90,
        2,
        curdate(),
        0,
        'Ferenc Liszt',
        'Oslo airport'
    ),
    (
        109,
        10320,
        1,
        74,
        84,
        1,
        curdate(),
        1,
        'Charles de gaulle airport',
        'Ferenc Liszt'
    );

DELETE FROM
    ticket;

insert into
    ticket(Seat, Flight_Code, Price, Passport_Nr)
Values
    ('1a', '100', 300, 'GR23232311'),
    ('2c', '101', 400, 'BU35265464'),
    ('10a', '102', 350, 'DA54416575'),
    ('10b', '103', 120, 'DE54546422'),
    ('15c', '104', 750, 'US15444644'),
    ('15b', '105', 1250, 'IT15413214'),
    ('20a', '106', 900, 'UK54613146'),
    ('20b', '108', 850, 'FR54416198');

DELETE FROM
    flight_pilots;

INSERT INTO
    flight_pilots(PID, Flight_Code)
VALUES
    (0, 100),
    (1, 100),
    (2, 101),
    (3, 101),
    (4, 101),
    (3, 102),
    (5, 103),
    (6, 103),
    (5, 104),
    (7, 104),
    (8, 105),
    (9, 105),
    (1, 106),
    (2, 106),
    (5, 107),
    (10, 108),
    (11, 109);

DELETE FROM
    stores;

INSERT INTO
    stores(Store_ID, Store_Name, Store_Type)
VALUES
    (0, "StarBucks", "Food & Drinks"),
    (1, "WHSmith", "Books & Magazines"),
    (2, "Airport Pharmacy", "Medicine"),
    (3, "ECCO", "Fashion"),
    (4, "Global Exchange", "Currency"),
    (5, "LEGO", "Toys"),
    (6, "Gorm's", "Food & Drinks");

DELETE FROM
    airport_stores;

INSERT INTO
    airport_stores(Store_ID, AP_Name)
VALUES
    (0, "Ferenc Liszt"),
    (0, "Jorge Chavez international airport"),
    (0, "Oslo airport"),
    (1, "Ferenc Liszt"),
    (1, "Copenhagen airport"),
    (1, "Hamad International airport"),
    (2, "Copenhagen airport"),
    (2, "Jorge Chavez international airport"),
    (2, "Haneda Airport"),
    (3, "Copenhagen airport"),
    (3, "Oslo airport"),
    (3, "Charles de gaulle airport"),
    (4, "Ferenc Liszt"),
    (4, "Haneda Airport"),
    (4, "Charles de gaulle airport"),
    (5, "Jorge Chavez international airport"),
    (5, "Haneda Airport"),
    (5, "Charles de gaulle airport"),
    (6, "Ferenc Liszt"),
    (6, "Luxembourg Findel airport"),
    (6, "Hamad International airport"),
    (0, "Luxembourg Findel airport"),
    (1, "Oslo airport"),
    (2, "Hamad International airport"),
    (3, "Hamad International airport"),
    (4, "Hamad International airport"),
    (6, "Haneda Airport"),
    (5, "Copenhagen airport");