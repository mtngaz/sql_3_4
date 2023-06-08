WITH female AS (SELECT pizzeria.name FROM person_order JOIN  menu ON menu.id = person_order.menu_id
		   JOIN pizzeria ON pizzeria.id = menu.pizzeria_id JOIN person ON person.id = person_order.person_id
			  WHERE person.gender= 'female'),
	male  AS (SELECT pizzeria.name FROM person_order JOIN  menu ON menu.id = person_order.menu_id
		   JOIN pizzeria ON pizzeria.id = menu.pizzeria_id JOIN person ON person.id = person_order.person_id
			  WHERE person.gender= 'male'),
	person_1 AS (SELECT * FROM female EXCEPT SELECT * FROM male),
	person_2 AS (SELECT * FROM male EXCEPT SELECT * FROM female)
SELECT * FROM person_1 UNION SELECT * FROM person_2
ORDER BY 1;