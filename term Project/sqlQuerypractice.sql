-- 고객 정보 불러 오기
use shopdb;
select * from customtbl; 

-- 상품 정보 불러오기
select * from prodtbl;

--  memberID가 LMJ 인 사람의 상품 정보 불러오기
select * from prodtbl where memberID = 'LMJ';

-- 고객 정보에서 LMJ 인 사람의 정보와 상품 정보 불러오기
select * from customtbl, prodtbl where customtbl.memberID = 'LMJ' and customtbl.memberID = prodtbl.memberID ;

-- 고객 정보에서 LMJ 인 사람이 카드 정보를 불러오기
select Membername,cardname from customtbl, cardinfotbl
where customtbl.memberID ='LMJ' and customtbl.memberID = cardinfotbl.memberID;

-- 이미자 카드 정보를 신한으로 변경하여라
update cardinfotbl set cardname= '신한' where memberID = 'LMJ'; 

-- 우유가 입고 된 날짜를 확인하여라 (최신 날짜에 순으로)
select outwarehousedate from ProdOutwarehouse
where outwarehouseName = '우유'
order by outwarehouse;

-- 청바지 상품을 지워라
delete from prodinwarehouse where inwarehousename = '청바지' and inwarehousedate = '2018-12-17';

-- 입고 상품 중 오렌지쥬스 상품을 입력하여라 (날짜는 오늘 날짜로)
insert into prodinwarehouse values(null, 2320, '오렌지 쥬스', '2019-10-24');

-- 상품들을 수량이 6 가격이 5 인 제품 이름 그룹을 지어서 memberID를 나타내어라
select memberID from prodtbl
where amount > 6 and price >5
group by prodname;









