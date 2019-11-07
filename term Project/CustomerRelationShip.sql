-- 데이터 베이스 생성 sql문
create database ShopDB;

use ShopDB;

-- 고객 데이터 베이스 생성
create table customtbl(
	memberID char(10) not null primary key,
    memberName char(5) not null,
    memberAddr char(10) ,
    memberPhone char(11),
    memberSign date
);
-- 상품 데이터 베이스 생성 
create table prodtbl(
	prodNum int not null auto_increment,
    memberID char(10) not null,
    prodName char(10) not null,
    groupName char(5),
    price int not null,
    amount smallint not null,
    primary key(prodNum),
    foreign key (memberID) references customtbl(memberID)
);
-- 카드 정보 테이블 생성 
create table cardInfotbl(
	cardNum int not null,
    memberID char(10) not null,
    cardName char(5) not null,
    cardcreate_date date not null,
    usecount int default 0,
    primary key (cardNum),
    foreign key (memberID) references customtbl(memberID)
);
-- 입고 제품 테이블 생성 
create table ProdINwarehouse(
	inwarehouseNum int not null primary key auto_increment,
    prodID int not null, 
	inwarehouseName char(10) not null,
    inwarehousedate date not null,
    foreign key(prodID) references prodtbl(prodNum)
);
-- 출고 제품 테이블 생성 
create table ProdOutwarehouse(
	outwarehouseNum int not null primary key auto_increment,
    prodID int not null,
    outwarehouseName char(10) not null,
    outwarehousedate date not null,
	foreign key(prodID) references prodtbl(prodNum)
);
