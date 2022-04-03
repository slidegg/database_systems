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