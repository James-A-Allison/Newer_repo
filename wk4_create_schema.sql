create table companys(
company_id number,
company_name varchar2(12),
company_address varchar2(100),
company_phone number(10),
company_email varchar2(36));

create table departments(
department_id number,
department_name varchar2(12),
department_phone number(10),
company_id number);

create table customers(
customer_id number,
customer_name varchar2(12),
customer_address varchar2(30),
customer_phone number(10),
customer_email varchar2(30),
project_id number);

create table projects(
project_id number,
project_name varchar2(12),
project_budget number(10),
project_start_date date,
project_finish_date date,
customer_id number,
employee_id number);

create table employees(
employee_id number,
employee_name varchar2(12),
employee_mobile number(10),
employee_address varchar2(100),
employee_salary number(10),
employee_hire_date date,
department_id number,
project_id number);

alter table employees add constraint employee_pk primary key(employee_id);
alter table customers add constraint customer_pk primary key(customer_id);
alter table projects add constraint project_pk primary key(project_id);
alter table companys add constraint company_pk primary key(company_id);
alter table departments add constraint department_pk primary key(department_id);


alter table departments add constraint company_id_fk foreign key(department_id) references company(company_id);
alter table projects add constraint customer_id_fk foreign key(customer_id) references customers(customer_id);
alter table employees add constraint department_id_fk foreign key(department_id) references departments(department_id);
alter table employees add constraint project_id_fk foreign key(project_id) references projects(project_id);
alter table projects add constraint employee_id_fk foreign key(employee_id) references employees(employee_id);
