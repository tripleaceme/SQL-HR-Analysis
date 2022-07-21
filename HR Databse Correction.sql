use HR;

-- Check employee database
select * from employees;

-- Update the current manager_id to 0 instead of null
update employees 
set manager_id = 0
where manager_id is null;

-- Create a new table to save the managers values
create table managers(
manager_id int primary key auto_increment,
manager_number int not null
);

-- add a new column to the employees table
alter table employees add column new_manager_id int not null default 0;

-- Update the value of the new column to correspond to the id of the managers table
update employees
set new_manager_id =
(
select case 
when manager_id = 0 then 1
when manager_id = 100 then 2
when manager_id = 102 then 3
when manager_id = 103 then 4
when manager_id = 101 then 5
when manager_id = 108 then 6
when manager_id = 114 then 7
when manager_id = 120 then 8
when manager_id = 123 then 9
when manager_id = 201 then 10
when manager_id = 205 then 11 end manager_id);

-- Cross check the values to be sure it went well
select * from managers;
select * from employees;

-- Drop the hold manager_id and renew the new one to manager_id
alter table employees 
drop column manager_id,
rename column new_manager_id to manager_id;

-- Adding Foreign key to the employees table
alter table employees
add foreign key(manager_id) references managers(manager_id) on delete cascade on update cascade;

