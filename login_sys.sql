drop table member;

create table member(
num number(20) PRIMARY key not null,
email varchar2(50) not null,
name varchar2(28) not null,
pwd varchar2(30) not null,
time TIMESTAMP not null);

insert into member VALUES (0, 'admin', '°ü¸®ÀÚ', 'admin', systimestamp);

select * from member;

commit;