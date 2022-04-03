# Get sum of flights for all passengers, grouped by passport_nr.
SELECT T.Passport_Nr, count(F.Flight_Code), P.Email FROM ticket T JOIN flights F JOIN (
	SELECT Passport_Nr, Email from passenger) P 
ON T.Flight_Code = F.Flight_Code AND T.Passport_Nr = P.Passport_Nr
GROUP BY Passport_Nr