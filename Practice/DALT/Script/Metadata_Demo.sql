create database [MetaData_Demo]
go
USE [MetaData_Demo]
GO
/****** Object:  Table [dbo].[Data_Flow]    Script Date: 20/11/2020 1:53:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Data_Flow](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[LSET] [datetime] NULL,
	[CET] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Data_Flow] ON 

INSERT [dbo].[Data_Flow] ([Id], [Name], [LSET], [CET]) VALUES (1, N'Jupiter_Nuoc', CAST(N'2020-11-20 00:00:00.000' AS DateTime), CAST(N'2020-11-20 13:31:01.083' AS DateTime))
INSERT [dbo].[Data_Flow] ([Id], [Name], [LSET], [CET]) VALUES (2, N'Jupiter_LoaiCuaHang', CAST(N'2020-11-20 13:31:01.100' AS DateTime), CAST(N'2020-11-20 13:31:01.100' AS DateTime))
INSERT [dbo].[Data_Flow] ([Id], [Name], [LSET], [CET]) VALUES (3, N'Jupiter_CuaHang', CAST(N'2020-11-20 13:31:01.030' AS DateTime), CAST(N'2020-11-20 13:31:01.030' AS DateTime))
INSERT [dbo].[Data_Flow] ([Id], [Name], [LSET], [CET]) VALUES (1003, N'Jupiter_SanPham', CAST(N'2020-11-20 13:31:01.027' AS DateTime), CAST(N'2020-11-20 13:31:01.027' AS DateTime))
INSERT [dbo].[Data_Flow] ([Id], [Name], [LSET], [CET]) VALUES (1004, N'Jupiter_LoaiSanPham', CAST(N'2020-11-20 13:31:01.110' AS DateTime), CAST(N'2020-11-20 13:31:01.110' AS DateTime))
INSERT [dbo].[Data_Flow] ([Id], [Name], [LSET], [CET]) VALUES (1005, N'Jade_KhachHang', CAST(N'2020-11-20 13:31:01.037' AS DateTime), CAST(N'2020-11-20 13:31:01.037' AS DateTime))
INSERT [dbo].[Data_Flow] ([Id], [Name], [LSET], [CET]) VALUES (1006, N'WebTower9_KhachHang', CAST(N'2020-11-19 20:35:18.227' AS DateTime), CAST(N'2020-11-20 13:31:01.970' AS DateTime))
INSERT [dbo].[Data_Flow] ([Id], [Name], [LSET], [CET]) VALUES (1007, N'DDS_KhachHang', CAST(N'2020-11-20 13:44:41.380' AS DateTime), CAST(N'2020-11-20 13:44:41.380' AS DateTime))
INSERT [dbo].[Data_Flow] ([Id], [Name], [LSET], [CET]) VALUES (1008, N'DDS_CuaHang', CAST(N'2020-11-20 13:48:50.490' AS DateTime), CAST(N'2020-11-20 13:48:50.490' AS DateTime))
INSERT [dbo].[Data_Flow] ([Id], [Name], [LSET], [CET]) VALUES (1009, N'DDS_SanPham', CAST(N'2020-11-20 13:42:22.653' AS DateTime), CAST(N'2020-11-20 13:42:22.653' AS DateTime))
INSERT [dbo].[Data_Flow] ([Id], [Name], [LSET], [CET]) VALUES (1010, N'DDS_Ngay', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Data_Flow] OFF
