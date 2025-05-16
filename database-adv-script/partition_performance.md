### Partitioning Report

**Initial Issue:**  
The `bookings` table had poor performance for date range queries due to sequential scans on a large dataset.

**Partitioning Strategy:**  
Partitioned `bookings` by `start_date` using `RANGE` partitioning. Created partitions per year.

**Query Used for Testing:**  
```sql
EXPLAIN
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';
