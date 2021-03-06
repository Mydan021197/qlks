USE [QLKS]
GO
/****** Object:  Table [dbo].[ChiTietPhong]    Script Date: 6/1/2018 7:43:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](max) NULL,
	[CMND] [nchar](11) NULL,
	[idCT] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[dichVu]    Script Date: 6/1/2018 7:43:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dichVu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](max) NULL,
	[gia] [int] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/1/2018 7:43:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](max) NULL,
	[diaChi] [nvarchar](max) NULL,
	[dienThoai] [nchar](11) NULL,
	[tenCongTy] [nvarchar](max) NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loaiPhong]    Script Date: 6/1/2018 7:43:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiPhong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](max) NULL,
	[Anh] [nvarchar](max) NULL DEFAULT (''),
	[soGiuong] [int] NULL DEFAULT ((1)),
	[donGia] [int] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhanVien]    Script Date: 6/1/2018 7:43:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[pass] [nvarchar](50) NULL,
	[tenHienThi] [nvarchar](50) NULL,
	[chucVu] [tinyint] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phong]    Script Date: 6/1/2018 7:43:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idLoai] [int] NOT NULL,
	[tenPhong] [nvarchar](50) NULL,
	[status] [tinyint] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SDDV]    Script Date: 6/1/2018 7:43:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SDDV](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idDV] [int] NOT NULL,
	[idCT] [int] NOT NULL,
	[soLuong] [int] NULL,
	[ngay] [datetime] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK__SDDV__3213E83F5211EEA3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[taiSan]    Script Date: 6/1/2018 7:43:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taiSan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](max) NULL,
	[loai] [nvarchar](max) NULL,
	[idPhong] [int] NOT NULL,
	[status] [tinyint] NULL DEFAULT ((1)),
	[ngay] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThuePhong]    Script Date: 6/1/2018 7:43:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuePhong](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ngayThue] [datetime] NOT NULL,
	[ngayTra] [datetime] NULL,
	[idKhach] [int] NOT NULL,
	[idNhanVien] [int] NOT NULL,
	[idPhong] [int] NULL,
	[ThanhToanHD] [bit] NULL,
	[Tongtien] [int] NULL,
 CONSTRAINT [PK__ThuePhon__3213E83F626D125A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[dichVu] ON 

INSERT [dbo].[dichVu] ([id], [ten], [gia]) VALUES (1, N'Massage', 100000)
INSERT [dbo].[dichVu] ([id], [ten], [gia]) VALUES (2, N'Nail', 150000)
INSERT [dbo].[dichVu] ([id], [ten], [gia]) VALUES (3, N'Mask', 100000)
INSERT [dbo].[dichVu] ([id], [ten], [gia]) VALUES (4, N'Goi dien duong dai', 100000)
INSERT [dbo].[dichVu] ([id], [ten], [gia]) VALUES (5, N'Goi dien quoc te', 200000)
INSERT [dbo].[dichVu] ([id], [ten], [gia]) VALUES (6, N'makeup', 100000)
SET IDENTITY_INSERT [dbo].[dichVu] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([id], [ten], [diaChi], [dienThoai], [tenCongTy]) VALUES (1, N'qwe', N'123', N'12312312312', N'qwqweqweqwe')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[loaiPhong] ON 

INSERT [dbo].[loaiPhong] ([id], [ten], [Anh], [soGiuong], [donGia]) VALUES (1, N'Kho', N'', 1, 0)
INSERT [dbo].[loaiPhong] ([id], [ten], [Anh], [soGiuong], [donGia]) VALUES (2, N'V1', N'', 1, 200000)
INSERT [dbo].[loaiPhong] ([id], [ten], [Anh], [soGiuong], [donGia]) VALUES (3, N'V2', N'', 2, 300000)
INSERT [dbo].[loaiPhong] ([id], [ten], [Anh], [soGiuong], [donGia]) VALUES (4, N'V3', N'', 3, 400000)
INSERT [dbo].[loaiPhong] ([id], [ten], [Anh], [soGiuong], [donGia]) VALUES (5, N'R1', N'', 1, 100000)
INSERT [dbo].[loaiPhong] ([id], [ten], [Anh], [soGiuong], [donGia]) VALUES (6, N'R2', N'', 2, 100000)
INSERT [dbo].[loaiPhong] ([id], [ten], [Anh], [soGiuong], [donGia]) VALUES (7, N'R3', N'', 3, 100000)
SET IDENTITY_INSERT [dbo].[loaiPhong] OFF
SET IDENTITY_INSERT [dbo].[nhanVien] ON 

INSERT [dbo].[nhanVien] ([id], [username], [pass], [tenHienThi], [chucVu]) VALUES (1, N'NhanVien', N'12345', N'Nhan vien nha', 0)
INSERT [dbo].[nhanVien] ([id], [username], [pass], [tenHienThi], [chucVu]) VALUES (2, N'Admin', N'12345', N'Admin nha', 1)
SET IDENTITY_INSERT [dbo].[nhanVien] OFF
SET IDENTITY_INSERT [dbo].[phong] ON 

INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (1, 1, N'KHO', 0)
INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (2, 2, N'101', 1)
INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (3, 2, N'101', 1)
INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (4, 2, N'102', 0)
INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (5, 3, N'103', 1)
INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (6, 3, N'104', 0)
INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (7, 4, N'105', 0)
INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (8, 4, N'106', 0)
INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (9, 5, N'201', 0)
INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (10, 5, N'202', 0)
INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (11, 6, N'203', 0)
INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (12, 6, N'204', 0)
INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (13, 7, N'205', 0)
INSERT [dbo].[phong] ([id], [idLoai], [tenPhong], [status]) VALUES (14, 7, N'206', 0)
SET IDENTITY_INSERT [dbo].[phong] OFF
SET IDENTITY_INSERT [dbo].[taiSan] ON 

INSERT [dbo].[taiSan] ([id], [ten], [loai], [idPhong], [status], [ngay]) VALUES (1, N'Fan', N'Panasonic', 1, 1, CAST(N'2018-04-11 23:55:31.217' AS DateTime))
INSERT [dbo].[taiSan] ([id], [ten], [loai], [idPhong], [status], [ngay]) VALUES (2, N'Fan', N'Panasonic', 2, 1, CAST(N'2018-04-11 23:55:31.217' AS DateTime))
INSERT [dbo].[taiSan] ([id], [ten], [loai], [idPhong], [status], [ngay]) VALUES (3, N'Air conditional', N'Panasonic', 1, 1, CAST(N'2018-04-11 23:55:31.217' AS DateTime))
INSERT [dbo].[taiSan] ([id], [ten], [loai], [idPhong], [status], [ngay]) VALUES (4, N'Air conditional', N'Panasonic', 2, 1, CAST(N'2018-04-11 23:55:31.220' AS DateTime))
INSERT [dbo].[taiSan] ([id], [ten], [loai], [idPhong], [status], [ngay]) VALUES (5, N'Air conditional', N'Panasonic', 3, 1, CAST(N'2018-04-11 23:55:31.220' AS DateTime))
INSERT [dbo].[taiSan] ([id], [ten], [loai], [idPhong], [status], [ngay]) VALUES (6, N'Air conditional', N'Panasonic', 4, 1, CAST(N'2018-04-11 23:55:31.220' AS DateTime))
INSERT [dbo].[taiSan] ([id], [ten], [loai], [idPhong], [status], [ngay]) VALUES (7, N'Air conditional', N'Panasonic', 5, 1, CAST(N'2018-04-11 23:55:31.220' AS DateTime))
INSERT [dbo].[taiSan] ([id], [ten], [loai], [idPhong], [status], [ngay]) VALUES (8, N'Air conditional', N'Panasonic', 6, 1, CAST(N'2018-04-11 23:55:31.220' AS DateTime))
INSERT [dbo].[taiSan] ([id], [ten], [loai], [idPhong], [status], [ngay]) VALUES (9, N'Air conditional', N'Panasonic', 7, 1, CAST(N'2018-04-11 23:55:31.220' AS DateTime))
INSERT [dbo].[taiSan] ([id], [ten], [loai], [idPhong], [status], [ngay]) VALUES (10, N'Air conditional', N'Panasonic', 8, 1, CAST(N'2018-04-11 23:55:31.223' AS DateTime))
INSERT [dbo].[taiSan] ([id], [ten], [loai], [idPhong], [status], [ngay]) VALUES (11, N'Air conditional', N'Panasonic', 9, 1, CAST(N'2018-04-11 23:55:31.223' AS DateTime))
INSERT [dbo].[taiSan] ([id], [ten], [loai], [idPhong], [status], [ngay]) VALUES (12, N'Air conditional', N'Panasonic', 10, 1, CAST(N'2018-04-11 23:55:31.223' AS DateTime))
SET IDENTITY_INSERT [dbo].[taiSan] OFF
ALTER TABLE [dbo].[SDDV] ADD  CONSTRAINT [DF__SDDV__soLuong__48CFD27E]  DEFAULT ((1)) FOR [soLuong]
GO
ALTER TABLE [dbo].[SDDV] ADD  CONSTRAINT [DF__SDDV__ngay__49C3F6B7]  DEFAULT (getdate()) FOR [ngay]
GO
ALTER TABLE [dbo].[ThuePhong] ADD  CONSTRAINT [DF__ThuePhong__ngayT__36B12243]  DEFAULT (getdate()) FOR [ngayThue]
GO
ALTER TABLE [dbo].[ThuePhong] ADD  CONSTRAINT [DF__ThuePhong__Tongt__38996AB5]  DEFAULT ((0)) FOR [Tongtien]
GO
ALTER TABLE [dbo].[ChiTietPhong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhong_ThuePhong] FOREIGN KEY([idCT])
REFERENCES [dbo].[ThuePhong] ([id])
GO
ALTER TABLE [dbo].[ChiTietPhong] CHECK CONSTRAINT [FK_ChiTietPhong_ThuePhong]
GO
ALTER TABLE [dbo].[phong]  WITH CHECK ADD FOREIGN KEY([idLoai])
REFERENCES [dbo].[loaiPhong] ([id])
GO
ALTER TABLE [dbo].[SDDV]  WITH CHECK ADD  CONSTRAINT [FK__SDDV__idDV__4AB81AF0] FOREIGN KEY([idDV])
REFERENCES [dbo].[dichVu] ([id])
GO
ALTER TABLE [dbo].[SDDV] CHECK CONSTRAINT [FK__SDDV__idDV__4AB81AF0]
GO
ALTER TABLE [dbo].[SDDV]  WITH CHECK ADD  CONSTRAINT [FK_SDDV_ThuePhong] FOREIGN KEY([idCT])
REFERENCES [dbo].[ThuePhong] ([id])
GO
ALTER TABLE [dbo].[SDDV] CHECK CONSTRAINT [FK_SDDV_ThuePhong]
GO
ALTER TABLE [dbo].[taiSan]  WITH CHECK ADD FOREIGN KEY([idPhong])
REFERENCES [dbo].[phong] ([id])
GO
ALTER TABLE [dbo].[ThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ThuePhong_KhachHang] FOREIGN KEY([idKhach])
REFERENCES [dbo].[KhachHang] ([id])
GO
ALTER TABLE [dbo].[ThuePhong] CHECK CONSTRAINT [FK_ThuePhong_KhachHang]
GO
ALTER TABLE [dbo].[ThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ThuePhong_nhanVien] FOREIGN KEY([idNhanVien])
REFERENCES [dbo].[nhanVien] ([id])
GO
ALTER TABLE [dbo].[ThuePhong] CHECK CONSTRAINT [FK_ThuePhong_nhanVien]
GO
ALTER TABLE [dbo].[ThuePhong]  WITH CHECK ADD  CONSTRAINT [FK_ThuePhong_phong] FOREIGN KEY([idPhong])
REFERENCES [dbo].[phong] ([id])
GO
ALTER TABLE [dbo].[ThuePhong] CHECK CONSTRAINT [FK_ThuePhong_phong]
GO
/****** Object:  StoredProcedure [dbo].[pThuePhong]    Script Date: 6/1/2018 7:43:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pThuePhong]
@idKhach int, @idNhanVien int, @idPhong int as 
begin
	insert dbo.ThuePhong (idKhach,idNhanVien,idPhong) values (@idKhach,@idNhanVien,@idPhong)
	update dbo.phong set status = 1 where id = @idPhong
end

GO
