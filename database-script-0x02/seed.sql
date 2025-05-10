-- Inserting sample users into the User table
INSERT INTO User (name, email) VALUES
('Alice Njeri', 'alice@example.com'),
('Bob Emmanuel', 'bob@example.com'),
('Charls Omondi', 'charls@example.com'),
('Diana Marua', 'diana@example.com'),
('Eva Wanjiru', 'eva@example.com')

-- Inserting sample hosts into the Host table
INSERT INTO Host (name, email) VALUES
('James Mwangi', 'james@host.com'),
('Linda Kemunto', 'linda@host.com'),
('Michael Muchoki', 'michael@host.com');

-- Inserting sample properties into the Property table
INSERT INTO Property (name, city, country, host_id) VALUES
('Oceanfront Villa', 'Nairobi', 'Kenya', 1),
('Downtown Apartment', 'Thika', 'Kenya', 2),
('Mountain Retreat', 'Nyeri', 'Kenya', 2),
('Beach House', 'Mombasa', 'Kenya', 3),
('Country Cottage', 'Nanyuki', 'Kenya', 3);

-- Inserting sample payments into the Payment table
INSERT INTO Payment (amount, payment_date) VALUES
(150.00, '2025-01-01'),
(250.00, '2025-01-02'),
(175.00, '2025-01-03'),
(300.00, '2025-01-04'),
(100.00, '2025-01-05');

-- Inserting sample bookings into the Booking table
INSERT INTO Booking (user_id, property_id, booking_date, payment_id) VALUES
(1, 1, '2025-01-01', 1),
(2, 2, '2025-01-02', 2),
(3, 3, '2025-01-03', 3),
(4, 4, '2025-01-04', 4),
(5, 5, '2025-01-05', 5);
