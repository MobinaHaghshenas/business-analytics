USE [master]
GO
/****** Object:  Database [EX3]    Script Date: 6/6/2022 5:52:38 AM ******/
CREATE DATABASE [EX3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EX3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\EX3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EX3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\EX3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EX3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EX3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EX3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EX3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EX3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EX3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EX3] SET ARITHABORT OFF 
GO
ALTER DATABASE [EX3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EX3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EX3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EX3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EX3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EX3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EX3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EX3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EX3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EX3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EX3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EX3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EX3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EX3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EX3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EX3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EX3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EX3] SET RECOVERY FULL 
GO
ALTER DATABASE [EX3] SET  MULTI_USER 
GO
ALTER DATABASE [EX3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EX3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EX3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EX3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EX3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EX3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EX3', N'ON'
GO
ALTER DATABASE [EX3] SET QUERY_STORE = OFF
GO
USE [EX3]
GO
/****** Object:  Table [dbo].[tbl_accounting]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_accounting](
	[ID] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[Contractor_id] [int] NOT NULL,
	[Reports_id] [nvarchar](max) NOT NULL,
	[Phonenumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbt_accounting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_buyer]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_buyer](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Lastname] [nchar](10) NOT NULL,
	[Phonenumber] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_buyer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_consumer]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_consumer](
	[ID] [int] NOT NULL,
	[PhoneNum] [nvarchar](50) NOT NULL,
	[jobdep_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_consumer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Consumption]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Consumption](
	[ID] [int] NOT NULL,
	[warehouse_id] [int] NOT NULL,
	[consumer_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Consumption] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Contractor]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Contractor](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Phonenumber] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tbt_Contractor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Course]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Course](
	[ID] [int] NOT NULL,
	[Course_id] [int] NOT NULL,
	[CourseName] [nvarchar](50) NOT NULL,
	[CourseHours] [smallint] NULL,
 CONSTRAINT [PK_tbt_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_employee]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_employee](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Lastname] [nchar](50) NOT NULL,
	[Job] [nchar](20) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[PhoneNum] [nvarchar](20) NOT NULL,
	[Education] [nvarchar](max) NOT NULL,
	[Salary] [int] NOT NULL,
	[jobdep_id] [int] NOT NULL,
	[trainingdep_id] [int] NULL,
 CONSTRAINT [PK_tbt_employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_factor]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_factor](
	[ID] [int] NOT NULL,
	[buyer_id] [int] NOT NULL,
	[productInformation] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_factor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_jobdep]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_jobdep](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JobTitel] [nchar](50) NOT NULL,
	[EmployeeNum] [int] NULL,
	[employee_id] [int] NOT NULL,
	[PhoneNum] [nvarchar](20) NULL,
 CONSTRAINT [PK_tbl_jobdep] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ManufacturedProduction]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ManufacturedProduction](
	[ID] [int] NOT NULL,
	[Production_id] [int] NOT NULL,
	[producttype] [nchar](20) NOT NULL,
	[warehouse_id] [int] NOT NULL,
	[Numberofproduct] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_ManufacturedProduction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Phurchse]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Phurchse](
	[ID] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[Supplyer_id] [int] NOT NULL,
	[Primarysubstance_id] [int] NOT NULL,
	[Phonenumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbt_Phurchse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Primarysubstance]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Primarysubstance](
	[ID] [int] NOT NULL,
	[PrimarysubstanceType] [nvarchar](50) NOT NULL,
	[inventory] [int] NOT NULL,
	[warehouse_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Primarysubstance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Production]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Production](
	[ID] [int] NOT NULL,
	[Primarysubstance_id] [int] NOT NULL,
	[time] [smallint] NOT NULL,
	[ManufacturedProduction_id] [int] NOT NULL,
	[ProductionRate] [int] NOT NULL,
 CONSTRAINT [PK_tbl_Production] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_sales]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_sales](
	[ID] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[factor_id] [int] NOT NULL,
	[warehouse_id] [int] NOT NULL,
	[PhoneNum] [nvarchar](50) NOT NULL,
	[jobdep_id] [int] NOT NULL,
	[buyer_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_sales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Supplyer]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Supplyer](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Phonenumber] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tbt_Supplyer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Training]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Training](
	[ID] [int] NOT NULL,
	[course_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[coursename] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbt_Trainingdep] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_warehouse]    Script Date: 6/6/2022 5:52:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_warehouse](
	[ID] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[Primarysubstance_id] [int] NOT NULL,
	[ManufacturedProduction_id] [int] NOT NULL,
	[inventory] [int] NOT NULL,
 CONSTRAINT [PK_tbl_warehouse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_consumer]  WITH CHECK ADD  CONSTRAINT [FK_tbl_consumer_tbl_jobdep] FOREIGN KEY([jobdep_id])
REFERENCES [dbo].[tbl_jobdep] ([ID])
GO
ALTER TABLE [dbo].[tbl_consumer] CHECK CONSTRAINT [FK_tbl_consumer_tbl_jobdep]
GO
ALTER TABLE [dbo].[tbl_Consumption]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Consumption_tbl_consumer] FOREIGN KEY([consumer_id])
REFERENCES [dbo].[tbl_consumer] ([ID])
GO
ALTER TABLE [dbo].[tbl_Consumption] CHECK CONSTRAINT [FK_tbl_Consumption_tbl_consumer]
GO
ALTER TABLE [dbo].[tbl_employee]  WITH CHECK ADD  CONSTRAINT [FK_tbt_employee_tbl_jobdep] FOREIGN KEY([jobdep_id])
REFERENCES [dbo].[tbl_jobdep] ([ID])
GO
ALTER TABLE [dbo].[tbl_employee] CHECK CONSTRAINT [FK_tbt_employee_tbl_jobdep]
GO
ALTER TABLE [dbo].[tbl_ManufacturedProduction]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ManufacturedProduction_tbl_ManufacturedProduction] FOREIGN KEY([Production_id])
REFERENCES [dbo].[tbl_ManufacturedProduction] ([ID])
GO
ALTER TABLE [dbo].[tbl_ManufacturedProduction] CHECK CONSTRAINT [FK_tbl_ManufacturedProduction_tbl_ManufacturedProduction]
GO
ALTER TABLE [dbo].[tbl_Primarysubstance]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Primarysubstance_tbl_warehouse] FOREIGN KEY([warehouse_id])
REFERENCES [dbo].[tbl_warehouse] ([ID])
GO
ALTER TABLE [dbo].[tbl_Primarysubstance] CHECK CONSTRAINT [FK_tbl_Primarysubstance_tbl_warehouse]
GO
ALTER TABLE [dbo].[tbl_Production]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Production_tbl_ManufacturedProduction] FOREIGN KEY([ManufacturedProduction_id])
REFERENCES [dbo].[tbl_ManufacturedProduction] ([ID])
GO
ALTER TABLE [dbo].[tbl_Production] CHECK CONSTRAINT [FK_tbl_Production_tbl_ManufacturedProduction]
GO
USE [master]
GO
ALTER DATABASE [EX3] SET  READ_WRITE 
GO
