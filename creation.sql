create database ajjeraa; 
use ajjeraa; 
CREATE TABLE [user] ( 
    id INT NOT NULL, 
    password VARCHAR(255) NOT NULL, 
    username VARCHAR(255) NOT NULL, 
    name VARCHAR(255) NOT NULL, 
    email VARCHAR(255) NOT NULL, 
    phonenumber VARCHAR(20) NOT NULL, 
    address VARCHAR(255) NOT NULL, 
    last_login DATETIME, 
    PRIMARY KEY (id) 
); 
 
CREATE TABLE client ( 
    id INT NOT NULL, 
    driverslicense VARCHAR(50) NOT NULL, 
    damageschecklist TEXT, 
    preferences TEXT, 
    membershiplevel VARCHAR(50), 
    PRIMARY KEY (id), 
    FOREIGN KEY (id) REFERENCES [user](id) ON DELETE CASCADE 
); 
 
CREATE TABLE administrator ( 
    id INT NOT NULL, 
    officenumber INT NOT NULL, 
    role VARCHAR(50) NOT NULL, 
    permissions VARCHAR(255) NOT NULL, 
    department VARCHAR(100) NOT NULL, 
    supervisor INT, 
    PRIMARY KEY (id), 
    FOREIGN KEY (id) REFERENCES [user](id) ON DELETE CASCADE 
); 
 
CREATE TABLE warehouse ( 
    warehouseId INT NOT NULL, 
    location VARCHAR(255), 
    capacity INT, 
    PRIMARY KEY (warehouseId) 
); 
 
CREATE TABLE carowner ( 
    id INT NOT NULL, 
 
 
 
    numberofcars INT, 
    payplan VARCHAR(50), 
    PRIMARY KEY (id), 
    FOREIGN KEY (id) REFERENCES client(id) ON DELETE CASCADE 
); 
 
CREATE TABLE insurance ( 
    insuranceid INT NOT NULL, 
    coverage VARCHAR(255), 
    provider VARCHAR(100), 
    policy_number VARCHAR(50), 
    PRIMARY KEY (insuranceid) 
); 
 
CREATE TABLE car ( 
    licenseplate VARCHAR(20) NOT NULL, 
    vid VARCHAR(20) NOT NULL, 
    model VARCHAR(50), 
    year INT, 
    color VARCHAR(20), 
    datelisted DATETIME, 
    carowner_id INT, 
    warehouse_id INT, 
    PRIMARY KEY (licenseplate), 
    FOREIGN KEY (carowner_id) REFERENCES carowner(id) ON DELETE CASCADE, 
    FOREIGN KEY (warehouse_id) REFERENCES warehouse(warehouseId) ON DELETE SET NULL 
); 
 
CREATE TABLE transactions ( 
    transactionid INT NOT NULL, 
    client_id INT NOT NULL, 
    method VARCHAR(50), 
    date DATETIME, 
    amount DECIMAL(10, 2), 
    PRIMARY KEY (transactionid, client_id), 
    FOREIGN KEY (client_id) REFERENCES client(id) ON DELETE CASCADE 
); 
 
CREATE TABLE rentee ( 
    id INT NOT NULL, 
    rentalhistory TEXT, 
    preferredcartype VARCHAR(50), 
    returnlocation VARCHAR(255), 
    pickuplocation VARCHAR(255), 
    pickupdate DATETIME, 
    returndate DATETIME, 
    PRIMARY KEY (id), 
    FOREIGN KEY (id) REFERENCES client(id) ON DELETE CASCADE 
); 
 
CREATE TABLE rentee_car ( 
    rentee_id INT NOT NULL, 
    licenseplate VARCHAR(20) NOT NULL, 
    PRIMARY KEY (rentee_id, licenseplate), 
    FOREIGN KEY (rentee_id) REFERENCES rentee(id) ON DELETE NO ACTION, 
    FOREIGN KEY (licenseplate) REFERENCES car(licenseplate) ON DELETE CASCADE 
); 
 
CREATE TABLE reviews ( 
id INT NOT NULL, 
rating INT, 
comments TEXT, 
client_id INT, 
licenseplate VARCHAR(20), 
PRIMARY KEY (id), 
FOREIGN KEY (client_id) REFERENCES client(id) ON DELETE NO ACTION, 
FOREIGN KEY (licenseplate) REFERENCES car(licenseplate) ON DELETE CASCADE 
); 
ALTER TABLE car 
ADD insurance_id INT; 
ALTER TABLE car 
ADD CONSTRAINT UC_insurance_id UNIQUE (insurance_id); 
ALTER TABLE car 
ADD CONSTRAINT FK_car_insurance FOREIGN KEY (insurance_id) REFERENCES 
insurance(insuranceid) ON DELETE CASCADE; 
