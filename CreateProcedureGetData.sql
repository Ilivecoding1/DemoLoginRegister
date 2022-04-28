/****** Script for SelectTopNRows command from SSMS  ******/
--drop procedure spGetData
create procedure spGetData
as
begin
SELECT 
       [Name]
      ,convert(varchar(12),[Dob],3) as [Dob]
      ,case when [Gender]=1 then 'Male' else 'Female' end as Gender
      ,[Adhar]
      ,[Pan]
      ,[Salary]
      ,case when [Marriedstatus]=1 then 'Single' else case when [Marriedstatus]=2 then 'Married' end end as Marriedstatus
      ,[Email]
      ,[Phone]
      ,[FilesName]
      ,[FileData]
  FROM [Register].[dbo].[EmpRegister]
  end