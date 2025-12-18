SELECT name AS pizzeria_name
FROM pizzeria
WHERE (SELECT COUNT(*)
    FROM person_visits pv, person pe
    WHERE pv.pizzeria_id=pizzeria.id AND pv.person_id=pe.id AND pe.gender='female') > (SELECT COUNT(*)
    FROM person_visits pv, person pe
    WHERE pv.pizzeria_id=pizzeria.id AND pv.person_id=pe.id AND pe.gender='male') OR (SELECT COUNT(*)
    FROM person_visits pv, person pe
    WHERE pv.pizzeria_id=pizzeria.id AND pv.person_id=pe.id AND pe.gender='male') > (SELECT COUNT(*)
    FROM person_visits pv, person pe
    WHERE pv.pizzeria_id=pizzeria.id AND pv.person_id=pe.id AND pe.gender='female')
ORDER BY pizzeria_name;
