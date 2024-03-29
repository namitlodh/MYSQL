USE [master]
GO
/****** Object:  Database [employeeDB]    Script Date: 2/19/2024 4:50:16 PM ******/
CREATE DATABASE [employeeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'employeeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\employeeDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'employeeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\employeeDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [employeeDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [employeeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [employeeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [employeeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [employeeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [employeeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [employeeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [employeeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [employeeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [employeeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [employeeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [employeeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [employeeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [employeeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [employeeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [employeeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [employeeDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [employeeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [employeeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [employeeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [employeeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [employeeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [employeeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [employeeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [employeeDB] SET RECOVERY FULL 
GO
ALTER DATABASE [employeeDB] SET  MULTI_USER 
GO
ALTER DATABASE [employeeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [employeeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [employeeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [employeeDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [employeeDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [employeeDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'employeeDB', N'ON'
GO
ALTER DATABASE [employeeDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [employeeDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [employeeDB]
GO
/****** Object:  Table [dbo].[company_info]    Script Date: 2/19/2024 4:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company_info](
	[id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[company_info_bckp]    Script Date: 2/19/2024 4:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company_info_bckp](
	[id] [int] NULL,
	[revenue] [decimal](10, 2) NULL,
	[projectid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 2/19/2024 4:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[accno] [int] NULL,
	[cust_name] [char](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department_info]    Script Date: 2/19/2024 4:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department_info](
	[deptId] [int] NOT NULL,
	[deptname] [varchar](50) NULL,
	[deptlocation] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emp_details]    Script Date: 2/19/2024 4:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emp_details](
	[id] [int] NULL,
	[name] [varchar](10) NULL,
	[salary] [decimal](18, 0) NULL,
	[phone] [varchar](10) NULL,
	[project_completed] [int] NOT NULL,
	[projectid] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emp_details_bckp]    Script Date: 2/19/2024 4:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emp_details_bckp](
	[id] [int] NULL,
	[name] [varchar](10) NULL,
	[salary] [decimal](18, 0) NULL,
	[phone] [varchar](10) NULL,
	[project_completed] [int] NOT NULL,
	[projectid] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emp_info_bckp]    Script Date: 2/19/2024 4:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emp_info_bckp](
	[empId] [int] NOT NULL,
	[empName] [varchar](20) NOT NULL,
	[empSalary] [decimal](10, 2) NOT NULL,
	[job] [varchar](20) NULL,
	[phone] [varchar](50) NULL,
	[deptId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user_login]    Script Date: 2/19/2024 4:50:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user_login](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[customer] ([accno], [cust_name]) VALUES (123456, N'Namit Lodh                                        ')
GO
INSERT [dbo].[department_info] ([deptId], [deptname], [deptlocation]) VALUES (10, N'Development', N'California')
INSERT [dbo].[department_info] ([deptId], [deptname], [deptlocation]) VALUES (20, N'Marketing', N'Mumbai')
INSERT [dbo].[department_info] ([deptId], [deptname], [deptlocation]) VALUES (30, N'Accounts', N'New York')
INSERT [dbo].[department_info] ([deptId], [deptname], [deptlocation]) VALUES (40, N'Management', N'Sydney')
GO
INSERT [dbo].[emp_details] ([id], [name], [salary], [phone], [project_completed], [projectid]) VALUES (1, N'Ishwar', CAST(25000 AS Decimal(18, 0)), NULL, 5, NULL)
INSERT [dbo].[emp_details] ([id], [name], [salary], [phone], [project_completed], [projectid]) VALUES (2, N'steve', CAST(5000 AS Decimal(18, 0)), N'3462466245', 5, 4)
GO
INSERT [dbo].[emp_details_bckp] ([id], [name], [salary], [phone], [project_completed], [projectid]) VALUES (1, N'Ishwar', CAST(25000 AS Decimal(18, 0)), NULL, 5, NULL)
INSERT [dbo].[emp_details_bckp] ([id], [name], [salary], [phone], [project_completed], [projectid]) VALUES (2, N'steve', CAST(5000 AS Decimal(18, 0)), N'3462466245', 5, 4)
GO
INSERT [dbo].[emp_info_bckp] ([empId], [empName], [empSalary], [job], [phone], [deptId]) VALUES (1, N'ADAM', CAST(30000.00 AS Decimal(10, 2)), N'Developer', N'7878999012', 10)
INSERT [dbo].[emp_info_bckp] ([empId], [empName], [empSalary], [job], [phone], [deptId]) VALUES (2, N'Smith', CAST(50000.00 AS Decimal(10, 2)), N'Developer', N'8970122334', 10)
INSERT [dbo].[emp_info_bckp] ([empId], [empName], [empSalary], [job], [phone], [deptId]) VALUES (3, N'Mike', CAST(68000.00 AS Decimal(10, 2)), N'CEO', N'8812612378', 30)
INSERT [dbo].[emp_info_bckp] ([empId], [empName], [empSalary], [job], [phone], [deptId]) VALUES (4, N'James', CAST(41000.00 AS Decimal(10, 2)), N'Accoutant', N'2352353532', 40)
INSERT [dbo].[emp_info_bckp] ([empId], [empName], [empSalary], [job], [phone], [deptId]) VALUES (5, N'Brain', CAST(32000.00 AS Decimal(10, 2)), N'Tester', N'2389138908', 50)
INSERT [dbo].[emp_info_bckp] ([empId], [empName], [empSalary], [job], [phone], [deptId]) VALUES (6, N'Tina', CAST(26000.00 AS Decimal(10, 2)), N'Designer', N'2343241789', 20)
INSERT [dbo].[emp_info_bckp] ([empId], [empName], [empSalary], [job], [phone], [deptId]) VALUES (7, N'Zack', CAST(16000.00 AS Decimal(10, 2)), N'Clerk', N'7436242267', 40)
GO
SET IDENTITY_INSERT [dbo].[tbl_user_login] ON 

INSERT [dbo].[tbl_user_login] ([user_id], [username], [email], [password]) VALUES (1, N'ironman', N'tony@gmail.com', N'tony123')
INSERT [dbo].[tbl_user_login] ([user_id], [username], [email], [password]) VALUES (2, N'spiderman', N'pparker@gmail.com', N'peter123')
INSERT [dbo].[tbl_user_login] ([user_id], [username], [email], [password]) VALUES (3, N'captain', N'steve@gmail.com', N'america123')
INSERT [dbo].[tbl_user_login] ([user_id], [username], [email], [password]) VALUES (4, N'wonder', N'wonder@gmail.com', N'wonder123')
SET IDENTITY_INSERT [dbo].[tbl_user_login] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_user__AB6E6164D73D0A03]    Script Date: 2/19/2024 4:50:17 PM ******/
ALTER TABLE [dbo].[tbl_user_login] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_user__F3DBC572F25513C0]    Script Date: 2/19/2024 4:50:17 PM ******/
ALTER TABLE [dbo].[tbl_user_login] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[emp_details] ADD  DEFAULT ((5)) FOR [project_completed]
GO
USE [master]
GO
ALTER DATABASE [employeeDB] SET  READ_WRITE 
GO
