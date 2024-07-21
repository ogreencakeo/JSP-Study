use mydb2;
create table tbl_member2(
	idx int not null auto_increment,
    memberId varchar(50) not null,
    m_pw varchar(50) not null,
    m_name varchar(50) not null,
    m_email varchar(150) not null,
    m_phone varchar(50),
    m_level tinyint unsigned default 0,
	primary key (idx),
    unique key (memberId),
    unique key (m_email)
);

show tables;
desc tbl_member2;
select * from tbl_member2;

-- 테이블 변경 (id필드명)
alter table tbl_member2 change memberId m_id varchar(50);
alter table tbl_member2 change m_id m_id varchar(50) not null;

-- 테이블 필드 하나 제거 (m_pw)
alter table tbl_member2 drop m_pw;
alter table tbl_member2 drop column m_pw;

-- 테이블 필드 하나 추가 (m_pw)
alter table tbl_member2 add m_pw varchar(64) not null;
alter table tbl_member2 add column m_pw varchar(64) not null;

-- 컬럼 위치 지정하기
alter table tbl_member2 add column m_pw varchar(64) not null after m_id;

-- insert 쿼리문 작성
insert into tbl_member2(m_id, m_pw, m_name, m_email) values
	("test1", "1234", "테스트1", "test1@test.com"),
    ("test2", "1234", "테스트2", "test2@test.com"),
    ("test3", "1234", "테스트3", "test3@test.com");

-- email 필드에 unique 지정한거 삭제하기
alter table tbl_member2 drop key m_email;

delete from tbl_member2;
alter table tbl_member2 auto_increment = 1;
-- insert 쿼리문 작성2
insert into tbl_member2(m_id, m_pw, m_name, m_email) values
("test1", "1234", "테스트1", "test@test.com"), ("test2", "1234", "테스트2", "test@test.com"),
("test3", "1234", "테스트3", "test@test.com"), ("test4", "1234", "테스트4", "test@test.com"),
("test5", "1234", "테스트5", "test@test.com"), ("test6", "1234", "테스트6", "test@test.com"),
("test7", "1234", "테스트7", "test@test.com"), ("test8", "1234", "테스트8", "test@test.com"),
("test9", "1234", "테스트9", "test@test.com"), ("test10", "1234", "테스트10", "test@test.com"),
("test11", "1234", "테스트11", "test@test.com"), ("test12", "1234", "테스트12", "test@test.com"),
("test13", "1234", "테스트13", "test@test.com"),("test14", "1234", "테스트14", "test@test.com"),
("test15", "1234", "테스트15", "test@test.com");
