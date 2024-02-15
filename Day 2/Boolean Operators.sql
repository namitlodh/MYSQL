select * from tbl_user_login;

select username from tbl_user_login
	where email='steve@gmail.com'
	and password='america123';
--and operator
 --True and True only true
 --other cases false

select password from tbl_user_login
	where username='wonder'
	or email='wonda@gamil.com';

select * from tbl_user_login
	where username='wonder'
	or email='wonda@gamil.com';
--atleast one condition should be true
 --False and false always false

select * from tbl_user_login
	where NOT username='wonder';

select * from tbl_user_login
	where username<>'wonder';