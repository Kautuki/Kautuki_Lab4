#4)	Display all the orders along with product name ordered by a customer having Customer_Id=2

select cus_name,pro_name,ord_id,ord_date
from product as p,supplier_pricing as sp,
`order` as ord,customer as cus
where
cus.cus_id=2 and
cus.cus_id=ord.cus_id and
p.pro_id=sp.pro_id and
ord.pricing_id=sp.pricing_id;