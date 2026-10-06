-- Show customer, book and quantity for each order.

SELECT
    c.customer_name,
    b.book_title,
    o.quantity
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN books b
    ON o.book_id = b.book_id;
