use mydb2;

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