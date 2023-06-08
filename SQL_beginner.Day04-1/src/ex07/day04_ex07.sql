INSERT INTO person_visits
VALUES ((SELECT max(id) + 1 FROM person_visits),
        (SELECT id FROM person WHERE name = 'Dmitriy'),
        3, '2022-01-08');


REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;