Create table user_personal(userid varchar(50),u_email varchar(50),fname varchar(50),lname varchar(50),
city varchar(50),state varchar(50),zip number(11);
insert into user_personal(userid,u_email,fname,lname,city,state,zip) values('MA12','alex@gmail.com','Alex','jones','Hoyton','texas',75001);
insert into user_personal(userid,u_email,fname,lname,city,state,zip) values('PO45','emma.jhon@gmail.com','Emma','Stone','Albany','New York',10008);
insert into user_personal(userid,u_email,fname,lname,city,state,zip) values('LA33','victor@gmail.com','victoria','Aorora','Istanbul','Turkey',34000);
insert into user_personal(userid,u_email,fname,lname,city,state,zip) values('CH99','joe.197@gmail.com','joe','johnson','Los Angales','California',90201);
insert into user_personal(userid,u_email,fname,lname,city,state,zip) values('PA74','dlany@gmail.com','Dany','Willam','Miami','Florida',32006);

-----2F----------
create table zip(
zip number(11)primary key,
city varchar(50)not null,
state varchar(50)not null
);

create table userInfo(
userid varchar(11)primary key,
u_email varchar(50)not null,
fname varchar(50)not null,
lname varchar(50)not null,
zip number(11)not null,
constraint zip_fk foreign key(zip) references zip(zip)
);
insert into userinfo(userid,u_email,fname,lname,zip) values('MA12','alex@gmail.com','Alex','jones',75001);
insert into userinfo(userid,u_email,fname,lname,zip) values('PO45','emma.jhon@gmail.com','Emma','Stone',10008);
insert into userinfo(userid,u_email,fname,lname,zip) values('LA33','victor@gmail.com','victoria','Aorora',34000);
insert into userinfo(userid,u_email,fname,lname,zip) values('CH99','joe.197@gmail.com','joe','johnson',90201);
insert into userinfo(userid,u_email,fname,lname,zip) values('PA74','dlany@gmail.com','Dany','Willam',32006);

insert into zip(zip,city,state) values(75001,'Hoyton','texas');
insert into zip(zip,city,state) values(10008,'Albany','New York');
insert into zip(zip,city,state) values(34000,'Istanbul','Turkey');
insert into zip(zip,city,state) values(90201,'Los Angales','California');
insert into zip(zip,city,state) values(32006,'Miami','Florida');





-------------------------3F------------------
create table zip1(
zip number(11)primary key,
state varchar(50)not null
);

create table zip2(
zip number(11)primary key,
city varchar(50)not null
);


create table userInfo1(
userid varchar(11)primary key,
u_email varchar(50)not null,
fname varchar(50)not null,
lname varchar(50)not null,
zip number(11)not null,
constraint zip_fk foreign key(zip) references zip(zip)
);



insert into userinfo1(userid,u_email,fname,lname,zip) values('MA12','alex@gmail.com','Alex','jones',75001);
insert into userinfo1(userid,u_email,fname,lname,zip) values('PO45','emma.jhon@gmail.com','Emma','Stone',10008);
insert into userinfo1(userid,u_email,fname,lname,zip) values('LA33','victor@gmail.com','victoria','Aorora',34000);
insert into userinfo1(userid,u_email,fname,lname,zip) values('CH99','joe.197@gmail.com','joe','johnson',90201);
insert into userinfo1(userid,u_email,fname,lname,zip) values('PA74','dlany@gmail.com','Dany','Willam',32006);



insert into zip1(zip,state) values(75001,'texas');
insert into zip1(zip,state) values(10008,'New York');
insert into zip1(zip,state) values(34000,'Turkey');
insert into zip1(zip,state) values(90201,'California');
insert into zip1(zip,,state) values(32006,'Florida');
insert into zip2(zip,city) values(75001,'Hoyton');
insert into zip2(zip,city) values(10008,'Albany');
insert into zip2(zip,city) values(34000,'Istanbul');
insert into zip2(zip,city) values(90201,'Los Angales');
insert into zip2(zip,city) values(32006,'Miami');