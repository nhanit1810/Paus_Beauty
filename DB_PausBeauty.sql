USE [DB_PausBeauty]
GO
/****** Object:  Table [dbo].[danh_muc_loai_sp]    Script Date: 10/9/2024 7:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danh_muc_loai_sp](
	[ma_dmlsp] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_dmlsp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[don_hang]    Script Date: 10/9/2024 7:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[don_hang](
	[ma_dh] [varchar](255) NOT NULL,
	[ngay_tao] [date] NULL,
	[dia_chi] [nvarchar](max) NULL,
	[note] [nvarchar](max) NULL,
	[sdt] [varchar](255) NULL,
	[tong_gia] [bigint] NULL,
	[trang_thai] [varchar](255) NULL,
	[ten_tai_khoan] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_dh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[don_hang_chi_tiet]    Script Date: 10/9/2024 7:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[don_hang_chi_tiet](
	[ma_dhct] [int] IDENTITY(1,1) NOT NULL,
	[gia] [bigint] NULL,
	[so_luong] [int] NULL,
	[ma_dh] [varchar](255) NULL,
	[ma_sp] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_dhct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gio_hang]    Script Date: 10/9/2024 7:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gio_hang](
	[magh] [int] IDENTITY(1,1) NOT NULL,
	[so_luong] [int] NULL,
	[ma_sp] [int] NULL,
	[ten_tai_khoan] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[magh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_sp]    Script Date: 10/9/2024 7:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_sp](
	[ma_lsp] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](max) NULL,
	[ma_dmlsp] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_lsp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 10/9/2024 7:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[ma_sp] [int] NOT NULL,
	[anh] [varchar](255) NULL,
	[ngay_cap_nhat] [date] NULL,
	[gia] [bigint] NULL,
	[mo_ta] [nvarchar](max) NULL,
	[ten_sp] [nvarchar](max) NULL,
	[ton_kho] [int] NULL,
	[trang_thai] [bit] NULL,
	[ma_loai_sp] [int] NULL,
	[ma_lsp] [int] NULL,
	[ma_th] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_sp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tai_khoan]    Script Date: 10/9/2024 7:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tai_khoan](
	[ten_tai_khoan] [varchar](255) NOT NULL,
	[dia_chi] [nvarchar](max) NULL,
	[ho_va_ten] [nvarchar](max) NULL,
	[mat_khau] [varchar](255) NULL,
	[role] [bit] NULL,
	[sdt] [varchar](255) NULL,
	[email] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ten_tai_khoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thuong_hieu]    Script Date: 10/9/2024 7:29:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuong_hieu](
	[ma_th] [int] IDENTITY(1,1) NOT NULL,
	[anh] [varchar](255) NULL,
	[ten_th] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_th] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[danh_muc_loai_sp] ON 

INSERT [dbo].[danh_muc_loai_sp] ([ma_dmlsp], [ten]) VALUES (1, N'Trang điểm')
INSERT [dbo].[danh_muc_loai_sp] ([ma_dmlsp], [ten]) VALUES (2, N'Chăm sóc da')
INSERT [dbo].[danh_muc_loai_sp] ([ma_dmlsp], [ten]) VALUES (3, N'Chăm sóc cơ thể')
INSERT [dbo].[danh_muc_loai_sp] ([ma_dmlsp], [ten]) VALUES (4, N'Chăm sóc tóc')
INSERT [dbo].[danh_muc_loai_sp] ([ma_dmlsp], [ten]) VALUES (5, N'Tools & Brushes')
SET IDENTITY_INSERT [dbo].[danh_muc_loai_sp] OFF
GO
INSERT [dbo].[don_hang] ([ma_dh], [ngay_tao], [dia_chi], [note], [sdt], [tong_gia], [trang_thai], [ten_tai_khoan]) VALUES (N'1', CAST(N'2024-10-06' AS Date), N'Quận 12, tp HCM', N'ok', N'0334564751', 340000, N'HUY_DON', N'nhanne')
INSERT [dbo].[don_hang] ([ma_dh], [ngay_tao], [dia_chi], [note], [sdt], [tong_gia], [trang_thai], [ten_tai_khoan]) VALUES (N'2', CAST(N'2024-10-06' AS Date), N'Quận 12, tp HCM', NULL, N'0334564751', 320000, N'DANG_XU_LY', N'nhanne')
GO
SET IDENTITY_INSERT [dbo].[don_hang_chi_tiet] ON 

INSERT [dbo].[don_hang_chi_tiet] ([ma_dhct], [gia], [so_luong], [ma_dh], [ma_sp]) VALUES (28, 300000, 1, N'1', 11110846)
INSERT [dbo].[don_hang_chi_tiet] ([ma_dhct], [gia], [so_luong], [ma_dh], [ma_sp]) VALUES (29, 300000, 1, N'2', 11110846)
SET IDENTITY_INSERT [dbo].[don_hang_chi_tiet] OFF
GO
SET IDENTITY_INSERT [dbo].[gio_hang] ON 

INSERT [dbo].[gio_hang] ([magh], [so_luong], [ma_sp], [ten_tai_khoan]) VALUES (39, 5, 11111031, N'nnahnn')
SET IDENTITY_INSERT [dbo].[gio_hang] OFF
GO
SET IDENTITY_INSERT [dbo].[loai_sp] ON 

INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (1, N'Cushion', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (2, N'Kem nền', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (3, N'Phấn phủ', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (4, N'Che khuyết điểm', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (5, N'Kem lót', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (6, N'Phấn má hồng', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (7, N'Tạo khối', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (8, N'Son môi - thỏi', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (9, N'Son kem - tint', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (10, N'Son dưỡng - đặc trị', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (11, N'Son bóng', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (12, N'Phấn mắt', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (13, N'Masscara', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (14, N'Chì kẻ mày', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (15, N'Kẻ mắt', 1)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (16, N'Kem dưỡng da', 2)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (17, N'Serum', 2)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (18, N'Toner', 2)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (19, N'Sữa rửa mặt', 2)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (20, N'Tẩy trang', 2)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (21, N'Tẩy tế bào chết da mặt', 2)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (22, N'Mặt nạ giấy', 2)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (23, N'Mặt nạ ngủ', 2)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (24, N'Mặt nạ mắt & môi', 2)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (25, N'Mặt nạ dưỡng', 2)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (26, N'Sữa tắm', 3)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (27, N'Dưỡng thể', 3)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (28, N'Tẩy tế bào chết cơ thể', 3)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (29, N'Kem dưỡng tay', 3)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (30, N'Dầu gội', 4)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (31, N'Dầu xả', 4)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (32, N'Dưỡng tóc', 4)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (33, N'Nhuộm tóc', 4)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (34, N'Bông tẩy trang', 5)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (35, N'Cọ trang điểm', 5)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (36, N'Mút trang điểm', 5)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (37, N'Dao cạo', 5)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (38, N'Cọ rửa mặt', 5)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (39, N'Máy đẩy tính chất', 5)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (40, N'Máy rửa mặt', 5)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (41, N'Xịt ngăn mùi', 3)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (42, N'Kem chống nắng', 3)
INSERT [dbo].[loai_sp] ([ma_lsp], [ten], [ma_dmlsp]) VALUES (43, N'Nước hoa', 3)
SET IDENTITY_INSERT [dbo].[loai_sp] OFF
GO
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (1110880, N'cathdoll_white.jpg', CAST(N'2024-08-05' AS Date), 119000, N'hành phần dưỡng thiên nhiên
- Glutathione, Deoxy Arbutin: hoạt chất làm trắng sáng da, mờ thâm sạm, dưỡng da mềm mại

- Protein từ sữa bò tươi: bổ sung khoáng chất, vitamin giúp nuôi dưỡng làn da mịn màng, hồng hào

- Chiết xuất dâu tây trắng: giúp ngăn ngừa lão hóa da, hỗ trợ làm da sáng hồng hào

- Hyaluronic acid: cấp nước dưỡng ẩm, làm mềm mịn da

Công dụng Cathy Doll White Milk Shine
- Làm sạch tế bào chết nhẹ nhàng

- Chăm sóc lỗ chân lông mịn màng

- Giảm thiểu vùng da chai sần, thâm sạm

- Bổ sung ẩm, nuôi dưỡng da sáng trắng, mịn màng, săn chắc hơn

Hướng dẫn sử dụng
Dùng 2-3 lần trong tuần. Áp dụng trên làn da ướt, massage một lượng sản phẩm vừa đủ lên khắp cơ thể. Tập trung tại vùng đầu gối, cùi chỏ… sau đó tắm sạch lại với nước với sữa tắm.', N'Tẩy Da Chết Cơ Thể Làm Trắng Da Cathy Doll White Milk Shine Peeling Body Scrub 320ml', 0, 0, NULL, 28, 12)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11100578, N'jmsolution_4.jpg', CAST(N'2024-10-06' AS Date), 80000, N'Mặt Nạ Giấy - Glow Luminous Aurora Mask
Những năm gần đây mặt nạ giấy trở thành từ khóa hot nhất trên mạng xã hội, các diễn đàn làm đẹp,… nhờ tính tiện dụng vốn có của nó. Mặt nạ giấy cung cấp đổ ẩm và dưỡng chất, giúp cải thiện da tức thì và về sử dụng lâu dài da sẽ đủ ẩm và bóng khỏe từng ngày. Vì những lợi ích và sự tiện lợi thì mặt nạ giấy trở thành vật bất li thân trong tủ đồ dưỡng da của mọi cô gái từ châu Á đến châu Âu.
Mặt nạ xóa nếp nhăn Glow Luminous Aurora Mask kết cấu dạng tinh chất với thành phần chính từ bột ngọc trai và Hyaluronic Acid giúp làm trắng và cải thiện làn da có vấn đề về nếp nhăn. Cả hai thành phần giúp giữ ẩm, cấp nước cho da tức thì ngay sau khi sử dụng, đảm bảo làn da luôn mịn màng, bóng khỏe cả ngày dài
Mặt nạ có màu trắng đục, chất liệu bông cao cấp nên vô cùng mềm mại và giữ hơi nước. Mặt nạ được thiết kế 3D nên dễ dàng ôm sát theo cấu trúc mặt, đảm bảo mọi phần trên khuôn mặt đều được tiếp xúc với sản phẩm. Tinh chất cô đặc có trong gói mặt nạ có thể dùng để dưỡng ẩm cho vùng da cổ, các vùng da trên cơ thể hoặc cất trong tủ lạnh để sử dụng cho những lần sau.', N'Mặt Nạ Giấy Jmsolution Glow Luminous Aurora Mask', 9, 1, NULL, 22, 48)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11100888, N'banila_1.jpg', CAST(N'2024-08-03' AS Date), 594000, N'Với thiết kế dạng sáp, gặp thân nhiệt sẽ nhanh chóng tan chảy, hòa tan tất cả lớp phần, dầu nhờn hiệu quả. Đến ngay cả lớp phấn dày cộm, hay mascara waterproof, son lì đều được loại bỏ dễ dàng. Da sẽ khô thoáng, sạch mịn hay khô rát sau khi tẩy trang.

Khi sử dụng Sáp Tẩy Trang Banila Co Clean It Zero sẽ giúp đơn giản hóa việc làm sạch. Không chỉ tăng gấp đôi khả năng làm sạch da mặt, mà còn loại bỏ tế bào da chết, thắt chặt lỗ chân lông và làm mềm da.', N'Sáp Tẩy Trang Banila Co Clean It Zero Original Cho Mọi Loại Da 180Ml', 100, 1, NULL, 20, 10)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11100892, N'banila_3.jpg', CAST(N'2024-08-03' AS Date), 285000, N'Thành phần tự nhiên an toàn cho da
Sữa Rửa Mặt Banila Co Clean It Zero Foam Cleanser có nguồn gốc tự nhiên với chiết xuất Acerola giúp da khỏe mạnh. Rooibos giàu viatmin C làm sáng da. Vitamin C cũng có khả năng giữ nước tuyệt vời cho da, do đó giúp làm sạch nhưng không mất độ ẩm tự nhiên trong da.
Hướng dẫn sử dụng:
- Làm ướt da mặt. Cho 1 lượng bằng hạt đậu xanh Sữa Rửa Mặt Banila Co Clean It Zero Foam Cleanser ra lòng bàn tay. Tạo bọt rồi áp lên da mặt. Kết hợp massage để tăng hiệu quả làm sạch. Sau đó rửa sạch lại với nước.
- Sử dụng ngày 2 lần sáng và tối.', N'Sữa Rửa Mặt Banila Co Clean It Zero Foam Cleanser 150Ml', 100, 1, NULL, 19, 10)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11100993, N'ahc_premium_1.jpg', CAST(N'2024-08-03' AS Date), 160000, N'Thư giãn cho làn da sau một ngày dài liên tục phải chống chọi với ánh nắng mặt trời, khói bụi là điều vô cùng cần thiết. Vậy chọn cách nào thì giúp thư giãn tốt nhất cho làn da? Một câu hỏi đôi lúc khó khăn khi tìm câu trả lời. Sản phẩm mặt nạ dưỡng da đến từ thương hiệu AHC của đội ngũ chuyên viên am hiểu và tận tình về cách chăm sóc, nuôi dưỡng làn da. Đã sáng tạo và cho ra đời mặt nạ dưỡng da AHC Premium Hydra Gold Foil Mask. Sản phẩm được cấp bằng sáng chế và rất được đón nhận tại Hàn Quốc.
Chăm sóc da với mặt nạ dưỡng ẩm sẽ là lựa chọn hoàn hảo, thể hiện tình yêu của mình đối với làn da của mỗi người. Với sự kiểm định và cấp bằng sáng chế, mặt nạ AHC chứa dưỡng chất làm ẩm cùng lượng Axit Hydrat dồi dào giúp khôi phục làn da tổn thương một cách nhanh chóng. Thêm vào đó, với cấu trúc ba lớp chắn nhiệt độc đáo bao gồm lớp Foil, lớp Matrix, lớp Tencel khiến làn da ấm nóng tạo hiệu ứng hơi nước để mở lỗ chân lông và cho phép chất dinh dưỡng nhanh chóng chìm vào da khiến da luôn ngậm nước và dẻo dai.', N'Mặt Nạ Vàng Chống Lão Hóa AHC Premium Hydra Gold Foil Mask (1Pcs)', 100, 1, NULL, 22, 1)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11102709, N'DearDahlia_SkinParadise_1.jpg', CAST(N'2024-06-30' AS Date), 780000, N'Nhiều khuyết điểm trên gương mặt sẽ gây khó khăn cho việc make-up của bạn. Lỗ chân lông to, nếp nhăn, đồi mồi và da tiết nhiều dầu… là những nguyên nhân khiến lớp nền trang điểm không được hoàn hảo, khó duy trì lâu. Để giải quyết tình trạng trên, hãy sử dụng kem lót trước khi trang điểm. Kem lót Dear Dahlia Skin Paradise Pore Perfecting Primer sẽ giúp làm che phủ và làm mịn lỗ chân lông, tạo ra bề mặt da mềm mịn và sáng màu. Các khuyết điểm như đường nhăn, nếp gấp, đồi mồi cũng được làm mờ đi.
Skin Paradise Pore Perfecting Primer có kết cấu kem dạng sữa lỏng, mềm mịn không gây bóng nhờn, mang lại cảm giác êm dịu và thoải mái cho làn da. Kem lót không những làm mờ đi các khuyết điểm mà còn giúp lớp make-up hoàn thiện hơn, bám lâu hơn. Trong khi đó làn da sẽ không bị thô ráp vì thiếu ẩm nhờ sản phẩm có tính nắng giữ ẩm và làm mịn da bằng những thành phần tự nhiên.
Tính năng nổi bật của kem lót trang điểm Skin Paradise Pore Perfecting Primer
Được làm từ thực vật tự nhiên, có kết cấu kem sữa mỏng nhẹ giúp che phủ và nuôi dưỡng làn da ẩm mịn, làm phẳng mịn bề mặt da thô sần.
Hiệu ứng làm mờ và che phủ tốt các lỗ chân lông, giảm thiểu các nếp nhăn, gấp và khuyết điểm trên gương mặt.', N'Kem Lót Trang Điểm Dear Dahlia Skin Paradise Pore Perfecting Primer 35Ml', 100, 1, NULL, 5, 18)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11102858, N'aness_perfect_1.jpg', CAST(N'2024-08-03' AS Date), 715000, N'Chống nắng đối với làn da nhạy cảm luôn cần phải khác biệt. Để làn da được bảo vệ tối ưu dưới ánh nắng, nhưng không mang lại cảm giác ngứa rát, nặng nề bạn cần sử dụng những sản phẩm chống nắng dịu nhẹ, kết cấu kem mỏng mịn & thành phần trong sản phẩm cũng dịu nhẹ, an toàn.

Ngoài công thức chống nắng vượt trội với chỉ số SPF50+ PA+++, sản phẩm còn chống trôi trong nước với công nghệ Aqua Booster độc quyền kết hợp thành phần dưỡng da an toàn. Anessa Perfect UV Sunscreen Mild Milk không chỉ bảo vệ da hiệu quả dưới ánh nắng, lâu dài trong nước mà còn chăm sóc da khỏe mạnh, luôn ẩm mịn khi đi dưới nắng.

Sản phẩm thuộc Anessa là thương hiệu chống nắng nổi tiếng từ lâu ở Nhật và các nước Châu Á (như Đài Loan, Hồng Kông, Trung Quốc...). Kế thừa công nghệ chống nắng hơn 100 năm của tập đoàn Shiseido, là thương hiệu có nghiên cứu đột phá khi tung ra sản phẩm chống nắng với SPF 50+ đầu tiên ở Nhật.', N'Sữa Chống Nắng Dịu Nhẹ Cho Da Nhạy Cảm Anessa Perfect UV Sunscreen Mild Milk SPF 50+ 60Ml', 100, 1, NULL, 42, 4)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11103897, N'cocoon_5.jpg', CAST(N'2024-08-03' AS Date), 125000, N'Công dụng chính: Cà Phê Làm Sạch Tế Bào Chết Cơ Thể Cocoon với chiết xuất hạt cà phê nguyên chất tại Đăk Lăk cho hiệu quả làm sạch vượt trội da chết, đồng thời cải thiện da xỉn màu, mang lại vẻ sáng mịn cho làn da.
Thành phần chính: Hạt cà phê, bơ ca cao
Hiệu quả sử dụng: Làn da body mềm mại, rạng rỡ sau 4 tuần sử dụng đều đặn', N'Cà Phê Làm Sạch Tế Bào Chết Cơ Thể Cocoon Dak Lak Coffee Body Polish 200Ml', 100, 1, NULL, 28, 13)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104017, N'ck_2.jpg', CAST(N'2024-08-03' AS Date), 2670000, N'Nước hoa CK Eternity thuộc nhóm Floral Woody (hoa cỏ, gỗ) có hương thơm tươi mát với sự kết hợp với thành phần chính là hương cay nồng, oải hương và hổ phách. Mùi hương trở nên nhẹ nhàng và êm dịu hơn khi nước hoa bắt đầu bay hơi. Các hương kết hợp hài hòa tạo nên mùi hương nước hoa sang trọng, tươi mát.

Các tầng hương trong nước hoa Eternity For Men
Hương đầu: Hoa oải hương, quýt, cam bergamot, chanh
Hương giữa: Ngò thơm, hoa lily, hoa cam, hạt cây bách xù, rau húng quế, hoa nhài...
Hương cuối: Gỗ đàn hương, hổ phách, xạ hương, cỏ vetiver, gỗ hồng mộc Brazil', N'Nước Hoa Dành Cho Nam Calvin Klein Eternity For Men Eau De Toilette 100Ml+G64:J64', 100, 1, NULL, 43, 11)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104020, N'ck_4.jpg', CAST(N'2024-08-03' AS Date), 2540000, N'ước hoa cho nữ giới với nhóm hương Oriental Floral (hoa cỏ phương Đông) mang lại làn hương đầy bí ẩn, quyến rũ. Euphoria có mùi hương tươi sáng và ngọt ngào nhờ vào những nốt hương trái cây và hoa cỏ góp mặt trong chai nước hoa. Sản phẩm được giới chuyên môn nhận định là mùi hương quyến rũ, huyền bí, gợi cảm đầy thu hút.

Các tầng hương trong nước hoa Euphoria
Hương đầu: Quả lựu
Hương giữa: Hoa sen, hoa phong lan
Hương cuối: Hoa tím, hổ phách, xạ hương, Gỗ gụ', N'Nước Hoa Dành Cho Nữ Calvin Klein Euphoria Eau De Parfum', 100, 1, NULL, 43, 11)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104028, N'hugo_1.jpg', CAST(N'2024-08-05' AS Date), 2579000, N'Nước hoa thuộc nhóm Floral Fruity (hương hoa cỏ và trái cây) tạo phong cách nữ tính, sành điệu với hương thơm nhẹ dịu vừa đủ nhưng lại như một chất gây nghiện, đủ thu hút khi lướt qua bất kì ai.

The Scent For Her mang mùi hương ngọt ngào tinh tế với sự kết hợp nhuần nhuyễn từng tầng hương, từ hương lan & đào ngọt nhẹ đến ấm áp với mộc tê gợi cảm và kết thúc với hương cacao đậm chất Gourmand. Thiết kế chai nước hoa sang trọng, bắt mắt với màu hồng nhẹ đầy nữ tính, sành điệu.

Các tầng hương của nước hoa The Scent For Her
Hương đầu: Quả đào, hoa lan Nam Phi
Hương giữa: Hoa chi mộc tê
Hương cuối: Cacao', N'Nước Hoa Dành Cho Nữ Boss Hugo Boss The Scent For Her Edp 100Ml', 100, 1, NULL, 43, 39)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104031, N'hugo_2.jpg', CAST(N'2024-08-05' AS Date), 1590000, N'Nước hoa Boss Bottled thuộc nhóm Woody Spicy (hương gỗ cay nồng) tạo nên mùi hương chủ đạo ấm áp, sắc sảo nhưng không kém phần cuốn hút dành riêng cho nam giới. Hương đầu tiên tươi mát, tràn ngập mùi cây táo (táo & cam quýt) giống như một chiếc bánh táo thơm lừng ngon lành và hấp dẫn. Nó được cân bằng một cách hoàn hảo với hương hoa và hương vị cay nồng trong lớp hương giữa.

Các tầng hương của nước hoa Boss Bottled
Hương đầu: Quả mận, rêu sồi, quả táo xanh, quả chanh vàng, cam Bergamot, hoa phong lữ.
Hương giữa: Gỗ gụ, hoa cẩm chướng, quế
Hương cuối: Gỗ đàn hương, cây oliu, hương vani, cỏ hương bài, gỗ tuyết tùng.', N'Nước Hoa Cho Nam Giới Boss Hugo Boss Bottled Edt 50Ml', 100, 1, NULL, 43, 39)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104052, N'ck_3.jpg', CAST(N'2024-08-03' AS Date), 2060000, N'Nước hoa CK Be mang đến phong cách cá tính pha chút nhẹ nhàng cho cả nam giới lẫn nữ giới. Khởi đầu với hương thơm mát mẻ, tươi mới của cam & quýt. Rồi dần dà trở nên ấm áp, dịu ngọt pha chút cay nồng đầy quyến rũ từ hoa nhài, hoa lan. Tầng hương nền nồng ấm, cuốn hút duy trì thoang thoảng sẽ khiến bạn luôn tràn đầy năng lượng cho một ngày

Các tầng hương của nước hoa CK Be
Hương đầu: cam Bergamot, cam mandarin, hoa oải hương
Hương giữa: Hoa nhài, lan Nam phi
Hương cuối: Chi tuyết tùng, xạ hương, hổ phách, hương vani', N'Nước Hoa Unisex Calvin Klein Ck Be Edt 100Ml', 100, 1, NULL, 43, 11)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104282, N'ck_5.jpg', CAST(N'2024-08-03' AS Date), 2630000, N'
Nước hoa thuộc nhóm Citrus Aromatic (hương trái cây và hoa cỏ) tạo phong cách tươi mát, dịu nhẹ và ấm áp cho cả nam lẫn nữ. Nốt hương đầu mang lại cảm giác tươi mát từ các loại trái mọng (quả quýt, cam, chanh). Tiếp nối là khúc hương ngọt ngào, say đắm của các loại hoa. Cuối cùng lưu lại mùi hương ấm nồng của gỗ, xạ hương.

Các nốt hương của nước hoa CK One
Hương đầu: Cam bergamot, quả thơm, đu đủ, bạch đậu khấu
Hương giữa: hoa tím, hoa hồng
Hương cuối: hổ phách, xạ hương', N'Nước Hoa Ck Unisex Calvin Klein One Edt 200Ml', 100, 1, NULL, 43, 11)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104346, N'Maybelline_FitMeConcealer_1.jpg', CAST(N'2024-06-29' AS Date), 178000, N'Công dụng chính: Kem che khuyết điểm Maybelline giúp che phủ hoàn hảo các khuyết điểm, đồng thời kiềm dầu duy trì lớp nền lâu trôi.
Hiệu ứng: Che khuyết điểm, tự nhiên
Loại da sử dụng tốt nhất: Da dầu, mụn, nhạy cảm
Thuộc dòng sản phẩm nền số 1 tại Mỹ, kem che khuyết điểm Maybelline Fit Me Concealer là sản phẩm không thể thiếu trong bộ trang điểm để mang đến cho bạn lớp nền hoàn hảo. Chất kem có kết cấu dạng lỏng mịn, độ bám tốt nhưng lại vô cùng tự nhiên, dễ tán đều, không dày cộp gây cảm giác giả tạo. Tất cả những khuyết điểm khiến bạn không hài lòng trên gương mặt như: mụn, nám, tàn nhang... đều được che giấu nhanh chóng.
Kem che khuyết điểm Maybelline Fit Me Concealer là sựa chọn lý tưởng cho làn da dầu, nhạy cảm và có mụn.', N'Kem Che Khuyết Điểm Maybelline Fit Me Concealer 6.8ml (Color: 15 Fair)', 100, 1, NULL, 4, 64)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104349, N'Maybelline_BabySkin_1.jpg', CAST(N'2024-06-30' AS Date), 208000, N'Kem lót Baby Skin Pore Eraser giúp làm mịn da, che khuyết điểm, tạo hiệu ứng lỗ chân lông thu nhỏ, cho lớp nền mịn màng hoàn hảo. Cấu trúc gel trong suốt, mịn nhẹ dễ tán, hiệu quả trong việc che lỗ chân lông ngay tức thì. Hứa hẹn sẽ mang lại làn da láng mịn như da em bé trong tíc tắc.
Đặc biệt, kem lót mịn da Maybelline Baby Skin còn được yêu thích bởi thành phần sản phẩm có chiết xuất cherry chống lão hóa da và khả năng che khuyết điểm vượt trội, giúp cải thiện tình trạng da trước khi trang điểm chỉ trong tích tắc. Bên cạnh đó, Kem lót giúp thu nhỏ lỗ chân lông, giúp da mềm mịn như em bé, đồng thời tạo lớp nền mịn màng, kiềm dầu ngăn bóng nhờn và lâu trôi hơn.', N'Kem Lót Mịn Da Maybelline Baby Skin Pore Eraser 22Ml', 100, 1, NULL, 5, 64)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104350, N'Maybelline_InstantAgeRewindEraser_1.jpg', CAST(N'2024-06-29' AS Date), 238000, N'Công dụng chính: Bút cushion che khuyết điểm Maybelline dễ dàng che lấp các khuyết điểm trên gương mặt, nhất là vùng bầu mắt thâm quầng, sẹo, mụn… hỗ trợ tạo nên lớp nền hoàn hảo, mịn màng.
Hiệu ứng: Tự nhiên                                         
Bút cushion che khuyết điểm Maybelline Instant Age Rewind trở thành che khuyết điểm thần thánh được yêu thích trên toàn thế giới và nổi tiếng về công dụng che quầng thâm, che phủ hoàn hảo các khuyết điểm như thâm, mụn, tàn nhang, sẹo nhỏ.
Bút cushion đa năng có thể sử dụng để nhấn sáng & tạo khối cho khuôn mặt trở nên cân đối, hài hòa. Thiết kế đầu cushion giúp dễ dàng tán đều kem lên da. Sản phẩm nhỏ gọn, tiện lợi dễ mang theo bên mình.', N'Bút Cushion Che Khuyết Điểm Maybelline Instant Age Rewind Eraser 6Ml (Color: 11 Fair)', 99, 1, NULL, 4, 64)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104374, N'MaybelineFit_1.jpg', CAST(N'2024-06-23' AS Date), 288000, N'Kiềm dầu tốt, cho lớp nền luôn mịn lì.
Độ che phủ trung bình- cao, che khuyết điểm & lỗ chân lông hoàn hảo.
 Hiệu ứng mịn nhẹ tự nhiên
12 tông màu tiệp mọi tông da.
Kem nền lý tưởng cho da thường, da hỗn hợp và da dầu.
Thiết kế đầu pump tiện lợi, dễ dàng sử dụng và tiết kiệm sản phẩm', N'Kem Nền Maybelline Fit Me Matte+Poreless 30Ml', 100, 1, NULL, 2, 64)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104392, N'MaybelineSuperStay_1.jpg', CAST(N'2024-06-23' AS Date), 298000, N'Kem nền Maybelline Superstay 24h Full Coverage Foundation có độ che phủ cao và lâu trôi suốt 24H cho hiệu ứng mịn lì, phù hợp cho mọi loại da. 
Nhiều tông màu lựa chọn, phù hợp với hầu hết tông da người Á Châu.', N'Kem Nền Lâu Trôi Maybelline Superstay 24H Full Coverage Foundation 30Ml', 100, 1, NULL, 2, 64)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104427, N'L''OrealTrueMatch_1.jpg', CAST(N'2024-06-23' AS Date), 369000, N'Kem nền giàu thành phần dưỡng chất góp phần nuôi dưỡng da mềm mượt, khỏe khoắn.
Hỗn hợp Glycerin & Hyaluronic acid sẽ cấp ẩm căng mướt da, cải thiện làn da trẻ hóa. Trong khi đó Vitamin E và collagen, Pro-vitamin B5 mang lại khả năng dưỡng ẩm, làm săn chắc và căng mướt da.
Hạt phấn dạng lỏng siêu mịn với công nghệ Micro-Matching cho khả năng che phủ hoàn hảo, sắc màu tiệp màu da & lâu trôi cho lớp nền mịn mượt tươi tắn.', N'Kem Nền Che Phủ Hoàn Hảo L’Oreal True Match Super-Blendable Foundation 30Ml', 100, 1, NULL, 2, 57)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104608, N'ahc_hydra_1.jpg', CAST(N'2024-08-03' AS Date), 440000, N'Điểm nổi bật của Nước cân bằng AHC PREMIUM EX HYDRA B5 TONER
Cân bằng độ pH làm dịu da, làm mềm mịn bề mặt
Cung cấp độ ẩm, cải thiện nếp nhăn li ti do mất nước
Sử dụng công nghệ màng bọc Trans-liposome giúp ổn định chất lượng và vận chuyển dưỡng chất thẩm thấu nhanh vào trong da, đem lại làn da mềm mại tức thì mà không gây dính rít.
Làn da trở nên mềm mượt, mọng nước và sức đề kháng được tăng cường
An toàn và dịu nhẹ cho cả làn da nhạy cảm. Hiệu quả cao khi sử dụng dưới lớp trang điểm
Thành phần chính trong Dòng AHC PREMIUM EX HYDRA B5
D-Panthenol (Vitamin B5): thành phần nguyên chất và có độ tinh khiết đến 98%, giúp làm dịu da đồng thời duy trì màng ẩm trên bề mặt cho da dịu nhẹ
 Derma Hyaluronic acid: thành phần HA tự nhiên, tinh khiết đến 95% (từ chiết xuất từ nấm tuyết đạt tiêu chuẩn về hiệu quả như dược phẩm) giúp cấp nước khóa ẩm sâu, chăm sóc da mềm mại tươi tắn.', N'Nước Cân Bằng AHC Cấp Ẩm Premium Ex Hydra B5 Toner 140Ml', 100, 1, NULL, 18, 1)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104633, N'hairburst_1.jpg', CAST(N'2024-08-05' AS Date), 830000, N'Set sản phẩm gồm (Dầu Gội 350ml + Dầu Xả 350ml)

HairBurst For Longer Stronger giàu protein để củng cố và phục hồi tóc yếu, giúp tóc ít gãy rụng hơn và từ đó mọc dài hơn. Dầu gội Hairburst làm tăng thêm độ bóng bẩy vẻ ngoài của tóc dày hơn thông qua việc duy trì độ ẩm trong từng sợi tóc.

Bộ dầu gội và dầu xả Hairburst chứa 9 loại axit amin khác nhau để mang đến cho bạn mái tóc chắc khỏe. Công thức đặc biệt để mang lại kết quả tối ưu trong khi gội.

Sản phẩm không chứa SLS và paraben, Dầu gội & Dầu xả Hairburst hoàn toàn an toàn cho mục đích sử dụng hàng ngày và sẽ tiếp tục thúc đẩy sự phát triển của tóc khỏe mạnh sau mỗi lần dùng. Tình trạng rụng tóc, hay ít tóc cũng dần được khắc phục sau mỗi liệu trình sử dụng.

Thành phần chính:

PROTEIN WHEAT HYDROLYSED WHEAT: Một thành phần tự nhiên có nguồn gốc từ mầm lúa mì dưới dạng phân tử nhỏ dễ dàng thâm nhập vào sợi tóc và giúp tóc hấp thụ dưỡng chất. Giữ độ ẩm trên tóc, giúp tóc thêm chắc khỏe, đầy đặn và bồng bềnh.
AMINO ACIDS: Tăng cường và giữ ẩm cho tóc, cải thiện tóc hư tổn và độ chắc khỏe, từ đó các sợi tóc mềm mượt hơn, ít gãy rụng hơn.
PANTHENOL: Một dẫn xuất của Vitamin B5 và chất giữ ẩm, giúp giữ nước và dưỡng ẩm cho các sợi tóc. Có khả năng xuyên qua lớp biểu bì của tóc, phục hồ tóc chắc khỏe.', N'Set Gội Xả Kích Thích Mọc Tóc Hairburst For Longer And Stronger Hair (Dầu Gội 350Ml + Dầu Xả 350Ml) Ne', 100, 1, NULL, 30, 37)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104638, N'balance_deep_1.jpg', CAST(N'2024-08-03' AS Date), 180000, N'Balance là một hãng mỹ phẩm nổi tiếng nội địa UK. Balace Active Formula là một trong những loại serum bán chạy nhất của hãng. Các sản phẩm luôn chú trọng đến chất lượng sản phẩm, không chứa hóa chất độc hại, không chứa parabens hay hương liệu.
Công thức sản phẩm chứa các thành phần thiên nhiên tốt, giúp da được đàn hồi săn chắc. Tác dụng chống oxi hóa tuyệt vời của sản phẩm còn mang đến nhiều tác dụng tốt cho da.', N'Tinh Chất Cấp Nước Dưỡng Ẩm Sâu Balance Active Formula Deep Moisture 30Ml', 100, 1, NULL, 17, 6)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104639, N'balance_formula_1.jpg', CAST(N'2024-08-03' AS Date), 260000, N'Balance là một hãng mỹ phẩm nổi tiếng nội địa UK. Balace Active Formula là một trong những loại serum bán chạy nhất của hãng. Các sản phẩm luôn chú trọng đến chất lượng sản phẩm, không chứa hóa chất độc hại, không chứa parabens hay hương liệu.
Công thức sản phẩm chứa các thành phần thiên nhiên tốt, giúp da được đàn hồi săn chắc. Tác dụng chống oxi hóa tuyệt vời của sản phẩm còn mang đến nhiều tác dụng tốt cho da.', N'Serum Chống Lão Hóa Balance Active Formula Gold Collagen Rejuvenating 30Ml', 100, 1, NULL, 17, 6)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11104650, N'emmie_1.jpg', CAST(N'2024-08-04' AS Date), 845000, N'Máy rửa mặt Emmié Premium Facial Cleansing Brush với mật độ lông dày dặn, sợi mềm mại giúp len lỏi vào sâu trong lỗ chân lông, lấy đi mọi bụi bẩn, bã nhờn và cặn trang điểm cực kỳ hiệu quả nhưng vẫn dịu nhẹ với da. Góp phần giúp bạn thư giãn và chống lão hóa.

Ưu điểm vượt trội của Máy rửa mặt:
- Đạt các tiêu chuẩn quốc tế như FDA, CE & RoHS*

- Chất liệu: Food Grade Liquid Silicone – Silicone thế hệ mới, an toàn trong công nghệ thực phẩm.

- Thiết kế máy rửa mặt có sợi lông siêu mảnh và dày đặc, làm sạch vượt trội nhưng dịu nhẹ với da

- Thiết kế thông minh, vừa vặn với lòng bàn tay, phần chạm T-zone được vuốt gọn để dễ dàng chạm đến những vùng khó chạm đến như cánh mũi, khóe mắt

7 chế độ rung phù hợp với mọi nhu cầu, loại da và tình trạng da
- Tiêu chuẩn kháng nước IPX7 có khả năng chịu đựng độ sâu dưới nước 1 mét lên đến 30 phút

- Tự tắt sau 1 phút để đảm bảo không vượt quá thời gian rửa mặt cần thiết.

Hướng dẫn sử dụng:

– Mở máy, điều chỉnh mức độ rung phù hợp. Chuyển động máy theo chiều từ dưới đi lên, từ trong ra ngoài, đặc biệt là những vùng tích tụ nhiều bã nhờn, bụi bẩn như trán, mũi, cằm.

– Mở máy, điều chỉnh mức độ rung phù hợp tương tự cho chế độ massage ở mặt sau.

Kích cỡ: 10.1 x 7 x 3.55 (cm)

Bảo quản: Rửa sạch, lau khô sau mỗi lần sử dụng. Đặt ở nơi thoáng mát.

Thời gian sạc đầy: 2 tiếng', N'Máy Rửa Mặt Đạt Chứng Nhận Fda Emmié Premium Facial Cleansing Brush', 100, 1, NULL, 40, 22)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11105044, N'kai_3.jpg', CAST(N'2024-08-06' AS Date), 69000, N'
Set 4 dao cạo lông mày Kai Pretty Eyebrow Razor là dạng dao cạo thích hợp cho việc định hình chân mày, giúp mang đến một cặp chân mày sắc nét, hoàn hảo. Dao nhẹ nhàng lướt êm trên da, sử dụng được cả cho da nhạy cảm.

Thiết kế Kai Pretty Eyebrow Razor nhỏ gọn, thân dao dễ dàng cầm nắm, không bị trơn trượt. Lưỡi dao nhẹ nhàng theo sát giúp loại bỏ chân mày thừa nhanh chóng mà không làm trầy sát da.

Sản phẩm an toàn cho mọi loại da, có thể tái sử dụng lại nhiều lần để tiết kiệm chi phí.', N'Set 4 Dao Cạo Lông Mày Kai Pretty Eyebrow Razor', 8, 1, NULL, 37, 52)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11105048, N'kai_2.jpg', CAST(N'2024-08-06' AS Date), 52000, N'Set 3 dao cạo lông mặt Kai Can Compact S(3P) là dụng cụ hữu ích giúp loại bỏ lông mặt một cách nhanh chóng. Sản phẩm giúp bề mặt da láng mịn, sáng bóng sau khi sử dụng.

Với kích thước nhỏ gọn của dao cạo lông mặt Kai Can Compact S(3P), chỉ với vài thao tác đơn giản, da mặt sẽ được làm sạch nhanh chóng.', N'Set 3 Dao Cạo Lông Mặt Kai Can Compact S(3P)', 100, 1, NULL, 37, 52)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11105049, N'kai_1.jpg', CAST(N'2024-08-06' AS Date), 43000, N'Set 3 dao cạo lông mặt Kai Can Compact Folding Razor là dụng cụ hữu ích giúp loại bỏ lông mặt một cách nhanh chóng. Sản phẩm giúp bề mặt da láng mịn, sáng bóng sau khi sử dụng.

Với kích thước nhỏ gọn của dao cạo lông mặt Kai Can Compact Folding Razor, chỉ với vài thao tác đơn giản, da mặt sẽ được làm sạch nhanh chóng.

Đặc điểm nổi bật của sản phẩm:

Lưỡi dao với độ bén vừa phải, dễ dàng lướt êm trên bề mặt da loại bỏ hoàn toàn những sợi lông mặt tối màu, mang đến làn da tươi sáng.
Tay cầm bằng nhựa cao cấp với những đường nét hoa văn, giúp cầm nắm chắc mà không hề gây trơn trượt khi thao tác.
Sản phẩm an toàn cho mọi loại da, có thể tái sử dụng lại nhiều lần để tiết kiệm chi phí.
Thành phần sản phẩm:

Thân dao: nhựa ABS, TPE
Lưỡi dao: thép không gỉ phủ lớp titan
Nắp dao: nhựa PP
Hướng dẫn sử dụng:

Phủ một lớp phấn lên toàn bộ khuôn mặt
Lấy dao cạo lông mặt nhẹ nhàng cùng chiều với xương mặt để tránh gây đau rát', N'Set 3 Dao Cạo Lông Mặt Kai Can Compact Folding Razor', 100, 1, NULL, 37, 52)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11105082, N'MOIBabySkin_1.jpg', CAST(N'2024-06-22' AS Date), 399000, N'Baby Skin Cushion - Một phiên bản nâng cấp hoàn hảo từ dòng phấn nước 5M Baby Skin Cushion đã chính thức trở lại "đường đua" làm đẹp với diện mạo mới hơn, chất lượng dưỡng da đỉnh hơn với giá bán không thể nào hợp lý hơn.
Baby Skin Cushion mỏng nhẹ nhưng vẫn che phủ thâm mụn và lỗ chân lông, độ che phủ cao dạng matte, đảm bảo da vẫn bóng nhẹ, ai yêu makeup glowy chống nắng bóng khỏe thì không nên bỏ qua!', N'Phấn Nước M.O.I Baby Skin Cushion 12g', 100, 1, NULL, 1, 65)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11105085, N'MOI_Baby Skin Powder_1.jpg', CAST(N'2024-06-28' AS Date), 590000, N'Baby Skin Powder - Phấn phủ với công dụng nổi bật là siêu kiềm dầu, cho bề mặt lớp makeup khô thoáng, dễ chịu dù đối mặt với nắng hè gay gắt. Baby Skin Powder gồm những hạt phấn nano siêu nhỏ, vừa hạn chế tình trạng đổ dầu trên da, vừa bám tốt và che phủ toàn bộ nhược điểm một cách tài tình, làm mờ lỗ chân lông, xứng đáng là phấn phủ “quốc dân” vì ai dùng cũng chuẩn.
Ưu điểm sản phẩm:
Phấn phủ trang điểm với những hạt phấn nano siêu nhỏ, che phủ tối ưu giúp bề mặt láng mịn.
Khả năng kiềm dầu vượt trội giúp bạn tự tin cả ngày dài.
Che phủ lỗ chân lông hiệu quả.
Tone màu trung tính phù hợp với nhiều màu da.
Thiết kế tinh tế, trang nhã phù hợp mọi lứa tuổi.
Xuất xứ sản phẩm: Hàn Quốc (Made in Korea).', N'Phấn Phủ M.O.I Baby Skin Powder 10g', 100, 1, NULL, 3, 65)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11105213, N'dhc_2.jpg', CAST(N'2024-08-04' AS Date), 299000, N'Dầu tẩy trang Olive DHC Lấy cảm hứng từ truyền thống làm đẹp của Nhật Bản, DHC Deep Cleansing Oil là sữa rửa mặt và tẩy trang mang lại làn da mềm mại, sạch sẽ và rạng rỡ. Loại dầu tẩy trang có chiết xuất từ dầu ô liu nguyên chất nhẹ nhàng cuốn trôi mọi bã nhờn và tạp chất, đồng thời dễ dàng lấy sạch lớp trang điểm không thấm nước cứng đầu.

Giàu chất chống oxy hóa bảo vệ da, công thức dầu ô liu giúp bảo vệ da khỏi các yếu tố môi trường làm tăng nhanh các dấu hiệu lão hóa.

Công thức 100% từ dầu ô liu hữu cơ hoạt động dựa trên tiền đề “dầu hòa tan dầu” để đánh tan bụi bẩn trên bề mặt da. Đồng thời, dầu ô liu hữu cơ giàu chất chống oxy hóa và vitamin E để hydrat hóa, làm mềm và bảo vệ chống lại tác hại của các gốc tự do.', N'Dầu Tẩy Trang Olive DHC Deep Cleansing Oil', 100, 1, NULL, 20, 16)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11105214, N'dhc_1.jpg', CAST(N'2024-08-04' AS Date), 199000, N'DHC Lip Cream là một loại son dưỡng môi siêu dưỡng ẩm được chiết xuất từ thực vật giúp đôi môi ẩm mịn, làm dịu và bảo vệ đôi môi khỏi những tác động hàng ngày từ môi trường. Dầu ô liu giàu chất chống oxy hóa và lô hội mát dịu giúp giảm bớt tình trạng nứt nẻ của đôi môi.

Son dưỡng môi DHC sử dụng các thành phần tự nhiên và cả dầu Squalane giúp ngăn ngừa kích ứng. Chiết xuất từ rễ nhân sâm tăng cường dưỡng ẩm cho đôi môi mềm mại lâu dài. Sản phẩm cam kết không chì, không phẩm màu, không hương liệu, không paraben và không chứa bất kì các thành phần độc hại nào cho môi.', N'Son Dưỡng Môi Dhc Lip Cream 1.5G', 100, 1, NULL, 10, 16)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11105229, N'apirlskin_cleaning_1.jpg', CAST(N'2024-08-03' AS Date), 350000, N'Thiết kế đầu cọ là các sợi lông mịn siêu nhỏ, mỏng hơn tóc giúp làm sạch sâu và giảm kích ứng da
Đầu cọ mặt trước hỗ trợ loại bỏ bụi bẩn trong lỗ chân lông, cọ silicon (mặt sau, màu vàng) loại bỏ tế bào chết, chất nhờn lâu ngày ở các vùng trán, cằm, mũi...
Các sợi lông có liên kết chặt chẽ của 19 lỗ giúp tạo nhiều bọt hơn cho sữa rửa mặt
Đặc biệt thích hợp cho những người muốn rửa sạch lớp make-up mà không bị kích ứng da
Hướng dẫn sử dụng
Làm ướt mặt, lấy sữa rửa mặt tạo bọt và massage nhẹ nhàng lên mặt. Sau đó dùng cây cọ chà xát nhẹ khắp mặt để làm sạch sâu. Cuối cùng rửa mặt lại với nước.', N'Cọ Rửa Mặt Aprilskin Real Cleaning Pore Brush (1Ea)', 100, 1, NULL, 38, 5)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11105461, N'Ohui_UltimateBrighteningLavender_1.jpg', CAST(N'2024-06-30' AS Date), 1000000, N'Kết cấu dạng sữa màu tím như sắc của hoa oải hương
Phân tử sản phẩm chứa anion (ion âm) giúp tối đa hóa khả năng dàn trải trên bề mặt, tạo lớp nền mịn bám lâu
Kem lót có thể trung hòa sắc vàng trên da, cải thiện da xỉn màu, sạm nám trở nên đều màu hơn
Hiệu quả nâng tông tự nhiên, kết hợp khả năng dưỡng ẩm nhẹ nhàng cho làn da mỏng mịn
Chỉ số SPF20+ PA++ hỗ trợ bảo vệ da an toàn, dịu nhẹ trước ánh nắng', N'Kem Lót Nâng Tông Sáng Da Ohui Ultimate Brightening Lavender Primer 45Ml', 100, 1, NULL, 5, 73)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11105658, N'jmsolution_1.jpg', CAST(N'2024-08-05' AS Date), 200000, N'JMsolution Prime Gold là dòng sản phẩm chống lão hóa dưỡng sáng da, đồng thời cải thiện nếp nhăn sâu với công thức tinh túy từ vàng 24k và phức hợp vitamin giúp mang lại nguồn năng lượng dồi dào cho làn da.', N'Mặt Nạ Dưỡng Vùng Mắt Săn Chắc Jmsolution Prime Gold Eye Patch 90G', 100, 1, NULL, 25, 48)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11105883, N'ck_1.jpg', CAST(N'2024-08-03' AS Date), 2580000, N'Nước hoa thuộc nhóm Citrus (hương cam chanh) tươi mát sảng khoái dành cho cả nam giới lẫn nữ giới. Là sự kết hợp hài hòa của các nốt hương chua thanh mát của quýt, cam bưởi khó cưỡng cùng hương ngọt ngào của hoa nhài, huệ. Hương cuối tạo cảm giác vương vấn với nốt hương tinh tế của xạ hương cùng cảm giác trầm ấm khó tả từ hổ phách.', N'Nước Hoa Unisex Calvin Klein Ck All Eau De Toilette', 100, 1, NULL, 43, 11)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11105983, N'balance_active_1.jpg', CAST(N'2024-08-03' AS Date), 280000, N'Tinh Chất Balance Active Formula Niacinamide 15% Blemish Recovery Serum là sản phẩm serum mới ra mắt từ thương hiệu Balance Active Formula, với dạng lỏng nhẹ như nước và nồng độ 15% Niacinamide - một loại Vitamin B3 tự nhiên giúp giảm dầu thừa, giúp lỗ chân lông được thu nhỏ lại. Đồng thời, làm giảm các nhược điểm trên da và làm mờ vết thâm, giúp cải thiện kết cấu da và khuyến khích làn da khỏe mạnh.', N'Serum Dưỡng Da Kháng Mụn Balance Active Formula Niacinamide Blemish Recovery 15% Serum 30Ml', 100, 1, NULL, 17, 6)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11106113, N'garnier_1.jpg', CAST(N'2024-08-05' AS Date), 39000, N'Công dụng chính: mặt nạ tinh chất Garnier serum mask được chiết xuất từ những thành phần thiên nhiên giúp chăm sóc và cải thiện tối ưu những tình trạng mà da gặp phải.

Thành phần: vitamin C, salicylic acid, niacinamide, hyaluronic acid, trà xanh, than tre…', N'Mặt Nạ Tinh Chất Garnier Serum Mask 23G', 100, 1, NULL, 25, 35)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11106122, N'garnier_4.jpg', CAST(N'2024-08-05' AS Date), 219000, N'Ưu điểm nổi bật

Phân tử Micelles lấy sạch bụi bẩn sâu bên trong lỗ chân lông mà không cần chà xát
Thành phần không chứa cồn, không gây kích ứng da
Làm sạch hiệu quả kể cả lớp trang điểm chống thấm nước waterproof
Kết cấu không nhờn, không bết dính, phù hợp với mọi loại da
Thành phần

Dầu Argan có tác dụng dưỡng ẩm da, để lại làn da mềm mịn sau khi tẩy trang
Công nghệ Micellar siêu phân tử làm sạch hoàn toàn cặn trang điểm, bụi bẩn (bụi mịn PM2.5) theo cơ chế lực hút nam châm', N'Nước Tẩy Trang Làm Sạch Sâu Garnier Oil Infused Cleansing Water', 100, 1, NULL, 20, 35)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11106186, N'frudia_1.jpg', CAST(N'2024-08-04' AS Date), 72000, N'Công dụng chính: Kem Dưỡng Tay Frudia My Orchard chiết xuất từ trái cây hương thơm ngọt ngào có lớp siêu giữ ẩm chứa giàu dưỡng chất làm mềm mịn da tay

Thành Phần: chiết xuất từ trái cây

Làn da sử dụng: mọi làn da', N'Kem Dưỡng Da Tay Frudia My Orchard 30G', 100, 1, NULL, 32, 28)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11106200, N'frudia_3.jpg', CAST(N'2024-08-04' AS Date), 100000, N'
Công dụng chính: Dưỡng Ẩm Môi Frudia Blueberry Hydrating Honey Lip Balm Mật Ong Việt Quất giúp nuôi dưỡng đôi môi căng mọng, sắc môi hồng hào, sáng khỏe

Thành phần: mật ong, việt quất, collagen', N'Dưỡng Ẩm Môi Mật Ong Việt Quất Frudia Blueberry Hydrating Honey Lip Balm 10Ml', 100, 1, NULL, 10, 28)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11106219, N'frudia_2.jpg', CAST(N'2024-08-04' AS Date), 198000, N'Công dụng chính: kem dưỡng da tay Frudia Re:Proust Essential Blending Hand Cream thuần chay thân thiện với môi trường giúp dưỡng ẩm cực tốt cho đôi bàn tay mềm mại, mịn màng.

Thành phần: bơ hạt mỡ, dầu đàn hương, dầu mandarin, dầu phong lữ,…', N'Kem Dưỡng Da Tay Frudia Re:Proust Essential Blending Hand Cream 50G', 100, 1, NULL, 32, 28)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11106452, N'evian_1.jpg', CAST(N'2024-08-04' AS Date), 145000, N'Với khả năng làm dịu và cấp ẩm hiệu quả, xịt khoáng evian® chắc chắn là người bạn đồng hành lý tưởng cho mọi loại da, kể cả làn da nhạy cảm. Nguồn nước khoáng tự nhiên và hoàn toàn tinh khiết sẽ giúp cân bằng độ ẩm, đặc biệt thích hợp trong những ngày thời tiết đỏng đảnh hay khi làn da bạn đang cần một chút "mát lạnh" nhẹ nhàng.

Xịt khoáng evian® mang theo nguồn nước khoáng thiên nhiên tinh khiết ôm lấy làn da, giúp làn da thêm ẩm mượt rạng ngời.', N'Xịt Khoáng Cấp Ẩm, Làm Dịu Da Evian Brumisateur Natural Mineral Water Facial Spray', 100, 1, NULL, 18, 25)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11106666, N'anessa_serum_1.jpg', CAST(N'2024-08-03' AS Date), 850000, N'Công dụng chính: ANESSA DAY SERUM Dưỡng da chống nắng dạng serum giúp ngăn ngừa các dấu hiệu lão hóa da do tia UV, bảo vệ da trước tác hại của bụi mịn và các tác nhân gây hại từ môi trường bên ngoài ngay cả khi da tiếp xúc với nước và mồ hôi. Đồng thời giúp dưỡng da, dưỡng ẩm và nâng tông màu da cho làn da đều màu, căng bóng và ẩm mịn. Có thể dùng làm kem lót trang điểm tạo hiệu ứng nâng tông cho sắc da hồng rạng rỡ. Dễ dàng làm sạch với sữa rửa mặt.
Đối tượng sử dụng: Phù hợp với mọi loại da, đặc biệt là da đang xuất hiện các dấu hiệu lão hóa.Công dụng chính: ANESSA DAY SERUM Dưỡng da chống nắng dạng serum giúp ngăn ngừa các dấu hiệu lão hóa da do tia UV, bảo vệ da trước tác hại của bụi mịn và các tác nhân gây hại từ môi trường bên ngoài ngay cả khi da tiếp xúc với nước và mồ hôi. Đồng thời giúp dưỡng da, dưỡng ẩm và nâng tông màu da cho làn da đều màu, căng bóng và ẩm mịn. Có thể dùng làm kem lót trang điểm tạo hiệu ứng nâng tông cho sắc da hồng rạng rỡ. Dễ dàng làm sạch với sữa rửa mặt.
Đối tượng sử dụng: Phù hợp với mọi loại da, đặc biệt là da đang xuất hiện các dấu hiệu lão hóa.', N'Serum Chống Nắng Anessa Dưỡng Da Nâng Tông Day Serum Spf50+ Pa++++ 30Ml', 100, 1, NULL, 17, 4)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11106819, N'ahc_youth_1.jpg', CAST(N'2024-08-03' AS Date), 912000, N'Nằm trong dòng chống lão hóa da AHC Youth Focus, nước cân bằng được xem là bước đầu khai mở cho làn da, loại bỏ các rào cản làm tăng hiệu quả hấp thụ của da ở các bước dưỡng sau đó. AHC Youth Focus Toner sở hữu công thức dưỡng da nhẹ giúp thúc đẩy kết cấu da đồng nhất, làm mềm mịn và tươi trẻ làn da.
Toner cấp nước tức thì, cải thiện lại hàng rào ẩm cho da giúp sửa chữa tình trạng da khô, thô sần, tối sạm trở nên mịn màng, tươi tắn hơn. Làn da của bạn sẽ cảm giác sạch sẽ, tươi mát và sẵn sàng cho bước chăm sóc tiếp theo. Thành phần retinal sẽ giúp làm tăng sinh collagen cho da, cải thiện sự gồ ghề, nếp gấp trên bề mặt da đồng thời hỗ trợ chống oxy hóa, ngăn ngừa mụn xuất hiện.Nằm trong dòng chống lão hóa da AHC Youth Focus, nước cân bằng được xem là bước đầu khai mở cho làn da, loại bỏ các rào cản làm tăng hiệu quả hấp thụ của da ở các bước dưỡng sau đó. AHC Youth Focus Toner sở hữu công thức dưỡng da nhẹ giúp thúc đẩy kết cấu da đồng nhất, làm mềm mịn và tươi trẻ làn da.
Toner cấp nước tức thì, cải thiện lại hàng rào ẩm cho da giúp sửa chữa tình trạng da khô, thô sần, tối sạm trở nên mịn màng, tươi tắn hơn. Làn da của bạn sẽ cảm giác sạch sẽ, tươi mát và sẵn sàng cho bước chăm sóc tiếp theo. Thành phần retinal sẽ giúp làm tăng sinh collagen cho da, cải thiện sự gồ ghề, nếp gấp trên bề mặt da đồng thời hỗ trợ chống oxy hóa, ngăn ngừa mụn xuất hiện.', N'Nước Cân Bằng Làm Trẻ Hóa Da AHC Youth Focus Toner 130Ml', 100, 1, NULL, 27, 1)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11106912, N'DearDahila_VelvetSettingPowder_1.jpg', CAST(N'2024-06-28' AS Date), 999000, N'Điểm nổi bật của phấn phủ Skin Paradise Soft Velvet Setting Powder Compact
Phấn phủ khoáng có kết cấu hạt phấn nhỏ, nhẹ và mịn tạo cảm giác thoải mái cho làn da và giúp duy trì lớp nền ráo mịn và hoàn hảo suốt cả ngày
Hiệu ứng làm mờ giúp che phủ nếp nhăn, nếp gấp trên da hoàn hảo cùng với đó là các khuyết điểm khác cũng được che phủ nhẹ nhàng
Dear Dahlia Skin Paradise Soft Velvet Setting Powder có khả năng làm da mịn màng mà không hề gây khô da
 Hạt phấn bền màu trên da cả ngày dài, giúp lớp trang điểm tươi tắn và mượt mà, không bị xỉn màu', N'Set Phấn Phủ Trang Điểm Dear Dahlia Skin Paradise Soft Velvet Setting Powder Compact 12G', 100, 1, NULL, 3, 18)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11106928, N'jomi_1.jpg', CAST(N'2024-08-06' AS Date), 40000, N'Bông Tẩy Trang Jomi được làm từ 100% cotton tự nhiên nên sẽ mang lại cảm giác mềm mịn, nhẹ nhàng. Sản phẩm không sử dụng Neodymium và Chromium trong thành phần cấu tạo

Sản phẩm được thiết kế với cấu trúc vi xốp, siêu thấm, siêu mịn, có khả năng thấm hút gấp nhiều lần so với bông tẩy trang truyền thống. Điều này sẽ đáp ứng được nhu cầu làm đẹp đa dạng của phái đẹp

Chức năng - Công dụng
+ Làm sạch nhẹ nhàng da mặt và dưỡng da cùng nước hoa hồng - toner.
+ Có thể thay thế giấy thấm dầu.
+ Dùng với dung dịch tẩy trang cho hiệu quả làm sạch vượt trội.

Hướng dẫn sử dụng Bông Tẩy Trang Jomi Cotton Pads
Cách 1: Khi dưỡng da: Tẩm nước hoa hồng lên miếng bông rồi sử dụng.
Cách 2: Thấm dung dịch tẩy trang lên bông, sau đó dùng bông lau những vùng da cần tẩy trang.', N'Bông Tẩy Trang Jomi Cotton Pads 120 Miếng', 100, 1, NULL, 34, 50)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11107074, N'hada_2.jpg', CAST(N'2024-08-05' AS Date), 226000, N'Thành phần nổi bật
Hyaluronic acid lên men: cấp ẩm sâu đến lớp biểu bì của tế bào, giúp củng cố màng ẩm tự nhiên và bảo vệ da khỏe đẹp. Thành phần này được lấy cảm hứng từ quy trình lên men rượu Sake 600 năm của Nhật Bản

Công dụng chính
Dầu tẩy trang Hada Labo làm sạch sâu bụi bẩn ô nhiễm, kem chống nắng, lớp trang điểm, kể cả son lì, mascara chống nước
Làm sạch mà không gây khô da nhờ khả năng cấp ẩm với thành phần hyaluronic acid
Dưỡng da ẩm mịn, sáng khỏe sau khi tẩy trangne
Đã kiểm nghiệm dịu nhẹ, an toàn cho da', N'Dầu Tẩy Trang Cấp Ẩm Hada Labo Advanced Nourish Hyaluronic Acid Cleansing Oil 200Ml', 100, 1, NULL, 20, 36)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11107075, N'hada_1.jpg', CAST(N'2024-08-05' AS Date), 79000, N'Kem rửa mặt Hada Labo vừa làm sạch sâu với công nghệ Amino acid vừa giúp làn da sáng trắng với thành phần arbutin cùng hyaluronic, mang lại làn da khỏe khoắn sáng mượt.

Thành phần nổi bật
Arbutin: có tác dụng ức chế tích tụ melanin giúp làm sáng da, mờ các vùng da sạm nám
Hỗn hợp vitamin C & E: chống oxy hóa, làm sáng đều màu da
Hyaluronic acid: tăng cường độ ẩm, dưỡng da trong mướt
Công dụng chính
Công nghệ Amino acid giúp làm sạch bụi bẩn, bã nhờn ẩn sâu trong lỗ chân lông
Loại bỏ lớp tế bào chết
Kem rửa mặt hỗ trợ cấp ẩm làm mềm mại da trong suốt quá trình rửa
Góp phần ngăn ngừa sự phát triển của melanin gây sạm da, dưỡng da trắng sáng', N'Kem Rửa Mặt Làm Sáng Da Hada Labo Perfect White Arbutin Cleanser 80G', 100, 1, NULL, 19, 36)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11107083, N'hada_3.jpg', CAST(N'2024-08-05' AS Date), 322000, N'Loại da sử dụng tốt nhất: Da lão hóa - nếp nhăn, da kém săn chắc, chảy xệ.
Pro Anti Aging Α Lifting là dòng chống lão hóa da nổi bật của thương hiệu Hada Labo, ứng dụng công nghệ Nhật Bản tiên tiến và thành phần độc quyền có khả năng nâng cơ da mặt, cải thiện & ngăn ngừa nếp nhăn hiệu quả.

Thành phần nổi bật
Retinol: thành phần có thể tái tạo da mới, làm mềm lớp sừng và loại bỏ da chết giúp da sáng đều màu và cải thiện thâm nám hiệu quả
Dầu hạt hướng dương & Đậu nành: hỗ trợ chống oxy hóa, bảo vệ da khỏi tác động của gốc tự do gây nếp nhăn
Hệ Hyaluronic acid Nhật Bản: giúp cấp khóa ẩm sâu tại các lớp biểu bì, tăng cường hàng rào bảo vệ da
Công nghệ Elastin Lift chứa elastin & collagen cùng 3D HA giúp chống oxy hóa mạnh mẽ, tăng độ đàn hồi da, giảm & ngăn ngừa nếp nhăn
Công dụng chính
Tinh chất với công nghệ độc quyền Nhật Bản giúp tạo mạng lưới nâng cơ, làm mịn các nếp nhăn hiệu quả
Tăng cường khả năng chống oxy hóa, ngăn ngừa các dấu hiệu lão hóa xuất hiện
Cấp ẩm sâu đến các lớp biểu bì giúp cải thiện tình trạng da khô thiếu nước, sạm màu
Làm đều màu da, nuôi dưỡng da săn chắc mượt mà hơn', N'Tinh Chất Chống Lão Hóa Da Hada Labo Pro Anti Aging Α Lifting Essence 30G', 100, 1, NULL, 17, 36)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11107084, N'hada_4.jpg', CAST(N'2024-08-05' AS Date), 80000, N'Kem rửa mặt Hada Labo có tác dụng làm sạch sâu một cách dịu nhẹ, kháng khuẩn làm dịu vùng da mụn đồng thời kiểm soát nhờn, ngăn ngừa mụn phát triển. Sản phẩm thích hợp cho làn da mụn nhạy cảm.

Công dụng chính
Làm sạch sâu bụi bẩn, bã nhờn, tế bào chết trên da
Kháng khuẩn, giảm mụn hiệu quả, bảo vệ da trước tác nhân gây mụn
Có thể làm giảm sắc đỏ trên da, làm dịu và giảm kích ứng
Thành phần Tranexamic acid giúp kiểm soát dầu thừa, ngăn ngừa mụn phát triển, làm nhỏ và mờ đi vết mụn
Đã kiểm nghiệm dịu nhẹ, an toàn cho da
Hướng dẫn sử dụng
Lấy kem rửa mặt ra tay ướt, chà xát để tạo bọt sau đó massage nhẹ nhàng lên mặt. Kết thúc bằng cách rửa sạch mặt lại với nước', N'Kem Rửa Mặt Ngừa Mụn Hada Labo Acne Care Calming Cleanser 80G', 100, 1, NULL, 19, 36)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11107111, N'flawsome_1.jpg', CAST(N'2024-08-05' AS Date), 180000, N'Thành phần tự nhiên
Collagen tăng độ đàn hồi cho đôi môi căng mọng.
Hỗn hợp 9 loại Berries từ tự nhiên dưỡng ẩm chuyên sâu và chống oxy hóa.
Điểm nổi bật của son môi
Son thỏi trang điểm với chất kem mềm, ẩm mịn, lâu phai
Có khả năng giữ màu lâu trên môi, mà môi luôn ẩm mịn không bị khô
Son môi siêu dưỡng ẩm, ngăn ngừa môi mất nước
Bổ sung dưỡng chất, collagen cho hiệu ứng môi căng mọng hơn
Mỗi một màu son đều có mùi hương ngọt nào', N'Son Môi Flawsome Creamy Lip Stain 2G Color: Sunday Morning', 100, 1, NULL, 9, 29)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11107143, N'biore_remover_1.jpg', CAST(N'2024-08-03' AS Date), 59000, N'Công dụng chính: sữa rửa mặt tẩy trang 3 in 1 dịu nhẹ với lớp bọt siêu mịn giúp nhẹ nhàng làm sạch da mà không gây khô da. Đồng thời, tăng cường khả năng dưỡng ẩm tối ưu cho làn da.

Thành phần: chiết xuất sữa ong chúa, Sodium Hyaluronate,...

Loại da phù hợp: mọi loại da kể cả da nhạy cảm', N'Sữa Tẩy Trang Rửa Mặt 3 Trong 1 Bioré Make Up Remover 3 In 1 Face Wash 100G', 100, 1, NULL, 19, 9)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11107153, N'biore_serum_1.jpg', CAST(N'2024-08-03' AS Date), 216000, N'Công dụng chính: Bảo vệ làn da toàn diện tránh khỏi tia nắng gay gắt, bụi mịn, ánh sáng xanh và hỗ trợ dưỡng sáng da toàn thân hiệu quả.

Thành phần chính: Chiết xuất cam Yuzu.

Loại da phù hợp: Mọi loại da, kể cả da nhạy cảm.

Bioré UV Anti-Pollution Body Care Serum Intensive Aura Kissing đến từ Nhật Bản. Được sản xuất với công nghệ Anti-Polltion và Moisture Pack hỗ trợ dưỡng ẩm, tạo màng chắn bảo vệ da khỏi ánh nắng trực tiếp. Đặc biệt bảng thành phần từ cam Yuzu chứa lượng vitamin C lớn giúp làm sáng da, cải thiện vùng da không đều màu như đầu gối, khuỷu tay…

Thành phần chính
- Chiết xuất cam Yuzu: Chứa lượng vitamin C lớn có khả năng làm sáng da, làm mờ thâm nám, đốm nâu mang lại làn da sáng khỏe, đều màu. Đặc biệt là chống lão hóa, cải thiện nếp nhăn, khô da hiệu quả.

- Vitamin E: Làm mịn da, giảm thiểu bong tróc, khô sần và hồi phục da bị tổn thương do cháy nắng hoặc chịu động của các yếu tố khác.

- Hyaluronic Acid: Bổ sung ẩm, thúc đẩy quá trình lưu thông máu giúp da sáng hồng rạng rỡ.

Ưu điểm nổi bật
- Chỉ số chống nắng cao SPF 50+ PA+++, tạo hàng rào chắn bảo vệ da khỏi ánh nắng, khói bụi…

- Có khả năng chống nước siêu việt giữ lớp kem không trôi suốt nhiều giờ liền.

- Bổ sung độ ẩm, hỗ trợ làm sáng da.

- Kết cấu kem mỏng nhẹ thấm nhanh trên da, không gây nhờn rít, bết dính.

- Có mùi hương dịu nhẹ, giúp thư giãn sau một ngày làm việc mệt mỏi.

Hướng dẫn sử dụng

Làm sạch da, cho một lượng kem chống nắng vừa đủ thoa lên toàn bộ cơ thể.

Sử dụng 15-20 phút trước khi ra ngoài.', N'Serum Chống Nắng Dưỡng Thể Kháng Bụi Bioré Uv Anti Pollution Body Serum 150Ml', 100, 1, NULL, 17, 9)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11107161, N'biore_taytrang_1.jpg', CAST(N'2024-08-03' AS Date), 29000, N'Công dụng chính: Khăn giấy tẩy trang Biore là sản phẩm tiện dụng giúp lau sạch lớp trang điểm bụi bẩn nhanh chóng. Đồng thời, dưỡng ẩm nhẹ dịu, cung cấp nước cho da luôn mịn màng, tươi tắn.

Thành phần: Tocopherol

Loại da sử dụng: da thường, da khô', N'Giấy Tẩy Trang Dưỡng Ẩm Bioré Cleansing Cotton Rich Moisture', 100, 1, NULL, 34, 9)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11107269, N'gota_1.jpg', CAST(N'2024-08-05' AS Date), 277000, N'Gota là một thương hiệu nước hoa dành cho những bạn nam trẻ trung, năng động, đầy cá tính và hiện đại. Dòng nước hoa Gota bao gồm 4 mùi hương dành cho các chàng trai trẻ, mỗi mùi hương là mỗi cá tính và phong cách khác nhau', N'Nước Hoa Nam Gota Perfumed For Men 50Ml', 100, 1, NULL, 43, 34)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11107584, N'cathdoll_brow.jpg', CAST(N'2024-08-03' AS Date), 99000, N'Ưu điểm

- Đầu chì kẻ siêu nhỏ 1.55mm, cho đường vẽ sắc nét đến từng sợi 

- Độ bền màu cao, có khả năng chống nước, chống mồ hôi, không lem trôi suốt cả ngày

- Kết cấu chì kẻ chất lượng, siêu dễ vẽ với màu mực đậm cho hàng chân mày sắc nét

- Không lem, trôi, bền màu cả ngày (Chì kẻ có đầu cọ chải mày đi kèm)', N'Chì Kẻ Mày Siêu Mảnh Cathy Doll Skinny Brow Pencil 0.05G Color:01', 100, 1, NULL, 14, 12)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11107601, N'CathyDollSpeedWhite_1.jpg', CAST(N'2024-06-23' AS Date), 300000, N'Kem Nền Cathy Doll Speed White CC Cream SPF50+ PA+++ mang đến lớp nền trang điểm hoàn hảo, mềm mịn và tự nhiên. Đồng thời, công thức mới bổ sung khoáng chất, tăng cường độ ẩm cho da, che khuyết điểm nhanh chóng, kiềm dầu suốt 12 tiếng.', N'Kem Nền Cc Trắng Da Cathy Doll Speed White Cc Cream Spf50+ Pa+++ 50G', 100, 1, NULL, 2, 12)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11107616, N'cathdoll_facewash.jpg', CAST(N'2024-08-03' AS Date), 89000, N'g dụng: sữa rửa mặt dưỡng da trắng da Cathy Doll tạo bọt siêu mịn làm sạch sâu, cuốn trôi cặn trang điểm, bã nhờn và bụi bẩn. Sản phẩm giàu vitamin C giúp dưỡng da dần trắng sáng, tươi tắn rạng rỡ.

Thành phần chính: chiết xuất từ trái cây họ Berry như mâm xôi, việt quất,...,dịch ốc sên

Ưu điểm 

- Cuốn trôi mọi bụi bẩn, làm sạch sâu cặn trang điểm, bã nhờn sâu trong lỗ chân lông

- Làm đều màu da, cải thiện làn da xỉn màu dần trở nên tươi sáng  

- Tái tạo da hiệu quả, tẩy tế bào da chết, giảm thâm nám, giúp da ẩm mượt, khỏe mạnh.

Thành phần 

- Chiết xuất từ trái cây họ Berry giàu vitamin C giúp cải thiện da sáng hơn, giảm xỉn màu

- Chiết xuất dịch ốc sên giảm thâm nám, tẩy da chết và dưỡng ẩm da

- Chiết xuất men Alteromonas Ferment Extract có tác dụng chống ô nhiễm bảo vệ da khỏi tác động từ môi trường bên ngoài

Hướng dẫn sử dụng

Lấy một lượng bọt Cushion ra lòng bàn tay 

Tạo bọt mịn với một ít nước & thoa đều lên da, massage nhẹ nhàng trên da rồi rửa lại với nước', N'Sữa Rửa Mặt Tạo Bọt Trắng Da Cathy Doll White Cushion Facial Foam Cleanser 120Ml', 100, 1, NULL, 19, 12)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11107901, N'blackrouge_air_a09sweetcinamon.jpg', CAST(N'2024-08-03' AS Date), 298000, N'Tiếp nối dòng son Black Rouge Air Fit Velvet Tint với chất son lì mềm nhẹ như không, thì với phiên bản Version 2 - Air Fit Velvet Tint Mood Filter với cải tiến mới không chỉ về chất son, độ bền màu mà còn mang đến các tông màu mới thời thượng hơn.

Black Rouge Air Fit Velvet Tint VER.2 Mood Filter vẫn có thiết kế đặc trưng sang trọng của hãng, thân son được thiết kế hình vuông trụ, nắp son màu tím huyền ảo, thân son bằng nhựa bóng mờ để lộ màu son bên trong, logo được in cực kì tinh tế trên thân son.

Thân son mang cho mình chiếc áo màu tím nhạt khá mềm mại và không kém phần sang trọng, rất phù hợp cho cảm giác thu đang dần chuyển sang đông với một chút ấm áp vào cuối mùa lạnh.

Đầu cọ được thiết kế hỗ trợ việc viền môi được dễ dàng hơn cũng như tối ưu lượng son mỗi lần lấy ra để sử dụng.

Chất son vô cùng mềm, mướt, mịn khi lên môi, độ bền màu cao, không gây cảm giác khó chịu nứt nẻ cho môi nhưng vẫn đủ độ lì tạo nên một bờ môi căng mọng đầy quyến rũ. Màu son lên môi cực chuẩn, kháng nước vượt trội, khả năng bám màu lên đến 8 giờ đồng hồ, che phủ mọi khuyết điểm trên môi.', N'Son Kem Lì Black Rouge Air Fit Velvet Tint (4.5G) Color: A09 sweet cinamon', 100, 1, NULL, 9, 7)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11108072, N'Vacosi_NaturalStudio_1.jpg', CAST(N'2024-06-28' AS Date), 215000, N'Công dụng chính: Che phủ hoàn hảo toàn bộ lớp makeup, kiểm soát dầu mang lại phần trang điểm nổi bật với làn da mịn màng, căng bóng.
Ưu điểm nổi bật
Bảo vệ lớp nền trang điểm, không gây bóng dầu.
Công nghệ sản xuất hạt phấn siêu mịn che phủ hoàn hảo, không gây vón cục, bết dính trên da.
Mang lại làn da khô thoáng, giảm thiểu bí tắc lỗ chân lông.
Hỗ trợ làm đều màu da mang lại lớp nền trang điểm mịn màng.
Kiểm soát độ nhờn giúp lớp nền không bị xuống tone, không làm khô da.', N'Phấn Phủ Bột Siêu Mịn Kiềm Dầu Vacosi Natural Studio Loose Powder 10G (Màu 30: Nude Beige)', 100, 1, NULL, 3, 99)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11108148, N'axe_deo_1.jpg', CAST(N'2024-08-03' AS Date), 110000, N'Lấy cảm hứng từ Abercrombie and Fitch, mùi hương nước hoa nam quen thuộc, hương mạnh mẽ, nam tính đó là sự pha trộn giữa sự hiện đại và tính hoài cổ
Tinh dầu xô thơm Clary Sage kết hợp với các loại quả Sparkling fruits trên nốt hương đầu gợi mở cảm giác thanh mát, tự nhiên. 
Hương trái cây hoang dại sang hương cuối trầm ấm và ngọt ngào với gỗ và rêu của thiên nhiên đầy nam tính. ', N'Xịt Ngăn Mùi Toàn Thân Cho Nam Axe Deo Bodyspray 135Ml', 80, 1, NULL, 41, 3)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11108177, N'ellips_3.jpg', CAST(N'2024-08-04' AS Date), 28000, N'Công dụng: Serum Dưỡng Tóc Ellips Hair Vitamin Smooth & Shiny Mềm Mượt Óng Ả tự nhiên chứa hàm lượng dồi dào các dưỡng chất có lợi như Vitamin A,C,E, & Pro Vit B5 cùng tinh dầu Moroccan Oil quý giá, giúp nuôi dưỡng cho mái tóc thật khoẻ mạnh và bóng mượt, hỗ trợ giảm thiểu các tổn thương gây ra do tác động của nhiệt độ cao. ', N'Serum Dưỡng Tóc Mềm Óng Mượt Ellips Hair Vitamin Moroccan Oil Smoooth & Shiny Blister 6Ml (Vỉ 6 Viên)', 100, 1, NULL, 32, 21)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11108180, N'ellips_4.jpg', CAST(N'2024-08-04' AS Date), 212000, N'Công dụng: serum dưỡng tóc Ellips Hair Vitamin with Pro-Keratin Complex Smooth & Silky với phức hợp Keratin và dầu Lô Hội giúp nuôi dưỡng và bổ sung độ ẩm cho mái tóc mềm mại và suôn mượt như lụa, dễ vào nếp, đồng thời được tăng cường thêm độ bóng khoẻ.

Thành phần chính: dầu lô hội, Moroccan oil, vitamin A, C, E & Pro Vit B5 ', N'Vitamin Dưỡng Tóc Óng Mượt Với Lô Hội Ellips Hair Vitamin Moroccan Oil Smoooth & Shiny (Hũ 50 Viên)', 100, 1, NULL, 32, 21)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11108182, N'ellips_1.jpg', CAST(N'2024-08-04' AS Date), 13000, N'Công dụng: kem ủ tóc chứa vitamin A,C,E Pro Vit B5 giúp chăm sóc & nuôi dưỡng mái tóc mềm mại. Đồng thời, duy trì độ ẩm cho tóc mà không gây bóng nhờn. Giúp nuôi dưỡng, bảo vệ mái tóc khỏi tình trạng khô xơ, chẻ ngọn và các hư tổn khác do quá trình tạo kiểu tóc với hóa chất như (nhuộm, duỗi, uốn,...) ', N'Kem Ủ Tóc Ellips Vitamin Hair Mask 20G', 100, 1, NULL, 32, 21)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11108187, N'ellips_2.jpg', CAST(N'2024-08-04' AS Date), 12000, N'công dụng: Kem Ủ Tóc Ellips Hair Mask là dòng sản phẩm mặt nạ ủ tóc thuộc thương hiệu chăm sóc tóc Ellips. Công thức sản phẩm chứa các thành phần như vitamin A, C, E và Pro Vitamin B5 giúp cung cấp dưỡng chất cho mái tóc thật sự khỏe mạnh. Ngoài ra, mỗi loại kem ủ tóc còn được thiết kế để phù hợp với các nhu cầu khác nhau của mái tóc.', N'Kem Ủ Tóc Pro-Keratin Ellips Hair Vitamin Hair Mask With Pro-Keratin Complex 18G', 100, 1, NULL, 32, 21)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11108468, N'johnson_1.jpg', CAST(N'2024-08-05' AS Date), 167000, N'Điểm nổi bật của sữa tắm Johnson’s 2in1

- Sữa tắm làm sạch da nhẹ nhàng, làm sạch mồ hôi, bụi bẩn... trên cơ thể

- Chứa thành phần dưỡng ẩm giúp chăm sóc da ẩm mịn cùng độ pH lý tưởng

- Mang lại làn da khỏe khoắn, mịn màng không khô ráp

Hướng dẫn sử dụng

Làm ướt da cơ thể, thoa sữa tắm lên da và massage trong 1-2ph tắm lại với nước sạch', N'Sữa Tắm Johnson’s pH 5.5 Body Wash with Moisturizers 750ml', 100, 1, NULL, 26, 49)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11108807, N'kose_2.jpg', CAST(N'2024-08-06' AS Date), 296000, N'Công dụng: sữa tắm than hoạt tính  Kosé Cosmeport Men''s Softymo Body Soap S dành cho nam giới, giúp loại mọi bụi bẩn, tế bào da chết, khử mùi hôi hiệu quả. Đồng thời, dưỡng ẩm cho làn da luôn mịn màng, mềm mại cùng hương thơm thư giãn dễ chịu.

Thành phần chính: than hoạt tính, glyceryl

Làn da sử dụng: mọi loại da ', N'Sữa Tắm Than Hoạt Tính Kosé Cosmeport Men''s Softymo Body Soap S 550ml', 100, 1, NULL, 26, 53)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11108819, N'kose_1.jpg', CAST(N'2024-08-06' AS Date), 150000, N'Công dụng: sữa rửa mặt Kosé Cosmeport Softymo Cleansing Foam Hyaluronic Acid giúp nhẹ nhàng cuốn trôi các lớp trang điểm, bã nhờn trên da mặt. Đồng thời, làm sạch sâu trong lỗ chân lông, loại bỏ tế bào chết cho da mềm mại, mịn màng.

Thành phần chính: Hyaluronic Acid, Sữa đậu nành lên men, các chiết xuất thực vật

Làn da sử dụng: mọi loại da', N'Sữa Rửa Mặt Tẩy Trang Dưỡng Ẩm Kosé Cosmeport Softymo Cleansing Foam Hyaluronic Acid 190g', 100, 1, NULL, 19, 53)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11108843, N'fino_1.jpg', CAST(N'2024-08-04' AS Date), 167000, N'Thành phần dưỡng tóc
- Sữa ong chúa: Sữa ong chúa: là nguyên liệu thiên nhiên cao cấp chứa nhiều chất chống oxy hóa và amino acids, vitamin B, A, C... cùng khoáng chất giúp giữ ẩm da đầu, cung cấp dưỡng chất nuôi mái tóc mềm mại, suôn mượt và giảm gãy rụng

- Trehalose & Dầu thực vật: cấp dưỡng ẩm chăm sóc tóc vào nếp, giảm gãy rụng, giảm chẻ ngọn

- Glutamic acid: thành phần giúp giữ màu tóc nhuộm bền màu

- Squalane & PCA (acid amin): bổ sung nguồn dưỡng chất cho mái tóc, làm mềm mượt và tóc bóng khỏe', N'Kem Ủ Tóc Cao Cấp Fino Premium Touch 230g', 100, 1, NULL, 32, 27)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11108844, N'garnier_3.jpg', CAST(N'2024-08-05' AS Date), 119000, N'Công dụng sữa rửa mặt Bright Complete Anti-Acne 2%
- Làm sạch an toàn bụi bẩn, da chết và dầu thừa trên da

- Ngăn ngừa vi khuẩn gây mụn đến 99.9%

- Cải thiện và ngừa mụn hiệu quả

- Kiểm soát dầu, làm giảm tình trạng da bóng nhờn

- Chứa vitamin C giúp làm giảm đốm nâu, vết thâm mụn góp phần làm sáng da

- Đặc biệt thích hợp cho da dầu mụn', N'Sữa Rửa Mặt Ngừa Mụn, Sáng Da Garnier Bright Complete Anti-Acne 2% Cleansing Foam 100ml', 100, 1, NULL, 19, 35)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11108853, N'deardahila_blooming_1.jpg', CAST(N'2024-08-03' AS Date), 759000, N'Phấn má hồng Paradise Soft Dream Blush sở hữu công thức loang màu độc đáo chỉ trong 1 ô màu, tạo hiệu ứng loang màu nổi bật cùng với màu sắc tự nhiên, tiệp mịn vào da trông rất sắc sảo.

Kết cấu phấn má hồng Dear Dahlia mềm mại của phấn mắt cho phép sự pha trộn trở nên mịn màng và hoàn hảo trên da. Với chiết xuất từ ​​hoa Dahlia Variabilis (hoa thược dược đã được cấp bằng sáng chế của Dear Dahlia) công thức siêu dưỡng ẩm và làm khỏe đẹp làn da giúp Paradise Jelly Single Eyeshadow an toàn khi sử dụng trên vùng da nhạy cảm.
Điểm nổi bật của má hồng Dear Dahlia
Màu má hồng được lấy cảm hứng từ những khoảnh khắc nở rộ của hoa Dahlia, với 2 cấp độ màu trong cùng 1 phấn mắt tạo sắc độ sáng – mờ đặc biệt xinh xắn, hiện đại
Bột phấn với các hạt mịn tạo hiệu ứng má mờ đơn giản hơn, sạch hơn và sáng hơn
Phấn má hồng Paradise Soft Dream Blush là sự kết hợp với hai tông màu (đậm – nhạt) cho độ loang màu đẹp mắt
Được chiết xuất từ ​​hoa Dahlia Variabilis, có đặc tính dưỡng da đã được chứng minh là giúp bảo vệ da và mang lại lợi ích lâu dài để thúc đẩy làn da trông khỏe mạnh.', N'Phấn Má Hồng Dear Dahlia Blooming Edition Paradise Soft Dream Blush 5g', 100, 1, NULL, 6, 18)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11108907, N'emmie_4.jpg', CAST(N'2024-08-04' AS Date), 59000, N'Công dụng mặt nạ B5 Skin Relief Hydrating Bio Cellulose
- Chứa thành phần dưỡng vitamin B5 cùng chiết xuất rau má giúp cấp dưỡng ẩm sâu, phục hồi da căng thẳng

- Giải quyết các vấn đề da nhạy cảm: làm dịu da châm chích, giảm viêm sưng, giảm sưng đỏ

- Công thức NMF chất sinh học có khả năng cấp nước, giữ nước cho da, xây dựng hàng rào bảo vệ giúp da tăng cường sức đề kháng

- Với chất liệu cải tiến vượt trội Bio-cellulose, một bước đột phá trong việc tạo ra chất liệu mới, giúp mặt nạ ôm sát hoàn toàn vào da, tăng cường và tối đa hóa hiệu quả chăm sóc da.', N'Mặt Nạ Sinh Học B5 Phục Hồi Da Emmie Skin Relief Hydrating Bio Cellulose Mask 23', 100, 1, NULL, 23, 22)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109029, N'cathydoll_eyebrow.jpg', CAST(N'2024-08-03' AS Date), 85000, N'ông dụng chính: Hiệu chỉnh đôi chân mày sắc nét, giữ nét chì lâu trôi, chống nước phù hợp với gương mặt tạo lên sự nổi bật, ấn tượng.

Thành phần chính: Chiết xuất hạt ca cao, hạt chia.

Ưu điểm nổi bật
- Vẽ chân mày đậm, rõ nét phù hợp với gương mặt.

- Chì kẻ mềm mịn, lâu trôi, chống nước và không gây vón cục.

- Kết hợp với các thành phần hạt chia, cacao giúp bổ sung dưỡng chất cho chân mày khỏe mạnh.

- Giảm thiểu gãy rụng lông mày và tình trạng khô bong tróc trên da.', N'Chì Kẻ Mày 2 Màu Cathy Doll 2-Tone Eyebrow Pencil Color: 01', 100, 1, NULL, 14, 12)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109032, N'cathdoll_masscara.jpg', CAST(N'2024-08-03' AS Date), 149000, N'Ưu điểm nổi bật

- Được sản xuất bởi công nghệ tạo sợi siêu mảnh giúp chuốt lông mi cong vuốt, dày và dài như ý.

- Mascara chống nước, lâu trôi giữ nếp cho mi cong tự nhiên suốt nhiều giờ liền.

- Bổ sung dưỡng chất giúp mi chắc khỏe, giảm gãy rụng.

- Thiết đầu cọ dáng cong dễ dàng thao tác chuốt mi, phù hợp với những người mới tập tành trang điểm.', N'Mascara Chuốt Cong Mi Cathy Doll Less Is More Mascara 8g', 100, 1, NULL, 13, 12)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109035, N'CathyDoll_CoverMatte_1.jpg', CAST(N'2024-06-29' AS Date), 87000, N'Thành phần chính
Vitamin E: Làm chậm quá trình lão hóa, cải thiện vùng da bị xỉn màu, giảm thâm mụn, làm mờ sẹo hiệu quả.
Hyaluronic Axit: Làm đầy nếp nhăn, bổ sung độ ẩm cần thiết giúp da săn chắc, đàn hồi.
Salicylic Axit: Hỗ trợ tẩy da chết nhẹ nhàng, loại bỏ bụi bẩn, tạp chất giúp lỗ chân lông thông thoáng, giảm thiểu mụn và vi khuẩn gây mụn.
Ưu điểm nổi bật
Che khuyết điểm, đốm nâu, quầng thâm và thâm mụn hiệu quả.
Cải thiện vùng da không đều màu, tạo hiệu ứng mịn màng, căng mịn.
Có khả năng chống nước, lâu trôi và giữ cho lớp nền ổn định.
Kết cấu kem mỏng nhẹ, dễ tán, tệp nhanh vào da không gây vón cục hay vệt trắng.
Cấp ẩm cần thiết giúp da căng bóng, giảm thiểu tình trạng khô sần, bong tróc.
Ngăn ngừa tình trạng mụn, bảo vệ da khỏi các tác nhân gây hại từ môi trường.', N'Kem Che Khuyết Điểm Lì Mịn Cathy Doll Cover Matte Concealer 2.4g', 100, 1, NULL, 4, 12)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109169, N'cocoon_2.jpg', CAST(N'2024-08-03' AS Date), 265000, N'Thành phần dưỡng trong Cocoon Pomelo shampoo
- Tinh dầu bưởi: chứa hàm lượng limonene rất cao giúp ức chế mạnh mẽ enzyme 5-alpha reductase gây ra tình trạng rụng tóc, có tính kháng khuẩn cao giúp hạn chế tình trạng gàu.

- Vitamin B5: Cấp ẩm, ngừa tóc hư tổn, dưỡng tóc bóng khỏe hơn

- Xylishine: hoạt chất có khả năng cấp ẩm, tăng cường độ bóng của tóc

- Axit amin: hỗ trợ nuôi dưỡng tóc mềm mại, chắc khỏe và bóng mượt hơn

Điểm nổi bật của dầu gội bưởi Cocoon
- Dầu gội chứa tinh dầu bưởi đem lại hiệu quả làm sạch  da đầu, sạch dầu & bụi bẩn một cách tự nhiên, an toàn, không làm tổn thương da đầu

- Bổ sung dưỡng chất axit amin tái tạo, nuôi dưỡng tóc chắc khỏe, bóng mượt

- Giảm tình trạng tóc gãy rụng, thúc đẩy tóc mọc đen dày hơn

- Dầu gội bưởi Cocoon không chứa sulfate', N'Dầu Gội Bưởi Cocoon Pomelo Shampoo 310ml', 100, 1, NULL, 30, 13)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109170, N'cocoon_3.jpg', CAST(N'2024-08-03' AS Date), 175000, N'Thành phần dưỡng trong Cocoon Pomelo shampoo
- Tinh dầu bưởi: chứa hàm lượng limonene rất cao giúp ức chế mạnh mẽ enzyme 5-alpha reductase gây ra tình trạng rụng tóc, có tính kháng khuẩn cao giúp hạn chế tình trạng gàu.

- Vitamin B5: Cấp ẩm, ngừa tóc hư tổn, dưỡng tóc bóng khỏe hơn

- Xylishine: hoạt chất có khả năng cấp ẩm, tăng cường độ bóng của tóc

- Axit amin: hỗ trợ nuôi dưỡng tóc mềm mại, chắc khỏe và bóng mượt hơn

Điểm nổi bật của dầu xả bưởi Cocoon
- Dầu xả chứa tinh dầu bưởi đem lại hiệu quả phục hồi hư tổn & ngăn ngừa tóc gãy rụng

- Bổ sung dưỡng chất axit amin tái tạo, nuôi dưỡng tóc mềm mại, bóng mượt

- Kích thích tóc mọc dài, đen, dày hơn

- Dầu xả bưởi Cocoon không chứa sulfate, không dầu khoáng, không cồn, không paraben', N'Dầu Xả Bưởi Cocoon Pomelo hair conditioner 310ml', 100, 1, NULL, 31, 13)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109272, N'kissme_2.jpg', CAST(N'2024-08-06' AS Date), 216000, N'Ưu điểm nổi bật
- Thiết kế ngòi bút mảnh 0.1mm mang lại đường kẻ sắc sảo, thanh mảnh.

- Bút kẻ lâu trôi, chống nước hiệu quả suốt một ngày dài.

- Bổ sung dưỡng chất giúp vùng da mắt mềm mại, làm chậm quá trình lão hóa.

- Kết cấu mực mượt, không vón cục, không bết dính, không gây nặng nề cho mi mắt.

- Sản phẩm gọn nhẹ, cầm vừa tay phù hợp với người mới tập tành trang điểm.

- Chứa thành phần thiên nhiên từ hoa cúc, quả tầm xuân, không làm tổn thương đến vùng da mắt nhạy cảm.', N'Bút Kẻ Mắt Nước Lâu Trôi Kissme Heroine Make Smooth Liquid Eyeliner Super Keep 0.4ml', 100, 1, NULL, 15, 56)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109292, N'kissme_1.jpg', CAST(N'2024-08-06' AS Date), 189000, N'Công dụng chính: Bút xăm giúp tạo hình chân mày sắc sảo, điều chỉnh độ bóng vừa phải mang lại sự tự nhiên, hài hòa cho gương mặt.

Thành phần chính: Chiết xuất nụ tầm xuân, Hyaluronic Acid.

Ưu điểm nổi bật
- Định hình chân mày sắc nét, lên màu chuẩn không cần chỉnh.

- Điều chỉnh độ bóng vừa phải giúp đôi mày tự nhiên.

- Bảo vệ vùng da chân mày ẩm mượt, giảm thiểu kích ứng.

- Công thức mực siêu bền màu, chống nước lên đến 24h.

- Kiểm soát lượng dầu thừa, giảm bít tắc lỗ chân lông.

- Màu mực đều, không gây vón cục hay lem khi thao tác.', N'Bút Xăm Chân Mày Kissme Heavy Rotation Tint Liquid Eyebrow 0.4ml', 96, 1, NULL, 14, 55)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109377, N'ahc_niacin_1.jpg', CAST(N'2024-08-03' AS Date), 555000, N'Gương mặt trắng sáng mịn màng là ưu điểm giúp phái đẹp trở nên thu hút, xinh đẹp hơn trong mắt người khác. Tuy nhiên, ánh nắng luôn khiến mọi người lo lắng khi chúng có thể tác động lên da gây tình trạng đốm nâu, tàn nhang và da sạm màu.
Để cải thiện tình trạng da đốm nâu, kém đều màu thì sữa dưỡng da AHC Niacin Biome Mela Scissors Emulsion là một trong những lựa chọn tuyệt vời. Sản phẩm cao cấp của AHC sử dụng công nghệ làm sáng độc quyền, có tác dụng cung cấp dưỡng chất đi sâu vào da, cải thiện diện mạo da trắng sáng từ sâu các tầng biểu bì. Nhờ đó, sữa dưỡng AHC Niacin Biome sẽ làm mờ hiệu quả các đốm nâu, tàn nhang, vùng da thâm nám. Đồng thời sản phẩm dưỡng ẩm sâu, làm mềm mại và khỏe khoắn làn da.
Niacin Biome là dòng dưỡng sáng da chuyên sâu của AHC, sử dụng công thức độc quyền Niacin Biome Complex - “công nghệ lớp cắt vàng 3 tác động” với các thành phần bật về công dụng làm trắng sáng da. Sản phẩm cao cấp dòng Niacin Biome sẽ tập trung cải thiện & ngăn ngừa các vấn đề ở da như da kém đều màu, thâm nám, tàn nhang trong 7 ngày.', N'Sữa Dưỡng AHC Sáng Da, Giảm Đốm Nâu Niacin Biome Mela Scissors Emulsion 120ml', 100, 1, NULL, 27, 1)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109405, N'emmie_5.jpg', CAST(N'2024-08-04' AS Date), 59000, N'Công dụng: Mặt nạ sinh học chứa 8 loại Acid Hyaluronic (HA), Acid Tranexamic & Niacinamide giúp nuôi dưỡng, làm trắng & trẻ hóa làn da từ bên trong. Hiệu ứng căng mọng, rạng rỡ tức thì sau mỗi lần sử dụng. Chất liệu bio-cellulose thân thiện với da và môi trường, thiết kế ôm khít bề mặt da và khả năng “ngậm” dưỡng chất lên đến 100 lần.

Thành phần chính: Tranexamic Acid, 8 loại HA, Niacinamide (Vitamin B3)

Làn da sử dụng: mọi loại da 

Ưu điểm
- Giúp dưỡng da trắng sáng, cải thiện rõ rệt vấn đề sắc tố và da không đều màu

- Khả năng dưỡng ẩm hiệu quả và lâu dài cho làn da từ sâu bên trong nhờ 8 loại HA

- Hỗ trợ giảm sự xuất hiện của nếp nhăn ngay lập tức, làm da mềm mịn, rạng rỡ

- Thúc đẩy tăng sinh Ceramide, củng cố hàng rào bảo vệ da, chống lão hoá

Thành phần 
- Tranexamic Acid hoạt chất mạnh mẽ giúp cải thiện rõ rệt vấn đề sắc tố da

- 8 loại HA tăng khả năng ngậm nước, dưỡng ẩm da 

- Niacinamide (Vitamin B3) nuôi dưỡng làn da dần trắng sáng

Hướng dẫn sử dụng
Sử dụng mặt nạ sau bước làm sạch da 

Tháo lớp màng bảo vệ và đắp mặt nạ trong vòng 15-30 phút

Không cần rửa lại với nước, mát xa nhẹ cho phần tinh chất thẩm thấu hết vào da

Sử dụng thường xuyên để dưỡng trắng và cấp ẩm cho da, có thể sử dụng trước khi trang điểm để có lớp nền đẹp, căng mọng hoặc bất kỳ lúc nào cảm thấy cần thiết.', N'Mặt Nạ Sinh Học Làm Trắng, Cấp Ẩm Sâu Emmié Deep Hydrating & Whitening Bio-Cellulose Mask', 100, 1, NULL, 22, 22)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109414, N'OhuiUltimateCoverLifting_1.jpg', CAST(N'2024-06-22' AS Date), 1500000, N'Kết cấu cushion dễ tán, mỏng mịn tệp vào da nhanh chóng với 3 chức năng: kem nền - kem lót - chống nắng
Nâng Tông da tự nhiên, tạo hiệu ứng căng mọng, mang đến một làn da ẩm mịn, căng sáng, tươi trẻ 
Công thức tăng cường độ ẩm giúp đa không bị cakey, hạn chế tình trạng khô căng, bong tróc khi trang điểm trong thời gian dài
Bổ sung thành phần nhũ quang cho làn da bạn trở nên rạng rỡ, sáng bóng 1 cách hoàn hảo
Chỉ số chống nắng cao Spf 50+ bảo vệ làn da khỏi các tia UV gây hại - nguyên nhân gây ra lão hóa sớm
Che phủ các khuyết điểm như khóe mũi, khóe miệng, quầng thâm,...làm mịn lỗ chân lông và các nếp nhăn 
Duy trì độ bền màu trên da suốt cả ngày dài và kiểm soát lượng dầu thừa tiết ra', N'Phấn Nước Căng Mướt Da Ohui Ultimate Cover Lifting Cushion 15gx2 (tặng kèm lõi)', 100, 1, NULL, 1, 74)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109466, N'DearDahliaSkinParadiseSheerSilk_1.jpg', CAST(N'2024-06-22' AS Date), 713000, N'Phấn nước Dear Dahlia Skin Paradise Sheer Silk Cushion tạo lớp nền mịn mượt, tự nhiên cho làn da. Sản phẩm với kết cấu mỏng nhẹ, thoáng khí cùng độ bám dính cao giúp che phủ cao, duy trì lớp trang điểm bền màu và khô thoáng trong nhiều giờ liền. Dear Dahlia Skin Paradise Sheer Silk Cushion sẽ tạo hiệu ứng làm đầy đặn bề mặt da, che lấp các khuyết điểm nhẹ đồng thời bổ sung chất dưỡng ẩm, cùng lớp chống nắng mạnh mẽ giúp chăm sóc, bảo vệ da an toàn trước ánh nắng.
Sản phẩm cushion bổ sung các thành phần chống oxy hóa mạnh mẽ từ hoa thược dược và tinh dầu hữu cơ. Từ đó, lớp nền makeup còn có thể cân bằng độ ẩm cho da, mang lại cảm giác tươi mát, đồng thời duy trì màu sắc rạng rỡ, cũng như độ thoải mái trên da khi dùng cả ngày.', N'Phấn Nước Mịn Mướt Da Dear Dahlia Skin Paradise Sheer Silk Cushion SPF50+ PA++++ 8g', 100, 1, NULL, 1, 18)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109520, N'blackrouge_wearable_wl03.jpg', CAST(N'2024-08-03' AS Date), 338000, N'Công dụng: son thỏi Black Rouge Wearable Velvet Lipstick cải tiến với thiết kế hiện đại giữ nguyên cảm giác cổ điển, sang trọng đặc trưng của Signature Black Line. Chất son mỏng nhẹ, mịn lì, có độ che phủ tốt không gây lộ vân môi hay rãnh môi cùng bảng màu ấn tượng giúp gương mặt bạn luôn tươi tắn, rạng rỡ.', N'Son Thỏi Black Rouge Wearable Velvet Lipstick 4.4G Color: WL03', 100, 1, NULL, 8, 7)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109549, N'blackrouge_colordation_mp02.jpg', CAST(N'2024-08-03' AS Date), 680000, N'Ưu điểm 
- Công nghệ Soft – Fitting System mang đến hạt phấn mịn, mềm và không vón, để vệt hằn khi lướt trên mắt

- Độ bám tốt trên da chỉ sau một lần tán và không xuống tone giúp giữ màu cả ngày dài

- Tone màu phù hợp với làn da Châu Á và nhiều phong cách trang điểm khác nhau

- Colordation Mood Palette được chia làm 03 hàng màu là Light (màu sáng), Point (nổi bật, tạo điểm nhấn), Deep (màu trầm)

- Vỏ hộp nhám mờ, chống bám vân tay và được chạm khắc tên thương hiệu tinh tế bằng laser', N'Bảng Phấn Mắt Black Rouge Colordation Mood Palette 8G Color; MP02', 100, 1, NULL, 9, 7)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109562, N'ahc_ampoule_1.jpg', CAST(N'2024-08-03' AS Date), 438000, N'Thành phần chính
PHA: được chiết xuất từ các loại trái cây với nồng độ cao, đem lại hiệu quả làm sạch tế bào chết nhẹ nhàng, thanh lọc dầu, hydrat hóa làn da và tăng cường sự tái tạo tế bào da giúp cải thiện bề mặt da mịn màng, đều màu.
1% Tranexamic acid: Ngăn ngừa tích tụ sắc tố melanin, làm giảm đốm nâu, cải thiện nám da, tàn nhang, vết thâm mụn
Chiết xuất nước trà xanh: chống oxy hóa, thanh lọc làm mới làn da
Điểm nổi bật của kem dưỡng AHC Ampoule Directory PHA
Cải thiện vấn đề lỗ chân lông trong 7 ngày
Làm sạch mịn lỗ chân lông, giảm dầu thừa, ngăn ngừa xuất hiện mụn đầu đen
Cải thiện mụn đầu đen
Điều tiết bã nhờn, cho làn da dầu ráo mịn hơn
Phục hồi độ ẩm và cải thiện tông da
Công thức thông minh giúp vận chuyển các dưỡng chất vào sâu bên trong, cho hiệu quả chăm sóc nhanh chóng
Không chứa 10 thành phần gây hại da, đã trải qua kiểm nghiệm lâm sàng về độ an toàn cho da 
Bảo vệ và xoa dịu làn da bị tổn thương bởi ánh nắng, bụi bẩn, nấm', N'Kem Dưỡng Da AHC Ampoule Directory PHA Mattifying Gel Cream 30ml', 100, 1, NULL, 27, 1)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109576, N'imfrom_1.jpg', CAST(N'2024-08-05' AS Date), 72000, N'công dụng: mặt nạ I''m from Mugwort Sheet Mask chứa đến 91,45% chiết xuất từ Ngải Cứu vùng Ganghwa Hàn Quốc giúp làm dịu, thanh lọc thư giãn làn da. Đồng thời, mặt nạ giấy có độ bám dính tốt hỗ trợ hấp thụ đối đa dưỡng chất nuôi dưỡng da. 

Thành phần chính: 91,45% chiết xuất Ngải Cứu, Địa Y, Bạch Đầu Ông Hàn Quốc

Làn da sử dụng: mọi loại da ', N'Mặt Nạ Giấy Ngải Cứu I''m From Mugwort Sheet Mask', 100, 1, NULL, 22, 41)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109580, N'imfrom_2.jpg', CAST(N'2024-08-05' AS Date), 455000, N'Công dụng: I’m From Vitamin Tree là kem dưỡng dạng gel chứa thành phần chính từ 68% cây hắc mai biển giúp cung cấp dưỡng chất cho làn da mịn màng, căng mướt. Đồng thời, gel dưỡng vừa cấp ẩm vừa giúp làm trắng da và chống oxy hóa Catechin cao gấp 7 lần so với lá trà xanh tự nhiên.

Thành phần chính: chiết xuất cây hắc mai biển, niacinamide

Làn da sử dụng: mọi loại da', N'Kem Dưỡng Dạng Gel I''m from Vitamin Tree Water-gel 75g', 100, 1, NULL, 16, 41)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109675, N'jmsolution_2.jpg', CAST(N'2024-08-05' AS Date), 300000, N'Công dụng: tẩy trang Jmsolution Nature Centella Bubble Deep Cleanser được thiết kế dưới dạng bọt giúp len lỏi sâu vào lỗ chân lông làm sạch mọi bẩn, cặn trang điểm trên da. Đồng thời, tẩy trang chứa thành phần rau má làm mát, làm dịu làn da nhạy cảm khi tẩy trang.

Thành phần chính: chiết xuất rau má & 12 loại HA

Làn da sử dụng: da nhạy cảm', N'Tẩy Trang Dạng Bọt Jmsolution Nature Centella Bubble Deep Cleanser 300ml', 100, 1, NULL, 20, 48)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109678, N'jmsolution_3.jpg', CAST(N'2024-08-05' AS Date), 250000, N'Công dụng: tẩy tế bào chết Jmsolution Nature Green Tangerine Peeling dạng gel chứa chiết xuất từ Quýt Xanh và Hạt Cam giúp loại bỏ tế bào chết nhẹ dịu. Đồng thời, gel tẩy tế bào chết mang đến hiệu quả dưỡng sáng làn da một cách tự nhiên, mịn màng.

Thành phần chính: chiết xuất từ Quýt Xanh và Hạt Cam

Làn da sử dụng: mọi loại da', N'Tẩy Tế Bào Chết Dạng Gel Jmsolution Nature Green Tangerine Peeling Gel 120ml', 100, 1, NULL, 21, 48)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109680, N'jmella_3.jpg', CAST(N'2024-08-05' AS Date), NULL, N'Công dụng chính: Dầu gội có hương hoa hồng ngọt ngào giúp nuôi dưỡng tóc chắc khỏe, lưu hương lâu dài tạo cảm giác thư thái, dễ chịu suốt một ngày.

Thành phần chính: Chiết xuất lý chua đen, hoa hồng, xạ hương.

Ưu điểm nổi bật
- Làm sạch, loại bỏ bụi bẩn, tuyến dầu nhờn trên da đầu giúp tóc phát triển khỏe mạnh.

- Bổ sung độ ẩm, cân bằng nước giúp da đầu không bị khô.

- Giảm thiểu gãy rụng, ngăn ngừa khô xơ, hư tổn tóc do tạo kiểu, dùng nhiệt.

- Nốt hương hoa Pháp lưu hương mái tóc lâu suốt nhiều giờ liền.

- Sản phẩm được nghiên cứu bởi nhà điều chế nước hoa Argeville hàng đầu tại Pháp.

- Đạt tiêu chuẩn IFRA (Hiệp hội nước hoa quốc tế) chứng nhận an toàn cho da đầu nhạy cảm.

- Công thức tạo bọt dịu nhẹ mang dưỡng chất len lỏi, thấm sâu vào bên trong nuôi dưỡng tóc.

- Hương thơm lý chua đen, hoa hồng cùng xạ hương mang lại cảm giác dễ chịu, thư giãn.

- Không chứa 12 chất hóa học gây hại cho tóc và da đầu.', N'Dầu Gội Chắc Khỏe Tóc Jmella In France Sparkling Rose Hair Shampoo 500mlDầu Gội Chắc Khỏe Tóc Jmella In France Sparkling Rose Hair Shampoo 500ml', 100, 1, NULL, 30, 47)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109681, N'jmella_1.jpg', CAST(N'2024-08-05' AS Date), 190000, N'Công dụng chính: Giúp mái tóc mềm mại, óng ả, bổ sung thêm dưỡng chất mang lại mái tóc khỏe khoắn từ chân đến ngọn.

Thành phần chính: Chiết xuất cỏ An đê hít, hoa lài, xạ hương trắng.

Ưu điểm nổi bật
- Làm mềm tóc, cung cấp dưỡng chất giúp mái tóc óng ả, khỏe mạnh từ chân đến ngọn.

- Cân bằng nước, giữ ẩm giúp da đầu không bị khô.

- Giảm khô xơ, chẻ ngọn và gãy rụng tóc do dùng nhiệt, sử dụng hóa chất nhiều.

- Không gây bết dính tóc, kiểm soát lượng dầu thừa cho da đầu khỏe mạnh.

- Sản phẩm được nghiên cứu bởi nhà điều chế nước hoa Argeville hàng đầu tại Pháp.

- Đạt tiêu chuẩn IFRA (Hiệp hội nước hoa quốc tế) chứng nhận an toàn cho da đầu nhạy cảm.

- Kết cấu kem xả đặc có hương thơm các loại thảo mộc giúp thư giãn thoải mái.', N'Dầu Xả Làm Mềm Tóc Jmella In France Queen 5 Hair Treatment 500ml', 100, 1, NULL, 31, 47)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109686, N'jmella_2.jpg', CAST(N'2024-08-05' AS Date), 190000, N'Công dụng chính:  Bổ sung dưỡng chất giúp da ẩm mượt, giảm thiểu bong tróc, khô sần mang lại làn da ẩm mượt, tươi tắn và tràn đầy sức sống.

Thành phần chính: Chiết xuất lý chua đen, hoa hồng, xạ hương.

Jmella In France Sparkling Rose Body Lotion nổi bật với hương thơm rượu Champagne nồng nàn nhưng cũng không kém phần quyến rũ. Tiếp sau đó sẽ để lại sự dịu nhẹ, ngọt ngào phù hợp với mọi cô nàng điệu đà lẫn cá tính.

Ưu điểm nổi bật
- Cung cấp ẩm, bổ sung nước giúp da mềm mại, mịn màng.

- Cải thiện vùng da bị xỉn màu, làm mờ thâm nám, đốm nâu.

- Làm chậm quá trình lão hóa, cải thiện da bị chảy xệ, chùng nhão.

- Ngăn ngừa vi khuẩn gây mụn, bảo vệ da khỏi các tác nhân gây hại.

- Kết cấu sữa dưỡng mỏng nhẹ thấm nhanh, không gây bết dính trên da.

- Có hương thơm nước hoa cao cấp giúp thư giãn. Lưu hương lâu suốt 24h đồng hồ.

- Phù hợp với mọi loại da, không gây kích ứng da nhạy cảm.Công dụng chính:  Bổ sung dưỡng chất giúp da ẩm mượt, giảm thiểu bong tróc, khô sần mang lại làn da ẩm mượt, tươi tắn và tràn đầy sức sống.

Thành phần chính: Chiết xuất lý chua đen, hoa hồng, xạ hương.

Jmella In France Sparkling Rose Body Lotion nổi bật với hương thơm rượu Champagne nồng nàn nhưng cũng không kém phần quyến rũ. Tiếp sau đó sẽ để lại sự dịu nhẹ, ngọt ngào phù hợp với mọi cô nàng điệu đà lẫn cá tính.

Ưu điểm nổi bật
- Cung cấp ẩm, bổ sung nước giúp da mềm mại, mịn màng.

- Cải thiện vùng da bị xỉn màu, làm mờ thâm nám, đốm nâu.

- Làm chậm quá trình lão hóa, cải thiện da bị chảy xệ, chùng nhão.

- Ngăn ngừa vi khuẩn gây mụn, bảo vệ da khỏi các tác nhân gây hại.

- Kết cấu sữa dưỡng mỏng nhẹ thấm nhanh, không gây bết dính trên da.

- Có hương thơm nước hoa cao cấp giúp thư giãn. Lưu hương lâu suốt 24h đồng hồ.

- Phù hợp với mọi loại da, không gây kích ứng da nhạy cảm.', N'Sữa Dưỡng Thể Làm Mịn Da Jmella In France Sparkling Rose Body Lotion 500mlSữa Dưỡng Thể Làm Mịn Da Jmella In France Sparkling Rose Body Lotion 500ml', 100, 1, NULL, 27, 47)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109890, N'biore_sunscreen_1.jpg', CAST(N'2024-08-03' AS Date), 216000, N'Công dụng chính: Bảo vệ làn da toàn diện tránh khỏi tia nắng gay gắt, bụi mịn, ánh sáng xanh và hỗ trợ dưỡng sáng da toàn thân hiệu quả.

Thành phần chính: Chiết xuất cam Yuzu.

Loại da phù hợp: Mọi loại da, kể cả da nhạy cảm.

Bioré UV Anti-Pollution Body Care Serum Intensive Aura Kissing đến từ Nhật Bản. Được sản xuất với công nghệ Anti-Polltion và Moisture Pack hỗ trợ dưỡng ẩm, tạo màng chắn bảo vệ da khỏi ánh nắng trực tiếp. Đặc biệt bảng thành phần từ cam Yuzu chứa lượng vitamin C lớn giúp làm sáng da, cải thiện vùng da không đều màu như đầu gối, khuỷu tay…

Thành phần chính
- Chiết xuất cam Yuzu: Chứa lượng vitamin C lớn có khả năng làm sáng da, làm mờ thâm nám, đốm nâu mang lại làn da sáng khỏe, đều màu. Đặc biệt là chống lão hóa, cải thiện nếp nhăn, khô da hiệu quả.

- Vitamin E: Làm mịn da, giảm thiểu bong tróc, khô sần và hồi phục da bị tổn thương do cháy nắng hoặc chịu động của các yếu tố khác.

- Hyaluronic Acid: Bổ sung ẩm, thúc đẩy quá trình lưu thông máu giúp da sáng hồng rạng rỡ.

Ưu điểm nổi bật
- Chỉ số chống nắng cao SPF 50+ PA+++, tạo hàng rào chắn bảo vệ da khỏi ánh nắng, khói bụi…

- Có khả năng chống nước siêu việt giữ lớp kem không trôi suốt nhiều giờ liền.

- Bổ sung độ ẩm, hỗ trợ làm sáng da.

- Kết cấu kem mỏng nhẹ thấm nhanh trên da, không gây nhờn rít, bết dính.

- Có mùi hương dịu nhẹ, giúp thư giãn sau một ngày làm việc mệt mỏi.

Hướng dẫn sử dụng

Làm sạch da, cho một lượng kem chống nắng vừa đủ thoa lên toàn bộ cơ thể.

Sử dụng 15-20 phút trước khi ra ngoài.', N'Kem Chống Nắng Sáng Da Toàn Thân Bioré UV Anti-Pollution Body Care Serum Intensive Aura Kissing Berry SPF50+/PA++++ 150ml', 100, 1, NULL, 42, 9)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11109959, N'cocoon_1.jpg', CAST(N'2024-08-03' AS Date), 193000, N'Tinh dầu bưởi: chứa hàm lượng limonene rất cao giúp ức chế mạnh mẽ enzyme 5-alpha reductase gây ra tình trạng rụng tóc, có tính kháng khuẩn cao giúp hạn chế tình trạng gàu.
Vitamin B5: Cấp ẩm, ngừa tóc hư tổn, dưỡng tóc bóng khỏe hơn
Xylishine: hoạt chất có khả năng cấp ẩm, tăng cường độ bóng của tóc
Axit amin: hỗ trợ nuôi dưỡng tóc mềm mại, chắc khỏe và bóng mượt hơn', N'Kem Ủ Tóc Bưởi Cocoon Pomelo Hair Mask 200ml', 100, 1, NULL, 32, 13)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110193, N'cocoon_4.jpg', CAST(N'2024-08-03' AS Date), 245000, N'Phát huy khả năng ưu việt của nước cất hoa hồng hữu cơ tinh khiết kết hợp với công nghệ Micellar, Nước Tẩy Trang Hoa Hồng COCOON ROSE MICELLAR WATER phiên bản nâng cấp được cải tiến đem đến những ưu điểm vượt trội so với phiên bản hiện tại, giúp làm sạch sâu hơn lớp trang điểm, bụi bẩn và dịu nhẹ hơn, đồng thời cung cấp độ ẩm, mang lại làn da sạch và mịn màng.', N'Nước Tẩy Trang Hoa Hồng Cocoon Rose Micellar Water 500Ml', 100, 1, NULL, 20, 13)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110203, N'k_2.jpg', CAST(N'2024-08-06' AS Date), 272000, N'Điểm nổi bật của kẻ mắt nước K-PALETTE Real Lasting Eyeliner
- Khả năng bám màu tốt, chống thấm nước và mồ hôi cao

- Màu mắt nước khô nhanh khoảng 20-30s sau khi kẻ, hạn chế tối đa tình trạng nhòe hoặc lem khi kẻ nhiều lớp

- Thiết kế đầu bút nhỏ, mảnh với độ cứng vừa phải, dễ di chuyển và tạo nét vẽ thanh mảnh, sắc nét

- Lông cọ mềm mại

- Dễ dàng làm sạch với nước ấm hoặc nước tẩy trang', N'Kẻ Mắt Nước K-PALETTE Real Lasting Eyeliner 24H WP 0.6ml', 100, 1, NULL, 15, 51)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110205, N'k_1.jpg', CAST(N'2024-08-06' AS Date), 272000, N'Điểm nổi bật của chì kẻ mắt Real Lasting Eyepencil 24H
- Chống lem màu mắt lâu trôi

- Giúp giữ đường nét vẽ nguyên vẹn suốt một ngày

- Màu mắt với nét vẽ tự nhiên, thanh mảnh làm tăng vẻ thu hút, nổi bật cho đôi mắt', N'Chì Kẻ Viền Mắt K-PALETTE Real Lasting Eyepencil 24H Wp 22G', 100, 1, NULL, 15, 51)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110211, N'k_3.jpg', CAST(N'2024-08-06' AS Date), 400000, N'Điểm nổi bật của kẻ mắt nước 1Day Tatoo Procast The Eyeliner
- Công thức mực in Tattoo Film Ink cho hiệu ứng lâu trôi, bền màu ngay cả khi gặp nước

- Thiết kế đầu bút thanh mảnh, lông cọ có độ vững chãi giúp bạn dễ dàng di chuyển khi kẻ, hạn chế tình trạng đứt gãy

- Mực in chứa thành phần dưỡng ẩm và thành phần bảo vệ da không bị khô bởi tác động ngoài môi trường', N'Bút Kẻ Mắt Nước K-PALETTE 1Day Tatoo Procast The Eyeliner 28G', 100, 1, NULL, 15, 51)
GO
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110320, N'innisfree_2.jpg', CAST(N'2024-08-05' AS Date), 27000, N'Điểm nổi bật của mặt nạ giấy INNISFREE
- Dạng giấy cellulose êm dịu, làm tính cho da

- Được chiết xuất từ các thành phần hoa quả, cây lá tự nhiên giàu dưỡng chất

- Giúp chăm sóc các vấn đề da hiệu quả như da khô, tối màu, da yếu, thiếu sức sống...

- Thiết kế mặt nạ ôm sát da, mỏng nhẹ, giàu dưỡng chất

Phân loại dòng mặt nạ INNISFREE Squeeze Energy Mask
- Mặt nạ nha đam INNISFREE Squeeze Energy Mask Aloe

Dạng tinh chất dưỡng ẩm. Cấp nước và làm dịu da.

- Mặt nạ trà xanh INNISFREE Squeeze Energy Mask Green tea

Dạng nước tinh chất dịu mát. Cấp nước và làm diu da.

- Mặt nạ lựu INNISFREE Squeeze Energy Mask Pome

Dạng tinh chất dưỡng ẩm. Làm mịn và sáng da.

- Mặt nạ hoa hồng INNISFREE Squeeze Energy Mask Rose

Cấp nước và làm sáng da. Dạng nước tinh chất dịu mát

- Mặt nạ quả mọng INNISFREE Squeeze Energy Mask AcaiBerry

Dạng kem giàu dưỡng chất. Phục hồi và giúp da săn chắc.

- Mặt nạ rau má IINNISFREE Squeeze Energy Mask Centella

Dưỡng ẩm và phục hồi da.

- Mặt nạ diếp cá INNISFREE Squeeze Energy Mask Heartleaf

Phục hồi và tăng cường sức khỏe làn da.

- Mặt nạ quýt INNISFREE Squeeze energy Mask Yuzu

Chống oxy hóa, làm sáng da.

- Mặt nạ trà Kombucha INNISFREE Squeeze energy Mask Kombucha

Kháng viêm, làm dịu da.

- Mặt nạ mật ong INNISFREE Squeeze Energy Mask M.Honey

Dạng tinh chất dưỡng ẩm. Dưỡng ẩm và phục hồi da.', N'Mặt Nạ Giấy INNISFREE Squeeze Energy Mask', 100, 1, NULL, 22, 44)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110322, N'Innisfree_NoSebumMineralPowder_1.jpg', CAST(N'2024-06-28' AS Date), 389000, N'Điểm nổi bật của phấn phủ Innisfree No Sebum Mineral Powder
Phấn phủ dạng bột khô thoáng, nhẹ nhàng trên daGiúp thấm hút và kiểm soát dầu thừa, cho làn da khô thoáng rạng rỡ hơn
Kết cấu phấn nhẹ, tạo lớp nền mịn màng và tự nhiên
Với phức hợp khoáng chất, chiết xuất bạc hà và trà xanh hỗ trợ chăm sóc da mịn màng, khỏe khoắn hơn.', N'Phấn Phủ Dạng Bột Kiềm Dầu INNISFREE No Sebum Mineral Powder 5G', 100, 1, NULL, 3, 44)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110324, N'innisfree_1.jpg', CAST(N'2024-08-05' AS Date), 92000, N'Điểm nổi bật của chì kẻ mày Innisfree Auto Eyebrow Pencil
- Thiết kế đầu chì hình oval dẹt dễ dàng sử dụng cho cả người mới bắt đầu tập kẻ mày

- Chất chì mềm mại, dễ lên màu và không gây vón cục.

- Cây chì nhẹ nhàng, lướt êm trên vùng chân mày, tạo dáng mày tự nhiên, sắc sảo

- Sở hữu bảng màu chì tự nhiên, đa dạng với 7 màu sắc phù hợp với nhiều màu da (màu tóc) khác nhau', N'Chì Kẻ Mày INNISFREE Auto Eyebrow Pencil 0.3g', 100, 1, NULL, 14, 44)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110364, N'garnier_2.jpg', CAST(N'2024-08-05' AS Date), 349000, N'Công dụng tinh chất ban đêm Garnier Overnight Serum
- Làm đều & làm sáng mịn da

- Làm mờ các vết thâm sạm do mụn gây ra

- Kết cấu mỏng nhẹ, dễ dàng thẩm thấu nhanh vào da và hấp thụ tối ưu các dưỡng chất

- Khả năng thẩm thấu sâu, dưỡng sáng da từ sâu bên trong

- Sản phẩm lành tính, kháng viêm, có thể sử dụng trên da mụn nhẹ', N'Tinh Chất Ban Đêm Garnier Sáng Da, Mờ Thâm Bright Complete Overnight Serum 30ml', 100, 1, NULL, 17, 35)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110421, N'banila_2.jpg', CAST(N'2024-08-03' AS Date), 686000, N'Sản phẩm trang điểm tuyệt vời của thương hiệu Banila Co, chuyên gia trong việc tạo lớp nền make-up hoàn hảo giúp cho đi từng lỗ chân lông, duy trì độ che phủ ưu việt trong nhiều giờ liền. Nhờ chất kem siêu mỏng và dễ phân tán khi lên da, nhanh chóng bám vào bề mặt và tạo nên lớp nền bền chặt mịn màng khi thoa, che lấp những vùng xỉn màu, thô ráp. Banila Co Covericious Power Fit Foundation giúp tạo ra diện mạo da mới đều màu, mịn màng và trẻ trung hơn.

Bên cạnh đó, kem nền Banila Co còn có khả năng chống nắng với chỉ số SPF45 và PA++, bảo vệ da trước sự chiếu sáng của những tia UV giúp ngăn ngừa gốc tự do tăng sinh gây tổn thương da. Đồng thời góp phần duy trì lớp make-up bền vững, lâu trôi đến 72hh. Banila Co Covericious Power Fit Foundation là kem nền có độ tơi dính ưu việt, dễ tán trên da, không tạo cảm giác bết dính. Là lựa chọn tuyệt vời cho những cô nàng mê trang điểm.', N'Kem Nền Lì, Mịn Mướt Da Banila Co Covericious Power Fit Foundation 30Ml (Color: 21 Rose)', 100, 1, NULL, 2, 10)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110422, N'BanilaCoConvericious_1.jpg', CAST(N'2024-06-23' AS Date), 688000, N'Sản phẩm trang điểm tuyệt vời của thương hiệu Banila Co, chuyên gia trong việc tạo lớp nền make-up hoàn hảo giúp cho đi từng lỗ chân lông, duy trì độ che phủ ưu việt trong nhiều giờ liền. Nhờ chất kem siêu mỏng và dễ phân tán khi lên da, nhanh chóng bám vào bề mặt và tạo nên lớp nền bền chặt mịn màng khi thoa, che lấp những vùng xỉn màu, thô ráp. Banila Co Covericious Power Fit Foundation giúp tạo ra diện mạo da mới đều màu, mịn màng và trẻ trung hơn.
Bên cạnh đó, kem nền Banila Co còn có khả năng chống nắng với chỉ số SPF45 và PA++, bảo vệ da trước sự chiếu sáng của những tia UV giúp ngăn ngừa gốc tự do tăng sinh gây tổn thương da. Đồng thời góp phần duy trì lớp make-up bền vững, lâu trôi đến 72hh. Banila Co Covericious Power Fit Foundation là kem nền có độ tơi dính ưu việt, dễ tán trên da, không tạo cảm giác bết dính. Là lựa chọn tuyệt vời cho những cô nàng mê trang điểm.', N'Kem Nền Lì, Mịn Mướt Da Banila Co Covericious Power Fit Foundation 30Ml (phiên bản mới)', 100, 1, NULL, 2, 10)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110428, N'banila_5.jpg', CAST(N'2024-08-03' AS Date), 356000, NULL, N'Cọ Đánh Nền Banila Co Power Fit Foundation Brush', 100, 1, NULL, 35, 10)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110502, N'OhuiUltimateCoverMesh_1.jpg', CAST(N'2024-06-22' AS Date), 1300000, N'Ohui Ultimate Cover Mesh Cushion là phấn nước sở hữu thiết kế dạng lưới cải tiến, giúp lớp nền mịn mướt với khả năng che phủ tinh vi
Công thức phấn nước Ohui vô cùng mỏng nhẹ, kết hợp với bề mặt cushion dạng lưới cùng thiết kế bông mút khác biệt, có thể dàn trải và tạo nên lớp nền trang điểm tinh tế, xinh đẹp và chuyên nghiệp
Nền cushion này có độ che phủ cao, che lấp các khuyết điểm dễ thấy trên bề mặt da
Công thức phấn nước chứa 70% thành phần cấp ẩm giúp chăm sóc làn da mịn màng, khỏe khoắn trong suốt quá trình trang điểm
Hỗ trợ chống nắng, bảo vệ da với chỉ số spf50+ pa+++
Ngoài ra, Ohui Ultimate Cover Mesh Cushion có tác dụng kiểm soát dầu thừa, duy trì lớp nền trang điểm ráo mịn và căng mướt', N'Phấn Nước Kiềm Dầu & Dưỡng Ẩm Ohui Ultimate Cover Mesh Cushion 13g (tặng kèm lõi)', 100, 1, NULL, 1, 74)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110840, N'glint_1.jpg', CAST(N'2024-08-05' AS Date), 560000, N'Điểm nổi bật của son dưỡng môi Glint Glow Lip Balm
- Thỏi son dưỡng Glint giúp đôi môi căng mọng, đầy sức sống qua từng ngày

- Son dưỡng có màu với những sắc màu nhẹ nhàng, trong trẻo

- Giúp cấp dưỡng ẩm cho đôi môi ẩm mượt, khỏe khoắn dưới sự bảo vệ của lớp son tint bóng mượt, lấp lánh

- Hiệu ứng bắt sáng với kết cấu son dưỡng như tan chảy trên bờ môi, giúp đôi môi trông lung linh hơn khi ánh sáng chiếu vào', N'Son Dưỡng Môi Có Màu Glint Glow Lip Balm 3g', 100, 1, NULL, 10, 33)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11110846, N'glint_3.jpg', CAST(N'2024-08-05' AS Date), 300000, N'Điểm nổi bật của màu mắt Glint Glitter Gel
- Sở hữu hiệu ứng màu mắt lấp lánh, bắt sáng với dạng gel nhũ chúa kim tuyến

- Tạo phong cách trang điểm rạng rỡ, tươi tắn, trendy cho người sử dụng

- Kết cấu dạng gel trong suốt chứa các hạt nhũ lấp lánh, tỏa sáng khi gặp ánh sáng (hoặc gặp ánh nắng)

- Gel màu mắt có khả năng bám tốt, giữ được độ lấp lánh lâu dài

- Màu mắt nhũ có thể dùng cho vùng bầu mắt, má, và cơ thể (nơi cần bắt sáng)', N'Màu Mắt Dạng Gel Glint Glitter Gel 3.8g', 98, 1, NULL, 12, 33)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11111024, N'emmie_3.jpg', CAST(N'2024-08-04' AS Date), 360000, N'Thành phần nổi bật
- Gồm Phức hợp 12% AHA/BHA/PHA

+BHA: làm sạch da chết trên bề mặt da và lỗ chân lông, thanh lọc da, hỗ trợ điều trị mụn

+AHA: Cải thiện da không đều màu, kém mịn màng.

+PHA: một thành phần cải tiến giúp làm sáng bề mặt, đồng thời hỗ trợ chống lão hóa

- Pionin: thành phần có tác dụng kháng khuẩn, giảm viêm và điều tiết bã nhờn

- Hỗn hợp Saccharide Isomerate + Allantoin: Cấp ẩm sâu, làm dịu da.', N'Dung Dịch Tẩy Tế Bào Chết Emmié All Target Skin Renewing Solution 120ml', 100, 1, NULL, 21, 22)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11111025, N'emmie_2.jpg', CAST(N'2024-08-04' AS Date), 219000, N'Emmié Eau De Parfum My Destiny tựa như lời nhắn gửi biến anh thành định mệnh của em, mỗi khoảnh khắc bên nhau đều ngọt ngào và tràn đầy rung động.

Mô tả mùi hương: Chính Nữ

Tầng hương

- Hương đầu: Quả lê, lý chua đen

Mùi hương đặc trưng của quả lê là sự ngọt ngào và thanh khiết, tạo nốt hương tươi mát, có vị chua nhẹ nhàng. Kết hợp với lý chua đen có chút hương ngọt balsamic, hương gỗ, hương đắng. Từ đó tạo nên nốt hương đầu đầy lôi cuốn và thu hút người xung quanh.

- Hương giữa: Hoa nhài, diên vĩ

Hoa nhài nổi bật với hương thơm ngào ngạt, xen lẫn với sự tươi mát, ngọt ngào. Khi hòa trộn với hoa diên vĩ – được mệnh danh là hương thơm quý hiếm nhất trên thế giới vừa thanh tao, vừa nhã nhặn, pha chút mùi đất lẫn hương cà rốt và violet. Nghe đến những nốt hương này, bạn đã tưởng tượng ra được mùi hương mà bản thân yêu thích chưa?

- Hương cuối: Kẹo nhân Praline, hoắc hương, vani

Kẹo nhân hạt Praline có hương ngọt, mềm mại pha lẫn chút ấm áp, lãng mạn. Song đó, hoắc hương là mùi thơm sang trọng của các loại thảo mộc pha trộn với nhựa cây mang kaji cảm giác nồng nàn, quyến rũ. Nốt hương cuối này như sự bất ngờ giữ chân người đối diện xao xuyến bạn mãi không thôi.', N'Nước Hoa Emmié Eau De Parfum 15ml', 100, 1, NULL, 43, 22)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11111030, N'blackrough_booki_gb11mauvebrick_1.jpg', CAST(N'2024-08-03' AS Date), 318000, N'Điểm nổi bật của son tint Black Rouge Glow Bokki Tint
- Chất son tint bóng, lâu trôi, giữ màu tốt suốt nhiều giờ liền

- Tạo hiệu ứng làm đầy rãnh môi, tạo ánh nhìn môi căng mướt

- Cảm giác nhẹ nhàng, thoải mái kể cả khi thoa nhiều lớp

- Hiệu ứng lì, lâu trôi kèm lớp tint tự nhiên, tươi tắn

- Thiết kế bao bì ngoài xinh xắn, bóng mượt và nhỏ gọn', N'Son Tint Bóng Black Rouge Glow Bokki Tint 4.1g (color: gb11 Mauve Brick)', 100, 1, NULL, 9, 7)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11111031, N'blackrouge_bokki_gb12honeysoy_1.jpg', CAST(N'2024-08-03' AS Date), 318000, N'Điểm nổi bật của son tint Black Rouge Glow Bokki Tint
- Chất son tint bóng, lâu trôi, giữ màu tốt suốt nhiều giờ liền

- Tạo hiệu ứng làm đầy rãnh môi, tạo ánh nhìn môi căng mướt

- Cảm giác nhẹ nhàng, thoải mái kể cả khi thoa nhiều lớp

- Hiệu ứng lì, lâu trôi kèm lớp tint tự nhiên, tươi tắn

- Thiết kế bao bì ngoài xinh xắn, bóng mượt và nhỏ gọn', N'Son Tint Bóng Black Rouge Glow Bokki Tint 4.1g (color: gb12 Honey Soy)', 99, 1, NULL, 9, 7)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11111041, N'happyskin_1.jpg', CAST(N'2024-08-05' AS Date), 50000, N'Sữa tắm kết hợp nước hoa đã không còn quá xa lạ đối với những tín đồ làm đẹp. Không chỉ giúp loại bỏ bụi bẩn, điều trị các vấn đề về da mà còn giúp cơ thể mát ngát suốt cả ngày dài. Happy Skin Shower Gel Clay Flavor Scent nổi bật với bộ sưu tập sữa tắm hương nước hoa thơm ngát, chia thành nhiều phiên bản khác nhau, đáp ứng mọi nhu cầu của người dùng.

Bảng thành phần của sữa tắm gồm 8% đất sét Kaolin, 6% hỗn hợp bao gồm chiết xuất vỏ cây liễu trắng, nghệ, tảo biển, được gọi là Skin detox complex độc quyền. Những nguyên liệu này đã tạo nên dòng sữa tắm cao cấp mang lại làn da ẩm mượt, sáng khỏe như ý.', N'Sữa Tắm Dưỡng Ẩm Da Happy Skin Shower Gel Clay Flavor Scent #Gaslighting 30ml', 100, 1, NULL, 26, 38)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11111093, N'aness_sunscreen_1.jpg', CAST(N'2024-08-03' AS Date), 409000, N'Với khả năng chống nắng vượt bậc SPF50+ PA++++ kết hợp thành phần dưỡng da thiên nhiên đã giúp Xịt chống nắng Anessa Perfect Uv Spray Suncreen có tác dụng bảo vệ & chăm sóc da tuyệt vời dưới ánh nắng. Sản phẩm chống tia UVA, UVB ngăn ngừa da tối màu và lão hóa nhờ lớp màn bảo vệ hoàn hảo với công nghệ Aqua Booster chống trôi trong nước và mồ hôi - Aqua Booster Technology.
Kem chống nắng dạng xịt Anessa Perfect Uv Spray Suncreen nằm trong dòng sản phẩm chống nổi tiếng của thương hiệu Anessa, thừa hưởng công nghệ chống nắng hơn 100 năm của tập đoàn Shiseido cũng là nơi có nghiên cứu đột phá về sản phẩm chống nắng với SPF50+ đầu tiên tại Nhật.', N'Xịt Chống Nắng Anessa Perfect UV Sunscreen Skincare Spray 60G', 100, 1, NULL, 42, 4)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11111177, N'Vacosi_FlasoLoose_1.jpg', CAST(N'2024-06-28' AS Date), 145000, N'Phấn phủ bột siêu mịn lì Vacosi Flaso Loose Powder chứa hàng triệu hạt phấn lạnh có kết cấu siêu mịn lì, có khả năng kiểm soát dầu nhờn, tạo hiệu ứng lì mịn. Được sản xuất theo công thức hạt đa tầng Bouncy SSF cùng các dưỡng chất cấp ẩm chuyên sâu, không làm khô, nứt nẻ trên da.
Thành phần chính
Dầu olive: Hỗ trợ chống nắng, bổ sung độ ẩm chuyên sâu, ngăn ngừa tình trạng kích ứng, nứt nẻ, khô sần trên da.
Hoa ban âu: Chống viêm, kháng khuẩn, bảo vệ da khỏi các tác nhân gây mụn, gây cháy nắng.
Dầu hạt lựu: Chứa axit punicic và axit béo omega 5 chống lại các gốc tự do, phục hồi vết thương, giữ làn da mịn màng, loại bỏ sạch dầu nhờn hiệu quả.
Dầu hoa oải hương: Cấp ẩm, thúc đẩy tái tạo da bị hư tổn.', N'Phấn Phủ Bột Siêu Mịn Lì Vacosi Flaso Loose Powder 6g', 100, 1, NULL, 3, 99)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11111299, N'banila_4.jpg', CAST(N'2024-08-03' AS Date), 476000, N'Banila Co Clean It Zero Green Peel Toner Pad sử dụng miếng pad 100% từ cotton, đạt chứng nhận an toàn với làn da và môi trường. Miếng pad với kết cấu bông mềm mại, lên da êm ái không gây bong tróc, đồng thời giúp làm sạch da chết nhẹ nhàng, hiệu quả.

Miếng pad làm sạch da Banila Co có thể sử dụng hằng ngày cho làn da, với khả năng làm sạch da chết nhẹ nhàng với cơ chế làm bong tróc tự nhiên từ các thành phần táo xanh, LHA. Nhờ đó, miếng pad sẽ giúp duy trì làn da khỏe khoắn, mềm mịn không bóng nhờn, hạn chế tình trạng lỗ chân lông và mụn đầu đen khi sử dụng mỗi ngày.', N'Toner Pad Làm Sạch Da Banila Co Clean It Zero Green Peel Toner Pad 200ml (70 miếng)', 100, 1, NULL, 18, 10)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (11111628, N'glint_2.jpg', CAST(N'2024-08-05' AS Date), 450000, N'Điểm nổi bật của phấn má hồng Glint Baked Blush
- Phấn má có khả năng bắt sáng, tạo thêm độ lung linh trên gương mặt

- Kết cấu phấn dạng nén mịn màng, tiệp mịn trên da, cho màu sắc tươi mới và mềm mại tự nhiên

- Phấn chứa độ ẩm mang lại màu nước rõ ràng trên da', N'Phấn Má Hồng Glint Baked Blush 2.4g', 100, 1, NULL, 6, 33)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (12240031, N'ClioMeshGlowCushion_1.jpg', CAST(N'2024-06-22' AS Date), 1170000, N'Phấn nước Clio che phủ hoàn hảo các khuyết điểm nhỏ trên gương mặt, tạo lớp nền lâu trôi cùng khả năng cấp ẩm, tạo lớp nền tươi tắn, rạng rỡ đến 54h.
Clio Kill Cover Mesh Glow Cushion là loại phấn nước hỗ trợ che khuyết điểm hoàn hảo, cải thiện nền da xấu trở nên sáng đều màu đồng thời phủ một độ ẩm trên nền da, vừa chăm sóc vừa duy trì lớp nền trang điểm tự nhiên, rõ ràng, mượt mà. Bột phấn có tính liên kết cao, trải đều và bám chắc vào nền da khi dàn trải. Nhờ đó, cushion Clio Mesh tạo hiệu ứng che phủ đỉnh cao, nền mỏng mịn với "một lần chạm" như lớp filter chính hiệu giúp gương mặt trông xinh đẹp, lấp lánh hơn.', N'Phấn Nước Clio Căng Mướt Da Kill Cover Mesh Glow Cushion SPF50+, PA++++ 15g (tặng kèm lõi)', 100, 1, NULL, 1, 15)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (13870041, N'ClioClaimingCushion_1.jpg', CAST(N'2024-06-22' AS Date), 679000, N'Phấn nước Clio Kill Cover Calming Cushion là sản phẩm trang điểm an toàn cho làn da nhờ sử dụng các thành phần dầu sạch có chiết xuất thực vật thay vì sử dụng dầu silicon. Với khả năng cấp ẩm làm dịu da hữu hiệu, cùng lớp nền chống nắng bảo vệ da sáng đều màu thì Kill Cover Calming Cushion xứng đáng trở thành "bạn đồng hành" với làn da nhạy cảm, da khô dễ mất nước, nền da mỏng có xuất hiện nếp nhăn.
Nhờ tác dụng làm dịu da cùng chống nắng vật lý, phấn nước Clio Kill Cover Calming Cushion phù hợp với các bạn có làn da nhạy cảm hay da dễ bị kích ứng (nóng, đỏ, rát) khi tiếp xúc với ánh nắng do khả năng cấp ẩm, làm dịu da tốt. Phấn nước sở hữu tính năng chống nắng vật lý, với SPF40 PA++ nhằm tạo ra lớp nền khóa & phản xạ lại tia UVA, UVB từ nắng, ngăn không cho chúng tác động lên da gây sạm nám, lão hóa sớm. Bên cạnh đó, sản phẩm sẽ hạn chế tốt nguy cơ gây kích ứng, phù hợp cho làn da nhạy cảm.', N'Phấn Nước Làm Dịu Da Clio Kill Cover Calming Cushion SPF40 PA++ (12gx2) (Tặng 1 lõi refill)', 100, 1, NULL, 1, 15)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (16520001, N'ClioStay_1.jpg', CAST(N'2024-06-22' AS Date), 683000, N'Clio Stay Perfect Tone Up Cushion là phấn nước chăm sóc da đa năng với chức năng nâng tông làm sáng da, cải thiện nếp nhăn kết hợp chống nắng. 
Sản phẩm trang điểm với hiệu ứng tràn đầy sức sống với sắc hồng giúp làn da tươi tắn và rạng rỡ suốt thời gian dài.
Phấn nước Clio sở hữu công thức hạt phấn siêu nhỏ, chứa sắc hồng giúp cân bằng và làm sáng hồng màu da. Hiệu ứng mờ mịn giúp làn da của bạn trông thật tự nhiên với nền da sáng hồng, mịn màng tươi tắn không tì vết. Bên cạnh đó, Clio Stay Perfect Tone Up Cushion là phấn nước thể chống nắng với spf50+ pa+++ nhằm tăng cường lớp bảo vệ da. Lớp nền siêu mỏng bám cố định trên da, duy trì lớp trang điểm lâu trôi cả ngày.
Công thức phấn nước Clio có khả năng cấp khóa ẩm bên trong, giúp ngăn ngừa tình trạng da thất thoát độ ẩm. Ngược lại, sản phẩm bổ sung độ ẩm cho da, làm mịn nếp nhăn và cải thiện làn da mịn màng, khỏe khoắn hơn.', N'Phấn Nước Nâng Tông Da Clio Stay Perfect Tone Up Cushion Spf50+ Pa++++ 12g (tặng kèm lõi)', 100, 1, NULL, 1, 15)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (16560002, N'Clio_StayPerfectFinishPact_1.jpg', CAST(N'2024-06-28' AS Date), 523000, N'Phấn phủ Clio Stay Perfect Finish Pact với chức năng hút dầu vượt trội, kiểm soát bã nhờn giúp lớp trang điểm lâu trôi mà không bóng nhờn. Công thức hạt phấn nén có trọng lượng nhẹ, cùng khả năng thấm hút dầu thừa trên bề mặt da, giúp phấn phủ Clio có thể kiểm soát và duy trì bề mặt da ráo mịn trong suốt thời gian trang điểm.
Ngoài ra, Clio Stay Perfect Finish Pact sở hữu lớp phấn bột vô cùng mềm mại, nhẹ, cho cảm giác trên da rất thoải mái. Lớp phấn phủ không làm bít tắc lỗ chân lông, ngược lại sẽ hỗ trợ cố định và duy trì nền makeup khô ráo, trông tự nhiên, lâu trôi hơn. Bông mút nhung mịn của phấn phủ Clio sẽ giúp bạn dễ dàng điều chỉnh lượng phấn khi lấy ra ngoài và khi dàn trải trên da. Nhờ đó, makeup sẽ hạn chế tình trạng phấn dày cộm, không đồng đều, xuất hiện vết nứt phấn khi phủ phấn trên da.', N'Phấn Phủ Nén Kiềm Dầu Clio Stay Perfect Finish Pact 8g', 100, 1, NULL, 3, 15)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (16850032, N'Clio_KillCoverAiry_1.jpg', CAST(N'2024-06-29' AS Date), 299000, N'Sau khi đánh nền nhưng một vài đốm nâu, thâm mụn hay quầng thâm không được che phủ hoàn toàn. Khiến cho khuôn mặt không đồng nhất màu da. Lúc này bạn sẽ cần đến kem che khuyết điểm clio kill cover airy-fit concealer, giải pháp che phủ vết thâm chỉ trong tích tắc.
Đây là dòng sản phẩm trang điểm nền chuyên nghiệp từ CLIO PROFESSIONAL, với thiết kế đầu cọ cực bé (3mm) dễ dàng chấm lên vùng khuyết điểm nhỏ nhất, không gây ảnh hưởng đến vùng da khác. Chất kem mỏng nhẹ như không khí, che phủ tốt tệp với màu da, tự nhiên như da thật.', N'Kem Che Khuyết Điểm Tự Nhiên Clio Kill Cover Airy-Fit Concealer 3G (Color: 2.5 Ivory)', 100, 1, NULL, 4, 15)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (18200041, N'ClioGlowFitting_1.jpg', CAST(N'2024-06-22' AS Date), 819000, N'Phấn nước đa năng Clio sẽ đem lại hiệu quả bảo vệ và trang điểm cho làn da của bạn trở nên căng mướt.
Khả năng che phủ hoàn hảo, tạo ra làn da thứ hai rạng rỡ, làm nổi bậ t vẻ đẹp tự nhiên của khuôn mặt.
Cushion kết hợp bảo vệ da với chỉ số SPF50+ PA++++ giúp chống nắng, chống nếp nhăn, duy trì lớp nền rạng rỡ cả ngày.Tạo lớp nền mỏng mịn, lâu trôi và không bị lem.
Bột phấn nước cushion có thể cấp ẩm, duy trì làn da mềm mại khỏe khoắn trong suốt quá trình makeup. Ngoài ra, cushion Clio có thể nâng tông làm da sáng, che lấp các khuyết điểm trên da như lỗ chân lông, nếp nhăn...
Thiết kế bông mút hình dạng giọt nước giúp mang lại độ che phủ vừa vặn trên da ngay cả những vùng mỏng manh và khó tiếp cận trên khuôn mặt như xung quanh mũi', N'Phấn Nước Căng Mướt Da Clio Kill Cover Glow Fitting Cushion Spf50+ Pa+++ (15Gx2) (Tặng 1 Lõi Refill)', 100, 1, NULL, 1, 15)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (18303042, N'ClioTheNewFounwear_1.jpg', CAST(N'2024-06-22' AS Date), 399000, N'Clio Kill Cover Founwear là một trong những dòng sản phẩm cushion có khả năng che phủ cực đỉnh của thương hiệu Clio. 
Các sản phẩm đều được trang bị công thức che phủ - chống nhòe – chống lem trôi cấp độ cao giúp bạn dễ dàng duy trì lớp nền mịn mượt, lâu trôi cả ngày dài.
Trong đó, Clio Kill Cover The New Founwear Cushion là phấn nước Clio thế hệ mới với công thức che phủ đỉnh cao, giúp tạo ra lớp nền mới tinh tế hơn. Đây là sản phẩm nâng cấp từ Clio Kill Cover Founwear Cushion All New. Cushion Clio Kill Cover dễ dàng che phủ tốt các khuyết điểm trên bề mặt da như các nốt mụn, lỗ chân lông to sạm, vết nám, đồi mồi….', N'Phấn Nước Che Khuyết Điểm Hoàn Hảo Clio Kill Cover The New Founwear Cushion SPF50+ PA+++ 5G', 100, 1, NULL, 1, 15)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (18308321, N'ClioKillCoverCushion_1.jpg', CAST(N'2024-06-22' AS Date), 679000, N'Nằm trong bộ sưu tập Phiên bản giới hạn "Every Fruit Grocery" của Clio, phấn nước Kill Cover The New Founwear Cushion với hình ảnh ngọt ngào được lấy cảm hứng từ trái đào với sắc hồng tươi tắn, nhẹ nhàng thể hiện lớp nền makeup cũng nhẹ nhàng, tươi mới và rạng rỡ như thế.
Clio Kill Cover Founwear Là 1 trong những dòng cushion cho da dầu chất lượng và bán chạy nhất tại Hàn bởi khả năng kiểm soát dầu mà vẫn mỏng nhẹ trên da. Hãng ra mắt thêm phiên bản Peach - Every Fruit Grocery độc đáo, bản giới hạn với thiết kế màu hồng đào vô cùng xinh xắn.Vẫn chứa thành phần rau má làm dịu da, cải thiện bề mặt da thiếu sức sống và các thành phần HA giúp dưỡng ẩm và giữ ẩm dài lâu, đồng thời chữa lành tổn thương da, tăng cường hàng rào bảo vệ da. Kết cấu phấn mỏng, với các hạt phấn kích thước siêu nhỏ, trọng lượng nhẹ, tạo một lớp nền vô cùng tự nhiên trên da với độ bền màu đến 72h', N'Phấn Nước Clio Che Khuyết Điểm Kill Cover The New Founwear Cushion SPF50+ PA+++ (15g) (Tặng 1 lõi refill)', 100, 1, NULL, 1, 15)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (18942012, N'Clio_KillCoverFounwear_1.jpg', CAST(N'2024-06-29' AS Date), 555000, N'Khả năng che khuyết điểm tốt với kết cấu kem nhẹ, mỏng dễ tán bằng tay
Giúp che đi các khuyết điểm dễ thấy trên gương mặt như quầng thâm, bọng mắt, thâm mụn, đồi mồi…
Kill Cover Founwear Concealer lâu trôi trên da, giúp không để lộ khuyết điểm hoặc làm chảy nền trong nhiều giờ liền
Ngoài ra, bạn có thể dùng bảng màu kem che khuyết điểm Clio này để tạo khối và đánh sáng cho khuôn mặt (tùy tông màu cho từng vị trí khác nhau)', N'Kem Che Khuyết Điểm Clio Kill Cover Founwear Concealer Palette 6g (Color: 01 Pure Joy)', 100, 1, NULL, 4, 15)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (34200621, N'TheFaceShopPowerPerfection_1.jpg', CAST(N'2024-06-23' AS Date), 450000, N'Sở hữu làn da trắng sáng, mịn màng luôn là niềm ước mơ của mọi cô gái. Nhưng không phải ai sinh ra, cũng may mắn có được làn da không tỳ vết ấy. 
Đôi lúc, kể cả khi bạn đã trang điểm hoàn chỉnh với đầy đủ các bước nền cơ bản cũng không thể che hết những khuyết điểm không mong muốn. Thế nhưng, “phù thủy” Kem nền đa năng POWER PERFECTION BB CREAM SPF37 PA++ có thể giúp bạn thực hiện điều này.', N'Kem Nền Đa Năng THE FACE SHOP Power Perfection Bb Cream Spf37 Pa++ 20G', 100, 1, NULL, 2, 93)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (36000001, N'TheFaceShopInkLasting_1.jpg
', CAST(N'2024-06-23' AS Date), 649000, N'Đầu tiên phải nói đến “kem nền” là bước trang điểm căn bản và cần thiết nhất khi make-up. Để có lớp nền cực lâu trôi, chống xỉn màu, không lộ khuyết điểm mà làn da trở nên hoàn hảo phải dùng đến Ink Lasting Foundation Slim Fit EX. Một sản phẩm kem nền đa năng của THEFACESHOP, được hàng triệu phụ nữ Hàn Quốc và Châu Á yêu thích trong thời gian gần đây.
Kem nền lâu trôi chống nắng Ink Lasting Foundation Slim Fit Ex có chất kem lỏng mịn, khả năng tán đều trên da tạo lớp nền mỏng tanh và dễ dàng tiệp màu da, không để lộ vân kem. Nhờ đó, lớp nền sẽ trở nên mỏng mịn tự nhiên, tạo độ che phủ hoàn hảo, không để lộ khuyết điểm nào.', N'Kem Nền Lâu Trôi Chống Nắng THE FACE SHOP Ink Lasting Foundation Slim Fit Ex Spf30 Pa++ (30Ml)', 100, 1, NULL, 2, 93)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (40760012, N'goodal_2.jpg', CAST(N'2024-08-05' AS Date), 749000, N'oodal Green Tangerine Vita C Dark Spot Care Serum là tinh chất dưỡng sáng da hiệu quả, sở hữu bảng thành phần làm trắng da gấp đôi niacinamide (4%) cùng vitamin C và arbutin. Sản phẩm tập trung làm giảm các vùng đốm nâu, mờ thâm sạm một cách mạnh mẽ, đồng thời cải thiện da sáng vượt trội từ sâu bên trong.

Đối với làn da có đốm nâu, thâm sạm do các nguyên nhân như thâm mụn, nắng, sắc tố da… cần được chăm sóc đặc biệt với các sản phẩm làm sáng chuyên sâu như Goodal Green Tangerine Vita C Dark Spot Care Serum. Sản phẩm cải thiện các khuyết điểm như mờ đốm nâu, vùng da sạm nám đồng thời chống oxy hóa, dưỡng da sáng đều màu, mịn màng.

Tinh chất làm sáng da Goodal nhân đôi thành phần làm sáng da (với 4% niacinamide) đem lại hiệu quả dưỡng da sáng trắng vượt trội. Hoạt chất này giúp ức chế quá trình tổng hợp hắc tố melanin, ngăn ngừa hình thành đốm nâu và vùng da sạm nám (đặc biệt do mụn gây nên). Ngoài ra, serum được cung cấp thành phần vitamin C mạnh mẽ từ chiết xuất quả quýt xanh (Tangerine vita C, tại đảo jeju) giúp xây dựng hệ thống chống oxy hóa, ngăn ngừa tình trạng lão hóa sớm ở da đồng thời góp phần chăm sóc da sáng đều màu.', N'Tinh Chất Goodal Hỗ Trợ Làm Sáng Da, Mờ Đốm Nâu Green Tangerine Vita C Dark Spot Care Serum 40ml', 100, 1, NULL, 16, 31)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (40760032, N'goodal_1.jpg', CAST(N'2024-08-05' AS Date), 650000, N'Kem dưỡng Goodal Green Tangerine Vita C Dark Spot Care Cream bổ sung vitamin C và vitamin E giúp tăng cường khả năng giữ ẩm, cân bằng lượng dầu & nước trên bề mặt giúp làn da luôn khô thoáng, ẩm mượt.

Thành phần vitamin C từ chiết xuất quýt xanh giúp kem dưỡng Goodal Green Tangerine Vita C có thể chống oxy hóa, điều hòa lượng hắc tố melanin bên dưới da. Góp phần cải thiện làn da tối màu, dưỡng da sáng hơn khỏe hơn trước ánh nắng. Sản phẩm có kết cấu kem mỏng nhẹ, khả năng thẩm thấu vượt trội.', N'Kem Dưỡng Goodal Làm Sáng Da Green Tangerine Vita C Dark Spot Care Cream 40ml', 100, 1, NULL, 16, 31)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (49521082, N'goodal_3.jpg', CAST(N'2024-08-05' AS Date), 29000, N'Mỗi ngày một mặt nạ Goodal Infused Water Mild Sheet Mask cho làn da của bạn được chăm sóc trọn vẹn, xinh xắn cả ngày. Mặt nạ giấy Goodal được cải tiến với chất liệu giấy lyocell đạt chứng nhận vegan, an toàn và thân thiện với làn da và môi trường.

Goodal Infused Water Mild Sheet Mask là dòng mặt nạ thiên nhiên giàu dưỡng chất, được chiết xuất từ các thành phần có giá trị dinh dưỡng cao như tràm trà, quả quýt, trà xanh… đem lại hiệu quả nuôi dưỡng cho các vấn đề da khác nhau như mụn, nhờn, da khô, thâm sạm….

Lyocell là chất liệu giấy thân thiện với môi trường và làn da (an toàn cho cả làn da nhạy cảm), có độ mềm mịn hơn cả lụa, ôm sát vào da và vận chuyển dưỡng chất sâu & nhanh vào tế bào da, đồng thời chất giấy mỏng nhẹ cho cảm giác thông thoáng, dễ chịu khi đắp.', N'Mặt Nạ Giấy Dưỡng Ẩm, Làm Sáng Da Goodal Infused Water Mild Sheet Mask 20g', 100, 1, NULL, 22, 31)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (49720042, N'goodal_5.jpg', CAST(N'2024-08-05' AS Date), 59000, N'Đối với khí hậu nhiệt đới, nắng nóng quanh năm như ở nước ta thì làn da luôn dễ dàng tiếp xúc và chịu tác động từ ánh nắng mặt trời. Bên cạnh đó, khói bụi, ô nhiễm môi trường, nước bẩn… cũng là những yếu tố tác hại đến làn da, khiến sức đề kháng giảm sút và da bị tổn thương.

Mặt nạ dưỡng ẩm làm dịu da Goodal Houttuynia Cordata Calming Mask là sản phẩm dưỡng da từ chiết xuất diếp cá có khả năng phục hồi da hư tổn đồng thời cấp ẩm làm dịu da, tăng cường sức đề kháng giúp nuôi dưỡng da khỏe khoắn, ẩm mịn.Đối với khí hậu nhiệt đới, nắng nóng quanh năm như ở nước ta thì làn da luôn dễ dàng tiếp xúc và chịu tác động từ ánh nắng mặt trời. Bên cạnh đó, khói bụi, ô nhiễm môi trường, nước bẩn… cũng là những yếu tố tác hại đến làn da, khiến sức đề kháng giảm sút và da bị tổn thương.

Mặt nạ dưỡng ẩm làm dịu da Goodal Houttuynia Cordata Calming Mask là sản phẩm dưỡng da từ chiết xuất diếp cá có khả năng phục hồi da hư tổn đồng thời cấp ẩm làm dịu da, tăng cường sức đề kháng giúp nuôi dưỡng da khỏe khoắn, ẩm mịn.', N'Mặt Nạ Giấy Dưỡng Ẩm Làm Dịu Da Goodal Houttuynia Cordata Calming Mask 30Ml (Heartleaf)', 100, 1, NULL, 22, 31)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (49880012, N'goodal_4.jpg', CAST(N'2024-08-05' AS Date), 79000, N'Goodal Black Carrot Vita-A Retinol Lifting Gel Sheet Mask là mặt nạ giấy thuần chay, với thành phần chính chứa vitamin A, retinol & collagen - bộ 3 sức mạnh giúp chăm sóc da săn chắc, mịn màng. Mặt nạ tập trung chăm sóc vùng da kém săn chắc & có lỗ chân lông to, sạm màu.

Với khả năng làm đều màu da, nâng cơ làm săn chắc da đồng thời giảm sắc tố lỗ chân lông, Black Carrot Vita-A Retinol Lifting Gel Sheet Mask phù hợp cho làn da có dấu hiệu lão hóa, cần cải thiện độ săn chắc và lỗ chân lông sậm màu. Bên cạnh đó, Goodal Vita-A Retinol Mask còn cấp ẩm và làm đều màu da.Goodal Black Carrot Vita-A Retinol Lifting Gel Sheet Mask là mặt nạ giấy thuần chay, với thành phần chính chứa vitamin A, retinol & collagen - bộ 3 sức mạnh giúp chăm sóc da săn chắc, mịn màng. Mặt nạ tập trung chăm sóc vùng da kém săn chắc & có lỗ chân lông to, sạm màu.

Với khả năng làm đều màu da, nâng cơ làm săn chắc da đồng thời giảm sắc tố lỗ chân lông, Black Carrot Vita-A Retinol Lifting Gel Sheet Mask phù hợp cho làn da có dấu hiệu lão hóa, cần cải thiện độ săn chắc và lỗ chân lông sậm màu. Bên cạnh đó, Goodal Vita-A Retinol Mask còn cấp ẩm và làm đều màu da.', N'Mặt Nạ Giấy Goodal Dưỡng Da Săn Chắc Black Carrot Vita-A Retinol Lifting Gel Sheet Mask 30ml', 100, 1, NULL, 22, 31)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (53000995, N'Thefaceshop_SunEco_1.jpg', CAST(N'2024-06-28' AS Date), 500000, N'Công dụng: Phấn phủ chống nắng THEFACESHOP SUN ECO NO SHINE SUN POWDER với những hạt phấn cực tơi mịn giúp cho da mềm mại tự nhiên hơn, nhẹ nhàng và khô thoáng. 
Thích hợp: Cho da dầu nhờn
Natural Sun Eco No shine sun powder với những hạt phấn cực tơi mịn giúp cho da mềm mại tự nhiên hơn, nhẹ nhàng và khô thoáng. Hạt phấn không có màu nên phù hợp với mọi tông màu da, cho làn da đẹp mịn màng và tự nhiên nhất có thể. Phấn phủ Natural Sun Eco No shine sun powder  được đánh giá là rất “đáng đồng tiền bát gạo”. Là dạng phấn có cấu trúc siêu mỏng nhẹ, giúp che phủ lỗ chân lông và có tác dụng chống nắng, dưỡng ẩm cho da. Phấn có thể dùng được cả trước và sau khi trang điểm.
Khả năng kiềm dầu tốt, giúp làm giảm bóng dầu, giúp lớp nền được cố định, không bị trôi hay xuống màu. Có thể phủ phấn sau khi trang điểm giúp định hình lớp trang điểm hoặc trước khi trang điểm, trên mặt mộc đã được dưỡng ẩm giúp kiềm dầu. Bạn chỉ cần dặm nhẹ một lớp phấn mỏng sau bước dưỡng ẩm hoặc phủ đều trên lớp makeup đã hoàn thiện là có thể tung tăng cả ngày dài mà không lo da bị đổ dầu hay lớp nền xuống tông', N'Phấn Phủ Chống Nắng THE FACE SHOP Natural Sun Eco No Shine Sun Powder Spf30Pa++ (13G)', 100, 1, NULL, 3, 93)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (53015062, N'TheFaceShop_Fmgt_1.jpg', CAST(N'2024-06-30' AS Date), 650000, N'Kem lót dạng thỏi Fmgt Ink Lasting Stick Primer tiện lợi cho những cô nàng yêu thích sự gọn nhẹ, đơn giản. Sản phẩm được thiết kế như thỏi son, với kết cấu dạng sáp mỏng tạo lớp lót vô cùng mỏng mịn, nhẹ không nhờn rít da. Ink Lasting Stick Primer giúp che mờ đi các lỗ chân lông to trên gương mặt, hạn chế dầu thừa vùng chữ T của khuôn mặt. Đồng thời sản phẩm cấp giữ ẩm, cho nền da bên dưới lớp trang điểm vẫn luôn mềm mại, giữ được độ ẩm cần thiết.
Ink Lasting Stick Primer chứa các thành phần dưỡng ẩm như panthenol, chiết xuất hoa hồng… là các chất cấp ẩm, ngăn ngừa da mất nước đồng thời chăm sóc làn da mịn màng hơn. Điều này khiến kem lót dạng thỏi THE FACE SHOP vừa có khả năng dưỡng ẩm cho da, vừa góp phần duy trì lớp nền mượt mà, lâu trôi.', N'Kem Lót Dạng Thỏi THE FACE SHOP Fmgt Ink Lasting Stick Primer 10g', 100, 1, NULL, 5, 93)
INSERT [dbo].[san_pham] ([ma_sp], [anh], [ngay_cap_nhat], [gia], [mo_ta], [ten_sp], [ton_kho], [trang_thai], [ma_loai_sp], [ma_lsp], [ma_th]) VALUES (53015081, N'thefaceshop_fmmgt_veilglowblusher_1.jpg', CAST(N'2024-08-03' AS Date), 399000, N'Điểm nổi bật của má hồng Fmgt Veil Glow Blusher
Công thức má hồng ánh nhũ, lâu trôi ngay cả khi đeo khẩu trang
Phấn với công thức ngọc trai mang lại ánh nhũ tự nhiên
Kết cấu mềm mại, sử dụng trên làn da dầu và mồ hôi vẫn không bị vón cục
Hiệu ứng làn da đầy sức sống và rạng rỡ', N'Phấn Má Hồng THE FACE SHOP Fmgt Veil Glow Blusher ', 100, 1, NULL, 6, 93)
GO
INSERT [dbo].[tai_khoan] ([ten_tai_khoan], [dia_chi], [ho_va_ten], [mat_khau], [role], [sdt], [email]) VALUES (N'nhanne', N'Quận 12, tp HCM', N'Nguyễn Nhân', N'$2a$10$A1.79yvcd3vtvYEXUH09tOYw7K9mf58QifGFPK2wxheR8wAjssd12', 0, N'0334564751', N'nhannguyenx2000@gmail.com')
INSERT [dbo].[tai_khoan] ([ten_tai_khoan], [dia_chi], [ho_va_ten], [mat_khau], [role], [sdt], [email]) VALUES (N'nnahnn', N'Quận 12, tp HCM', N'Nguyễn Nhân', N'$2a$10$cCcVdXn4LUsDOov4zJWSqOkMdUOI/S1ZjjAwRtSW.v7uHGQ/XQp3q', 1, N'0334564751', N'nhannguyenx@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[thuong_hieu] ON 

INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (1, N'ahc_1.jpg', N'AHC')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (2, N'aishitoto_1.jpg', N'AISHITOTO')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (3, N'axe_1.jpg', N'AXE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (4, N'anessa_1.jpg', N'ANESSA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (5, N'aprilskin_1.jpg', N'APRILSKIN')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (6, N'balance_1.jpg', N'BALANCE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (7, N'blackrouge_1.jpg', N'BLACK ROUGE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (8, N'burberry_1.jpg', N'BURBERRY')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (9, N'biore_1.jpg', N'BIORE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (10, N'banilaco_1.jpg', N'BANILA CO')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (11, N'calvinklein_1.jpg', N'CALVIN KLEIN')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (12, N'cathydoll_1.jpg', N'CATHY DOLL')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (13, N'cocoon_1.jpg', N'COCOON')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (14, N'christianlenart_1.jpg', N'CHRISTIAN LENART')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (15, N'clio_1.jpg', N'CLUB CLIO')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (16, N'dhc_1.jpg', N'DHC')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (17, N'diana_1.jpg', N'DIANA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (18, N'dearDahila_1.jpg', N'DEAR DAHILA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (19, N'dove_1.jpg', N'DOVE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (20, N'dermalogica_1.jpg', N'DERMALOGICA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (21, N'ellips_1.jpg', N'ELLIPS')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (22, N'emmie_1.jpg', N'EMMIE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (23, N'elasten_1.jpg', N'ELASTEN')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (24, N'elite_1.jpg', N'ELITE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (25, N'evian_1.jpg', N'EVIAN')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (26, N'fox_1.jpg', N'F.O.X')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (27, N'fino_1.jpg', N'FINO')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (28, N'frudia_1.jpg', N'FRUDIA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (29, N'flawsome_1.jpg', N'FLAWSOME')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (30, N'felina_1.jpg', N'FELINA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (31, N'goodal_1.jpg', N'GOODAL')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (32, N'gatsby_1.jpg', N'GATSBY')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (33, N'glint_1.jpg', N'GLINT')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (34, N'gota_1.jpg', N'GOTA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (35, N'garnier_1.jpg', N'GARNIER')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (36, N'hadalabo_1.jpg', N'HADALABO')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (37, N'hairburst_1.jpg', N'HAIRBURST')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (38, N'happyskin_1.jpg', N'HAAPYSKIN')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (39, N'hugoboss_1.jpg', N'HUGOBOSS')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (40, N'hanyul_1.jpg', N'HANYUL')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (41, N'imfrom_1.jpg', N'I''M FROM')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (42, N'illiyoon_1.jpg', N'ILLIYOON')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (43, N'innerb_1.jpg', N'INNER B')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (44, N'innisfree_1.jpg', N'INNISFREE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (45, N'iope_1.jpg', N'IOPE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (46, N'jeanpaulgaultier_1.jpg', N'JEAN PAUL GAULTIER')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (47, N'jmella_1.jpg', N'JMELLA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (48, N'jmsolution_1.jpg', N'JMSOLUTION')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (49, N'johnsons_1.jpg', N'JOHNSON''S')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (50, N'jomi_1.jpg', N'JOMI')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (51, N'kpalette_1.jpg', N'K-PALETTE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (52, N'kai_1.jpg', N'KAI')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (53, N'kose_1.jpg', N'KOSÉ')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (54, N'kiara_1.jpg', N'KIARA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (55, N'kissme_1.jpg', N'KISS ME')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (56, N'langelica_1.jpg', N'L''ANGELICA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (57, N'lorealparis_1.jpg', N'L''OREAL PARIS')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (58, N'laRochePosay_1.jpg', N'LA ROCHE-POSAY')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (59, N'lacoste_1.jpg', N'LACOSTE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (60, N'labnature_1.jpg', N'LAB NATURE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (61, N'mlab_1.jpg', N'M-LAB')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (62, N'miseenscene_1.jpg', N'MISE EN SCENE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (63, N'malissakiss_1.jpg', N'MALISSA KISS')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (64, N'maybeline_1.jpg', N'MAYBELINE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (65, N'moi_1.jpg', N'M.O.I')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (66, N'naturerepublic_1.jpg', N'NATURE REPUBLIC')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (67, N'naturybio_1.jpg', N'NATURY BIO')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (68, N'nucos_1.jpg', N'NUCOS')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (69, N'nuxe_1.jpg', N'NUXE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (70, N'neutrogena_1.jpg', N'NEUTROGENA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (71, N'omuse_1.jpg', N'O''MUSE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (72, N'obagi_1.jpg', N'OBAGI')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (73, N'ohui_1.jpg', N'OHUI')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (74, N'olay_1.jpg', N'OLAY')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (75, N'organicshop_1.jpg', N'ORGANIC SHOP')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (76, N'pantene_1.jpg', N'PANTENE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (77, N'parisian_1.jpg', N'PARISIAN')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (78, N'paulachoice_1.jpg', N'PAULA''S CHOICE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (79, N'payot_1.jpg', N'PAYOT')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (80, N'ponds_1.jpg', N'PONDS')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (81, N'qiriness_1.jpg', N'QIRINESS')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (82, N'ralphlauren_1.jpg', N'RALPH LAUREN')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (83, N'realtechniques_1.jpg', N'REAL TECHNIQUES')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (84, N'revox_1.jpg', N'REVOX')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (85, N'rexona_1.jpg', N'REXONA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (86, N'romand_1.jpg', N'ROMAND')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (87, N'saborino_1.jpg', N'SABORINO')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (88, N'salvatoreferragamo_1.jpg', N'SALVATORE FERRAGAMO')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (89, N'sexylook_1.jpg', N'SEXYLOOK')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (90, N'shuuemura_1.jpg', N'SHU UEMURA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (91, N'secret_1.jpg', N'SECRET')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (92, N'tzone_1.jpg', N'T-ZONE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (93, N'thefaceshop_1.jpg', N'THE FACE SHOP')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (94, N'tocobo_1.jpg', N'TOCOBO')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (95, N'tommyhilfiger_1.jpg', N'TOMMY HILFIGER')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (96, N'thelab_1.jpg', N'THE LAB')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (97, N'unicharm_1.jpg', N'UNICHARM')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (98, N'uno_1.jpg', N'UNO')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (99, N'vacosi_1.jpg', N'VACOSI')
GO
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (100, N'vaseline_1.jpg', N'VASELINE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (101, N'veet_1.jpg', N'VEET')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (102, N'vegick_1.jpg', N'VEGICK')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (103, N'versace_1.jpg', N'VERSACE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (104, N'wakamono_1.jpg', N'WAKAMONO')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (105, N'warnke_1.jpg', N'WARNKE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (106, N'weilaiya_1.jpg', N'WEILAIYA')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (107, N'welsonbeauty_1.jpg', N'WELSON BEAUTY')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (108, N'thewhoo_1.jpg', N'WHOO')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (109, N'yankee_1.jpg', N'YANKEE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (110, N'3ce_1.jpg', N'3CE')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (111, N'3wclinic_1.jpg', N'3W CLINIC')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (112, N'50megumi_1.jpg', N'50 MEGUMI')
INSERT [dbo].[thuong_hieu] ([ma_th], [anh], [ten_th]) VALUES (113, N'82x_1.jpg', N'82X')
SET IDENTITY_INSERT [dbo].[thuong_hieu] OFF
GO
ALTER TABLE [dbo].[don_hang]  WITH CHECK ADD  CONSTRAINT [FKo3wgvbqncb83pv1ubybbl2doa] FOREIGN KEY([ten_tai_khoan])
REFERENCES [dbo].[tai_khoan] ([ten_tai_khoan])
GO
ALTER TABLE [dbo].[don_hang] CHECK CONSTRAINT [FKo3wgvbqncb83pv1ubybbl2doa]
GO
ALTER TABLE [dbo].[don_hang_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FK49tijwiequji3wos0kgliqwfl] FOREIGN KEY([ma_sp])
REFERENCES [dbo].[san_pham] ([ma_sp])
GO
ALTER TABLE [dbo].[don_hang_chi_tiet] CHECK CONSTRAINT [FK49tijwiequji3wos0kgliqwfl]
GO
ALTER TABLE [dbo].[don_hang_chi_tiet]  WITH CHECK ADD  CONSTRAINT [FKocp4rriw87qh8cj5yn6p7r8vx] FOREIGN KEY([ma_dh])
REFERENCES [dbo].[don_hang] ([ma_dh])
GO
ALTER TABLE [dbo].[don_hang_chi_tiet] CHECK CONSTRAINT [FKocp4rriw87qh8cj5yn6p7r8vx]
GO
ALTER TABLE [dbo].[gio_hang]  WITH CHECK ADD  CONSTRAINT [FKa48qpvgtcncg1yiw78u5p8ifx] FOREIGN KEY([ten_tai_khoan])
REFERENCES [dbo].[tai_khoan] ([ten_tai_khoan])
GO
ALTER TABLE [dbo].[gio_hang] CHECK CONSTRAINT [FKa48qpvgtcncg1yiw78u5p8ifx]
GO
ALTER TABLE [dbo].[gio_hang]  WITH CHECK ADD  CONSTRAINT [FKjbtmt8pi8pldv5bxcq7uf2f45] FOREIGN KEY([ma_sp])
REFERENCES [dbo].[san_pham] ([ma_sp])
GO
ALTER TABLE [dbo].[gio_hang] CHECK CONSTRAINT [FKjbtmt8pi8pldv5bxcq7uf2f45]
GO
ALTER TABLE [dbo].[loai_sp]  WITH CHECK ADD  CONSTRAINT [FKcmb5incvq6nl663ho1k6j22un] FOREIGN KEY([ma_dmlsp])
REFERENCES [dbo].[danh_muc_loai_sp] ([ma_dmlsp])
GO
ALTER TABLE [dbo].[loai_sp] CHECK CONSTRAINT [FKcmb5incvq6nl663ho1k6j22un]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FK9y2gatffb1nk6bih0ed9qakbd] FOREIGN KEY([ma_lsp])
REFERENCES [dbo].[loai_sp] ([ma_lsp])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FK9y2gatffb1nk6bih0ed9qakbd]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FKkemow3s7ef5jmhjabxc72beu3] FOREIGN KEY([ma_th])
REFERENCES [dbo].[thuong_hieu] ([ma_th])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FKkemow3s7ef5jmhjabxc72beu3]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FKsfqrxk1j5wfr2a97n1ehes7s5] FOREIGN KEY([ma_loai_sp])
REFERENCES [dbo].[danh_muc_loai_sp] ([ma_dmlsp])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FKsfqrxk1j5wfr2a97n1ehes7s5]
GO
ALTER TABLE [dbo].[don_hang]  WITH CHECK ADD CHECK  (([trang_thai]='DA_THANH_TOAN' OR [trang_thai]='CHUA_THANH_TOAN' OR [trang_thai]='HOAN_TAT' OR [trang_thai]='DANG_XU_LY' OR [trang_thai]='HUY_DON'))
GO
