drop procedure if exists prodcount;
DELIMITER $$
create procedure prodcount()
begin
	declare counts int;
    set counts = 12;
	if counts>10 then
		select * from shopdb.prodtbl where amount>10;
	else 
		select * from shopdb.prodtbl where amount<10;
	end if;

end$$
DELIMITER $$

call prodcount();


