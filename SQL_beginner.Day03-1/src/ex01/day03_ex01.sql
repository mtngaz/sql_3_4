SELECT m.id AS menu_id
FROM person_order
 FULL JOIN menu m on person_order.menu_id = m.id
WHERE person_order.id is NULL
ORDER BY menu_id;
