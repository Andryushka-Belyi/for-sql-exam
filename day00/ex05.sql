SELECT (SELECT name
    FROM person
    WHERE id=person_id) AS name
FROM person_order
WHERE menu_id=13 AND order_date='2022-01-07';
