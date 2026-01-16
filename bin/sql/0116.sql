select * from test2;
desc test2;

create table test2(
	idx int not null auto_increment primary key,	/*고유번호*/
	name varchar(20) not null,										/*성명*/
	age int default 20,														/*나이*/
	gender char(2) not null default '남자',					/*성별*/
	address varchar(20)														/*주소*/
);



insert into test2 values (default, "김말숙", default, "여자", '');
insert into test2 values (default, "이기자", default, default, '');
insert into test2 values (default, "김연아", 29, "여자", '');
insert into test2 values (default, "소나무", 55, "여자", '청주');
insert into test2 values (default, "오하늘", 39, "여자", '부산');
insert into test2 values (default, "가나다", 39, "여자", '부산');
insert into test2 values (default, "고인돌", 39, "여자", '부산');
insert into test2 values (default, "아톰", 39, "남자", '서울');
insert into test2 values (default, "아토믹", 49, "남자", '서울');
insert into test2 values (default, "토니스타크", 59, "남자", '부산');


-- 필드 구조변경(alter table)
-- test2 테이블에 job 필드 추가(가변길이문자 10byte)
alter table test2 add column job varchar(10);

insert into test2 values (default, '케이톰', 45, '남자', '서울', '공무원');

-- job 필드를 삭제하시오.
alter table test2 drop column job;

-- address 필드의 기이를 10byte로 변경하시오.
alter table test2 modify column address varchar(10);

-- name 필드명을 irum 으로 변경하시오. change column
alter table test2 change column name irum varchar(20);

delete from test2;

-- test2 테이블을 삭제하시오.
drop table test2;

-- 이기자를 삭제하시오
delete from test2 where idx = 2 limit 1

-- 새로 생성되는 idx 값을 17번 부터 부여하시오.
alter table test2 auto_increment = 17;

-- 성명 연습맨 추가
insert into test2 (name) values ('연습맨');
insert into test2 values (default, "연습맨2", 33, "여", "청주");

