-- CROSS JOIN

-- combines every single row from the first table with every single row from the second table

-- Show every possible customer-book combination.
SELECT
    c.customer_name,
    b.book_title
FROM customers c
CROSS JOIN books b;


