    SELECT name AS pizzeria_name
    FROM pizzeria
    WHERE id IN (        SELECT pizzeria_id
        FROM person_order po, person pe
        WHERE po.person_id=pe.id AND pe.gender='female'
    EXCEPT
        SELECT pizzeria_id
        FROM person_order po, person pe
        WHERE po.person_id=pe.id AND pe.gender='male')
UNION
    SELECT name AS pizzeria_name
    FROM pizzeria
    WHERE id IN (        SELECT pizzeria_id
        FROM person_order po, person pe
        WHERE po.person_id=pe.id AND pe.gender='male'
    EXCEPT
        SELECT pizzeria_id
        FROM person_order po, person pe
        WHERE po.person_id=pe.id AND pe.gender='female')
ORDER BY pizzeria_name;
