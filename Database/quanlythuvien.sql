CREATE DATABASE [QuanLyThuVien]
GO
USE [QuanLyThuVien]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[IDAccount] [varchar](50) NOT NULL,
	[PasswordAccount] [varchar](100) NOT NULL,
	[TypeOfAccount] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IDAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMIN](
	[IDAdmin] [varchar](50) NOT NULL,
	[IDAccount] [varchar](50) NOT NULL,
	[NameAdmin] [nvarchar](100) NOT NULL,
	[Birthday] [datetime] NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Email] [varchar](100) NOT NULL,
	[NumberPhone] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[IDAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BCTKMUONSACH](
	[MaBCTKMuonSach] [varchar](50) NOT NULL,
	[Thang] [date] NOT NULL,
	[TongSoLuotMuon] [int] NOT NULL,
 CONSTRAINT [PK_BCTKMuonSach] PRIMARY KEY CLUSTERED 
(
	[MaBCTKMuonSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BCTKTRATRE](
	[MaBCTKTraTre] [varchar](50) NOT NULL,
	[Ngay] [date] NOT NULL,
 CONSTRAINT [PK_BCTKTraTre] PRIMARY KEY CLUSTERED 
(
	[MaBCTKTraTre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHITIETPHANQUYEN](
	[IDAccount] [varchar](50) NOT NULL,
	[IDPer] [varchar](50) NOT NULL,
	[suspended] [bit] NOT NULL,
 CONSTRAINT [PK_CHITIETPHANQUYEN] PRIMARY KEY CLUSTERED 
(
	[IDPer] ASC,
	[IDAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTBCTKMUONSACH](
	[MaBCTKMuonSach] [varchar](50) NOT NULL,
	[MaTheLoai] [varchar](50) NOT NULL,
	[SoLuotMuon] [int] NOT NULL,
	[TiLe] [float] NOT NULL,
 CONSTRAINT [PK_CTBCTKMuonSach] PRIMARY KEY CLUSTERED 
(
	[MaBCTKMuonSach] ASC,
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTBCTKTRATRE](
	[MaBCTKTraTre] [varchar](50) NOT NULL,
	[MaPhieuMS] [varchar](50) NOT NULL,
	[MaSach] [varchar](50) NOT NULL,
	[SoNgayTraTre] [int] NOT NULL,
 CONSTRAINT [PK_CTBCTKTRATRE] PRIMARY KEY CLUSTERED 
(
	[MaBCTKTraTre] ASC,
	[MaPhieuMS] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTPHIEUMUON](
	[MaPhieuMS] [varchar](50) NOT NULL,
	[MaSach] [varchar](50) NOT NULL,
	[HanTra] [datetime] NOT NULL,
	[TinhTrangMuon] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_CTPHIEUMUON] PRIMARY KEY CLUSTERED 
(
	[MaPhieuMS] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOCGIA](
	[MaDocGia] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](200) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DiaChi] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[NgayLapThe] [date] NOT NULL,
	[NgayHetHan] [date] NOT NULL,
	[MaLoaiDocGia] [varchar](50) NOT NULL,
	[IDAccount] [varchar](50) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
	[TongNo] [decimal](18, 0) NOT NULL,
	[GioiThieu] [nvarchar](500) NULL,
 CONSTRAINT [PK_DOCGIA] PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAIDOCGIA](
	[MaLoaiDocGia] [varchar](50) NOT NULL,
	[TenLoaiDocGia] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_LOAIDOCGIA] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERMISSION](
	[IDPer] [varchar](50) NOT NULL,
	[NamePer] [nvarchar](100) NOT NULL,
	[CodeAction] [varchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_PERMISSION] PRIMARY KEY CLUSTERED 
(
	[IDPer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUMUONSACH](
	[MaPhieuMS] [varchar](50) NOT NULL,
	[MaDocGia] [varchar](50) NOT NULL,
	[NgayMuon] [date] NOT NULL,
 CONSTRAINT [PK_PHIEUMUONSACH] PRIMARY KEY CLUSTERED 
(
	[MaPhieuMS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUTHUTIENPHAT](
	[MaPhieuThuTP] [varchar](50) NOT NULL,
	[MaDocGia] [varchar](50) NOT NULL,
	[TongNo] [decimal](18, 0) NOT NULL,
	[SoTienThu] [decimal](18, 0) NOT NULL,
	[ConLai] [decimal](18, 0) NOT NULL,
	[NgayThu] [datetime] NOT NULL,
 CONSTRAINT [PK_PHIEUTHUTIENPHAT] PRIMARY KEY CLUSTERED 
(
	[MaPhieuThuTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUTRASACH](
	[MaPhieuMS] [varchar](50) NOT NULL,
	[MaSach] [varchar](50) NOT NULL,
	[NgayTra] [date] NOT NULL,
	[SoNgayMuon] [int] NOT NULL,
	[TienPhat] [decimal](18, 0) NOT NULL,
	[TinhTrangTraSach] [nvarchar](200) NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_PHIEUTRASACH] PRIMARY KEY CLUSTERED 
(
	[MaPhieuMS] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSach] [varchar](50) NOT NULL,
	[TenSach] [nvarchar](100) NOT NULL,
	[MaTheLoai] [varchar](50) NOT NULL,
	[NamXuatBan] [int] NOT NULL,
	[NhaXuatBan] [nvarchar](100) NULL,
	[MaTacGia] [varchar](50) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[TriGia] [decimal](18, 0) NOT NULL,
	[MaTinhTrang] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SACH] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TACGIA](
	[MaTacGia] [varchar](50) NOT NULL,
	[TenTacGia] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TACGIA] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THAMSO](
	[MaThamSo] [int] IDENTITY(1,1) NOT NULL,
	[TuoiToiDa] [int] NOT NULL,
	[TuoiToiThieu] [int] NOT NULL,
	[ThoiHanThe] [int] NOT NULL,
	[KhoangCachXB] [int] NOT NULL,
	[SoNgayMuonMax] [int] NOT NULL,
	[SoSachMuonMax] [int] NOT NULL,
	[TPTraTreMotNgay] [decimal](18, 0) NOT NULL,
	[SoLuongTheLoaiMax] [int] NOT NULL,
	[SoLuongTacGia] [int] NOT NULL,
 CONSTRAINT [PK_THAMSO] PRIMARY KEY CLUSTERED 
(
	[MaThamSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THELOAI](
	[MaTheLoai] [varchar](50) NOT NULL,
	[TenTheLoai] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_THELOAI] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TINHTRANG](
	[MaTinhTrang] [varchar](50) NOT NULL,
	[TenTinhTrang] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TINHTRANG] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[THAMSO] ON 
SET IDENTITY_INSERT [dbo].[THAMSO] OFF
SET ANSI_PADDING ON

GO

ALTER TABLE [dbo].[ADMIN] ADD  CONSTRAINT [UQ_ADMIN_IDAccount] UNIQUE NONCLUSTERED 
(
	[IDAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO

ALTER TABLE [dbo].[DOCGIA] ADD  CONSTRAINT [UQ_DOCGIA_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO

ALTER TABLE [dbo].[DOCGIA] ADD  CONSTRAINT [UQ_DOCGIA_IDUser] UNIQUE NONCLUSTERED 
(
	[IDAccount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTBCTKTRATRE] ADD  CONSTRAINT [DF_CTBCTKTRATRE_SoNgayTraTre]  DEFAULT ((0)) FOR [SoNgayTraTre]
GO
ALTER TABLE [dbo].[DOCGIA] ADD  CONSTRAINT [DF_DOCGIA_TongNo]  DEFAULT ((0)) FOR [TongNo]
GO
ALTER TABLE [dbo].[PHIEUTRASACH] ADD  CONSTRAINT [DF_PHIEUTRASACH_TienPhat]  DEFAULT ((0)) FOR [TienPhat]
GO
ALTER TABLE [dbo].[ADMIN]  WITH CHECK ADD  CONSTRAINT [FK_ADMIN_ACCOUNT] FOREIGN KEY([IDAccount])
REFERENCES [dbo].[ACCOUNT] ([IDAccount])
GO
ALTER TABLE [dbo].[ADMIN] CHECK CONSTRAINT [FK_ADMIN_ACCOUNT]
GO
ALTER TABLE [dbo].[CHITIETPHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPHANQUYEN_ACCOUNT] FOREIGN KEY([IDAccount])
REFERENCES [dbo].[ACCOUNT] ([IDAccount])
GO
ALTER TABLE [dbo].[CHITIETPHANQUYEN] CHECK CONSTRAINT [FK_CHITIETPHANQUYEN_ACCOUNT]
GO
ALTER TABLE [dbo].[CHITIETPHANQUYEN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETPHANQUYEN_PERMISSION] FOREIGN KEY([IDPer])
REFERENCES [dbo].[PERMISSION] ([IDPer])
GO
ALTER TABLE [dbo].[CHITIETPHANQUYEN] CHECK CONSTRAINT [FK_CHITIETPHANQUYEN_PERMISSION]
GO
ALTER TABLE [dbo].[CTBCTKMUONSACH]  WITH CHECK ADD  CONSTRAINT [FK_CTBCTKMUONSACH_BCTKMUONSACH] FOREIGN KEY([MaBCTKMuonSach])
REFERENCES [dbo].[BCTKMUONSACH] ([MaBCTKMuonSach])
GO
ALTER TABLE [dbo].[CTBCTKMUONSACH] CHECK CONSTRAINT [FK_CTBCTKMUONSACH_BCTKMUONSACH]
GO
ALTER TABLE [dbo].[CTBCTKMUONSACH]  WITH CHECK ADD  CONSTRAINT [FK_CTBCTKMUONSACH_THELOAI] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[THELOAI] ([MaTheLoai])
GO
ALTER TABLE [dbo].[CTBCTKMUONSACH] CHECK CONSTRAINT [FK_CTBCTKMUONSACH_THELOAI]
GO
ALTER TABLE [dbo].[CTBCTKTRATRE]  WITH CHECK ADD  CONSTRAINT [FK_CTBCTKTRATRE_BCTKTRATRE] FOREIGN KEY([MaBCTKTraTre])
REFERENCES [dbo].[BCTKTRATRE] ([MaBCTKTraTre])
GO
ALTER TABLE [dbo].[CTBCTKTRATRE] CHECK CONSTRAINT [FK_CTBCTKTRATRE_BCTKTRATRE]
GO
ALTER TABLE [dbo].[CTBCTKTRATRE]  WITH CHECK ADD  CONSTRAINT [FK_CTBCTKTRATRE_PHIEUTRASACH] FOREIGN KEY([MaPhieuMS], [MaSach])
REFERENCES [dbo].[PHIEUTRASACH] ([MaPhieuMS], [MaSach])
GO
ALTER TABLE [dbo].[CTBCTKTRATRE] CHECK CONSTRAINT [FK_CTBCTKTRATRE_PHIEUTRASACH]
GO
ALTER TABLE [dbo].[CTPHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_CTPHIEUMUON_PHIEUMUONSACH] FOREIGN KEY([MaPhieuMS])
REFERENCES [dbo].[PHIEUMUONSACH] ([MaPhieuMS])
GO
ALTER TABLE [dbo].[CTPHIEUMUON] CHECK CONSTRAINT [FK_CTPHIEUMUON_PHIEUMUONSACH]
GO
ALTER TABLE [dbo].[CTPHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_CTPHIEUMUON_SACH] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[CTPHIEUMUON] CHECK CONSTRAINT [FK_CTPHIEUMUON_SACH]
GO
ALTER TABLE [dbo].[DOCGIA]  WITH CHECK ADD  CONSTRAINT [FK_DOCGIA_LOAIDOCGIA] FOREIGN KEY([MaLoaiDocGia])
REFERENCES [dbo].[LOAIDOCGIA] ([MaLoaiDocGia])
GO
ALTER TABLE [dbo].[DOCGIA] CHECK CONSTRAINT [FK_DOCGIA_LOAIDOCGIA]
GO
ALTER TABLE [dbo].[DOCGIA]  WITH CHECK ADD  CONSTRAINT [FK_DOCGIA_USER] FOREIGN KEY([IDAccount])
REFERENCES [dbo].[ACCOUNT] ([IDAccount])
GO
ALTER TABLE [dbo].[DOCGIA] CHECK CONSTRAINT [FK_DOCGIA_USER]
GO
ALTER TABLE [dbo].[PHIEUMUONSACH]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUMUONSACH_DOCGIA] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DOCGIA] ([MaDocGia])
GO
ALTER TABLE [dbo].[PHIEUMUONSACH] CHECK CONSTRAINT [FK_PHIEUMUONSACH_DOCGIA]
GO
ALTER TABLE [dbo].[PHIEUTHUTIENPHAT]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUTHUTIENPHAT_DOCGIA] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DOCGIA] ([MaDocGia])
GO
ALTER TABLE [dbo].[PHIEUTHUTIENPHAT] CHECK CONSTRAINT [FK_PHIEUTHUTIENPHAT_DOCGIA]
GO
ALTER TABLE [dbo].[PHIEUTRASACH]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUTRASACH_CTPHIEUMUON] FOREIGN KEY([MaPhieuMS], [MaSach])
REFERENCES [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach])
GO
ALTER TABLE [dbo].[PHIEUTRASACH] CHECK CONSTRAINT [FK_PHIEUTRASACH_CTPHIEUMUON]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_TACGIA] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TACGIA] ([MaTacGia])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_TACGIA]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_THELOAI] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[THELOAI] ([MaTheLoai])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_THELOAI]
GO
ALTER TABLE [dbo].[SACH]  WITH CHECK ADD  CONSTRAINT [FK_SACH_TINHTRANG] FOREIGN KEY([MaTinhTrang])
REFERENCES [dbo].[TINHTRANG] ([MaTinhTrang])
GO
ALTER TABLE [dbo].[SACH] CHECK CONSTRAINT [FK_SACH_TINHTRANG]
GO

--insert quy định
INSERT [dbo].[THAMSO] VALUES (55, 18, 6, 8, 4, 5, CAST(1000 AS Decimal(18, 0)), 50, 100)

--Insert account
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520004', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520029', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520035', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520040', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520043', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520057', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520068', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520081', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520087', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520096', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520107', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520134', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520155', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520156', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520159', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520184', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520186', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520187', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520230', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520267', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520292', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520308', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520309', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520323', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520343', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520345', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520350', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520372', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520376', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('17520433', '12345678', N'USER')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('admin', 'admin@123', N'ADMIN')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('admin_qldg', 'admin@123', N'ADMIN')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('admin_qlmt', 'admin@123', N'ADMIN')
INSERT [dbo].[ACCOUNT] ([IDAccount], [PasswordAccount], [TypeOfAccount]) VALUES ('admin_qls', 'admin@123', N'ADMIN')

--insert admin
INSERT [dbo].[ADMIN] ([IDAdmin], [IDAccount], [NameAdmin], [Birthday], [Address], [Email], [NumberPhone]) VALUES (N'AD0001', N'admin', N'Nguyễn Văn A', CAST(0x000072B900000000 AS DateTime), N'TP.HCM', N'admin@gmail.com', N'0327559839')
INSERT [dbo].[ADMIN] ([IDAdmin], [IDAccount], [NameAdmin], [Birthday], [Address], [Email], [NumberPhone]) VALUES (N'AD0002', N'admin_qldg', N'Nguyễn Văn B', CAST(0x00007DBA00000000 AS DateTime), N'An Giang', N'admin1@gmail.com', N'01269482943')
INSERT [dbo].[ADMIN] ([IDAdmin], [IDAccount], [NameAdmin], [Birthday], [Address], [Email], [NumberPhone]) VALUES (N'AD0003', N'admin_qls', N'Nguyễn Văn C', CAST(0x0000777500000000 AS DateTime), N'Đà Nẵng', N'admin2@gmail.com', N'0905559724')
INSERT [dbo].[ADMIN] ([IDAdmin], [IDAccount], [NameAdmin], [Birthday], [Address], [Email], [NumberPhone]) VALUES (N'AD0004', N'admin_qlmt', N'Nguyễn Văn D', CAST(0x0000794700000000 AS DateTime), N'Hà Nội', N'admin3@gmail.com', N'0962928555')

--insert loại độc giả
INSERT [dbo].[LOAIDOCGIA] ([MaLoaiDocGia], [TenLoaiDocGia]) VALUES (N'LDG001', N'Sinh Viên')
INSERT [dbo].[LOAIDOCGIA] ([MaLoaiDocGia], [TenLoaiDocGia]) VALUES (N'LDG002', N'Giảng Viên')
INSERT [dbo].[LOAIDOCGIA] ([MaLoaiDocGia], [TenLoaiDocGia]) VALUES (N'LDG003', N'Nhân Viên Văn Phòng')

--insert độc giả
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000001', N'Nguyễn Lương Duy', CAST(0xA7220B00 AS Date), N'Quảng Nam', N'17520004@uit.edu.vn', CAST(0x5F3F0B00 AS Date), CAST(0xF83F0B00 AS Date), N'LDG001', N'17520004', N'01639893353', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000002', N'Phạm Tuấn Anh', CAST(0xA7220B00 AS Date), N'Bình Dương', N'17520029@uit.edu.vn', CAST(0xA33F0B00 AS Date), CAST(0x3C400B00 AS Date), N'LDG001', N'17520029', N'0868992467', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000003', N'Huỳnh Trầm Bảo Chấn', CAST(0xB0230B00 AS Date), N'Trà Vinh', N'17520035@uit.edu.vn', CAST(0xA73F0B00 AS Date), CAST(0x40400B00 AS Date), N'LDG001', N'17520035', N'0583335622', CAST(300000 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000004', N'Dương Thành Đạt', CAST(0xE2220B00 AS Date), N'TpHCM', N'17520040@uit.edu.vn', CAST(0x4E3F0B00 AS Date), CAST(0xE43F0B00 AS Date), N'LDG001', N'17520040', N'0903533820', CAST(10000 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000005', N'Nguyễn Tiến Đạt', CAST(0x3F230B00 AS Date), N'TpHCM', N'17520043@uit.edu.vn', CAST(0x6B3F0B00 AS Date), CAST(0x04400B00 AS Date), N'LDG001', N'17520043', N'0964726908', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000006', N'Đoàn Thanh Hiền', CAST(0x4D230B00 AS Date), N'Bình Phước', N'17520057@uit.edu.vn', CAST(0x393F0B00 AS Date), CAST(0xD03F0B00 AS Date), N'LDG001', N'17520057', N'0349689771', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000007', N'Nguyễn Phi Hùng', CAST(0xC4230B00 AS Date), N'Quảng Bình', N'17520068@uit.edu.vn', CAST(0x5C3F0B00 AS Date), CAST(0xF23F0B00 AS Date), N'LDG001', N'17520068', N'0776276497', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000008', N'Phạm Phúc Khải', CAST(0x68230B00 AS Date), N'Trà Vinh', N'17520081@uit.edu.vn', CAST(0x473F0B00 AS Date), CAST(0xDD3F0B00 AS Date), N'LDG001', N'17520081', N'0389996685', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000009', N'Nguyễn Hồng Khoa', CAST(0x42230B00 AS Date), N'Ninh Thuận', N'17520087@uit.edu.vn', CAST(0xAE3F0B00 AS Date), CAST(0x47400B00 AS Date), N'LDG001', N'17520087', N'0377337952', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000010', N'Nguyễn Du Lịch', CAST(0xA8230B00 AS Date), N'Phú Yên', N'17520096@uit.edu.vn', CAST(0x943F0B00 AS Date), CAST(0x2D400B00 AS Date), N'LDG001', N'17520096', N'0398821923', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000011', N'Bùi Tuấn Minh', CAST(0x58230B00 AS Date), N'Tp HCM', N'17520107@uit.edu.vn', CAST(0xAF3F0B00 AS Date), CAST(0x48400B00 AS Date), N'LDG001', N'17520107', N'01627162898', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000012', N'Lê Quốc Phương', CAST(0x13230B00 AS Date), N'Bình Phước', N'17520134@uit.edu.vn', CAST(0x3C3F0B00 AS Date), CAST(0xD33F0B00 AS Date), N'LDG001', N'17520134', N'0918286150', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000013', N'Lê Huỳnh Thăng', CAST(0xF5220B00 AS Date), N'Quảng Bình', N'17520155@uit.edu.vn', CAST(0x913F0B00 AS Date), CAST(0x2A400B00 AS Date), N'LDG001', N'17520155', N'0392425724', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000014', N'Lê Quốc Thắng', CAST(0xFA230B00 AS Date), N'tp.HCM', N'17520156@uit.edu.vn', CAST(0x893F0B00 AS Date), CAST(0x22400B00 AS Date), N'LDG001', N'17520156', N'0937186594', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000015', N'Trần Anh Thắng', CAST(0x75230B00 AS Date), N'Tây Ninh', N'17520159@uit.edu.vn', CAST(0x563F0B00 AS Date), CAST(0xEC3F0B00 AS Date), N'LDG001', N'17520159', N'0888227068', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000016', N'Huỳnh Quốc Trung', CAST(0xE6230B00 AS Date), N'Quảng Nam', N'17520184@uit.edu.vn', CAST(0x2D3F0B00 AS Date), CAST(0xC43F0B00 AS Date), N'LDG001', N'17520184', N'0375475075', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000017', N'Phạm Trung Trường', CAST(0x52230B00 AS Date), N'Nam Định', N'17520186@uit.edu.vn', CAST(0x833F0B00 AS Date), CAST(0x1C400B00 AS Date), N'LDG001', N'17520186', N'01626934867', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000018', N'Cù Xuân Tùng', CAST(0x00240B00 AS Date), N'Hà Nội', N'17520187@uit.edu.vn', CAST(0xB13F0B00 AS Date), CAST(0x4A400B00 AS Date), N'LDG001', N'17520187', N'0934251299', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000019', N'Hà Thị Anh', CAST(0x5F230B00 AS Date), N'Ninh Thuận', N'17520230@uit.edu.vn', CAST(0x3A3F0B00 AS Date), CAST(0xD13F0B00 AS Date), N'LDG001', N'17520230', N'0962591703', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000020', N'Hồ Nguyên Bảo', CAST(0xFD230B00 AS Date), N'Quảng Nam', N'17520267@uit.edu.vn', CAST(0x2B3F0B00 AS Date), CAST(0xC23F0B00 AS Date), N'LDG001', N'17520267', N'0855765343', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000021', N'Phạm Trần Chính', CAST(0x9A220B00 AS Date), N'Lâm Đồng', N'17520292@uit.edu.vn', CAST(0xB23F0B00 AS Date), CAST(0x4B400B00 AS Date), N'LDG001', N'17520292', N'0352556124', CAST(750000 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000022', N'Nguyễn Xuân Cường', CAST(0xCC230B00 AS Date), N'Đăk Lăk', N'17520308@uit.edu.vn', CAST(0x9C3F0B00 AS Date), CAST(0x35400B00 AS Date), N'LDG001', N'17520308', N'01639939364', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000023', N'Phạm Duy Cường', CAST(0xDD230B00 AS Date), N'Bình Định', N'17520309@uit.edu.vn', CAST(0x9F3F0B00 AS Date), CAST(0x38400B00 AS Date), N'LDG001', N'17520309', N'01637492991', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000024', N'Nguyễn Thành Danh', CAST(0x24230B00 AS Date), N'Quy Nhơn', N'17520323@uit.edu.vn', CAST(0x323F0B00 AS Date), CAST(0xC93F0B00 AS Date), N'LDG001', N'17520323', N'0332198693', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000025', N'Vương Thịnh Đạt', CAST(0xDA230B00 AS Date), N'Bình Dương', N'17520343@uit.edu.vn', CAST(0x563F0B00 AS Date), CAST(0xEC3F0B00 AS Date), N'LDG001', N'17520343', N'0782369351', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000026', N'Phan Phước Đính', CAST(0xA6230B00 AS Date), N'tphcm', N'17520345@uit.edu.vn', CAST(0x703F0B00 AS Date), CAST(0x09400B00 AS Date), N'LDG001', N'17520345', N'0916382571', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000027', N'Nguyễn Văn Đông', CAST(0x83230B00 AS Date), N'Kon Tum', N'17520350@uit.edu.vn', CAST(0x8E3F0B00 AS Date), CAST(0x27400B00 AS Date), N'LDG001', N'17520350', N'0365071855', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000028', N'Đào Mạnh Dũng', CAST(0xD0220B00 AS Date), N'Kiên Giang', N'17520372@uit.edu.vn', CAST(0x383F0B00 AS Date), CAST(0xCF3F0B00 AS Date), N'LDG001', N'17520372', N'0914367398', CAST(0 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000029', N'Nguyễn Tiến Dũng', CAST(0xDD230B00 AS Date), N'Hà Tĩnh', N'17520376@uit.edu.vn', CAST(0x503F0B00 AS Date), CAST(0xE63F0B00 AS Date), N'LDG001', N'17520376', N'0396792508', CAST(3000 AS Decimal(18, 0)), N'')
INSERT [dbo].[DOCGIA] ([MaDocGia], [HoTen], [NgaySinh], [DiaChi], [Email], [NgayLapThe], [NgayHetHan], [MaLoaiDocGia], [IDAccount], [SDT], [TongNo], [GioiThieu]) VALUES (N'DG000030', N'Vũ Tuấn Hải', CAST(0x65230B00 AS Date), N'Gia Lai', N'17520433@uit.edu.vn', CAST(0x7F3F0B00 AS Date), CAST(0x18400B00 AS Date), N'LDG001', N'17520433', N'0814822188', CAST(0 AS Decimal(18, 0)), N'')

--insert quyền
INSERT [dbo].[PERMISSION] ([IDPer], [NamePer], [CodeAction], [Description]) VALUES (N'IP001', N'Độc Giả', N'DG', N'Chỉ được xem thông tin của mình')
INSERT [dbo].[PERMISSION] ([IDPer], [NamePer], [CodeAction], [Description]) VALUES (N'IP002', N'Quản Lý', N'QL', N'Được phép quản lý toàn bộ hệ thống')
INSERT [dbo].[PERMISSION] ([IDPer], [NamePer], [CodeAction], [Description]) VALUES (N'IP003', N'Quản Lý Độc Giả', N'QLDG', N'Được phép quản lý thông tin độc giả')
INSERT [dbo].[PERMISSION] ([IDPer], [NamePer], [CodeAction], [Description]) VALUES (N'IP004', N'Quản Lý Sách', N'QLS', N'Được phép quản lý thông tin sách')
INSERT [dbo].[PERMISSION] ([IDPer], [NamePer], [CodeAction], [Description]) VALUES (N'IP005', N'Quản Lý Mượn Trả', N'QLMT', N'Được phép quản lý thông tin mượn trả')

--insert chi tiết phân quyền
INSERT [dbo].[CHITIETPHANQUYEN] ([IDAccount], [IDPer], [suspended]) VALUES (N'admin', N'IP002', 1)
INSERT [dbo].[CHITIETPHANQUYEN] ([IDAccount], [IDPer], [suspended]) VALUES (N'admin_qldg', N'IP003', 1)
INSERT [dbo].[CHITIETPHANQUYEN] ([IDAccount], [IDPer], [suspended]) VALUES (N'admin_qls', N'IP004', 1)
INSERT [dbo].[CHITIETPHANQUYEN] ([IDAccount], [IDPer], [suspended]) VALUES (N'admin_qlmt', N'IP005', 1)

--insert phiếu mượn
INSERT [dbo].[PHIEUMUONSACH] ([MaPhieuMS], [MaDocGia], [NgayMuon]) VALUES (N'PM000001', N'DG000002', CAST(0xAD3F0B00 AS Date))
INSERT [dbo].[PHIEUMUONSACH] ([MaPhieuMS], [MaDocGia], [NgayMuon]) VALUES (N'PM000002', N'DG000003', CAST(0xAD3F0B00 AS Date))
INSERT [dbo].[PHIEUMUONSACH] ([MaPhieuMS], [MaDocGia], [NgayMuon]) VALUES (N'PM000003', N'DG000005', CAST(0xD03F0B00 AS Date))
INSERT [dbo].[PHIEUMUONSACH] ([MaPhieuMS], [MaDocGia], [NgayMuon]) VALUES (N'PM000004', N'DG000001', CAST(0xA93F0B00 AS Date))
INSERT [dbo].[PHIEUMUONSACH] ([MaPhieuMS], [MaDocGia], [NgayMuon]) VALUES (N'PM000005', N'DG000007', CAST(0x9F3F0B00 AS Date))
INSERT [dbo].[PHIEUMUONSACH] ([MaPhieuMS], [MaDocGia], [NgayMuon]) VALUES (N'PM000006', N'DG000010', CAST(0x9B3F0B00 AS Date))
INSERT [dbo].[PHIEUMUONSACH] ([MaPhieuMS], [MaDocGia], [NgayMuon]) VALUES (N'PM000007', N'DG000004', CAST(0x9B3F0B00 AS Date))
INSERT [dbo].[PHIEUMUONSACH] ([MaPhieuMS], [MaDocGia], [NgayMuon]) VALUES (N'PM000008', N'DG000029', CAST(0x9B3F0B00 AS Date))
INSERT [dbo].[PHIEUMUONSACH] ([MaPhieuMS], [MaDocGia], [NgayMuon]) VALUES (N'PM000009', N'DG000015', CAST(0x5D3F0B00 AS Date))
INSERT [dbo].[PHIEUMUONSACH] ([MaPhieuMS], [MaDocGia], [NgayMuon]) VALUES (N'PM000010', N'DG000021', CAST(0xCD3F0B00 AS Date))

--insert tác giả
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000001', N'Huỳnh Tấn Khải')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000002', N'Nguyễn Thanh Nhã')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000003', N'Phan Quang Chiêu')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000004', N'Nguyễn Tấn Bảo Long')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000005', N'Nguyễn Khắc Xương')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000006', N'Nguyễn Vinh Dự')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000007', N'Nguyễn Thị Hồng Anh')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000008', N'Lê Tùng Lâm')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000009', N'Lê Thị Hằng Nga')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000010', N'Trần Nguyên Khang')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000011', N'Phạm Đi')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000012', N'Hà Minh Hồng chủ biên... [và những người khác] ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000013', N'Nguyễn Thụy Phương')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000014', N'Dương Hoàng Lộc')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000015', N'Huỳnh Tuấn Kiệt, Nguyễn Văn Hiệu, Huỳnh Ngọc Thắng chủ biên')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000016', N'Derek Thompson ; Dương Hậu dịch ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000017', N'Thomas Flynn ; Đinh Hồng Phúc dịch ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000018', N'Bộ Giáo dục và Đào tạo')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000019', N'Đinh Ngọc Thạch, Doãn Chính đồng chủ biên')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000020', N'Graham Priest ; Nguyễn Văn Sướng dịch')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000021', N'Nguyễn Thanh Tùng')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000022', N'Stephen Mumford & Rani Lii Anjum ; Hoàng Phú Phương dịch ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000023', N'Ngô Thị Mỹ Dung')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000024', N'Vũ Thị Thu Huyền')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000025', N'Henri Bergson ; Cao Văn Luận dịch')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000026', N'Lê Cung chủ biên ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000027', N'Montesquieu ; Hoàng Thanh Đạm dịch.')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000028', N'Đinh Văn Quế')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000029', N'Nguyễn Ngọc Anh, Phan Trung Hoài chủ biên ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000030', N'Nguyễn Hữu Phước')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000031', N'Cao Vũ Minh')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000032', N'Vũ Dương Huân')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000033', N'Đàng Quang Vắng')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000034', N'Nguyễn Thị Loan chủ biên ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000035', N'Võ Văn Nhị chủ biên ... [và những người khác] ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000036', N'Marion McGovern ; Lê Hồng Phương Hạ dịch ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000037', N'Đinh Phi Hổ, Võ Văn Nhị, Trần Phước')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000038', N'Nguyễn Thị Loan chủ biên ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000039', N'Tổng Cục thống kê.')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000040', N'Alistair Croll, Benjamin Yoskovitz ; Trần Mạnh Hoàng dịch ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000041', N'Nguyễn Đình Bình')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000042', N'Randy Grieser ; Trịnh Huy Ninh dịch')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000043', N'Michael Bungay Stanier ; Đào Trung Uyên dịch ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000044', N'Jeb Blount ; Vũ Thanh Tùng dịch')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000045', N'Michael R. Bloomberg ; Nguyễn Bình dịch ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000046', N'Jamey Stegmaier ; Trần Minh Tuấn dịch ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000047', N'Ngô Hải Minh... [và những người khác] ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000048', N'David Goldwich; Nguyễn Ngô Hoài Linh dịch')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000049', N'Yumiko Kawanishi ; Nguyễn Thị Bích Huệ dịch ')
INSERT [dbo].[TACGIA] ([MaTacGia], [TenTacGia]) VALUES (N'TG000050', N'Lolly Daskal ; Kim Phụng dịch ')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000001', N'Tin Học')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000002', N'Khoa Học Xây Dựng')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000003', N'Khoa Học Kĩ Thuật')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000004', N'Chính Trị')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000005', N'Giáo Dục')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000006', N'Văn Hóa')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000007', N'Truyền Thông Báo Chí')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000008', N'Triết Học Và Tâm Lí Học')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000009', N'Tôn Giáo')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000010', N'Luật')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000011', N'Kinh Tế')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000012', N'Quản Trị Kinh Doanh')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000013', N'Lịch Sử , Địa Lí')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000014', N'Nhân Vật')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000015', N'Văn Học')
INSERT [dbo].[THELOAI] ([MaTheLoai], [TenTheLoai]) VALUES (N'TL000016', N'Kỹ Năng Sống')

--insert tình trạng sách
INSERT [dbo].[TINHTRANG] ([MaTinhTrang], [TenTinhTrang]) VALUES (N'TT001', N'Có sẵn')
INSERT [dbo].[TINHTRANG] ([MaTinhTrang], [TenTinhTrang]) VALUES (N'TT002', N'Đang mượn')
INSERT [dbo].[TINHTRANG] ([MaTinhTrang], [TenTinhTrang]) VALUES (N'TT003', N'Hỏng')
INSERT [dbo].[TINHTRANG] ([MaTinhTrang], [TenTinhTrang]) VALUES (N'TT004', N'Mất')

--insert sách
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000001', N'Kết hợp khai phá dữ liệu và phương pháp hình thức cho bài toán tổ hợp và kiểm chứng dịch vụ WEB', N'TL000001', 2018, N'Luận án', N'TG000001', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000002', N'Extended galerkin meshfree methods for fracture modeling in advanced funtional composite materials', N'TL000002', 2018, N'Luận án', N'TG000002', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000003', N'Nghiên cứu ảnh hưởng của độ ẩm và thành phần hạt mịn đến mô đun đàn hồi của nền đắp đất sét pha cát ', N'TL000002', 2018, N'Luận án', N'TG000003', CAST(0xD03F0B00 AS Date), CAST(250000 AS Decimal(18, 0)), N'TT003')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000004', N'Nghiên cứu phương pháp tính lún cho nền đất yếu được gia cố trụ đất xi măng', N'TL000002', 2018, N'Luận án', N'TG000004', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT004')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000005', N'Kim loại và hợp kim nhẹ trong đời sống', N'TL000003', 2018, N'Bách Khoa Hà Nội', N'TG000005', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000006', N'Tối ưu hóa quá trình nung cảm ứng trong kỹ thuật tạo hình vật liệu ở trạng thái bán lỏng hệ hợp kim ', N'TL000003', 2018, N'Luận án', N'TG000006', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000007', N'Using ionic liquid as solvent for coupling, and halogen exchange reactions', N'TL000003', 2018, N'Luận án', N'TG000007', CAST(0xD03F0B00 AS Date), CAST(200000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000008', N'Hàn Quốc dưới chế độ độc tài phát triển Park Chung Hee 1961-1979', N'TL000004', 2018, N'Đại học Quốc Gia Thành phố Hồ Chí Minh', N'TG000008', CAST(0xD03F0B00 AS Date), CAST(200000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000009', N'Quan hệ Ấn Độ - Hoa Kỳ (1947 - 1991)', N'TL000004', 2018, N'Chính trị Quốc gia - Sự thật', N'TG000009', CAST(0xD03F0B00 AS Date), CAST(200000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000010', N'Sức mạnh mềm của Pháp : Những vấn đề lý luận và thực tiễn', N'TL000004', 2018, N'Chính trị Quốc gia - Sự thật', N'TG000010', CAST(0xD03F0B00 AS Date), CAST(200000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000011', N'Vấn đề xã hội : Lý thuyết và vận dụng', N'TL000004', 2018, N'Chính trị Quốc gia - Sự thật', N'TG000011', CAST(0xD03F0B00 AS Date), CAST(200000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000012', N'Việt Nam - Campuchia : 50 năm quan hệ hữu nghị, hợp tác 1967-2017 : hỏi đáp', N'TL000004', 2018, N'Tổng hợp Tp. Hồ Chí Minh', N'TG000012', CAST(0xD03F0B00 AS Date), CAST(200000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000013', N'Giáo dục mới tại Việt Nam thập niên 1940', N'TL000005', 2018, N'Văn hóa - Văn nghệ', N'TG000013', CAST(0xD03F0B00 AS Date), CAST(200000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000014', N'Tín ngưỡng của cộng đồng ngư dân ven biển Đồng Bằng Sông Cửu Long', N'TL000005', 2018, N'Luận án', N'TG000014', CAST(0xD03F0B00 AS Date), CAST(200000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000015', N'Văn hóa võ đạo Việt Nam', N'TL000005', 2018, N'Tổng hợp Tp. Hồ Chí Minh ', N'TG000015', CAST(0xD03F0B00 AS Date), CAST(200000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000016', N'Kẻ dẫn dắt truyền thông', N'TL000005', 2018, N'Hồng Đức', N'TG000016', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000017', N'Chủ nghĩa hiện sinh - Dẫn luận ngắn', N'TL000006', 2018, N'Tổng hợp Tp. Hồ Chí Minh', N'TG000017', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000018', N'Giáo trình những nguyên lý cơ bản của chủ nghĩa Mác - LêNin', N'TL000006', 2018, N'Chính trị Quốc gia - Sự thật', N'TG000018', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000019', N'Lịch sử triết học phương Tây.Từ triết học cổ đại đến triết học cổ điển Đức', N'TL000006', 2018, N'Chính trị Quốc gia - Sự thật', N'TG000019', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000020', N'Logic học - Dẫn luận ngắn', N'TL000006', 2018, N'Tổng hợp Tp. Hồ Chí Minh', N'TG000020', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000021', N'Quá trình chuyển đổi từ tín ngưỡng đa thần sang đạo tin lành của người Stiêng ở tỉnh Bình Phước', N'TL000006', 2018, N'Luận án', N'TG000021', CAST(0xD03F0B00 AS Date), CAST(200000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000022', N'Quan hệ nhân quả - Dẫn luận ngắn', N'TL000006', 2018, N'Tổng hợp Tp. Hồ Chí Minh', N'TG000022', CAST(0xD03F0B00 AS Date), CAST(250000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000023', N'Triết học đạo đức của Immanuel Kant và ảnh hưởng đối với triết học Đức thế kỷ XIX', N'TL000006', 2018, N'Chính trị Quốc gia - Sự thật', N'TG000023', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000024', N'Tư tưởng Hồ Chí Minh về mối quan hệ giữa Đảng Cộng sản Việt Nam với quần chúng nhân dân - ý nghĩa và', N'TL000006', 2018, N'Luận án', N'TG000024', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000025', N'Vật chất và kí ức', N'TL000006', 2018, N'Đại học Sư Phạm', N'TG000025', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000026', N'Ý thức luận', N'TL000006', 2018, N'Đại học Sư Phạm', N'TG000025', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000027', N'Tinh thần nhập thế của Phật giáo việt nam (1945-1975)', N'TL000007', 2018, N'Tổng hợp Tp. Hồ Chí Minh', N'TG000026', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000028', N'Bàn về tinh thần pháp luật', N'TL000008', 2018, N'Thế giới', N'TG000027', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000029', N'Bình luận bộ luật hình sự năm 2015 : Phần thứ nhất - những quy định chung', N'TL000008', 2018, N'Thông tin và truyền thông', N'TG000028', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000030', N'Bình luận khoa học Bộ luật tố tụng hình sự năm 2015', N'TL000008', 2018, N'Chính trị Quốc gia - Sự thật', N'TG000029', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000031', N'Các câu hỏi thường gặp trong pháp luật lao động', N'TL000008', 2018, N'Tổng hợp Tp. Hồ Chí Minh', N'TG000030', CAST(0xD03F0B00 AS Date), CAST(150000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000032', N'Cẩm nang pháp luật cá nhân & gia đình', N'TL000008', 2018, N'Tổng hợp Tp. Hồ Chí Minh', N'TG000030', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000033', N'Hình thức xử phạt trục xuất trong pháp luật Việt Nam ', N'TL000008', 2018, N'Chính trị Quốc gia - Sự thật', N'TG000031', CAST(0xD03F0B00 AS Date), CAST(199000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000034', N'Sổ tay pháp luật lao động', N'TL000008', 2018, N'Tổng hợp Tp. Hồ Chí Minh', N'TG000030', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000035', N'Về chính sách đối ngoại và ngoại giao Việt Nam', N'TL000008', 2018, N'Chính trị Quốc gia - Sự thật', N'TG000032', CAST(0xD03F0B00 AS Date), CAST(200000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000036', N'Các nhân tố ảnh hưởng đến thanh khoản của các ngân hàng thương mại Việt Nam ', N'TL000009', 2018, N'Luận án', N'TG000033', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000037', N'Kế toán ngân hàng (Lý thuyết - Bài tập - Bài giảng)', N'TL000009', 2018, N'Kinh tế TP. Hồ Chí Minh ', N'TG000034', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000038', N'Kế toán tài chính', N'TL000009', 2018, N'Tài chính', N'TG000035', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000039', N'Nền kinh tế tự do', N'TL000009', 2018, N'Lao động', N'TG000036', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000040', N'Nghiên cứu định lượng trong kế toán - kiểm toán', N'TL000009', 2018, N'Tài chính', N'TG000037', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000041', N'Nguyên lý kế toán (lý thuyết - bài tập - bài giải)', N'TL000009', 2018, N'Lao động', N'TG000038', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000042', N'Niên giám thống kê 2017', N'TL000009', 2018, N'Thống kê', N'TG000039', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000043', N'Phân tích dữ liệu tinh gọn', N'TL000009', 2018, N'Công Thương', N'TG000040', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000044', N'Phát triển kinh tế biển Kiên Giang trong tiến trình hội nhập kinh tế quốc tế', N'TL000009', 2018, N'Luận án', N'TG000041', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000045', N'10 nguyên tắc vàng của nhà lãnh đạo', N'TL000010', 2018, N'Lao động', N'TG000042', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000046', N'7 Câu hỏi thần kỳ của mọi sếp giỏi', N'TL000010', 2018, N'Thế giới', N'TG000043', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000047', N'Bán hàng bằng trí tuệ cảm xúc', N'TL000010', 2018, N'Trẻ', N'TG000044', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000048', N'Bloomberg Tiền bạc, trí tuệ và công việc', N'TL000010', 2018, N'Hồng Đức', N'TG000045', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT002')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000049', N'Chiến lược gọi vốn cộng đồng', N'TL000010', 2018, N'Thế giới', N'TG000046', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')
INSERT [dbo].[SACH] ([MaSach], [TenSach], [MaTheLoai], [NamXuatBan], [NhaXuatBan], [MaTacGia], [NgayNhap], [TriGia], [MaTinhTrang]) VALUES (N'S000050', N'Con đường khởi nghiệp sáng tạo cho doanh nhân Việt', N'TL000010', 2018, N'Thế giới', N'TG000047', CAST(0xD03F0B00 AS Date), CAST(100000 AS Decimal(18, 0)), N'TT001')

--insert chi tiết phiếu mượn
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000001', N'S000007', CAST(0x0000AA7100000000 AS DateTime), N'Quá hạn')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000001', N'S000020', CAST(0x0000AA9000000000 AS DateTime), N'Còn hạn')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000001', N'S000030', CAST(0x0000AA7200000000 AS DateTime), N'Đã trả')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000002', N'S000004', CAST(0x0000AA8F00000000 AS DateTime), N'Đã trả')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000002', N'S000010', CAST(0x0000AAAE00000000 AS DateTime), N'Còn hạn')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000003', N'S000008', CAST(0x0000AAB200000000 AS DateTime), N'Còn hạn')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000004', N'S000001', CAST(0x0000AA7200000000 AS DateTime), N'Quá hạn')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000004', N'S000012', CAST(0x0000AA8100000000 AS DateTime), N'Còn hạn')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000005', N'S000002', CAST(0x0000AA8D00000000 AS DateTime), N'Đã trả')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000006', N'S000036', CAST(0x0000AAAE00000000 AS DateTime), N'Còn hạn')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000006', N'S000041', CAST(0x0000AACD00000000 AS DateTime), N'Còn hạn')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000006', N'S000043', CAST(0x0000AA6D00000000 AS DateTime), N'Đã trả')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000007', N'S000016', CAST(0x0000AA6D00000000 AS DateTime), N'Quá hạn')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000008', N'S000039', CAST(0x0000AA7200000000 AS DateTime), N'Đã trả')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000008', N'S000048', CAST(0x0000AA8000000000 AS DateTime), N'Còn hạn')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000009', N'S000006', CAST(0x0000AA8400000000 AS DateTime), N'Đã trả')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000009', N'S000009', CAST(0x0000AA7C00000000 AS DateTime), N'Còn hạn')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000009', N'S000017', CAST(0x0000AA5C00000000 AS DateTime), N'Quá hạn')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000010', N'S000003', CAST(0x0000AA9000000000 AS DateTime), N'Đã trả')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000010', N'S000022', CAST(0x0000AACE00000000 AS DateTime), N'Còn hạn')
INSERT [dbo].[CTPHIEUMUON] ([MaPhieuMS], [MaSach], [HanTra], [TinhTrangMuon]) VALUES (N'PM000010', N'S000032', CAST(0x0000AA9C00000000 AS DateTime), N'Còn hạn')

--insert phiếu trả sách
INSERT [dbo].[PHIEUTRASACH] ([MaPhieuMS], [MaSach], [NgayTra], [SoNgayMuon], [TienPhat], [TinhTrangTraSach], [GhiChu]) VALUES (N'PM000001', N'S000030', CAST(0xC93F0B00 AS Date), 28, CAST(0 AS Decimal(18, 0)), N'Bình thường', N'')
INSERT [dbo].[PHIEUTRASACH] ([MaPhieuMS], [MaSach], [NgayTra], [SoNgayMuon], [TienPhat], [TinhTrangTraSach], [GhiChu]) VALUES (N'PM000002', N'S000004', CAST(0xCC3F0B00 AS Date), 31, CAST(300000 AS Decimal(18, 0)), N'Mất', NULL)
INSERT [dbo].[PHIEUTRASACH] ([MaPhieuMS], [MaSach], [NgayTra], [SoNgayMuon], [TienPhat], [TinhTrangTraSach], [GhiChu]) VALUES (N'PM000005', N'S000002', CAST(0xD53F0B00 AS Date), 54, CAST(0 AS Decimal(18, 0)), N'Bình thường', NULL)
INSERT [dbo].[PHIEUTRASACH] ([MaPhieuMS], [MaSach], [NgayTra], [SoNgayMuon], [TienPhat], [TinhTrangTraSach], [GhiChu]) VALUES (N'PM000006', N'S000043', CAST(0xD23F0B00 AS Date), 56, CAST(10000 AS Decimal(18, 0)), N'Bình thường', N'Quá hạn 10 ngày')
INSERT [dbo].[PHIEUTRASACH] ([MaPhieuMS], [MaSach], [NgayTra], [SoNgayMuon], [TienPhat], [TinhTrangTraSach], [GhiChu]) VALUES (N'PM000008', N'S000039', CAST(0xD03F0B00 AS Date), 54, CAST(3000 AS Decimal(18, 0)), N'Bình thường', N'Quá hạn 3 ngày')
INSERT [dbo].[PHIEUTRASACH] ([MaPhieuMS], [MaSach], [NgayTra], [SoNgayMuon], [TienPhat], [TinhTrangTraSach], [GhiChu]) VALUES (N'PM000009', N'S000006', CAST(0xD03F0B00 AS Date), 115, CAST(0 AS Decimal(18, 0)), N'Bình thường', NULL)
INSERT [dbo].[PHIEUTRASACH] ([MaPhieuMS], [MaSach], [NgayTra], [SoNgayMuon], [TienPhat], [TinhTrangTraSach], [GhiChu]) VALUES (N'PM000010', N'S000003', CAST(0xD43F0B00 AS Date), 7, CAST(750000 AS Decimal(18, 0)), N'Hỏng', NULL)
