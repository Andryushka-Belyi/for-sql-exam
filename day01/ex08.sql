SELECT order_date,
       CONCAT(name, ' (age:', age, ')') AS person_information
FROM person_order
JOIN (
  SELECT id AS person_id, name, age
  FROM person
) person ON person_order.person_id = person.person_id
ORDER BY order_date ASC, person_information ASC;