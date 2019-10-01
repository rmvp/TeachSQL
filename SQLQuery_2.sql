SELECT COUNT (prod_id) AS 'total count', prod_id, SUM (quantity) AS 'total qty'
FROM OrderItems
WHERE prod_id IN ('BR01', 'BR02')
GROUP BY prod_id

SELECT TOP 3 * FROM OrderItems

SELECT * FROM OrderItems

SELECT prod_id, order_num, quantity
FROM OrderItems
WHERE prod_id = 'BR01'

SELECT prod_id FROM OrderItems
WHERE prod_id LIKE '%1'

SELECT * 
FROM OrderItems
WHERE order_num IN (20005, 20009)

SELECT * 
FROM OrderItems
WHERE prod_id IN ('BR01', 'BR02')

SELECT 
    Orders.order_num, 
    Orders.order_date, 
    Customers.cust_id, 
    Customers.cust_name
FROM Orders
JOIN Customers
ON Orders.cust_id = Customers.cust_id
WHERE Orders.order_num = 20005


SELECT * , quantity * item_price AS 'total price'
FROM Orders
JOIN OrderItems
ON Orders.order_num = OrderItems.order_num
WHERE Orders.order_date >= '2012-02-01'
ORDER BY Orders.order_num ASC


SELECT * FROM Customers
SELECT * FROM Orders ORDER BY cust_id ASC
SELECT * FROM OrderItems

SELECT 
    Customers.cust_id, 
    Customers.cust_name, 
    Orders.order_num, 
    convert(varchar, Orders.order_date, 1) AS order_date,
    OrderItems.order_item,
    OrderItems.prod_id, 
    OrderItems.quantity, 
    format(OrderItems.item_price, 'c') AS item_price,
    format(OrderItems.quantity * OrderItems.item_price, 'c') AS total_price
FROM Orders
JOIN Customers
ON   Orders.cust_id = Customers.cust_id
JOIN OrderItems
ON Orders.order_num = OrderItems.order_num
WHERE Orders.order_num = 20008



/*NULL*/

SELECT * FROM Customers WHERE cust_email IS NULL
SELECT * FROM Customers WHERE cust_email IS NOT NULL

/*COUNT function*/

SELECT * FROM Orders 

SELECT COUNT (*) AS 'Customer Count' 
FROM Customers

SELECT COUNT (order_num) AS '# of orders'
FROM Orders

SELECT * FROM OrderItems

/*MIN and MAX*/
SELECT MIN(quantity) AS min_qty,
       MAX(quantity) AS max_qty
FROM OrderItems 
WHERE prod_id IN('BR01')

/* AVARAGE*/
SELECT AVG (quantity) AS avg_qty
FROM OrderItems 
WHERE prod_id IN('BR01')

/* DISTINCT*/
SELECT * FROM Customers
SELECT cust_city FROM Customers ORDER BY cust_city
SELECT DISTINCT cust_city FROM Customers ORDER BY cust_city

/*Git Test more test*/