SELECT m.pizza_name, m.price, p.name AS pizzeria_name, pv.visit_date
FROM person_visits pv, menu m, pizzeria p, person pe
WHERE pe.name='Kate' AND pv.person_id=pe.id AND pv.pizzeria_id=m.pizzeria_id AND m.price BETWEEN 800 AND 1000 AND p.id=m.pizzeria_id
ORDER BY m.pizza_name, m.price, p.name;
