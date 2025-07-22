SELECT 
  CASE 
    WHEN age < 25 THEN '20–24'
    WHEN age BETWEEN 25 AND 30 THEN '25–30'
    WHEN age BETWEEN 31 AND 40 THEN '31–40'
    WHEN age BETWEEN 41 AND 50 THEN '41–50'
    ELSE '50+'
  END AS age_group,
  CASE
  WHEN sex = 1 THEN 'MALE'
  ELSE 'FEMALE'
  END AS Gender,
  COUNT(*) AS total_customers
FROM credit_card_default
GROUP BY age_group, sex
ORDER BY total_customers DESC
