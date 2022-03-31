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