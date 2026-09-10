create table Customer (
System_ID int not null,
ID_Password varchar(20) not null,
email varchar(40),
Fname varchar(20) not null,
Mname varchar(20) not null,
Lname varchar(30) not null,
number_of_orders int,
primary key (System_ID)
); 

alter table Customer add join_date date;

create table Customer_phone_numbers(
Customer_ID int not null,
Phone_numbers varchar(12) not null,
primary key (Customer_ID ,Phone_numbers),
foreign key (Customer_ID) references Customer(System_ID)
);

create table City(
name varchar (20) not null,
primary key(name)
);

create table Customer_city(
Customer_ID int not null ,
City_name varchar(20) not null,
primary key (Customer_ID , City_name),
foreign key (Customer_ID) references Customer(System_ID),
foreign key (City_name) references City(name)
);

create table Delivery(
Transporter_ID int not null,
Fname varchar(20) not null,
Mname varchar(20) not null,
Lname varchar(30) not null,
City_Name varchar(20) not null,
primary key(Transporter_ID),
foreign key (City_Name) references City(name)
);

create table Orders(
Order_number int not null,
Customer_ID int not null,
City_name varchar(20) not null,
Quantity int not null,
Date varchar(10)not null,
Recipient_Fname varchar(20) not null,
Recipient_Mname varchar(20),
Recipient_Lname varchar(30) not null,
Recipient_Phone_number varchar(10)  not null,
Total_Price int not null,
First_Payment int not null,
Remaining_Payment int ,
discount int,
Transporter_ID int not null,
Delivery_Date varchar(12) not null,
Delivery_Fees int not null,
primary key (Order_number),
foreign key (City_name) references City(name),
foreign key (Customer_ID) references Customer(System_ID),
foreign key (Transporter_ID) references Delivery(Transporter_ID)
);

ALTER TABLE Orders
DROP COLUMN Total_Price;

ALTER TABLE Orders
ADD price_id INT NOT NULL;

ALTER TABLE Orders
ADD CONSTRAINT price_id
FOREIGN KEY (price_id) REFERENCES Cake_Price(Price_ID);

EXEC sp_rename 'Orders.Date', 'Order_Date', 'COLUMN';

ALTER TABLE Orders
ALTER COLUMN Recipient_Phone_number VARCHAR(20) NOT NULL;

alter table Orders drop column Remaining_Payment;

EXEC sp_rename 'Orders.Date', 'order_date', 'COLUMN';

alter table Orders
alter column order_date date not null;


create table Delivery_Address(
Transporter_id int not null,
Address varchar(20) not null,
primary key (Transporter_id,Address),
foreign key (Transporter_id) references Delivery(Transporter_ID)
);

create table Delivery_PhoneNumber(
Transporter_ID int not null,
phone varchar(20) not null,
primary key (Transporter_ID,phone),
foreign key (Transporter_ID) references Delivery(Transporter_ID)
);

create table Chef(
SSN varchar(20) not null,
age int not null ,
Fname varchar(20) not null,
Mname varchar(20) not null,
Lname varchar(30) not null,
nationality varchar(20) not null ,
speciality varchar(50) not null , 
primary key(SSN)
);

alter table Chef alter column SSN int not null;

create table Chef_PhoneNumber(
Chef_SSN varchar(20) not null,
phone_Number varchar(12) ,
primary key (phone_Number , Chef_SSN),
foreign key (Chef_SSN) references Chef(SSN)
);

create table Chef_City(
Chef_SSN varchar(20) not null,
city_Name varchar (20) not null,
primary key(city_name , Chef_SSN ),
foreign key (Chef_SSN) references Chef(SSN),
foreign key (city_Name) references City(name)
);

create table Daily_Payment(
Date varchar(10) not null,
Total decimal not null,
primary key (Date)
);

create table Cake(
Cake_ID int not null ,
details varchar(20) not null,
primary key(Cake_ID)
);

use OnlineBakery;
alter table cake add chef_ssn varchar(20);

alter table cake
add constraint chef_ssn foreign key (chef_ssn) references Chef(SSN);

create table Cake_Size(
Size_ID int not null,
details varchar(20) not null,
primary key(Size_ID)
);

create table Gifts(
Date varchar(20) not null,
Type_Of_Gift varchar(30) not null,
Customer_ID int not null,
primary key (Date),
foreign key (Customer_ID) references Customer(System_ID)
);

drop table Order_Of_Cake;
drop table Cake_Flavor_Topping;
drop table Cake_Filling;
drop table Cake_Flavor;
drop table Cake_Price;

create table Chef_Rating(
Chef_SSN varchar(20) not null,
System_Id int not null ,
Rating_Over_5 int not null,
primary key(Chef_SSN,System_Id,Rating_Over_5),
foreign key (Chef_SSN) references Chef(SSN),
foreign key (System_Id) references Customer(System_ID));

create table Cake_Flavor(
Flavor_ID int not null,
Flavor_type varchar(20) not null,
Inside_Frosting varchar(20) not null,
Outside_Frosting varchar(20) not null,
filling varchar(20),
topping varchar(20),
primary key(Flavor_ID),
);

alter table Cake_Flavor add cake_id int ;
alter table Cake_Flavor add constraint cake_type foreign key (cake_id) references Cake(Cake_ID);

create table Cake_Price(
Price_ID int not null,
Cake_ID int not null ,
Size_ID int not null,
Flavor_ID int not null,
price decimal not null,
primary key(Price_ID),
foreign key (Flavor_ID) references Cake_Flavor(Flavor_ID),
foreign key (Size_ID) references  Cake_Size(Size_ID),
foreign key (Cake_ID) references Cake(Cake_ID)
);

use OnlineBakery;

drop table Payment_Type;
drop table Payment_Currency;
drop table Payment;

create table Payments(
Payment_ID int not null,
Order_Number int not null,
payment_value decimal not null,
primary key(Payment_ID),
foreign key (Order_Number) references Orders(Order_number)
);

create table Payments_Type(
Payment_ID int not null,
Payment_type varchar(20) not null,
primary key(Payment_ID,Payment_type),
foreign key (Payment_ID) references Payments(Payment_ID)
);

create table Payments_Currency(
Payment_ID int not null,
currency varchar(20) not null,
primary key(Payment_ID,currency),
foreign key (Payment_ID) references Payments(Payment_ID)
);

