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

-- 테이블 변경 (id필드명)
alter table tbl_member2 change memberId m_id varchar(50);
alter table tbl_member2 change m_id m_id varchar(5) not null;