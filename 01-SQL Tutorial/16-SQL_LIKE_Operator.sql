/*--------------------------------------------------------------------
SQL Tutorial
daniel.ouattara AT gmx DOT com
17 05 2020
https://www.w3schools.com/sql/
----------------------------------------------------------------------



                  SQL LIKE Operator
                  ==================

The SQL LIKE Operator
======================
The 'LIKE' operator is used in a 'WHERE' clause to search for a specified
pattern in a column.

There are two 'wildcards' often used in conjunction with the 'LIKE' operator:

  >  %  The percent sign represents zero, one, or multiple characters
  >  _  The underscore represents a single character

Note: MS Access uses an asterisk (*) instead of the percent sign (%),
----  and a question mark (?) instead of the underscore (_).

The 'percent sign' and the 'underscore' can also be used in combinations!


LIKE Syntax
=============

*/
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
/*
Tip: You can also combine any number of conditions using 'AND' or 'OR' operators.
---

Here are some examples showing different LIKE operators
with '%' and '_' wildcards:

LIKE Operator 	                  Description
--------------                    -------------
WHERE CustomerName LIKE 'a%' 	    Finds any values that start with "a"
--------------------------------------------------------------------------------
WHERE CustomerName LIKE '%a' 	    Finds any values that end with "a"
--------------------------------------------------------------------------------
WHERE CustomerName LIKE '%or%'  	Finds any values that have "or" in any
                                  position
--------------------------------------------------------------------------------
WHERE CustomerName LIKE '_r%' 	  Finds any values that have "r" in the second
                                  position
--------------------------------------------------------------------------------
WHERE CustomerName LIKE 'a_%' 	  Finds any values that start with "a" and are
                                  at least 2 characters in length
--------------------------------------------------------------------------------
WHERE CustomerName LIKE 'a__%'   	Finds any values that start with "a" and are
                                  at least 3 characters in length
--------------------------------------------------------------------------------
WHERE ContactName LIKE 'a%o' 	    Finds any values that start with "a" and ends
                                  with "o"
--------------------------------------------------------------------------------

Demo Database
===============

The table below shows the complete "Customers" table from the Northwind
sample database:


SQL LIKE Examples
==================

The following SQL statement selects all customers with a CustomerName
starting with "a":
*/
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';
/*

The following SQL statement selects all customers with a CustomerName ending
with "a":
*/
SELECT * FROM Customers
WHERE CustomerName LIKE '%a';
/*

The following SQL statement selects all customers with a CustomerName that
have "or" in any position:
*/
SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';
/*

The following SQL statement selects all customers with a CustomerName that
have "r" in the second position:
*/
SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';
/*

The following SQL statement selects all customers with a CustomerName that
starts with "a" and are at least 3 characters in length:
*/
SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';
/*

The following SQL statement selects all customers with a ContactName that
starts with "a" and ends with "o":
*/
SELECT * FROM Customers
WHERE ContactName LIKE 'a%o';
/*

The following SQL statement selects all customers with a CustomerName that
does NOT start with "a":
*/
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%';
