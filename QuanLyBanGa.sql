﻿USE [master]
GO

/****** Object:  Database QuanLyBanGa  ******/
CREATE DATABASE QuanLyBanGa

ALTER DATABASE QuanLyBanGa SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE QuanLyBanGa SET ANSI_NULLS OFF 
GO

ALTER DATABASE QuanLyBanGa SET ANSI_PADDING OFF 
GO

ALTER DATABASE QuanLyBanGa SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE QuanLyBanGa SET ARITHABORT OFF 
GO

ALTER DATABASE QuanLyBanGa SET AUTO_CLOSE OFF 
GO

ALTER DATABASE QuanLyBanGa SET AUTO_SHRINK OFF 
GO

ALTER DATABASE QuanLyBanGa SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE QuanLyBanGa SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE QuanLyBanGa SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE QuanLyBanGa SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE QuanLyBanGa SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE QuanLyBanGa SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE QuanLyBanGa SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE QuanLyBanGa SET  DISABLE_BROKER 
GO

ALTER DATABASE QuanLyBanGa SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE QuanLyBanGa SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE QuanLyBanGa SET TRUSTWORTHY OFF 
GO

ALTER DATABASE QuanLyBanGa SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE QuanLyBanGa SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE QuanLyBanGa SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE QuanLyBanGa SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE QuanLyBanGa SET RECOVERY SIMPLE 
GO

ALTER DATABASE QuanLyBanGa SET  MULTI_USER 
GO

ALTER DATABASE QuanLyBanGa SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE QuanLyBanGa SET DB_CHAINING OFF 
GO

ALTER DATABASE QuanLyBanGa SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE QuanLyBanGa SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE QuanLyBanGa SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE QuanLyBanGa SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE QuanLyBanGa SET QUERY_STORE = ON
GO

ALTER DATABASE QuanLyBanGa SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE QuanLyBanGa SET  READ_WRITE 
GO

/****** Open here ******/

use QuanLyBanGa
go

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ca_lam](
	[Ma ca] [int] NOT NULL,
	[Ten ca] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ca_lam] PRIMARY KEY CLUSTERED 
(
	[Ma ca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Chi_tiet_hoa_don_ban](
	[So HDB] [int] NOT NULL,
	[Ma binh] [int] NOT NULL,
	[So luong] [int] NULL,
	[Giam gia] [int] NULL,
	[Thanh tien] [int] NULL,
 CONSTRAINT [PK_Chi_tiet_hoa_don_ban] PRIMARY KEY CLUSTERED 
(
	[So HDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Chi_tiet_hoa_don_nhap](
	[So HDN] [int] NOT NULL,
	[Ma binh] [int] NULL,
	[So luong] [int] NULL,
	[Don gia] [int] NULL,
	[Giam gia] [int] NULL,
	[Thanh tien] [int] NULL,
 CONSTRAINT [PK_Chi_tiet_hoa_don_nhap] PRIMARY KEY CLUSTERED 
(
	[So HDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Cong_viec](
	[Ma cv] [int] NOT NULL,
	[Ten cv] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cong_viec] PRIMARY KEY CLUSTERED 
(
	[Ma cv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DM_binh_ga](
	[Ma binh] [int] NOT NULL,
	[Ten binh] [nvarchar](50) NULL,
	[Ma loai] [int] NULL,
	[Ma mau] [int] NULL,
	[Ma khoi luong] [int] NULL,
	[Ma nuoc sx] [int] NULL,
	[So luong] [int] NULL,
	[Don gia nhap] [int] NULL,
	[Don gia ban] [int] NULL,
	[Thoi gian bao hanh] [date] NULL,
	[Anh] [ntext] NULL,
	[Ghi chu] [nvarchar](50) NULL,
 CONSTRAINT [PK_DM_binh_ga] PRIMARY KEY CLUSTERED 
(
	[Ma binh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Hoa_don_ban](
	[So HDB] [int] NOT NULL,
	[Ma nv] [int] NULL,
	[Ngay ban] [date] NULL,
	[Ma khach] [int] NULL,
	[Tong tien] [int] NULL,
 CONSTRAINT [PK_Hoa_don_ban] PRIMARY KEY CLUSTERED 
(
	[So HDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Hoa_don_nhap](
	[So HDN] [int] NOT NULL,
	[Ma nv] [int] NULL,
	[Ngay nhap] [date] NULL,
	[Ma NCC] [int] NULL,
	[Tong tien] [int] NULL,
 CONSTRAINT [PK_Hoa_don_nhap] PRIMARY KEY CLUSTERED 
(
	[So HDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Khach_hang](
	[Ma khach] [int] NOT NULL,
	[Ten khach] [nvarchar](50) NULL,
	[Dia chi] [nvarchar](50) NULL,
	[Dien thoai] [int] NULL,
 CONSTRAINT [PK_Khach_hang] PRIMARY KEY CLUSTERED 
(
	[Ma khach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Khoi_luong](
	[Ma khoi luong] [int] NOT NULL,
 CONSTRAINT [PK_Khoi_luong] PRIMARY KEY CLUSTERED 
(
	[Ma khoi luong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Loai_ga](
	[Ma loai] [int] NOT NULL,
	[Ten loai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Loai_ga] PRIMARY KEY CLUSTERED 
(
	[Ma loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Mau](
	[Ma mau] [int] NOT NULL,
	[Ten mau] [nvarchar](50) NULL,
 CONSTRAINT [PK_mau] PRIMARY KEY CLUSTERED 
(
	[Ma mau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Nha_cung_cap](
	[Ma ncc] [int] NOT NULL,
	[Ten ncc] [nvarchar](50) NULL,
	[Dia chi] [nvarchar](50) NULL,
	[Dien thoai] [int] NULL,
 CONSTRAINT [PK_Nha_cung_cap] PRIMARY KEY CLUSTERED 
(
	[Ma ncc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Nhan_vien](
	[Ma nv] [int] NOT NULL,
	[Ten nv] [nvarchar](50) NULL,
	[Gioi tinh] [nvarchar](50) NULL,
	[Ngay sinh] [datetime] NULL,
	[Dien thoai] [int] NULL,
	[Dia chi] [nvarchar](50) NULL,
	[Ma ca] [int] NULL,
	[Ma cv] [int] NULL,
 CONSTRAINT [PK_Nhan_vien] PRIMARY KEY CLUSTERED 
(
	[Ma nv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Nuoc_sx](
	[Ma nuoc sx] [int] NOT NULL,
	[Ten nuoc sx] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nuoc_sx] PRIMARY KEY CLUSTERED 
(
	[Ma nuoc sx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/**** Next here ****/

ALTER TABLE [dbo].[Chi_tiet_hoa_don_ban]  WITH CHECK ADD  CONSTRAINT [FK_Chi_tiet_hoa_don_ban_DM_binh_ga1] FOREIGN KEY([Ma binh])
REFERENCES [dbo].[DM_binh_ga] ([Ma binh])
GO

ALTER TABLE [dbo].[Chi_tiet_hoa_don_ban] CHECK CONSTRAINT [FK_Chi_tiet_hoa_don_ban_DM_binh_ga1]
GO

ALTER TABLE [dbo].[Chi_tiet_hoa_don_nhap]  WITH CHECK ADD  CONSTRAINT [FK_Chi_tiet_hoa_don_nhap_DM_binh_ga1] FOREIGN KEY([Ma binh])
REFERENCES [dbo].[DM_binh_ga] ([Ma binh])
GO

ALTER TABLE [dbo].[Chi_tiet_hoa_don_nhap] CHECK CONSTRAINT [FK_Chi_tiet_hoa_don_nhap_DM_binh_ga1]
GO

ALTER TABLE [dbo].[DM_binh_ga]  WITH CHECK ADD  CONSTRAINT [FK_DM_binh_ga_Chi_tiet_hoa_don_ban] FOREIGN KEY([Don gia ban])
REFERENCES [dbo].[Chi_tiet_hoa_don_ban] ([So HDB])
GO

ALTER TABLE [dbo].[DM_binh_ga] CHECK CONSTRAINT [FK_DM_binh_ga_Chi_tiet_hoa_don_ban]
GO

ALTER TABLE [dbo].[DM_binh_ga]  WITH CHECK ADD  CONSTRAINT [FK_DM_binh_ga_Chi_tiet_hoa_don_nhap] FOREIGN KEY([Don gia nhap])
REFERENCES [dbo].[Chi_tiet_hoa_don_nhap] ([So HDN])
GO

ALTER TABLE [dbo].[DM_binh_ga] CHECK CONSTRAINT [FK_DM_binh_ga_Chi_tiet_hoa_don_nhap]
GO

ALTER TABLE [dbo].[DM_binh_ga]  WITH CHECK ADD  CONSTRAINT [FK_DM_binh_ga_Khoi_luong] FOREIGN KEY([Ma khoi luong])
REFERENCES [dbo].[Khoi_luong] ([Ma khoi luong])
GO

ALTER TABLE [dbo].[DM_binh_ga] CHECK CONSTRAINT [FK_DM_binh_ga_Khoi_luong]
GO

ALTER TABLE [dbo].[DM_binh_ga]  WITH CHECK ADD  CONSTRAINT [FK_DM_binh_ga_Loai_ga] FOREIGN KEY([Ma loai])
REFERENCES [dbo].[Loai_ga] ([Ma loai])
GO

ALTER TABLE [dbo].[DM_binh_ga] CHECK CONSTRAINT [FK_DM_binh_ga_Loai_ga]
GO

ALTER TABLE [dbo].[DM_binh_ga]  WITH CHECK ADD  CONSTRAINT [FK_DM_binh_ga_Mau] FOREIGN KEY([Ma mau])
REFERENCES [dbo].[Mau] ([Ma mau])
GO

ALTER TABLE [dbo].[DM_binh_ga] CHECK CONSTRAINT [FK_DM_binh_ga_Mau]
GO

ALTER TABLE [dbo].[DM_binh_ga]  WITH CHECK ADD  CONSTRAINT [FK_DM_binh_ga_Nuoc_sx] FOREIGN KEY([Ma nuoc sx])
REFERENCES [dbo].[Nuoc_sx] ([Ma nuoc sx])
GO

ALTER TABLE [dbo].[DM_binh_ga] CHECK CONSTRAINT [FK_DM_binh_ga_Nuoc_sx]
GO

ALTER TABLE [dbo].[Hoa_don_ban]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_don_ban_Khach_hang] FOREIGN KEY([Ma khach])
REFERENCES [dbo].[Khach_hang] ([Ma khach])
GO

ALTER TABLE [dbo].[Hoa_don_ban] CHECK CONSTRAINT [FK_Hoa_don_ban_Khach_hang]
GO

ALTER TABLE [dbo].[Hoa_don_ban]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_don_ban_Nhan_vien] FOREIGN KEY([Ma nv])
REFERENCES [dbo].[Nhan_vien] ([Ma nv])
GO

ALTER TABLE [dbo].[Hoa_don_ban] CHECK CONSTRAINT [FK_Hoa_don_ban_Nhan_vien]
GO

ALTER TABLE [dbo].[Hoa_don_nhap]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_don_nhap_Nha_cung_cap] FOREIGN KEY([Ma NCC])
REFERENCES [dbo].[Nha_cung_cap] ([Ma ncc])
GO

ALTER TABLE [dbo].[Hoa_don_nhap] CHECK CONSTRAINT [FK_Hoa_don_nhap_Nha_cung_cap]
GO

ALTER TABLE [dbo].[Hoa_don_nhap]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_don_nhap_Nhan_vien] FOREIGN KEY([Ma nv])
REFERENCES [dbo].[Nhan_vien] ([Ma nv])
GO

ALTER TABLE [dbo].[Hoa_don_nhap] CHECK CONSTRAINT [FK_Hoa_don_nhap_Nhan_vien]
GO


ALTER TABLE [dbo].[Nhan_vien]  WITH CHECK ADD  CONSTRAINT [FK_Nhan_vien_Ca_lam] FOREIGN KEY([Ma ca])
REFERENCES [dbo].[Ca_lam] ([Ma ca])
GO

ALTER TABLE [dbo].[Nhan_vien] CHECK CONSTRAINT [FK_Nhan_vien_Ca_lam]
GO

ALTER TABLE [dbo].[Nhan_vien]  WITH CHECK ADD  CONSTRAINT [FK_Nhan_vien_Cong_viec] FOREIGN KEY([Ma cv])
REFERENCES [dbo].[Cong_viec] ([Ma cv])
GO

ALTER TABLE [dbo].[Nhan_vien] CHECK CONSTRAINT [FK_Nhan_vien_Cong_viec]
GO



