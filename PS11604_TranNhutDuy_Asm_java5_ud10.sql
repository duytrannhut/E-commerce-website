CREATE DATABASE [PS11604_TranNhutDuy_asm_java5_ud10]
GO
USE [PS11604_TranNhutDuy_asm_java5_ud10]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 6/14/2021 3:43:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[username] [varchar](50) NOT NULL,
	[activated] [bit] NULL,
	[admin] [bit] NULL,
	[email] [varchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[password] [varchar](50) NULL,
	[photo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 6/14/2021 3:43:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [varchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 6/14/2021 3:43:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
	[orderid] [int] NULL,
	[productid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 6/14/2021 3:43:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](50) NULL,
	[createdate] [date] NULL,
	[username] [varchar](50) NULL,
	[deliveried] [bit] NULL,
	[checkout] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 6/14/2021 3:43:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [int] NULL,
	[createdate] [date] NULL,
	[image] [varchar](100) NULL,
	[available] [bit] NULL,
	[categoryid] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [photo]) VALUES (N'duytn', 1, 0, N'trannhutduy.xy@gmail.com', N'Trần Nhựt Duy', N'123456', N'/assets/upload/photo/ps11604.jpg')
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [photo]) VALUES (N'duytn2001', 1, 0, N'trannhutduy.xy@gmail.com', N'Trần Nhựt Duy', N'123456', N'/assets/upload/photo/ps11604.jpg')
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [photo]) VALUES (N'PS11604', 1, 1, N'duytnps11604@fpt.edu.vn', N'Trần Nhựt Duy', N'nhutduy123', N'/assets/upload/photo/ps11604.jpg')
GO
INSERT [dbo].[categories] ([id], [name]) VALUES (N'1', N'Máy ảnh Canon')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'2', N'Máy ảnh Panasonic')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'3', N'Máy ảnh Samsung')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'4', N'Máy ảnh Sony')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'5', N'Máy ảnh Nikon')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'6', N'Máy ảnh Casio')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'7', N'Máy quay phim Canon')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'8', N'Máy quay phim JVC')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'9', N'Máy quay phim Sony')
GO
SET IDENTITY_INSERT [dbo].[orderdetails] ON 

INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (1, 12490000, 2, 1, 4)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (2, 3400000, 1, 1, 5)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (3, 12490000, 2, 2, 4)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (4, 3400000, 1, 2, 5)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (5, 3400000, 1, 3, 5)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (6, 4900000, 1, 4, 11)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (7, 7950000, 1, 6, 8)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (8, 3200000, 1, 13, 9)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (9, 7410000, 1, 14, 7)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (10, 3400000, 1, 15, 5)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (11, 12350000, 1, 16, 3)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (12, 6690000, 1, 17, 12)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (13, 12350000, 2, 18, 3)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (14, 12490000, 1, 18, 4)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (15, 4900000, 1, 19, 11)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (16, 3400000, 1, 20, 5)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (17, 7410000, 1, 20, 7)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (18, 4690000, 1, 21, 15)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (19, 4900000, 2, 22, 2)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (20, 12350000, 1, 22, 3)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (21, 12490000, 1, 23, 4)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (22, 3200000, 1, 23, 9)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (23, 3400000, 1, 24, 5)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (24, 6690000, 1, 24, 28)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (25, 4900000, 1, 25, 2)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (26, 3300000, 1, 26, 19)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (27, 7410000, 1, 27, 7)
INSERT [dbo].[orderdetails] ([id], [price], [quantity], [orderid], [productid]) VALUES (28, 7410000, 1, 28, 7)
SET IDENTITY_INSERT [dbo].[orderdetails] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (1, N'tân hưng', CAST(N'2021-06-09' AS Date), N'PS11604', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (2, N'tân hưng', CAST(N'2021-06-09' AS Date), N'PS11604', 1, 1)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (3, N'Tp Hồ Chí Minh', CAST(N'2021-06-09' AS Date), N'PS11604', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (4, N'Cà Mau', CAST(N'2021-06-09' AS Date), N'PS11604', 1, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (6, N'Cần thơ', CAST(N'2021-06-09' AS Date), N'PS11604', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (13, N'dfdg', CAST(N'2021-06-09' AS Date), N'PS11604', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (14, N'afg', CAST(N'2021-06-09' AS Date), N'PS11604', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (15, N'Tp Hồ Chí Minh', CAST(N'2021-06-09' AS Date), N'PS11604', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (16, N'Cà Mau', CAST(N'2021-06-09' AS Date), N'PS11604', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (17, N'Cần thơ', CAST(N'2021-06-09' AS Date), N'PS11604', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (18, N'Tp Hồ Chí Minh', CAST(N'2021-06-09' AS Date), N'duytn', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (19, N'Hồ chí Minh', CAST(N'2021-06-09' AS Date), N'PS11604', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (20, N'Quận 4, Hồ Chí Minh', CAST(N'2021-06-09' AS Date), N'duytn', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (21, N'Cà Mau', CAST(N'2021-06-09' AS Date), N'duytn', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (22, N'Tp', CAST(N'2021-06-09' AS Date), N'PS11604', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (23, N'shshsgg', CAST(N'2021-06-09' AS Date), N'duytn', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (24, N'Hồ chí minh', CAST(N'2021-06-11' AS Date), N'duytn', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (25, N'Quận 4', CAST(N'2021-06-11' AS Date), N'duytn', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (26, N'Cà mau', CAST(N'2021-06-13' AS Date), N'duytn', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (27, N'Cà mau', CAST(N'2021-06-13' AS Date), N'PS11604', 0, 0)
INSERT [dbo].[orders] ([id], [address], [createdate], [username], [deliveried], [checkout]) VALUES (28, N'Tân Hưng', CAST(N'2021-06-13' AS Date), N'duytn', 0, 0)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (1, N'MÁY ẢNH SONY IXUS 135', 2990000, CAST(N'2021-06-13' AS Date), N'/assets/upload/product/MAY-ANH-CANON-IXUS-135.png', 1, N'4')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (2, N'MÁY ẢNH CANON DSC-W690/SC E32', 4900000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/MA-_ANH-SONY-DSC-W690-SC-E32-1.jpg', 0, N'1')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (3, N'MÁY ẢNH CANON DSC-WX200/BC E32', 12350000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/SONY_DSC-WX200BC_E32.jpg', 1, N'1')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (4, N'MÁY ẢNH CANON EK-GC100ZKAXEV (GALAXY CAMERA) (ĐEN)', 12490000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/MAY-ANH-SAMSUNG-GALAXY-CAMERA-15.jpg', 1, N'1')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (5, N'MÁY ẢNH CANON EOS 600D', 3400000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/MAY-ANH-Canon-EOS-600D-hinh2.jpg', 1, N'1')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (6, N'MÁY ẢNH CANON NEX-5RL/BQ AP2', 12410000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/MAY-ANH-SONY-NEX-5RL-BQ-AP2-1.jpg', 0, N'1')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (7, N'Máy ảnh KTS Panasonic Lumix 10.1MP', 7410000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/panasonic-7588-296343-1-product.jpg', 1, N'2')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (8, N'Máy ảnh KTS Panasonic Lumix DMC-ZS10 14.1MP', 7950000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/panasonic-6617-918713-1-product.jpg', 0, N'2')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (9, N'Máy ảnh KTS Panasonic Lumix DMC-ZS8 14.1MP', 3200000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/panasonic-6581-108713-1-product.jpg', 1, N'2')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (10, N'MÁY ẢNH NIKON COOLPIX P600 BLACK', 8560000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/NIKON-COOLPIX-P600.png', 1, N'5')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (11, N'MÁY ẢNH NIKON COOLPIX S5200 RED', 4900000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/MAY-ANH-NIKON-COOLPIX-S5200-RED.jpg', 1, N'5')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (12, N'MÁY ẢNH NIKON COOLPIX S5200 SILVER', 6690000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/MAY-ANH-NIKON-COOLPIX-S5200-SILVER-hinh1.jpg', 0, N'5')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (13, N'MÁY ẢNH NIKON D5300 KIT 18-55MM F/3.5 - 5.6G VRII', 2500000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/May-Anh-NIKON-D5300.png', 0, N'5')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (14, N'MÁY ẢNH PANASONIC DMC-SZ3GA-K (ĐEN)', 6690000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/MAY-ANH-PANASONIC-DMC-SZ3GA-K-DEN.jpg', 1, N'2')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (15, N'MÁY ẢNH SAMSUNG EC-WB350FBDWVN TRẮNG', 4690000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/SAMSUNG-EC-WB350FBDWVN-Trang-6.jpg', 1, N'3')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (16, N'MÁY ẢNH SAMSUNG EC-WB35FZBDBVNEC ĐEN', 2500000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/SAMSUNG-EC-WB35FZBDBVNEC-DEN.jpg', 1, N'3')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (17, N'MÁY ẢNH SAMSUNG EV-NX30ZZBGBVN ĐEN', 9450000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/SAMSUNG-EV-NX30ZZBGBVN-Den.jpg', 1, N'3')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (18, N'MÁY ẢNH SONY DSC-H300 E32', 3200000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/SONY-DSC-H300-E32-1.jpg', 1, N'4')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (19, N'MÁY ẢNH SONY DSC-WX200/PC E32', 3300000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/DSC-WX200-1.jpg', 1, N'4')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (20, N'MÁY ẢNH SONY DSC-WX80/BC E32', 3500000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/SONY-DSC-WX80-1.jpg', 1, N'4')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (21, N'MÁY ẢNH SONY NEX-5RY/BQ AP2', 5500000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/MAY-ANH-SONY-NEX-5RY-BQ-AP2-1.jpg', 1, N'4')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (22, N'MÁY QUAY PHIM Canon SMX-F500BP/XSV', 5500000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/may-quayphim-samsung-HMX-Q130BP-anh113212544574ec0be39ba90c(1)(1).jpg', 0, N'7')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (23, N'MÁY QUAY PHIM JVC GZ-E10BAG', 8560000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/gz-e10.jpg', 0, N'8')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (24, N'MÁY QUAY PHIM JVC GZ-E205BAG', 5500000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/MAY-QUAY-PHIM-GZ-E205-4.jpg', 0, N'8')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (25, N'MÁY QUAY PHIM JVC GZ-E205RAG', 6690000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/MAY-QUAY-PHIM-GZ-E205-5.jpg', 0, N'8')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (26, N'MÁY QUAY PHIM JVC GZ-MS150HAG', 3190000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/máy-quayphim-JVC-GZ-MS150-anh4(1).jpg', 0, N'8')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (27, N'MÁY QUAY PHIM SONY HDR-CX240E/BCE35', 9450000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/may-quay-phim-sony-hdr-cx240e.jpg', 0, N'4')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (28, N'Sony 18.2MP & Zoom quang 20x ', 6690000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/MAY-ANH-SONY-DSC-WX300-TCE32-1.jpg', 0, N'4')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (32, N'Sony Cyber-shot 18.2MP Zoom quang học - DSC-WX300', 7950000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/sony-3588-683902-1-product.jpg', 0, N'4')
INSERT [dbo].[products] ([id], [name], [price], [createdate], [image], [available], [categoryid]) VALUES (33, N'Sony HDRPJ820E - 12x', 23900000, CAST(N'2021-06-06' AS Date), N'/assets/upload/product/sony-7211-061762-1-product.jpg', 0, N'9')
SET IDENTITY_INSERT [dbo].[products] OFF
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD FOREIGN KEY([orderid])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[accounts] ([username])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([categoryid])
REFERENCES [dbo].[categories] ([id])
GO
