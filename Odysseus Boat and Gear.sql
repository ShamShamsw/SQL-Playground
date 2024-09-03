-- To start I wanted to create an example to play around with the data.
-- The name is going to be Odysseus Boat and Gear Rental.
-- I will  create the following tables:
-- 1. 'Products' table to store what products are available for rent.
-- 2. 'Warehouses' table to store information on the warehouses where the products are stored.
-- 3. 'Shipments' table to store records of shipments sent to vendors.
-- 4. 'Orders' table to store records of orders placed by vendors.
-- 5. 'vendors' table to store information on the vendors that rent the products.

----------------------------------------------------------------------------------------------------------------------------

-- The structure of the 'Products' table is as follows:
-- 1. 'product_ID' is the primary key. It is a integer unique identifier for each product.
-- 2'product_Name' is the name of the product. It is a string.
-- 3. 'category' is the type of product. It is a string.
-- 4. 'price' is the price of the product. It is a float.
-- 5. 'quantity' is the number of units available for rent. It is an integer.

CREATE TABLE Products (
    product_ID INT PRIMARY KEY,
    product_Name VARCHAR(50),
    category VARCHAR(50),
    price FLOAT,
    quantity INT
);

----------------------------------------------------------------------------------------------------------------------------

-- The structure of the 'Warehouses' table is as follows:
-- 1. 'warehouse_ID' is the primary key. It is a integer unique identifier for each warehouse.
-- 2. 'warehouse_Name' is the name of the warehouse. It is a string.
-- 3. 'location' is the location of the warehouse. It is a string.

CREATE TABLE Warehouses (
    warehouse_ID INT PRIMARY KEY,
    warehouse_Name VARCHAR(50),
    location VARCHAR(50)
);

----------------------------------------------------------------------------------------------------------------------------

-- The structure of the 'Shipments' table is as follows:
-- 1. 'shipment_ID' is the primary key. It is a integer unique identifier for each shipment.
-- 2. 'warehouse_ID' is a foreign key that references the 'warehouse_ID' in the 'Warehouses' table.
-- 3. 'product_ID' is a foreign key that references the 'product_ID' in the 'Products' table.
-- 4. 'quantity_Shipped' is the number of units shipped. It is an integer.
-- 5. 'shipment_Date' is the date the shipment was sent. It is a date.
-- 6. 'vendor_ID' is a foreign key that references the 'vendor_ID' in the 'Vendors' table.

CREATE TABLE Shipments (
    shipment_ID INT PRIMARY KEY,
    warehouse_ID INT,
    product_ID INT,
    quantity_Shipped INT,
    shipment_Date DATE,
    vendor_ID INT,
    FOREIGN KEY (warehouse_ID) REFERENCES Warehouses(warehouse_ID),
    FOREIGN KEY (product_ID) REFERENCES Products(product_ID),
    FOREIGN KEY (vendor_ID) REFERENCES Vendors(vendor_ID)
);

----------------------------------------------------------------------------------------------------------------------------

-- The structure of the 'Orders' table is as follows:
-- 1. 'order_ID' is the primary key. It is a integer unique identifier for each order.
-- 2. 'vendor_ID' is a foreign key that references the 'vendor_ID' in the 'Products' table.
-- 3. 'product_ID' is a foreign key that references the 'product_ID' in the 'Products' table.
-- 4. 'quantity_Ordered' is the number of units ordered. It is an integer.
-- 5. 'order_Date' is the date the order was placed. It is a date.

CREATE TABLE Orders (
    order_ID INT PRIMARY KEY,
    vendor_ID INT,
    product_ID INT,
    quantity_Ordered INT,
    order_Date DATE,
    FOREIGN KEY (vendor_ID) REFERENCES Vendors(vendor_ID),
    FOREIGN KEY (product_ID) REFERENCES Products(product_ID)
);

----------------------------------------------------------------------------------------------------------------------------

-- The structure of the 'Vendors' table is as follows:
-- 1. 'vendor_ID' is the primary key. It is a integer unique identifier for each vendor.
-- 2. 'vendor_Name' is the name of the vendor. It is a string.
-- 3. 'vendor_Location' is the location of the vendor. It is a string.

CREATE TABLE Vendors (
    vendor_ID INT PRIMARY KEY,
    vendor_Name VARCHAR(50),
    vendor_Location VARCHAR(50)
);

----------------------------------------------------------------------------------------------------------------------------

-- With the tables created, you can insert data into them.

-- Insert data into the 'Products' table.
INSERT INTO Products (product_ID, product_Name, category, price, quantity) VALUES
(1, 'Boat', 'Watercraft', 100.00, 10),
(2, 'Life Jacket', 'Safety Gear', 10.00, 50),
(3, 'Paddle', 'Watercraft Accessory', 5.00, 20);

-- Insert data into the 'Warehouses' table.
INSERT INTO Warehouses (warehouse_ID, warehouse_Name, location) VALUES
(1, 'Main Warehouse', 'New York'),
(2, 'Secondary Warehouse', 'California');

-- Insert data into the 'Vendors' table.
INSERT INTO Vendors (vendor_ID, vendor_Name, vendor_Location) VALUES
(1, 'Boat Rentals Inc.', 'Florida'),
(2, 'Gear Rentals LLC', 'Texas');

-- Insert data into the 'Shipments' table.
INSERT INTO Shipments (shipment_ID, warehouse_ID, product_ID, quantity_Shipped, shipment_Date, vendor_ID) VALUES
(1, 1, 1, 5, '2021-01-01', 1),
(2, 1, 2, 20, '2021-01-02', 2),
(3, 2, 3, 10, '2021-01-03', 1);

-- Insert data into the 'Orders' table.
INSERT INTO Orders (order_ID, vendor_ID, product_ID, quantity_Ordered, order_Date) VALUES
(1, 1, 2, 10, '2021-01-04'),
(2, 2, 1, 3, '2021-01-05');

----------------------------------------------------------------------------------------------------------------------------

-- Now that the data is inserted, you can query the tables to retrieve information.

-- Query to get all products available for rent.
SELECT * FROM Products;

-- Query to get all warehouses where products are stored.
SELECT * FROM Warehouses;

-- Query to get all shipments sent to vendors.
SELECT * FROM Shipments;

-- Query to get all orders placed by vendors.
SELECT * FROM Orders;

-- Query to get all vendors.
SELECT * FROM Vendors;

----------------------------------------------------------------------------------------------------------------------------
-- This is a basic example of creating tables to store information about products, warehouses, shipments, orders, and vendors in a boat and gear rental business.

-- The tables are related through foreign keys, which establish relationships between the different entities.

-- You can further expand on this example by adding more tables, columns, and relationships to capture additional information about the business operations.