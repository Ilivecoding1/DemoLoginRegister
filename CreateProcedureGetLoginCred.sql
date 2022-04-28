/****** Script for SelectTopNRows command from SSMS  ******/
--drop procedure spGetLoginCred
create procedure spGetLoginCred
(
@username varchar(150),
@password varchar(150)
)
as
begin
SELECT 
count(*)
     
  FROM [Register].[dbo].[EmpRegister]
  where Email=@username COLLATE SQL_Latin1_General_CP1_CS_AS
  and  Upass=@password COLLATE SQL_Latin1_General_CP1_CS_AS
  end