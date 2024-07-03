-- Insert data into Mint Classic Company tables

USE mint_classic_company;

LOAD DATA INFILE 'datasets/customers.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit);

LOAD DATA INFILE 'datasets/employees.csv'
INTO TABLE employees
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle);

LOAD DATA INFILE 'datasets/offices.csv'
INTO TABLE offices
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory);

LOAD DATA INFILE 'datasets/orderdetails.csv'
INTO TABLE orderdetails
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber);

LOAD DATA INFILE 'datasets/orders.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(orderNumber, orderDate, requiredDate, shippedDate, status, comments, customerNumber);

LOAD DATA INFILE 'datasets/payments.csv'
INTO TABLE payments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(customerNumber, checkNumber, paymentDate, amount);

LOAD DATA INFILE 'datasets/productlines.csv'
INTO TABLE productlines
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(productLine, textDescription, htmlDescription, image);

LOAD DATA INFILE 'datasets/products.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP);

LOAD DATA INFILE 'datasets/warehouses.csv'
INTO TABLE warehouses
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(warehouseCode, warehouseName, warehousePctCap);
