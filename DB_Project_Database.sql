CREATE DATABASE db_project;
USE db_project;

CREATE TABLE Car (
    Make VARCHAR(20) NOT NULL,
    Model VARCHAR(20) NOT NULL,
    VIN VARCHAR(20) NOT NULL PRIMARY KEY,
    Manufacture_Year INTEGER NOT NULL,
    Eco_Class VARCHAR(20) NOT NULL,
    Price NUMERIC(10),
    CarType VARCHAR(20),
    Cond VARCHAR(10) NOT NULL,
    Dealership_num INT NOT NULL,
    FOREIGN KEY (Dealership_num) REFERENCES Dealership(Dealership_num)
);

INSERT INTO car (VIN, Make, Model, Eco_Class, Manufacture_Year, Price, CarType, Cond, Dealership_num)
VALUES
('1HGCM82633A123456', 'Honda', 'Accord', 'Hybrid', 2021, 28000, 'Sedan', 'New', 1),
('JTDKB20U977654321', 'Toyota', 'Prius', 'Electric', 2022, 32000, 'Sedan', 'New', 1),
('1G1BE5SM2G7300001', 'Chevrolet', 'Volt', 'Hybrid', 2019, 22000, 'Sedan', 'Used', 1),
('WAUZZZ8K0DA100002', 'Audi', 'A3', 'Electric', 2020, 40000, 'Sedan', 'Used', 1),
('3FA6P0G72DR100003', 'Ford', 'Fusion', 'Hybrid', 2018, 20000, 'Sedan', 'Used', 20),
('5N1AZ2MG8HN100004', 'Nissan', 'Rogue', 'Hybrid', 2021, 30000, 'SUV', 'New', 17),
('1C4RJFAG1FC100005', 'Jeep', 'Grand Cherokee', 'Hybrid', 2017, 25000, 'SUV', 'Used', 18),
('1GNSKJKCXFR100006', 'Chevrolet', 'Tahoe', 'Hybrid', 2022, 50000, 'SUV', 'New', 19),
('5UXWX9C55H0T100007', 'BMW', 'X5', 'Electric', 2023, 60000, 'SUV', 'New', 2),
('2T3BFREV2HW100008', 'Toyota', 'RAV4', 'Hybrid', 2019, 28000, 'SUV', 'Used', 2),
('WBA3B3C51EF100009', 'BMW', '328i', 'Electric', 2020, 45000, 'Sedan', 'Used', 2),
('1C4RJFAG1HC100010', 'Jeep', 'Grand Cherokee', 'Hybrid', 2023, 52000, 'SUV', 'New', 2),
('3VW4T7AU1FM100011', 'Volkswagen', 'e-Golf', 'Electric', 2018, 30000, 'Sedan', 'Used', 20),
('KM8J3CA29KU100012', 'Hyundai', 'Kona', 'Electric', 2022, 35000, 'SUV', 'New', 16),
('1GNSCBE03DR100013', 'Chevrolet', 'Suburban', 'Hybrid', 2017, 28000, 'SUV', 'Used', 16),
('5FNRL6H71JB100014', 'Honda', 'Pilot', 'Hybrid', 2021, 40000, 'SUV', 'New', 18),
('WDCGG8JB9FG100015', 'Mercedes-Benz', 'GLC', 'Electric', 2023, 55000, 'SUV', 'New', 3),
('JTDZN3EU2FJ100016', 'Toyota', 'Camry', 'Hybrid', 2019, 25000, 'Sedan', 'Used', 3),
('1C6SRFFT1MN100017', 'Ram', '1500', 'Hybrid', 2020, 35000, 'SUV', 'Used', 3),
('1G1RD6E40FU100018', 'Chevrolet', 'Spark', 'Electric', 2022, 20000, 'Sedan', 'New', 3),
('JTHBE1BL0DA100019', 'Lexus', 'ES', 'Hybrid', 2021, 42000, 'Sedan', 'New', 3),
('2T1KR32E13C123456', 'Toyota', 'Corolla', 'Hybrid', 2022, 28000, 'Sedan', 'New', 3),
('1GNSCBE04ER654321', 'Chevrolet', 'Suburban', 'Hybrid', 2019, 45000, 'SUV', 'Used', 20),
('1FAHP3K21CL100001', 'Ford', 'Focus', 'Electric', 2018, 22000, 'Sedan', 'Used', 19),
('JHMGE8H38CC100002', 'Honda', 'Fit', 'Hybrid', 2023, 30000, 'Sedan', 'New', 16),
('5TDYK3DC8ES100003', 'Toyota', 'Highlander', 'Hybrid', 2020, 38000, 'SUV', 'Used', 4),
('1GNKRHKD3GJ100004', 'Chevrolet', 'Traverse', 'Hybrid', 2021, 32000, 'SUV', 'New', 4),
('5FNRL6H7XGB100005', 'Honda', 'Odyssey', 'Hybrid', 2017, 25000, 'Van', 'Used', 4),
('1C4RDHDG0KC100006', 'Dodge', 'Durango', 'Hybrid', 2018, 28000, 'SUV', 'Used', 17),
('1HGCM82633A100007', 'Honda', 'Accord', 'Hybrid', 2020, 29000, 'Sedan', 'Used', 15),
('1G1FY6S07H5110008', 'Chevrolet', 'Camaro', 'Electric', 2019, 35000, 'Coupe', 'Used', 20),
('JTHCE1BL5FA100009', 'Lexus', 'GS', 'Hybrid', 2022, 48000, 'Sedan', 'New', 5),
('3N1AB7AP5GY100010', 'Nissan', 'Leaf', 'Electric', 2023, 30000, 'Hatchback', 'New', 5),
('1GKKRPED7BJ100011', 'GMC', 'Acadia', 'Hybrid', 2017, 26000, 'SUV', 'Used', 5),
('JTEBU5JR5G5270012', 'Toyota', '4Runner', 'Hybrid', 2021, 42000, 'SUV', 'New', 5),
('2HKRW1H8XJH100013', 'Honda', 'CR-V', 'Hybrid', 2020, 33000, 'SUV', 'Used', 11),
('1GNKVGKD1HJ100014', 'Chevrolet', 'Trax', 'Electric', 2018, 24000, 'SUV', 'Used', 12),
('1FADP3L96JL100015', 'Ford', 'Focus', 'Electric', 2022, 32000, 'Hatchback', 'New', 14),
('5NMS2CAD8KH100016', 'Hyundai', 'Santa Fe', 'Hybrid', 2019, 36000, 'SUV', 'Used', 6),
('WBA4Z1C59JD100017', 'BMW', '440i', 'Electric', 2021, 50000, 'Coupe', 'New', 6),
('1HGCR2F55EA100018', 'Honda', 'Accord', 'Hybrid', 2018, 27000, 'Sedan', 'Used', 6),
('2T1BPRHE2EC123456', 'Toyota', 'Camry', 'Hybrid', 2022, 28000, 'Sedan', 'New', 6),
('1GNLREEDXCS654321', 'Chevrolet', 'Equinox', 'Hybrid', 2019, 45000, 'SUV', 'Used', 7),
('1FAHP3J27CL100019', 'Ford', 'Fiesta', 'Electric', 2018, 22000, 'Hatchback', 'Used', 7),
('JHMGE8H88CC100020', 'Honda', 'Civic', 'Hybrid', 2023, 30000, 'Sedan', 'New', 7),
('5TDYK3EH8FS100021', 'Toyota', 'Sienna', 'Hybrid', 2020, 38000, 'Van', 'Used', 8),
('1GNKRHKD3GJ100022', 'Chevrolet', 'Traverse', 'Hybrid', 2021, 32000, 'SUV', 'New', 8),
('5FNRL6H7XGB100023', 'Honda', 'Odyssey', 'Hybrid', 2017, 25000, 'Van', 'Used', 8),
('1C4RDHDG0KC100024', 'Dodge', 'Durango', 'Hybrid', 2018, 28000, 'SUV', 'Used', 9),
('1HGCM82633A100025', 'Honda', 'Accord', 'Hybrid', 2020, 29000, 'Sedan', 'Used', 9),
('1G1FY6S07H5110026', 'Chevrolet', 'Camaro', 'Electric', 2019, 35000, 'Coupe', 'Used', 9),
('JTHCE1BL5FA100027', 'Lexus', 'GS', 'Hybrid', 2022, 48000, 'Sedan', 'New', 10),
('3N1AB7AP5GY100028', 'Nissan', 'Leaf', 'Electric', 2023, 30000, 'Hatchback', 'New', 10),
('1GKKRPED7BJ100029', 'GMC', 'Acadia', 'Hybrid', 2017, 26000, 'SUV', 'Used', 10),
('JTEBU5JR5G5270030', 'Toyota', '4Runner', 'Hybrid', 2021, 42000, 'SUV', 'New', 10),
('2HKRW1H8XJH100031', 'Honda', 'CR-V', 'Hybrid', 2020, 33000, 'SUV', 'Used', 11),
('1GNKVGKD1HJ100032', 'Chevrolet', 'Trax', 'Electric', 2018, 24000, 'SUV', 'Used', 11),
('1FADP3L96JL100033', 'Ford', 'Focus', 'Electric', 2022, 32000, 'Hatchback', 'New', 12),
('5NMS2CAD8KH100034', 'Hyundai', 'Santa Fe', 'Hybrid', 2019, 36000, 'SUV', 'Used', 12),
('WBA4Z1C59JD100035', 'BMW', '440i', 'Electric', 2021, 50000, 'Coupe', 'New', 12),
('1HGCR2F55EA100036', 'Honda', 'Accord', 'Hybrid', 2018, 27000, 'Sedan', 'Used', 13),
('5TFRY5F10KX100037', 'Toyota', 'Tundra', 'Hybrid', 2022, 48000, 'Truck', 'New', 13),
('2T1KR32E13C100038', 'Toyota', 'Corolla', 'Hybrid', 2021, 30000, 'Sedan', 'New', 13),
('1GNSCBE04ER100039', 'Chevrolet', 'Suburban', 'Hybrid', 2019, 45000, 'SUV', 'Used', 13),
('1FAHP3K21CL100040', 'Ford', 'Focus', 'Electric', 2018, 22000, 'Sedan', 'Used', 14),
('JHMGE8H38CC100041', 'Honda', 'Fit', 'Hybrid', 2023, 30000, 'Sedan', 'New', 14),
('5TDYK3DC8ES100042', 'Toyota', 'Highlander', 'Hybrid', 2020, 38000, 'SUV', 'Used', 14),
('1GNKRHKD3GJ100043', 'Chevrolet', 'Traverse', 'Hybrid', 2021, 32000, 'SUV', 'New', 15),
('5FNRL6H7XGB100044', 'Honda', 'Odyssey', 'Hybrid', 2017, 25000, 'Van', 'Used', 15),
('1C4RDHDG0KC100045', 'Dodge', 'Durango', 'Hybrid', 2018, 28000, 'SUV', 'Used', 15);

CREATE TABLE Pre_owned_history (
    VIN VARCHAR(20) NOT NULL,
    Last_Service_Date DATE NOT NULL,
    Last_Sale_Price NUMERIC(10) NOT NULL,
    Insurance_Claims NUMERIC(10),
    Previous_Owners NUMERIC(10),
    FOREIGN KEY (VIN) REFERENCES car(VIN)
);

SELECT * FROM Pre_owned_history;

INSERT INTO Pre_owned_history (VIN, Previous_Owners, Insurance_Claims, Last_Sale_Price, Last_Service_Date)
VALUES
('1HGCM82633A123456', 2, 0, 25000, '2022-05-15'),
('JTDKB20U977654321', 1, 1, 18000, '2021-09-10'),
('1G1BE5SM2G7300001', 3, 2, 32000, '2023-01-20'),
('WAUZZZ8K0DA100002', 1, 0, 22000, '2022-11-05'),
('3FA6P0G72DR100003', 2, 1, 30000, '2023-03-08'),
('5N1AZ2MG8HN100004', 1, 0, 20000, '2022-07-12'),
('1C4RJFAG1FC100005', 2, 1, 45000, '2021-12-30'),
('1GNSKJKCXFR100006', 3, 2, 50000, '2022-08-25'),
('5UXWX9C55H0T100007', 1, 0, 28000, '2023-02-18'),
('2T3BFREV2HW100008', 2, 1, 35000, '2022-10-14'),
('WBA3B3C51EF100009', 1, 0, 42000, '2022-06-30'),
('1C4RJFAG1HC100010', 2, 1, 30000, '2023-04-05'),
('3VW4T7AU1FM100011', 3, 2, 26000, '2022-03-20'),
('KM8J3CA29KU100012', 1, 0, 42000, '2022-08-02'),
('1GNSCBE03DR100013', 2, 1, 33000, '2023-01-15'),
('5FNRL6H71JB100014', 1, 0, 24000, '2022-04-18'),
('WDCGG8JB9FG100015', 2, 1, 32000, '2023-02-28'),
('JTDZN3EU2FJ100016', 3, 2, 37000, '2022-09-10'),
('1C6SRFFT1MN100017', 1, 0, 20000, '2022-11-20'),
('1G1RD6E40FU100018', 2, 1, 48000, '2022-07-05'),
('JTHBE1BL0DA100019', 2, 1, 26000, '2022-03-10'),
('2T1KR32E13C123456', 1, 0, 30000, '2021-10-15'),
('1GNSCBE04ER654321', 3, 2, 38000, '2023-02-20'),
('1FAHP3K21CL100001', 1, 0, 24000, '2022-11-05'),
('JHMGE8H38CC100002', 2, 1, 32000, '2023-04-08'),
('5TDYK3DC8ES100003', 1, 0, 21000, '2022-08-12'),
('1GNKRHKD3GJ100004', 2, 2, 42000, '2021-12-30'),
('JTEBU5JR5G5270012', 3, 1, 48000, '2022-08-25'),
('2HKRW1H8XJH100013', 1, 0, 29000, '2023-03-18'),
('1GNKVGKD1HJ100014', 2, 1, 36000, '2022-10-14'),
('5FNRL6H7XGB100005', 1, 0, 45000, '2022-07-30'),
('1C4RDHDG0KC100006', 2, 1, 31000, '2023-05-05'),
('1HGCM82633A100007', 3, 2, 25000, '2022-02-20'),
('1G1FY6S07H5110008', 1, 0, 44000, '2022-07-02'),
('JTHCE1BL5FA100009', 2, 1, 33000, '2023-01-10'),
('2T1BPRHE2EC123456', 1, 0, 22000, '2022-04-15'),
('1GNLREEDXCS654321', 2, 1, 34000, '2023-03-28'),
('1FAHP3J27CL100019', 3, 2, 37000, '2022-09-20'),
('JHMGE8H88CC100020', 1, 0, 27000, '2022-12-25'),
('5TDYK3EH8FS100021', 2, 1, 40000, '2022-08-10'),
('1GNKRHKD3GJ100022', 1, 0, 38000, '2022-12-05'),
('5FNRL6H7XGB100023', 2, 1, 28000, '2023-04-15'),
('1C4RDHDG0KC100024', 3, 2, 42000, '2022-03-30'),
('1HGCM82633A100025', 1, 0, 36000, '2022-09-02'),
('1G1FY6S07H5110026', 2, 1, 30000, '2023-02-28'),
('JTHCE1BL5FA100027', 1, 0, 25000, '2022-05-18'),
('3N1AB7AP5GY100028', 2, 1, 32000, '2023-01-15'),
('1GKKRPED7BJ100029', 3, 2, 35000, '2022-10-10'),
('JTEBU5JR5G5270030', 1, 0, 27000, '2022-11-22'),
('2HKRW1H8XJH100031', 2, 1, 39000, '2022-07-15'),
('1GNKVGKD1HJ100032', 2, 1, 28000, '2022-03-15'),
('1C4RDHDG0KC100045', 1, 0, 31000, '2021-11-20'),
('3N1AB7AP5GY100010', 3, 2, 36000, '2023-02-28'),
('1GKKRPED7BJ100011', 1, 0, 23000, '2022-12-05'),
('1FADP3L96JL100015', 2, 1, 33000, '2023-04-10'),
('5NMS2CAD8KH100016', 1, 0, 25000, '2022-09-12'),
('WBA4Z1C59JD100017', 2, 2, 40000, '2022-01-30'),
('1HGCR2F55EA100018', 3, 1, 46000, '2022-09-25'),
('1FADP3L96JL100033', 1, 0, 30000, '2023-03-18'),
('5NMS2CAD8KH100034', 2, 1, 37000, '2022-11-14'),
('WBA4Z1C59JD100035', 1, 0, 46000, '2022-08-30'),
('1HGCR2F55EA100036', 2, 1, 32000, '2023-06-05'),
('5TFRY5F10KX100037', 3, 2, 26000, '2022-03-28'),
('2T1KR32E13C100038', 1, 0, 42000, '2022-08-02'),
('1GNSCBE04ER100039', 2, 1, 34000, '2023-02-10'),
('1FAHP3K21CL100040', 1, 0, 24000, '2022-05-15'),
('JHMGE8H38CC100041', 2, 1, 35000, '2023-03-28'),
('5TDYK3DC8ES100042', 3, 2, 38000, '2022-10-20'),
('1GNKRHKD3GJ100043', 1, 0, 27000, '2022-12-25'),
('5FNRL6H7XGB100044', 2, 1, 41000, '2022-08-10');

CREATE TABLE Average_cost (
    VIN VARCHAR(20) NOT NULL,
    Cost_Per_Mile FLOAT(5),
    Annual_Maintenance_Cost NUMERIC(10),
    FOREIGN KEY (VIN) REFERENCES car(VIN)
);

INSERT INTO AVERAGE_COST (VIN, Annual_Maintenance_Cost, Cost_Per_Mile)
VALUES
('1HGCM82633A123456', 800, 0.12),
('JTDKB20U977654321', 600, 0.10),
('1G1BE5SM2G7300001', 900, 0.15),
('WAUZZZ8K0DA100002', 700, 0.11),
('3FA6P0G72DR100003', 750, 0.13),
('5N1AZ2MG8HN100004', 850, 0.14),
('1C4RJFAG1FC100005', 950, 0.16),
('1GNSKJKCXFR100006', 1000, 0.17),
('5UXWX9C55H0T100007', 820, 0.13),
('2T3BFREV2HW100008', 780, 0.12),
('WBA3B3C51EF100009', 920, 0.16),
('1C4RJFAG1HC100010', 830, 0.14),
('3VW4T7AU1FM100011', 780, 0.12),
('KM8J3CA29KU100012', 900, 0.15),
('1GNSCBE03DR100013', 840, 0.13),
('5FNRL6H71JB100014', 720, 0.11),
('WDCGG8JB9FG100015', 830, 0.14),
('JTDZN3EU2FJ100016', 870, 0.14),
('1C6SRFFT1MN100017', 800, 0.12),
('1G1RD6E40FU100018', 950, 0.16),
('JTHBE1BL0DA100019', 820, 0.13),
('2T1KR32E13C123456', 750, 0.12),
('1GNSCBE04ER654321', 890, 0.14),
('1FAHP3K21CL100001', 710, 0.11),
('JHMGE8H38CC100002', 770, 0.12),
('5TDYK3DC8ES100003', 920, 0.15),
('1GNKRHKD3GJ100004', 970, 0.16),
('5FNRL6H7XGB100005', 1050, 0.18),
('1C4RDHDG0KC100006', 800, 0.12),
('1HGCM82633A100007', 760, 0.11),
('1G1FY6S07H5110008', 940, 0.16),
('JTHCE1BL5FA100009', 860, 0.13),
('3N1AB7AP5GY100010', 790, 0.11),
('1GKKRPED7BJ100011', 910, 0.15),
('JTEBU5JR5G5270012', 860, 0.14),
('2HKRW1H8XJH100013', 730, 0.10),
('1GNKVGKD1HJ100014', 850, 0.13),
('1FADP3L96JL100015', 880, 0.14),
('5NMS2CAD8KH100016', 810, 0.12),
('WBA4Z1C59JD100017', 960, 0.17),
('1HGCR2F55EA100018', 830, 0.14),
('2T1BPRHE2EC123456', 770, 0.12),
('1GNLREEDXCS654321', 900, 0.15),
('1FAHP3J27CL100019', 720, 0.11),
('JHMGE8H88CC100020', 830, 0.14),
('5TDYK3EH8FS100021', 770, 0.12),
('1GNKRHKD3GJ100022', 900, 0.15),
('5FNRL6H7XGB100023', 720, 0.11),
('1C4RDHDG0KC100024', 780, 0.12),
('1HGCM82633A100025', 930, 0.16),
('1G1FY6S07H5110026', 780, 0.12),
('JTHCE1BL5FA100027', 930, 0.16),
('3N1AB7AP5GY100028', 980, 0.17),
('1GKKRPED7BJ100029', 1060, 0.18),
('JTEBU5JR5G5270030', 810, 0.13),
('2HKRW1H8XJH100031', 770, 0.12),
('1GNKVGKD1HJ100032', 950, 0.17),
('1FADP3L96JL100033', 870, 0.14),
('5NMS2CAD8KH100034', 800, 0.12),
('WBA4Z1C59JD100035', 760, 0.11),
('1HGCR2F55EA100036', 940, 0.16),
('5TFRY5F10KX100037', 860, 0.13),
('2T1KR32E13C100038', 790, 0.11),
('1GNSCBE04ER100039', 910, 0.15),
('1FAHP3K21CL100040', 860, 0.14),
('JHMGE8H38CC100041', 730, 0.10),
('5TDYK3DC8ES100042', 850, 0.13),
('1GNKRHKD3GJ100043', 880, 0.14),
('5FNRL6H7XGB100044', 810, 0.12),
('1C4RDHDG0KC100045', 960, 0.17);

CREATE TABLE Customer (
Customer_ID NUMERIC(20) NOT NULL,
SSN NUMERIC(10) NOT NULL,
First_Name VARCHAR(20) NOT NULL,
Last_Name VARCHAR(20) NOT NULL,
Gender VARCHAR(10),
PRIMARY KEY (Customer_ID)
);

INSERT INTO Customer (Customer_ID, SSN, First_Name, Last_Name, Gender)
VALUES
(1, 1234567890, 'John', 'Doe', 'Male'),
(2, 9876543210, 'Jane', 'Smith', 'Female'),
(3, 5551234567, 'Bob', 'Johnson', 'Male'),
(4, 1112203333, 'Eva', 'Davis', 'Female'),
(5, 4445156666, 'Frank', 'Lee', 'Male'),
(6, 7771889999, 'Grace', 'Taylor', 'Female'),
(7, 9918887777, 'Henry', 'Miller', 'Male'),
(8, 3331445555, 'Ivy', 'Wilson', 'Female'),
(9, 1667778888, 'Jack', 'Roberts', 'Male'),
(10, 5564143333, 'Karen', 'Johnson', 'Female'),
(11, 2223334144, 'Leo', 'Smith', 'Male'),
(12, 8817776666, 'Mia', 'Davis', 'Female'),
(13, 1112223333, 'Nathan', 'Jones', 'Male'),
(14, 4445556666, 'Olivia', 'Williams', 'Female'),
(15, 7778889999, 'Paul', 'Miller', 'Male'),
(16, 9998881777, 'Quinn', 'Wilson', 'Female'),
(17, 2667778888, 'Ryan', 'Roberts', 'Male'),
(18, 5554143333, 'Samantha', 'Johnson', 'Female'),
(19, 2222334444, 'Tom', 'Davis', 'Male'),
(20, 8887716666, 'Ursula', 'Miller', 'Female'),
(21, 1111121111, 'Vivian', 'Clark', 'Female'),
(22, 2222322232, 'Xavier', 'Evans', 'Male'),
(23, 3313333333, 'Yvonne', 'Fisher', 'Female'),
(24, 4444445444, 'Zane', 'Garcia', 'Male'),
(25, 5555535555, 'Wendy', 'Hamilton', 'Female'),
(26, 6616666766, 'Xander', 'Iverson', 'Male'),
(27, 7777727777, 'Yasmine', 'Jones', 'Female'),
(28, 8888088888, 'Zachary', 'Keller', 'Male'),
(29, 9999099999, 'Walter', 'Lopez', 'Male'),
(30, 1010101010, 'Xena', 'Martin', 'Female'),
(31, 1212121212, 'Yolanda', 'Nelson', 'Female'),
(32, 1313131313, 'Zack', 'Owens', 'Male'),
(33, 1414141414, 'Wanda', 'Perez', 'Female'),
(34, 1515151515, 'Xavier', 'Quinn', 'Male'),
(35, 1616161616, 'Yvette', 'Reyes', 'Female'),
(36, 1717171717, 'Zoe', 'Smith', 'Female'),
(37, 1818181818, 'Wesley', 'Thomas', 'Male'),
(38, 1919191919, 'Xena', 'Underwood', 'Female'),
(39, 2020202020, 'Yvonne', 'Vargas', 'Female'),
(40, 2121212121, 'Zachary', 'Wallace', 'Male'),
(41, 2222822222, 'Aaron', 'Baker', 'Male'),
(42, 9333333333, 'Brianna', 'Chen', 'Female'),
(43, 4444440444, 'Caleb', 'Dixon', 'Male'),
(44, 5559555555, 'Daisy', 'Evans', 'Female'),
(45, 9666666666, 'Ethan', 'Fisher', 'Male'),
(46, 8777777777, 'Fiona', 'Garcia', 'Female'),
(47, 8888988888, 'George', 'Hamilton', 'Male'),
(48, 1999999999, 'Haley', 'Iverson', 'Female'),
(49, 1020101010, 'Isaac', 'Jones', 'Male'),
(50, 1212321212, 'Jasmine', 'Keller', 'Female'),
(51, 1312131313, 'Kyle', 'Lopez', 'Male'),
(52, 1412141414, 'Lily', 'Martin', 'Female'),
(53, 1512151515, 'Milo', 'Nelson', 'Male'),
(54, 1612161616, 'Nora', 'Owens', 'Female'),
(55, 1712171717, 'Oliver', 'Perez', 'Male'),
(56, 1812181818, 'Paige', 'Quinn', 'Female'),
(57, 1912191919, 'Quentin', 'Reyes', 'Male'),
(58, 2020232020, 'Rachel', 'Smith', 'Female'),
(59, 2121232121, 'Samuel', 'Thomas', 'Male'),
(60, 2222232222, 'Tessa', 'Underwood', 'Female'),
(61, 2323232323, 'Unity', 'Baker', 'Female'),
(62, 2424232424, 'Victor', 'Chen', 'Male'),
(63, 2525232525, 'Wendy', 'Dixon', 'Female'),
(64, 2626232626, 'Xavier', 'Evans', 'Male'),
(65, 2727232727, 'Yara', 'Fisher', 'Female'),
(66, 2828232828, 'Zane', 'Garcia', 'Male'),
(67, 2929232929, 'Aria', 'Hamilton', 'Female'),
(68, 3030333030, 'Bryant', 'Iverson', 'Male'),
(69, 3131333131, 'Cora', 'Jones', 'Female'),
(70, 3232333232, 'Dexter', 'Keller', 'Male');

CREATE TABLE CustomerAddress (
Customer_ID NUMERIC(20) NOT NULL,
Street VARCHAR(20),
City VARCHAR(10),
State VARCHAR(10),
Zipcode NUMERIC(5),
FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

INSERT INTO CustomerAddress (Street, City, State, Zipcode, Customer_ID)
VALUES
('123 Main St', 'Anytown', 'CA', 12345, 1),
('456 Oak St', 'Somecity', 'NY', 67890, 2),
('789 Pine St', 'Another', 'TX', 54321, 3),
('654 Cedar St', 'Villag', 'IL', 45678, 4),
('876 Pine St', 'Mountai', 'CO', 78901, 5),
('765 Oak St', 'Ruralto', 'GA', 23456, 6),
('432 Maple St', 'Suburb', 'MI', 78901, 7),
('234 Birch St', 'Townsvle', 'WA', 12345, 8),
('876 Pine St', 'Mountacity', 'CO', 67890, 9),
('765 Oak St', 'Rurtown', 'GA', 23456, 10),
('432 Maple St', 'Subbia', 'MI', 78901, 11),
('234 Birch St', 'Toville', 'WA', 12345, 12),
('876 Pine St', 'Mountity', 'CO', 67890, 13),
('765 Oak St', 'Ruralwn', 'GA', 23456, 14),
('432 Maple St', 'Subura', 'MI', 78901, 15),
('234 Birch St', 'Townille', 'WA', 12345, 16),
('876 Pine St', 'Montcity', 'CO', 67890, 17),
('765 Oak St', 'raltown', 'GA', 23456, 18),
('432 Maple St', 'Subbia', 'MI', 78901, 19),
('234 Birch St', 'Tosville', 'WA', 12345, 20),
('789 Oak St', 'Soetown', 'CA', 54321, 21),
('876 Pine St', 'Anytown', 'TX', 98765, 22),
('654 Cedar St', 'Smaville', 'WA', 12345, 23),
('789 Oak St', 'Sometown', 'CA', 54321, 24),
('876 Pine St', 'Anytown', 'TX', 98765, 25),
('654 Cedar St', 'Smalille', 'WA', 12345, 26),
('543 Maple St', 'Bigcity', 'NY', 67890, 27),
('432 Birch St', 'Cotalcity', 'FL', 23456, 28),
('345 Oak St', 'Homeown', 'IL', 78901, 29),
('234 Pine St', 'Citille', 'TX', 12345, 30),
('765 Oak St', 'Ruraown', 'GA', 78901, 31),
('432 Birch St', 'Towville', 'WA', 12345, 32),
('234 Pine St', 'Cityvle', 'TX', 67890, 33),
('123 Maple St', 'Subbia', 'CA', 23456, 34),
('876 Cedar St', 'Mountncity', 'CO', 23456, 35),
('765 Oak St', 'Rurtown', 'GA', 78901, 36),
('432 Birch St', 'Townille', 'WA', 12345, 37),
('234 Pine St', 'Citylle', 'TX', 67890, 38),
('123 Maple St', 'Surbia', 'CA', 78901, 39),
('876 Cedar St', 'Mincity', 'CO', 23456, 40),
('765 Oak St', 'Rurtown', 'GA', 78901, 41),
('789 Oak St', 'Somewn', 'CA', 54321, 42),
('876 Pine St', 'Anyown', 'TX', 98765, 43),
('654 Cedar St', 'Smalllle', 'WA', 12345, 44),
('543 Maple St', 'Bigcity', 'NY', 67890, 45),
('432 Birch St', 'talcity', 'FL', 23456, 46),
('345 Oak St', 'Hometwn', 'IL', 78901, 47),
('234 Pine St', 'Cityville', 'TX', 12345, 48),
('123 Maple St', 'Subuia', 'CA', 67890, 49),
('876 Cedar St', 'Mouncity', 'CO', 23456, 50),
('765 Oak St', 'Ruraltown', 'GA', 78901, 51),
('789 Oak St', 'Sometown', 'CA', 54321, 52),
('876 Pine St', 'Anytown', 'TX', 98765, 53),
('654 Cedar St', 'Smalllle', 'WA', 12345, 54),
('543 Maple St', 'Bigcity', 'NY', 67890, 55),
('432 Birch St', 'Coascity', 'FL', 23456, 56),
('345 Oak St', 'Hometown', 'IL', 78901, 57),
('234 Pine St', 'Cityville', 'TX', 12345, 58),
('123 Maple St', 'Suburbia', 'CA', 67890, 59),
('876 Cedar St', 'Mouncity', 'CO', 23456, 60),
('765 Oak St', 'Ruraltown', 'GA', 78901, 61),
('789 Oak St', 'Sometown', 'CA', 54321, 62),
('876 Pine St', 'Anytown', 'TX', 98765, 63),
('654 Cedar St', 'Smalllle', 'WA', 12345, 64),
('543 Maple St', 'Bigcity', 'NY', 67890, 65),
('432 Birch St', 'Coascity', 'FL', 23456, 66),
('345 Oak St', 'Hometown', 'IL', 78901, 67),
('234 Pine St', 'Cityville', 'TX', 12345, 68),
('123 Maple St', 'Suburbia', 'CA', 67890, 69),
('876 Cedar St', 'Mouncity', 'CO', 23456, 70);


CREATE TABLE Battery (
BatteryID INT PRIMARY KEY,
VIN VARCHAR(20) NOT NULL,
Capacity_in_miles NUMERIC(10) NOT NULL,
Full_Charge_time NUMERIC(5) NOT NULL,
FOREIGN KEY (VIN) REFERENCES Car(VIN)
);

INSERT INTO Battery (BatteryID, VIN, Capacity_in_miles, Full_Charge_time)
VALUES
(1, '1HGCM82633A123456', 280, 8),
(2, 'JTDKB20U977654321', 320, 10),
(3, '1G1BE5SM2G7300001', 220, 6),
(4, 'WAUZZZ8K0DA100002', 400, 12),
(5, '3FA6P0G72DR100003', 200, 5),
(6, '5N1AZ2MG8HN100004', 300, 8),
(7, '1C4RJFAG1FC100005', 250, 7),
(8, '1GNSKJKCXFR100006', 500, 15),
(9, '5UXWX9C55H0T100007', 600, 18),
(10, '2T3BFREV2HW100008', 280, 8),
(11, 'WBA3B3C51EF100009', 450, 14),
(12, '1C4RJFAG1HC100010', 520, 16),
(13, '3VW4T7AU1FM100011', 300, 9),
(14, 'KM8J3CA29KU100012', 350, 10),
(15, '1GNSCBE03DR100013', 280, 8),
(16, '5FNRL6H71JB100014', 400, 12),
(17, 'WDCGG8JB9FG100015', 550, 16),
(18, 'JTDZN3EU2FJ100016', 250, 7),
(19, '1C6SRFFT1MN100017', 350, 10),
(20, '1G1RD6E40FU100018', 200, 5),
(21, 'JTHBE1BL0DA100019', 420, 13),
(22, '2T1KR32E13C123456', 280, 8),
(23, '1GNSCBE04ER654321', 450, 14),
(24, '1FAHP3K21CL100001', 220, 6),
(25, 'JHMGE8H38CC100002', 300, 9),
(26, '5TDYK3DC8ES100003', 380, 11),
(27, '1GNKRHKD3GJ100004', 320, 9),
(28, '1G1FY6S07H5110008', 350, 10),
(29, 'JTHCE1BL5FA100009', 480, 15),
(30, '3N1AB7AP5GY100010', 300, 9),
(31, '1C4RDHDG0KC100006', 280, 8),
(32, '1HGCM82633A100007', 290, 9),
(33, '1G1FY6S07H5110026', 350, 10),
(34, 'JTHCE1BL5FA100027', 480, 15),
(35, '3N1AB7AP5GY100028', 300, 9),
(36, '1GKKRPED7BJ100029', 260, 8),
(37, 'JTEBU5JR5G5270030', 420, 13),
(38, '2HKRW1H8XJH100031', 330, 10),
(39, '1GNKVGKD1HJ100032', 240, 7),
(40, '1FADP3L96JL100033', 320, 9),
(41, '5NMS2CAD8KH100034', 360, 10),
(42, 'WBA4Z1C59JD100035', 500, 15),
(43, '1HGCR2F55EA100036', 270, 8),
(44, '5TFRY5F10KX100037', 480, 15),
(45, '2T1KR32E13C100038', 280, 8),
(46, '1GNSCBE04ER100039', 450, 14),
(47, '1FAHP3K21CL100040', 220, 6),
(48, 'JHMGE8H38CC100041', 300, 9),
(49, '5TDYK3EH8FS100021', 380, 11),
(50, '1GNKRHKD3GJ100022', 320, 9),
(51, '5FNRL6H7XGB100023', 250, 7),
(52, '1C4RDHDG0KC100024', 280, 8),
(53, '1HGCM82633A100025', 290, 9),
(54, '1G1FY6S07H5110026', 350, 10),
(55, 'JTHCE1BL5FA100027', 480, 15),
(56, '3N1AB7AP5GY100028', 300, 9),
(57, '1GKKRPED7BJ100029', 260, 8),
(58, 'JTEBU5JR5G5270030', 420, 13),
(59, '2HKRW1H8XJH100031', 330, 10),
(60, '1GNKVGKD1HJ100032', 240, 7),
(61, '1FADP3L96JL100033', 320, 9),
(62, '5NMS2CAD8KH100034', 360, 10),
(63, 'WBA4Z1C59JD100035', 500, 15),
(64, '1HGCR2F55EA100036', 270, 8),
(65, '5TFRY5F10KX100037', 480, 15),
(66, '2T1KR32E13C100038', 280, 8),
(67, '1GNSCBE04ER100039', 450, 14),
(68, '1FAHP3K21CL100040', 220, 6),
(69, 'JHMGE8H38CC100041', 300, 9),
(70, '5TDYK3EH8FS100021', 380, 11);

CREATE TABLE Feature (
    VIN VARCHAR(20) NOT NULL,
    Engine_Size FLOAT(5) NOT NULL,
    Horse_power NUMERIC(5) NOT NULL,
    Transmission VARCHAR(20) NOT NULL,
    Carbon_emission_rate NUMERIC(5) NOT NULL,
    Max_speed NUMERIC(5) NOT NULL,
    Car_range NUMERIC(5) NOT NULL,
    Number_of_Doors NUMERIC(5) NOT NULL,
    FOREIGN KEY (VIN) REFERENCES Car(VIN)
);

INSERT INTO Feature (VIN, Engine_Size, Horse_power, Transmission, Carbon_emission_rate, Max_speed, Car_range, Number_of_Doors)
VALUES
('1HGCM82633A123456', 2.4, 185, 'Automatic', 120, 160, 400, 4),
('JTDKB20U977654321', 1.8, 134, 'CVT', 95, 130, 350, 2),
('1G1BE5SM2G7300001', 1.6, 138, 'Automatic', 80, 120, 300, 4),
('WAUZZZ8K0DA100002', 3.0, 250, 'Automatic', 110, 180, 240, 4),
('3FA6P0G72DR100003', 2.5, 175, 'CVT', 105, 160, 380, 4),
('5N1AZ2MG8HN100004', 2.0, 170, 'Automatic', 130, 190, 350, 4),
('1C4RJFAG1FC100005', 3.6, 295, 'Automatic', 120, 160, 350, 4),
('1GNSKJKCXFR100006', 6.2, 420, 'Automatic', 150, 200, 320, 4),
('5UXWX9C55H0T100007', 3.0, 335, 'Automatic', 120, 180, 250, 4),
('2T3BFREV2HW100008', 2.5, 203, 'CVT', 110, 170, 320, 4),
('WBA3B3C51EF100009', 2.0, 248, 'Automatic', 130, 180, 280, 4),
('1C4RJFAG1HC100010', 3.6, 295, 'Automatic', 140, 190, 350, 4),
('3VW4T7AU1FM100011', 1.8, 134, 'Automatic', 95, 140, 350, 4),
('KM8J3CA29KU100012', 150, 201, 'Single-Speed', 120, 170, 250, 4),
('1GNSCBE03DR100013', 6.2, 420, 'Automatic', 80, 150, 300, 4),
('5FNRL6H71JB100014', 3.5, 280, 'Automatic', 130, 190, 350, 4),
('WDCGG8JB9FG100015', 2.0, 208, 'Automatic', 150, 190, 300, 4),
('JTDZN3EU2FJ100016', 2.5, 176, 'CVT', 110, 170, 350, 4),
('1C6SRFFT1MN100017', 3.6, 305, 'Automatic', 120, 200, 400, 4),
('1G1RD6E40FU100018', 1.4, 98, 'Automatic', 100, 160, 220, 4),
('JTHBE1BL0DA100019', 2.5, 215, 'Automatic', 150, 200, 320, 4),
('2T1KR32E13C123456', 2.5, 176, 'CVT', 110, 170, 320, 4),
('1GNSCBE04ER654321', 6.2, 420, 'Automatic', 140, 190, 350, 4),
('1FAHP3K21CL100001', 107, 143, 'Single-Speed', 80, 150, 220, 4),
('JHMGE8H38CC100002', 1.5, 130, 'CVT', 120, 160, 350, 4),
('5TDYK3DC8ES100003', 2.5, 186, 'CVT', 130, 180, 350, 4),
('1GNKRHKD3GJ100004', 3.6, 310, 'Automatic', 120, 180, 350, 4),
('5FNRL6H7XGB100005', 3.5, 280, 'Automatic', 90, 160, 350, 4),
('1C4RDHDG0KC100006', 3.6, 295, 'Automatic', 100, 170, 350, 4),
('1HGCM82633A100007', 2.0, 212, 'CVT', 110, 180, 350, 4),
('1G1FY6S07H5110008', 6.2, 455, 'Automatic', 120, 200, 220, 2),
('JTHCE1BL5FA100009', 3.5, 311, 'Automatic', 130, 190, 350, 4),
('3N1AB7AP5GY100010', 147, 236, 'Single-Speed', 140, 160, 240, 4),
('1GKKRPED7BJ100011', 3.6, 288, 'Automatic', 80, 150, 300, 4),
('JTEBU5JR5G5270012', 3.6, 295, 'Automatic', 150, 200, 380, 4),
('2HKRW1H8XJH100013', 2.0, 212, 'CVT', 120, 170, 350, 4),
('1GNKVGKD1HJ100014', 150, 201, 'Single-Speed', 100, 150, 200, 4),
('1FADP3L96JL100015', 107, 143, 'Single-Speed', 130, 190, 250, 4),
('5NMS2CAD8KH100016', 2.0, 180, 'Automatic', 120, 170, 350, 4),
('WBA4Z1C59JD100017', 3.0, 320, 'Automatic', 150, 220, 300, 4),
('1HGCR2F55EA100018', 2.0, 212, 'CVT', 110, 180, 350, 4),
('2T1BPRHE2EC123456', 2.5, 176, 'CVT', 120, 170, 320, 4),
('1GNLREEDXCS654321', 3.6, 310, 'Automatic', 140, 190, 350, 4),
('1FAHP3J27CL100019', 107, 143, 'Single-Speed', 80, 150, 220, 4),
('JHMGE8H88CC100020', 1.5, 130, 'CVT', 110, 180, 350, 4),
('5TDYK3EH8FS100021', 2.5, 186, 'CVT', 120, 190, 350, 4),
('1GNKRHKD3GJ100022', 3.6, 310, 'Automatic', 130, 200, 350, 4),
('5FNRL6H7XGB100023', 3.5, 280, 'Automatic', 90, 160, 350, 4),
('1C4RDHDG0KC100024', 3.6, 295, 'Automatic', 100, 170, 350, 4),
('1HGCM82633A100025', 2.0, 212, 'CVT', 110, 180, 350, 4),
('1G1FY6S07H5110026', 6.2, 455, 'Automatic', 120, 200, 220, 2),
('JTHCE1BL5FA100027', 3.5, 311, 'Automatic', 130, 190, 350, 4),
('3N1AB7AP5GY100028', 147, 236, 'Single-Speed', 140, 160, 240, 4),
('1GKKRPED7BJ100029', 3.6, 288, 'Automatic', 80, 150, 300, 4),
('JTEBU5JR5G5270030', 3.6, 295, 'Automatic', 150, 200, 380, 4),
('2HKRW1H8XJH100031', 2.0, 212, 'CVT', 120, 170, 350, 4),
('1GNKVGKD1HJ100032', 150, 201, 'Single-Speed', 100, 150, 200, 4),
('1FADP3L96JL100033', 107, 143, 'Single-Speed', 130, 190, 250, 4),
('5NMS2CAD8KH100034', 2.0, 180, 'Automatic', 120, 170, 350, 4),
('WBA4Z1C59JD100035', 3.0, 320, 'Automatic', 150, 220, 300, 4),
('1HGCR2F55EA100036', 2.0, 212, 'CVT', 110, 180, 350, 4),
('5TFRY5F10KX100037', 3.5, 381, 'Automatic', 130, 200, 350, 4),
('2T1KR32E13C100038', 2.5, 176, 'CVT', 120, 180, 350, 4),
('1GNSCBE04ER100039', 3.6, 310, 'Automatic', 140, 190, 350, 4),
('1FAHP3K21CL100040', 107, 143, 'Single-Speed', 80, 150, 220, 4),
('JHMGE8H38CC100041', 1.5, 130, 'CVT', 110, 180, 350, 4),
('5TDYK3DC8ES100042', 2.5, 186, 'CVT', 120, 190, 350, 4),
('1GNKRHKD3GJ100043', 3.6, 310, 'Automatic', 130, 200, 350, 4),
('5FNRL6H7XGB100044', 3.5, 280, 'Automatic', 90, 160, 350, 4),
('1C4RDHDG0KC100045', 3.6, 295, 'Automatic', 100, 170, 350, 4);

CREATE TABLE ChargingStation (
    StationID INT PRIMARY KEY,
    Capacity INT NOT NULL,
    AvailablePorts INT NOT NULL, 
    CostPerKWh DECIMAL(5, 2) NOT NULL, 
    Status VARCHAR(20) DEFAULT 'Operational' 
);

INSERT INTO ChargingStation (StationID, Capacity, AvailablePorts, CostPerKWh, Status)
VALUES
(1, 5, 3, 0.15, 'Operational'),
(2, 8, 6, 0.12, 'Under Maintenance'),
(3, 10, 8, 0.18, 'Operational'),
(4, 6, 4, 0.14, 'Operational'),
(5, 4, 2, 0.10, 'Operational'),
(6, 12, 10, 0.20, 'Under Maintenance'),
(7, 8, 7, 0.15, 'Operational'),
(8, 10, 9, 0.17, 'Under Maintenance'),
(9, 6, 5, 0.13, 'Operational'),
(10, 15, 12, 0.22, 'Operational'),
(11, 5, 3, 0.15, 'Operational'),
(12, 8, 6, 0.12, 'Under Maintenance'),
(13, 10, 8, 0.18, 'Operational'),
(14, 6, 4, 0.14, 'Operational'),
(15, 4, 2, 0.10, 'Operational'),
(16, 12, 10, 0.20, 'Under Maintenance'),
(17, 8, 7, 0.15, 'Operational'),
(18, 10, 9, 0.17, 'Under Maintenance'),
(19, 6, 5, 0.13, 'Operational'),
(20, 15, 12, 0.22, 'Operational'),
(21, 5, 3, 0.15, 'Operational'),
(22, 8, 6, 0.12, 'Under Maintenance'),
(23, 10, 8, 0.18, 'Operational'),
(24, 6, 4, 0.14, 'Operational'),
(25, 4, 2, 0.10, 'Operational'),
(26, 12, 10, 0.20, 'Under Maintenance'),
(27, 8, 7, 0.15, 'Operational'),
(28, 10, 9, 0.17, 'Under Maintenance'),
(29, 6, 5, 0.13, 'Operational'),
(30, 15, 12, 0.22, 'Operational'),
(31, 5, 3, 0.15, 'Operational'),
(32, 8, 6, 0.12, 'Under Maintenance'),
(33, 10, 8, 0.18, 'Operational'),
(34, 6, 4, 0.14, 'Operational'),
(35, 4, 2, 0.10, 'Operational'),
(36, 12, 10, 0.20, 'Under Maintenance'),
(37, 8, 7, 0.15, 'Operational'),
(38, 10, 9, 0.17, 'Under Maintenance'),
(39, 6, 5, 0.13, 'Operational'),
(40, 15, 12, 0.22, 'Operational'),
(41, 5, 3, 0.15, 'Operational'),
(42, 8, 6, 0.12, 'Under Maintenance'),
(43, 10, 8, 0.18, 'Operational'),
(44, 6, 4, 0.14, 'Operational'),
(45, 4, 2, 0.10, 'Operational'),
(46, 12, 10, 0.20, 'Under Maintenance'),
(47, 8, 7, 0.15, 'Operational'),
(48, 10, 9, 0.17, 'Under Maintenance'),
(49, 6, 5, 0.13, 'Operational'),
(50, 15, 12, 0.22, 'Operational');

CREATE TABLE StationLocation (
    StationID INT PRIMARY KEY,
    Street VARCHAR(20),
    City VARCHAR(20),
    State VARCHAR(10),
    Zipcode NUMERIC(6),
    FOREIGN KEY (StationID) REFERENCES ChargingStation(StationID)
);

INSERT INTO StationLocation (StationID, Street, City, State, Zipcode)
VALUES
(1, 'Main St', 'Dallas', 'TX', 12345),
(2, 'Oak St', 'Houston', 'TX', 23456),
(3, 'Maple St', 'Austin', 'TX', 34567),
(4, 'Pine St', 'San Antonio', 'TX', 45678),
(5, 'Cedar St', 'Fort Worth', 'TX', 56789),
(6, 'Elm St', 'Plano', 'TX', 67890),
(7, 'Birch St', 'Irving', 'TX', 78901),
(8, 'Ash St', 'Arlington', 'TX', 89012),
(9, 'Cherry St', 'Dallas', 'TX', 90123),
(10, 'Willow St', 'Houston', 'TX', 10123),
(11, 'Oak St', 'Austin', 'TX', 11234),
(12, 'Pine St', 'San Antonio', 'TX', 12345),
(13, 'Maple St', 'Fort Worth', 'TX', 23456),
(14, 'Cedar St', 'Plano', 'TX', 34567),
(15, 'Birch St', 'Irving', 'TX', 45678),
(16, 'Ash St', 'Arlington', 'TX', 56789),
(17, 'Cherry St', 'Dallas', 'TX', 67890),
(18, 'Willow St', 'Houston', 'TX', 78901),
(19, 'Elm St', 'Austin', 'TX', 89012),
(20, 'Main St', 'San Antonio', 'TX', 90123),
(21, 'Main St', 'Dallas', 'TX', 22345),
(22, 'Oak St', 'Houston', 'TX', 33456),
(23, 'Maple St', 'Austin', 'TX', 44567),
(24, 'Pine St', 'San Antonio', 'TX', 55678),
(25, 'Cedar St', 'Fort Worth', 'TX', 66789),
(26, 'Elm St', 'Plano', 'TX', 77890),
(27, 'Birch St', 'Irving', 'TX', 88901),
(28, 'Ash St', 'Arlington', 'TX', 99012),
(29, 'Cherry St', 'Dallas', 'TX', 10923),
(30, 'Willow St', 'Houston', 'TX', 12123),
(31, 'Oak St', 'Austin', 'TX', 13234),
(32, 'Pine St', 'San Antonio', 'TX', 14345),
(33, 'Maple St', 'Fort Worth', 'TX', 15456),
(34, 'Cedar St', 'Plano', 'TX', 16567),
(35, 'Birch St', 'Irving', 'TX', 17678),
(36, 'Ash St', 'Arlington', 'TX', 18789),
(37, 'Cherry St', 'Dallas', 'TX', 19890),
(38, 'Willow St', 'Houston', 'TX', 20901),
(39, 'Elm St', 'Austin', 'TX', 21012),
(40, 'Main St', 'San Antonio', 'TX', 22123),
(41, 'Main St', 'Dallas', 'TX', 33245),
(42, 'Oak St', 'Houston', 'TX', 44356),
(43, 'Maple St', 'Austin', 'TX', 55467),
(44, 'Pine St', 'San Antonio', 'TX', 66578),
(45, 'Cedar St', 'Fort Worth', 'TX', 77689),
(46, 'Elm St', 'Plano', 'TX', 88790),
(47, 'Birch St', 'Irving', 'TX', 99901),
(48, 'Ash St', 'Arlington', 'TX', 10012),
(49, 'Cherry St', 'Dallas', 'TX', 11123),
(50, 'Willow St', 'Houston', 'TX', 12123);

CREATE TABLE Dealership (
    Contact_num NUMERIC(10),
    Dealership_num INT NOT NULL PRIMARY KEY,
    Num_of_cars INT
);

INSERT INTO Dealership (Contact_num, Dealership_num, Num_of_cars)
VALUES
(1234567890, 1, 50),
(2345678901, 2, 65),
(3456789012, 3, 42),
(4567890123, 4, 55),
(5678901234, 5, 38),
(6789012345, 6, 70),
(7890123456, 7, 48),
(8901234567, 8, 62),
(9012345678, 9, 53),
(1234567890, 10, 45),
(2345678901, 11, 60),
(3456789012, 12, 39),
(4567890123, 13, 57),
(5678901234, 14, 68),
(6789012345, 15, 43),
(7890123456, 16, 51),
(8901234567, 17, 64),
(9012345678, 18, 49),
(1234567890, 19, 36),
(2345678901, 20, 52);

CREATE TABLE DealershipLocation (
    Dealership_num INT NOT NULL,
    FOREIGN KEY (Dealership_num) REFERENCES Dealership(Dealership_num),
    Street VARCHAR(20),
    City VARCHAR(20),
    State VARCHAR(10),
    Zipcode NUMERIC(5),
    PRIMARY KEY (Dealership_num)
);

INSERT INTO DealershipLocation (Dealership_num, Street, City, State, Zipcode)
VALUES
(1, 'Main St', 'Dallas', 'TX', 75201),
(2, 'Broadway St', 'Boston', 'MA', 02101),
(3, 'Maple St', 'Detroit', 'MI', 48201),
(4, 'Oak St', 'Los Angeles', 'CA', 90001),
(5, 'Pine St', 'Minneapolis', 'MN', 55401),
(6, 'Cedar St', 'New York', 'NY', 10001),
(7, 'Elm St', 'Chicago', 'IL', 60601),
(8, 'Spruce St', 'Houston', 'TX', 77001),
(9, 'Birch St', 'San Francisco', 'CA', 94101),
(10, 'Willow St', 'Miami', 'FL', 33101),
(11, 'Juniper St', 'Seattle', 'WA', 98101),
(12, 'Cypress St', 'Atlanta', 'GA', 30301),
(13, 'Sycamore St', 'Denver', 'CO', 80201),
(14, 'Fir St', 'Phoenix', 'AZ', 85001),
(15, 'Hickory St', 'Philadelphia', 'PA', 19101),
(16, 'Chestnut St', 'New Orleans', 'LA', 70112),
(17, 'Walnut St', 'San Diego', 'CA', 92101),
(18, 'Redwood St', 'Austin', 'TX', 78701),
(19, 'Spruce St', 'Portland', 'OR', 97201),
(20, 'Palm St', 'Las Vegas', 'NV', 89101);

CREATE TABLE Transaction (
    Transaction_ID NUMERIC(20) NOT NULL PRIMARY KEY,
    VIN VARCHAR(20) NOT NULL,
    Customer_ID NUMERIC(20) NOT NULL,
    Dealership_num INT NOT NULL,
    Price VARCHAR(10),
    Transaction_Date DATE,
    FOREIGN KEY (VIN) REFERENCES Car(VIN),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Dealership_num) REFERENCES Dealership(Dealership_num)
);

INSERT INTO Transaction (Transaction_ID, VIN, Customer_ID, Dealership_num, Price, Transaction_Date)
VALUES
(1, '1HGCM82633A123456', '1', '1', '28000', '2022-01-01'),
(2, 'JTDKB20U977654321', '2', '1', '32000', '2022-01-02'),
(3, '1G1BE5SM2G7300001', '3', '1', '22000', '2022-01-03'),
(4, 'WAUZZZ8K0DA100002', '4', '1', '40000', '2022-01-04'),
(5, '3FA6P0G72DR100003', '5', '20', '20000', '2022-01-05'),
(6, '5N1AZ2MG8HN100004', '6', '17', '30000', '2022-01-06'),
(7, '1C4RJFAG1FC100005', '7', '18', '25000', '2022-01-07'),
(8, '1GNSKJKCXFR100006', '8', '19', '50000', '2022-01-08'),
(9, '5UXWX9C55H0T100007', '9', '2', '60000', '2022-01-09'),
(10, '2T3BFREV2HW100008', '10', '2', '28000', '2022-01-10'),
(11, 'WBA3B3C51EF100009', '11', '2', '45000', '2022-01-11'),
(12, '1C4RJFAG1HC100010', '12', '2', '52000', '2022-01-12'),
(13, '3VW4T7AU1FM100011', '13', '20', '30000', '2022-01-13'),
(14, 'KM8J3CA29KU100012', '14', '16', '35000', '2022-01-14'),
(15, '1GNSCBE03DR100013', '15', '16', '28000', '2022-01-15'),
(16, '5FNRL6H71JB100014', '16', '18', '40000', '2022-01-16'),
(17, 'WDCGG8JB9FG100015', '17', '3', '55000', '2022-01-17'),
(18, 'JTDZN3EU2FJ100016', '18', '3', '25000', '2022-01-18'),
(19, '1C6SRFFT1MN100017', '19', '3', '35000', '2022-01-19'),
(20, '1G1RD6E40FU100018', '20', '3', '20000', '2022-01-20'),
(21, 'JTHBE1BL0DA100019', '21', '3', '42000', '2022-01-21'),
(22, '2T1KR32E13C123456', '22', '3', '28000', '2022-01-22'),
(23, '1GNSCBE04ER654321', '23', '20', '45000', '2022-01-23'),
(24, '1FAHP3K21CL100001', '24', '19', '22000', '2022-01-24'),
(25, 'JHMGE8H38CC100002', '25', '16', '30000', '2022-01-25'),
(26, '5TDYK3DC8ES100003', '26', '4', '38000', '2022-01-26'),
(27, '1GNKRHKD3GJ100004', '27', '4', '32000', '2022-01-27'),
(28, '5FNRL6H7XGB100005', '28', '4', '25000', '2022-01-28'),
(29, '1C4RDHDG0KC100006', '29', '17', '28000', '2022-01-29'),
(30, '1HGCM82633A100007', '30', '15', '29000', '2022-01-30'),
(31, '1G1FY6S07H5110008', '31', '20', '35000', '2022-01-31'),
(32, 'JTHCE1BL5FA100009', '32', '5', '48000', '2022-02-01'),
(33, '3N1AB7AP5GY100010', '33', '5', '30000', '2022-02-02'),
(34, '1GKKRPED7BJ100011', '34', '5', '26000', '2022-02-03'),
(35, 'JTEBU5JR5G5270012', '35', '5', '42000', '2022-02-04'),
(36, '2HKRW1H8XJH100013', '36', '11', '33000', '2022-02-05'),
(37, '1GNKVGKD1HJ100014', '37', '12', '24000', '2022-02-06'),
(38, '1FADP3L96JL100015', '38', '14', '32000', '2022-02-07'),
(39, '5NMS2CAD8KH100016', '39', '6', '36000', '2022-02-08'),
(40, 'WBA4Z1C59JD100017', '40', '6', '50000', '2022-02-09'),
(41, '1HGCR2F55EA100018', '41', '6', '27000', '2022-02-10'),
(42, '2T1BPRHE2EC123456', '42', '6', '28000', '2022-02-11'),
(43, '1GNLREEDXCS654321', '43', '7', '45000', '2022-02-12'),
(44, '1FAHP3J27CL100019', '44', '7', '22000', '2022-02-13'),
(45, 'JHMGE8H88CC100020', '45', '7', '30000', '2022-02-14'),
(46, '5TDYK3EH8FS100021', '46', '8', '38000', '2022-02-15'),
(47, '1GNKRHKD3GJ100022', '47', '8', '32000', '2022-02-16'),
(48, '5FNRL6H7XGB100023', '48', '8', '25000', '2022-02-17'),
(49, '1C4RDHDG0KC100024', '49', '9', '28000', '2022-02-18'),
(50, '1HGCM82633A100025', '50', '9', '29000', '2022-02-19'),
(51, '1G1FY6S07H5110026', '51', '9', '35000', '2022-02-20'),
(52, 'JTHCE1BL5FA100027', '52', '10', '48000', '2022-02-21'),
(53, '3N1AB7AP5GY100028', '53', '10', '30000', '2022-02-22'),
(54, '1GKKRPED7BJ100029', '54', '10', '26000', '2022-02-23'),
(55, 'JTEBU5JR5G5270030', '55', '10', '42000', '2022-02-24'),
(56, '2HKRW1H8XJH100031', '56', '11', '33000', '2022-02-25'),
(57, '1GNKVGKD1HJ100032', '57', '11', '24000', '2022-02-26'),
(58, '1FADP3L96JL100033', '58', '12', '32000', '2022-02-27'),
(59, '5NMS2CAD8KH100034', '59', '12', '36000', '2022-02-28'),
(60, 'WBA4Z1C59JD100035', '60', '12', '50000', '2022-03-01'),
(61, '1HGCR2F55EA100036', '61', '13', '27000', '2022-03-02'),
(62, '5TFRY5F10KX100037', '62', '13', '48000', '2022-03-03'),
(63, '2T1KR32E13C100038', '63', '13', '30000', '2022-03-04'),
(64, '1GNSCBE04ER100039', '64', '13', '45000', '2022-03-05'),
(65, '1FAHP3K21CL100040', '65', '14', '22000', '2022-03-06'),
(66, 'JHMGE8H38CC100041', '66', '14', '30000', '2022-03-07'),
(67, '5TDYK3DC8ES100042', '67', '14', '38000', '2022-03-08'),
(68, '1GNKRHKD3GJ100043', '68', '15', '32000', '2022-03-09'),
(69, '5FNRL6H7XGB100044', '69', '15', '25000', '2022-03-10'),
(70, '1C4RDHDG0KC100045', '70', '15', '28000', '2022-03-11');

CREATE TABLE Insurance (
    Insurance_ID NUMERIC(20) NOT NULL PRIMARY KEY,
    Policy_num NUMERIC(10) NOT NULL,
    Coverage VARCHAR(20) NOT NULL,
    Premium NUMERIC(10) NOT NULL
);

INSERT INTO Insurance (Insurance_ID, Policy_num, Coverage, Premium)
VALUES
(1, 1234567890, 'Liability', 500),
(2, 2345678901, 'Collision', 700),
(3, 3456789012, 'Comprehensive', 600),
(4, 4567890123, 'Liability', 550),
(5, 5678901234, 'Collision', 750),
(6, 6789012345, 'Comprehensive', 650),
(7, 7890123456, 'Liability', 600),
(8, 8901234567, 'Collision', 800),
(9, 9012345678, 'Comprehensive', 700),
(10, 1234509876, 'Liability', 650),
(11, 2345098765, 'Collision', 850),
(12, 3450987654, 'Comprehensive', 750),
(13, 4569876543, 'Liability', 700),
(14, 5678765432, 'Collision', 900),
(15, 6787654321, 'Comprehensive', 800),
(16, 7896543210, 'Liability', 750),
(17, 8965432101, 'Collision', 950),
(18, 9874321012, 'Comprehensive', 850),
(19, 6543210123, 'Liability', 800),
(20, 5432101234, 'Collision', 1000),
(21, 4321092345, 'Comprehensive', 900),
(22, 3210983456, 'Liability', 850),
(23, 2109874567, 'Collision', 1100),
(24, 1098765678, 'Comprehensive', 950),
(25, 9876654321, 'Liability', 900),
(26, 8765543210, 'Collision', 1200),
(27, 7654432101, 'Comprehensive', 1050),
(28, 6543321098, 'Liability', 950),
(29, 5432210987, 'Collision', 1300),
(30, 4321109876, 'Comprehensive', 1150),
(31, 3210998765, 'Liability', 1050),
(32, 2109887654, 'Collision', 1400),
(33, 1098776543, 'Comprehensive', 1250),
(34, 9987654321, 'Liability', 1150),
(35, 8876543210, 'Collision', 1500),
(36, 7765432101, 'Comprehensive', 1350),
(37, 6654321098, 'Liability', 1250),
(38, 5543210987, 'Collision', 1600),
(39, 4432109876, 'Comprehensive', 1450),
(40, 3321098765, 'Liability', 1350),
(41, 2210987654, 'Collision', 1700),
(42, 1109876543, 'Comprehensive', 1550),
(43, 7654321987, 'Liability', 1450),
(44, 6543219876, 'Collision', 1800),
(45, 5432108765, 'Comprehensive', 1650),
(46, 4321097654, 'Liability', 1550),
(47, 3210986543, 'Collision', 1900),
(48, 2109875432, 'Comprehensive', 1750),
(49, 1098764321, 'Liability', 1650),
(50, 9987654320, 'Collision', 2000);


CREATE TABLE CarChargingStation (
    VIN VARCHAR(20) NOT NULL,
    StationID INT NOT NULL,
    PRIMARY KEY (VIN, StationID),
    FOREIGN KEY (VIN) REFERENCES Car(VIN),
    FOREIGN KEY (StationID) REFERENCES ChargingStation(StationID)
);

INSERT INTO CarChargingStation (VIN, StationID) 
VALUES
('1HGCM82633A123456', 1),
('JTDKB20U977654321', 3),
('1G1BE5SM2G7300001', 5),
('WAUZZZ8K0DA100002', 8),
('3FA6P0G72DR100003', 10),
('5N1AZ2MG8HN100004', 12),
('1C4RJFAG1FC100005', 14),
('1GNSKJKCXFR100006', 16),
('5UXWX9C55H0T100007', 18),
('2T3BFREV2HW100008', 20),
('WBA3B3C51EF100009', 22),
('1C4RJFAG1HC100010', 24),
('3VW4T7AU1FM100011', 26),
('KM8J3CA29KU100012', 28),
('1GNSCBE03DR100013', 30),
('5FNRL6H71JB100014', 32),
('WDCGG8JB9FG100015', 34),
('JTDZN3EU2FJ100016', 36),
('1C6SRFFT1MN100017', 38),
('1G1RD6E40FU100018', 40),
('JTHBE1BL0DA100019', 42),
('2T1KR32E13C123456', 44),
('1GNSCBE04ER654321', 46),
('1FAHP3K21CL100001', 48),
('JHMGE8H38CC100002', 50),
('5TDYK3DC8ES100003', 2),
('1GNKRHKD3GJ100004', 4),
('5FNRL6H7XGB100005', 6),
('1C4RDHDG0KC100006', 8),
('1HGCM82633A100007', 11),
('1G1FY6S07H5110008', 13),
('JTHCE1BL5FA100009', 15),
('3N1AB7AP5GY100010', 17),
('1GKKRPED7BJ100011', 19),
('JTEBU5JR5G5270012', 21),
('2HKRW1H8XJH100013', 23),
('1GNKVGKD1HJ100014', 25),
('1FADP3L96JL100015', 27),
('5NMS2CAD8KH100016', 29),
('WBA4Z1C59JD100017', 31),
('1HGCR2F55EA100018', 33),
('2T1BPRHE2EC123456', 35),
('1GNLREEDXCS654321', 37),
('1FAHP3J27CL100019', 39),
('JHMGE8H88CC100020', 41),
('5TDYK3EH8FS100021', 43),
('1GNKRHKD3GJ100022', 45),
('5FNRL6H7XGB100023', 47),
('1C4RDHDG0KC100024', 49),
('1HGCM82633A100025', 50),
('1G1FY6S07H5110026', 2),
('JTHCE1BL5FA100027', 4),
('3N1AB7AP5GY100028', 6),
('1GKKRPED7BJ100029', 8),
('JTEBU5JR5G5270030', 10),
('2HKRW1H8XJH100031', 12),
('1GNKVGKD1HJ100032', 14),
('1FADP3L96JL100033', 16),
('5NMS2CAD8KH100034', 18),
('WBA4Z1C59JD100035', 20),
('1HGCR2F55EA100036', 22),
('5TFRY5F10KX100037', 24),
('2T1KR32E13C100038', 26),
('1GNSCBE04ER100039', 28),
('1FAHP3K21CL100040', 30),
('JHMGE8H38CC100041', 32),
('5TDYK3DC8ES100042', 34),
('1GNKRHKD3GJ100043', 36),
('5FNRL6H7XGB100044', 38),
('1C4RDHDG0KC100045', 40),
('1HGCR2F55EA100036', 42),
('1GNKRHKD3GJ100022', 44),
('5NMS2CAD8KH100034', 46),
('JTHBE1BL0DA100019', 48),
('1C4RDHDG0KC100024', 50),
('2HKRW1H8XJH100031', 2),
('1HGCR2F55EA100018', 4),
('1FAHP3K21CL100040', 6),
('1G1BE5SM2G7300001', 8),
('1GNSKJKCXFR100006', 10),
('1C4RJFAG1FC100005', 12),
('JTDZN3EU2FJ100016', 14),
('1C6SRFFT1MN100017', 16),
('1HGCM82633A123456', 18),
('WDCGG8JB9FG100015', 20),
('5N1AZ2MG8HN100004', 22),
('JTDKB20U977654321', 24),
('1HGCM82633A100007', 26),
('2T1KR32E13C123456', 28),
('1C6SRFFT1MN100017', 30),
('5FNRL6H71JB100014', 31),
('1HGCM82633A100007', 34),
('3FA6P0G72DR100003', 36),
('1GKKRPED7BJ100011', 38),
('1GNKVGKD1HJ100014', 40),
('1FADP3L96JL100015', 42),
('1C4RJFAG1HC100010', 44),
('5FNRL6H7XGB100005', 46),
('1GNSCBE04ER654321', 48),
('KM8J3CA29KU100012', 50);

CREATE TABLE CustomerInsurance (
    Customer_ID NUMERIC(20),
    Insurance_ID NUMERIC(20),
    PRIMARY KEY (Customer_ID, Insurance_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Insurance_ID) REFERENCES Insurance(Insurance_ID)
);

INSERT INTO CustomerInsurance (Customer_ID, Insurance_ID) VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (3, 5), (3, 6), (4, 7), (4, 8), (5, 9), (5, 10),
(6, 11), (6, 12), (7, 13), (7, 14), (8, 15), (8, 16), (9, 17), (9, 18), (10, 19), (10, 20),
(11, 21), (11, 22), (12, 23), (12, 24), (13, 25), (13, 26), (14, 27), (14, 28), (15, 29), (15, 30),
(16, 31), (16, 32), (17, 33), (17, 34), (18, 35), (18, 36), (19, 37), (19, 38), (20, 39), (20, 40),
(21, 41), (21, 42), (22, 43), (22, 44), (23, 45), (23, 46), (24, 47), (24, 48), (25, 49), (25, 50),
(26, 1), (27, 2), (28, 3), (29, 4), (30, 5), (31, 6), (32, 7), (33, 8), (34, 9), (35, 10),
(36, 11), (37, 12), (38, 13), (39, 14), (40, 15), (41, 16), (42, 17), (43, 18), (44, 19), (45, 20),
(46, 21), (47, 22), (48, 23), (49, 24), (50, 25), (51, 26), (52, 27), (53, 28), (54, 29), (55, 30),
(56, 31), (57, 32), (58, 33), (59, 34), (60, 35), (61, 36), (62, 37), (63, 38), (64, 39), (65, 40),
(66, 41), (67, 42), (68, 43), (69, 44), (70, 45);


# Queries Scenario Design

# Query 01: A car dealship manager wants to find the top 5 customers with the highest total expenditure based on their transactions.
SELECT Customer.Customer_ID, Customer.First_Name, Customer.Last_Name, SUM(Transaction.Price) AS Total_Expenditure
FROM Customer
JOIN Transaction ON Customer.Customer_ID = Transaction.Customer_ID
GROUP BY Customer.Customer_ID
ORDER BY Total_Expenditure DESC
LIMIT 5;

# Query 02: A Jeep driver tries to find all 'Jeep’ charging stations with distinct Makes along with their location details.
SELECT DISTINCT ChargingStation.StationID, StationLocation.Street, StationLocation.City, StationLocation.State, StationLocation.Zipcode
FROM ChargingStation
JOIN CarChargingStation ON ChargingStation.StationID = CarChargingStation.StationID
JOIN car ON CarChargingStation.VIN = car.VIN
JOIN StationLocation ON ChargingStation.StationID = StationLocation.StationID
WHERE car.Make = 'Jeep';

# Query 03: The manager of the dealership (Dealership_num = 2) wants to review all information about customers, cars, and transactions for transactions that occurred his store.
SELECT Customer.Customer_ID, Customer.First_Name, Customer.Last_Name, car.Make, car.Model, car.VIN, Transaction.Transaction_Date
FROM Customer
JOIN Transaction ON Customer.Customer_ID = Transaction.Customer_ID
JOIN car ON Transaction.VIN = car.VIN
WHERE Transaction.Dealership_num = 2;

# Query 04: A customer is trying to find information about the top 5 dealerships based on the total number of transactions to decide where he should go to buy his car.
SELECT
    Dealership.Dealership_num,
    DealershipLocation.City,
    COUNT(Transaction.Transaction_ID) AS TotalTransactions,
    AVG(Car.Price) AS AverageCarPrice,
    MAX(Insurance.Premium) AS MaxPremium
FROM
    Dealership
JOIN DealershipLocation ON Dealership.Dealership_num = DealershipLocation.Dealership_num
JOIN Transaction ON Dealership.Dealership_num = Transaction.Dealership_num
JOIN Car ON Transaction.VIN = Car.VIN
LEFT JOIN CustomerInsurance ON Transaction.Customer_ID = CustomerInsurance.Customer_ID
LEFT JOIN Insurance ON CustomerInsurance.Insurance_ID = Insurance.Insurance_ID
GROUP BY
    Dealership.Dealership_num, DealershipLocation.City
ORDER BY
    TotalTransactions DESC
LIMIT 5;

# Query 05: Find the customer information associated with their transactions filtering cars manufactured after 2020 while only includes customers with more than one charging station sorted descending by number of charging stations.
SELECT
    Customer.Customer_ID,
    Customer.First_Name,
    Customer.Last_Name,
    COUNT(DISTINCT ChargingStation.StationID) AS Num_Charging_Stations
FROM
    Customer
JOIN Transaction ON Customer.Customer_ID = Transaction.Customer_ID
JOIN Car ON Transaction.VIN = Car.VIN
LEFT JOIN CarChargingStation ON Car.VIN = CarChargingStation.VIN
LEFT JOIN ChargingStation ON CarChargingStation.StationID = ChargingStation.StationID
WHERE
    Car.Manufacture_Year > 2020
GROUP BY
    Customer.Customer_ID, Customer.First_Name, Customer.Last_Name
HAVING
    Num_Charging_Stations > 1
ORDER BY
    Num_Charging_Stations DESC, Customer.Customer_ID;

# Query 06: A customer who interest in the Hyundai Kona car tries to find its average annual maintenance cost, total transactions, and average transaction price.
SELECT
    Car.Make,
    Car.Model,
    AVG(average_cost.Annual_Maintenance_Cost) AS Avg_Annual_Maintenance_Cost,
    COUNT(Transaction.Transaction_ID) AS Total_Transactions,
    AVG(Transaction.Price) AS Avg_Transaction_Price
FROM
    Car
JOIN average_cost ON Car.VIN = average_cost.VIN
LEFT JOIN Transaction ON Car.VIN = Transaction.VIN
WHERE
    Car.Make = 'Hyundai' AND Car.Model = 'Kona'
GROUP BY
    Car.Make, Car.Model;
    
# Query 07: A user is looking for dealerships carrying electric cars manufactured after 2020 with a maximum speed of at least 100, while ranking its average cost per mile from high to low.    
WITH ElectricCars AS (
    SELECT
        Car.VIN,
        Car.Manufacture_Year,
        Car.Dealership_num,
        Feature.Max_speed
    FROM
        Car
    JOIN Feature ON Car.VIN = Feature.VIN
    WHERE
        Car.Eco_Class = 'Electric'
        AND Car.Manufacture_Year > 2020
        AND Feature.Max_speed >= 100
)
SELECT
    D.Dealership_num,
    AVG(AC.Cost_Per_Mile) AS Avg_Cost_Per_Mile
FROM
    Dealership D
JOIN ElectricCars EC ON D.Dealership_num = EC.Dealership_num
LEFT JOIN average_cost AC ON EC.VIN = AC.VIN
GROUP BY
    D.Dealership_num
ORDER BY
    Avg_Cost_Per_Mile DESC;
    
# Query 08: A client asked the dealership what the lowest carbon emission Electric vehicle model and brand below 35000 dollars is.
SELECT f.VIN, c.Make AS 'Brand', c.Model AS 'Model', f.Carbon_emission_rate AS 'Carbon Emission Rate', c.Price AS 'Price'
FROM Feature f
JOIN Car c ON f.VIN = c.VIN
WHERE c.Price <= 35000
ORDER BY f.Carbon_emission_rate ASC, c.Price ASC
LIMIT 1;

# Query 09: A car dealership manager asks what the top selling car is per each state?
SELECT
'Top Selling Car' AS 'Type', State, `Car Make`, `Car Model`, `Total Sales`
FROM (
SELECT c.Make AS 'Car Make', c.Model AS 'Car Model', COUNT(t.VIN) AS 'Total Sales',
dl.State AS 'State',
RANK() OVER (PARTITION BY dl.State ORDER BY COUNT(t.VIN) DESC) AS RankNum
FROM car c
JOIN Transaction t ON c.VIN = t.VIN
JOIN DealershipLocation dl ON t.Dealership_num = dl.Dealership_num GROUP BY c.Make, c.Model, dl.State
) AS RankedCars WHERE
RankNum = 1;

# Query 10: A client asks a dealership manager what the top 3 cars with lowest charge cost are, while their prices are less than or equal $50000.
SELECT
c.Make AS 'Brand',
c.Model AS 'Car Model',
c.Price AS 'Price',
b.Capacity_in_miles AS 'Battery Capacity',
cs.Capacity AS 'Charging Station Capacity',
cs.CostPerKWh AS 'Cost Per kWh',
c.CarType AS 'Car Type',
c.Eco_Class AS 'Eco Class',
b.Full_Charge_time AS 'Full Charge Time',
cs.Status AS 'Station Status',
(cs.Capacity * cs.CostPerKWh) AS 'Total Cost for Full Charge', (cs.Capacity / b.Full_Charge_time) AS 'Charging Speed (Miles per Hour)', (c.Price / (cs.Capacity / b.Full_Charge_time)) AS 'Cost per Mile of Charge'
FROM Car c
JOIN CarChargingStation cc ON c.VIN = cc.VIN
JOIN ChargingStation cs ON cc.StationID = cs.StationID
JOIN Battery b ON c.VIN = b.VIN
WHERE c.Price <= 50000 AND cs.Status = 'Operational'
ORDER BY (c.Price / (cs.Capacity / b.Full_Charge_time)) ASC
LIMIT 3;

# Query 11: A client asks Toyota dealership about maintenance history and insurance claims of all preowned Pirus cars.
SELECT
c.Make AS 'Brand',
c.Model AS 'Car Model', po.Last_Service_Date AS 'Last Service Date', po.Last_Sale_Price AS 'Last Sale Price', po.Insurance_Claims AS 'Insurance Claims'
FROM car c
JOIN pre_owned_history po ON c.VIN = po.VIN
JOIN Dealership d ON c.Dealership_num = d.Dealership_num
JOIN DealershipLocation dl ON d.Dealership_num = dl.Dealership_num
WHERE c.Make = 'Toyota' AND c.Model = 'Prius';

# Query 12: The CFO asks for the report about electric or hybrid cars sold in year 2022
SELECT *
FROM Transaction t
LEFT JOIN Car c ON t.VIN = c.VIN
WHERE YEAR(t.Transaction_Date) = 2022;

# Query 13: A Honda manager wants to know all Honda eco-friendly cars they have sold from 2015 to 2023?
SELECT t.Transaction_ID, c.VIN, c.Make AS 'Car Make', c.Model AS 'Car Model', c.Manufacture_Year AS 'Manufacture Year', c.Eco_Class AS 'Eco Class', t.Price AS 'Transaction Price', t.Transaction_Date AS 'Transaction Date'
FROM Transaction t
JOIN Car c ON t.VIN = c.VIN WHERE c.Make = 'Honda'
AND YEAR(t.Transaction_Date) BETWEEN 2015 AND 2023;

# Query 14: A manager wants to know the top 3 selling states for BMW or Audi make vehicles.
WITH CarSales AS (
SELECT c.Make, c.VIN, t.Customer_ID, a.State AS Selling_State FROM Car c
JOIN Transaction t ON c.VIN = t.VIN
JOIN CustomerAddress a ON t.Customer_ID = a.Customer_ID
)
SELECT Make, Selling_State, COUNT(DISTINCT VIN) AS CarCount
FROM CarSales
WHERE Make IN ('BMW', 'Audi')
GROUP BY Make, Selling_State
ORDER BY Make, CarCount DESC
LIMIT 3;

# Query 15: A client is looking for the most affordable Honda Accord in terms of charing cost per month.
SELECT c.VIN, c.Make, c.Model, cs.StationID, cs.CostPerKWh, b.Full_Charge_time,
c.Price, (cs.CostPerKWh * b.Capacity_in_miles) AS 'Cost Per Charge',
((cs.CostPerKWh * b.Capacity_in_miles) / b.Full_Charge_time) AS 'Cost Per Mile', ((cs.CostPerKWh * b.Capacity_in_miles) / b.Full_Charge_time * 30) AS 'Cost Per Month'
FROM Car c
JOIN CarChargingStation cc ON c.VIN = cc.VIN
JOIN ChargingStation cs ON cc.StationID = cs.StationID JOIN Battery b ON c.VIN = b.VIN
WHERE c.Make = 'Honda' AND c.Model = 'Accord' ORDER BY`Cost Per Month` ASC
Limit 1;

# Query 16: The COO asks which model and make cars that each dealership is carrying the most. Also the quantity accordingly.
SELECT dl.Dealership_num, dl.Num_of_cars, c.Make, c.Model
FROM Dealership dl
JOIN Car c ON dl.Dealership_num = c.Dealership_num
ORDER BY dl.Num_of_cars DESC;



