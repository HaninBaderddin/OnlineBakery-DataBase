INSERT INTO Customer VALUES
(1, 'jamal123', 'jamal.sami@email.com', 'Jamal', 'Mohammad' , 'Sami', 1),
(2, 'ahmad123', 'ahmad.khaled@email.com', 'Ahmad', 'Ali', 'Khaled', 2),
(3, 'sara123', 'sara.hassan@email.com', 'Sara', 'Ali', 'Hassan', 1),
(4, 'omar123', 'omar.saleh@email.com', 'Omar', 'Mohammad', 'Saleh', 2),
(5, 'lina123', 'lina.mansour@email.com', 'Lina', 'Ahmad', 'Mansour', 4),
(6, 'rana123', 'rana.nader@email.com', 'Rana', 'Jamal', 'Nader', 1),
(7, 'youssef123', 'youssef.adel@email.com', 'Youssef', 'Jad', 'Adel', 2);

use OnlineBakery;
UPDATE Customer SET join_date = '2012-01-10' WHERE System_ID = 1;
UPDATE Customer SET join_date = '2012-02-15' WHERE System_ID = 2;
UPDATE Customer SET join_date = '2012-03-20' WHERE System_ID = 3;
UPDATE Customer SET join_date = '2012-05-05' WHERE System_ID = 4;
UPDATE Customer SET join_date = '2013-01-12' WHERE System_ID = 5;
UPDATE Customer SET join_date = '2013-02-18' WHERE System_ID = 6;
UPDATE Customer SET join_date = '2013-03-25' WHERE System_ID = 7;


INSERT INTO Customer_phone_numbers VALUES
(1, '+96170123456'),
(2, '+96170123457'),
(3, '+96170123458'),
(4, '+96170123459'),
(5, '+96170123460'),
(6, '+96170123461'),
(7, '+96170123462');

INSERT INTO City VALUES
('Beirut'),
('Tripoli'),
('Saida'),
('Byblos'),
('Tyre'),
('Zahle'),
('Jounieh');

INSERT INTO Customer_city VALUES
(1, 'Beirut'),
(2, 'Tripoli'),
(3, 'Saida'),
(4, 'Byblos'),
(5, 'Tyre'),
(6, 'Zahle'),
(7, 'Jounieh');

INSERT INTO Gifts VALUES
('2012-06-1', 'Coupon', 1),
('2012-08-1', 'Free Shipping', 2),
('2012-10-1', 'Discount', 3),
('2012-12-1', 'Voucher', 4),
('2013-02-1', 'Coupon', 5),
('2013-04-1', 'Free Shipping', 6),
('2013-06-1', 'Discount', 7);


INSERT INTO Delivery VALUES
(1, 'Ali', 'Ahmad', 'Hassan', 'Beirut'),
(2, 'Nabil', 'Charbel', 'Karim', 'Tripoli'),
(3, 'Hadi', 'Mahmoud', 'Salem', 'Saida'),
(4, 'Rami', 'Bilal', 'Jaber', 'Byblos'),
(5, 'Fadi', 'Jamal', 'Nasser', 'Tyre'),
(6, 'Tarek', 'Younes', 'Hamdan', 'Zahle'),
(7, 'Bilal', 'Abdallah', 'Marouni', 'Jounieh');

INSERT INTO Delivery_Address VALUES
(1, 'Hamra Street'),
(2, 'Al Mina Road'),
(3, 'Sea Road'),
(4, 'Old Port'),
(5, 'Corniche'),
(6, 'Main Square'),
(7, 'Coastal Road');

INSERT INTO Delivery_PhoneNumber VALUES
(1, '+96171111111'),
(2, '+96181222222'),
(3, '+96170333333'),
(4, '+96171444444'),
(5, '+96176555555'),
(6, '+96176666666'),
(7, '+96181777777');

INSERT INTO Cake VALUES
(1, 'Red Velvet Cake'),
(2, 'Matiltda Cake'),
(3, 'White Cake'),
(4, 'Strawberry dream');

update Cake set chef_ssn = 1001 where Cake_ID = 1;
update Cake set chef_ssn = 1002 where Cake_ID = 2;
update Cake set chef_ssn = 1003 where Cake_ID = 3;
update Cake set chef_ssn = 1005 where Cake_ID = 4;

INSERT INTO Cake_Size VALUES
(1, 'Small'),
(2, 'Medium'),
(3, 'Large');

INSERT INTO Cake_Flavor VALUES
(1, 'Red Velvet', 'Cream Cheese', 'Cream Cheese' , null , null),
(2, 'Chocolate', 'Chocolate Ganache', 'Chocolate Cream' , null , null),
(3, 'Chocolate', 'Chocolate Ganache', 'Chocolate Cream' , 'Chocolate Chips' , 'Chocolate sauce'),
(4, 'Chocolate', 'Chocolate Ganache', 'Chocolate Cream' , null , 'Chocolate sauce'),
(5, 'Chocolate', 'Chocolate Ganache', 'Chocolate Cream' ,  'Chocolate Chips' , null),
(6, 'Vanilla', 'Vanilla Cream', 'Buttercream' ,null , null),
(7, 'Vanilla', 'Vanilla Cream', 'Buttercream' , 'Vanilla Custard' , 'White Chocolate'),
(8, 'Vanilla', 'Vanilla Cream', 'Buttercream' , 'Vanilla Custard' , null),
(9, 'Vanilla', 'Vanilla Cream', 'Buttercream' , null ,'White Chocolate'),
(10, 'Strawberry', 'Strawberry Cream', 'Whipped Cream' ,null, null),
(11, 'Strawberry', 'Strawberry Cream', 'Whipped Cream' , 'Strawberry Jam' ,  'Strawberry fruit'),
(12, 'Strawberry', 'Strawberry Cream', 'Whipped Cream' , 'Strawberry Jam' ,  null),
(13, 'Strawberry', 'Strawberry Cream', 'Whipped Cream' ,null,  'Strawberry fruit');

update Cake_Flavor set cake_id = 1 where Flavor_ID = 1;
update Cake_Flavor set cake_id = 2 where Flavor_ID = 2;
update Cake_Flavor set cake_id = 2 where Flavor_ID = 3;
update Cake_Flavor set cake_id = 2 where Flavor_ID = 4;
update Cake_Flavor set cake_id = 2 where Flavor_ID = 5;
update Cake_Flavor set cake_id = 3 where Flavor_ID = 6;
update Cake_Flavor set cake_id = 3 where Flavor_ID = 7;
update Cake_Flavor set cake_id = 3 where Flavor_ID = 8;
update Cake_Flavor set cake_id = 3 where Flavor_ID = 9;
update Cake_Flavor set cake_id = 4 where Flavor_ID = 10;
update Cake_Flavor set cake_id = 4 where Flavor_ID = 11;
update Cake_Flavor set cake_id = 4 where Flavor_ID = 12;
update Cake_Flavor set cake_id = 4 where Flavor_ID = 13;


INSERT INTO Cake_Price VALUES
(1,1, 1, 1, 7.00),   
(2,1, 2, 1, 10.00),  
(3,1, 3, 1, 15.00), 
(4,2, 1, 2, 7.50),
(5,2, 2, 2, 12.00),
(6,2, 3, 2, 16.00),
(7,2, 1, 3, 8.50),
(8,2, 2, 3, 13.00),
(9,2, 3, 3, 17.00),
(10,2, 1, 4, 8.00),
(11,2, 2, 4, 12.50),
(12,2, 3, 4, 16.50),
(13,2, 1, 5, 8.00),
(14,2, 2, 5, 12.50),
(15,2, 3, 5, 16.50),
(16,3, 1, 6, 6.00),
(17,3, 2, 6, 9.00),
(18,3, 3, 6, 12.00),
(19,3, 1, 7, 7.00),
(20,3, 2, 7, 10.00),
(21,3, 3, 7, 13.00),
(22,3, 1, 8, 6.50),
(23,3, 2, 8, 9.50),
(24,3, 3, 8, 12.50),
(25,3, 1, 9, 6.50),
(26,3, 2, 9, 9.50),
(27,3, 3, 9, 12.50),
(28,4, 1, 10, 7.00),
(29,4, 2, 10, 10.00),
(30,4, 3, 10, 15.00),
(31,4, 1, 11, 8.00),
(32,4, 2, 11, 11.00),
(33,4, 3,11, 16.00),
(34,4, 1, 12, 7.50),
(35,4, 2, 12, 10.50),
(36,4, 3, 12, 15.50),
(37,4, 1, 13, 7.50),
(38,4, 2, 13, 10.50),
(39,4, 3,13, 15.50);

INSERT INTO Chef VALUES
(1001, 24, 'Mariam', 'Mahmoud ', 'Marouni', 'Lebanese', 'Pastry Chef'),
(1002, 32, 'Mira', 'Ali', 'Khalil', 'Lebanese', 'Cake Decorator '),
(1003, 29, 'Salim', 'Fadi', ' Jaber', 'Lebanese', 'Chocolate Work '),
(1004, 38, 'Rania', 'Mohammad ', 'Siblini ', 'Lebanese', 'Sugar Artistry'),
(1005, 45, 'Mira', 'Nabil', 'Khalil ', 'Lebanese', 'Filling Specialist ');

INSERT INTO Chef_PhoneNumber VALUES
(1001, '+96170123456'),
(1002, '+96171123457'),
(1003, '+96170123458'),
(1004, '+96171123459'),
(1005, '+96170123460');

INSERT INTO Chef_City VALUES
(1001, 'Beirut'),
(1002, 'Tripoli'),
(1003, 'Saida'),
(1004, 'Byblos'),
(1005, 'Jounieh');
--orderNumber , customerId , City_name , quantity , dateOfOrdering , recip info , firstPay, discount , deliveryId , ddate , dFees , 
INSERT INTO Orders VALUES
(1001, 1, 'Beirut', 1, '2012-12-01', 'Jamal', 'Mohammad', 'Sami', '70123456', 5.00, 0, 1, '2025-12-03', 5.00, 1),
(1002, 2, 'Tripoli', 1, '2012-12-02', 'Ahmad', 'Ali', 'Khaled', '70123457', 5.00, 0, 2, '2025-12-04', 4.00, 4),
(1003, 2, 'Beirut', 2, '2012-08-05', 'Farah', 'Ali', 'Khaled', '70129887', 10.00, 5, 1, '2025-12-07', 5.00, 5),
(1004, 3, 'Saida', 1, '2012-10-03', 'Sara', 'Ali', 'Hassan', '70123458', 5.00, 0, 3, '2025-12-05', 4.00, 16),
(1005, 4, 'Byblos', 1, '2012-11-04', 'Omar', 'Mohammad', 'Saleh', '70123459', 5.00, 0, 4, '2025-12-06', 4.00, 29),
(1006, 4, 'Byblos', 2, '2013-01-06', 'Omar', 'Mohammad', 'Saleh', '70123459', 10.00, 5, 4, '2025-12-08', 5.00, 30),
(1007, 5, 'Tyre', 1, '2012-05-08', 'Lina', 'Ahmad', 'Mansour', '70123460', 5.00, 0, 5, '2025-12-04', 4.00, 17),
(1008, 5, 'Tyre', 1, '2013-03-05', 'Lina', 'Ahmad', 'Mansour', '70123460', 5.00, 0, 5, '2025-12-07', 4.00, 20),
(1009, 5, 'Tyre', 2, '2013-03-08', 'Lina', 'Ahmad', 'Mansour', '70123460', 10.00, 5, 5, '2025-12-10', 5.00, 21),
(1010, 5, 'Tyre', 1, '2013-02-11', 'Lina', 'Ahmad', 'Mansour', '70123460', 5.00, 0, 5, '2025-12-13', 4.00, 18),
(1011, 6, 'Zahle', 1, '2012-12-03', 'Rana', 'Jamal', 'Nader', '70123461', 5.00, 0, 6, '2025-12-05', 4.00, 23),
(1012, 7, 'Jounieh', 1, '2012-12-04', 'Youssef', 'Jad', 'Adel', '70123462', 5.00, 0, 7, '2025-12-06', 4.00, 10),
(1013, 7, 'Jounieh', 2, '2013-01-07', 'Youssef', 'Jad', 'Adel', '70123462', 10.00, 5, 7, '2025-12-09', 5.00, 11);

-- Order 1001: price 7.00 → Cake_ID 1
UPDATE Orders SET Cake_ID = 1 WHERE Order_number = 1001;
-- Order 1002: price 7.50 → Cake_ID 4
UPDATE Orders SET Cake_ID = 4 WHERE Order_number = 1002;
-- Order 1003: price 12.00 → Cake_ID 18
UPDATE Orders SET Cake_ID = 18 WHERE Order_number = 1003;
-- Order 1004: price 6.00 → Cake_ID 16
UPDATE Orders SET Cake_ID = 16 WHERE Order_number = 1004;
-- Order 1005: price 10.00 → Cake_ID 20
UPDATE Orders SET Cake_ID = 20 WHERE Order_number = 1005;
-- Order 1006: price 15.00 → Cake_ID 18 or 33? depending on quantity
UPDATE Orders SET Cake_ID = 33 WHERE Order_number = 1006;
-- Order 1007: price 9.00 → Cake_ID 17
UPDATE Orders SET Cake_ID = 17 WHERE Order_number = 1007;
-- Order 1008: price 10.00 → Cake_ID 20
UPDATE Orders SET Cake_ID = 20 WHERE Order_number = 1008;
-- Order 1009: price 13.00 → Cake_ID 21
UPDATE Orders SET Cake_ID = 21 WHERE Order_number = 1009;
-- Order 1010: price 12.00 → Cake_ID 18
UPDATE Orders SET Cake_ID = 18 WHERE Order_number = 1010;
-- Order 1011: price 9.50 → Cake_ID 23
UPDATE Orders SET Cake_ID = 23 WHERE Order_number = 1011;
-- Order 1012: price 8.00 → Cake_ID 10
UPDATE Orders SET Cake_ID = 10 WHERE Order_number = 1012;
-- Order 1013: price 11.00 → Cake_ID 32
UPDATE Orders SET Cake_ID = 32 WHERE Order_number = 1013;

use OnlineBakery;
INSERT INTO Payments VALUES
-- Order 1001 (price 7.00 ×1 = 7.00)
(1, 1001, 5.00),     -- FirstPayment
(2, 1001, 2.00),     -- Remaining
-- Order 1002 (7.50 ×1 = 7.50)
(3, 1002, 5.00),
(4, 1002, 2.50),
-- Order 1003 (12.00 ×2 = 24.00, discount 5)
(5, 1003, 10.00),
(6, 1003, 9.00),
-- Order 1004 (6.00 ×1 = 6.00)
(7, 1004, 5.00),
(8, 1004, 1.00),
-- Order 1005 (10.00 ×1 = 10.00)
(9, 1005, 5.00),
(10, 1005, 5.00),
-- Order 1006 (15.00 ×2 = 30.00, discount 5)
(11, 1006, 10.00),
(12, 1006, 15.00),
-- Order 1007 (9.00 ×1 = 9.00)
(13, 1007, 5.00),
(14, 1007, 4.00),
-- Order 1008 (10.00 ×1 = 10.00)
(15, 1008, 5.00),
(16, 1008, 5.00),
-- Order 1009 (13.00 ×2 = 26.00, discount 5)
(17, 1009, 10.00),
(18, 1009, 11.00),
-- Order 1010 (12.00 ×1 = 12.00)
(19, 1010, 5.00),
(20, 1010, 7.00),
-- Order 1011 (9.50 ×1 = 9.50)
(21, 1011, 5.00),
(22, 1011, 4.50),
-- Order 1012 (8.00 ×1 = 8.00)
(23, 1012, 5.00),
(24, 1012, 3.00),
-- Order 1013 (11.00 ×2 = 22.00, discount 5)
(25, 1013, 10.00),
(26, 1013, 7.00);


INSERT INTO Payments_Type VALUES
(1, 'Cash'),
(2, 'OMT'),
(3, 'Whish'),
(4, 'OMT'),
(5, 'OMT'),
(6, 'Whish'),
(7, 'Cash'),
(8, 'Cash'),
(9, 'OMT'),
(10, 'Cash'),
(11, 'Cash'),
(12, 'OMT'),
(13, 'Cash'),
(14, 'Whish'),
(15, 'Cash'),
(16, 'OMT'),
(17, 'Cash'),
(18, 'Whish'),
(19, 'Cash'),
(20, 'OMT'),
(21, 'Cash'),
(22, 'OMT'),
(23, 'Cash'),
(24, 'Whish'),
(25, 'Cash'),
(26, 'OMT');

INSERT INTO Payments_Currency VALUES
(1, 'USD'),
(2, 'USD'),
(3, 'USD'),
(4, 'USD'),
(5, 'USD'),
(6, 'USD'),
(7, 'LBP'),
(8, 'USD'),
(9, 'USD'),
(10, 'LBP'),
(11, 'USD'),
(12, 'USD'),
(13, 'USD'),
(14, 'USD'),
(15, 'USD'),
(16, 'USD'),
(17, 'USD'),
(18, 'USD'),
(19, 'USD'),
(20, 'USD'),
(21, 'LBP'),
(22, 'USD'),
(23, 'USD'),
(24, 'LBP'),
(25, 'USD'),
(26, 'USD');

INSERT INTO Chef_Rating VALUES
(1001, 1, 5),
(1001, 2, 4),
(1001, 3, 5),
(1002, 2, 3),
(1002, 4, 4),
(1002, 5, 5),
(1003, 1, 4),
(1003, 3, 5),
(1003, 6, 3),
(1004, 4, 5),
(1004, 5, 4),
(1004, 7, 5),
(1005, 6, 4),
(1005, 7, 5),
(1005, 1, 3);


