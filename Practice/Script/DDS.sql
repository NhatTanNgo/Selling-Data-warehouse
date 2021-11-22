USE [DDS_DALT]
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 11/22/2021 4:43:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[IDCuaHang] [int] IDENTITY(1,1) NOT NULL,
	[MaCH] [int] NULL,
	[TenCH] [varchar](50) NULL,
	[MaLoaiCH] [int] NULL,
	[TenLoaiCH] [varchar](50) NULL,
	[Nuoc] [int] NULL,
	[NguonDuLieu] [int] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCuaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanhThu]    Script Date: 11/22/2021 4:43:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhThu](
	[IDDoanhThu] [int] IDENTITY(1,1) NOT NULL,
	[IDNgay] [int] NOT NULL,
	[IDCuaHang] [int] NOT NULL,
	[IDSanPham] [int] NOT NULL,
	[IDKhachHang] [int] NOT NULL,
	[DoanhThu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDoanhThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/22/2021 4:43:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[TenKH] [varchar](50) NULL,
	[DiaChi] [varchar](50) NULL,
	[MaNuoc] [int] NULL,
	[NguonDuLieu] [int] NOT NULL,
	[TrangThai] [int] NULL,
	[GioiTinh] [char](1) NULL,
	[NgheNghiep] [varchar](30) NULL,
	[SoThich] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NgayTrongThang]    Script Date: 11/22/2021 4:43:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NgayTrongThang](
	[IDNgay] [int] IDENTITY(1,1) NOT NULL,
	[IDThang] [int] NULL,
	[Ngay] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNgay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/22/2021 4:43:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[IDSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NULL,
	[TenSP] [varchar](50) NULL,
	[GiaSP] [int] NULL,
	[LoaiSP] [int] NULL,
	[NguonDuLieu] [int] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThangTrongNam]    Script Date: 11/22/2021 4:43:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThangTrongNam](
	[IDThang] [int] IDENTITY(1,1) NOT NULL,
	[Thang] [int] NULL,
	[Nam] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDThang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DoanhThu]  WITH CHECK ADD FOREIGN KEY([IDCuaHang])
REFERENCES [dbo].[CuaHang] ([IDCuaHang])
GO
ALTER TABLE [dbo].[DoanhThu]  WITH CHECK ADD FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[DoanhThu]  WITH CHECK ADD FOREIGN KEY([IDNgay])
REFERENCES [dbo].[NgayTrongThang] ([IDNgay])
GO
ALTER TABLE [dbo].[DoanhThu]  WITH CHECK ADD FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[NgayTrongThang]  WITH CHECK ADD FOREIGN KEY([IDThang])
REFERENCES [dbo].[ThangTrongNam] ([IDThang])
GO
