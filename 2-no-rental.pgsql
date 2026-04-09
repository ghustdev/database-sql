-- Exercise 2 - No Rental

-- CREATE TABLE locations (
    -- id SERIAL PRIMARY KEY,
    -- locations_date DATE NOT NULL,
    -- id_customers INT NOT NULL,
    -- FOREIGN KEY (id_customers) REFERENCES customers(id)
-- );

-- Subquerys
SELECT id, name 
FROM customers 
WHERE id NOT IN (
    SELECT id_customers FROM locations WHERE id_customers IS NOT NULL
)
ORDER BY id;


-- Left Join
SELECT c.id, c.name 
FROM customers AS c
LEFT JOIN locations AS l ON c.id = l.id_customers
WHERE l.id_customers IS NULL
ORDER BY c.id;