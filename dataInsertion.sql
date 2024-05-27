INSERT INTO [user] (id, PASSWORD, username, NAME, email, phonenumber, address, 
last_login) 
VALUES  
(1, 'pass1', 'user1', 'John Doe', 'john@example.com', '123-456-7890', '123 Main St, City, 
Country', NULL), 
(2, 'pass2', 'user2', 'Jane Smith', 'jane@example.com', '987-654-3210', '456 Elm St, 
City, Country', NULL), 
(3, 'pass3', 'user3', 'Alice Johnson', 'alice@example.com', '111-222-3333', '101 Pine 
St', NULL), 
(4, 'pass4', 'user4', 'Mark Williams', 'mark@example.com', '444-555-6666', '202 Maple 
Ave', NULL), 
(5, 'pass5', 'user5', 'Emily Brown', 'emily@example.com', '777-888-9999', '303 Oak St', 
NULL), 
(6, 'pass6', 'user6', 'Sarah Johnson', 'sarah@example.com', '333-444-5555', '404 Cedar 
St', NULL), 
(7, 'pass7', 'user7', 'Michael Williams', 'michael@example.com', '666-777-8888', '505 Oak 
St', NULL), 
(8, 'pass8', 'user8', 'Emma Brown', 'emma@example.com', '999-000-1111', '606 Pine St', 
NULL), 
(9, 'pass9', 'user9', 'Sophia Miller', 'sophia@example.com', '222-333-4444', '707 Pine 
St', NULL), 
(10, 'pass10', 'user10', 'David Johnson', 'david@example.com', '555-666-7777', '808 Pine 
St', NULL), 
(11, 'pass11', 'user11', 'Michael Johnson', 'michael@example.com', '111-222-3333', '111 
Cedar St', NULL), 
(12, 'pass12', 'user12', 'Sophia Williams', 'sophia@example.com', '444-555-6666', '222 
Maple Ave', NULL), 
(13, 'pass13', 'user13', 'David Brown', 'david@example.com', '777-888-9999', '333 Oak 
St', NULL), 
(14, 'pass14', 'user14', 'Olivia Miller', 'olivia@example.com', '999-000-1111', '444 Pine 
St', NULL), 
(15, 'pass15', 'user15', 'Lucas Davis', 'lucas@example.com', '222-333-4444', '555 Elm 
St', NULL), 
(16, 'pass16', 'user16', 'Emma Garcia', 'emma@example.com', '555-666-7777', '666 Birch 
St', NULL), 
(17, 'pass17', 'user17', 'Ethan Martinez', 'ethan@example.com', '888-999-0000', '777 
Cedar St', NULL), 
(18, 'pass18', 'user18', 'Isabella Hernandez', 'isabella@example.com', '111-222-3333', 
'888 Maple Ave', NULL), 
(19, 'pass19', 'user19', 'Mia Lopez', 'mia@example.com', '444-555-6666', '999 Oak St', 
NULL), 
(20, 'pass20', 'user20', 'Liam Gonzalez', 'liam@example.com', '777-888-9999', '1010 Pine 
St', NULL); 
INSERT INTO client (id, driverslicense, damageschecklist, preferences, membershiplevel) 
VALUES  
(1, 'DL123456', 'No damages', 'None', 'Gold'), 
(2, 'DL789012', 'Scratch on left door', 'Non-smoking', 'Silver'), 
(3, 'DL246810', 'Scratches on the right side', NULL, 'Bronze'), 
(4, 'DL135792', 'Dented bumper', NULL, 'Silver'), 
(5, 'DL246813', NULL, NULL, 'Gold'), 
(6, 'DL123457', 'No damages', 'None', 'Gold'), 
(7, 'DL789013', 'Scratch on left door', 'Non-smoking', 'Silver'), 
(8, 'DL246811', 'Scratches on the right side', NULL, 'Bronze'), 
(9, 'DL135793', 'Dented bumper', NULL, 'Silver'), 
(10, 'DL246814', NULL, NULL, 'Gold'), 
(11, 'DL123458', 'No damages', 'None', 'Gold'), 
(12, 'DL789014', 'Scratch on left door', 'Non-smoking', 'Silver'), 
(13, 'DL246812', 'Scratches on the right side', NULL, 'Bronze'), 
(14, 'DL135794', 'Dented bumper', NULL, 'Silver'), 
(15, 'DL246815', NULL, NULL, 'Gold'), 
(16, 'DL123459', 'No damages', 'None', 'Gold'), 
(17, 'DL789015', 'Scratch on left door', 'Non-smoking', 'Silver'), 
(18, 'DL246816', 'Scratches on the right side', NULL, 'Bronze'), 
(19, 'DL135795', 'Dented bumper', NULL, 'Silver'), 
(20, 'DL246817', NULL, NULL, 'Gold'); 
INSERT INTO administrator (id, officenumber, [role], [permissions], department, 
supervisor) 
VALUES  
(1, 101, 'Manager', 'All', 'HR', NULL), 
(2, 102, 'Supervisor', 'Read-only', 'Finance', 1), 
(3, 103, 'Supervisor', 'All permissions', 'Operations', NULL), 
(4, 104, 'Manager', 'Limited permissions', 'Sales', 2), 
(5, 105, 'Employee', 'Basic permissions', 'Marketing', 2), 
(6, 106, 'Manager', 'All', 'HR', NULL), 
(7, 107, 'Supervisor', 'Read-only', 'Finance', 6), 
(8, 108, 'Supervisor', 'All permissions', 'Operations', NULL), 
(9, 109, 'Manager', 'Limited permissions', 'Sales', 7), 
(10, 110, 'Employee', 'Basic permissions', 'Marketing', 7), 
(11, 111, 'Employee', 'Basic permissions', 'Operations', 3), 
(12, 112, 'Manager', 'All', 'HR', NULL), 
(13, 113, 'Supervisor', 'Read-only', 'Finance', 4), 
(14, 114, 'Supervisor', 'All permissions', 'Sales', NULL), 
(15, 115, 'Manager', 'Limited permissions', 'Marketing', 5), 
(16, 116, 'Employee', 'Basic permissions', 'Operations', 6), 
(17, 117, 'Manager', 'All', 'HR', NULL), 
(18, 118, 'Supervisor', 'Read-only', 'Finance', 7), 
(19, 119, 'Supervisor', 'All permissions', 'Sales', NULL), 
(20, 120, 'Manager', 'Limited permissions', 'Marketing', 8); 
INSERT INTO warehouse (warehouseId, location, capacity) 
VALUES  
(1, 'Downtown', 100), 
(2, 'Suburb', 200), 
(3, 'Warehouse D', 250), 
(4, 'Warehouse E', 300), 
(5, 'Warehouse F', 200), 
(6, 'Downtown', 150), 
(7, 'Suburb', 200), 
(8, 'Warehouse G', 250), 
(9, 'Warehouse H', 300), 
(10, 'Warehouse I', 200), 
(11, 'Warehouse J', 150), 
(12, 'Warehouse K', 200), 
(13, 'Warehouse L', 250), 
(14, 'Warehouse M', 300), 
(15, 'Warehouse N', 200), 
(16, 'Warehouse O', 150), 
(17, 'Warehouse P', 200), 
(18, 'Warehouse Q', 250), 
(19, 'Warehouse R', 300), 
(20, 'Warehouse S', 200); 
INSERT INTO carowner (id, numberofcars, payplan) 
VALUES  
(1, 3, 'Monthly'), 
(2, 1, 'Yearly'), 
(3, 3, 'Monthly'), 
(4, 1, 'Yearly'), 
(5, 2, 'Quarterly'), 
(6, 3, 'Monthly'), 
(7, 1, 'Yearly'), 
(8, 2, 'Quarterly'), 
(9, 3, 'Monthly'), 
(10, 1, 'Yearly'), 
(11, 2, 'Yearly'), 
(12, 1, 'Monthly'), 
(13, 3, 'Quarterly'), 
(14, 1, 'Yearly'), 
(15, 2, 'Quarterly'), 
(16, 2, 'Monthly'), 
(17, 1, 'Yearly'), 
(18, 3, 'Quarterly'), 
(19, 1, 'Monthly'), 
(20, 2, 'Yearly'); 
INSERT INTO insurance (insuranceid, coverage, provider, policy_number) 
VALUES  
(1, 'Comprehensive', 'ABC Insurance', 'POL123456'), 
(2, 'Liability', 'XYZ Insurance', 'POL789012'), 
(3, 'Theft', '123 Insurance', 'POL246810'), 
(4, 'Third-Party', 'DEF Insurance', 'POL135792'), 
(5, 'Full Coverage', 'GHI Insurance', 'POL246813'), 
(6, 'Comprehensive', 'JKL Insurance', 'POL123457'), 
(7, 'Liability', 'MNO Insurance', 'POL789013'), 
(8, 'Theft', 'PQR Insurance', 'POL246811'), 
(9, 'Third-Party', 'STU Insurance', 'POL135793'), 
(10, 'Full Coverage', 'VWX Insurance', 'POL246814'), 
(11, 'Comprehensive', 'JKL Insurance', 'POL123458'), 
(12, 'Liability', 'MNO Insurance', 'POL789014'), 
(13, 'Theft', 'PQR Insurance', 'POL246812'), 
(14, 'Third-Party', 'STU Insurance', 'POL135794'), 
(15, 'Full Coverage', 'VWX Insurance', 'POL246815'), 
(16, 'Comprehensive', 'YZA Insurance', 'POL123459'), 
(17, 'Liability', 'BCD Insurance', 'POL789015'), 
(18, 'Theft', 'EFG Insurance', 'POL246816'), 
(19, 'Third-Party', 'HIJ Insurance', 'POL135795'), 
(20, 'Full Coverage', 'KLM Insurance', 'POL246817'); 
INSERT INTO car (licenseplate, vid, model, YEAR, color, datelisted, carowner_id, 
warehouse_id, insurance_id) 
VALUES  
('ABC123', 'VID123', 'Toyota Camry', 2019, 'Black', '2023-01-01', 1, 1, 1), 
('DEF456', 'VID456', 'Honda Accord', 2018, 'White', '2022-05-01', 2, 2, 2), 
('GHI789', 'V789', 'BMW X5', 2021, 'Silver', '2024-04-21 09:45:00', 2, 2, 3), 
('JKL012', 'V012', 'Tesla Model S', 2023, 'Blue', '2024-04-21 11:30:00', 3, 3, 4), 
('MNO345', 'V345', 'Mercedes-Benz C-Class', 2022, 'Gray', '2024-04-22 10:00:00', 3, 4, 
5), 
('PQR123', 'V789', 'Ford Mustang', 2020, 'Red', '2024-04-25 09:45:00', 3, 2, 6), 
('STU456', 'V456', 'Chevrolet Malibu', 2017, 'Black', '2024-04-25 10:00:00', 3, 3, 7), 
('VWX789', 'V012', 'Audi A4', 2019, 'Blue', '2024-04-26 11:30:00', 1, 1, 8), 
('YZA012', 'V345', 'Lexus RX', 2022, 'Silver', '2024-04-27 12:00:00', 2, 2, 9), 
('BCD345', 'V345', 'Volkswagen Golf', 2016, 'White', '2024-04-28 13:00:00', 1, 3, 10), 
('EFG123', 'VID123', 'Toyota Corolla', 2020, 'Red', '2024-04-30 09:45:00', 1, 1, 11), 
('HIJ456', 'VID456', 'Honda Civic', 2017, 'Gray', '2024-04-30 10:00:00', 2, 2, 12), 
('KLM789', 'V789', 'BMW X3', 2022, 'Black', '2024-04-30 11:30:00', 2, 2, 13), 
('NOP012', 'V012', 'Tesla Model 3', 2024, 'White', '2024-04-30 12:00:00', 3, 3, 14), 
('QRS345', 'V345', 'Mercedes-Benz E-Class', 2021, 'Blue', '2024-04-30 13:00:00', 3, 4, 
15), 
('TUV678', 'V789', 'Ford Focus', 2019, 'Silver', '2024-04-30 14:00:00', 3, 2, 16), 
('WXY901', 'V012', 'Audi A3', 2018, 'Black', '2024-04-30 15:00:00', 1, 1, 17), 
('ZAB234', 'V345', 'Lexus NX', 2023, 'Red', '2024-04-30 16:00:00', 2, 2, 18), 
('CDE567', 'V345', 'Volkswagen Passat', 2016, 'Green', '2024-04-30 17:00:00', 1, 3, 19), 
('FGH890', 'V012', 'Toyota RAV4', 2021, 'White', '2024-04-30 18:00:00', 3, 4, 20); 
INSERT INTO transactions (transactionid, client_id, method, DATE, amount) 
VALUES  
(1, 1, 'Credit Card', '2023-01-05', 150.00), 
(2, 2, 'PayPal', '2023-02-10', 200.00), 
(3, 3, 'Credit Card', '2024-04-21 10:45:00', 120.00), 
(4, 4, 'Cash', '2024-04-21 11:15:00', 90.75), 
(5, 5, 'Debit Card', '2024-04-21 11:45:00', 180.50), 
(6, 6, 'Credit Card', '2024-04-22 12:00:00', 150.00), 
(7, 7, 'PayPal', '2024-04-22 12:30:00', 200.00), 
(8, 8, 'Cash', '2024-04-23 01:00:00', 120.00), 
(9, 9, 'Debit Card', '2024-04-23 01:30:00', 90.75), 
(10, 10, 'Credit Card', '2024-04-24 11:45:00', 180.50), 
(11, 11, 'Credit Card', '2024-04-30 10:45:00', 120.00), 
(12, 12, 'Cash', '2024-04-30 11:15:00', 90.75), 
(13, 13, 'Debit Card', '2024-04-30 11:45:00', 180.50), 
(14, 14, 'Credit Card', '2024-04-30 12:00:00', 150.00), 
(15, 15, 'PayPal', '2024-04-30 12:30:00', 200.00), 
(16, 16, 'Credit Card', '2024-04-30 01:00:00', 120.00), 
(17, 17, 'Cash', '2024-04-30 01:30:00', 90.75), 
(18, 18, 'Debit Card', '2024-04-30 11:45:00', 180.50), 
(19, 19, 'Credit Card', '2024-04-30 12:00:00', 150.00), 
(20, 20, 'PayPal', '2024-04-30 12:30:00', 200.00); 
INSERT INTO rentee (id, rentalhistory, preferredcartype, returnlocation, pickuplocation, 
pickupdate, returndate) 
VALUES  
(1, 'Regular customer', 'SUV', 'Airport', 'Downtown', '2023-01-05', '2023-01-10'), 
(2, 'First-time renter', 'Sedan', 'City Center', 'Suburb', '2023-02-10', '2023-02-15'), 
(3, 'First-time renter', 'Convertible', 'City Center', 'Airport', '2024-04-22 12:00:00', 
'2024-04-24 12:00:00'), 
(4, 'Regular renter', 'SUV', 'Downtown', 'Suburb', '2024-04-23 10:00:00', '2024-04-25 
10:00:00'), 
(5, 'Rented multiple times', 'Luxury', 'Downtown', 'City Center', '2024-04-24 08:00:00', 
'2024-04-26 08:00:00'), 
(6, 'Regular customer', 'SUV', 'Airport', 'Downtown', '2023-01-05', '2023-01-10'), 
(7, 'First-time renter', 'Sedan', 'City Center', 'Suburb', '2023-02-10', '2023-02-15'), 
(8, 'First-time renter', 'Convertible', 'City Center', 'Airport', '2024-04-22 12:00:00', 
'2024-04-24 12:00:00'), 
(9, 'Regular renter', 'SUV', 'Downtown', 'Suburb', '2024-04-23 10:00:00', '2024-04-25 
10:00:00'), 
(10, 'Rented multiple times', 'Luxury', 'Downtown', 'City Center', '2024-04-24 08:00:00', 
'2024-04-26 08:00:00'), 
(11, 'Regular customer', 'SUV', 'Airport', 'Downtown', '2024-04-30 10:00:00', '2024-05-01 
10:00:00'), 
(12, 'First-time renter', 'Sedan', 'City Center', 'Suburb', '2024-04-30 10:00:00', '2024
05-01 10:00:00'), 
(13, 'First-time renter', 'Convertible', 'City Center', 'Airport', '2024-04-30 12:00:00', 
'2024-05-01 12:00:00'), 
(14, 'Regular renter', 'SUV', 'Downtown', 'Suburb', '2024-04-30 10:00:00', '2024-05-01 
10:00:00'), 
(15, 'Rented multiple times', 'Luxury', 'Downtown', 'City Center', '2024-04-30 08:00:00', 
'2024-05-01 08:00:00'), 
(16, 'Regular customer', 'SUV', 'Airport', 'Downtown', '2024-04-30 10:00:00', '2024-05-01 
10:00:00'), 
(17, 'First-time renter', 'Sedan', 'City Center', 'Suburb', '2024-04-30 10:00:00', '2024
05-01 10:00:00'), 
(18, 'First-time renter', 'Convertible', 'City Center', 'Airport', '2024-04-30 12:00:00', 
'2024-05-01 12:00:00'), 
(19, 'Regular renter', 'SUV', 'Downtown', 'Suburb', '2024-04-30 10:00:00', '2024-05-01 
10:00:00'), 
(20, 'Rented multiple times', 'Luxury', 'Downtown', 'City Center', '2024-04-30 08:00:00', 
'2024-05-01 08:00:00'); 
INSERT INTO rentee_car (rentee_id, licenseplate) 
VALUES  
(1, 'ABC123'), 
(2, 'DEF456'), 
(3, 'GHI789'), 
(4, 'JKL012'), 
(5, 'MNO345'), 
(6, 'PQR123'), 
(7, 'STU456'), 
(8, 'VWX789'), 
(9, 'YZA012'), 
(10, 'BCD345'), 
(11, 'EFG123'), 
(12, 'HIJ456'), 
(13, 'KLM789'), 
(14, 'NOP012'), 
(15, 'QRS345'), 
 
 
 
(16, 'TUV678'), 
(17, 'WXY901'), 
(18, 'ZAB234'), 
(19, 'CDE567'), 
(20, 'FGH890'); 
INSERT INTO reviews (id, rating, comments, client_id, licenseplate) 
VALUES  
(1, 5, 'Great experience!', 1, 'ABC123'), 
(2, 4, 'Good service.', 2, 'DEF456'), 
(3, 4, 'Smooth driving experience', 3, 'GHI789'), 
(4, 5, 'Excellent customer service', 4, 'JKL012'), 
(5, 3, 'Average condition, good service', 5, 'MNO345'), 
(6, 5, 'Great experience!', 6, 'PQR123'), 
(7, 4, 'Good service.', 7, 'STU456'), 
(8, 4, 'Smooth driving experience', 8, 'VWX789'), 
(9, 5, 'Excellent customer service', 9, 'YZA012'), 
(10, 3, 'Average condition, good service', 10, 'BCD345'), 
(11, 5, 'Great experience!', 11, 'EFG123'), 
(12, 4, 'Good service.', 12, 'HIJ456'), 
(13, 4, 'Smooth driving experience', 13, 'KLM789'), 
(14, 5, 'Excellent customer service', 14, 'NOP012'), 
(15, 3, 'Average condition, good service', 15, 'QRS345'), 
(16, 5, 'Great experience!', 16, 'TUV678'), 
(17, 4, 'Good service.', 17, 'WXY901'), 
(18, 4, 'Smooth driving experience', 18, 'ZAB234'), 
(19, 5, 'Excellent customer service', 19, 'CDE567'), 
(20, 3, 'Average condition, good service', 20, 'FGH890');