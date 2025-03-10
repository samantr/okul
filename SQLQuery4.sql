declare  @user varchar(500) ,
@pass varchar(500),
@command varchar(5000);
begin 

set @user = 'dfhfdhfh';
--set @pass = ''' or 1=1 ;--''';
set @pass = ''' or 1=1 ;INSERT INTO tbl_user (user_name ,user_password) VALUES (''fatih'',''123'')--'''; 

set @command = 'select * from tbl_user where user_name = '''  + @user  
		     + ''' AND user_password = ''' + @pass + '''';

print @command;	
end;


--select * from tbl_user where user_name = 'mehmet' AND user_password = '123'


select * from tbl_user where user_name = 'asdasd' AND user_password = '\"select * from tbl_user where user_name = 'asas' AND user_password = '' or 1=1 ;--'''\"'

