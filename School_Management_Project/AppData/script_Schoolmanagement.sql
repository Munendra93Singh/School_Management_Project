USE [master]
GO
/****** Object:  Database [DB_SchoolManagement]    Script Date: 6/6/2021 5:10:28 PM ******/
CREATE DATABASE [DB_SchoolManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_SchoolManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_SchoolManagement.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DB_SchoolManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\DB_SchoolManagement_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DB_SchoolManagement] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_SchoolManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_SchoolManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DB_SchoolManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_SchoolManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_SchoolManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_SchoolManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_SchoolManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_SchoolManagement] SET  MULTI_USER 
GO
ALTER DATABASE [DB_SchoolManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_SchoolManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_SchoolManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_SchoolManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DB_SchoolManagement]
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_AddClass]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TBL_AddClass]
@Finyear varchar(50),
@Fyear varchar(50),
@Amount varchar(50),
@classmode varchar(50),
@About varchar(100)
as
begin
 insert into TBL_AddClass(Finyear,Fyear,Amount,classmode,about,Date_Reg)
 values(@Finyear,@Fyear,@Amount,@classmode,@About,GETDATE())
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_AddClass_get]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[sp_TBL_AddClass_get]
as
begin
select * from TBL_AddClass
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_AdmissionStudent]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_TBL_AdmissionStudent]
@Yearname varchar(50),
@Ragnumber varchar(50),
@Stname varchar(50),
@Enrolname varchar(50),
@Rolnumber varchar(50),
@Studntname varchar(50),
@fathername varchar(50),
@mothername varchar(50),
@Gender varchar(50),
@DOB varchar(50),
@Adharnumber varchar(50),
@Religion varchar(50),
@castcatagory varchar(50),
@Admissiondate varchar(50),
@Class varchar(50),
@Groccupation varchar(50),
@Mariedstatus varchar(50),
@Address varchar(50),
@state varchar(50),
@city varchar(50),
@pincode varchar(50),
@imageupload varchar(200)
as begin
insert into TBL_AdmissionStudent(Yearname,Ragnumber,Stname,Enrolname,Rolnumber,Studntname,fathername,mothername,Gender,DOB,
Adharnumber,Religion,castcatagory,Admissiondate,Class,Groccupation,Mariedstatus,Address,state,city,pincode,imageupload,Date_Reg)
values(@Yearname,@Ragnumber,@Stname,@Enrolname,@Rolnumber,@Studntname,@fathername,@mothername,@Gender,@DOB,
@Adharnumber,@Religion,@castcatagory,@Admissiondate,@Class,@Groccupation,@Mariedstatus,@Address,@state,@city,@pincode,@imageupload,GETDATE())
end


GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_AdmissionStudent_get]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TBL_AdmissionStudent_get]
as
begin
select * from TBL_AdmissionStudent
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_City]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_TBL_City]
@City_Name varchar(100),
@State_Name varchar(100)
as
begin
insert into TBL_City (City_Name,State_Name,City_Reg)
values(@City_Name,@State_Name,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_City_get]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_TBL_City_get]
as
begin
select * from TBL_City
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_ComponentFee]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_TBL_ComponentFee]
@Fyear varchar(50),
@feetype varchar(50),
@CompoName varchar(100),
@Camount Varchar(100),
@Discription varchar(100)
as
begin
insert into TBL_ComponentFee(Fyear,feetype,CompoName,Camount,Discription,Date_Reg)
values(@Fyear,@feetype,@CompoName,@Camount,@Discription,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_ComponentFee_delet]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TBL_ComponentFee_delet]
@CF_if int
as
begin
select * from TBL_ComponentFee where CF_id=@CF_if
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_ComponentFee_Edit]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TBL_ComponentFee_Edit]
@CF_if int
as
begin
select * from TBL_ComponentFee where CF_id=@CF_if
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_ComponentFee_get]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TBL_ComponentFee_get]
as
begin
select * from TBL_ComponentFee
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_ComponentFee1_get]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TBL_ComponentFee1_get]
	as
	begin
	select * from TBL_ComponentFee1
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_State]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_TBL_State]
@State_Name varchar(100)
as
begin
insert into TBL_State (State_Name,State_Reg)
values(@State_Name,getdate())
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_State_get]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_TBL_State_get]
as
 begin
 select * from TBL_State
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_StudentEnqury]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_TBL_StudentEnqury]
@FullName varchar(50),
@FatherName varchar(50),
@Sdob varchar(50),
@Mobile varchar(50),
@mobile2 varchar(50),
@Gender varchar(50),
@Category varchar(50),
@Goccupation varchar(50),
@Class varchar(50),
@State_Name varchar(100),
@City_Name varchar(100),
@PinCode varchar(50),
@Email varchar(50),
@Qualification varchar(50),
@Refered varchar(100),
@Address varchar(100)
as
begin
insert into TBL_StudentEnqury(fullName,FatherName,Sdob,Mobile,Mobile2,Gender,Category,Goccupation,Class,State_Name,City_Name,PinCode,
Email,Qualification,Refered,Address,Date_Reg)
values(@FullName,@FatherName,@Sdob,@Mobile,@mobile2,@Gender,@Category,@Goccupation,@Class,@State_Name,@City_Name,@PinCode,
@Email,@Qualification,@Refered,@Address,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_StudentEnqury_get]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_TBL_StudentEnqury_get]
as
begin
select *from TBL_StudentEnqury
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_StudentRegistration]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_TBL_StudentRegistration]
@StudentName varchar(50),
@Fathername varchar(50),
@StudentDOB varchar(50),
@Mobile varchar(50),
@Mobile1 varchar(50),
@Gender varchar(50),
@Category varchar(50),
@Ocupation varchar(50),
@Class varchar(50),
@State varchar(50),
@City varchar(50),
@pincode int,
@Email varchar(50),
@Address varchar(100),
@StudentFee varchar(100)
as
begin
insert into TBL_StudentRegistration(StudentName,Fathername,StudentDOB,Mobile,Mobile1,Gender,Category,Ocupation,Class,State,City,pincode,Email,Address,StudentFee,Date_Reg)
values(@StudentName,@Fathername,@StudentDOB,@Mobile,@Mobile1,@Gender,@Category,@Ocupation,@Class,@State,@City,@pincode,@Email,@Address,@StudentFee,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TBL_StudentRegistration_get]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_TBL_StudentRegistration_get]
as
begin
select * from TBL_StudentRegistration
end
GO
/****** Object:  StoredProcedure [dbo].[usp_TBL_City_select]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[usp_TBL_City_select]
as
begin
SELECT TBL_City.City_name, TBL_State.State_Name
FROM TBL_City
INNER JOIN TBL_State ON TBL_City.Cid = TBL_State.Sid;
end
GO
/****** Object:  Table [dbo].[Hr_admin]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hr_admin](
	[hid] [int] NOT NULL,
	[UserName] [varchar](30) NULL,
	[pwd] [varchar](30) NOT NULL,
	[fullname] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[RegDate] [datetime] NULL,
	[mobileno] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[dlv] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[hid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_AddClass]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_AddClass](
	[Cl_id] [int] IDENTITY(1,1) NOT NULL,
	[Finyear] [varchar](50) NULL,
	[Fyear] [varchar](50) NULL,
	[Amount] [varchar](50) NULL,
	[classmode] [varchar](50) NULL,
	[About] [varchar](100) NULL,
	[Date_Reg] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_AdmissionStudent]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_AdmissionStudent](
	[Student_Id] [int] IDENTITY(1,1) NOT NULL,
	[Yearname] [varchar](50) NULL,
	[Ragnumber] [varchar](50) NULL,
	[Stname] [varchar](50) NULL,
	[Enrolname] [varchar](50) NULL,
	[Rolnumber] [varchar](50) NULL,
	[Studntname] [varchar](50) NULL,
	[fathername] [varchar](50) NULL,
	[mothername] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Adharnumber] [varchar](50) NULL,
	[Religion] [varchar](50) NULL,
	[castcatagory] [varchar](50) NULL,
	[Admissiondate] [varchar](50) NULL,
	[Class] [varchar](50) NULL,
	[Groccupation] [varchar](50) NULL,
	[Mariedstatus] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[pincode] [varchar](50) NULL,
	[imageupload] [varchar](200) NULL,
	[Date_Reg] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Student_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_City]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_City](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[State_Name] [varchar](100) NULL,
	[City_name] [varchar](100) NULL,
	[City_Reg] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_ComponentFee]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_ComponentFee](
	[CF_id] [int] IDENTITY(1,1) NOT NULL,
	[Fyear] [varchar](50) NULL,
	[feetype] [varchar](50) NULL,
	[CompoName] [varchar](100) NULL,
	[Camount] [varchar](100) NULL,
	[Discription] [varchar](100) NULL,
	[Date_Reg] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CF_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_ComponentFee1]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_ComponentFee1](
	[CF_id] [int] IDENTITY(1,1) NOT NULL,
	[Fyear] [varchar](50) NULL,
	[feetype] [varchar](50) NULL,
	[CompoName] [varchar](100) NULL,
	[Camount] [varchar](100) NULL,
	[Discription] [varchar](100) NULL,
	[Date_Reg] [datetime] NULL,
	[cidd] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_State]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_State](
	[Sid] [int] IDENTITY(1,1) NOT NULL,
	[State_Name] [varchar](100) NULL,
	[State_Reg] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_StudentEnqury]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_StudentEnqury](
	[Eq_id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[Sdob] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[mobile2] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[Goccupation] [varchar](50) NULL,
	[Class] [varchar](50) NULL,
	[State_Name] [varchar](100) NULL,
	[City_Name] [varchar](100) NULL,
	[PinCode] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Qualification] [varchar](50) NULL,
	[Refered] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[Date_Reg] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Eq_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_StudentRegistration]    Script Date: 6/6/2021 5:10:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_StudentRegistration](
	[StudentReg_id] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [varchar](50) NULL,
	[Fathername] [varchar](50) NULL,
	[StudentDOB] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Mobile1] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[Ocupation] [varchar](50) NULL,
	[Class] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[pincode] [int] NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[StudentFee] [varchar](50) NULL,
	[Date_Reg] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentReg_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Hr_admin] ([hid], [UserName], [pwd], [fullname], [email], [RegDate], [mobileno], [Designation], [dlv]) VALUES (1, N'12345', N'1234', N'munendra', N'it@gmail.com', CAST(0x0000AD0A0128A938 AS DateTime), N'987654321', N'IT', CAST(0x0000AD0B00BF1BE9 AS DateTime))
INSERT [dbo].[Hr_admin] ([hid], [UserName], [pwd], [fullname], [email], [RegDate], [mobileno], [Designation], [dlv]) VALUES (2, N'admin', N'admin', N'HR_Admin', N'hr@gmail.com', CAST(0x0000AD0B00C53DA8 AS DateTime), N'123456789', N'HR', CAST(0x0000AD1F0108BE6D AS DateTime))
SET IDENTITY_INSERT [dbo].[TBL_AddClass] ON 

INSERT [dbo].[TBL_AddClass] ([Cl_id], [Finyear], [Fyear], [Amount], [classmode], [About], [Date_Reg]) VALUES (1, N'2020-2021', N'Ist Year', N'1', N'B.Tech', N'Only B.Tech', CAST(0x0000AD1001338E9A AS DateTime))
INSERT [dbo].[TBL_AddClass] ([Cl_id], [Finyear], [Fyear], [Amount], [classmode], [About], [Date_Reg]) VALUES (2, N'2020-2021', N'IInd Year', N'4', N'B.Pharma', N'Only .Bharma', CAST(0x0000AD1001342DCA AS DateTime))
INSERT [dbo].[TBL_AddClass] ([Cl_id], [Finyear], [Fyear], [Amount], [classmode], [About], [Date_Reg]) VALUES (5, N'2020-2021', N'Ist Year', N'0', N'B.Tech', N'done', CAST(0x0000AD1401356DA7 AS DateTime))
INSERT [dbo].[TBL_AddClass] ([Cl_id], [Finyear], [Fyear], [Amount], [classmode], [About], [Date_Reg]) VALUES (6, N'2020-2021', N'IInd Year', N'5', N'B.Tech', N'DOne', CAST(0x0000AD140136F79F AS DateTime))
SET IDENTITY_INSERT [dbo].[TBL_AddClass] OFF
SET IDENTITY_INSERT [dbo].[TBL_AdmissionStudent] ON 

INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (1, N'2021-2022', N'DS001', N'Done', N'2022', N'21', N'Munendra Singh', N'Seva Ram', N'Veer Wati', N'Female', N'23/04/2021', N'12121212', N'Islam', N'General', N'23/04/2021', N'1', N'', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637547921948468927PhotoGraph.png', CAST(0x0000AD13010FE378 AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (2, N'2021-2022', N' <b>29S79</b>', N'Done', N'2022', N'21', N'Munendra Singh', N'Seva Ram', N'Veer Wati', N'Trasigender', N'23/04/2021', N'12121212', N'Christian', N'General', N'23/04/2021', N'1', N'', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637547940375930238', CAST(0x0000AD13011852DB AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (3, N'2021-2022', N' <b>88S45</b>', N'Done', N'2022', N'21', N'Munendra Singh', N'Seva Ram', N'Veer Wati', N'Male', N'23/04/2021', N'12121212', N'Hindu', N'OBC', N'23/04/2021', N'1', N'', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637547941112239060', CAST(0x0000AD130118A917 AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (4, N'2021-2022', N' <b>58OS2</b>', N'Done', N'2022', N'21', N'Munendra Singh', N'Seva Ram', N'Veer Wati', N'Male', N'23/04/2021', N'12121212', N'Hindu', N'OBC', N'23/04/2021', N'1', N'', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637547942259253355', CAST(0x0000AD1301192F82 AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (5, N'2021-2022', N' <b>44183</b>', N'Done', N'2022', N'21', N'Munendra Singh', N'Seva Ram', N'Veer Wati', N'Male', N'23/04/2021', N'12121212', N'Hindu', N'OBC', N'23/04/2021', N'1', N'', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637547942632222400', CAST(0x0000AD1301195B37 AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (6, N'2021-2022', N'<b>acex8</b>', N'Done', N'2022', N'21', N'Munendra Singh', N'Seva Ram', N'Veer Wati', N'Trasigender', N'23/04/2021', N'12121212', N'Hindu', N'General', N'23/04/2021', N'1', N'', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637547949952574778', CAST(0x0000AD13011CB513 AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (7, N'2021-2022', N'6aznz', N'Done', N'2022', N'21', N'Munendra Singh', N'Seva Ram', N'Veer Wati', N'Male', N'23/04/2021', N'12121212', N'Hindu', N'General', N'14/04/2021', N'1', N'', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637547951288463072', CAST(0x0000AD13011D519E AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (8, N'2021-2022', N'952SS', N'Done', N'2022', N'21', N'Munendra Singh', N'Seva Ram', N'Veer Wati', N'Male', N'23/04/2021', N'12121212', N'Hindu', N'General', N'23/04/2021', N'1', N'', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637547952502703478', CAST(0x0000AD13011DDFE9 AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (9, N'2021-2022', N'9729438264', N'Done', N'2022', N'21', N'Munendra Singh', N'Seva Ram', N'Veer Wati', N'Male', N'23/04/2021', N'12121212', N'Hindu', N'General', N'23/04/2021', N'1', N'', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637547955349661918edit.png', CAST(0x0000AD13011F2D8A AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (10, N'2021-2022', N'3S22324S2S', N'Test', N'1234', N'21', N'Test', N'Test', N'test', N'Male', N'01/05/1993', N'mmmmmm', N'Hindu', N'OBC', N'23/04/2021', N'1', N'Farmer', N'Married', N'Test', N'1', N'1', N'21254', N'637548042607972801', CAST(0x0000AD1301471F35 AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (1010, N'2021-2022', N'9972859599', N'Done', N'2022', N'21', N'Rahul', N'Rahul Kumar', N'Test', N'Male', N'26/04/2021', N'223564mm', N'Hindu', N'General', N'06/04/2021', N'1', N'Business', N'Married', N'New Delhi', N'3', N'2', N'100612', N'637549665150256178', CAST(0x0000AD150116D939 AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (1011, N'2021-2022', N'4S328497SS', N'Done', N'2022', N'21', N'Rahul', N'Rahul Kumar', N'test', N'Male', N'25/04/2021', N'12121212', N'Hindu', N'General', N'19/04/2021', N'2', N'Business', N'Married', N'New Delhi', N'3', N'2', N'100612', N'637549666214586907', CAST(0x0000AD150117558C AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (1012, N'2021-2022', N'7922602026', N'Done', N'2022', N'21', N'Munendra Singh', N'nmnmnm', N'Veer Wati', N'Male', N'26/04/2021', N'223564mm', N'Hindu', N'General', N'27/04/2021', N'1', N'Business', N'Married', N'New Delhi', N'3', N'2', N'100612', N'637549668336393023', CAST(0x0000AD1501184E2C AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (1013, N'2021-2022', N'4627079S26', N'Done', N'2022', N'm', N'Munendra Singh', N'nmnmnm', N'test', N'Female', N'25/04/2021', N'12121212', N'Islam', N'OBC', N'25/04/2021', N'2', N'Job-Govt', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637549673476936837', CAST(0x0000AD15011AA895 AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (1014, N'2021-2022', N'8S25362933', N'Done', N'2022', N'm', N'Munendra Singh', N'nmnmnm', N'test', N'Female', N'25/04/2021', N'12121212', N'Islam', N'OBC', N'25/04/2021', N'2', N'Job-Govt', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637549673850327418', CAST(0x0000AD15011AD455 AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (1015, N'2021-2022', N'S355547960', N'Done', N'2022', N'm', N'Munendra Singh', N'nmnmnm', N'test', N'Female', N'25/04/2021', N'12121212', N'Islam', N'OBC', N'25/04/2021', N'2', N'Job-Govt', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637549673933798154', CAST(0x0000AD15011ADE25 AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (1016, N'2021-2022', N'2528595087', N' nnmnm', N'2022', N'21', N'Munendra Singh', N'Seva Ram', N'Veer Wati', N'Female', N'12/04/2021', N'mmmmmm', N'Hindu', N'General', N'01/04/2021', N'1', N'Job-Govt', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637549674421212246search.png', CAST(0x0000AD15011B1745 AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (1017, N'2021-2022', N'3437347677', N'Done', N'2022', N'9412258372', N'Munendra Singh', N'Seva Ram', N'Veer Wati', N'Male', N'27/04/2021', N'', N'Hindu', N'General', N'28/04/2021', N'1', N'Job-Govt', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637549703399070927', CAST(0x0000AD1501285B15 AS DateTime))
INSERT [dbo].[TBL_AdmissionStudent] ([Student_Id], [Yearname], [Ragnumber], [Stname], [Enrolname], [Rolnumber], [Studntname], [fathername], [mothername], [Gender], [DOB], [Adharnumber], [Religion], [castcatagory], [Admissiondate], [Class], [Groccupation], [Mariedstatus], [Address], [state], [city], [pincode], [imageupload], [Date_Reg]) VALUES (1018, N'2021-2022', N'9555595240', N'Done', N'2022', N'9412258372', N'Munendra Singh', N'Seva Ram', N'Veer Wati', N'Male', N'06/04/2021', N'223564mm', N'Hindu', N'General', N'13/04/2021', N'1', N'Business', N'Married', N'Bareilly', N'1', N'1', N'21254', N'637549704919730965', CAST(0x0000AD1501290D49 AS DateTime))
SET IDENTITY_INSERT [dbo].[TBL_AdmissionStudent] OFF
SET IDENTITY_INSERT [dbo].[TBL_City] ON 

INSERT [dbo].[TBL_City] ([Cid], [State_Name], [City_name], [City_Reg]) VALUES (1, N'1', N'Bareilly', CAST(0x0000AD0F00D42D80 AS DateTime))
INSERT [dbo].[TBL_City] ([Cid], [State_Name], [City_name], [City_Reg]) VALUES (2, N'3', N'New Delhi', CAST(0x0000AD0F0105CABB AS DateTime))
INSERT [dbo].[TBL_City] ([Cid], [State_Name], [City_name], [City_Reg]) VALUES (3, N'1', N'Kanpur', CAST(0x0000AD1400F6F9DE AS DateTime))
INSERT [dbo].[TBL_City] ([Cid], [State_Name], [City_name], [City_Reg]) VALUES (4, N'1', N'Kanpur', CAST(0x0000AD1400F6FE36 AS DateTime))
INSERT [dbo].[TBL_City] ([Cid], [State_Name], [City_name], [City_Reg]) VALUES (5, N'1', N'Kanpur', CAST(0x0000AD1400F708D4 AS DateTime))
SET IDENTITY_INSERT [dbo].[TBL_City] OFF
SET IDENTITY_INSERT [dbo].[TBL_ComponentFee] ON 

INSERT [dbo].[TBL_ComponentFee] ([CF_id], [Fyear], [feetype], [CompoName], [Camount], [Discription], [Date_Reg]) VALUES (1, N'Select', N'Monthly', N'Tution Fees', N'1000', N'Tution Fees', CAST(0x0000AD10012E300F AS DateTime))
INSERT [dbo].[TBL_ComponentFee] ([CF_id], [Fyear], [feetype], [CompoName], [Camount], [Discription], [Date_Reg]) VALUES (2, N'2020-2021', N'Once', N'Uniform Fee', N'500', N'Uniform Fee', CAST(0x0000AD10012E5887 AS DateTime))
INSERT [dbo].[TBL_ComponentFee] ([CF_id], [Fyear], [feetype], [CompoName], [Camount], [Discription], [Date_Reg]) VALUES (3, N'2020-2021', N'Once', N'Uniform Fee', N'500', N'Uniform Fee', CAST(0x0000AD10012E652F AS DateTime))
INSERT [dbo].[TBL_ComponentFee] ([CF_id], [Fyear], [feetype], [CompoName], [Camount], [Discription], [Date_Reg]) VALUES (4, N'2020-2021', N'Registration', N'Registration Fee', N'2000', N'Non Refend Fee,', CAST(0x0000AD10012EC88F AS DateTime))
INSERT [dbo].[TBL_ComponentFee] ([CF_id], [Fyear], [feetype], [CompoName], [Camount], [Discription], [Date_Reg]) VALUES (5, N'2020-2021', N'Monthly', N'Collage Fees', N'3000', N'Done', CAST(0x0000AD140135201F AS DateTime))
SET IDENTITY_INSERT [dbo].[TBL_ComponentFee] OFF
SET IDENTITY_INSERT [dbo].[TBL_ComponentFee1] ON 

INSERT [dbo].[TBL_ComponentFee1] ([CF_id], [Fyear], [feetype], [CompoName], [Camount], [Discription], [Date_Reg], [cidd]) VALUES (1, N'2021', N'Monthly', N'Sport', N'3000', N'Done', NULL, NULL)
SET IDENTITY_INSERT [dbo].[TBL_ComponentFee1] OFF
SET IDENTITY_INSERT [dbo].[TBL_State] ON 

INSERT [dbo].[TBL_State] ([Sid], [State_Name], [State_Reg]) VALUES (1, N'Utter Pradesh', CAST(0x0000AD0F00CB9C25 AS DateTime))
INSERT [dbo].[TBL_State] ([Sid], [State_Name], [State_Reg]) VALUES (2, N'Uttra Khand', CAST(0x0000AD0F00CBA0FC AS DateTime))
INSERT [dbo].[TBL_State] ([Sid], [State_Name], [State_Reg]) VALUES (3, N'New Delhi', CAST(0x0000AD0F00D8062C AS DateTime))
INSERT [dbo].[TBL_State] ([Sid], [State_Name], [State_Reg]) VALUES (4, N'ANDHRA PRADESH', CAST(0x0000AD0F011B158F AS DateTime))
INSERT [dbo].[TBL_State] ([Sid], [State_Name], [State_Reg]) VALUES (5, N'ARUNACHAL PRADESH', CAST(0x0000AD0F011B44D0 AS DateTime))
INSERT [dbo].[TBL_State] ([Sid], [State_Name], [State_Reg]) VALUES (7, N'ASSAM', CAST(0x0000AD0F011BCBB8 AS DateTime))
INSERT [dbo].[TBL_State] ([Sid], [State_Name], [State_Reg]) VALUES (8, N'BIHAR', CAST(0x0000AD0F011BDBB7 AS DateTime))
INSERT [dbo].[TBL_State] ([Sid], [State_Name], [State_Reg]) VALUES (9, N'CHANDIGARH', CAST(0x0000AD0F011BE68D AS DateTime))
INSERT [dbo].[TBL_State] ([Sid], [State_Name], [State_Reg]) VALUES (10, N'CHATTISGARH', CAST(0x0000AD0F011BF267 AS DateTime))
SET IDENTITY_INSERT [dbo].[TBL_State] OFF
SET IDENTITY_INSERT [dbo].[TBL_StudentEnqury] ON 

INSERT [dbo].[TBL_StudentEnqury] ([Eq_id], [FullName], [FatherName], [Sdob], [Mobile], [mobile2], [Gender], [Category], [Goccupation], [Class], [State_Name], [City_Name], [PinCode], [Email], [Qualification], [Refered], [Address], [Date_Reg]) VALUES (1, N'Munendra Singh', N'Seva ram', N'10/01/1992', N'9412258372', N'8006783283', N'Male', N'General', N'Business', N'A', N'1', N'1', N'12345', N'munendrasingh93mahi@gmail.com', N'B.Tech', N'Select', N'kk', CAST(0x0000AD0F01199845 AS DateTime))
INSERT [dbo].[TBL_StudentEnqury] ([Eq_id], [FullName], [FatherName], [Sdob], [Mobile], [mobile2], [Gender], [Category], [Goccupation], [Class], [State_Name], [City_Name], [PinCode], [Email], [Qualification], [Refered], [Address], [Date_Reg]) VALUES (2, N'Satish Kumar', N'Devvender Kumar', N'01/05/1995', N'789654123', N'321459987', N'Male', N'OBC', N'Job-Govt', N'A', N'3', N'2', N'21223', N'satish@gmail.com', N'12th', N'Select', N'Noida-15', CAST(0x0000AD0F012683E2 AS DateTime))
INSERT [dbo].[TBL_StudentEnqury] ([Eq_id], [FullName], [FatherName], [Sdob], [Mobile], [mobile2], [Gender], [Category], [Goccupation], [Class], [State_Name], [City_Name], [PinCode], [Email], [Qualification], [Refered], [Address], [Date_Reg]) VALUES (3, N'Naval Kishore', N'Mr. Seva Ram', N'01/05/1983', N'8006783283', N'9412258372', N'Male', N'SC', N'Business', N'C', N'1', N'1', N'05825', N'kishore83naval@gmail.com', N'MA', N'Select', N'Gajroulla', CAST(0x0000AD1000DA892F AS DateTime))
INSERT [dbo].[TBL_StudentEnqury] ([Eq_id], [FullName], [FatherName], [Sdob], [Mobile], [mobile2], [Gender], [Category], [Goccupation], [Class], [State_Name], [City_Name], [PinCode], [Email], [Qualification], [Refered], [Address], [Date_Reg]) VALUES (4, N'Munendra Singh', N'Seva ram', N'05/04/2021', N'45454', N'4545', N'Male', N'OBC', N'Job-Pvt', N'B', N'1', N'1', N'21254', N'munendrasingh93mahi@gmail.com', N'B.Tech', N'Select', N'Bareilly', CAST(0x0000AD130135BDC2 AS DateTime))
INSERT [dbo].[TBL_StudentEnqury] ([Eq_id], [FullName], [FatherName], [Sdob], [Mobile], [mobile2], [Gender], [Category], [Goccupation], [Class], [State_Name], [City_Name], [PinCode], [Email], [Qualification], [Refered], [Address], [Date_Reg]) VALUES (5, N'Munendra Singh', N'Seva ram', N'05/04/2021', N'45454', N'4545', N'Male', N'OBC', N'Job-Pvt', N'B', N'1', N'1', N'21254', N'munendrasingh93mahi@gmail.com', N'B.Tech', N'Select', N'Bareilly', CAST(0x0000AD130135D441 AS DateTime))
INSERT [dbo].[TBL_StudentEnqury] ([Eq_id], [FullName], [FatherName], [Sdob], [Mobile], [mobile2], [Gender], [Category], [Goccupation], [Class], [State_Name], [City_Name], [PinCode], [Email], [Qualification], [Refered], [Address], [Date_Reg]) VALUES (6, N'Munendra Singh', N'Seva ram', N'05/04/2021', N'45454', N'4545', N'Male', N'OBC', N'Job-Pvt', N'B', N'1', N'1', N'21254', N'munendrasingh93mahi@gmail.com', N'B.Tech', N'Select', N'Bareilly', CAST(0x0000AD130135DA02 AS DateTime))
SET IDENTITY_INSERT [dbo].[TBL_StudentEnqury] OFF
SET IDENTITY_INSERT [dbo].[TBL_StudentRegistration] ON 

INSERT [dbo].[TBL_StudentRegistration] ([StudentReg_id], [StudentName], [Fathername], [StudentDOB], [Mobile], [Mobile1], [Gender], [Category], [Ocupation], [Class], [State], [City], [pincode], [Email], [Address], [StudentFee], [Date_Reg]) VALUES (1, N'Munendra Singh', N'Seva Ram', N'01/05/1993', N'8006783283', N'9412258372', N'Male', N'SC', N'Farmer', N'Class-A', N'', N'', 12345, N'munendrasingh93mahi@gmail.com', N'Bareilly', N'5000.00', CAST(0x0000AD11014C238C AS DateTime))
INSERT [dbo].[TBL_StudentRegistration] ([StudentReg_id], [StudentName], [Fathername], [StudentDOB], [Mobile], [Mobile1], [Gender], [Category], [Ocupation], [Class], [State], [City], [pincode], [Email], [Address], [StudentFee], [Date_Reg]) VALUES (2, N'Naval Kishore', N'Seva Ram', N'01/05/1983', N'8006783283', N'9412258372', N'Male', N'SC', N'Job-Govt', N'Class-B', N'1', N'1', 0, N'munendrasingh93mahi@gmail.com', N'Bareilly', N'no', CAST(0x0000AD1201316FE3 AS DateTime))
INSERT [dbo].[TBL_StudentRegistration] ([StudentReg_id], [StudentName], [Fathername], [StudentDOB], [Mobile], [Mobile1], [Gender], [Category], [Ocupation], [Class], [State], [City], [pincode], [Email], [Address], [StudentFee], [Date_Reg]) VALUES (3, N'Naval Kishore', N'Seva Ram', N'01/05/1983', N'8006783283', N'9412258372', N'Male', N'SC', N'Farmer', N'Class-B', N'1', N'1', 12345, N'munendrasingh93mahi@gmail.com', N'Bareilly', N'5000.00', CAST(0x0000AD12017864D9 AS DateTime))
SET IDENTITY_INSERT [dbo].[TBL_StudentRegistration] OFF
ALTER TABLE [dbo].[TBL_ComponentFee1]  WITH CHECK ADD FOREIGN KEY([cidd])
REFERENCES [dbo].[TBL_AddClass] ([Cl_id])
GO
USE [master]
GO
ALTER DATABASE [DB_SchoolManagement] SET  READ_WRITE 
GO
