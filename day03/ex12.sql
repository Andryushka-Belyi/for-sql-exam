INSERT INTO person_order
    (id, person_id, menu_id, order_date)
SELECT MAX(id)+1, pe.id, m.id, '2022-02-25'
FROM person pe, menu m
WHERE m.pizza_name='greek pizza';
