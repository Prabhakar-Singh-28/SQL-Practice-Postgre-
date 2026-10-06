-- RIGHT JOIN
-- returns all records from the right table and only the matching records from the left table


-- 1.Show every order, including an order whose customer does not match.

SELECT c.customer_name, o.order_id, o.quantity
FROM customers c
RIGHT JOIN orders o
    ON c.customer_id = o.customer_id;
