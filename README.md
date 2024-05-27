The database for our peer-to-peer car rental app is designed to efficiently manage all aspects of the rental process,
ensuring smooth transactions between car owners and renters. It consists of several interconnected tables that store
comprehensive information about users, cars, bookings, and reviews.

Users Table: This table stores details about all registered users of the platform.
It includes fields such as user ID, username, email, password (hashed for security),
contact information, and account status (active/inactive).

Cars Table: The cars table contains information about each vehicle available for rental.
This includes fields such as car ID, make, model, year, color, transmission type, fuel type,
seating capacity, location (latitude and longitude), availability status, and daily rental price.

Bookings Table: This table keeps track of all rental bookings made by users.
It includes fields such as booking ID, car ID (foreign key referencing the Cars table),
user ID (foreign key referencing the Users table), start date, end date, total rental cost,
and booking status (confirmed/canceled).

Reviews Table: The reviews table stores feedback provided by renters after completing a rental.
It includes fields such as review ID, booking ID (foreign key referencing the Bookings table),
rating (out of 5 stars), review text, and timestamp.

Payments Table: This table records all payment transactions associated with bookings.
It includes fields such as payment ID, booking ID (foreign key referencing the Bookings table),
payment amount, payment status, payment method, and transaction timestamp.

Locations Table: This table stores information about geographical locations where cars are available for rent.
It includes fields such as location ID, latitude, longitude, city, and country.

The database is designed with relational integrity constraints to ensure data consistency and accuracy.
It provides a solid foundation for our peer-to-peer car rental platform, facilitating seamless interactions between users, cars, bookings, and payments.

