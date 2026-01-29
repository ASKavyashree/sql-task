create  table channels(channel_id int primary key,channel_name varchar(30) unique,description varchar(50) not null,subscriber_count int ,check(subscriber_count>0));
desc channels;
insert into channels values(1,'Alans Universe','search and within a 1000-character limit',34);
insert into channels values(2,'memorable','search and within a 1000-character limit',35);
insert into channels values(4,'5-Minute Crafts',' Short, unique, and memorable',35);
insert into channels(channel_id,channel_name,description,subscriber_count) values (3,'generic names','Use keywords related ',78);
select * from channels;

create table subscription(subscription_id int primary key,subscrber_count int check(subscrber_count>0),total_viedo int not null,feedback varchar(20) unique);
desc subscription;
select * from subscription;
insert into subscription values(1,22,12,'good viedo');
insert into subscription values(2,45,2,'fancantancy');
insert into subscription(subscription_id,total_viedo,feedback) values(3,2,'personal touch');
insert into subscription values(4,56,24,'unique word');

drop table likes_table;
create table likes_table(like_id int primary key,like_type enum('like','dislike'),video_name varchar(20) not null,description varchar(20) unique,like_viedo_count int check(like_viedo_count>0));
insert into likes_table values(1,'like','Songs','Kannada songs',23);
insert into likes_table values(2,'dislike','Talent','motivataional song',56);
insert into likes_table(like_id,video_name,like_viedo_count) values(3,'Coding questuion',34);
insert into likes_table(like_id,like_type,video_name) values(4,'like','Motivational viedo');
select * from likes_table;

create table youtube_users(user_id int primary key,username varchar(20) not null,password varchar(10) unique,subscribers_count int check(subscribers_count>0));
insert into youtube_users values(1,'Coding nija','123sdwdd',234);
insert into youtube_users(user_id,username,subscribers_count)values(2,'.net class',3442); 
insert into youtube_users(user_id,username,password)values(3,'.net class','123serdd'); 
insert into youtube_users values(4,'Food monk','123dadnk',34543);

create table playlists(id int primary key,title varchar(20) not null,viedo_count int check(viedo_count>0),description_viedo varchar(20) unique);
insert into playlists values(1,'Fooddy viedos',23,'Spicy and taste');
insert into playlists (id,title,viedo_count) values(2,'full statck',34);
insert into playlists values (3,'Python developer',45,'Full statck details');
insert into playlists values(4,'UCG NET',67,'examnation');