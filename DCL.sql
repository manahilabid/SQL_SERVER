create login manahil with password = 'alen123'
use INSTITUTE
create user manahil for login manahil

grant select on users to manahil
exec sp_helprotect null , manahil;