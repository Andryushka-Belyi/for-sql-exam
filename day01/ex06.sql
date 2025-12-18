WITH common AS (
  SELECT order_date AS action_date, person_id
  FROM person_order
  INTERSECT
  SELECT visit_date AS action_date, person_id
  FROM person_visits
)
SELECT c.action_date,
       pr.name AS person_name
FROM common c
JOIN person pr ON pr.id = c.person_id
ORDER BY c.action_date ASC, person_name DESC;