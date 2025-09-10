--@block-- Write an SQL query to get the firstName, lastName, email, and officeCode of all employees.
Use an
INNER JOIN to combine the employees table with the offices table using the officeCode column
SELECT e.firstName,
    e.lastName,
    e.email,
    o.officeCode
FROM employees e
    INNER JOIN offices o ON e.officeCode = o.officeCode;