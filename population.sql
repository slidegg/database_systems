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
       


