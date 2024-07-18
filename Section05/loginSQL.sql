use mydb2;

create database praticedb;
use praticedb;

create table tbl_member(
	id varchar(8),
    pw varchar(10),
    name varchar(5),
    email varchar(16),
    phone varchar(13)
);

desc tbl_member;

show tables;
select * from tbl_member;

insert into tbl_member(id, pw, name) values ("test1", "1234", "테스트1");
insert into tbl_member(id, pw, name) values ("test2", password("1234"), "테스트1");
insert into tbl_member(id, pw, name) values ("test3", sha2("1234", 256), "테스트1");

desc tbl_member;

-- 필드 정보 변환하기 
alter table tbl_member change pw pw varchar(64);
insert into tbl_member(id, pw, name) values ("test2", sha2("1234", 256), "테스트1");

alter table tbl_member change pw password varchar(128);
alter table tbl_member change password pw varchar(64);

insert into tbl_member(id, pw, name) values ('ironman', sha2('1234', 256), '아이언맨');

-- 데이터 모두 삭제
delete from tbl_member;

insert into tbl_member(id, pw, name) values('superman', '1234', '슈퍼맨');
insert into tbl_member(id, pw, name) values('test1', sha2('1234', 256), '테스트1');
insert into tbl_member(id, pw, name) values('test2', sha2('abcd', 256), '테스트2');
insert into tbl_member(id, pw, name) values('test3', sha2('abcd1234', 256), '테스트3');

insert into tbl_member(id, pw, name) values('test4', sha2('ab', 256), '테스트4');
insert into tbl_member(id, pw, name) values('test5', sha2('0123456789abc', 256), '테스트5');
