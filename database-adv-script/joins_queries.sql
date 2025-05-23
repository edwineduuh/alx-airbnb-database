-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT bookings.*, users.*
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT properties.id, properties.name, reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id
ORDER BY properties.id;

-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or the booking is not linked to a user
SELECT users.*, bookings.*
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;

