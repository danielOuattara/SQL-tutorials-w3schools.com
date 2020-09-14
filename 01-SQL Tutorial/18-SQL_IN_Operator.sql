/*-------------------------------------------------------------------
SQL Tutorial
daniel.ouattara AT gmx DOT com
17 05 2020
https://www.w3schools.com/sql/
--------------------------------------------------------------------

                      SQL IN Operator
                    ======================


The SQL IN Operator
====================

The 'IN' operator allows you to specify multiple values in a 'WHERE' clause.

The 'IN' operator is a shorthand for multiple 'OR' conditions.

IN Syntax
----------
*/
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
/*

or:

*/
SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);
*/

/*
Demo Database
================

The table below shows the complete "Customers" table from the Northwind sample
database:


IN Operator Examples
=====================

The following SQL statement selects all customers that are located in
"Germany", "France" or "UK":

*/
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');
/*

The following SQL statement selects all customers that are NOT located in
"Germany", "France" or "UK":
*/
SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

/*
The following SQL statement selects all customers that are from the same
countries as the suppliers:
*/
SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);