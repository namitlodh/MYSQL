USE [sample-company-db]
GO
/****** Object:  Table [dbo].[company_info]    Script Date: 2/19/2024 10:40:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company_info](
	[id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[company_info_bckp]    Script Date: 2/19/2024 10:40:07 PM ******/
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
/****** Object:  Table [dbo].[customer]    Script Date: 2/19/2024 10:40:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[accno] [int] NULL,
	[cust_name] [char](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department_info]    Script Date: 2/19/2024 10:40:07 PM ******/
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
/****** Object:  Table [dbo].[emp_details]    Script Date: 2/19/2024 10:40:07 PM ******/
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
/****** Object:  Table [dbo].[emp_details_bckp]    Script Date: 2/19/2024 10:40:07 PM ******/
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
/****** Object:  Table [dbo].[emp_info_bckp]    Script Date: 2/19/2024 10:40:07 PM ******/
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
/****** Object:  Table [dbo].[tbl_user_login]    Script Date: 2/19/2024 10:40:07 PM ******/
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
/****** Object:  Index [UQ__tbl_user__AB6E61641846D789]    Script Date: 2/19/2024 10:40:07 PM ******/
ALTER TABLE [dbo].[tbl_user_login] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbl_user__F3DBC572D7D149FC]    Script Date: 2/19/2024 10:40:07 PM ******/
ALTER TABLE [dbo].[tbl_user_login] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[emp_details] ADD  DEFAULT ((5)) FOR [project_completed]
GO
