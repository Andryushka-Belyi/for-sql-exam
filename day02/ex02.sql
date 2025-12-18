WITH days AS (
  SELECT generate_series(DATE '2022-01-01', DATE '2022-01-03', INTERVAL '1 day')::date AS d
),
visits AS (
  SELECT per.name   AS person_name,
         pv.visit_date,
         piz.name   AS pizzeria_name
  FROM person_visits pv
  JOIN person per   ON per.id = pv.person_id
  JOIN pizzeria piz ON piz.id = pv.pizzeria_id
  WHERE pv.visit_date BETWEEN DATE '2022-01-01' AND DATE '2022-01-03'
),
all_persons AS (SELECT name AS person_name FROM person),
all_pizzerias AS (SELECT name AS pizzeria_name FROM pizzeria),
persons_with_visits AS (
  SELECT ap.person_name, v.visit_date, v.pizzeria_name
  FROM all_persons ap
  LEFT JOIN visits v ON v.person_name = ap.person_name
),
combined AS (
  SELECT COALESCE(pwv.person_name, '-') AS person_name,
         pwv.visit_date,
         COALESCE(pwv.pizzeria_name, '-') AS pizzeria_name
  FROM persons_with_visits pwv
  FULL JOIN all_pizzerias apz ON pwv.pizzeria_name = apz.pizzeria_name
)
SELECT person_name,
       visit_date,
       pizzeria_name
FROM combined
ORDER BY person_name NULLS LAST, visit_date NULLS LAST, pizzeria_name;