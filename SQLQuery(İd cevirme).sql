--orders tablosundaki employeeid deðeri, employees tablosundaki en büyük employeeid deðerinden büyük olan satýrlarý siliyoruz
DELETE FROM orders
WHERE employeeid > (SELECT MAX(employeeid) FROM employees);

--Boþ olan region deðerlerini siliyoruz
DELETE FROM customers
WHERE region IS NULL;

--Boþ olan region deðerlerini siliyoruz
DELETE FROM orders
WHERE shipregion IS NULL;

--Eþleþmeyen deðerleri silme
DELETE FROM orders
WHERE customerid NOT IN (SELECT customerid FROM customers);

--Eþleþmeyen deðerleri silme
DELETE FROM products
WHERE supplierid NOT IN (SELECT supplierid FROM suppliers);

--Eþleþmeyen deðerleri silme
DELETE FROM order_details
WHERE orderid NOT IN (SELECT orderid FROM orders);

--Eþleþmeyen deðerleri silme
DELETE FROM order_details
WHERE productid NOT IN (SELECT productid FROM products);



