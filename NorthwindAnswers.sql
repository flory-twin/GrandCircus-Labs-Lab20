USE northwind;


-- SELECT *
--   FROM customers;


/*
SELECT DISTINCT(country)
  FROM customers;
*/

/*
SELECT *
  FROM customers
 WHERE CustomerID like "BL%";
*/

/*
SELECT *
  FROM `order details`
 LIMIT 100;
*/

/*
SELECT *
  FROM customers
 WHERE PostalCode in (1010, 3012, 12209, 05023);
*/

/*
SELECT *
  FROM orders 
 WHERE ShipRegion IS NOT null;
*/

/*
SELECT *
  FROM customers
 ORDER BY 
       Country ASC,
       City ASC;
       */

/*
INSERT INTO 
       customers
       (CustomerID,
        CompanyName, ContactName, ContactTitle, 
        Address, City, Region, PostalCode, Country,
        Phone, Fax, Image, ImageThumbnail) 
	   VALUES
       ("FLOML",
        "Coronary Country Cooking", "Magdalena Kauffman", "Mrs.",
        "841 Flory Mill Road", "East Petersburg", "PA", 17520, "USA",
        "111-222-3333", "444-555-6666", null, null);
*/

/*
UPDATE orders
   SET ShipRegion = "EuroZone"
 WHERE ShipCountry = "France";
*/

/*
SELECT *
  FROM `order details`
 WHERE Quantity = 1;
 */

/*
DELETE 
  FROM `order details` 
 WHERE Quantity = 1;
*/

/*
SELECT AVG(Quantity)
  FROM `order details`;
  */
  
/*
SELECT MIN(Quantity)
  FROM `order details`;
  */

/*
SELECT MAX(Quantity)
  FROM `order details`;
*/

/*
SELECT AVG(Quantity)
  FROM `order details`
 GROUP BY OrderID;
 
 SELECT MAX(Quantity)
  FROM `order details`
 GROUP BY OrderID;
 
 SELECT MIN(Quantity)
  FROM `order details`
 GROUP BY OrderID;
 */

/*
SELECT CustomerID
 FROM orders
WHERE OrderId = 10290;
*/

/*
SELECT *
  FROM orders oredeee
	   INNER JOIN
	   customers coleee
    ON oredeee.CustomerID = coleee.CustomerID;

SELECT *
  FROM orders oredeee
	   LEFT JOIN
	   customers coleee
    ON oredeee.CustomerID = coleee.CustomerID;
    
SELECT *
  FROM orders oredeee
	   RIGHT JOIN
	   customers coleee
    ON oredeee.CustomerID = coleee.CustomerID;
    */
    
/*
select e1.FirstName
  from employees e1
 WHERE e1.ReportsTo is null;
 
 */
 
select e1.FirstName
 from employees e1, employees e2
WHERE e1.ReportsTo = e2.EmployeeID 
  AND e2.FirstName = "Andrew";