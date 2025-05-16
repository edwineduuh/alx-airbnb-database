
CREATE TABLE bookings_partitioned (
  id SERIAL PRIMARY KEY,
  user_id INT,
  property_id INT,
  start_date DATE NOT NULL,
  end_date DATE,
  payment_id INT
) PARTITION BY RANGE (start_date);

CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
  FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
  FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

EXPLAIN
SELECT *
FROM bookings_partitioned
WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';
