SELECT pizza_name, price, name AS pizzeria_name, visit_date
FROM person_visits
    JOIN (SELECT person.id
          FROM person
          WHERE person.name = 'Kate') p ON p.id = person_visits.person_id
    JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
    JOIN menu m on pizzeria.id = m.pizzeria_id
WHERE price BETWEEN 800 AND 1000
ORDER BY pizza_name, price, pizzeria_name;