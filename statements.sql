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
    
    
    
    
#Daniel - Display all airplanes each airline owns..
select airL.airline_id, airline_name, planes.Model_Name, COUNT(planes.Model_Name) owned from airlines airL 
left join airplane planes
 on airL.airline_id = planes.airline_id
 group by airL.airline_id;




#Daniel - A store has had a namechange, and it must be reflected in the database.
UPDATE airports set AP_Name =' Danish international airport' where city_Name = 'Copenhagen';

select * from airports



