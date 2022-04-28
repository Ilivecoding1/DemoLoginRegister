USE [Register]
GO
--drop procedure [spEmpRegister]
/****** Object:  StoredProcedure [dbo].[spEmpRegister]    Script Date: 18/04/2022 1:30:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--USE [Register]

--drop procedure spEmpRegister
create procedure [dbo].[spInsertEmpRegister]
(
	@Name nvarchar(500) = null,
	@Dob datetime = null,
	@Gender int = NULL,
	@Adhar nvarchar(50) = NULL,
	@Pan nvarchar(50) = NULL,
	@Salary float = NULL,
	@Marriedstatus int = NULL,
	@Email nvarchar(500)= NULL,
	@Phone nvarchar(500) = NULL,
	@FilesName nvarchar(500) = NULL,
	@FileData varbinary(max) =null,
	@FileType varchar(500) = NULL
	
)
as
begin
insert into EmpRegister(Name,Dob,Gender,Adhar,Pan,Salary,Marriedstatus,Email,Phone,FilesName,FileData,FileType,CreateDate,Upass)values(@Name,@Dob,@Gender,@Adhar,@Pan,@Salary,@Marriedstatus,@Email,@Phone,@FilesName,@FileData,@FileType,GETDATE(),'dk@1')
end

