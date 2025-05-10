-- Creating the User table
CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- Creating the Host table
CREATE TABLE Host (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- Creating the Property table
CREATE TABLE Property (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    host_id INT,
    FOREIGN KEY (host_id) REFERENCES Host(id)
);

-- Creating the Payment table
CREATE TABLE Payment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATE NOT NULL
);

-- Creating the Booking table
CREATE TABLE Booking (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    property_id INT,
    booking_date DATE NOT NULL,
    payment_id INT,
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (property_id) REFERENCES Property(id),
    FOREIGN KEY (payment_id) REFERENCES Payment(id)
);

 -- Creating indexes for performance optimization
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_host_email ON Host(email);
CREATE INDEX idx_property_location ON Property(city, country);
CREATE INDEX idx_booking_date ON Booking(booking_date);
CREATE INDEX idx_payment_date ON Payment(payment_date);
