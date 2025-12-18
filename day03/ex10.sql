INSERT INTO person_order
    (id, person_id, menu_id, order_date)
SELECT MAX(id)+1, pe.id, m.id, '2022-02-24'
FROM person pe, menu m
WHERE pe.name IN ('Denis','Irina') AND m.pizza_name='sicilian pizza';
