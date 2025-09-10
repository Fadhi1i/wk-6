USE salesdb;
--@block-- Write an SQL query to get the firstName, lastName, email, and officeCode of all employees.
SELECT e.firstName,
    e.lastName,
    e.email,
    o.officeCode
FROM employees e
    INNER JOIN offices o ON e.officeCode = o.officeCode;
--@block-- Write an SQL query to get the productName, productVendor, and productLine from the products table. Use a LEFT JOIN to combine the products table with the productlines table using the productLine column.
SELECT P.productName,
    P.productVendor,
    PL.productLine
FROM products P
    LEFT JOIN productlines PL ON P.productLine = PL.productLine;
--@block  -- Write an SQL query to retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders. Use a RIGHT JOIN to combine the customers table with the orders table using the customerNumber column.
SELECT o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
    RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;