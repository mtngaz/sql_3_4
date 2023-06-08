WITH menu_1 AS (SELECT *
                FROM menu
                         JOIN pizzeria p on menu.pizzeria_id = p.id)

SELECT m.pizza_name,
       m.name      AS pizzeria_name_1,
       menu_1.name AS pizzeria_name_2,
       m.price

FROM (SELECT * FROM menu_1) AS m
         JOIN menu_1
              ON m.price = menu_1.price
                  AND m.pizza_name = menu_1.pizza_name
                  AND m.pizzeria_id > menu_1.pizzeria_id
ORDER BY pizza_name;