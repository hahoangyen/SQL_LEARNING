/*E. Write an SQL statement to list ItemID and ItemDescription for all items that cost 
$1000 or more.*/

SELECT ItemID, ItemDescription
FROM ITEM
WHERE ItemCost > 1000;

/*F. Write an SQL statement to list ItemID and ItemDescription for all items that cost 
$1000 or more and were purchased from a vendor whose CompanyName starts with 
the letters New.*/

SELECT ItemID, ItemDescription
FROM ITEM I, VENDOR V
WHERE I.VendorID = V.VendorID
AND CompanyName LIKE 'New%';

/*G. Write an SQL statement to list LastName, FirstName, and Phone of the customer 
who made the purchase with SaleID 1. Use a subquery.*/

SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE CustomerID IN
	(SELECT CustomerID
	FROM SALE
	WHERE SaleID = 1);

/H. Answer part G but use a join using JOIN ON syntax./

SELECT LastName, FirstName, Phone
FROM CUSTOMER C
JOIN SALE S ON C.CustomerID = S.CustomerID
AND SaleID = 1;

/*I. Write an SQL statement to list LastName, FirstName, and Phone of the customers 
who made the purchases with SaleIDs 1, 2, and 3. Use a subquery.*/
SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE CustomerID IN
	(SELECT CustomerID
	FROM SALE
	WHERE SaleID IN (1,2,3));


/J. Answer part I but use a join using JOIN ON syntax8?/
SELECT LastName, FirstName, Phone
FROM CUSTOMER C
JOIN SALE S ON C.CustomerID = S.CustomerID
AND SaleID IN (1,2,3);

/*K. Write an SQL statement to list LastName, FirstName, and Phone of customers who 
have made at least one purchase with SubTotal greater than $500. Use a subquery.*/

SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE CustomerID IN
	(SELECT CustomerID
	FROM SALE
	WHERE SubTotal > 500);

/L. Answer part K but use a join using JOIN ON syntax./

SELECT DISTINCT LastName, FirstName, Phone
FROM CUSTOMER C
JOIN SALE S ON C.CustomerID = S.CustomerID
AND SubTotal > 500;

/*M. Write an SQL statement to list LastName, FirstName, and Phone of customers who 
have purchased an item that has an ItemPrice of $500 or more. Use a subquery*/



/N. Answer part M but use a join using JOIN ON syntax./

/*O. Write an SQL statement to list LastName, FirstName, and Phone of customers who 
have purchased an item that was supplied by a vendor with a CompanyName that begins with the letter L. Use a subquery.8?*/

/P. Answer part O but use a join using JOIN ON syntax./

/*Q. Write an SQL statement to show the sum of SubTotal for each customer. List 
CustomerID, LastName, FirstName, Phone, and the calculated result. Name the sum 
of SubTotal as SumOfSubTotal and sort the results by CustomerID, in descending 
order.*/

SELECT C.CustomerID, LastName + FirstName AS NAME, Phone, SUM(SubTotal) AS SumOfSubTotal
FROM CUSTOMER C, SALE S
WHERE C.CustomerID = S.CustomerID
GROUP BY C.CustomerID, LastName, FirstName, Phone
ORDER BY C.CustomerID DESC;

SELECT CustomerID, LastName, FirstName, Phone, SUM(SubTotal) AS SumOfSubTotal
FROM CUSTOMER C
JOIN SALE S ON C.CustomerID = S.CustomerID
GROUP BY CustomerID
ORDER BY CustomerID DESC;

/*R. Write an SQL statement to modify the vendor with CompanyName of Linens and 
Things to Linens and Other Stuff.*/


/*S. Write SQL statements to switch the values of vendor CompanyName so that all rows 
currently having the value Linens and Things will have the value Lamps and Lighting
and all rows currently having the value Lamps and Lighting will have the value Linens 
and Things.*/

/*T. Given your assumptions about cascading deletions in your answer to part B, write the 
fewest number of DELETE statements possible to remove all the data in your database but leave the table structures intact. Do not run these statements if you are using 
an actual database!*/