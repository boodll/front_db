use shopdb;

-- 뷰 생성,
create view uv_memberTBL
AS
	select memberName, memberAddress from memberTBL;
    
-- 뷰는 가상 테이블이지만 이용자 입장에서는 테이블처럼 이용된다...
select * from uv_memberTBL;

-- 특정 업무에서 아래의 sql 을 실행시켜야 한다는 과정..
select * from memberTBL where memberName = '당탕이';
select * from producttbl where productName = '냉장고';

-- 위의 두개의 SQL 문이 같이, 빈번하게 실행된다면.. 저장프로시저를 만들자..
DELIMITER //
create procedure myproc()
begin
	select * from memberTBL where memberName = '당탕이';
	select * from producttbl where productName = '냉장고';
end //
DELIMITER ;

call myproc();


select * from membertbl;
