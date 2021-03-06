USE master
CREATE DATABASE DDS_DALT
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


USE DDS_DALT
GO
CREATE FUNCTION CheckLeapYear
(@year INT)
RETURNS int
AS
BEGIN
    IF(@year % 400 = 0) RETURN 1;
	ELSE
		BEGIN
			IF(@year % 4 = 0 AND @year % 100 <>0) RETURN 1;
		END

	RETURN 0
END

GO

GO
CREATE PROCEDURE CheckDay 
@year INT
AS
BEGIN
	DECLARE @leapyear INT =0,
	@month INT = 1,
	@day int = 1,
	@february int = 28,
	@monthID INT

	IF NOT EXISTS (SELECT DISTINCT Nam FROM dbo.ThangTrongNam WHERE Nam = @year)
	BEGIN
		--Insert into table MonthInYear
		WHILE @month <= 12
		BEGIN
			INSERT INTO dbo.ThangTrongNam
			VALUES (@month, @year); 
			SET @month = @month + 1;
		END
		SET @month = 1;


		--Insert into table DayInMonth
		WHILE @month <= 12
		BEGIN
			--Get MonthID
			SELECT @monthID = IDThang FROM dbo.ThangTrongNam 
			WHERE Thang = @month AND Nam = @year

			--Month with 31 days
			IF (@month IN (1,3,5,7,8,10,12))
			BEGIN
				WHILE @day <= 31
				BEGIN
					INSERT INTO dbo.NgayTrongThang
					VALUES (@monthID,@day)
					SET @day = @day + 1
				END
			END
			
			--Month with 30 days
			IF (@month IN (4,6,9,11))
			BEGIN
				WHILE @day <= 30
				BEGIN
					INSERT INTO dbo.NgayTrongThang
					VALUES (@monthID,@day)
					SET @day = @day + 1
				END
			END

			--February
			IF (@month = 2)
			BEGIN
				EXEC @leapyear = dbo.CheckLeapYear @year 
				IF (@leapyear = 1) SET @february = 29
				WHILE @day <= @february
				BEGIN
					INSERT INTO dbo.NgayTrongThang
					VALUES (@monthID,@day)
					SET @day = @day + 1
				END	
			END

			SET @month = @month + 1
			SET @day = 1
		END
	END
END
GO 