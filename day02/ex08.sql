SELECT DISTINCT per.name
FROM person per
JOIN person_order po ON po.person_id = per.id
JOIN menu m          ON m.id = po.menu_id
WHERE per.gender = 'male'
  AND (per.address = 'Moscow' OR per.address = 'Samara')
  AND m.pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY per.name DESC;