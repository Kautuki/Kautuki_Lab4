#7)	Display the Id and Name of the Product ordered after “2021-10-05”.

select prod.pro_id,prod.pro_name
from `order` as ord
inner join supplier_pricing as sp
on sp.PRICING_ID=ord.PRICING_ID
inner join product as prod 
on prod.pro_id=sp.pro_id where ord.ord_date > '2021-10-05'