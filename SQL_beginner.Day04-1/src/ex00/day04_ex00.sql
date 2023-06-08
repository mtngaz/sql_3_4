CREATE TABLE v_persons_female AS
SELECT *
FROM person
WHERE person.gender = 'female';

CREATE TABLE v_persons_male AS
SELECT *
FROM person
WHERE person.gender = 'male';