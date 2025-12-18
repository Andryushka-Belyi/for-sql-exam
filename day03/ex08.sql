INSERT INTO menu
    (id, pizza_name, price, pizzeria_id)
SELECT MAX(id)+1, 'sicilian pizza', 900, id
FROM pizzeria
WHERE name='Dominos';
