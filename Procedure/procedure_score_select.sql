select @@autocommit;
set @@autocommit = 0;

set @total = 0;
set @err = 0;
call usp_mod_score(null, 60, 80, 90, @total, @err);

select @total, @err;