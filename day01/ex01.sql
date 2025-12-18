SELECT object_name
FROM (
  SELECT name AS object_name, 1 AS ord FROM person
  UNION ALL
  SELECT pizza_name AS object_name, 2 AS ord FROM menu
) t
ORDER BY ord, object_name;
