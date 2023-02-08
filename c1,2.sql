-- câu 1: tạo một pro_Search_Name(Fistname)
-- sau đó cho hiển thị toàn bộ thông tin của nhân viên đó
-- trong đó nối Fullname Firstname+ Lastname
DELIMITER $$
create procedure pro_search_name (IN firstname varchar(20))
begin
	select employee_id,concat(first_name,' ',last_name) as fullname, email, phone_number, hire_date,
	job_id,salary,manager_id,department_id from employees where first_name like concat('%',firstname,'%');
end;$$
call pro_search_name('steven')

-- câu 2: tạo một thủ tục có tên proc_Salary để xét thưởng cuối năm như sau 
-- nếu nhân viên làm trên: >= 9 thưởng lương 12tr
-- nếu làm trên 6 năm thưởng 8 tr
-- nếu làm trên 4 năm thưởng 6 tr 
-- còn lại thưởng 5 tr
DELIMITER $$
create procedure pro_salary ()
begin
	select employee_id,hire_date,TIMESTAMPDIFF(year,hire_date, now()) as year_work, salary,
case
	when TIMESTAMPDIFF(year,hire_date, now())>=9 then salary+12000
    when TIMESTAMPDIFF(year,hire_date, now())>6 then salary+8000
    when TIMESTAMPDIFF(year,hire_date, now())>4 then salary+6000
    else salary+5000
end as bonus
from employees;
end;$$
call pro_salary

