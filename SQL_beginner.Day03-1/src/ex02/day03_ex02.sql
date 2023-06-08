SELECT pizza_name, m.price, pizzeria.name AS pizzeria_name
FROM person_order
 FULL JOIN menu m ON person_order.menu_id = m.id
 FULL JOIN pizzeria ON m.pizzeria_id = pizzeria.id
WHERE person_order.id is NULL
ORDER BY pizza_name, m.price;