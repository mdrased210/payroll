use master

create database [Payroll-TL] ;


IF NOT EXISTS (SELECT [name] FROM syslogins where [name] = 'techno')
EXEC sp_addlogin 'techno', 'logic' 

sp_addsrvrolemember 'RBADM', 'sysadmin'

IF NOT EXISTS (SELECT [name] FROM syslogins where [name] = 'simpleUser')
EXEC sp_addlogin 'simpleUser', 'simpleUser'

use [Payroll-TL]

sp_addapprole 'db_RBUSER', '*******'

sp_changedbowner 'techno'

sp_adduser 'simpleUser'

checkpoint