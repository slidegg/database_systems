#Population for airports and cities and terminals
USE airport_db;
DELETE FROM city;
insert into city(City_Name, Country)
Values  ('Budapest', 'Hungary'),
		('Copenhagen', 'Denmark'),
        ('Lima', 'Peru'),
        ('Luxembourg', 'Luxembourg'),
        ('Oslo', 'Norway'),
        ('Doha', 'Qatar'),
        ('Tokyo', 'Japan'),
        ('Paris', 'France');



DELETE FROM airports;
insert into airports(AP_Name, City_Name,Capacity)
Values ('Ferenc Liszt', 'Budapest', 500000),
	   ('Copenhagen airport', 'Copenhagen', 50000),
       ('Jorge Chavez international airport', 'Lima', 10000),

      ('Luxembourg Findel airport', 'Luxembourg', 10000),
       ('Oslo airport', 'Oslo', 10000),
       ('Hamad International airport', 'Doha', 12500),
       ('Haneda Airport', 'Tokyo', 30000),
       ('Charles de gaulle airport', 'Paris', 9000);



#Terminals
DELETE FROM terminal;
insert into terminal(Terminal_Number,AP_Name)
Values (1, 'Ferenc Liszt'),
	   (2, 'Ferenc Liszt'),
       (3, 'Ferenc Liszt'),
       (4, 'Copenhagen airport'),
       (5, 'Copenhagen airport'),
       (6, 'Jorge Chavez international airport'),
       (7, 'Jorge Chavez international airport'),
       (8, 'Luxembourg Findel airport'),
       (9, 'Luxembourg Findel airport'),
       (10, 'Luxembourg Findel airport'),
       (11, 'Oslo airport'),
       (12, 'Hamad International airport'),
       (13, 'Hamad International airport'),
       (14, 'Haneda Airport'),
       (15, 'Charles de gaulle airport');


DELETE FROM timeslot;
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

		DELETE FROM passenger;
		insert into passenger(Passport_Nr, Age, Sex, Email)
		Values  ('GR23232311', '25','MALE','passenger_gr@dtu.com'),
				('BU35265464', '26','MALE','passenger_bu@dtu.com'),
		        ('DA54416575', '32','FEMALE','passenger_da@dtu.com'),
		        ('DE54546422', '40','FEMALE','passenger_de@dtu.com'),
		        ('US15444644', '50','FEMALE','passenger_us@dtu.com'),
		        ('IT15413214', '18','MALE','passenger_it@dtu.com'),
		        ('UK54613146', '21','FEMALE','passenger_uk@dtu.com'),
		        ('FR54416198', '70','FEMALE','passenger_fr@dtu.com');



		DELETE FROM ticket;
		insert into ticket(Seat, Flight_Code, Price, Passport_Nr)
		Values ('1a', 'aa', 'GR23232311'),
			   ('2c', 'aa', 'BU35265464'),
		       ('10a', 'aa', 'DA54416575'),
		      ('10b', 'a', 'DE54546422'),
		       ('15c', 'a', 'US15444644'),
		       ('15b', 'a', 'IT15413214'),
		       ('20a', 'a', 'UK54613146'),
		       ('20b', 'a', 'FR54416198');
               
DELETE FROM airlines;
INSERT INTO airlines(Airline_ID, Airline_Name, IATA_Code)  VALUES
	(0, 'SAS', 'SK'),
    (1, 'Ryanair', 'FR'),
    (2, 'Lufthansa Group', 'LH'),
    (3, 'Delta Air Lines', 'DL'),
    (4, 'China Southern Airlines', 'CZ');
    
DELETE FROM pilots;
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
    
DELETE FROM airplanes;
INSERT INTO airplanes(Model_Number, Model_Name, Airline_ID) VALUES
	(10120, "Sukhoi Superjet 100", 0),
    (10320, "Boeing 737-800", 1),
    (10121, "Sukhoi Superjet 100", 2),
    (11230, "Airbus A330-300", 3),
    (11231, "Airbus A330-300", 3),
    (12310, "Embraer 170/175", 4),
    (12311, "Embraer 170/175 ", 4);
