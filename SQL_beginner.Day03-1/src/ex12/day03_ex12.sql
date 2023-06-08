INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT generate_series((SELECT MAX(id) + 1 FROM person_order),
                       (SELECT MAX(id) + count FROM person_order), 1) AS id,
    generate_series(1, (SELECT MAX(id)
                         FROM person)), (SELECT id
                                         FROM menu
                                         WHERE menu.pizza_name = 'greek pizza'), TIMESTAMP '2022-02-25'::date
FROM (SELECT count(*) AS count FROM person) AS subquery;