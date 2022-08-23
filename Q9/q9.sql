USE `order-directory`;
DROP procedure IF EXISTS `StoredProcQ9`;

DELIMITER $$
USE `order-directory`$$
CREATE PROCEDURE `StoredProcQ9` ()
BEGIN
select S.SUPP_id,S.SUPP_Name,R.RAT_RATSTARS, 
case 
when R. RAT_RATSTARS=5 then " Exilent Service"
when R. RAT_RATSTARS>4 then "Good Service "
when R. RAT_RATSTARS >2 then "Avarage sevice"
else "Poor  service "
END  AS TYPE_OF_SERVICE FROM
Supplier S 
inner join Supplier_Pricing sp
on sp.Supp_id=S.Supp_id
inner join `order`O
on O.Pricing_id=sp.Pricing_id
inner join rating R
on R.ORD_id=O.ORD_id ;
END$$
DELIMITER ;
call `StoredProcQ9`();