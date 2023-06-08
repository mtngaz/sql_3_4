CREATE TABLE  v_symmetric_union AS
WITH R AS (
    SELECT person_id FROM person_visits WHERE person_visits.visit_date = '2022-01-02'
), S as (
     SELECT person_id FROM person_visits WHERE person_visits.visit_date = '2022-01-06'
)

(SELECT *
FROM R
EXCEPT
SELECT * FROM S)
UNION ALL
(SELECT * FROM S
EXCEPT
SELECT * FROM R);