SELECT m1.pizza_name, p1.name AS pizzeria_name_1, p2.name AS pizzeria_name_2, m1.price
FROM menu m1, menu m2, pizzeria p1, pizzeria p2
WHERE m1.pizza_name=m2.pizza_name AND m1.price=m2.price AND m1.pizzeria_id<>m2.pizzeria_id AND p1.id=m1.pizzeria_id AND p2.id=m2.pizzeria_id
ORDER BY m1.pizza_name;
