-- Question 1
create table orders2 (
	  orderID int primary key,
    customerName varchar(100)        
);
insert into orders2(orderID, customerName) 
values	(101, 'John Doe'),
		    (102, 'Jane Smith'),
        (103, 'Emily Clark');

create table products1 ( 
	  productID int auto_increment primary key,
    productName varchar(100)
);
insert into products1 (productName)
values   ('Laptop'), ('Mouse'), ('Tablet'), ('Keyboard'), ('Phone');

create table OrderProducts (
	  orderID int,
    productID INT,
    primary key (orderID, productID),
    FOREIGN KEY (orderID) references orders2(orderID),
    foreign key (productID) references products1(productID)
);
INSERT INTO OrderProducts (OrderID, ProductID)
SELECT 101, ProductID FROM products1 WHERE productName IN ('Laptop', 'Mouse');
INSERT INTO OrderProducts (OrderID, ProductID)
SELECT 102, ProductID FROM products1 WHERE productName IN ('Tablet', 'Keyboard', 'Mouse');
INSERT INTO OrderProducts (OrderID, ProductID)
SELECT 103, ProductID FROM products1 WHERE productName IN ('Phone');

-- Question 2
CREATE TABLE orders1 (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);
insert into orders1 (OrderID, CustomerName)
values  (101, 'John Doe'),
        (102, 'Jane Smith'),
        (103, 'Emily Clark');

create table orderItems1 (
	  OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders1(OrderID)
);
INSERT INTO orderItems1 (OrderID, Product, Quantity)
values  (101, 'Laptop', 2),
        (101, 'Mouse', 1),
        (102, 'Tablet', 3),
        (102, 'Keyboard', 1),
        (102, 'Mouse', 2),
        (103, 'Phone', 1);
