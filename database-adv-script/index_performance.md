# Index Performance Report

## Indexes Created

- `idx_bookings_user_id` on `bookings(user_id)`
- `idx_bookings_property_id` on `bookings(property_id)`
- `idx_bookings_booking_date` on `bookings(booking_date)` (optional)

## Performance Testing

### Query tested

```sql
SELECT * FROM bookings WHERE user_id = 123;
