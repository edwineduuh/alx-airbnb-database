# SQL Join Queries - Airbnb Clone

This project demonstrates mastery of SQL joins by writing complex queries using different types of joins.

## Files

- `joins_queries.sql` - Contains SQL queries for INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.
- `README.md` - This file.

## Queries

1. **INNER JOIN**
   - Retrieves all bookings and the users who made those bookings.

2. **LEFT JOIN**
   - Retrieves all properties and their reviews, including properties with no reviews.

3. **FULL OUTER JOIN**
   - Retrieves all users and all bookings, even if there is no matching record between them.
   - A workaround is provided for MySQL (which does not support FULL OUTER JOIN natively).

   ## Subqueries

- Used a subquery to find properties with avg rating > 4.0
- Used a correlated subquery to find users with more than 3 bookings


## Aggregations and Window Functions

### 1. Total Bookings per User
Used the `COUNT` function with `GROUP BY` to find the total number of bookings each user has made.  
Example query counts bookings grouped by user and orders the list by the number of bookings in descending order.

### 2. Rank Properties by Total Bookings
Used the `RANK()` window function to rank properties based on how many bookings they received.  
Properties with the same number of bookings get the same rank, and the list is ordered by rank.
