SELECT DISTINCT m.pizza_name, pz.name AS pizzeria_name
FROM person_order po
JOIN person per ON per.id = po.person_id
JOIN menu m    ON m.id = po.menu_id
JOIN pizzeria pz ON pz.id = m.pizzeria_id
WHERE per.name IN ('Denis', 'Anna')
ORDER BY m.pizza_name, pz.name;