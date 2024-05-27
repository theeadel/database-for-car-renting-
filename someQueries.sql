-- List all the users information 
SELECT u.id, u.username, u.name, u.email, u.address, u.last_login,  
           CASE WHEN a.id IS NOT NULL THEN 'Administrator' ELSE 'Client' END AS role 
           FROM userr u 
           LEFT JOIN administrator a ON u.id = a.id; 
 
 -- List all cars with their associated insurance information  
SELECT car.licenseplate, car.model, car.YEAR, insurance.coverage, insurance.provider 
            FROM car 
            LEFT JOIN insurance ON car.insurance_id = insurance.insuranceid; 
 -- Find the average rating and count of reviews for each car 
SELECT c.licenseplate, AVG(r.rating) AS average_rating, COUNT(r.id) AS review_count 
           FROM car c 
           LEFT JOIN reviews r ON c.licenseplate = r.licenseplate 
           GROUP BY c.licenseplate; 
 -- Retrieve all transactions made by clients along with their usernames and transaction 
amounts 
SELECT t.transactionid, u.username, t.amount 
            FROM transactions t 
            INNER JOIN client c ON t.client_id = c.id 
 
 
 
            INNER JOIN userr u ON c.id = u.id; 
 
 -- List all cars rented by clients along with their pickup and return dates 
SELECT car.licenseplate, car.model, rentee.pickupdate AS pickup_date, rentee.returndate 
AS return_date 
           FROM car 
           INNER JOIN rentee_car ON car.licenseplate = rentee_car.licenseplate 
           INNER JOIN rentee ON rentee_car.rentee_id = rentee.id; 
 
 -- Retrieve all administrators who have subordinate supervisors 
SELECT u.username, a.supervisor 
           FROM administrator a 
           INNER JOIN userr u ON a.id = u.id; 
 
 -- Find the total number of cars listed in each warehouse location 
SELECT w.location, COUNT(c.licenseplate) AS total_cars_listed 
           FROM warehouse w 
           LEFT JOIN car c ON w.warehouseId = c.warehouse_i 
 GROUP BY w.location; 
 
 -- Retrieve the top 5 clients with the highest number of transactions 
SELECT w.location, COUNT(c.licenseplate) AS total_cars_listed 
           FROM warehouse w 
           LEFT JOIN car c ON w.warehouseId = c.warehouse_id 
           GROUP BY w.location; 
  
 

 -- Find the average rental duration for each car in days 
SELECT c.licenseplate, u.name AS owner_name, u.email AS owner_email, u.phonenumber AS 
owner_phone 
            FROM car c 
            INNER JOIN carowner co ON c.carowner_id = co.id 
            INNER JOIN userr u ON co.id = u.id; 
 
 
 
-- List all clients who have rented a car in the past month 
SELECT MONTH(date) AS transaction_month, YEAR(date) AS transaction_year, SUM(amount) AS 
total_amount 
            FROM transactions 
            GROUP BY MONTH(date), YEAR(date) 
            ORDER BY transaction_year, transaction_month; 
 
 -- Find the average rating for each car model 
SELECT c.model, AVG(r.rating) AS average_rating 
            FROM car c 
            LEFT JOIN reviews r ON c.licenseplate = r.licenseplate 
            GROUP BY c.model; 
 

 
 
 
 -- Retrieve the top 3 most rented car models * 
SELECT c.model, COUNT(rc.licenseplate) AS total_rentals 
            FROM car c 
            LEFT JOIN rentee_car rc ON c.licenseplate = rc.licenseplate 
            GROUP BY c.model 
            ORDER BY total_rentals DESC 
            LIMIT 3; 
 
 -- Find the total revenue generated from transactions in the past year 
SELECT SUM(amount) AS total_revenue FROM transactions WHERE YEAR(`date`) = 
YEAR(CURDATE()) - 1; 
 
 
 
 -- Retrieve the details of all clients who have a membership level of 'Gold' 
SELECT u.username, u.name, u.email, c.membershiplevel 
            FROM userr u 
            INNER JOIN client c ON u.id = c.id 
            WHERE c.membershiplevel = 'Gold'; 
 
 
 -- Retrieve the total revenue generated from transactions in the past month 
SELECT SUM(amount) AS total_revenue 
            FROM transactions 
            WHERE DATE_FORMAT(date, '%Y-%m') = DATE_FORMAT(CURRENT_DATE - INTERVAL 1 
MONTH, '%Y-%m'); 
 
 -- List all cars along with their owners' names and contact information * 
SELECT u.username, COUNT(t.transactionid) AS total_transactions 
           FROM userr u 
           INNER JOIN client c ON u.id = c.id 
           LEFT JOIN transactions t ON c.id = t.client_id 
           GROUP BY u.username 
           ORDER BY total_transactions DESC 
           LIMIT 5; 
 
 -- Retrieve the total amount of transactions made in each month of the year * 
SELECT c.licenseplate, AVG(DATEDIFF(r.returndate, r.pickupdate)) AS 
average_rental_duration_days 
            FROM rentee_car rc 
            INNER JOIN rentee r ON rc.rentee_id = r.id 
            INNER JOIN car c ON rc.licenseplate = c.licenseplate 
            GROUP BY c.licenseplate; 
 
 
 
 
 -- List all clients who have rented a car with pickup locations in a specific city * 
SELECT DISTINCT u.username, u.name, u.email 
            FROM userr u 
            INNER JOIN client c ON u.id = c.id 
 
 
 
            INNER JOIN rentee r ON c.id = r.id 
            WHERE r.pickuplocation LIKE '%$city%'; 
 
 
-- List all cars with their owners and insurance coverage information  
SELECT c.licenseplate, u.name AS owner_name, i.coverage, i.provider 
            FROM car c 
            INNER JOIN carowner co ON c.carowner_id = co.id 
            INNER JOIN userr u ON co.id = u.id 
            LEFT JOIN insurance i ON c.insurance_id = i.insuranceid; 
 
 
 
 -- Find the clients who have made the highest total amount of transactions  
SELECT u.username, u.name, u.email, SUM(t.amount) AS total_transaction_amount 
            FROM userr u 
            INNER JOIN client c ON u.id = c.id 
            LEFT JOIN transactions t ON c.id = t.client_id 
            GROUP BY u.username, u.name, u.email 
            ORDER BY total_transaction_amount DESC 
            LIMIT 5; 
 -- Retrieve information about cars rented by clients along with their rental history and 
insurance details 
SELECT  
    c.licenseplate, 
    c.model, 
    c.year, 
    r.pickupdate AS last_pickup_date, 
    r.returndate AS last_return_date, 
    i.coverage AS insurance_coverage, 
    i.provider AS insurance_provider 
FROM  
    car c 
JOIN  
    rentee_car rc ON c.licenseplate = rc.licenseplate 
JOIN  
    rentee r ON rc.rentee_id = r.id 
LEFT JOIN  
    insurance i ON c.insurance_id = i.insuranceid 
WHERE  
    r.returndate = ( 
        SELECT  
            MAX(returndate)  
        FROM  
            rentee  
        WHERE  
            id = r.id 
    ) 
ORDER BY  
    last_return_date DESC; 
 
--Retrieve information about clients who have rented cars multiple times, along with the 
total number of rentals and the average duration of their rentals 
 
 
 
SELECT  
    c.id AS client_id, 
    c.name AS client_name, 
    COUNT(t.transactionid) AS total_rentals, 
    AVG(TIMESTAMPDIFF(DAY, r.pickupdate, r.returndate)) AS avg_rental_duration 
FROM  
    client c 
JOIN  
    transactions t ON c.id = t.client_id 
JOIN  
    rentee r ON c.id = r.id 
GROUP BY  
    c.id, c.name 
HAVING  
    total_rentals > 1 
ORDER BY  
    avg_rental_duration DESC; 
 
 -- retrieve detailed information about clients, their rented cars, transaction history, 
insurance details, and warehouse locations: 
SELECT  
    c.id AS client_id, 
    c.name AS client_name, 
    r.pickupdate AS rental_pickup_date, 
    r.returndate AS rental_return_date, 
    ca.licenseplate AS rented_car_license, 
    ca.model AS rented_car_model, 
    t.method AS payment_method, 
    i.coverage AS insurance_coverage, 
    w.location AS warehouse_location 
FROM  
    client c 
JOIN  
    rentee r ON c.id = r.id 
JOIN  
    rentee_car rc ON r.id = rc.rentee_id 
JOIN  
    car ca ON rc.licenseplate = ca.licenseplate 
JOIN  
    transactions t ON c.id = t.client_id 
LEFT JOIN  
    insurance i ON ca.insurance_id = i.insuranceid 
LEFT JOIN  
    warehouse w ON ca.warehouse_id = w.warehouseId 
ORDER BY  
    r.pickupdate DESC;