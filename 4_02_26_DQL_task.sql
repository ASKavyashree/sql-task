create database mart;
create table dmart(id int primary key,product_name varchar(30) not null,price int not null,expiry_date date);
insert into dmart values(1,"Milk",28,'2026-02-5'),(2,"maggi",15,'2026-02-5'),(3,"sugar",35,'2026-02-5'),(4,"Salt",20,'2026-02-5'),(5,"coffee powder",40,'2026-02-5'),(6,"Cholocate",100,'2027-04-6'),(7,"jaggery",58,'2027-07-3'),(8,"Pen",10,'2027-04-7'),(9,"Biscuit",10,'2028-02-5'),(10,"Lays",10,'2026-02-5');
select * from dmart;

create table customer(id int primary key,customer_name varchar(30),product_name varchar(20) not null,total_bill int not null,phone_number bigint);
insert into customer values(1,"ram","Milk",50,3456789245),(2,"raj","Salt",20,7866789245),(3,"manu","sugar",60,3456685245),(4,"arun","Coffee",50,3456789245),(5,"ananda","jaggery",80,3456776245),(6,"sindhu","Lays",50,3459889245),(7,"madhu","Biscuit",20,8267689245),(8,"Mahesh","Pen",10,3468789245),(9,"Deepu","jaggery",150,3456789245),(10,"chethu","pen",30,34569763245);
select  * from customer;