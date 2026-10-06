-- FULL OUTER JOIN 
-- returns all records from both tables, combining matching rows

-- 1.Keep all customers and all orders.

SELECT c.customer_name, o.order_id, o.quantity
FROM customers c
FULL OUTER JOIN orders o
    ON c.customer_id = o.customer_id;
