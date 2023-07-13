/* This SQL code will be dealing with a digital media store's database that includes tables
for artists, albums, media tracks, invoices, and customers. I will be using SQL to analyze the data. */

-- Show Customers (their full names, customer ID, and country) who are not in the US.

SELECT (FirstName || ' ' || LastName) AS Name, CustomerId, Country
FROM chinook.customers
WHERE Country <> "USA";

-- Show only the Customers from Brazil.

SELECT (FirstName || ' ' || LastName) AS Name, CustomerId, Country
FROM chinook.customers
WHERE Country = "Brazil";

/* Find the Invoices of customers who are from Brazil. Include the
customer's full name, Invoice ID, Date of the invoice, and billing country. */

SELECT (c.FirstName || ' ' || c.LastName) AS Name, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM chinook.customers AS c
JOIN chinook.invoices AS i
ON c.CustomerId = i.CustomerId
WHERE Country = "Brazil";

-- Show the Employees who are Sales Agents.

SELECT (FirstName || ' ' || LastName) AS Name, Title
FROM chinook.employees
WHERE Title LIKE 'Sales%Agent';

-- Find a unique/distinct list of billing countries from the Invoice table.

SELECT DISTINCT BillingCountry
FROM chinook.invoices
ORDER BY BillingCountry;

-- Provide a query that shows the invoices associated with each sales agent

SELECT  i.InvoiceId, (e.FirstName || ' ' || e.LastName) AS 'Sales Rep Name'
FROM chinook.invoices AS i
JOIN chinook.customers AS c
ON i.CustomerId = c.CustomerId
JOIN chinook.employees AS e
ON c.SupportRepId = e.EmployeeId
ORDER BY i.InvoiceId;

-- Show the Invoice Total, Customer name, Country, and Sales Agent name for all invoices and customers.

SELECT  i.InvoiceId, i.Total, (c.FirstName || ' ' || c.LastName) AS 'Customer Name',
    i.BillingCountry, (e.FirstName || ' ' || e.LastName) AS 'Sales Rep Name'
FROM chinook.invoices AS i
JOIN chinook.customers AS c
ON i.CustomerId = c.CustomerId
JOIN chinook.employees AS e
ON c.SupportRepId = e.EmployeeId
ORDER BY i.InvoiceId;

-- How many Invoices were there in 2009?

SELECT  COUNT(InvoiceId) AS 'Total Invoices'
FROM chinook.invoices
WHERE InvoiceDate LIKE '%2009%';

-- What are the total sales for 2009?

SELECT  ROUND(SUM(Total), 2) AS 'Total 2009 Sales'
FROM chinook.invoices
WHERE InvoiceDate LIKE '%2009%';

-- Write a query that includes the purchased track name with each invoice line ID.

SELECT ii.InvoiceLineId, t.Name
FROM chinook.tracks AS t
JOIN chinook.invoice_items AS ii
ON t.TrackId = ii.TrackId
ORDER BY ii.InvoiceLineId;

-- Write a query that includes the purchased track name AND artist name with each invoice line ID.

SELECT ii.InvoiceLineId, art.Name AS 'Artist Name', t.Name AS 'Track Name'
FROM chinook.tracks AS t
JOIN chinook.invoice_items AS ii
ON t.TrackId = ii.TrackId
JOIN  chinook.albums AS alb
ON t.AlbumId = alb.AlbumId
JOIN chinook.artists AS art
ON alb.ArtistId = art.ArtistId
ORDER BY ii.InvoiceLineId;

-- Provide a query that shows all the Tracks, and include the Album name, Media type, and Genre.

SELECT t.Name AS 'Track Name', alb.Title AS 'Album',
    mt.Name AS 'Media Type', g.Name AS 'Genre'
FROM chinook.tracks AS t
JOIN  chinook.albums AS alb
ON t.AlbumId = alb.AlbumId
JOIN  chinook.media_types AS mt
ON t.MediaTypeId = mt.MediaTypeId
JOIN  chinook.genres AS g
ON t.GenreId = g.GenreId
ORDER BY t.TrackId;

-- Show the total sales made by each sales agent.

SELECT (e.FirstName || ' ' || e.LastName) AS 'Sales Rep Name',
    ROUND(SUM(i.Total), 2) AS 'Total Sales'
FROM chinook.employees AS e
JOIN chinook.customers AS c
ON e.EmployeeId = c.SupportRepId
JOIN chinook.invoices AS i
ON c.CustomerId = i.CustomerId
WHERE Title LIKE 'Sales%Agent'
GROUP BY (e.FirstName || ' ' || e.LastName);

-- Which sales agent made the most dollars in sales in 2009?

SELECT (e.FirstName || ' ' || e.LastName) AS 'Sales Rep Name',
    ROUND(SUM(i.Total), 2) AS 'Total Sales'
FROM chinook.employees AS e
JOIN chinook.customers AS c
ON e.EmployeeId = c.SupportRepId
JOIN chinook.invoices AS i
ON c.CustomerId = i.CustomerId
WHERE i.InvoiceDate LIKE '%2009%' AND Title LIKE 'Sales%Agent'
GROUP BY (e.FirstName || ' ' || e.LastName)
ORDER BY ROUND(SUM(i.Total), 2) DESC
LIMIT 1;

-- What are the total sales for each year?

SELECT SUBSTRING(InvoiceDate, 1, 4) AS Year, ROUND(SUM(Total), 2) AS Total
FROM chinook.invoices
GROUP BY Year;
