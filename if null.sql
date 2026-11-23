use company_db;
-- maximum salary
select first_name,salary from employees
where salary=(select max(salary) from employees);
-- 
select first_name,salary,hire_date from employees
where hire_date=(select min(hire_date) from employees);

select first_name ,salary from employees where salary<(select avg(salary) from employees);
select avg(salary) from employees;

select first_name,salary from employees where first_name='anita';
select first_name,salary from employees where salary > (select salary from employees where first_name='anita');

select * from departments;
select department_id from employees where first_name='rohit';
select first_name from employees where department_id= (select department_id from employees where first_name='rohit');

select first_name,salary-(select avg(salary) from employees) from employees;

select * from monthly_sales;
select avg(amount) from monthly_sales;
select sale_id,employee_id,sale_month,amount from monthly_sales where amount>(select avg(amount) from monthly_sales);

select * from departments;
select * from employees;
select department_id from departments where location='kochi';
select first_name,department_id,city from employees where department_id in(select department_id from departments where location='kochi');

select * from monthly_sales;
select avg( salary)from employees;
select first_name,salary
from employees  where salary>(select avg(salary) as Avg_salary from employees);

select max(hire_date) from employees;
select first_name,hire_date from employees
where hire_date= (select max(hire_date) from employees);

select city from employees where first_name='priya';
select first_name, city from employees 
where city =(select city from employees where first_name='priya');
select * from departments;
select  department_id from departments where location='kochi';
select first_name,department_id from employees
where department_id in(10,60);

select * from monthly_sales;
select * from employees;
select  employee_id from monthly_sales;
select first_name from employees where employee_id in (select  employee_id from monthly_sales);

select department_name from departments 
where department_id not in (select department_id from employees
where department_id is not null);

select* from employees;
select manager_id from employees;
select first_name,manager_id from employees
where manager_id not in (select manager_id from employees);

select manager_id from employees;
select first_name,manager_id from employees
where employee_id not in (select manager_id from employees where manager_id is not null);

select department_id from departments where department_name='hr';
select first_name,salary from employees where department_id= (select department_id from departments where department_name='hr');

select first_name,salary from employees where salary>any
(select department_id from departments where department_name='hr');

select first_name,salary from employees where salary>all
(select department_id from departments where department_name='hr');

select department_id from employees where salary>100000;
select department_name from departments where department_id in (select department_id from employees where salary>100000);


