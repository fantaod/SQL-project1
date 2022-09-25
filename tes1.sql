SELECT  
  date(date_trunc(created_at, month)) as Order_Month,
  count(distinct user_id) as Total_User,
  count(distinct order_id) as Total_Order

FROM `bigquery-public-data.thelook_ecommerce.orders` 
WHERE status = 'Complete'
GROUP BY 1
ORDER BY 1
