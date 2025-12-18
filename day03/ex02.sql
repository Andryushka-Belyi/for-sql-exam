SELECT pizza_name, price, p.name AS pizzeria_name
FROM menu m, pizzeria p
WHERE m.id NOT IN (SELECT menu_id
    FROM person_order) AND m.pizzeria_id=p.id
ORDER BY pizza_name, price;
