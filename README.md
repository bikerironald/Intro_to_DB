# Intro_to_DB

📚 Online Bookstore Database
This project designs a MySQL relational database schema for managing data in an online bookstore. It includes entities such as books, authors, customers, orders, and order details — all structured to support efficient queries, data integrity, and scalability.

🗂️ Database Schema Overview
The database consists of the following key tables:

1. Books

- book_id (Primary Key)
- title
- author_id (Foreign Key)
- genre
- price
- stock_quantity

2. Authors

- author_id (Primary Key)
- name
- bio

2. Customers

- customer_id (Primary Key)
- name
- email
- address
- phone

3. Orders

- order_id (Primary Key)
- customer_id (Foreign Key)
- order_date
- total_amount

4. Order_Details

- order_detail_id (Primary Key)
- order_id (Foreign Key)
- book_id (Foreign Key)
- quantity
- price

🛠️ Features

- Track inventory levels and book availability
- Associate each book with an author
- Manage customer profiles and contact info
- Record customer orders with detailed breakdowns
- Calculate total purchase amounts based on order details
