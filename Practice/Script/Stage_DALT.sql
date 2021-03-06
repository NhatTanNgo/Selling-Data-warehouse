USE [Stage_DALT]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon_Jade_Stage]    Script Date: 12/2/2021 4:51:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon_Jade_Stage](
	[MaChiTiet] [int] NOT NULL,
	[MaHD] [varchar](4) NULL,
	[MaSP] [varchar](4) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDon_Jade1] PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon_WebTower9_Stage]    Script Date: 12/2/2021 4:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon_WebTower9_Stage](
	[MaChiTiet] [int] NOT NULL,
	[MaHD] [varchar](4) NULL,
	[MaSP] [varchar](4) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDon_Jade] PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country_tmp]    Script Date: 12/2/2021 4:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country_tmp](
	[MaNuoc] [varchar](4) NULL,
	[TenNuoc] [varchar](50) NULL,
	[SrcID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuaHang_Jupiter_stage]    Script Date: 12/2/2021 4:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang_Jupiter_stage](
	[MaCH] [varchar](4) NOT NULL,
	[TenCH] [varchar](50) NULL,
	[LoaiCH] [varchar](4) NULL,
	[Nuoc] [varchar](4) NULL,
	[TrangThai] [int] NULL,
	[TenNuoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_CuaHang_Jupiter] PRIMARY KEY CLUSTERED 
(
	[MaCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon_Jade_Stage]    Script Date: 12/2/2021 4:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon_Jade_Stage](
	[MaHD] [varchar](4) NOT NULL,
	[MaKH] [varchar](4) NOT NULL,
	[MaCH] [varchar](4) NOT NULL,
	[NgayBan] [datetime] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_HoaDon_Jade1] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon_WebTower9_Stage]    Script Date: 12/2/2021 4:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon_WebTower9_Stage](
	[MaHD] [varchar](4) NOT NULL,
	[MaKH] [varchar](4) NULL,
	[MaCH] [varchar](4) NULL,
	[NgayBan] [datetime] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_HoaDon_Jade] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang_Jade_Stage]    Script Date: 12/2/2021 4:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang_Jade_Stage](
	[MaKH] [varchar](4) NOT NULL,
	[TenKH] [varchar](50) NULL,
	[DiaChi] [varchar](50) NULL,
	[TrangThai] [int] NULL,
	[GioiTinh] [char](1) NULL,
	[SoThich] [varchar](30) NULL,
	[NgheNghiep] [varchar](30) NULL,
 CONSTRAINT [PK_KhachHang_Jade] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang_WebTower9_stage]    Script Date: 12/2/2021 4:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang_WebTower9_stage](
	[MaKH] [varchar](4) NOT NULL,
	[TenKH] [varchar](50) NULL,
	[TenNuoc] [varchar](50) NULL,
	[TrangThai] [int] NULL,
	[GioiThich] [char](1) NULL,
	[SoThich] [varchar](30) NULL,
	[NgheNghiep] [varchar](30) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiCuaHang_Jupiter_stage]    Script Date: 12/2/2021 4:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiCuaHang_Jupiter_stage](
	[MaLoaiCH] [varchar](4) NOT NULL,
	[TenLoaiCH] [varchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_LoaiCuaHang_Jupiter] PRIMARY KEY CLUSTERED 
(
	[MaLoaiCH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham_Jupiter_stage]    Script Date: 12/2/2021 4:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham_Jupiter_stage](
	[MaLoaiSP] [varchar](4) NOT NULL,
	[TenLoaiSP] [varchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_LoaiSanPham_Jupiter] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nuoc_Jupiter_stage]    Script Date: 12/2/2021 4:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nuoc_Jupiter_stage](
	[MaNuoc] [varchar](4) NOT NULL,
	[TenNuoc] [varchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_Nuoc_Jupiter] PRIMARY KEY CLUSTERED 
(
	[MaNuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham_Jupiter_stage]    Script Date: 12/2/2021 4:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham_Jupiter_stage](
	[MaSP] [varchar](4) NOT NULL,
	[TenSP] [varchar](50) NULL,
	[GiaSP] [int] NULL,
	[LoaiSP] [varchar](4) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_SanPham_Jupiter] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 12/2/2021 4:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED 
(
	[principal_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
