# Greg - Select show all pilots name and salaries with higher salary than the avg salary
SELECT
    Pilot_Name,
    Salary
FROM
    pilots
GROUP BY
    Salary
HAVING
    Salary > (
        SELECT
            AVG(Salary)
        FROM
            pilots
    );
    

# Get sum of flights for all passengers, grouped by passport_nr - Oliver
SELECT T.Passport_Nr, count(F.Flight_Code) as NumFlights, P.Email FROM ticket T JOIN flights F JOIN (
	SELECT Passport_Nr, Email from passenger) P 
ON T.Flight_Code = F.Flight_Code AND T.Passport_Nr = P.Passport_Nr
GROUP BY Passport_Nr;

# TRANSACTION PROCEDURE - Oliver
DROP PROCEDURE IF EXISTS ChangeFlightDeparture;
DELIMITER \\
CREATE PROCEDURE ChangeFlightDeparture(
	IN vFlight_Code VARCHAR(255), vNewTimeSlotID int, vNewTerminalNum VARCHAR(50), OUT vStatus VARCHAR(255))
BEGIN
	DECLARE AnyFlightsAtNewTime INT DEFAULT 0;
    DECLARE AirportName VARCHAR(255) DEFAULT "";
    DECLARE AirportMaxTerminals INT DEFAULT 0;
    DECLARE DOD DATE DEFAULT curdate();
    START TRANSACTION;
    SET AirportName = (SELECT Source_location FROM flights WHERE vFlight_Code = Flight_Code);
    SET AirportMaxTerminals = (SELECT count(*) FROM terminal WHERE AP_Name = AirportName);
    IF AirportMaxTerminals < vNewTerminalNum
		THEN SET vStatus = 'Terminal Number does not exists for the current airport, rollback!'; ROLLBACK;
        ELSE UPDATE flights SET Departure = vNewTimeSlotID, Terminal_Number = vNewTerminalNum WHERE Flight_Code = vFlight_Code;
			 SET DOD = (SELECT Date_of_departure FROM flights WHERE Flight_Code = vFlight_Code);
			 SET AnyFlightsAtNewTime = (SELECT count(*) FROM flights F WHERE vNewTimeSlotID = F.Departure AND DOD = F.Date_of_departure AND F.Terminal_Number = vNewTerminalNum AND F.Source_location = AirportName);
			 IF AnyFlightsAtNewTime > 1
				THEN SET vStatus = 'A flight departure update would conflict with an existing one, rollback!'; ROLLBACK;
				ELSE SET vStatus = 'Flight has been updated, committed!'; COMMIT;
			 END IF; 
    END IF;
END \\
DELIMITER ;

CALL ChangeFlightDeparture(100, 74, 1, @tStatus);
SELECT @tStatus;
SELECT * FROM flights WHERE Flight_Code = 100;

CALL ChangeFlightDeparture(100, 12, 2, @tStatus);
SELECT @tStatus;
SELECT * FROM flights WHERE Flight_Code = 100;
    
#Daniel - Display all airplanes each airline owns..
select airL.airline_id, airline_name, planes.Model_Name, COUNT(planes.Model_Name) owned from airlines airL 
left join airplane planes
 on airL.airline_id = planes.airline_id
 group by airL.airline_id;




#Daniel - A store has had a namechange, and it must be reflected in the database.
UPDATE airports set AP_Name =' Danish international airport' where city_Name = 'Copenhagen';

select * from airports



