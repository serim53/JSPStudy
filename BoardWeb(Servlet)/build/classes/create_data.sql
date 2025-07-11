create table users(
  id varchar2(20) primary key,
  password varchar2(20) not null,
  name varchar2(20) not null,
  role varchar2(20) default 'USER'
);

insert into users(id, password, name, role)
values('admin', 'test123', '윤세림', 'ADMIN');
insert into users(id, password, name, role)
values('guest', 'guest123', '수정', 'USER');

select * from users;

update users set name = '수정', role ='USER';

update users set Name = '수정', ROLE = 'ADMIN' where ID = 'admin';

DELETE USERS WHERE ID = 'guest';

INSERT INTO USERS VALUES('guest', 'guest123', '방문자', 'USER');
INSERT INTO USERS VALUES('member', 'member123', '일반회원', 'USER');

SELECT ID, ROLE FROM USERS;

--게시판
create table board(
  seq number(5) primary key,
  title varchar2(200) not null,
  writer varchar2(50) not null,
  content varchar2(2000) not null,
  regdate date default current_date,
  cnt number(5) default 0
);

insert into board(seq, title, writer, content)
values(1, '가입인사', '윤세림', '잘부탁드려요');
