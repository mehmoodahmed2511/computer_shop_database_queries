
--In this project, I have written DDL and DML commands:

create database ComputerShop;
use ComputerShop;

create table Customers(
customerID int NOT NULL PRIMARY KEY,
firstName char(30) NOT NULL,
lastName char(30),
email varchar(40) NOT NULL,
city char(40) NOT NULL,
registrationDate date
);

create table Products(
productID int PRIMARY KEY,
productName varchar(50) NOT NULL,
category varchar(25) NOT NULL,
price decimal(10,2) NOT NULL,
stock int
);

create table Orders(
orderID int PRIMARY KEY,
customerID int,
productID int,
orderDate date NOT NULL,
quantity int NOT NULL,
totalPrice decimal(10,2) NOT NULL,
FOREIGN KEY (customerID) REFERENCES Customers(customerID),
FOREIGN KEY (productID) REFERENCES Products(productID)
);

INSERT INTO Customers(customerID, firstName, lastName, email, city, registrationDate) VALUES 
(1, 'Alice', 'Smith', 'alice.smith@example.com', 'New York', '2023-01-05'),
(2, 'Bob', 'Johnson', 'bob.j@example.com', 'Los Angeles', '2023-01-10'),
(3, 'Charlie', 'Brown', 'charlie.b@example.com', 'Chicago', '2023-01-15'),
(4, 'Diana', 'Miller', 'diana.m@example.com', 'Houston', '2023-01-20'),
(5, 'Eve', 'Davis', 'eve.d@example.com', 'Phoenix', '2023-01-25'),
(6, 'Frank', 'Garcia', 'frank.g@example.com', 'Philadelphia', '2023-01-30'),
(7, 'Grace', 'Rodriguez', 'grace.r@example.com', 'San Antonio', '2023-02-04'),
(8, 'Henry', 'Martinez', 'henry.m@example.com', 'San Diego', '2023-02-09'),
(9, 'Ivy', 'Hernandez', 'ivy.h@example.com', 'Dallas', '2023-02-14'),
(10, 'Jack', 'Lopez', 'jack.l@example.com', 'San Jose', '2023-02-19'),
(11, 'Karen', 'Gonzalez', 'karen.g@example.com', 'Austin', '2023-02-24'),
(12, 'Liam', 'Perez', 'liam.p@example.com', 'Jacksonville', '2023-03-01'),
(13, 'Mia', 'Sanchez', 'mia.s@example.com', 'Fort Worth', '2023-03-06'),
(14, 'Noah', 'Ramirez', 'noah.r@example.com', 'Columbus', '2023-03-11'),
(15, 'Olivia', 'Torres', 'olivia.t@example.com', 'Charlotte', '2023-03-16'),
(16, 'Peter', 'Flores', 'peter.f@example.com', 'San Francisco', '2023-03-21'),
(17, 'Quinn', 'Rivera', 'quinn.r@example.com', 'Indianapolis', '2023-03-26'),
(18, 'Rachel', 'Gomez', 'rachel.g@example.com', 'Seattle', '2023-03-31'),
(19, 'Sam', 'Diaz', 'sam.d@example.com', 'Denver', '2023-04-05'),
(20, 'Tina', 'Reyes', 'tina.r@example.com', 'Washington', '2023-04-10'),
(21, 'Uma', 'Cruz', 'uma.c@example.com', 'Boston', '2023-04-15'),
(22, 'Victor', 'Ortiz', 'victor.o@example.com', 'El Paso', '2023-04-20'),
(23, 'Wendy', 'Morales', 'wendy.m@example.com', 'Detroit', '2023-04-25'),
(24, 'Xavier', 'Gutierrez', 'xavier.g@example.com', 'Nashville', '2023-04-30'),
(25, 'Yara', 'Ruiz', 'yara.r@example.com', 'Memphis', '2023-05-05'),
(26, 'Zack', 'Chavez', 'zack.c@example.com', 'Portland', '2023-05-10'),
(27, 'Amy', 'Mendoza', 'amy.m@example.com', 'Oklahoma City', '2023-05-15'),
(28, 'Ben', 'Castillo', 'ben.c@example.com', 'Las Vegas', '2023-05-20'),
(29, 'Chloe', 'Jimenez', 'chloe.j@example.com', 'Louisville', '2023-05-25'),
(30, 'David', 'Herrera', 'david.h@example.com', 'Baltimore', '2023-05-30'),
(31, 'Ella', 'Vargas', 'ella.v@example.com', 'Milwaukee', '2023-06-04'),
(32, 'Finn', 'Mejia', 'finn.m@example.com', 'Albuquerque', '2023-06-09'),
(33, 'Gina', 'Guerrero', 'gina.g@example.com', 'Tucson', '2023-06-14'),
(34, 'Hugo', 'Rojas', 'hugo.r@example.com', 'Fresno', '2023-06-19'),
(35, 'Isla', 'Vasquez', 'isla.v@example.com', 'Sacramento', '2023-06-24'),
(36, 'Jared', 'Castro', 'jared.c@example.com', 'Mesa', '2023-06-29'),
(37, 'Kira', 'Salazar', 'kira.s@example.com', 'Atlanta', '2023-07-04'),
(38, 'Leo', 'Delgado', 'leo.d@example.com', 'Kansas City', '2023-07-09'),
(39, 'Mona', 'Cortes', 'mona.c@example.com', 'Colorado Springs', '2023-07-14'),
(40, 'Nico', 'Ramos', 'nico.r@example.com', 'Raleigh', '2023-07-19'),
(41, 'Owen', 'Serrano', 'owen.s@example.com', 'Miami', '2023-07-24'),
(42, 'Paige', 'Molina', 'paige.m@example.com', 'Omaha', '2023-07-29'),
(43, 'Kyle', 'Alvarez', 'kyle.a@example.com', 'Virginia Beach', '2023-08-03'),
(44, 'Lana', 'Vega', 'lana.v@example.com', 'Long Beach', '2023-08-08'),
(45, 'Max', 'Leal', 'max.l@example.com', 'Oakland', '2023-08-13'),
(46, 'Nora', 'Estrada', 'nora.e@example.com', 'Minneapolis', '2023-08-18'),
(47, 'Oscar', 'Pacheco', 'oscar.p@example.com', 'Tulsa', '2023-08-23'),
(48, 'Pam', 'Contreras', 'pam.c@example.com', 'Wichita', '2023-08-28'),
(49, 'Quentin', 'Rosales', 'quentin.r@example.com', 'New Orleans', '2023-09-02'),
(50, 'Ruby', 'Fuentes', 'ruby.f@example.com', 'Cleveland', '2023-09-07');


INSERT INTO Products(productID, productName, category, price, stock) VALUES
(101, 'Laptop Pro X', 'Electronics', 1200.00, 50),
(102, 'Mechanical Keyboard', 'Electronics', 85.50, 120),
(103, 'Wireless Mouse', 'Electronics', 30.00, 200),
(104, 'Gaming Headset', 'Electronics', 99.99, 75),
(105, 'External SSD 1TB', 'Electronics', 150.00, 90),
(106, 'Smartwatch Series 5', 'Wearables', 250.00, 60),
(107, 'Fitness Tracker', 'Wearables', 70.00, 150),
(108, 'Bluetooth Speaker', 'Audio', 60.00, 180),
(109, 'Noise Cancelling Headphones', 'Audio', 180.00, 40),
(110, 'Smartphone XYZ', 'Electronics', 800.00, 100),
(111, 'Desk Chair Ergonomic', 'Office', 220.00, 30),
(112, 'Monitor 27-inch 4K', 'Electronics', 350.00, 45),
(113, 'Webcam HD', 'Electronics', 45.00, 110),
(114, 'USB-C Hub', 'Accessories', 25.00, 250),
(115, 'Portable Charger 20000mAh', 'Accessories', 40.00, 170),
(116, 'Coffee Maker', 'Home Appliances', 75.00, 80),
(117, 'Blender High Power', 'Home Appliances', 120.00, 65),
(118, 'Air Fryer', 'Home Appliances', 90.00, 95),
(119, 'Robot Vacuum', 'Home Appliances', 300.00, 25),
(120, 'Smart LED Bulbs (4-pack)', 'Smart Home', 50.00, 130),
(121, 'Security Camera Outdoor', 'Smart Home', 110.00, 55),
(122, 'Smart Thermostat', 'Smart Home', 150.00, 70),
(123, 'Electric Toothbrush', 'Personal Care', 65.00, 100),
(124, 'Electric Shaver', 'Personal Care', 80.00, 85),
(125, 'Hair Dryer Professional', 'Personal Care', 130.00, 40),
(126, 'Yoga Mat', 'Fitness', 25.00, 200),
(127, 'Dumbbell Set 20kg', 'Fitness', 100.00, 35),
(128, 'Resistance Bands Set', 'Fitness', 20.00, 250),
(129, 'Running Shoes Mens', 'Apparel', 70.00, 90),
(130, 'Running Shoes Womens', 'Apparel', 70.00, 88),
(131, 'Backpack Urban', 'Bags', 55.00, 110),
(132, 'Travel Luggage Set', 'Bags', 200.00, 30),
(133, 'Water Bottle Stainless', 'Kitchen', 15.00, 300),
(134, 'Cookware Set 10-piece', 'Kitchen', 250.00, 20),
(135, 'Knife Set', 'Kitchen', 90.00, 60),
(136, 'Tablet 10-inch', 'Electronics', 300.00, 70),
(137, 'E-Reader', 'Electronics', 120.00, 100),
(138, 'Drawing Tablet', 'Electronics', 150.00, 50),
(139, 'Portable Projector', 'Electronics', 280.00, 40),
(140, 'Drone Mini', 'Electronics', 190.00, 30),
(141, 'Board Game Strategy', 'Toys & Games', 40.00, 100),
(142, 'Puzzle 1000-piece', 'Toys & Games', 20.00, 150),
(143, 'Action Figure Collectible', 'Toys & Games', 35.00, 80),
(144, 'Building Blocks Set', 'Toys & Games', 60.00, 70),
(145, 'Art Supplies Kit', 'Hobbies', 45.00, 90),
(146, 'Gardening Tool Set', 'Home & Garden', 50.00, 60),
(147, 'Smart Scale', 'Personal Care', 55.00, 120),
(148, 'Portable Fan', 'Home Appliances', 30.00, 180),
(149, 'Car Dash Cam', 'Automotive', 80.00, 70),
(150, 'Bike Helmet', 'Sports', 65.00, 90);

INSERT INTO Orders(orderID, customerID, productID, orderDate, quantity, totalPrice) VALUES
(1001, 1, 101, '2023-09-01', 1, 1200.00),
(1002, 2, 103, '2023-09-02', 2, 60.00),
(1003, 3, 110, '2023-09-03', 1, 800.00),
(1004, 4, 102, '2023-09-04', 1, 85.50),
(1005, 5, 105, '2023-09-05', 1, 150.00),
(1006, 6, 108, '2023-09-06', 3, 180.00),
(1007, 7, 106, '2023-09-07', 1, 250.00),
(1008, 8, 112, '2023-09-08', 1, 350.00),
(1009, 9, 104, '2023-09-09', 1, 99.99),
(1010, 10, 109, '2023-09-10', 1, 180.00),
(1011, 11, 115, '2023-09-11', 2, 80.00),
(1012, 12, 111, '2023-09-12', 1, 220.00),
(1013, 13, 117, '2023-09-13', 1, 120.00),
(1014, 14, 114, '2023-09-14', 4, 100.00),
(1015, 15, 119, '2023-09-15', 1, 300.00),
(1016, 16, 116, '2023-09-16', 1, 75.00),
(1017, 17, 120, '2023-09-17', 2, 100.00),
(1018, 18, 122, '2023-09-18', 1, 150.00),
(1019, 19, 121, '2023-09-19', 1, 110.00),
(1020, 20, 125, '2023-09-20', 1, 130.00),
(1021, 21, 123, '2023-09-21', 1, 65.00),
(1022, 22, 127, '2023-09-22', 1, 100.00),
(1023, 23, 126, '2023-09-23', 2, 50.00),
(1024, 24, 129, '2023-09-24', 1, 70.00),
(1025, 25, 131, '2023-09-25', 1, 55.00),
(1026, 26, 130, '2023-09-26', 1, 70.00),
(1027, 27, 133, '2023-09-27', 3, 45.00),
(1028, 28, 132, '2023-09-28', 1, 200.00),
(1029, 29, 135, '2023-09-29', 1, 90.00),
(1030, 30, 134, '2023-09-30', 1, 250.00),
(1031, 31, 137, '2023-10-01', 1, 120.00),
(1032, 32, 136, '2023-10-02', 1, 300.00),
(1033, 33, 139, '2023-10-03', 1, 280.00),
(1034, 34, 138, '2023-10-04', 1, 150.00),
(1035, 35, 141, '2023-10-05', 2, 80.00),
(1036, 36, 140, '2023-10-06', 1, 190.00),
(1037, 37, 143, '2023-10-07', 1, 35.00),
(1038, 38, 142, '2023-10-08', 3, 60.00),
(1039, 39, 145, '2023-10-09', 1, 45.00),
(1040, 40, 144, '2023-10-10', 1, 60.00),
(1041, 41, 147, '2023-10-11', 1, 55.00),
(1042, 42, 146, '2023-10-12', 1, 50.00),
(1043, 43, 149, '2023-10-13', 1, 80.00),
(1044, 44, 148, '2023-10-14', 2, 60.00),
(1045, 45, 150, '2023-10-15', 1, 65.00),
(1046, 1, 107, '2023-10-16', 1, 70.00),
(1047, 2, 113, '2023-10-17', 2, 90.00),
(1048, 3, 118, '2023-10-18', 1, 90.00),
(1049, 4, 124, '2023-10-19', 1, 80.00),
(1050, 5, 128, '2023-10-20', 5, 100.00);

select * from Customers;
select firstName, lastName from Customers where customerID > 20;
select firstName from Customers where firstName like '%ar%';
select lastName from Customers where lastName like 'm%';
select firstName from Customers where firstName like '_m%';
select firstName from Customers where firstName like 'a%';

select firstName from Customers where firstName NOT like 'a%';

select * from Products where category IN('Home Appliances', 'Electronics', 'Wearables');
select * from Products WHERE category='Electronics';
select * from Products where price > 500 AND stock > 50;
select * from Products where price > 500 AND stock > 50;
select productName,price from Products where price BETWEEN 200 AND 500;

select productID from Products UNION select orderID from Orders;

SELECT category, count(category) AS Category_Count FROM Products GROUP BY category;
select productName, count(productName) from Products group by productName;

select productName, count(productName), stock, count(stock) from Products group by stock,productName;

select category, count(category) as categoey_total from Products group by category;

select firstName, lastName, orderDate, orderID from Customers as c inner join Orders as o on c.customerID = o.customerID;
select firstName, lastName,productName, category, orderID, quantity, totalPrice from Products as p inner join Orders as o on p.productID = o.productID inner join Customers as c on o.customerID=c.customerID;

select category, sum(price) as totalSales from Products group by category, price;