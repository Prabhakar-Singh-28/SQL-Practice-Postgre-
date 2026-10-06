-- INNER JOIN  
-- inner joins return rows that are the same in both columns
-- since we have the same columns we need to specify which table they're coming from

SELECT * FROM orders; -- order_id (pk), customer_id , book_id
SELECT * FROM customers; -- customer_id (pk)
SELECT * FROM books; -- book_id (pk), author_id
SELECT * FROM authors; -- author_id(pk)


-- Show customers who have placed orders.

SELECT c.customer_id, c.customer_name, o.order_id, o.quantity
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id;
