select
  PRODUCTID,
  productname, 
  category, 
  subcategory, 
  sum(profit) as profit
from {{ ref("stg_orders") }}
group by 
   1, 2, 3,4
