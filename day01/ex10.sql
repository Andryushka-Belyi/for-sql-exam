SELECT per.name AS person_name,
       m.pizza_name,
       piz.name  AS pizzeria_name
FROM person_order po
JOIN menu m       ON m.id = po.menu_id
JOIN pizzeria piz ON piz.id = m.pizzeria_id
JOIN person per   ON per.id = po.person_id
ORDER BY person_name ASC, pizza_name ASC, pizzeria_name ASC;