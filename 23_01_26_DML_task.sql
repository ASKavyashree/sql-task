use youtube_db;
desc person;
create table person(id int,fname varchar(20),lname varchar(30),address longText,dob date);
insert into person values(1,'Kavya','Shree','Arinaganahalli(v)','2003-11-22');
insert into person (id,fname,lname)values(2,'Madhu','Shree');
insert into person values (3,'Sindhu','Nerlige','Nelige','1999-11-30'),(4,'Arun','Kumar','Srinivaspura','2000-11-03'),(5,'Anand','Hadapa','Baglakote','2001-11-11');
select * from person;
insert into person(id,fname,address)values(5,'ABC','Bangalore'),(6,'DEF','Tumkur'),(7,'GHI','Kolar');

create table caption(id int,video_id int,languages varchar(20),content longtext);
insert into caption values(1,1,'Kannada','Comdey viedo');
insert into caption(id,languages,content) values(3,'English','Motivational viedo');
insert into caption values(4,2,'Hindi','Songs'),(5,3,'Kannada','songs'),(6,4,'English','motivational speech');
insert into caption(id,video_id,languages)values(7,5,'Kannada'),(8,6,'Tamil'),(9,7,'Malayam');
select * from caption;

alter table person rename column fname to firstName, rename column lname to lastName;
alter table person modify column firstName varchar(30);
alter table person add column city varchar(20);
alter table person drop city;
desc person;

insert into long_videos values(1,'talent & practice','2026-09-12 10:00:07','2003-09-21 23:00:00',56.7,'quality','yes','motivational speech');
insert into long_videos(id,title,duration,views) values (2,'Kannada songs','2024-07-12 23:53:00',345.7),(3,'Hindi songs','2021-08-25',67.4),(4,'Gujarti','2021-09-21',354.7);
insert into long_videos values(5,'Motivational video','2026-09-12 10:00:07','2003-09-21 23:00:00',56.7,'quality','yes','motivational speech'),(6,'Java course','2026-09-12 10:00:07','2003-09-21 23:00:00',56.7,'quality','yes','motivational speech');
select * from long_videos;
desc account_details;

insert into account_details values(1,'SVV Channel',23.4,'This will contain the film songs','Song','in');
insert into account_details(id,account_name,subscriber,category) values(2,'Kannada Music',34.5,'Song');
insert into account_details values(3,'SVV Channel',23.4,'This will contain the film songs','Song','in'),(4,'SVV Channel',23.4,'This will contain the film songs','Song','in'),(6,'SVV Channel',23.4,'This will contain the film songs','Song','in');
insert into account_details(id,account_name,subscriber,category) values(7,'Kannada Music',34.5,'Song'),(8,'Comdey Series',45.6,'Comdey');
select *  from account_details;