SELECT name AS pizzeria_name
FROM pizzeria
WHERE id IN (    SELECT pizzeria_id
    FROM person_visits pv, person pe
    WHERE pv.person_id=pe.id AND pe.name='Andrey'
EXCEPT
    SELECT pizzeria_id
    FROM person_order po, person pe
    WHERE po.person_id=pe.id AND pe.name='Andrey')
ORDER BY pizzeria_name;
