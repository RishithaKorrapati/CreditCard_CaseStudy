SELECT 
  CASE 
    WHEN pay_0 <= 0 AND pay_2 <= 0 AND pay_3 <= 0 AND pay_4 <= 0 AND pay_5 <= 0 AND pay_6 <= 0 
      THEN 'No Delays (All Months)'
      
    WHEN pay_0 <= 0 AND pay_2 <= 0 AND pay_3 <= 0 AND 
         (pay_4 >= 1 OR pay_5 >= 1 OR pay_6 >= 1)
      THEN 'Old Delays Only (4–6 Months Ago)'
      
    WHEN pay_0 >= 1 OR pay_2 >= 1 OR pay_3 >= 1
      THEN 'Recent Delays (0–2 Months Ago)'
      
    ELSE 'Unclassified / Irregular'
  END AS risk_behavior_group,
  
  default_payment_next_month,
  COUNT(*) AS total_customers

FROM credit_card_default
GROUP BY risk_behavior_group, default_payment_next_month
ORDER BY risk_behavior_group, default_payment_next_month;
