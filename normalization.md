# ✅ Database Normalization

This document outlines the normalization process for the **alx-airbnb-database**, aiming to bring all tables to **Third Normal Form (3NF)**.

---

## 🔹 First Normal Form (1NF)

- Ensured atomicity by separating fields like `location` into `city` and `country`.
- Removed repeating groups.

## 🔹 Second Normal Form (2NF)

- Ensured all non-key attributes depend on the entire primary key.
- Since all tables use surrogate keys (e.g., `id`), partial dependencies were not present.

## 🔹 Third Normal Form (3NF)

- Removed transitive dependencies:
  - `host_email` was moved from the `Property` table to a new `Host` table.
  - Payment details were separated into a `Payment` table linked to `Booking`.

---

## ✅ Final Tables

- **User**: `id`, `name`, `email`
- **Host**: `id`, `name`, `email`
- **Property**: `id`, `name`, `city`, `country`, `host_id`
- **Booking**: `id`, `user_id`, `property_id`, `booking_date`, `payment_id`
- **Payment**: `id`, `amount`, `payment_date`

---

This structure ensures minimal redundancy and improves data integrity across the system.
