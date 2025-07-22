SELECT 
  CASE 
    WHEN education = 1 THEN 'graduate school'
    WHEN education = 2 THEN 'university'
    WHEN education = 3 THEN 'high school'
    ELSE 'others'
  END AS Education,

  CASE
    WHEN sex = 1 THEN 'MALE'
    ELSE 'FEMALE'
  END AS Gender,

  default_payment_next_month,
  COUNT(*) AS num_customers

FROM credit_card_default
WHERE default_payment_next_month = 0
GROUP BY Education, Gender, default_payment_next_month
ORDER BY num_customers DESC;
