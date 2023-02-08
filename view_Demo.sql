CREATE VIEW view_Demo AS 
select r.region_name,c.country_name,l.street_address,l.postal_code, l.city,l.state_province 
from regions r join countries c on r.region_id=c.region_id 
join locations l on c.country_id=l.country_id; 
select * from view_Demo