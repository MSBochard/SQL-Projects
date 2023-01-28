-- This SQL code queries a database with multiple tables to analyze customer and order data.

-- How many orders were placed in January?

SELECT COUNT(orderID)
FROM BIT_DB.JanSales
WHERE LENGTH(orderID) = 6 AND orderID <> 'Order ID'
AND orderID <> '' AND orderID IS NOT NULL;

-- How many of those orders were for an iPhone?

SELECT COUNT(orderID)
FROM BIT_DB.JanSales
WHERE Product = 'iPhone'
AND LENGTH(orderID) = 6 AND orderID <> 'Order ID'
AND orderID <> '' AND orderID IS NOT NULL;

-- Select the customer account numbers for all the orders that were placed in February.

SELECT DISTINCT C.acctnum
FROM BIT_DB.customers AS C
JOIN BIT_DB.FebSales AS FS
ON C.order_id = FS.orderID
WHERE LENGTH(C.order_id) = 6 AND C.order_id <> 'Order ID'
AND C.order_id <> '' AND C.order_id IS NOT NULL;

-- Which product was the cheapest one sold in January, and what was the price?

SELECT DISTINCT Product, price
FROM BIT_DB.JanSales
WHERE price = (SELECT MIN(price) FROM BIT_DB.JanSales);

-- What is the total revenue for each product sold in January?

SELECT Product, (SUM(Quantity) * price) AS Revenue
FROM BIT_DB.JanSales
WHERE Product IS NOT NULL AND Product <> '' AND Product <> 'Product'
GROUP BY Product
ORDER BY Product;

-- Which products were sold in February at 548 Lincoln St, Seattle, WA 98101, how many of each were sold, and what was the total revenue?

SELECT Product, SUM(Quantity) AS Quantity, (SUM(Quantity) * price) AS Revenue
FROM BIT_DB.FebSales
WHERE location = '548 Lincoln St, Seattle, WA 98101'
AND Product IS NOT NULL AND Product <> '' AND Product <> 'Product'
GROUP BY Product;

-- How many customers ordered more than 2 products at a time in February, and what was the average amount spent for those customers?

SELECT COUNT(DISTINCT C.acctnum) AS total_customers , AVG(FS.Quantity * FS.price) AS avg_spent
FROM BIT_DB.FebSales AS FS
INNER JOIN BIT_DB.customers AS C
ON FS.orderID = C.order_id
WHERE FS.Quantity > 2 AND FS.orderID IS NOT NULL
AND FS.orderID <> '' AND LENGTH(FS.orderID) = 6;

-- List all the products sold in Los Angeles in February, and include how many of each were sold.

SELECT Product, SUM(Quantity) AS Quantity
FROM BIT_DB.FebSales
WHERE location LIKE '%Los Angeles%'
GROUP BY Product;

-- Which locations in New York state received at least 3 orders in January, and how many orders did they each receive?

SELECT DISTINCT location, COUNT(orderID) AS total_orders
FROM BIT_DB.JanSales
WHERE location LIKE '%NY%' AND LENGTH(orderID) = 6
GROUP BY location
HAVING total_orders >= 3;

-- How many of each type of headphone were sold in February?

SELECT Product, SUM(Quantity) AS Quantity
FROM BIT_DB.FebSales
WHERE Product LIKE '%Headphone%'
GROUP BY Product;

-- What was the average amount spent per account in February? 

SELECT AVG(FS.Quantity * FS.price) AS AVG_Spent_Per_Acct
FROM BIT_DB.FebSales AS FS
JOIN BIT_DB.customers AS C
ON FS.orderID = C.order_id
WHERE LENGTH(FS.orderID) = 6;

-- What was the average quantity of products purchased per account in February?

SELECT SUM(FS.Quantity) / COUNT(C.acctnum) AS Avg_Quantity_Per_Acct
FROM BIT_DB.FebSales AS FS
JOIN BIT_DB.customers AS C
ON FS.orderID = C.order_id
WHERE LENGTH(FS.orderID) = 6;

-- Which product brought in the most revenue in January and how much revenue did it bring in total?

SELECT Product, SUM(Quantity * price) AS Revenue
FROM BIT_DB.JanSales
WHERE Product IS NOT NULL AND Product <> '' AND Product <> 'Product'
GROUP BY Product
ORDER BY Revenue DESC
LIMIT 1;

-- Create a list of all accounts that made orders in February and include a count of each order per product, quantity, price, order date, and location.

SELECT c.acctnum, COUNT(fs.orderID) AS Orders, fs.Product, fs.Quantity,
    fs.price, fs.orderdate, fs.location
FROM BIT_DB.FebSales AS fs
INNER JOIN BIT_DB.customers AS c
ON fs.orderID = c.order_id
WHERE fs.Product <> 'Product'
GROUP BY c.acctnum, fs.Product, fs.Quantity,
    fs.price, fs.orderdate, fs.location;
