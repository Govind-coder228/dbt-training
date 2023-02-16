
select
    -- this is comment 
    o.orderid,
    o.orderdate,
    o.shipdate,
    o.shipmode,
    (o.ordersellipprice - o.ordercostprice) as profit,
    o.ordersellipprice,
    o.ordercostprice,
    --- from raw_customers
    c.customerid,
    c.customername,
    c.segment,
    c.country,
    -- - from raw product
    p.productid,
    p.category,
    p.productname,
    p.subcategory
from {{ ref("raw_orders") }} as o
left join {{ ref("raw_customers") }} as c on o.customerid = c.customerid
left join {{ ref("raw_product") }} as p on o.productid = p.productid
