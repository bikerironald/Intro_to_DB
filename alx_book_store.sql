CREATE DATABASE IF NOT EXISTS ALX_BOOK_STORE;
USE ALX_BOOK_STORE;


-- Stores information about books available in the bookstore.
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(130) NOT NULL,
    price DOUBLE, 
    publication_date DATE, 
    CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES Authors(author_id) 
);

-- Stores information about authors.
CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT, 
    author_name VARCHAR(215) NOT NULL,
);
-- Stores information about customers.
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT, 
    customer_name VARCHAR(215) NOT NULL, 
    email VARCHAR(215) NOT NULL, 
    address TEXT 
);
-- Stores information about orders placed by customers.
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT, 
    customer_id INT, 
    order_date DATE, 
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) 
);
-- Stores information about the books included in each order.
CREATE TABLE Order_Details (
    orderdetail_id INT PRIMARY KEY AUTO_INCREMENT, 
    order_id INT, 
    book_id INT, 
    quantity DOUBLE,
    CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES Books(book_id) 
);