# Get all passengers for all flights, ordered by passport_nr.
SELECT T.Passport_Nr, F.Flight_Code, P.Email FROM ticket T NATURAL JOIN flights F JOIN (
	SELECT Passport_Nr, Email from passenger) P 
ON P.Passport_Nr = T.Passport_Nr
ORDER BY Passport_Nr;

# Get sum of flights for all passengers, grouped by passport_nr.
SELECT T.Passport_Nr, count(F.Flight_Code), P.Email FROM ticket T NATURAL JOIN flights F JOIN (
	SELECT Passport_Nr, Email from passenger) P 
ON P.Passport_Nr = T.Passport_Nr
GROUP BY Passport_Nr