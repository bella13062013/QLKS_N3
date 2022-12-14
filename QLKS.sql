USE [QLKS_N3]
GO
/****** Object:  Table [dbo].[dangnhap]    Script Date: 11/3/2022 9:32:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dangnhap](
	[tendangnhap] [varchar](50) NOT NULL,
	[matkhau] [varchar](200) NULL,
	[tennhavien] [nvarchar](50) NULL,
	[chucvu] [nvarchar](50) NULL,
	[IPper] [nchar](10) NULL,
 CONSTRAINT [PK_dangnhap] PRIMARY KEY CLUSTERED 
(
	[tendangnhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[db_DatPhong]    Script Date: 11/3/2022 9:32:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_DatPhong](
	[madatphong] [nchar](10) NOT NULL,
	[maphong] [nchar](10) NULL,
	[tenkh] [nvarchar](50) NULL,
	[cmnd] [nvarchar](50) NULL,
	[tenphong] [nvarchar](50) NULL,
	[ngayden] [datetime] NULL,
	[ngaydi] [datetime] NULL,
	[tinhtrang] [nvarchar](30) NULL,
 CONSTRAINT [PK_db_DatPhong] PRIMARY KEY CLUSTERED 
(
	[madatphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dichvu]    Script Date: 11/3/2022 9:32:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dichvu](
	[madv] [nvarchar](50) NOT NULL,
	[tendv] [nvarchar](50) NULL,
	[donvi] [nvarchar](20) NULL,
	[giadv] [float] NULL,
 CONSTRAINT [PK_dichvu] PRIMARY KEY CLUSTERED 
(
	[madv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 11/3/2022 9:32:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[mahoadon] [nvarchar](50) NOT NULL,
	[madatphong] [nvarchar](50) NULL,
	[makhachhang] [nvarchar](50) NULL,
	[maphong] [nvarchar](50) NULL,
	[giamgia] [float] NULL,
	[thanhtien] [float] NULL,
	[loaithanhtoan] [nvarchar](50) NULL,
 CONSTRAINT [PK_hoadon] PRIMARY KEY CLUSTERED 
(
	[mahoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 11/3/2022 9:32:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khachhang](
	[makhachhang] [nvarchar](50) NOT NULL,
	[tenkhachhang] [nvarchar](50) NULL,
	[ngaysinh] [datetime] NULL,
	[gioitinh] [bit] NULL,
	[quequan] [nvarchar](50) NULL,
	[soCMND] [varchar](50) NULL,
	[sdt] [int] NULL,
	[quoctich] [nchar](10) NULL,
 CONSTRAINT [PK_khachhang] PRIMARY KEY CLUSTERED 
(
	[makhachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loaiphong]    Script Date: 11/3/2022 9:32:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiphong](
	[maloaiphong] [nvarchar](50) NOT NULL,
	[tenloaiphong] [nvarchar](50) NULL,
 CONSTRAINT [PK_loaiphong] PRIMARY KEY CLUSTERED 
(
	[maloaiphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 11/3/2022 9:32:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manhanvien] [nvarchar](50) NOT NULL,
	[tennhanvien] [nvarchar](50) NULL,
	[gioitinh] [bit] NULL,
	[chucvu] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[sdt] [int] NULL,
	[ngayvaolam] [datetime] NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phong]    Script Date: 11/3/2022 9:32:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong](
	[maphong] [nvarchar](50) NOT NULL,
	[tenphong] [nvarchar](50) NULL,
	[maloaiphong] [nchar](10) NULL,
	[tenloaiphong] [nvarchar](50) NULL,
	[tinhtrangphong] [bit] NULL,
	[giaphong] [int] NULL,
 CONSTRAINT [PK_phong] PRIMARY KEY CLUSTERED 
(
	[maphong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
