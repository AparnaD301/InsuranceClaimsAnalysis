--Data Population
--Insert realistic sample data into each table 
--ensuring a variety of scenarios are represented
--such as different policy types,claim amounts, and customer profiles

INSERT INTO PolicyTypes(PolicyTypeName,Description)VALUES
('Auto','Coverage for vehicles'),
('Home','Coverage for home and property'),
('Life','Life insurance policies'),
('Health','Medical and healthcare coverage'),
('Travel','Coverage for travel-related risks');

INSERT INTO Customers(FirstName,LastName,DateOfBirth,Gender,Address,City,State,Zipcode)VALUES
('John','Doe',date '1985-07-15','M','123 Maple St','Louisville','Kentucky','40202'),
('Jane','Smith',date '1992-09-25','F','456 Oak Ave','New York','New York','10001'),
('Michael','Johnson',date '1978-11-03','M','789 Pine Rd','San Francisco','California','94103'),
('Emily','Davis',date '1995-05-16','F','101 Cedar Ln','Miami','Florida','33101'),
('David','Brown',date '1980-03-29','M','202 Birch Blvd','Houston','Texas','77001'),
('Laura','Wilson',date '1989-02-08','F','303 Walnut Ct','Denver','Colorado','80201'),
('Robert','Miller',date '1990-12-14','M','404 Elm St','Chicago','Illinois','60601'),
('Sarah','Lee',date '1975-08-20','F','505 Spruce Dr','Atlanta','Georgia','30301'),
('Daniel','Gonzalez',date '1983-06-05','M','606 Fir Way','Phoenix','Arizona','85001'),
('Lisa','Martinez',date '1997-04-22','F','707 Palm Pl','Seattle','Washington','98101');

INSERT INTO Policies(CustomerID,PolicyTypeID,PolicyStartDate,PolicyEndDate,Premium)VALUES
(1,1,date '2022-01-01',date '2023-01-01',1200.00),
(2,2,date '2021-06-15',date '2024-06-15',850.00),
(3,4,date '2020-09-01',date '2025-09-01',300.00),
(4,5,date '2022-03-10',date '2023-03-10',150.00),
(5,3,date '2019-11-05',date '2029-11-05',2500.00),
(6,1,date '2021-02-20',date '2022-02-20',900.00),
(7,2,date '2020-12-01',date '2023-12-01',950.00),
(8,4,date '2023-01-01',date '2024-01-01',400.00),
(9,5,date '2022-05-15',date '2023-05-15',200.00),
(10,1,date'2021-09-25',date '2022-09-25',1100.00);

INSERT INTO Claims(PolicyID,ClaimDate,ClaimAmount,ClaimDescription,ClaimStatus)VALUES
(1,date '2022-02-10',500.00,'Auto accident repair','Approved'),
(2,date '2022-07-15',2000.00,'Home water damage','Pending'),
(3,date '2021-12-01',10000.00,'Hospitalization','Approved'),
(4,date '2022-11-18',300.00,'Lost luggage during travel','Rejected'),
(5,date '2020-05-05',50000.00,'Life insurance claim','Approved'),
(6,date '2021-04-08',1200.00,'Car theft','Approved'),
(7,date '2021-09-25',1500.00,'Home fire damage','Pending'),
(8,date '2023-03-20',800.00,'Medical procedure','Approved'),
(9,date '2022-09-10',250.00,'Flight delay compensation','Rejected'),
(10,date '2022-12-05',700.00,'Car accident repair','Approved');