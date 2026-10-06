-- JOIN PRACTICE DATABASE
-- PostgreSQL
-- Bookstore example

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
    author_id INTEGER PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);

CREATE TABLE books (
    book_id INTEGER PRIMARY KEY,
    book_title VARCHAR(150) NOT NULL,
    author_id INTEGER,
    price NUMERIC(8,2) NOT NULL,
    stock INTEGER NOT NULL
);

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    book_id INTEGER,
    quantity INTEGER NOT NULL,
    order_date DATE NOT NULL
);

INSERT INTO authors VALUES
(1, 'R.K. Sharma'),
(2, 'Anita Verma'),
(3, 'David Miller'),
(4, 'Sarah Wilson'),
(5, 'Michael Brown');

INSERT INTO books VALUES
(101, 'SQL for Beginners', 1, 450.00, 12),
(102, 'Advanced SQL', 1, 650.00, 5),
(103, 'Excel for Data Analysis', 2, 550.00, 8),
(104, 'Data Analytics with Python', 3, 750.00, 0),
(105, 'Power BI Essentials', 4, 600.00, 10),
(106, 'Business Intelligence', NULL, 800.00, 3);

INSERT INTO customers VALUES
(1, 'Rahul', 'Delhi'),
(2, 'Amit', 'Lucknow'),
(3, 'Priya', 'Prayagraj'),
(4, 'Neha', 'Kanpur'),
(5, 'Arjun', 'Delhi');

INSERT INTO orders VALUES
(1001, 1, 101, 2, '2026-09-01'),
(1002, 2, 103, 1, '2026-09-02'),
(1003, 1, 104, 1, '2026-09-03'),
(1004, 3, 102, 2, '2026-09-04');
