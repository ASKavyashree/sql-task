create  table channels(channel_id int primary key,channel_name varchar(30) unique,description varchar(50) not null,subscriber_count int ,check(subscriber_count>0));
select * from channels;
create table user_info(id int primary key,name varchar(20),views int,channel_id int,foreign key(channel_id) references channels(channel_id));
desc user_info;
select * from user_info;
insert into user_info values(1,"Virat",345,1);
insert into user_info values(2,"Dhoni",54,2);
insert into user_info values(3,"Rohit",45,1);

update user_info set channel_id=1 where name="Virat";
update channels set channel_id=6 where channel_name="Alans Univers"; 

alter table shorts_video add constraint title unique(title);
alter table shorts_video modify id int primary key;
alter table shorts_video add channel_id int;
alter table shorts_video add constraint channel_id foreign key (channel_id) references channels(channel_id);
alter table shorts_video modify likes double default '34';
alter table shorts_video add  short_name varchar(20);
alter table shorts_video modify short_name varchar(20) not null;
select  * from shorts_video;
insert into shorts_video values(1,"Good Vibes",45.7,"2026-12-1 02:30:00","2024-03-23",'Horror',56,"Nice",1,"Vibes");

create table caption(id int,video_id int,languages varchar(20),content longtext);
 
alter table caption modify id int primary key;
alter table caption add column shorts_id int ; 
alter table caption add constraint shorts_id foreign key (shorts_id) references shorts_video(id);
alter table caption modify languages varchar(20) not null;
alter table caption add constraint video_id unique(video_id);
select * from caption;
desc caption;
insert into caption values(10,12,"Kannada","very nice",1); 
insert into caption values(11,22,"Kann","very good",1); 
update caption set shorts_id=1 where languages="Hindi";

create table long_videos(id int, title varchar(30),duration timestamp,postdate datetime,views float,settings set('quality','sleep timer','substile'),theater_mode enum('yes','No')); 
desc long_videos;
select * from long_videos;
alter table long_videos modify id int primary key;
alter table long_videos add column caption_id int ;
alter table long_videos add constraint caption_id foreign key(caption_id) references caption(id);
alter table long_videos add constraint title unique(title);
alter table long_videos modify views float default '6.7';
alter table long_videos modify views float not null;
insert into long_videos values(7,"python course",'2024-08-21 23:34:00','2023-08-11 21:05:00', 90.7,'quality,sleep timer','yes','comdey',1);
update long_videos set caption_id=1 where title='.net course';

create table person(id int,fname varchar(20),lname varchar(30),address longText,dob date);
desc person;
select * from person;
alter table person modify id int primary key;
delete from person where id=5;
alter table person add column long_id int ;
alter table person add constraint long_id foreign key(long_id) references long_videos(id); 
alter table person add constraint dob unique(dob);
alter table person modify firstName varchar(20) not null;
insert into person values(8,"Sindhu","Nerlige","Nerlige",'2002-11-30',1);

create table Notifications4( cnotification_id int primary key,notification_type ENUM('NewVideo','CommentReply','LiveStream','Subscription'), priority SET('Low','Medium','High'),message TEXT,sent_at TIMESTAMP,person_id int,foreign key (person_id) references person(id));
alter table Notifications4 modify notification_type ENUM('NewVideo','CommentReply','LiveStream','Subscription') not null;
desc  Notifications4;
alter table Notifications4 add constraint  priority unique(priority);
insert into Notifications4 values(1,'NewVideo','Low','ajmsjdgjassdjaj','2023-11-9 07:12:00',1);
update Notifications4 set person_id=1 where notification_type="LiveStream";