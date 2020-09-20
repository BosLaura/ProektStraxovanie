create schema InsuranceCompany_db;

set search_path=InsuranceCompany_db, insurance_company_db;

create table insurance_company(
    insurance_company_id serial primary key,
    name_of_insurance_company varchar(100) not null
);

create table customer(
    customer_id serial primary key,
    first_name_nm varchar(50),
    middle_name_nm varchar(50),
    last_name_nm varchar(50),
    address_txt varchar(100),
    property_nm varchar(100),
    contract_id INTEGER
);

create table employee(
    employee_id serial primary key,
    name_nm varchar(50),
    date_of_birth date,
    position_nm varchar(50),
    work_experience_amt DECIMAL(12,2),
    phone_no varchar(15) check ( phone_no like '+7__________' ),
    address_txt varchar(100),
    insurance_company INTEGER,
    foreign key (insurance_company) references insurance_company(insurance_company_id)
);

create table compensation_for_damage(
    appeal_id serial primary key,
    contract_id INTEGER,
    insurance_company_id INTEGER,
    sum_of_compensation_amt DECIMAL(12,2),
    reason_for_appeal_nm varchar(50),
    date_of_appeal_dt date,
    date_of_compensation date,
    foreign key(insurance_company_id) references insurance_company(insurance_company_id)
);

create table service(
  service_id serial primary key,
  name_nm varchar(100) not null,
  price_amt DECIMAL(12,2),
  service_term_dt date,
  insurance_company INTEGER,
  foreign key (insurance_company) references insurance_company(insurance_company_id)
);

create table contract(
    contract_id INTEGER,
    customer_id INTEGER,
    employee_id INTEGER,
    service_id INTEGER,
    price_amt DECIMAL(12,2),
    start_date_dt date,
    foreign key (customer_id) references customer(customer_id),
    foreign key (employee_id) references employee(employee_id),
    foreign key (service_id) references service(service_id),
    constraint PK_contract primary key(contract_id, customer_id, employee_id,  service_id)
);

