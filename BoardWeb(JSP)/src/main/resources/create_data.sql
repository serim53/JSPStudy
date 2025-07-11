create table users(
    id varchar2(20) primary key,
    password varchar2(20) not null,
    name varchar2(20) not null,
    role varchar2(20) default 'USER'
);

insert into users(id, password, name, role) 
values('admin', 'test123', '채규태', 'ADMIN'); 

create table board(
	seq number(5) primary key,
    title varchar2(200) not null,
    writer varchar2(50) not null,
    content varchar2(2000) not null,
    regdate date default current_date,
    cnt number(5)  default 0
);

insert into board(seq, title, writer, content) 
values(1, '가입인사', '채규태', '잘 부탁해요.');











