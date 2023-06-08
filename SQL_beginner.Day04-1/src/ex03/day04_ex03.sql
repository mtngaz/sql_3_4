SELECT generated_date AS missing_date
FROM person_visits
         FULL JOIN v_generated_dates vgd ON vgd.generated_date = person_visits.visit_date
WHERE id IS NULL
ORDER BY 1;