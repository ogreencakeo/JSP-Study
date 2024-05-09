create database mydb2;
use mydb2;

drop table if exists tbl_member;

create table tbl_member(
	id varchar(50) not null,
    pw varchar(50),
    name char(6),
    email varchar(50),
    phone varchar(50),
    primary key (id)
);

show tables;