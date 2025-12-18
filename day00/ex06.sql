SELECT (SELECT name
    FROM person
    WHERE id=person_id) AS name, CASE WHEN (SELECT name
    FROM person
    WHERE id=person_id)='Denis' THEN TRUE ELSE FALSE END AS check_name
FROM person_order
WHERE menu_id=13 AND order_date='2022-01-07';
