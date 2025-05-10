# ER Diagram Requirements for ALX Airbnb Clone

## Entities and Attributes

1. **User**
   - user_id (PK)
   - first_name
   - last_name
   - email
   - phone_number
   - created_at

2. **Property**
   - property_id (PK)
   - name
   - description
   - location
   - price_per_night
   - owner_id (FK to User)

3. **Booking**
   - booking_id (PK)
   - user_id (FK to User)
   - property_id (FK to Property)
   - check_in_date
   - check_out_date
   - total_price
   - status

4. **Review**
   - review_id (PK)
   - booking_id (FK to Booking)
   - user_id (FK to User)
   - rating
   - comment
   - review_date

## Relationships

- One User can have many Bookings.
- One Property belongs to one User.
- One Property can have many Bookings.
- One Booking can have one Review.
- One User can write many Reviews.

## ER Diagram
![er-diagram-airbnb-alx](https://github.com/user-attachments/assets/0aa31278-b69c-452a-bf46-f1567764d3ed)

