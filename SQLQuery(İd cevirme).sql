--orders tablosundaki employeeid de�eri, employees tablosundaki en b�y�k employeeid de�erinden b�y�k olan sat�rlar� siliyoruz
DELETE FROM orders
WHERE employeeid > (SELECT MAX(employeeid) FROM employees);

--Bo� olan region de�erlerini siliyoruz
DELETE FROM customers
WHERE region IS NULL;

--Bo� olan region de�erlerini siliyoruz
DELETE FROM orders
WHERE shipregion IS NULL;

--E�le�meyen de�erleri silme
DELETE FROM orders
WHERE customerid NOT IN (SELECT customerid FROM customers);

--E�le�meyen de�erleri silme
DELETE FROM products
WHERE supplierid NOT IN (SELECT supplierid FROM suppliers);

--E�le�meyen de�erleri silme
DELETE FROM order_details
WHERE orderid NOT IN (SELECT orderid FROM orders);

--E�le�meyen de�erleri silme
DELETE FROM order_details
WHERE productid NOT IN (SELECT productid FROM products);



