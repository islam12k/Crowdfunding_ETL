drop table if exists contact;
drop table if exists category;
drop table if exists sub_category;
drop table if exists campaign;




create table category(
category_id varchar(50) not null primary key,
category varchar (50) not null
)

create table sub_category(
sub_category_id varchar (50) not null primary key,
sub_category varchar (50) not null

)


create table contact(
contact_id integer not null primary key,
first_name varchar(50) not null,
last_name varchar (50) not null,
email_address varchar (150) not null
)










create table campaign(
cf_id integer not null primary key,
contact_id integer not null,
foreign key (contact_id) references contact(contact_id),
comapany_name varchar(50) not null,
description varchar (150) not null,
goal float not null,
pledged float not null,
outcome varchar(50) not null,
backers_count integer not null,
country varchar(50) not null,
currency varchar(50) not null,
lauched_date date not null,
end_date date not null,
category_id varchar (50) not null,
foreign key(category_id)references category (category_id),
sub_category_id varchar(50) not null,
foreign key (sub_category_id) references sub_category(sub_category_id)
)


select * from contact;
select * from category;
select * from sub_category;
select * from campaign;

