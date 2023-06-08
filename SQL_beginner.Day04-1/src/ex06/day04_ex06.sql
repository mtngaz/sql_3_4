CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT pz.name AS pizzeria_name
FROM person
         JOIN person_visits pv ON person.id = pv.person_id
         JOIN pizzeria pz ON pz.id = pv.pizzeria_id
         JOIN menu m ON m.pizzeria_id = pv.pizzeria_id
WHERE person.name = 'Dmitriy'
  AND pv.visit_date = '2022-01-08'
  AND m.price < 800;
