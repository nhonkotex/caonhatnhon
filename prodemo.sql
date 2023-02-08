DELIMITER $$
CREATE PROCEDURE Pro_Demo()
BEGIN 
CREATE VIEW view_Demo AS 
select r.region_name,c.country_name,l.street_address,l.postal_code, l.city,l.state_province 
from regions r join countries c on r.region_id=c.region_id 
join locations l on c.country_id=l.country_id; 
select * from view_Demo;
end; 
call Pro_Demo;
-- tạo 1 thủ túc trên pro_salary : dể xét thưởng cuối năm như sau 
-- nếu như nv làm >9 thì thưởng 12tr/ >6 thưởng 8tr/ >4 thưởng 6 / còn lại 5tr


