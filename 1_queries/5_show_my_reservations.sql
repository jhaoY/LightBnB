SELECT reservations.id as id, properties.title as title, properties.cost_per_night as cost_per_night, reservations.start_date as start_date, avg(property_reviews.rating) as average_rating
FROM reservations
JOIN properties ON properties.id = property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, title, cost_per_night
ORDER BY reservations.start_date ASC
LIMIT 10;