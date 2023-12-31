select b.product_id, round(sum(a.price * b.units)/sum(b.units),2) as average_price 
  from prices a left join  unitssold b on a.product_id =b.product_id 
  where b.purchase_date between a.start_date and  a.end_date 
  group by b.product_id
