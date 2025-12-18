SELECT DISTINCT piz.name
FROM person_visits pv
JOIN person pr   ON pr.id = pv.person_id
JOIN pizzeria piz ON piz.id = pv.pizzeria_id
JOIN menu m      ON m.pizzeria_id = piz.id
WHERE pr.name = 'Dmitriy'
  AND pv.visit_date = DATE '2022-01-08'
  AND m.price < 800;