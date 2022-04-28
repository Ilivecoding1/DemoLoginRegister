USE [Register]
GO
--drop table EmpRegister
/****** Object:  Table [dbo].[UserRegisters]    Script Date: 13/04/2022 8:02:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmpRegister](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NULL,
	[Dob] [datetime] NULL,
	[Age] [float] NULL,
	[Gender] [int] NULL,
	[Adhar] [nvarchar](50) NULL,
	[Pan] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Salary] [float] NULL,
	[Marriedstatus] [int] NULL,
	[Email] [nvarchar](500) NULL,
	[Phone] [nvarchar](500) NULL,
	[Upass] [nvarchar](500) NULL,
	[ConfirmUpass] [nvarchar](500) NULL,
	[FilesName] [nvarchar](500) NULL,
	[FileData] [varbinary](max) NULL,
	[FileType] [nvarchar](500) NULL,
	[FilePath] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.EmpRegister] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


