-- LEFT JOIN

-- a left join will take everything from the left table even if there is no match in the join,
-- but will only return matches from the right table

SELECT * FROM orders; -- order_id (pk), customer_id , book_id
SELECT * FROM customers; -- customer_id (pk)
SELECT * FROM books; -- book_id (pk), author_id
SELECT * FROM authors; -- author_id(pk)

-- 1.Show every customer, including customers with no orders.

SELECT c.customer_id, c.customer_name, o.order_id, o.quantity
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id;

-- 2. Find customers who have NEVER placed an order.

SELECT c.customer_id, c.customer_name
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;





