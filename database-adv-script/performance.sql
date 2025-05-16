-- Initial complex query: Bookings + Users + Properties + Payments
SELECT
  bookings.id AS booking_id,
  users.id AS user_id,
  users.name AS user_name,
  properties.id AS property_id,
  properties.name AS property_name,
  payments.id AS payment_id,
  payments.amount,
  payments.status
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON payments.booking_id = bookings.id;
