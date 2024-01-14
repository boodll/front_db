SELECT YEAR(curdate()), MONTH(curdate()), dayofmonth(curdate()), microsecond(curdate());
-- now 는 SQL 이 실행되는 순간, stsdate() 는 함수가 호출되는 순간..
SELECT date(now()), time(now());

SELECT datediff('2025-01-01', now());