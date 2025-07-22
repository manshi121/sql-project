/* Q1: Who is the senior most employee based on job title? */

SELECT*FROM employee
ORDER BY levels DESC
LIMIT 1


/* Q2: Which countries have the most Invoices? */
select COUNT(*) as c,billing_country
from invoice
group by billing_country
order by c desc
/* Q3: What are top 3 values of total invoice? */
Select total FROM invoice
order by total desc
limit 3

/* Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns one city that has the highest sum of invoice totals. 
Return both the city name & sum of all invoice totals */
select SUM (total) as invoice_total, billing_city  from invoice