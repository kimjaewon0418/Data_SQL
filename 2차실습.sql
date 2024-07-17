USE bookstore;

select * from bookstore.book;
select * from bookstore.customer;
select * from bookstore.orders;

select *
FROM book
WHERE price >= 10000 AND price <=20000;

select *
FROM book
WHERE price between 10000 AND 20000;

select *
FROM bookstore.orders
WHERE orderdate between '2021-02-01' AND '2021-02-09';

select *
FROM orders
WHERE bookid IN (3,4,5,6);

select username from customer
WHERE username LIKE '박%';

select username from customer
WHERE username LIKE '_지%';

select *
from book
where bookname LIKE '%썬%' and price>=8000;

select * from book
where price is null;

select sum(price), avg(price), count(*), count(price)
from book;

select *
from book
order by bookname;

select *
from book
order by price desc;

select distinct custid from orders;
select count(distinct custid) from orders;

select distinct saleprice from orders;

select if(100>200, '참이다', '거짓이다');

select price*0.5  as '반값할인' from book;

-- 고객이 주문한 도서의 총 판매액, 평균값, 최저가, 최고가를 구하시오
select sum(saleprice) as total,
		avg(saleprice) as average,
        min(saleprice) as minimum,
        max(saleprice) as maximum
from orders;

select rtrim('  안녕하세요  ');

select length('안녕');
select char_length('안녕');

select concat('홍길동','모험');
select concat_ws(',','홍길동','모험');

select now();

select date_add("2021-03-07 23:59:59",INTERVAL -10 DAY);

SELECT orderdate, DATE_ADD(orderdate, INTERVAL -1 MONTH) FROM orders;
