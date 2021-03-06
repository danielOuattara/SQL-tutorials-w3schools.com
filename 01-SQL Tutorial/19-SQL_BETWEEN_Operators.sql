/*SQL Tutorial
daniel.ouattara AT gmx DOT com
17 05 2020
https://www.w3schools.com/sql/
-------------------------------

                  SQL BETWEEN Operator
                 ======================


The SQL BETWEEN Operator
=========================

The BETWEEN operator selects values within a given range.
The values can be numbers, text, or dates.

The BETWEEN operator is 'inclusive': begin and end values are included.


BETWEEN Syntax
---------------
*/
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
/*


Demo Database
==================

Below is a selection from the "Products" table in the Northwind sample database:


BETWEEN Example
================

The following SQL statement selects all products with a price BETWEEN 10 and 20:

*/
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

/*

NOT BETWEEN Example
=====================

To display the products outside the range of the previous example,
use NOT BETWEEN:

*/
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

/*

BETWEEN with IN Example
========================

The following SQL statement selects all products with a price BETWEEN 10 and 20.
In addition it does not show products with a CategoryID of 1,2, or 3:

*/
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);
/*

BETWEEN Text Values Example
============================

The following SQL statement selects all products with a ProductName
BETWEEN Carnarvon Tigers and Mozzarella di Giovanni:

*/
SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;
/*

The following SQL statement selects all products with a ProductName BETWEEN
Carnarvon Tigers and Chef Anton's Cajun Seasoning:

*/
SELECT * FROM Products
WHERE ProductName BETWEEN "Carnarvon Tigers" AND "Chef Anton's Cajun Seasoning"
ORDER BY ProductName;
/*

NOT BETWEEN Text Values Example
================================

The following SQL statement selects all products with a ProductName
NOT BETWEEN Carnarvon Tigers and Mozzarella di Giovanni:

*/
SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;
/*

Sample Table
============

Below is a selection from the "Orders" table in the Northwind sample database:

OrderID 	CustomerID 	EmployeeID 	OrderDate 	ShipperID
--------------------------------------------------------
10248 	  90         	5 	        7/4/1996 	  3
10249 	  81 	        6 	        7/5/1996   	1
10250 	  34 	        4 	        7/8/1996 	  2
10251 	  84 	        3 	        7/9/1996 	  1
10252 	  76 	        4 	        7/10/1996 	2


BETWEEN Dates Example
======================

The following SQL statement selects all orders with an OrderDate BETWEEN '01-July-1996' and '31-July-1996':

*/
SELECT * FROM Orders
WHERE OrderDate BETWEEN #01/07/1996# AND #31/07/1996#;
/*

OR:

*/
SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
