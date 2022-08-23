/*6)	Find the least expensive product from each category and print the table with category id, name, product name and price of the product*/
use `order-directory`;
select C.Cat_Id,C.CAT_Name,P.Pro_name from 
 Category  C 
inner join product P
on C.CAT_ID=P.CAT_ID
inner join supplier_pricing Sp 
on Sp.Pro_id=P.Pro_id 
inner join `order`O
on O.pricing_id=Sp.Pricing_id 
group by P.Pro_Name order by O.ORD_AMOUNT limit 5;

