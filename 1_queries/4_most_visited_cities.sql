SELECT properties.city as name, count(reservations) as total_reservations
FROM properties
JOIN reservations ON properties.id = property_id
GROUP BY name
ORDER BY total_reservations DESC;