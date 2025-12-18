WITH days AS (
  SELECT generate_series(DATE '2022-01-01', DATE '2022-01-10', INTERVAL '1 day')::date AS missing_date
)
SELECT d.missing_date
FROM days d
LEFT JOIN person_visits pv1 ON pv1.visit_date = d.missing_date AND pv1.person_id = 1
LEFT JOIN person_visits pv2 ON pv2.visit_date = d.missing_date AND pv2.person_id = 2
WHERE pv1.id IS NULL AND pv2.id IS NULL
ORDER BY d.missing_date ASC;