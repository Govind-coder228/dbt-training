with orders 
as
(
  select * from {{ ref('raw_orders') }}

)

select Orderid,
       sum(ordersellipprice) as total_sp
       from  orders
       group by 1
       having total_sp < 1