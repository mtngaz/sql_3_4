CREATE TABLE v_price_with_discount AS (
    SELECT name, m.pizza_name, m.price AS price, m2.price AS discount_price
    FROM person_order AS sale_price
    JOIN menu m ON sale_price.menu_id = m.id
    JOIN person p ON sale_price.person_id = p.id
    JOIN menu m2 ON m2.id = sale_price.menu_id
    ORDER BY 1, 2
);

UPDATE v_price_with_discount
SET discount_price = ROUND(price - price * 0.1)
WHERE price > 10;