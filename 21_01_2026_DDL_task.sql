create database youtube_db;
use youtube_db;
create table shorts_video(id int,title varchar(30),likes double,duration timestamp, postdate datetime,category set('Comdey','Horror','Mootivational'));
desc shorts_video;
rename table shorts_video to short_viedo;
rename table short_viedo to shorts_video;
drop table shorts_video;
alter table shorts_video add column viedo_likes varchar(30);

create table long_video(id int, title varchar(30),duration timestamp,postdate datetime,views float,settings set('quality','sleep timer','substile'),theater_mode enum('yes','No')); 
desc long_videos;
rename table long_video to long_videos; 
drop table long_videos;
alter table long_videos add column category set('comdey','movies','songs','motivational speech');

create table account(id int,account_name varchar(20),subscribers float,viedos int,decrisption varchar(50),category set('Song','Comdey','emotional_viedo','horror'));
desc account_details;
rename table account to account_details; 
drop table account;
alter table account_details add column sign_in_account enum('in','out');