INSERT INTO person_visits
    (id, person_id, pizzeria_id, visit_date)
SELECT MAX(id)+1, id, (SELECT id
    FROM pizzeria
    WHERE name='Dominos'), '2022-02-24'
FROM person
WHERE name IN ('Denis','Irina');
