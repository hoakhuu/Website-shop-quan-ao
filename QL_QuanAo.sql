USE [master]
GO
/****** Object:  Database [QL_QUANAOO]    Script Date: 09/01/2023 11:18:44 CH ******/
CREATE DATABASE [QL_QUANAOO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_QUANAOO_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QL_QUANAOO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_QUANAOO_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QL_QUANAOO.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QL_QUANAOO] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_QUANAOO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_QUANAOO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QL_QUANAOO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_QUANAOO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_QUANAOO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_QUANAOO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_QUANAOO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_QUANAOO] SET  MULTI_USER 
GO
ALTER DATABASE [QL_QUANAOO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_QUANAOO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_QUANAOO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_QUANAOO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_QUANAOO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_QUANAOO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QL_QUANAOO] SET QUERY_STORE = OFF
GO
USE [QL_QUANAOO]
GO
/****** Object:  Table [dbo].[BRAND]    Script Date: 09/01/2023 11:18:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BRAND](
	[MaBrand] [varchar](6) NOT NULL,
	[TenBrand] [nvarchar](30) NULL,
	[HinhMH] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBrand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BUYER]    Script Date: 09/01/2023 11:18:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BUYER](
	[MaBuyer] [varchar](6) NOT NULL,
	[TenBuyer] [nvarchar](150) NULL,
	[SDT] [varchar](20) NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
	[MaLogin] [varchar](6) NOT NULL,
	[AvatarBuyer] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBuyer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CART]    Script Date: 09/01/2023 11:18:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CART](
	[ThoiGian] [date] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Size] [varchar](5) NOT NULL,
	[MaGioHang] [varchar](6) NOT NULL,
	[MaBuyer] [varchar](6) NOT NULL,
	[MaSP] [varchar](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 09/01/2023 11:18:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[MaLoai] [varchar](6) NOT NULL,
	[TenLoai] [varchar](40) NOT NULL,
	[HinhMH] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuDatHang]    Script Date: 09/01/2023 11:18:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuDatHang](
	[IDLichSu] [varchar](10) NOT NULL,
	[SanPhamLS] [nvarchar](max) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
	[ThanhTien] [int] NULL,
	[TenShop] [nvarchar](100) NULL,
	[DiaChiShop] [nvarchar](100) NULL,
	[SDT] [varchar](20) NULL,
	[HinhSP] [varchar](500) NULL,
	[MaBuyer] [varchar](50) NULL,
	[size] [varchar](50) NULL,
	[MaSP] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDLichSu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGINS]    Script Date: 09/01/2023 11:18:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGINS](
	[MaLogin] [varchar](6) NOT NULL,
	[TenLogin] [varchar](30) NOT NULL,
	[MatKhauLogin] [varchar](20) NOT NULL,
	[VaiTro] [varchar](15) NOT NULL,
	[AVT] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MANAGE]    Script Date: 09/01/2023 11:18:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MANAGE](
	[MaQL] [varchar](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER_DETAILS]    Script Date: 09/01/2023 11:18:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAILS](
	[MaSPChiTiet] [varchar](6) NOT NULL,
	[MaQL] [varchar](6) NOT NULL,
	[MaGioHang] [varchar](6) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSPChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 09/01/2023 11:18:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[MaSP] [varchar](6) NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[Hinh1] [varchar](50) NOT NULL,
	[Hinh2] [varchar](50) NOT NULL,
	[Hinh3] [varchar](50) NOT NULL,
	[DonGia] [int] NOT NULL,
	[TinhTrang] [varchar](50) NOT NULL,
	[KichThuoc1] [varchar](5) NOT NULL,
	[KichThuoc2] [varchar](5) NOT NULL,
	[KichThuoc3] [varchar](5) NOT NULL,
	[MaQL] [varchar](6) NOT NULL,
	[MaLoai] [varchar](6) NULL,
	[MaBrand] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SELLER]    Script Date: 09/01/2023 11:18:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SELLER](
	[MaSeller] [varchar](6) NOT NULL,
	[TenSeller] [nvarchar](max) NULL,
	[SDT] [varchar](15) NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
	[MaLogin] [varchar](6) NOT NULL,
	[MaQL] [varchar](6) NOT NULL,
	[AvatarSeller] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSeller] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinDon]    Script Date: 09/01/2023 11:18:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinDon](
	[MaInfor] [varchar](10) NOT NULL,
	[Mabuyer] [varchar](10) NULL,
	[Masp] [varchar](10) NULL,
	[size] [varchar](10) NULL,
	[soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaInfor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VOUCHER]    Script Date: 09/01/2023 11:18:44 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VOUCHER](
	[MaGiamGia] [varchar](10) NOT NULL,
	[MaQL] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BRAND] ([MaBrand], [TenBrand], [HinhMH]) VALUES (N'L001', N'Gucci', N'gucci.jpg')
INSERT [dbo].[BRAND] ([MaBrand], [TenBrand], [HinhMH]) VALUES (N'L002', N'Zara', N'zara.jpg')
INSERT [dbo].[BRAND] ([MaBrand], [TenBrand], [HinhMH]) VALUES (N'L003', N'Rolex', N'rolex.jpg')
INSERT [dbo].[BRAND] ([MaBrand], [TenBrand], [HinhMH]) VALUES (N'L004', N'Versace', N'hermer.jpg')
INSERT [dbo].[BRAND] ([MaBrand], [TenBrand], [HinhMH]) VALUES (N'L005', N'YSL', N'ysl.jpg')
INSERT [dbo].[BRAND] ([MaBrand], [TenBrand], [HinhMH]) VALUES (N'L006', N'PUMA', N'puma.jpg')
INSERT [dbo].[BRAND] ([MaBrand], [TenBrand], [HinhMH]) VALUES (N'L007', N'HERMER', N'hermer.jpg')
GO
INSERT [dbo].[BUYER] ([MaBuyer], [TenBuyer], [SDT], [DiaChi], [MaLogin], [AvatarBuyer]) VALUES (N'BR01', N'Dương Minh Đức', N'0923510618', N'12/2 phường Bửu Long, TP. Biên Hòa, Đồng Nai', N'B01', N'BR03.jpg')
INSERT [dbo].[BUYER] ([MaBuyer], [TenBuyer], [SDT], [DiaChi], [MaLogin], [AvatarBuyer]) VALUES (N'BR02', N'Nguyễn Thị Thùy Trang', N'0154887545', N' 255 Thạch Lam, Quận Tân Phú, TP.HCM', N'B02', N'BR01.jpg')
INSERT [dbo].[BUYER] ([MaBuyer], [TenBuyer], [SDT], [DiaChi], [MaLogin], [AvatarBuyer]) VALUES (N'BR03', N'Dương Minh Đức', N'0933716345', N'56 Lũy Bán Bích, Quận Tân Phú, TP.HCM', N'B04', N'BR03.jpg')
GO
INSERT [dbo].[CART] ([ThoiGian], [SoLuong], [Size], [MaGioHang], [MaBuyer], [MaSP]) VALUES (CAST(N'2022-11-14' AS Date), 3, N'XL', N'C0003', N'BR03', N'SP30')
GO
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L101', N'Trainers', N'trainers.jpg')
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L102', N'Dress', N'dress.jpg')
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L103', N'Shirt', N'shirt.jpg')
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L104', N'T-shirt', N'tshirt.jpg')
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L105', N'Jeans', N'jeans.jpg')
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L106', N'Hat', N'hat.jpg')
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L107', N'Watch', N'watch.jpg')
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L108', N'Gile', N'gile.jpg')
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L109', N'Cardigan', N'cardi.jpg')
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L110', N'Sweater', N'sweart.jpg')
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L111', N'Bag', N'bag.jpg')
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L112', N'Scarf', N'scarf.jpg')
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L113', N'Jacket', N'jack.jpg')
INSERT [dbo].[CATEGORY] ([MaLoai], [TenLoai], [HinhMH]) VALUES (N'L114', N'Pants', N'pants.jpg')
GO
INSERT [dbo].[LichSuDatHang] ([IDLichSu], [SanPhamLS], [SoLuong], [DonGia], [ThanhTien], [TenShop], [DiaChiShop], [SDT], [HinhSP], [MaBuyer], [size], [MaSP]) VALUES (N'1', N'Quần jean ống rộng unisex Japan Seri 201
', 2, 250000, 500000, N'Nguyễn Thị Hương Ly', N'KP1/281,Kp Tân Hóa, huyệnn Gia Lai, tỉnh Gia Lai', N'0936251345', N'img1_SP12.jpg', N'BR01', N'M', N'SP12')
INSERT [dbo].[LichSuDatHang] ([IDLichSu], [SanPhamLS], [SoLuong], [DonGia], [ThanhTien], [TenShop], [DiaChiShop], [SDT], [HinhSP], [MaBuyer], [size], [MaSP]) VALUES (N'2', N'Giày thể thao sneaker Nike_JD cao cổ xanh đen', 1, 630000, 630000, N'Nguyễn Thị Ngọc Châu', N'11/A1, phường Châu Đốc, tỉnh Tây Ninh', N'0334532456', N'img1_SP20.jpg', N'BR01', N'40', N'SP20')
INSERT [dbo].[LichSuDatHang] ([IDLichSu], [SanPhamLS], [SoLuong], [DonGia], [ThanhTien], [TenShop], [DiaChiShop], [SDT], [HinhSP], [MaBuyer], [size], [MaSP]) VALUES (N'3', N'Quần Ống Suông Rộng Nữ Siêu Hack Dáng Chất Lụa Hàn Ullzang', 2, 230000, 460000, N'Nguyễn Thị Thủy Tiên', N'Khu 1, huyện Ðồng Tháp, tỉnh Ðồng Tháp', N'0932351349', N'img1_SP52.jpg', N'BR01', N'S', N'SP52')
INSERT [dbo].[LichSuDatHang] ([IDLichSu], [SanPhamLS], [SoLuong], [DonGia], [ThanhTien], [TenShop], [DiaChiShop], [SDT], [HinhSP], [MaBuyer], [size], [MaSP]) VALUES (N'4', N'Đầm Hai Dây Trơn 2 Lớp Có Chun Sau Dáng Ngắn Form Chữ A ', 1, 129000, 129000, N'Nguyễn Thị Ngọc Châu', N'11/A1, phường Châu Đốc, tỉnh Tây Ninh', N'0334532456', N'img1_SP05.jpg', N'BR02', N'M', N'SP05')
INSERT [dbo].[LichSuDatHang] ([IDLichSu], [SanPhamLS], [SoLuong], [DonGia], [ThanhTien], [TenShop], [DiaChiShop], [SDT], [HinhSP], [MaBuyer], [size], [MaSP]) VALUES (N'5', N'Áo Cardigan Nỉ Bông TABI Dáng Rộng Thêu Logo M', 1, 65000, 65000, N'Nguyễn Thị Ngọc Châu', N'11/A1, phường Châu Đốc, tỉnh Tây Ninh', N'0334532456', N'img1_SP03.jpg', N'BR01', N'M', N'SP03')
INSERT [dbo].[LichSuDatHang] ([IDLichSu], [SanPhamLS], [SoLuong], [DonGia], [ThanhTien], [TenShop], [DiaChiShop], [SDT], [HinhSP], [MaBuyer], [size], [MaSP]) VALUES (N'6', N'Quần Dài Ống Rộng Nữ Trơn Ulzzang Unisex Bom House', 2, 120000, 240000, N'Nguyễn Thị Thủy Tiên', N'Khu 1, huyện Ðồng Tháp, tỉnh Ðồng Tháp', N'0932351349', N'img1_SP54.jpg', N'BR01', N'M', N'SP54')
INSERT [dbo].[LichSuDatHang] ([IDLichSu], [SanPhamLS], [SoLuong], [DonGia], [ThanhTien], [TenShop], [DiaChiShop], [SDT], [HinhSP], [MaBuyer], [size], [MaSP]) VALUES (N'7', N'Quần Ống Rộng Jogger Nữ Trơn BOM HOUSE 3 Màu Ulzzang Unisex', 1, 150000, 150000, N'Nguyễn Thị Thủy Tiên', N'Khu 1, huyện Ðồng Tháp, tỉnh Ðồng Tháp', N'0932351349', N'img1_SP53.jpg', N'BR01', N'M', N'SP53')
INSERT [dbo].[LichSuDatHang] ([IDLichSu], [SanPhamLS], [SoLuong], [DonGia], [ThanhTien], [TenShop], [DiaChiShop], [SDT], [HinhSP], [MaBuyer], [size], [MaSP]) VALUES (N'8', N'Áo thun tay ngắn nhiều màu in logo LADOS 19073 chất co giãn, thấm hút tốt, không xù lông', 1, 160000, 160000, N'Hồ Ngọc Hà', N'11/225 Phú Mỹ Hưng, Quận 7,TP.HCM', N'0945362774', N'img1_SP42.jpg', N'BR01', N'M', N'SP42')
GO
INSERT [dbo].[LOGINS] ([MaLogin], [TenLogin], [MatKhauLogin], [VaiTro], [AVT]) VALUES (N'B01', N'minhhanh', N'minhhanh14', N'buyer', N'BR03.jpg')
INSERT [dbo].[LOGINS] ([MaLogin], [TenLogin], [MatKhauLogin], [VaiTro], [AVT]) VALUES (N'B02', N'trangni', N'trangni14', N'buyer', N'BR01.jpg')
INSERT [dbo].[LOGINS] ([MaLogin], [TenLogin], [MatKhauLogin], [VaiTro], [AVT]) VALUES (N'B04', N'minhhuy', N'minhhuycc', N'buyer', N'BR03.jpg')
INSERT [dbo].[LOGINS] ([MaLogin], [TenLogin], [MatKhauLogin], [VaiTro], [AVT]) VALUES (N'B05', N'ThanhNha', N'123', N'buyer', N'user.jpg')
INSERT [dbo].[LOGINS] ([MaLogin], [TenLogin], [MatKhauLogin], [VaiTro], [AVT]) VALUES (N'B06', N'ThanhN', N'123', N'buyer', N'user.j')
INSERT [dbo].[LOGINS] ([MaLogin], [TenLogin], [MatKhauLogin], [VaiTro], [AVT]) VALUES (N'S01', N'huongly', N'huonglys01', N'seller', N'SR01.jpg')
INSERT [dbo].[LOGINS] ([MaLogin], [TenLogin], [MatKhauLogin], [VaiTro], [AVT]) VALUES (N'S02', N'ngocchau', N'ngocchaus02', N'seller', N'SR02.jpg')
INSERT [dbo].[LOGINS] ([MaLogin], [TenLogin], [MatKhauLogin], [VaiTro], [AVT]) VALUES (N'S03', N'thuytien', N'thuytiens03', N'seller', N'SR03.jpg')
INSERT [dbo].[LOGINS] ([MaLogin], [TenLogin], [MatKhauLogin], [VaiTro], [AVT]) VALUES (N'S04', N'chihung', N'chihung28', N'seller', N'SR04.jpg')
INSERT [dbo].[LOGINS] ([MaLogin], [TenLogin], [MatKhauLogin], [VaiTro], [AVT]) VALUES (N'S05', N'kimduyen', N'kimduyen01', N'seller', N'SR05.jpg')
INSERT [dbo].[LOGINS] ([MaLogin], [TenLogin], [MatKhauLogin], [VaiTro], [AVT]) VALUES (N'S06', N'thienan', N'thienan34', N'seller', N'SR06.jpg')
INSERT [dbo].[LOGINS] ([MaLogin], [TenLogin], [MatKhauLogin], [VaiTro], [AVT]) VALUES (N'S07', N'dolong', N'dolong56', N'seller', N'SR07.jpg')
INSERT [dbo].[LOGINS] ([MaLogin], [TenLogin], [MatKhauLogin], [VaiTro], [AVT]) VALUES (N'S08', N'ngocha', N'ngocha23', N'seller', N'SR08.jpg')
GO
INSERT [dbo].[MANAGE] ([MaQL]) VALUES (N'QL01')
INSERT [dbo].[MANAGE] ([MaQL]) VALUES (N'QL02')
INSERT [dbo].[MANAGE] ([MaQL]) VALUES (N'QL03')
INSERT [dbo].[MANAGE] ([MaQL]) VALUES (N'QL04')
INSERT [dbo].[MANAGE] ([MaQL]) VALUES (N'QL05')
INSERT [dbo].[MANAGE] ([MaQL]) VALUES (N'QL06')
INSERT [dbo].[MANAGE] ([MaQL]) VALUES (N'QL07')
INSERT [dbo].[MANAGE] ([MaQL]) VALUES (N'QL08')
GO
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'1', N'QL02', N'C0001')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'10', N'QL02', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'11', N'QL04', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'12', N'QL01', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'13', N'QL03', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'14', N'QL01', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'15', N'QL01', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'16', N'QL03', N'C06')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'17', N'QL02', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'18', N'QL03', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'19', N'QL01', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'2', N'QL02', N'C0002')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'20', N'QL08', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'21', N'QL02', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'22', N'QL03', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'23', N'QL02', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'24', N'QL01', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'25', N'QL05', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'26', N'QL01', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'27', N'QL01', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'28', N'QL08', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'29', N'QL05', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'3', N'QL02', N'C0003')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'30', N'QL06', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'31', N'QL01', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'32', N'QL01', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'33', N'QL02', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'34', N'Ql06', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'35', N'QL01', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'36', N'QL02', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'37', N'QL03', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'38', N'QL02', N'C0001')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'39', N'QL02', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'4', N'QL04', N'C010')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'40', N'QL03', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'41', N'QL03', N'C06')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'42', N'QL08', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'5', N'QL06', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'6', N'QL04', N'C010')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'7', N'QL06', N'C05')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'8', N'QL01', N'C04')
INSERT [dbo].[ORDER_DETAILS] ([MaSPChiTiet], [MaQL], [MaGioHang]) VALUES (N'9', N'QL04', N'C04')
GO
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP01', N'Quần jean nữ ống rộng eo cao phong cách Hàn Quốc trẻ trung RD02', N'Quần jean nữ xám ống rộng cạp lưng cao KYUBI phong cách Ulzzang old shool (đủ bigsize) - Quần jeans suông NT2

🔸️ Chất liệu Jean Cotton mềm mát độ dày vừa phải cùng với form baggy suông rộng đem lại cảm giác thoải mái khi mặc thường xuyên.
🔸️ Size: S M L / Size Đại, Bigsize: XL 2XL 3XL 4XL
🔸️ Mẫu: Xám 2 Nút Dọc (NT2) / Xám Loang (TDY58)


Tham khảo bảng size chi tiết các số đo để lựa chọn size phù hợp
🌸Lựa Chọn size:
Size S: Vòng eo 64
Size M: Vòng eo 68
Size L: Vòng eo 72
Size XL: Vòng eo 75
Size 2XL: Vòng eo 77
Size 3XL: Vòng eo 80
Size 4XL: Vòng eo 84
* Nhắn tin trực tiếp shop nếu cần tư vấn cụ thể.

➖➖➖➖➖➖➖➖➖➖➖
🌸 Hướng dẫn bảo quản:
- Giặt sản phẩm với nước ở nhiệt độ thường
- Giặt bằng tay cho lần đầu sử dụng.
- Không được sấy khô
- Ủi mặt trái với nhiệt độ nóng vừa
- Không xoắn vắt mạnh
- Ủi ở nhiệt độ tối đa 110 độ C
- Nên phơi sản phẩm ở nơi khô ráo, thoáng mát, hạn chế ánh nắng trực tiếp

➖➖➖➖➖➖➖➖➖➖➖
🌸 CHÍNH SÁCH BÁN HÀNG KYUBI SHOP:
- Sản phẩm 100% giống mô tả. Hình ảnh sản phẩm thật do Shop chụp và quay
- Hàng có sẵn theo đúng lượng tồn kho, sẽ được lên đơn sau khi được xác nhận.
- Hoàn tiền ngay nếu sản phẩm không đúng với mô tả của shop.
- Chấp nhận đổi hàng khi size không vừa
- Ship COD, giao hàng toàn quốc, 
- Đổi trả và hoàn tiền theo quy định.

1. Điều kiện áp dụng
- Hàng hoá vẫn còn mới và chưa qua sử dụng 
- Hàng bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất 
2. Trường hợp được chấp nhận: 
- Hàng không đúng size, kiểu dáng như quý khách đặt hàng 
- Không đủ số lượng, không đủ bộ như trong đơn hàng 
3. Trường hợp không đủ điều kiện áp dụng chính sách: 
- Quá 07 ngày kể từ khi Quý khách nhận hàng 
- Gửi lại hàng không đúng mẫu, không phải sản phẩm của KYUBI
- Không thích, không hợp, đặt nhầm mã, nhầm màu... 

*Màu sắc thực tế của sản phẩm có thể chênh lệch 3-5% do màn hình hiển thị và điều kiện ánh sáng khác nhau.
*Giặt tay cho lần đầu sử dụng sản phẩm.
➖➖➖➖➖➖➖➖➖➖➖
#quan #quandai #jean #jeans #quanjeannu #jeansuong #quanjeanxam #quanjeanden #quanhocsinh #quanjeanbaggy #baggy #ongrong #ongsuong #quanongrong #ulzzang #kyubi #cullote #kyubishop #kyubi #culottes', N'img1_SP01.jpg', N'img2_SP01.jpg', N'img3_SP01.jpg', 129000, N'NEW', N'S', N'M', N'L', N'QL02', N'L105', N'L002')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP02', N'Áo sơ mi nam trơn vải kate lụa mịn LADOS', N'ÁO SƠ MI NAM ORENO UNISEX – PHONG CÁCH CHỈ DÀNH CHO GIỚI TRẺ
Áo sơ mi nam ORENO Unisex đang rất được giới trẻ ưa chuộng vì sự trẻ trung, năng động và cá tính mà nó mang lại. Cũng chính vì vậy mà nhiều người nghĩ phong cách này chỉ dành cho giới trẻ. Bài viết dưới đây sẽ mang đến bạn một góc nhìn bao quát hơn và chia sẻ với bạn bí quyết phối đồ đẹp nhất với sơ mi nam Unisex.
1. Tên sản phẩm: Áo sơ mi unisex nam nữ Áo sơ mi trắng vải trơn Áo sơ mi đẹp cho nam phối đồ
Dáng áo: Dáng rộng
Màu sắc: màu trắng, Đen, xanh than, xanh nhạt, ghi, đỏ
Trọng lượng: 250 g
Chất vải: Vải lụa dãn
Họa Tiết: Vải Trơn
ORENO CAM KẾT
Hình ảnh sản phẩm là ảnh thật do shop tự chụp và giữ bản quyền hình ảnh
Áo được kiểm tra kỹ, cẩn thận và tư vấn nhiệt tình 
Hàng có sẵn, giao hàng ngay khi nhận được đơn 
Hoàn tiền nếu sản phẩm không giống với mô tả
Chấp nhận đổi hàng khi size không vừa
Giao hàng trên toàn quốc, nhận hàng trả tiền 

QUY ĐỊNH BẢO HÀNH, ĐỔI TRẢ

1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm) 
- Hàng hoá vẫn còn mới, chưa qua sử dụng 
- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất 
2. Trường hợp được chấp nhận: 
- Hàng không đúng size, kiểu dáng như quý khách đặt hàng 
- Không đủ số lượng, không đủ bộ như trong đơn hàng 
3. Trường hợp không đủ điều kiện áp dụng chính sách: 
- Quá 07 ngày kể từ khi Quý khách nhận hàng 
- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của ORENO
- Không thích, không hợp, đặt nhầm mã, nhầm màu,... 
Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5% 

#oreno #ao #somi #unisex #nam #nu #hanquoc #form #rong oversize #formrong #aosomidaitay #aosomihocsinh #gioitre', N'img1_SP02.jpg', N'img2_SP02.jpg', N'img3_SP03.jpg', 139000, N'NEW', N'S', N'M', N'L', N'QL02', N'L103', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP03', N'Áo Cardigan Nỉ Bông TABI Dáng Rộng Thêu Logo M', N'Áo len cadigan nam vốn dĩ đã trờ thành xu hướng thời trang không còn quá xa lạ. Áo len tại shop chúng tôi mang đến sự ấm áp đặc trưng cho người mặc, áo len nam đặc biệt được ưa thích và lựa chọn nhiều khi thời tiết chuyển mùa. Với chất liệu dày và ấm áp, mẫu áo này mang đến guu thời trang cực chất cho nhiều chàng trai.

Áo len nam cadigan thách thức mọi thời tiết lạnh giá Với thời tiết Lạnh Giá mà mặc áo len cao cổ thì rất ấm áp và cực kỳ sang trọng và thoải mái, chất len mềm mịn, mặc đi làm hay đi chơi, đi làm văn phòng đều đẹp!!! Màu sắc của áo len cadigan nam cơ bản phù hợp mọi lứa tuổi , mặc cùng áo vets, áo dạ, áo da cực hợp và đẹp • 

Áo len nam Chất liệu tốt, mẫu mã đa dạng Len cotton 100% nhập sợi từ Nhật bản có bề mặt vải mền mịn, thoát mồ hôi, giữ ấm, nhanh tạo cảm giác vô cùng thoải mái cho người mặc và đặc biệt là không bị XÙ LÔNG. Mẫu mã đa dạng , cập nhật mẫu mới liên tục, có đủ size cho khách hàng lựa chọn.

Size áo tham khảo: 
Size m: dưới 50kg-56kg
Size l: 57kg-62kg
Size xl: 63-68kg
Size 2x: 69-80kg

Cam kết khi mua áo len nam cadigan tại shop
+ giá cả rẻ nhất thị trường
+ màu sắc có chút chênh lệch nhưng chất lượng vô cùng đảm bảo
+ hỗ trợ đổi, hoàn tiền nếu giao hàng lỗi, hàng không đúng,...

Vì là hàng order nên khoảng 8-10 khách nhận được hàng tùy thuộc vào từng thời điểm và tỉnh thành. Khác đã đặt đơn, xin vui lòng chắc chắn với đơn hàng của mình và không hủy đơn khi có thông báo của shop. Xin cảm ơn.

#aolen, #gile, #gilenam, #aolengile, #aogilelennam, #aolen, #aolendep, #aolennamdep, #aolennamhanquoc, #aolennamcaocap, #aolennamcotron, #aolennamcov, #aolencotim, #aolennamnu, #aolendoi, #aolencadigan, #aolennamcadigan, #aolenkhoac', N'img1_SP03.jpg', N'img2_SP03.jpg', N'img3_SP03.jpg', 65000, N'NEW', N'M', N'L', N'XL', N'QL02', N'L109', N'L005')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP04', N'Áo thun tay ngắn nhiều màu in logo ', N'GIÁ TẠI XƯỞNG KO QUA BẤT KỲ TRUNG GIAN NÀO 
#SỈ_LẺ_RẺ 
❎ VĂN HOÀNG XƯỞNG CẮT-MAY❎
#Sỉ_Lẻ_Rẻ 
🔝Bạn nào có nhu cầu kinh doanh bán chợ,  bán shop,  bán online...liên hệ xưởng để được giá rẻ thị trường nhé ♥♥♥
🚫Xưởng chuyên:
🔸Áo thun body tay dài,  tay ngắn 
🔸Áo thun body tay cộc cổ tim,  cổ tròn
🔸Áo crotop, hai dây,  ba lỗ thường,  ba lỗ ngược 
🔸Đầm thun gân body tay dài,  tay ngắn, hai dây
🔸 Quần thun đùi...
🔸Nhận đặt may theo yêu cầu,  áo in,  đồng phục,  áo lớp,  áo nhóm
👉 Chất liệu : thun gân,  bocrip,  Bc ghen,  cotton 2D ( tùy theo cây vải or màu vải của thị trường) 
👉 Form chuẩn,  freesize 43-53 ký
♻♻♻ Xưởng tự nhập vải cắt,  gia công, cam kết giá tại xưởng ko qua bất kỳ trung gian nào 💯💯💯💰💲💰💲
👉 Luôn có sll giao khách sỉ
👉 Shop COD toàn quốc 🔜🚚🚁🚢
👉 Hoàn trả nếu ko hài lòng 🔙
⚠✳⚠Note: Bảng màu chỉ mang tính chất minh hoạ, vì xưởng ra màu mới mỗi ngày.
 👉Bảng  màu sẽ chênh lệch 5% so với hình thật,  vì độ sáng chụp hình nhé khách. 
🎆 Sỉ 5 sp trở lên 
Khách sỉ,  lẻ nhanh tay inbox xưởng nhé 😍😍😍
🏠 31/27A Đường số 16A,Kp8, P. Bình Hưng Hòa A, Bình Tân, HCM 
Tel,  zalo: 0971 31 81 71 (Mr Hoàng)

#áo ba lỗ 
#áo hai dây 
#áo tay dài cổ lọ 
#áo tay dài cổ tròn 
#áo tay ngắn 
#váy hai dây 
#quần viền 
#áo ba lỗ khoét 
#áo ba lỗ cổ lọ 
#roptop cổ Tim
#áo trễ vai ', N'img1_SP04.jpg', N'img2_SP04.jpg', N'img3_SP04.jpg', 90000, N'NEW', N'S', N'M', N'L', N'QL02', N'L104', N'L003')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP05', N'Đầm Hai Dây Trơn 2 Lớp Có Chun Sau Dáng Ngắn Form Chữ A ', N'THÔNG TIN SẢN PHẨM
- Sản phẩm: Đầm 2 Dây Chun Sau
- Chất liệu: Dây, có lớp lụa lót bên trong nên mặc không bị nóng
- Sản xuất tại: Việt Nam 
- Màu sắc: Trắng, Nâu, Be
- Số đo chi tiết đầm:
  + Dài: 72-73cm (Thích hợp với những bạn cao từ 1m60 đổ lại)
  + Ngực: 86cm đổ lại
  + Eo: 72cm đổ lại
- Free size: 50kg đổ lại, Form váy ngắn nên khách cao từ 1m60 đổ lại mặc sẽ phù hợp hơn

HƯỚNG DẪN SỬ DỤNG, BẢO QUẢN
- Váy với phong cách trẻ trung, thiết kế đơn giản, xinh xắn dễ phối đồ, Đầm 2 Dây Chun Sau có thể kết hợp với nhiều loại trang phục như: áo Blaze, áo khoác len mỏng,...Có thể sử dụng mặc đi làm, đi chơi với bạn bè, hẹn hò, cà phê, đi biển…
- Có thể giặt tay và giặt máy, khuyến khích giặt tay để giữ độ bền lâu cho váy

LABIBI CAM KẾT 
- Sản phẩm Đầm 2 Dây Chun Sau do Labibi tự chụp nên 100% giống hình ảnh và mô tả 
- Luôn kiểm tra sản phẩm trước khi đóng gói gửi cho quý khách hàng 
- Thời gian xử lý đơn hàng nhanh chóng 
- Tư vấn hỗ trợ khách hàng nhiệt tình, chu đáo 

QUY ĐỊNH BẢO HÀNH, ĐỔI TRẢ
- Điều kiện áp dụng (trong vòng 03 ngày kể từ khi nhận sản phẩm) 
+ Hàng hoá vẫn còn mới, chưa qua sử dụng 
+ Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất 
- Trường hợp được chấp nhận: 
+ Giao hàng không đúng size, kiểu dáng như quý khách đặt hàng 
+ Giao hàng không đủ số lượng như trong đơn hàng 
- Trường hợp không đủ điều kiện áp dụng chính sách: 
+ Quá 03 ngày kể từ khi quý khách nhận hàng 
+ Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của Labibi 
+ Không thích, không hợp, đặt nhầm mã, nhầm màu,... 
Lưu ý: Hàng sản xuất với số lượng lớn nên kích thước áo có thể chênh nhau 1 ít theo từng đợt 
#dam #hai #day #tron #2 #lop #co #chun #sau #dang #ngan #form #chu #a #nhieu #mau #co #ban #labibi', N'img1_SP05.jpg', N'img2_SP05.jpg', N'img3_SP05.jpg', 129000, N'NEW', N'S', N'M', N'L', N'QL02', N'L102', N'L007')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP06', N'Áo nỉ bông unisex mặc cặp đôi dáng rộng nhiều màu chất dày dặn', N'👉 Áo MẠC CAO SU TRONG: ✈ KHOÁC Hoodie GWS

👉 Áo MẠC CAO SU ĐEN: ✈ KHOÁC Hoodie SOMEWHAT ạ



👉 Các bạn muốn xem thêm màu TRẮNG - TÍM - MINT NỈ BÔNG - BIỂN ĐẬM... 👉 Các bạn click vào Áo KHOÁC Hoodie TRƠN 3 MÀU xem thêm nhé



🍄 Chất vải: Nỉ bông (nên có dính lông chút bên trong ạ)

✈ RIÊNG TRẮNG KEM NHẠT: Nỉ mặc phù hợp thời tiết nóng 



👉 CÁCH GIẶT ÁO TRẮNG KEM NHẠT / TRẮNG:

✈ GIẶT MÁY GIẶT

✈ NẾU GIẶT TAY: bạn iu VẮT THẬT KHÔ , rồi mới phơi nhé

  

🌸 Chất vải NỈ BÔNG sẽ DÀY hơn vải nỉ CHÂN CUA               



🌸 Form: CÙNG FORM với Khoác POWR (số đo có thể xê xích 0.5-1.5cm ạ)

-Size M: Ngang 55cm, Dài 64cm

-Size L: Ngang 58cm, Dài 67cm

-Size XL: Ngang 61cm, Dài 69cm





🍓 Bảng SIZE: Quần / Áo form châu Âu rộng rộng nhé các cậu

(Bảng size mang tính chất tham khảo và phù hợp 80-90% sở thích các cậu ạ. Các bạn muốn chọn size phù hợp có thể xem hình feedback các khách đã mua hoặc inbox cho 1hitshop nhé ^^)



-Size M: dưới 55kg, Cao dưới 1m60

-Size L: từ 56 - 65kg , Cao 1m61 - 1m70

-Size XL: từ 65- 75kg, Cao dưới 1m75

 🥝 🍓 Ngập tràn mẫu mới 🍓 🥝

Hoodie

✈ Form rộng Unisex cho cả nam và nữ 

🍄 🍄 Nhận THU HỘ ( ship COD ) toàn quốc 

🌸 Hình Shop chụp, đảm bảo mặc lên form đẹp như ảnh

🌸 Vải đẹp ,  mềm mịn  

🍒 Facebook: 1HitShop 

 🏠 Địa chỉ: 30/1 Lò Siêu, P10, Q11 TpHCM

  Hotline: 0938.46.23.13

🍓 Shopee: 1hitshop



 -------------------------------------------------------------------------- 

#hoodie #ao #aonamnu #khoachoodie #hoodie  #khoacni #aokhoac #ao_khoac #ao-khoat #khoac-di-nang #khoac-ni #khoac_ni #khoac_hoodie #khoac-hoodie #khoac_local_brand #ulzzang #khoac_ulzzang#ao-khoac #khoac_chong_nang', N'img1_SP06.jpg', N'img2_SP06.jpg', N'img3_SP06.jpg', 145000, N'NEW', N'M', N'L', N'XL', N'QL03', N'L113', N'L002')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP07', N'bucket lông mịn phong cách Ulzzang', N'❤️ Mũ bucket trơn vành cụp, nón bucket nam nữ phong cách Ulzzang unisex màu đơn giản, hình thật 100%

“VỚI MONG MUỐN TẠO RA ĐƯỢC MỘT SẢN PHẨM CHẤT LƯỢNG, SẼ ĐƯỢC SỰ TIN TƯỞNG TUYỆT ĐỐI CỦA KHÁCH HÀNG.”
SHOP cố gắng lựa chọn từng sản phẩm, giá cả cạnh tranh xứng đáng với chất lượng sản phẩm và dịch vụ khách hàng sẽ nhận được. Song đó, SHOP luôn tự chụp, quay video sản phẩm, để khách hàng an tâm khi mua sắm mà không còn phải phân vân “ Hàng có giống hình không?” Vì thế, rất mong được sự ủng hộ, yêu thương của khách yêu ạ!

❤️ Thông tin sản phẩm :
👉 Màu sắc : Đen - Kem
👉 Chất liệu vải kaki nhập khẩu cao cấp, cực mát mẻ và thấm hút tốt.
👉Thích hợp cho cả nam và nữ, 
👉Size: freesize, vòng đầu 52-58cm thích hợp cho cả nam nữ.
👉Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 2-3%.
.....................................................................................................................................................................................
⛔️ Lưu ý khi mua hàng trên Shopee: Do quy định Shopee ""KHÔNG ĐỒNG KIỂM, KHÔNG XEM HÀNG KHI NHẬN"" vì vậy quý khách cứ yên tâm nhận hàng trước, sau khi nhận nếu hàng có vấn đề gì bạn hãy nhắn tin và shop sẽ giải quyết cho quý khách cứ yên tâm ạ ! 
⛔️ Khi khách yêu gặp bất kì vấn đề gì về sản phẩm, đừng vội đánh giá shop mà hãy NHẮN TIN trước cho shop để shop hỗ trợ bạn nhé ( trường hợp đôi lúc shop có lỡ gửi nhầm hàng hoặc sản phẩm bị lỗi ) mong bạn thông cảm, hãy nhắn cho shop liền nha <3 shop rất biết ơn nếu bạn làm điều đó ạ <3
-----------------------------------------------
 #mu #non #bucket #mubucket  #mubucketnam #nonnam #mudep  #nonnamdep #munamdep #nondoi #mudoi #couple #nonkaki #taibeo #noncap #mucap #hottrend  #nonbucket #nontaibeo #nontaibeonam #nonbucketnam #mutaibeonam #mutaibeo #buckettaibeo #taibeo #unisex #vanhtron #muvanhtron  #mubucketnu #nontaibeonu #bucketnon', N'img1_SP07.jpg', N'img2_SP07.jpg', N'img3_SP07.jpg', 69000, N'NEW', N'S', N'M', N'L', N'QL03', N'L106', N'L006')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP08', N'Giày sneaker trẻ em Future Rider Animals', N'Thông tin sản phẩm



Thành phần chất liệu: Suede, Synthetic overlays

Kiểu dáng giày sneaker trẻ em nhí nhảnh, đáng yêu

Quai dán dễ dàng thao tác mang/tháo giày cho các bé

Công nghệ cao cấp giúp tăng cảm giác thoải mái trong mọi hoạt động

Gam màu hiện đại dễ dàng phối với nhiều trang phục 

Xuất xứ thương hiệu: ĐứcSản phẩm không bảo hành

Hướng dẫn bảo quản và giặt ủi: Xem chi tiết trên tag sản phẩm

An toàn cho người sử dụng



Thông tin thương hiệu:



Được Rudolf Dassler thành lập vào năm 1948, PUMA là một tập đoàn đa quốc gia của Đức có trụ sở tại Herzogenaurach, Bavaria, Đức.PUMA đã cho ra đời các sản phẩm sáng tạo dành riêng cho những vận động viên tốc độ nhất hành tinh. PUMA chuyên sản xuất giày thời trang và giày thể thao dùng trong bóng đá, chạy bộ, giày để tập luyện trong phòng tập, golf và đua xe mô-tô.

Lưu ý:

"Quý khách vui lòng chỉ xác nhận "Đã nhận được hàng" khi không có bất kỳ vấn đề nào đối với đơn hàng. Trường hợp quý khách đã xác nhận thành công và có vấn đề xảy ra nhưng Shopee từ chối hỗ trợ, Shop sẽ không hỗ trợ giải quyết gì thêm', N'img1_SP08.jpg', N'img2_SP08.jpg', N'img3_SP08.jpg', 1999000, N'NEW', N'40', N'41', N'42', N'QL03', N'L101', N'L006')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP09', N'ÁO SƠMI NAM TRƠN ZARA ĐẲNG CẤP PHÁI MẠNH.', N'Áo sơ mi nam trơn không nhăn LADOS-25779

CAM KẾT CỦA LADOS

👉 Cam kết chất lượng và mẫu mã sản phẩm giống với hình ảnh.

👉 Hoàn tiền nếu sản phẩm không giống với mô tả.

👉 ĐỔI TRẢ TRONG 7 NGÀY NẾU KHÔNG ĐÚNG MIÊU TẢ

👉 CAM KẾT HÀNG CHÍNH HÃNG 100%

👉 CAM KẾT ẢNH SHOP TỰ CHỤP

👉 freeship cho đơn hàng trên 150k

------------------------------------

⏩ Thông tin sản phẩm:

👉 Chất liệu: vải kate lụa mịn mềm, thấm hút mồ hôi tốt.

👉 Ít nhăn, ít nhàu, vải đứng form

👉 Chất vải đẹp, không xù lông, không phai màu

👉 Đường may cực tỉ mỉ cực đẹp

👉 Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc

👉 Kiểu dáng: Thiết kế theo form ôm body trẻ trung lịch lãm

⏩Được sản xuất và bảo hành bởi Công ty TNHH MTV LADOS VIỆT NAMXEM CÁCH CHỌN SIZE TRÊN HÌNH ĐỂ ĐƯỢC CHÍNH XÁC NHẤT

🔰  HƯỚNG DẪN CÁCH ĐẶT HÀNG

⏩  Cách chọn size: Shop có bảng size mẫu. 

-          	Bạn chọn từng sản phẩm rồi thêm vào giỏ hàng

-          	Khi giỏ hàng đã có đầy đủ các sản phẩm cần mua, bạn mới tiến hành ấn nút “ Thanh toán”

⏩ Shop luôn sẵn sàng trả lời inbox để tư vấn



 #aosominam #aosomi #aosomiformrong #aosominamformrong #aosomikieu #aosominamngantay #aosomitrang #aosominamcaocap #aosominamnu #aosomicongso #aosomitayphong #aosominamhanquoc #aosominamhan #aosomitrangnam #aosomitrangnamcaocap #lados #thoitrangnam #thoitrangcaocap', N'img1_SP09.jpg', N'img2_SP09.jpg', N'img3_SP09.jpg', 150000, N'NEW', N'M', N'L', N'XL', N'QL03', N'L103', N'L002')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP10', N'Đồng hồ nam Rolex đính đá dây da full box dây da', N'Đồng hồ nam Hublott - size 42mm,viền đính đá, đồng hồ dây cao su bọc da cá sấu, máy pin, kim thể thao, dành cho nam

- Shop Cam Kết:
+ Sản phẩm mới 100%, giống y hình ảnh, chất lượng tốt, đóng gói đẹp, cẩn thận
+ Giao hàng nhanh ngay sau khi khách hàng đặt
+Nếu sản phẩm bị móp méo, hư hỏng trong quá trình vận chuyển, sản phẩm lỗi sản xuất hoặc chỉ cần không ưng ý. Mong Qúy Khách đừng vội "ĐÁNH GIÁ XẤU" Shop, hãy liên hệ với Shop để được hướng dẫn đổi mới hoặc trả hàng hoàn tiền nhanh nhất. SHOP CAM KẾT LÀM HÀI LÒNG 100% KHÁCH HÀNG.
SẢN PHẨM: ĐỒ HỒ 1954WATCH.VN chuyên cung cấp tất cả các thương hiệu nổi tiếng cho học sinh, sinh viên, người đi làm,.....
✅THÔNG TIN SẢN PHẨM
- Thương hiệu: Đồng Hồ Hublot
- Dành cho: Nam 
- Kiểu máy: Máy Pin
- Chất liệu vỏ: Hợp Kim
-Mặt kính: Kính Mineral
- Độ trong suốt: tốt
- Chất liệu mặt sau: Hợp Kim
- Chất liệu dây:  Cao Su Bọc Da Cá Sấu
- Kích thước mặt:42 mm
- Độ dày mặt:12 mm
- Bản dây: 23 mm
- Chiều dài dây 252 mm
- Số kim: 3kim ( Giây,Phút, Giờ ) 
-Ưu điểm: dễ dàng thu dây vừa tay, chức năng đơn giản dễ sử dụng.
Chống thấm nước 3ATM (30m) có thể đi mưa, rửa tay, rửa mặt. Tránh tiếp xúc với môi trường hóa chất như giặt đồ, tấm gội.
- Trọng lượng: 48g
- Bảo hành 3 tháng cho bộ máy sản phẩm bên trong.
✅ Gói hàng gồm: Đồng hồ + Hộp đựng  + Thẻ bảo hành
 
#donghonam #thoitrangdeotay #donghokim #donghodoanhnhan #donghovanphong #donghoco #maycoautomatic #donghochongnuoc #donghublot #donghohublotnam #donghonmahublot #donghohohublotnamgiare #dongho #donghothoitrang #donghonam #hubllot #hublot #donghogiare #dongho
', N'img1_SP10.jpg', N'img2_SP10.jpg', N'img3_SP10.jpg', 240000, N'NEW', N'1SIZE', N'1SIZE', N'1SIZE', N'QL03', N'L107', N'L003')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP11', N'Túi xách n? Hemmert', N'Túi xách nữ đẹp đeo chéo kẹp nách nữ đeo vai phối nơ da pu phong cách hàn quốc đi chơi thời trang cao cấp

Túi xách nữ đẹp đeo chéo kẹp nách nữ - sản phẩm thời thượng dành cho mọi cô gái

Túi xách nữ đẹp đeo chéo kẹp nách chính là điểm nhấn đặc biệt đối với vẻ bề ngoài của mỗi người phụ nữ. Trong quan điểm về nét đẹp hiện đại, túi xách nữ không đơn giản là một phụ kiện bên ngoài mà còn là một món đồ trang sức đại diện cho phong cách, cá tính của người sử dụng.

Bạn có thể bắt gặp hình ảnh các cô gái cùng chiếc túi xách nữ thời trang ở bất kỳ đâu dù khi đi chơi hoặc tại nơi làm việc.

Túi xách nữ giúp các cô nàng hoàn thiện ngoại hình, tạo nên sự tự tin và điểm nhấn mới trong mọi trường hợp

Việc sử dụng một chiếc TÚI XÁCH NỮ ĐẸP ĐEO CHÉO thời trang không chỉ là sở thích của phái đẹp mà còn giúp họ trở nên tự tin hơn.

Dù khi đi làm hoặc đi dạo phố túi xách cũng giúp bạn tạo nên một phong cách riêng cho trang phục của mình. Ví dụ như khi đi làm một chiếc túi đơn sắc nhã nhặn sẽ giúp bạn thêm phần tươm tất và thu hút ,một chiếc túi xách nữ đẹp đeo chéo kẹp nách dự tiệc cầm tay ấn tượng sẽ khiến bạn thêm phần sang trọng, lôi cuốn.

Túi xách nữ còn đóng vai trò như “thế giới thu nhỏ” của phái đẹp, giúp họ dễ dàng mang theo những vật dụng thiết yếu

 Hiện nay,  Những chiếc túi xách nữ đẹp  thời thượng giúp bạn luôn trở thành điểm thu hút mỗi khi bước chân xuống phố. Vì vậy bạn có thể thấy chiếc túi xách là phụ kiện không thể thiếu trong mọi hoàn cảnh của phái đẹp.

 DuongNhang store Luôn là nơi cập nhật những xu hướng TÚI XÁCH NỮ ĐEO CHÉO KẸP NÁCH mới nhất

HƯỚNG DẪN SỬ DỤNG VÀ BẢO QUẢN TÚI XÁCH NỮ LUÔN ĐẸP BỀN LÂU

Khi sử dụng túi xách nên chú ý đặt túi trên bề mặt sạch, đặt trên bàn, tránh đặt trực tiếp xuống bề mặt đất không sạch sẽ
Không đặt túi tại nơi tiếp xúc quá lâu với ánh nắng mặt trời và tránh đặt các vật sắc nhọn như dao, kéo, bấm móng tay trong túi. Không đặt những sản phẩm có thể bị lem màu như bút mực

 Thường xuyên lau chùi TÚI XÁCH - Lau chùi ngay bằng loại xà phòng chuyên dùng cho chất liệu da túi xách khi sản phẩm da bị vấy bẩn', N'bag.jpg', N'img1_SP11.jpg', N'img2_SP11.jpg', 50000, N'NEW', N'S', N'M', N'L', N'QL01', N'L111', N'L007')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP12', N'Quần jean ống rộng unisex Japan Seri 201
', N'👉👉👉THÔNG TIN SẢN PHẨM👈👈👈  

💖 Chất liệu: Jeans siu dày dặn form rộng oversize chuẩn ảnh luôn ạ, chất liệu bao xịn ko mua thì tiếc lắm luôn ạ :(( Chất xịn hơn giá là có thật luôn các bác ạ ^^
Ảnh thật shop có để ở cuối ạ

🔰🔰🔰 Bảng size 🔰🔰🔰 
Size S-5XL (ảnh cuối)

Trường hợp khách hàng cần tư vấn thêm về Size vui lòng inbox trực tiếp cho shop để được tư vấn nhanh nhất nhé!😘

💖💖 MIXMAX luôn luôn cập nhật những mẫu mới, cá tính, chất lừ và quan trọng là phải độc cho các bạn đó ạ😊 Shop luôn luôn đặt quyền lợi của khách hàng lên hàng đầu - Cùng xem chi tiết ở mục “SHOP CAM KẾT” phía dưới nhé các bạn 💖💖💖 
 
👉👉👉SHOP CAM KẾT👈👈👈 
✔Về sản phẩm: Shop cam kết về Chất lượng và Hình Dáng sản phẩm giống như shop mô tả. Nếu không đúng khách hàng có thể hoàn trả lại shop.
✔Về dịch vụ sau khi mua hàng: Shop hỗ trợ đổi/ trả sản phẩm nếu sản phẩm ko vừa/ lỗi do nhà sản xuất
✔️ Về thời gian ORDER: Shop đặt thời gian chuẩn bị hàng là 15-30 ngày nhưng hàng thường về từ 7-10 ngày (tuỳ vào tình hình vận chuyển - muộn nhất là 15 ngày khi tắc biên) Hàng về lúc nào shop gửi lúc đó luôn nên shop mong mọi người đừng giục hàng trong khoảng thời gian này nhé 😊 
✔Về phí SHIP: Khách hàng được FREESHIP với đơn nội thành Hà Nội từ 150k và đc FREESHIP với đơn ngoại thành từ 250k trở lên ạ. 
✔Về CSKH: Nếu có bất kỳ thắc mắc nào, Khách hàng hãy inbox trực tiếp với shop để được giải đáp một cách nhanh nhất ạ!

👉👉👉QUYỀN LỢI CỦA KHÁCH HÀNG👈👈👈 
🎁 Bảo hành 6 tháng 1 đổi 1 đối với lỗi phát sinh do nhà sản xuất
🎁 Shop cam kết đổi trả hàng khi sản phẩm kém chất lượng, không đúng mẫu mã, nhầm size, số lượng. 
🎁 Khách hàng cũ : Mua lần thứ 2 trở đi sẽ được nhận mã giảm giá của shop

👉 Mọi người nếu yêu thích MIXMAX thì hãy Follow shop trên Fb, Insta và Tik tok bằng cách tìm kiếm "mixmax_streetwear" để cập nhật mẫu mới nhất hot hit nhất nhé 🎈

#jeans #ulzzang #Chất #Cá_tính #Sơ_mi #Quần_jeans_ống_rộng #Quần_ống_rộng #Hoodie #Oversize #Freestyle #Áo_khoác #Dáng_rộng #Blazer #Set #Streetwear #Áo_khoác #Tshirt #Blazer #Bomber #Jogger', N'img1_SP12.jpg', N'img2_SP12.jpg', N'img3_SP12.jpg', 250000, N'NEW', N'M', N'L', N'XL', N'QL01', N'L105', N'L005')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP13', N'Áo sơ mi nam nữ dài tay Unisex Basic', N'Áo sơ mi nam nữ dài tay Unisex Basic Có thể giặt tay hoặc giặt máy
Không giặt chung với những sản phẩm ra mầu
Không dùng chất tẩy rửa, không ngâm quá lâu ngày
Không phơi dưới nhiệt độ cao, nắng gắt
 Nên là ủi thường xuyên.', N'img1_SP13.jpg', N'img2_SP13.jpg', N'img3_SP13.jpg', 150000, N'NEW', N'M', N'L', N'XL', N'QL01', N'L103', N'L006')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP14', N'Gile Len Nữ Cổ V Basic Màu Trơn Có Cúc Kiểu Hàn Quốc', N'- Xuất xứ: Áo Len Gile Nữ hàng Quảng Châu loại 1
- Chất liệu: Áo Len Gile Nữ Chất len thích hợp mọi thời tiết
- Kích cỡ: Áo Len Gile Nữ freesize chị em dưới 65kg mặc xinh ạ
- Kiểu dáng:  3 lỗ thụng
', N'img1_SP14.jpg', N'img2_SP14.jpg', N'img3_SP14.jpg', 120000, N'NEW', N'M', N'L', N'XL', N'QL01', N'L108', N'L007')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP15', N'Áo Sweater Polo TABI Tay Dài Nỉ Bông Dáng Rộng', N'THÔNG TIN SẢN PHẨM:
- Thương hiệu: Tabi Store
- Xuất xứ: Việt Nam
ĐẶC TÍNH - ƯU ĐIỂM:
+ Chất liệu áo sweater nam nữ được làm từ vải nỉ cotton mềm mịn, giữ nhiệt
+ Thiết kế theo phong cách hàn quốc trẻ trung năng động, thích hợp mặc hàng ngày, mặc đi chơi, dạo phố
+ Form áo rộng, dễ phối đồ, mix với quần jean hay chân váy đều cực xinh
+ Màu sắc: Xanh (như hình)
', N'img1_SP15.jpg', N'img2_SP15.jpg', N'img3_SP15.jpg', 70000, N'NEW', N'M', N'L', N'XL', N'QL01', N'L110', N'L001')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP16', N'Khăn Choàng YSL Hình Vuông Cỡ Lớn', N'Mùa thích hợp: hạ, đông, xuân, thu
Màu sắc: Nhiều tùy chọn như hình
Sử dụng: thời trang, xu hướng, thể thao, giải trí, nhà
Thích hợp cho: nam, nữ', N'img1_SP16.jpg', N'img2_SP16.jpg', N'img3_SP16.jpg', 300000, N'NEW', N'S', N'M', N'L', N'QL02', N'L112', N'L005')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP17', N'Quần Jogger Trơn', N'THÔNG TIN SẢN PHẨM:
+ Thương hiệu: Tabi Store
+ Xuất xứ: Việt Nam
ĐẶC TÍNH - ƯU ĐIỂM:
+ Chất liệu cotton đẹp mềm mịn thấm hút mồ hôi
+ Thiết kế theo phong cách hàn quốc trẻ trung năng động, thích hợp mặc hàng ngày, mặc đi chơi, dạo phố
+ Form quần jogger dáng rộng, dễ phối đồ, mix với áo thể thao cực năng động
+ Màu sắc: Đen, Trắng &amp; Xám
', N'img1_SP17.jpg', N'img2_SP17.jpg', N'img3_SP17.jpg', 70000, N'NEW', N'M', N'L', N'XL', N'QL02', N'L114', N'L001')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP18', N'Giày Nike_Air Force 1 Cổ Thấp Thể Thao Nữ Nam Giày Sneaker AF1 ', N'Thông tin Giày Nike_Air Force 1 Cổ Thấp Thể Thao Nữ Nam Giày Sneaker AF1 Trắng Đế Cao Đi Học Giá Rẻ Full Box G02                    
       -Giày Nike Air_Force 1 được đánh giá là một trong những mẫu Sneaker đình đám nhất và điển hình nhất trong danh mục những đôi giày thể thao thời trang của giới trẻ. 
      -Mẫu giày Nike_Air Force 1 trắng thực sự cân bằng được phong cách thời trang với kết hợp dễ dàng dành cho những bộ trang phục thể thao cho cả nam và nữ như quần jeans, short hay những kiểu áo yếm tinh nghịch thậm chí là những chiếc váy ngắn. 
      -Mẫu giày Nike_Air Force 1 với cổ cao trên mắt cá chân thường được các bạn nam kết hợp cùng với những mẫu quần jeans xắn gấu.', N'img1_SP18.jpg', N'img2_SP18.jpg', N'img3_SP18.jpg', 420000, N'NEW', N'36', N'37', N'38', N'QL02', N'L101', N'L006')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP19', N'Giày thể thao nike_air_jordan_1 cổ thấp màu đen trắng', N'- Xuất xứ: Quảng Châu
- Chất Liệu mặt trong giày: vải canvas
- Chất liệu mặt ngoài giày: vải tổng hợp kết hợp vải canvas tạo nền độ bền chắc không bị bong tróc
- Chất liệu đế giày thể thao nam nữ: Cao su tổng hợp
- Đế chống trơn trượt, kết hợp cùng kiểu dáng thể thao và màu sắc nổi bật, chắc chắn sẽ là phụ kiện được nhiều bạn lựa chọn để thể hiện phong cách thể thao khỏe khoắn, năng động.
- Bên cạnh đó, lót giày Công nghệ Cupsole Memory Foam chất liệu nhẹ, êm ái giúp bạn luôn cảm thấy thoải mái trong suốt quá trình vận động.
- Màu sắc giày: đen', N'img1_SP19.jpg', N'img2_SP19.jpg', N'img3_SP19.jpg', 250000, N'NEW', N'40', N'41', N'42', N'QL02', N'L101', N'L005')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP20', N'Giày thể thao sneaker Nike_JD cao cổ xanh đen', N'Không tiếp nhận hoàn hàng đối với các trường hợp    
- Đối với sản phẩm đã sử dụng gây hư hỏng
- Qúa thời hạn tiếp nhận xử lý dưới 7 ngày
- Hàng mang không hợp với bạn 
-Về sản phẩm: Shop cam kết 100% về chất lượng 
-Về giá cả : Shop nhập với số lượng nhiều và trực tiếp nên chi phí sẽ là rẻ nhất nhé.
-Về dịch vụ: Shop có đội ngũ tư vấn 24/24 và sẽ cố gắng trả lời hết những thắc mắc xoay quanh sản phẩm nhé. 
-Thời gian chuẩn bị hàng: Hàng luôn có sẵn, thời gian chuẩn bị tối ưu nhất
', N'img1_SP20.jpg', N'img2_SP20.jpg', N'img3_SP20.jpg', 630000, N'NEW', N'40', N'41', N'42', N'QL02', N'L101', N'L006')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP21', N'Giày Nike Air Force 1 AF1 Trắng Vêt Nâu Cổ Thấp Thể Thao Nam', N'1.Thông tin Giày Nike Air Force 1 AF1 Trắng Vêt Nâu Cổ Thấp Thể Thao Nam Nữ Giày Sneaker Đen Trắng Đế Cao Giá Rẻ G09
      -Mẫu giày Nike Air Force 1 trắng vệt nâu với cổ cao trên mắt cá chân thường được các bạn nam kết hợp cùng với những mẫu quần jeans xắn gấu.
      -Giày Nike Air Force 1 vêt nâu được đánh giá là một trong những mẫu Sneaker đình đám nhất và điển hình nhất trong danh mục những đôi giày thể thao thời trang của giới trẻ. 
      -Mẫu giày Nike Air Force 1 vệt nâu thực sự cân bằng được phong cách thời trang với kết hợp dễ dàng dành cho những bộ trang phục thể thao cho cả nam và nữ như quần jeans, short hay những kiểu áo yếm tinh nghịch thậm chí là những chiếc váy ngắn. 
2️ Hướng dẫn sử dụng Giày Nike Air Force 1 AF1 Trắng Vêt Nâu Cổ Thấp Thể Thao Nam Nữ Giày Sneaker Đen Trắng Đế Cao Giá Rẻ G09
      - Không dùng hóa chất hay bột giặt có hoạt tính tẩy rửa mạnh để giặt giày
      -Không dùng bàn chải cứng để vệ sinh giày nike air force 1 trắng vệt nâu sẽ làm hư hỏng 
      -Không đi mưa ngâm nước lâu, không phơi giày thể thao nam nữ trực tiếp dưới ngoài trời nắng gắt', N'img1_SP21.jpg', N'img2_SP21.jpg', N'img3_SP21.jpg', 420000, N'NEW', N'40', N'41', N'42', N'QL04', N'L101', N'L002')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP22', N'Quần jean nữ ống đứng màu đen cơ bản chất bò dày dặn co dãn ', N'THÔNG TIN SẢN  PHẨM:
Xuất xứ: Việt Nam
Tiêu chuẩn chất lượng: TCCL Việt Nam
Màu sắc: Xanh , Đen, Xám, Trắng
Bảo hành: Đổi size miễn phí trong 3 ngày.
Quần jean nữ với thiết kế mới thời trang hơn, mang lại sự tự tin tối đa cho người mặc trước những người xung quanh
Quần may bằng vải denim nên rất mềm, đảm bảo thoải mái ngay cả khi di chuyển nhiều.
Dáng quần jean trẻ trung rộng rãi, túi quần lớn rất thuận tiện cho việc đựng smart phone hoặc ví cỡ bự.
Màu sắc chuẩn được nhuộm kỹ giúp hạn chế tối đa việc phai màu khi sử dụng.
', N'img1_SP22.jpg', N'img2_SP22.jpg', N'img3_SP22.jpg', 200000, N'NEW', N'S', N'M', N'L', N'QL04', N'L105', N'L002')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP23', N'Quần jean nữ ống rộng màu trắng', N'THÔNG TIN SẢN  PHẨM:
Xuất xứ: Việt Nam
Tiêu chuẩn chất lượng: TCCL Việt Nam
Màu sắc: Xanh , Đen, Xám, Trắng
Bảo hành: Đổi size miễn phí trong 3 ngày.
Quần jean nữ với thiết kế mới thời trang hơn, mang lại sự tự tin tối đa cho người mặc trước những người xung quanh
Quần may bằng vải denim nên rất mềm, đảm bảo thoải mái ngay cả khi di chuyển nhiều.
Dáng quần jean trẻ trung rộng rãi, túi quần lớn rất thuận tiện cho việc đựng smart phone hoặc ví cỡ bự.
Màu sắc chuẩn được nhuộm kỹ giúp hạn chế tối đa việc phai màu khi sử dụng.
', N'img1_SP23.jpg', N'img2_SP23.jpg', N'img3_SP23.jpg', 200000, N'NEW', N'S', N'M', N'L', N'QL04', N'L105', N'L002')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP24', N'Quần jean nữ ống loe lưng cao dáng ôm skinny quần bò nữ cạp cao ống đứng loe nhẹ', N'THÔNG TIN SẢN  PHẨM:
Xuất xứ: Việt Nam
Tiêu chuẩn chất lượng: TCCL Việt Nam
Màu sắc: Xanh , Đen, Xám, Trắng
Bảo hành: Đổi size miễn phí trong 3 ngày.
Quần jean nữ với thiết kế mới thời trang hơn, mang lại sự tự tin tối đa cho người mặc trước những người xung quanh
Quần may bằng vải denim nên rất mềm, đảm bảo thoải mái ngay cả khi di chuyển nhiều.
Dáng quần jean trẻ trung rộng rãi, túi quần lớn rất thuận tiện cho việc đựng smart phone hoặc ví cỡ bự.
Màu sắc chuẩn được nhuộm kỹ giúp hạn chế tối đa việc phai màu khi sử dụng.
', N'img1_SP24.jpg', N'img2_SP24.jpg', N'img3_SP24.jpg', 160000, N'NEW', N'S', N'M', N'L', N'QL04', N'L105', N'L002')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP25', N'Áo Sweater Nỉ Bông TABI Dáng Rộng Cotton Mịn Unisex Dưới 75kg', N'THÔNG TIN SẢN PHẨM:
- Thương hiệu: Tabi Store
- Xuất xứ: Việt Nam
 ĐẶC TÍNH - ƯU ĐIỂM:
+ Chất liệu vải áo cotton mềm mịn, giữ nhiệt
+ Thiết kế sweater lentheo phong cách hàn quốc trẻ trung năng động, thích hợp mặc hàng ngày, mặc đi chơi, dạo phố
+ Form áo rộng, dễ phối đồ, mix với quần jean hay chân váy đều cực xinh
+ Màu sắc: Đen &amp; Trắng
', N'img1_SP25.jpg', N'img2_SP25.jpg', N'img3_SP25.jpg', 100000, N'NEW', N'M', N'L', N'XL', N'Ql04', N'L110', N'L005')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP26', N'Áo Sweater Polo TABI Tay Dài Dáng Rộng Unisex', N'THÔNG TIN SẢN PHẨM:
- Thương hiệu: Tabi Store
- Xuất xứ: Việt Nam
 ĐẶC TÍNH - ƯU ĐIỂM:
+ Chất liệu vải áo cotton mềm mịn, giữ nhiệt
+ Thiết kế theo phong cách hàn quốc trẻ trung năng động, thích hợp mặc hàng ngày, mặc đi chơi, dạo phố
+ Form áo sweater nam nữ rộng, tay bồng, dễ phối đồ, mix với quần jean hay chân váy đều cực xinh
+ Màu sắc: Đen, Trắng, Hồng
', N'img1_SP26.jpg', N'img2_SP26.jpg', N'img3_SP26.jpg', 110000, N'NEW', N'M', N'L', N'XL', N'Ql05', N'L110', N'L005')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP27', N'Áo Sweater Polo TABI Tay Dài Dáng Rộng Unisex Dưới 85kg - Since 1990', N'THÔNG TIN SẢN PHẨM:
- Thương hiệu: Tabi Store
- Xuất xứ: Việt Nam
ĐẶC TÍNH - ƯU ĐIỂM:
+ Chất liệu vải áo sweater polo làm từ cotton mềm mịn, giữ nhiệt
+ Thiết kế theo phong cách hàn quốc trẻ trung năng động, thích hợp mặc hàng ngày, mặc đi chơi, dạo phố
+ Form áo rộng, dễ phối đồ, mix với quần jean hay chân váy đều cực xinh
+ Màu sắc: Xám
', N'img1_SP27.jpg', N'img2_SP27.jpg', N'img3_SP27.jpg', 110000, N'NEW', N'M', N'L', N'XL', N'QL05', N'L110', N'L005')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP28', N'Áo Sweater Nỉ Bông TABI Dáng Rộng Cotton Mịn Unisex Dưới 72kg - Jealousy', N'THÔNG TIN SẢN PHẨM:
- Thương hiệu: Tabi Store
- Xuất xứ: Việt Nam
ĐẶC TÍNH - ƯU ĐIỂM:
+ Chất liệu áo sweater form rộng được làm từ nỉ bông mềm mịn, giữ nhiệt
+ Thiết kế theo phong cách hàn quốc trẻ trung năng động, thích hợp mặc hàng ngày, mặc đi chơi, dạo phố
+ Form áo rộng, dễ phối đồ, mix với quần jean hay chân váy đều cực xinh
+ Màu sắc: Ghi sáng
', N'img1_SP28.jpg', N'img2_SP28.jpg', N'img3_SP28.jpg', 110000, N'NEW', N'M', N'L', N'XL', N'QL05', N'L110', N'L005')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP29', N'Chân Váy Dài Qua Gối TABI KaKi', N'THÔNG TIN SẢN PHẨM:
- Thương hiệu: Tabi Store
- Xuất xứ: Việt Nam
ĐẶC TÍNH - ƯU ĐIỂM:
+ Chất liệu chân váy giả jean được làm từ vải kaki mềm, co giãn tốt
+ Thiết kế theo phong cách hàn quốc trẻ trung năng động, thích hợp mặc hàng ngày, mặc đi chơi, dạo phố
+ Form váy ôm sát dễ phối đồ, mix với áo phông, áo sơ mi đều cực xinh
+ Màu sắc: Đen
', N'img1_SP29.jpg', N'img2_SP29.jpg', N'img3_SP29.jpg', 99000, N'NEW', N'S', N'M', N'L', N'QL05', N'L102', N'L005')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP30', N'Váy Nhung Đen Cổ Tròn Phối Tay Voan Đính Nơ Xinh Xắn', N'THÔNG TIN SẢN PHẨM
- Sản phẩm: Váy nhung phối tay voan
- Chất liệu: Vải nhung cứng phối tay voan, có quần trong
- Sản xuất tại: Việt Nam 
- Số đo chi tiết đầm:
 - Size S:
  + Dài: 77cm
  + Ngực: 88cm đổ lại
  + Eo: 65cm
  + Vai: 35cm
  + Dài tay: 30cm
 ( Inbox shop để nếu cần tư vấn kĩ hơn)
', N'img1_SP30.jpg', N'img2_SP30.jpg', N'img3_SP30.jpg', 230000, N'NEW', N'S', N'M', N'L', N'QL05', N'L102', N'L001')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP31', N'Váy Babydoll Hoa Nhí Tay Phồng Cổ Tròn 2 Lớp Có Dây Cột Eo', N'THÔNG TIN SẢN PHẨM
- Sản phẩm: Váy Babydoll Hoa Nhí Tay Phồng
- Chất liệu: Voan thô dày đẹp, 2 lớp, có dây cột eo
- Sản xuất tại: Việt Nam 
- Số đo chi tiết đầm:
  + Dài: 105cm
  + Ngực: 90cm đổ lại
  + Eo: 74cm đổ lại (ngang eo váy: 38cm)', N'img1_SP31.jpg', N'img2_SP31.jpg', N'img3_SP31.jpg', 220000, N'NEW', N'M', N'L', N'XL', N'QL06', N'L102', N'L001')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP32', N'Đầm Babydoll Nhiều Tầng Cổ Sơ Mi, Váy Xòe Cộc Tay Phông Cách Tiểu Thư Siêu Xinh', N'THÔNG TIN SẢN PHẨM
- Sản phẩm: Đầm Babydoll Nhiều Tầng Cổ Sơ Mi
- Chất liệu: chất thô nến
- Sản xuất tại: Việt Nam 
- Số đo chi tiết đầm:
  + Dài: 81cm
  + Ngực: 94cm đổ lại
  + Eo: 94cm đổ lại
  + Vai: 66cm
  + Ngang bắp tay: 22cm
  + Dài tay: 28cm', N'img1_SP32.jpg', N'img2_SP32.jpg', N'img3_SP32.jpg', 250000, N'NEW', N'M', N'L', N'XL', N'QL06', N'L102', N'L001')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP33', N'Áo Khoác Cardigan Len Hoạ Tiết Ô Chéo 2 Màu Đen Trắng, ', N'THÔNG TIN SẢN PHẨM
+ Áo Cardigan Ô Chéo
+ Chất liệu: Len
+ Xuất xứ: Việt Nam 
+ Chiều dài áo: 62cm 
+ Chiều ngang áo: 52cm 
+ Vai: 53cm
+ Tay áo:44-45cm
+ Ngang bắp tay: 20cm', N'img1_SP33.jpg', N'img2_SP33.jpg', N'img3_SP33.jpg', 225000, N'NEW', N'M', N'L', N'XL', N'QL06', N'L109', N'L001')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP34', N'Áo Khoác Cardigan Len Hoạ Tiết Sọc Caro To Phong Cách Thời Trang Hàn Quốc,', N'THÔNG TIN SẢN PHẨM
+ Áo Cardigan Len Hoạ Tiết Sọc Caro To
+ Chất liệu: Len ( loại dày, đẹp, cầm rất nặng tay, độ co giãn tốt)
+ Xuất xứ: Việt Nam 
+ Chiều dài áo: 62cm 
+ Chiều ngang áo: 54cm 
+ Vai: 55-56cm
+ Tay áo: 47cm
+ Ngang bắp tay: 20cm', N'img1_SP34.jpg', N'img2_SP34.jpg', N'img3_SP34.jpg', 225000, N'NEW', N'M', N'L', N'XL', N'Ql06', N'L109', N'L001')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP35', N'Áo Khoác Cardigan Len Màu Trắng Kem Phối Tay Kẻ Viền Đen', N'THÔNG TIN SẢN PHẨM
+ Áo Cardigan Tay Sọc Đen
+ Chất liệu: Len
+ Chiều dài áo: 56-57cm 
+ Chiều ngang áo: 55cm 
+ Vai: 58cm
+ Tay áo: 41cm
+ Ngang bắp tay: 18cm', N'img1_SP35.jpg', N'img2_SP35.jpg', N'img3_SP35.jpg', 260000, N'NEW', N'M', N'L', N'XL', N'QL07', N'L109', N'L001')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP36', N'Cardigan len dáng rộng, Áo khoác len nữ cadigan dáng dài màu đen, hồng họa tiết kim cương ulzzang hàn', N'Thông tin sản phẩm: Cardigan len dáng rộng, Áo khoác len nữ cadigan dáng dài màu đen, hồng họa tiết kim cương quả trám ulzzang hàn
- Tên shop: Ladyquangchau
- Xuất xứ: Quảng Châu
- Giới tính: Nữ
- Kích Thước áo len nữ hàn quốc dành cho các bạn < 60kg
- Chiều Dài: 60cm
- Ngực Áo: 100cm
- Màu Sắc: Đen, Be', N'img1_SP36.jpg', N'img2_SP36.jpg', N'img3_SP36.jpg', 230000, N'NEW', N'M', N'L', N'XL', N'QL07', N'L109', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP37', N'Cardigan len nữ dáng dài, áo khoác len hàn quốc màu đen trắng ngựa vằng', N'Tên Sản Phẩm : Cardigan len nữ dài tay dễ thương, áo len hàn quốc kiểu phối màu đen trắng LADY
Xuất xứ: Quảng Châu
Kiểu Dáng: dáng dài
Màu Sắc: Trắng
Chất vải: len mịn
Bảng kích thước: dài 65cm - ngực áo 112', N'img1_SP37.jpg', N'img2_SP37.jpg', N'img3_SP37.jpg', 285000, N'NEW', N'M', N'L', N'XL', N'QL07', N'L109', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP38', N'Áo sơ mi kẻ sọc thời trang nam cao cấp phong cách nam tính 3 màu trẻ trung basic', N'THÔNG TIN SẢN PHẨM:
Chất liệu lụa thô, chất vải dày dặn, mềm mịn, không xù không nhăn, không bai, không phai màu.
- From body Hàn Quốc ôm trọn bờ vai, mặc trẻ trung phong cách.
- Thấm hút mồ hôi tốt, phù hợp đi làm, đi chơi.
- Xuất xứ: Việt Nam
- sản phẩm có các size như sau:
Size M: cân nặng 49 - 56kg, cao 1m50 -1m62
Size L: cân nặng 56-61kg, cao 1m60-1m68
Size XL: cân nặng 61-68kg, cao 1m65-1m72', N'img1_SP38.jpg', N'img2_SP38.jpg', N'img3_SP38.jpg', 200000, N'NEW', N'M', N'L', N'XL', N'QL07', N'L103', N'L006')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP39', N'Sơ mi nam công sở Vải Lụa Co Giãn, sơ mi cổ tàu chống nhăn chống xù
', N'THÔNG TIN SẢN PHẨM:
- Sơ mi nam công sở là món đồ kinh điển dành cho nam giới, đặc biệt là những quý ông công sở.
- 100% chất cotton cao cấp, thấm hút mồ hôi gấp 5 lần vải bình thường giúp người mặc cảm thấy thoải mái, dễ chịu.
- Mếch cổ và tay làm bằng chất liệu cao cấp, không sợ bong tróc.
- Sơ mi nam công sở với họa tiết đơn giản, dễ mặc, dễ phối đồ
- Fom Body cực chuẩn, ôm trọn bờ vai mặc cực trẻ trung và phong cách, phù hợp mọi hoàn cảnh kể cả đi chơi và đi làm.
Sơ mi nam công sở đủ size từ 28 đến 34 cho khách từ 45-80 kg mặc vừa:
Size M: Cân nặng từ 47-50kg, Chiều cao dưới 157cm
Size L: Cân nặng từ 55-58kg, Chiều cao 163 - 168cm
Size XL: Cân nặng từ 60-64kg, Chiều cao 168 - 172cm', N'img1_SP39.jpg', N'img2_SP39.jpg', N'img3_SP39.jpg', 120000, N'NEW', N'M', N'L', N'XL', N'Ql07', N'L103', N'L006')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP40', N'Áo Thun Nam POLO Cổ Bẻ Ngắn Tay,ÁO Phông Nam Dáng Ôm Thời Trang Cao Cấp
', N'THÔNG TIN SẢN PHẨM:
- Áo thun nam POLO cổ bẻ là món đồ kinh điển dành cho nam bởi nó là trang phục giúp các chàng trai làm mới phong cách của chính mình. 
- Chất liệu thun cao cấp mềm mại, thông thoáng và co giãn tối ưu, luôn tạo cảm giác thoải mái khi mặc..
- Thiết kế cổ bẻ xẻ trụ đơn giản, cực kỳ năng động, khỏe khoắn, nhưng vẫn không kém phần sành điệu, hợp mốt..
- Áo thun nam cổ bẻ họa tiết trẻ trung
- Form dáng body vừa người , phù hợp du lịch, du xuân, dạo phố, picnic, cafe....
Áo thun nam POLO cổ bẻ đủ size từ M đến 3XL cho khách từ 450-80 kg mặc vừa:
- SIZE M: Cân nặng 40-47kg, Cao 1m45 - 1m55, 
- SIZE L: Can nặng 48- 56kg, Cao 1m55 - 1m65, 
- SIZE XL: cân nặng 57 - 64kg, Cao 1m60 - 1m70', N'img1_SP40.jpg', N'img2_SP40.jpg', N'img3_SP40.jpg', 150000, N'NEW', N'M', N'L', N'XL', N'Ql08', N'L104', N'L006')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP41', N'Áo thun tay lỡ Unisex 98WEAR phông trơn nam nữ tay lỡ ', N'Thông tin sản phẩm Áo thun  phông trơn nam nữ tay lỡ form rộng 12 màu:
- Hàng chuẩn sản xuất, tem mác chuẩn chính hãng.
- Chất liệu: thun cotton 100%, co giãn 4 chiều, vải mềm, vải mịn, thoáng mát, không xù lông.
- Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.
- Mặc ở nhà, mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.
- Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.
Thông số chọn size:
Size M: 1m50-1m60 (50-55kg) 
Size L: 1m55-1m70 (57-65kg) 
Size XL: 1m68- 1m75 (60-70kg)
', N'img1_SP41.jpg', N'img2_SP41.jpg', N'img3_SP41.jpg', 190000, N'NEW', N'M', N'L', N'XL', N'QL08', N'L104', N'L006')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP42', N'Áo thun tay ngắn nhiều màu in logo LADOS 19073 chất co giãn, thấm hút tốt, không xù lông', N'Thông tin sản phẩm:
- Chất liệu: vải poli, co giãn rất tốt
-  chất vải, thấm mồ hôi tốt
-  Tuyệt đối không ra màu, không xù lông, không bám bụi
- Đủ màu , tươi trẻ, năng động
- Unisex nam nữ đều mặc được,  mặc cặp, hay mặc nhóm đều chất
- Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc
- Kiểu dáng: Thiết kế theo form rộng vừa,đơn giản , dễ mặc ..
', N'img1_SP42.jpg', N'img2_SP42.jpg', N'img3_SP42.jpg', 160000, N'NEW', N'M', N'L', N'XL', N'QL08', N'L104', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP43', N'Áo thun nam tay ngắn họa tiết LOS ANGELES LADOS ', N'Thông tin sản phẩm:
- Chất liệu: vải poli, co giãn rất tốt
-  chất vải, thấm mồ hôi tốt
-  Tuyệt đối không ra màu, không xù lông, không bám bụi
- Đủ màu , tươi trẻ, năng động
- Unisex nam nữ đều mặc được,  mặc cặp, hay mặc nhóm đều chất
- Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc
- Kiểu dáng: Thiết kế theo form rộng vừa,đơn giản , dễ mặc ..
', N'img1_SP43.jpg', N'img2_SP43.jpg', N'img3_SP43.jpg', 160000, N'NEW', N'M', N'L', N'XL', N'QL08', N'L104', N'L005')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP44', N'Áo gile len nữ họa tiết phối tim, Áo kiểu gilê cổ chữ V màu be nâu form vừa đẹp ulzzang tiểu thư
', N'Thông tin sản phẩm: Áo gile len nữ họa tiết phối tim, Áo kiểu gilê cổ chữ V màu be nâu form vừa đẹp ulzzang tiểu thư

- Tên shop: Ladyquangchau
- Xuất xứ: Quảng Châu
- Giới tính: Nữ
- Kích Thước: Áo len nữ dài tay họa tiết gấu dễ thương phối rách < 60kg
- Chiều Dài: 60cm
- Ngực Áo: 100cm
- Màu Sắc: Nâu, Be', N'img1_SP44.jpg', N'img2_SP44.jpg', N'img3_SP44.jpg', 280000, N'NEW', N'M', N'L', N'XL', N'QL08', N'L108', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP45', N'Áo gile len Ulzzang, Áo Len LADY nữ kiểu hàn form rộng họa tiết phối đám mây dễ thương', N'Phong cách: ngọt ngào và trẻ trung / sinh viên đại học
Các yếu tố / kỹ thuật phổ biến: Dệt đặc, khâu,
 Kiểu áo: Dáng rộng
Cách mặc: Áo tròng đầu
Hình thức kết hợp: Một mảnh
Chiều dài / chiều dài tay áo: Trung bình / không tay
Cổ áo: cổ chữ V
Độ tuổi thích hợp: thanh niên (18-30 tuổi)', N'img1_SP45.jpg', N'img2_SP45.jpg', N'img3_SP45.ipg', 215000, N'NEW', N'M', N'L', N'XL', N'QL02', N'L108', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP46', N'Áo Gile Len Nữ Quảng Châu, Áo Len Gile Sóng Thời Trang FreeSize Màu Xanh Tím Than Điệu Đà Nữ Tính', N'Phong cách: ngọt ngào và trẻ trung / sinh viên đại học
Các yếu tố / kỹ thuật phổ biến: Dệt đặc, khâu,
Cách mặc: Choàng Đầu
Hình thức kết hợp: Một mảnh
Độ tuổi thích hợp: thanh niên (18-30 tuổi)', N'img1_SP46.jpg', N'img2_SP46.jpg', N'img3_SP46.jpg', 180000, N'NEW', N'M', N'L', N'XL', N'QL02', N'L108', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP47', N'Áo gile len trái tim, Áo len nữ đẹp thời trang điệu đà nữ tính phong cách ulzzang dễ thương', N'Phong cách: ngọt ngào và trẻ trung / sinh viên đại học
Các yếu tố / kỹ thuật phổ biến: Dệt đặc, khâu,
 Kiểu áo: Dáng rộng
Cách mặc: Áo tròng đầu
Hình thức kết hợp: Một mảnh
Chiều dài / chiều dài tay áo: Trung bình / không tay
Cổ áo: cổ chữ V
Độ tuổi thích hợp: thanh niên (18-30 tuổi)', N'img1_SP47.jpg', N'img2_SP47.jpg', N'img3_SP47.jpg', 219000, N'NEW', N'M', N'L', N'XL', N'QL02', N'L108', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP48', N'Áo khoác phao nữ có mũ, Áo phao béo đại hàn ulzzang dáng rộng ', N'Thông tin sản phẩm: Áo khoác phao nữ có mũ, Áo phao béo đại hàn ulzzang dáng rộng nhiều màu hàng có sẵn ladyquangchau
- Ladyquangchau
- Xuất xứ: Quảng Châu
- Giới tính: Nữ
- Kích Thước:  Áo khoác phao nữ có mũ < 63kg
- Chiều Dài: 67cm
- Ngực Áo: 115cm
- Màu Sắc: Màu Đen, Màu kem
', N'img1_SP48.jpg', N'img2_SP48.jpg', N'img3_SP48.jpg', 350000, N'NEW', N'L', N'XL', N'XXL', N'QL02', N'L113', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP49', N'Áo khoác blazer dáng dài hàn quốc, Áo choàng mùa đông 2 lớp màu nâu, đen quảng châu form rộng', N'Áo khoác blazer nâu túi ngực dáng dài 2 lớp sang chảnh Hàn Quốc ladyquangchau
Thông tin sản phẩm:
-	Chất liệu: Vải áo cao cấp, dày dặn hơn, ấm áp. Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn. Cam kết chất lượng tốt giá cả hợp lí phù hợp với khách hàng
-	Kích thước: Áo khoác blazer đen dáng rộng có túi Hàn Quốc sang chảnh nữ form dành cho các bạn < 62kg
- Chiều Dài: 66 - 69cm
- Ngực Áo: 112cm 
- Màu sắc: Nâu ', N'img1_SP49.jpg', N'img2_SP49.jpg', N'img3_SP49.jpg', 500000, N'NEW', N'M', N'L', N'XL', N'QL02', N'L113', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP50', N'Áo khoác bomber trần bông nam nữ, Áo phao đại hàn unisex siêu nhẹ form rộng giữ ấm mùa đông', N'Thông tin sản phẩm: Áo khoác bomber trần bông nam nữ, Áo phao đại hàn unisex siêu nhẹ form rộng giữ ấm mùa đông
- Xuất xứ: Quảng Châu
- Giới tính: Nam, Nữ
- Kích Thước Áo len kiểu hàn ulzzang dành cho các bạn  < 75kg
- FreeSize < 75kg ( Dài 70cm, Tay áo 53cm, Ngực áo 122cm)
- Màu Sắc: Trắng Kem, Đen
- Họa tiết: Thêu chữ
- Kiểu áo: Bomber khoác ngoài
', N'img2_SP50.jpg', N'img2_SP50.jpg', N'img3_SP50.jpg', 345000, N'NEW', N'L', N'XL', N'XXL', N'QL03', N'L113', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP51', N'Áo khoác dạ Tweed trắng tiểu thư, áo dạ phối rách khuy đồng túi ngực sang chảnh Hàn Quốc', N'Thông tin sản phẩm: Áo khoác dạ Tweed trắng tiểu thư phối rách khuy đồng túi ngực sang chảnh Hàn Quốc Ladyquangchau
-	Chất liệu: Vải áo phao cao cấp, dày dặn hơn, ấm áp. Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn. Cam kết chất lượng tốt giá cả hợp lí phù hợp với khách hàng
-	Kích thước: Áo khoác dạ tweed sang chảnh nữ form dành cho các bạn < 60kg
- Chiều Dài: 51cm
- Ngực Áo: 102cm 
- Màu sắc: Trắng ', N'img1_SP52.jpg', N'img2_SP51.jpg', N'img3_SP51.jpg', 420000, N'NEW', N'L', N'XL', N'XXL', N'QL03', N'L113', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP52', N'Quần Ống Suông Rộng Nữ Siêu Hack Dáng Chất Lụa Hàn Ullzang', N'THÔNG TIN SẢN PHẨM
- Quần Ống Rộng Hack Dáng
- Chất liệu: chất vải trượt, mềm mát siêu đẹp, mặc cực thoải mái và tôn dáng
- Xuất xứ: Việt Nam
- Màu sắc: Nâu tây
- Size:
 + Size S: eo 65cm đổ lại, mông dưới 95cm, ngang đùi 31cm, ngang ống chân 25cm, đáy 33cm, dài quần 103cm
 + Size M: eo 69cm đổ lại, mông dưới 97cm, ngang đùi 32cm, ngang ống quần 26cm, đáy 33cm, dài quần 103cm
', N'img1_SP52.jpg', N'img2_SP52.jpg', N'img3_SP52.jpg', 230000, N'NEW', N'S', N'M', N'L', N'QL03', N'L114', N'L001')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP53', N'Quần Ống Rộng Jogger Nữ Trơn BOM HOUSE 3 Màu Ulzzang Unisex', N'Quần Ống Rộng Jogger Nữ Trơn BOM HOUSE 3 Màu Ulzzang Unisex
Chất Liệu : Ni Da Cá, Vải Mềm Mịn, Không Xù Lông
+ Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.
+ Mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.
+ Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.
-Size M: dưới 55kg, Cao dưới 1m60
-Size L: từ 56 - 65kg , Cao 1m61 - 1m70
-Size XL: từ 65- 75kg, Cao dưới 1m78
', N'img1_SP53.jpg', N'img2_SP53.jpg', N'img3_SP53.jpg', 150000, N'NEW', N'M', N'L', N'XL', N'QL03', N'L114', N'L002')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP54', N'Quần Dài Ống Rộng Nữ Trơn Ulzzang Unisex Bom House', N'Quần Dài Ống Rộng Nữ Trơn Ulzzang Unisex Bom House
Chất Liệu : Ni Da Cá, Vải Mềm Mịn, Không Xù Lông
+ Đường may chuẩn chỉnh, tỉ mỉ, chắc chắn.
+ Mặc đi chơi hoặc khi vận động thể thao. Phù hợp khi mix đồ với nhiều loại.
+ Thiết kế hiện đại, trẻ trung, năng động. Dễ phối đồ.
', N'img1_SP54.jpg', N'img2_SP54.jpg', N'img3_SP54.jpg', 120000, N'NEW', N'M', N'L', N'XL', N'QL03', N'L114', N'L002')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP55', N'Quần âu nam cạp chun 98WEAR công sở Hàn Quốc ống suông, quần baggy ống rộng dáng âu phong cách', N'THÔNG TIN SẢN PHẨM:
- Xuất sứ: Việt nam
- Chun cạp may dạng bản rộng mặc ôm người, không gây khó chịu hằn da, có dây buộc chắc chắn,
- Quần âu nam Hàn quốc được thiết kế theo đúng form chuẩn của người Việt Nam.
- Chất liệu mềm mịn, dày dặn nhưng thoáng mát (chất liệu tuyết nhung, khiến chiếc quần dài mặc được cả mùa đông, mùa hè vô cùng tiện lợi)
- Màu sắc chuẩn ảnh, vải cao cấp không nhăn, không xù, không bai giãn, không phai màu.
- Màu sắc: Đen / Xám / Be
', N'img1_SP55.jpg', N'img2_SP55.jpg', N'img3_SP55.jpg', 250000, N'NEW', N'M', N'L', N'XL', N'QL01', N'L114', N'L006')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP56', N'Mũ vành rộng trơn chống tia UV cao cấp, nón vành tròn đi biển phong cách Hàn Quốc', N'Thông tin sản phẩm
 - Size mũ ( 56 - 58cm ), vành tròn rộng 9cm che nắng được cả khuôn mặt
 - Chất liệu 100% Cotton đàn hồi tốt, thoáng khí, dễ dàng gấp gọn cho vào túi, không phai màu, hạn chế tối đa bám bụi
 - Thiết kế thời trang, cá tính mới lạ không chỉ tạo sự khách biệt mà còn dễ dàng che đi khuyết điểm khuôn mặt của bạn
 - Diện đi du lịch, đi làm, đi học đêu rất sang và đẹp nhé các nàng. Hơn nữa đây sẽ là một món quà ý nghĩ cho bạn bè người thân trong những dịp đặc biệt.', N'img1_SP56.jpg', N'img2_SP56.jpg', N'img3_SP56.jpg', 115000, N'NEW', N'1SIZE', N'1SIZE', N'1SIZE', N'QL01', N'L106', N'L002')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP57', N'Nón lưỡi trai Cotton chỉ thêu MARA. mũ lưỡi trai nữ chống nắng cá tính Hot Trend hè', N'Thông tin sản phẩm
- Mũ này Nam Nữ đội đều được các bạn nhé, mũ đôi thì quá tuyệt vời luôn ạ, hihi
- Chất liệu Cotton mềm mại tạo cảm giác thoải mái khi đeo và thoáng khí
- Họa tiết chỉ thêu vi tính rất bền, tinh tế rất dễ phối đồ, diện đi chơi, học hay quà tặng đều rất sang ạ.
- Mũ có nút chỉnh size phù hợp với nhiều size đầu người đội', N'img1_SP57.jpg', N'img2_SP57.jpg', N'img3_SP57.jpg', 80000, N'NEW', N'1SIZE', N'1SIZE', N'1SIZE', N'QL01', N'L106', N'L002')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP58', N'Mũ vành rộng 2 mặt cao cấp vành rộng 10 cm chống nắng hiệu quả', N'Thông tin sản phẩm
 - Dừng được 2 mặt mũ 2 màu khác nhau
 - Size mũ ( 56 - 58cm ), vành tròn rộng 1cm che nắng được cả khuôn mặt
 - Chất liệu 100% Cotton chống tia UV,  đàn hồi tốt, thoáng khí, dễ dàng gấp gọn cho vào túi, không phai màu, hạn chế tối đa bám bụi
 - Thiết kế thời trang, cá tính mới lạ không chỉ tạo sự khách biệt mà còn dễ dàng che đi khuyết điểm khuôn mặt của bạn
 - Diện đi du lịch, đi làm, đi học đêu rất sang và đẹp nhé các nàng. Hơn nữa đây sẽ là một món quà ý nghĩ cho bạn bè người thân trong những dịp đặc biệt.', N'img1_SP58.jpg', N'img2_SP58.jpg', N'img3_SP58.jpg', 129000, N'NEW', N'1SIZE', N'1SIZE', N'1SIZE', N'QL01', N'L106', N'L002')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP59', N'Mũ vành rộng chống tia UV cao cấp vành sau hớt vát hạn chế ảnh hưởng nếp tóc', N'Thông tin sản phẩm
- Vành sau thiết kế hạn chế ảnh hưởng tới nếp tóc cá tính, độc đáo
 - Size mũ ( 54 - 58cm ), vành tròn  dài 9cm bao trọn khuôn mặt chống nắng hiệu quả
 - Chất liệu  Cotton mềm, mịn đàn hồi tốt, thoáng khí, dễ dàng gấp gọn cho vào túi, không phai màu, hạn chế tối đa bám bụi
 - Thiết kế thời trang, cá tính mới lạ không chỉ tạo sự khách biệt mà còn dễ dàng che đi khuyết điểm khuôn mặt của bạn
 - Diện đi du lịch, đi làm, đi học đêu rất sang và đẹp nhé các nàng. Hơn nữa đây sẽ là một món quà ý nghĩ cho bạn bè người thân trong những dịp đặc biệt.
', N'img1_SP59.jpg', N'img2_SP59.jpg', N'img3_SP59.jpg', 115000, N'NEW', N'1SIZE', N'1SIZE', N'1SIZE', N'QL01', N'L106', N'L002')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP60', N'Đồng hồ Rolex nam - viền đá daimond cao cấp, dây kim loại đúc nguyên khối không bay màu, thời trang sang trọng, quý phái', N'THÔNG TIN SẢN PHẨM
• Kiểu máy : Máy pin (Nhập khẩu nhật)
• Kích thước mặt : Tròn 38mm
• Kích thước đây : 220 x 16mm
• Chất liệu dây: Dây kim loại
• Chất liệu khung : Thép không gỉ.
• Mặt kính :  Kính Mineral chống xước
• Chống nước : 3ATM / 30M
(khuyến cáo các bạn tránh nước để đồng hồ được bền đẹp hơn, chốt chỉnh giờ phải được đóng chặt vì đóng ko chặt hoặc quên đóng chốt sẽ bị vào nước)', N'img1_SP60.jpg', N'img2_SP60.jpg', N'img3_SP60.jpg', 380000, N'NEW', N'1SIZE', N'1SIZE', N'1SIZE', N'QL02', N'L107', N'L003')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP61', N'Đồng hồ nữ Rolex dây thép không gỉ màu sắc thời thượng , dành cho phải đẹp', N'THÔNG SỐ SẢN PHẨM : Đồng hồ nữ rolex
• Kiểu máy : Pin nhật
• Kích thước mặt : 36mm
• Kích thước đây : 220 x 16mm
• Chất liệu dây: Dây cao su thơm
• Chất liệu khung : Thép không gỉ.
• Kính : Kính Mineral chống xước
• Chống nước : Chỉ số chống nước 3ATM / 30M
• Bảo hành máy 12 tháng / Bảo hành đá trọn đời
BỘ SẢN PHẨM Đồng hồ nữ Hublot bao gồm
- 1 Đồng hồ
- 1 Hộp đồng hồ đi kèm
- 1 Thẻ bảo hành', N'img1_SP61.jpg', N'img2_SP61.jpg', N'img3_SP61.jpg', 450000, N'NEW', N'1SIZE', N'1SIZE', N'1SIZE', N'QL02', N'L107', N'L003')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP62', N'Đồng Hồ Nam Rolex Dây Da Kim Vạch La Mã Có Lịch Ngày Size Mặt 38mm Viền Thép Chống Gỉ Sét ', N'THÔNG TIN SẢN PHẨM 
- Tình trạng: Mới 
- Nguồn gốc: Nhật Bản. 
- Kích thước mặt đồng hồ: 38mm (nam)
- Kích thước dây đồng hồ: 20mm (nam) 
- Chống nước: 3ATM (đi mưa rửa tay thoái mái)
- Loại: Dùng kim quay hiển thị, lịch ngày tiện lợi. 
- Chất liệu mặt: Kính tráng Sapphire chống xước sinh hoạt
- Chất liệu vỏ: Thép không gỉ cao cấp. 
- Năng lượng sử dụng: Pin sử dụng trên 3 năm. 
- BẢO HÀNH: 12 tháng kèm thẻ bảo hành', N'img1_SP62.jpg', N'img2_SP62.jpg', N'img3_SP62.jpg', 200000, N'NEW', N'1SIZE', N'1SIZE', N'1SIZE', N'QL02', N'L107', N'L003')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP63', N'Túi Da Đeo Chéo Gucci Thời Trang Sang Trọng Cho Nam Nữ', N'chất liệu da thật, cao cấp, được chọn lọc kỹ càng. Khi bạn sờ vào có cảm giác rất “xịn”, cứng cáp, và chất lượng khiến bạn chỉ muốn sở hữu ngay. Bên cạnh đó, các mẫu sản phẩm đều được làm thủ công rất khéo léo từ những nghệ nhân người Ý. Chính vì vậy mà giỏ xách có kiểu dáng tinh tế, tỉ mỉ đến từng chi tiết, ngày trên cả đường kim mũi chỉ. Có thể nói nhờ chất liệu da này cũng đã cho thấy được giá trị của thương hiệu túi hàng hiệu này.', N'img1_SP63.jpg', N'img2_SP63.jpg', N'img3_SP63.jpg', 2500000, N'NEW', N'S', N'M', N'L', N'QL02', N'L111', N'L001')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP64', N'Túi đeo chéo dây bản to siêu cá tính và phong cách', N'- Chất liệu: da tổng hợp cao cấp (mềm mại, không bong tróc, không thấm nước ) 
- Trẻ trung, cá tính 
- Phù hợp với mọi lứa tuổi 
- Màu sắc: đen, trắng
- Phù hợp với đi chơi, đi làm, đi dự tiệc, đi họp, đi shopping, đi du lịch
- Trọng lượng: 300g', N'img1_SP64.jpg', N'img2_SP64.jpg', N'img3_SP64.jpG', 1600000, N'NEW', N'S', N'M', N'L', N'QL02', N'L111', N'L001')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP65', N'Túi đeo chéo nữ hàn quốc, túi xách nữ mini đeo vai kẹp nách kiểu dáng trẻ trung cá tính', N'Mô tả sản phẩm: Túi đeo chéo nữ hàn quốc, túi xách nữ mini đeo vai kẹp nách kiểu dáng trẻ trung cá tính
- Kích thước: 21x15x10
- Xuất Xứ: Quảng Châu
- Màu Sắc: Đen, Trắng
 Chất liệu: Da PU cao cấp, mềm, bóng, không nhăn, dễ lau chùi và bảo quản 
Đặc điểm nổi bật: 
- Thiết kế rất dễ phối hợp cùng nhiều kiểu trang phục khác nhau giúp các bạn khách iu nữ bớt lo lắng khi set up đồ.
- Thích hợp: Đi chơi, đi học, đi làm, du lịch, công sở…
- Xuất xứ: Quảng châu (Shop chuyên hàng quảng châu chất đẹp may kỹ chứ không phải hàng gia công rẻ)
', N'img2_SP65.jpg', N'img2_SP65.jpg', N'img3_SP65.jpg', 140000, N'NEW', N'S', N'M', N'L', N'QL03', N'L111', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP66', N'Túi đeo chéo nữ da pu quảng châu, túi xách nữ đeo vai màu đen và trắng dễ thương', N'Mô tả sản phẩm Túi đeo chéo nữ da pu quảng châu, túi xách nữ đeo vai màu đen và trắng dễ thương
- Kích thước:
- Màu sắc: Trăng, Đen
- Xuất Xứ: Quảng Châu
- Chất liệu: Da PU cao cấp, mềm, bóng, không nhăn, dễ lau chùi và bảo quản 
Đặc điểm nổi bật: 
- Màu sắc: 
- Thiết kế rất dễ phối hợp cùng nhiều kiểu trang phục khác nhau giúp các bạn khách iu nữ bớt lo lắng khi set up đồ.
- Thích hợp: Đi chơi, đi học, đi làm, du lịch, công sở…
- Xuất xứ: Quảng châu (Shop chuyên hàng quảng châu chất đẹp may kỹ chứ không phải hàng gia công rẻ)
', N'img1_SP66.jpg', N'img2_SP66.jpg', N'img3_SP66.jpg', 140000, N'NEW', N'S', N'M', N'L', N'QL03', N'L111', N'L004')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP67', N'Khăn quàng cổ len nữ cashmere mùa đông Dày Mịn Hàng Quảng Châu ', N'THÔNG TIN SẢN PHẨM 
- Sản phẩm: Khăn quàng cổ nữ len cashmere - Khăn choàng cao cấp
- Kích thước: 200 x 60 (cm)
- Trọng lượng:400
ĐẶC ĐIỂM NỔI BẬT
- Khăn choàng cổ làm từ sợi len cashmere, chất khăn len mềm mịn không bai không xù. Tạo cảm giác nhẹ nhàng thoải mái khi đeo.
- Bản màu mới nhất, khăn có 4 bản phối màu đều tôn da và rất dễ phối đồ. 
- Khăn nhà Linly luôn đảm bảo 2 tiêu chí đẹp và độc. Khỏi lo đụng hàng, rinh ngay về thôi nàng ơi!
', N'img1_SP67.jpg', N'img2_SP67.jpg', N'img3_SP67.jpg', 100000, N'NEW', N'S', N'M', N'L', N'QL03', N'L112', N'L005')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP68', N'Khăn quàng cổ mùa đông trơn chất dạ len cashmere dệt kim mịn thời trang phong cách Hàn Quốc Ullzang hot trend 2022', N'THÔNG TIN SẢN PHẨM 
- Sản phẩm: Khăn quàng cổ nữ len cashmere - Khăn choàng cao cấp
- Kích thước: 200 x 60 (cm)
- Trọng lượng:400
ĐẶC ĐIỂM NỔI BẬT
- Khăn choàng cổ làm từ sợi len cashmere, chất khăn len mềm mịn không bai không xù. Tạo cảm giác nhẹ nhàng thoải mái khi đeo.
- Bản màu mới nhất, khăn có 4 bản phối màu đều tôn da và rất dễ phối đồ. 
- Khăn nhà Linly luôn đảm bảo 2 tiêu chí đẹp và độc. Khỏi lo đụng hàng, rinh ngay về thôi nàng ơi!
', N'img1_SP67.jpg', N'img2_SP68.jpg', N'img3_SP68.jpg', 130000, N'NEW', N'S', N'M', N'L', N'QL03', N'L112', N'L005')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP69', N'Khăn len Khăn quàng cổ len nữ cashmere mùa đông Chất Dày Dặn Mịn Ấm phong cách thời trang Siêu Đẹp 2022', N'THÔNG TIN SẢN PHẨM 
- Sản phẩm: Khăn quàng cổ nữ len cashmere - Khăn choàng cao cấp
- Kích thước: 200 x 40 (cm)
- Trọng lượng: 260g
ĐẶC ĐIỂM NỔI BẬT
- Khăn choàng cổ làm từ sợi len cashmere, chất khăn len mềm mịn không bai không xù. Tạo cảm giác nhẹ nhàng thoải mái khi đeo.
- Bản màu mới nhất, khăn có 4 bản phối màu đều tôn da và rất dễ phối đồ. 
- Khăn nhà Linly luôn đảm bảo 2 tiêu chí đẹp và độc. Khỏi lo đụng hàng, rinh ngay về thôi nàng ơi!
', N'img1_SP69.jpg', N'img2_SP69.jpg', N'img3_SP69.jpg', 109000, N'NEW', N'S', N'M', N'L', N'QL03', N'L112', N'L007')
INSERT [dbo].[PRODUCT] ([MaSP], [TenSP], [MoTa], [Hinh1], [Hinh2], [Hinh3], [DonGia], [TinhTrang], [KichThuoc1], [KichThuoc2], [KichThuoc3], [MaQL], [MaLoai], [MaBrand]) VALUES (N'SP70', N'Khăn quàng cổ len chất đẹp dạ mịn hai mặt pashmina họa tiết hình thoi nơ phong cách Hàn Quốc', N'Khăn quàng cổ len chất đẹp dạ mịn hai mặt pashmina họa tiết hình thoi nơ phong cách Hàn Quốc
 -Chất Liệu: Chất liệu len lụa dạ mềm mịn, dày dặn như da dê.
 -Điểm Nhấn:  Họa tiết SANG TRỌNG
 -Màu sắc: tinh tế, sang trọng, sắc nét
Thích Hợp:
- Dòng khăn Cao Cấp nhưng lại thích hợp với mọi lứa tuổi, yêu chiều mọi phong cách thời trang, hợp cạ với mọi trang phục.
- Một chiếc khăn, các nàng có thể dùng để: choàng cổ, che nắng, chắn gió, làm băng đô, thắt lưng,…đi chơi, đi học, đi làm hay biến hóa thành chiếc nơ xinh xắn trang trí cho chiếc túi xách hay đeo ở cổ tay...
- Đây còn là món quà dành tặng phái đẹp được ưu chuộng nhất quanh năm trong mọi dịp: lễ, tết, sinh nhật, kỷ niệm, quà tặng nhân viên,...
- Món quà hoàn hảo cho người thân, bạn bè, đối tác, người nước ngoài…
- Dạo phố, tụ họp bạn bè, giữ ấm “Sang Chảnh” nơi công sở, nổi bật khi đi du lịch…
', N'img1_SP70.jpg', N'img2_SP70.jpg', N'img2_SP70.ipg', 250000, N'NEW', N'S', N'M', N'L', N'QL01', N'L112', N'L007')
GO
INSERT [dbo].[SELLER] ([MaSeller], [TenSeller], [SDT], [DiaChi], [MaLogin], [MaQL], [AvatarSeller]) VALUES (N'SR01', N'Nguyễn Thị Hương Ly', N'0936251345', N'KP1/281,Kp Tân Hóa, huyệnn Gia Lai, tỉnh Gia Lai', N'S01', N'QL01', N'SR01.jpg')
INSERT [dbo].[SELLER] ([MaSeller], [TenSeller], [SDT], [DiaChi], [MaLogin], [MaQL], [AvatarSeller]) VALUES (N'SR02', N'Nguyễn Thị Ngọc Châu', N'0334532456', N'11/A1, phường Châu Đốc, tỉnh Tây Ninh', N'S02', N'QL02', N'SR02.jpg')
INSERT [dbo].[SELLER] ([MaSeller], [TenSeller], [SDT], [DiaChi], [MaLogin], [MaQL], [AvatarSeller]) VALUES (N'SR03', N'Nguyễn Thị Thủy Tiên', N'0932351349', N'Khu 1, huyện Ðồng Tháp, tỉnh Ðồng Tháp', N'S03', N'QL03', N'SR03.jpg')
INSERT [dbo].[SELLER] ([MaSeller], [TenSeller], [SDT], [DiaChi], [MaLogin], [MaQL], [AvatarSeller]) VALUES (N'SR04', N'Đỗ Chí Hùng', N'0374653758', N'khu 4 thị xã Cái Răng,tỉnh Cần Thơ', N'S04', N'QL04', N'SR04.jpg')
INSERT [dbo].[SELLER] ([MaSeller], [TenSeller], [SDT], [DiaChi], [MaLogin], [MaQL], [AvatarSeller]) VALUES (N'SR05', N'Huỳnh Kim Duyên', N'0354553758', N'23/64, Cao Lãnh ,tỉnh Đồng Tháp', N'S05', N'QL05', N'SR05.jpg')
INSERT [dbo].[SELLER] ([MaSeller], [TenSeller], [SDT], [DiaChi], [MaLogin], [MaQL], [AvatarSeller]) VALUES (N'SR06', N'Đoàn Thiên Ân', N'0976443426', N'45/111 Tân An,tỉnh Long An', N'S06', N'QL06', N'SR06.jpg')
INSERT [dbo].[SELLER] ([MaSeller], [TenSeller], [SDT], [DiaChi], [MaLogin], [MaQL], [AvatarSeller]) VALUES (N'SR07', N'Đỗ Long', N'0394537485', N'56/666 Lũy Bán Bích , Tân Phú,TP.HCM', N'S07', N'QL07', N'SR07.jpg')
INSERT [dbo].[SELLER] ([MaSeller], [TenSeller], [SDT], [DiaChi], [MaLogin], [MaQL], [AvatarSeller]) VALUES (N'SR08', N'Hồ Ngọc Hà', N'0945362774', N'11/225 Phú Mỹ Hưng, Quận 7,TP.HCM', N'S08', N'QL08', N'SR08.jpg')
GO
INSERT [dbo].[ThongTinDon] ([MaInfor], [Mabuyer], [Masp], [size], [soluong]) VALUES (N'SP55', N'SP55', N'SP55', N'M', 2)
GO
INSERT [dbo].[VOUCHER] ([MaGiamGia], [MaQL]) VALUES (N'G1', N'QL01')
INSERT [dbo].[VOUCHER] ([MaGiamGia], [MaQL]) VALUES (N'G2', N'QL02')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UNI_MAQL]    Script Date: 09/01/2023 11:18:45 CH ******/
ALTER TABLE [dbo].[SELLER] ADD  CONSTRAINT [UNI_MAQL] UNIQUE NONCLUSTERED 
(
	[MaQL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BUYER]  WITH CHECK ADD FOREIGN KEY([MaLogin])
REFERENCES [dbo].[LOGINS] ([MaLogin])
GO
ALTER TABLE [dbo].[CART]  WITH CHECK ADD FOREIGN KEY([MaBuyer])
REFERENCES [dbo].[BUYER] ([MaBuyer])
GO
ALTER TABLE [dbo].[CART]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[PRODUCT] ([MaSP])
GO
ALTER TABLE [dbo].[ORDER_DETAILS]  WITH CHECK ADD FOREIGN KEY([MaQL])
REFERENCES [dbo].[MANAGE] ([MaQL])
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD FOREIGN KEY([MaBrand])
REFERENCES [dbo].[BRAND] ([MaBrand])
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD FOREIGN KEY([MaLoai])
REFERENCES [dbo].[CATEGORY] ([MaLoai])
GO
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD FOREIGN KEY([MaQL])
REFERENCES [dbo].[MANAGE] ([MaQL])
GO
ALTER TABLE [dbo].[SELLER]  WITH CHECK ADD FOREIGN KEY([MaLogin])
REFERENCES [dbo].[LOGINS] ([MaLogin])
GO
ALTER TABLE [dbo].[SELLER]  WITH CHECK ADD FOREIGN KEY([MaQL])
REFERENCES [dbo].[MANAGE] ([MaQL])
GO
ALTER TABLE [dbo].[VOUCHER]  WITH CHECK ADD  CONSTRAINT [fk_tenfg] FOREIGN KEY([MaQL])
REFERENCES [dbo].[MANAGE] ([MaQL])
GO
ALTER TABLE [dbo].[VOUCHER] CHECK CONSTRAINT [fk_tenfg]
GO
/****** Object:  StoredProcedure [dbo].[DatHang]    Script Date: 09/01/2023 11:18:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[DatHang] @makh varchar(20),@id varchar(20)
as

declare cursor_first cursor scroll
for select MaGioHang, p.MaQL from dbo.CART c, dbo.PRODUCT p where MaBuyer=@makh and c.MaSP=p.MaSP

declare @magiohang varchar(20), @maql varchar(20)
open cursor_first
fetch first from cursor_first into @magiohang, @maql 
	while (@@FETCH_STATUS =0) 
	begin
		insert into ORDER_DETAILS values (@id,@maql,@magiohang)
		declare @magio varchar(10), @mabuy varchar (10), @masp varchar (10), @size varchar (10),@num int
		select @magio=MaGioHang,@mabuy=MaBuyer,@masp= MaSP, @size=Size,@num=SoLuong
		from CART
		where MaGioHang=@magiohang
		-------------------
		declare @dem int =(select count(*)+1 from ThongTinDon)
		insert into ThongTinDon values (@dem,@mabuy,@masp,@size,@num)

		delete from CART where MaGioHang =@magiohang
		
		set @id=cast((cast (@id as int) +1) as varchar (20));

	fetch next from cursor_first into @magiohang, @maql 
	end

close cursor_first
deallocate cursor_first
GO
/****** Object:  StoredProcedure [dbo].[LSDatHang]    Script Date: 09/01/2023 11:18:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[LSDatHang] @makh varchar(20)
as

declare cursor_first cursor scroll
for select p.TenSP,t.soluong, p.DonGia,t.soluong*p.DonGia,s.TenSeller,s.DiaChi,s.SDT, p.Hinh1, t.MaInfor,t.size,t.Masp
from ThongTinDon t, BUYER b, PRODUCT p, SELLER s 
where t.Mabuyer=@makh and t.Masp=p.MaSP and p.MaQL = s.MaQL and b.MaBuyer=t.Mabuyer and p.MaSP=t.Masp

declare @tensp nvarchar(MAX), @sl int,@dongia int, @thanhtien int ,@tenshop nvarchar(50), @diachis nvarchar (500), @phone varchar (20), @hinh nvarchar(500), @infor varchar(10), @si varchar(10),@masp varchar(10)
open cursor_first
fetch first from cursor_first into @tensp,@sl ,@dongia , @thanhtien,@tenshop, @diachis , @phone, @hinh, @infor,@si,@masp
	while (@@FETCH_STATUS =0) 
	begin
	declare @id int=(select count(*)+1 from LichSuDatHang)

	insert into LichSuDatHang values(@id,@tensp,@sl,@dongia , @thanhtien,@tenshop, @diachis , @phone, @hinh,@makh,@si,@masp)

	delete from ThongTinDon where MaInfor=@infor
	fetch next from cursor_first into @tensp,@sl ,@dongia , @thanhtien,@tenshop, @diachis , @phone, @hinh, @infor,@si,@masp
	end
close cursor_first
deallocate cursor_first
GO
/****** Object:  Trigger [dbo].[Thaydoiavtbuyer]    Script Date: 09/01/2023 11:18:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[Thaydoiavtbuyer]
on [dbo].[BUYER]
for update
as
begin
	update dbo.LOGINS
	set AVT=(select AvatarBuyer from inserted)
	where MaLogin=(select MaLogin from inserted )
end
GO
ALTER TABLE [dbo].[BUYER] ENABLE TRIGGER [Thaydoiavtbuyer]
GO
/****** Object:  Trigger [dbo].[ThemBH_Cursor]    Script Date: 09/01/2023 11:18:45 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[ThemBH_Cursor]
on [dbo].[LOGINS]
for insert
as
begin
	declare @e varchar(20)=(

	SELECT TOP 1 MaLogin FROM dbo.LOGINS
	where VaiTro='Buyer'

	ORDER BY MaLogin DESC )
	declare @r int= len(@e)

	declare @w int = Substring(@e,2,@r)+1

	declare @u varchar(6)='B0'+cast(@w as varchar(10))
	
	declare @sa varchar(6)= (select MaLogin from inserted)
	declare @sa1 varchar(6)= (select TenLogin from inserted)
	declare @sa2 varchar(6)= (select MatKhauLogin from inserted)
	declare @sa3 varchar(6)= (select VaiTro from inserted)
	declare @sa4 varchar(6)= (select AVT from inserted)
	
		insert into dbo.LOGINS values (@u,@sa1,@sa2,@sa3,@sa4)
		

end
GO
ALTER TABLE [dbo].[LOGINS] ENABLE TRIGGER [ThemBH_Cursor]
GO
USE [master]
GO
ALTER DATABASE [QL_QUANAOO] SET  READ_WRITE 
GO
