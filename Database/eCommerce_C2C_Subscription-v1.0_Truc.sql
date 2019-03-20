USE [eCommerce_C2C_Subscription_Truc]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandId] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](255) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pro]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pro](
	[ProId] [int] IDENTITY(1,1) NOT NULL,
	[CatId] [int] NULL,
	[BrandId] [int] NULL,
	[Unit] [int] NOT NULL,
	[ProName] [nvarchar](255) NOT NULL,
	[Img] [varchar](255) NULL,
	[Description] [text] NULL,
	[Price] [varchar](255) NULL,
	[PriceAfter] [varchar](255) NULL,
	[Active] [bit] NOT NULL,
	[DateAdd] [datetime] NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [Pk_SanPham_Id] PRIMARY KEY CLUSTERED 
(
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProCat]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCat](
	[CatId] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](255) NULL,
	[Active] [bit] NULL,
	[DateAdd] [datetime] NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_ProductsCategories] PRIMARY KEY CLUSTERED 
(
	[CatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rcpt]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rcpt](
	[RcptId] [int] IDENTITY(1,1) NOT NULL,
	[DateAdd] [datetime] NOT NULL,
	[DateEdit] [datetime] NOT NULL,
 CONSTRAINT [Pk_HoaDon_Id] PRIMARY KEY CLUSTERED 
(
	[RcptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuy]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuy](
	[RcptBuyId] [int] NOT NULL,
 CONSTRAINT [PK_ReceiptBuys] PRIMARY KEY CLUSTERED 
(
	[RcptBuyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuyDet]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuyDet](
	[RcptBuyId] [int] NOT NULL,
	[ShpId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
 CONSTRAINT [PK_ReceiptsBuysDetails] PRIMARY KEY CLUSTERED 
(
	[RcptBuyId] ASC,
	[ShpId] ASC,
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuySta]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuySta](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[RcptBuyId] [int] NULL,
 CONSTRAINT [PK_ReceiptsBuysStates] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuyStaDet]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuyStaDet](
	[StaId] [int] NOT NULL,
	[StepId] [int] NOT NULL,
	[IsDone] [bit] NULL,
 CONSTRAINT [PK_ReceiptsBuysStatesDetails] PRIMARY KEY CLUSTERED 
(
	[StaId] ASC,
	[StepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptStaStep]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptStaStep](
	[StepId] [int] NOT NULL,
	[StepCont] [nvarchar](255) NULL,
	[StepOrder] [int] NULL,
 CONSTRAINT [PK_ReceiptsBuysStatesSteps] PRIMARY KEY CLUSTERED 
(
	[StepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptSub]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptSub](
	[RcptSubId] [int] NOT NULL,
 CONSTRAINT [PK_ReceiptsSubscriptions] PRIMARY KEY CLUSTERED 
(
	[RcptSubId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptSubDet]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptSubDet](
	[RcptSubId] [int] NOT NULL,
	[SubId] [int] NOT NULL,
	[MerId] [int] NOT NULL,
 CONSTRAINT [PK_ReceiptsSubscriptionsDetails] PRIMARY KEY CLUSTERED 
(
	[RcptSubId] ASC,
	[SubId] ASC,
	[MerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sub]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sub](
	[SubId] [int] IDENTITY(1,1) NOT NULL,
	[SubContent] [nvarchar](255) NULL,
	[DurDay] [int] NULL,
	[Price] [nvarchar](50) NULL,
 CONSTRAINT [PK_Subscriptions] PRIMARY KEY CLUSTERED 
(
	[SubId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubDet]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubDet](
	[SubId] [int] NOT NULL,
	[MerId] [int] NOT NULL,
	[DateStart] [datetime] NULL,
	[DateEnd] [datetime] NULL,
 CONSTRAINT [PK_SubscriptionsDetails] PRIMARY KEY CLUSTERED 
(
	[SubId] ASC,
	[MerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usr]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usr](
	[UsrId] [int] IDENTITY(1,1) NOT NULL,
	[Login] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[Active] [bit] NULL,
	[Email] [varchar](255) NULL,
	[UserName] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Phone] [varchar](255) NULL,
	[DateAdd] [datetime] NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UsrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsrCus]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsrCus](
	[CusId] [int] NOT NULL,
 CONSTRAINT [PK_UsersCustomers] PRIMARY KEY CLUSTERED 
(
	[CusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsrCusCart]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsrCusCart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[CusId] [int] NULL,
	[IpAddress] [varchar](255) NULL,
 CONSTRAINT [PK_UsersCustomersCarts] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsrCusCartDet]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsrCusCartDet](
	[CartId] [int] NOT NULL,
	[ShpId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
	[Qty] [int] NULL,
 CONSTRAINT [PK_UsersCustomersCartsDetails] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC,
	[ShpId] ASC,
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsrMer]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsrMer](
	[MerId] [int] NOT NULL,
 CONSTRAINT [PK_Merchants] PRIMARY KEY CLUSTERED 
(
	[MerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsrMerShp]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsrMerShp](
	[ShpId] [int] IDENTITY(1,1) NOT NULL,
	[MerId] [int] NULL,
	[ShpName] [nvarchar](255) NULL,
	[DateStart] [datetime] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_UsersMerchantsShops] PRIMARY KEY CLUSTERED 
(
	[ShpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsrMerShpPro]    Script Date: 3/20/2019 6:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsrMerShpPro](
	[ShpId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
	[ProQuantity] [int] NULL,
	[IsOutOfStock] [bit] NULL,
 CONSTRAINT [PK_ProductQuantity] PRIMARY KEY CLUSTERED 
(
	[ShpId] ASC,
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandId], [BrandName]) VALUES (1, N'Adidas')
INSERT [dbo].[Brand] ([BrandId], [BrandName]) VALUES (2, N'Nike')
INSERT [dbo].[Brand] ([BrandId], [BrandName]) VALUES (3, N'Vans')
INSERT [dbo].[Brand] ([BrandId], [BrandName]) VALUES (4, N'Reebok')
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Pro] ON 

INSERT [dbo].[Pro] ([ProId], [CatId], [BrandId], [Unit], [ProName], [Img], [Description], [Price], [PriceAfter], [Active], [DateAdd], [DateEdit]) VALUES (1, 1, 1, 1, N'UltraBoost 19', N'ultraboost19', N'Running reinvented. These high-performance neutral running shoes deliver unrivaled comfort and energy return. The lightweight and propulsive shoes have a seamless knit upper that''s engineered with motion weave technology to provide stretch while also holding your foot in place as you run. The second-skin fit follows the shape of your foot to reduce pressure points.', N'4000000', N'', 1, CAST(0x0000AA1600F02E1D AS DateTime), NULL)
INSERT [dbo].[Pro] ([ProId], [CatId], [BrandId], [Unit], [ProName], [Img], [Description], [Price], [PriceAfter], [Active], [DateAdd], [DateEdit]) VALUES (7, 2, 2, 0, N'Nike ACG Wildwood', N'nikeacgwild', N'Nike ACG Wildwood', N'3500000', N'', 1, CAST(0x0000AA1600F02E1D AS DateTime), NULL)
INSERT [dbo].[Pro] ([ProId], [CatId], [BrandId], [Unit], [ProName], [Img], [Description], [Price], [PriceAfter], [Active], [DateAdd], [DateEdit]) VALUES (9, 2, 3, 0, N'WOMEN''S WARD LOW TOP SNEAKER', N'WOMEN''S WARD LOWTOPSNEAKER', N'Canvas upper in a low top skate sneaker style with a round toe', N'2000000', N'', 1, CAST(0x0000AA1600F02E1D AS DateTime), NULL)
INSERT [dbo].[Pro] ([ProId], [CatId], [BrandId], [Unit], [ProName], [Img], [Description], [Price], [PriceAfter], [Active], [DateAdd], [DateEdit]) VALUES (11, 4, 4, 0, N'Reebok BS6419', N' Reebok BS6419', N' Reebok BS6419', N'1000000', N'0', 1, CAST(0x0000AA1600F02E1D AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Pro] OFF
SET IDENTITY_INSERT [dbo].[ProCat] ON 

INSERT [dbo].[ProCat] ([CatId], [CatName], [Active], [DateAdd], [DateEdit]) VALUES (1, N'Male Sneakers', 1, CAST(0x0000AA1600E2115F AS DateTime), NULL)
INSERT [dbo].[ProCat] ([CatId], [CatName], [Active], [DateAdd], [DateEdit]) VALUES (2, N'Female Sneakers', 1, CAST(0x0000AA1600E2115F AS DateTime), NULL)
INSERT [dbo].[ProCat] ([CatId], [CatName], [Active], [DateAdd], [DateEdit]) VALUES (3, N'Casual', 1, CAST(0x0000AA1600E2115F AS DateTime), NULL)
INSERT [dbo].[ProCat] ([CatId], [CatName], [Active], [DateAdd], [DateEdit]) VALUES (4, N'Sport', 1, CAST(0x0000AA1600E2115F AS DateTime), NULL)
INSERT [dbo].[ProCat] ([CatId], [CatName], [Active], [DateAdd], [DateEdit]) VALUES (5, N'Trending', 1, CAST(0x0000AA1600E2115F AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[ProCat] OFF
SET IDENTITY_INSERT [dbo].[Rcpt] ON 

INSERT [dbo].[Rcpt] ([RcptId], [DateAdd], [DateEdit]) VALUES (1, CAST(0x0000AA16011D7042 AS DateTime), CAST(0x0000AA16011D7042 AS DateTime))
INSERT [dbo].[Rcpt] ([RcptId], [DateAdd], [DateEdit]) VALUES (2, CAST(0x0000AA16011D7042 AS DateTime), CAST(0x0000AA16011D7042 AS DateTime))
SET IDENTITY_INSERT [dbo].[Rcpt] OFF
INSERT [dbo].[RcptBuy] ([RcptBuyId]) VALUES (2)
INSERT [dbo].[RcptBuyDet] ([RcptBuyId], [ShpId], [ProId]) VALUES (2, 1, 7)
SET IDENTITY_INSERT [dbo].[RcptBuySta] ON 

INSERT [dbo].[RcptBuySta] ([StateId], [RcptBuyId]) VALUES (1, 2)
SET IDENTITY_INSERT [dbo].[RcptBuySta] OFF
INSERT [dbo].[RcptBuyStaDet] ([StaId], [StepId], [IsDone]) VALUES (1, 1, 1)
INSERT [dbo].[RcptBuyStaDet] ([StaId], [StepId], [IsDone]) VALUES (1, 2, 1)
INSERT [dbo].[RcptBuyStaDet] ([StaId], [StepId], [IsDone]) VALUES (1, 3, 1)
INSERT [dbo].[RcptBuyStaDet] ([StaId], [StepId], [IsDone]) VALUES (1, 4, 1)
INSERT [dbo].[RcptBuyStaDet] ([StaId], [StepId], [IsDone]) VALUES (1, 5, 1)
INSERT [dbo].[RcptBuyStaDet] ([StaId], [StepId], [IsDone]) VALUES (1, 6, 1)
INSERT [dbo].[RcptBuyStaDet] ([StaId], [StepId], [IsDone]) VALUES (1, 7, 1)
INSERT [dbo].[RcptStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (1, N'Đang  xác nhận', 1)
INSERT [dbo].[RcptStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (2, N'Đã xác nhận', 2)
INSERT [dbo].[RcptStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (3, N'Chờ đi nhận', 3)
INSERT [dbo].[RcptStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (4, N'Đang đi nhận', 4)
INSERT [dbo].[RcptStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (5, N'Đã nhận hàng', 5)
INSERT [dbo].[RcptStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (6, N'Đang chuyển', 6)
INSERT [dbo].[RcptStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (7, N'Thành công', 7)
INSERT [dbo].[RcptStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (8, N'Thất bại', 8)
INSERT [dbo].[RcptStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (9, N'Khách hủy', 9)
INSERT [dbo].[RcptStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (10, N'Hệ thống hủy', 10)
INSERT [dbo].[RcptStaStep] ([StepId], [StepCont], [StepOrder]) VALUES (11, N'Hết hàng', 11)
INSERT [dbo].[RcptSub] ([RcptSubId]) VALUES (1)
INSERT [dbo].[RcptSubDet] ([RcptSubId], [SubId], [MerId]) VALUES (1, 1, 3)
SET IDENTITY_INSERT [dbo].[Sub] ON 

INSERT [dbo].[Sub] ([SubId], [SubContent], [DurDay], [Price]) VALUES (1, N'Tuần', 7, N'300000')
INSERT [dbo].[Sub] ([SubId], [SubContent], [DurDay], [Price]) VALUES (2, N'Tháng', 30, N'1000000')
INSERT [dbo].[Sub] ([SubId], [SubContent], [DurDay], [Price]) VALUES (3, N'Năm', 365, N'11000000')
SET IDENTITY_INSERT [dbo].[Sub] OFF
INSERT [dbo].[SubDet] ([SubId], [MerId], [DateStart], [DateEnd]) VALUES (1, 3, CAST(0x0000AA16011D7042 AS DateTime), CAST(0x0000AA1D011D7042 AS DateTime))
SET IDENTITY_INSERT [dbo].[Usr] ON 

INSERT [dbo].[Usr] ([UsrId], [Login], [Password], [Active], [Email], [UserName], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (1, N'doanhien', N'admin', 1, N'doanhien@gmail.com', N'Nguyễn Doãn Hiện', N'273 An Dương Vương P7 Q6', N'0704569020', CAST(0x0000AA16010C05B1 AS DateTime), CAST(0x0000AA16010C05B1 AS DateTime))
INSERT [dbo].[Usr] ([UsrId], [Login], [Password], [Active], [Email], [UserName], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (2, N'anhtruc', N'123', 1, N'anhtruc@gmail.com', N'Phan Anh Trúc', N'21 Lưu Xuân Tín P15 Q5', N'0967513425', CAST(0x0000AA16010C05B1 AS DateTime), CAST(0x0000AA16010C05B1 AS DateTime))
INSERT [dbo].[Usr] ([UsrId], [Login], [Password], [Active], [Email], [UserName], [Address], [Phone], [DateAdd], [DateEdit]) VALUES (3, N'toanhien', N'321', 1, N'toanhien@gmail.com', N'Lê Hiển', N'26 Nguyễn Trãi P1 Q5', N'0123456890', CAST(0x0000AA16010C05B1 AS DateTime), CAST(0x0000AA16010C05B1 AS DateTime))
SET IDENTITY_INSERT [dbo].[Usr] OFF
INSERT [dbo].[UsrCus] ([CusId]) VALUES (2)
SET IDENTITY_INSERT [dbo].[UsrCusCart] ON 

INSERT [dbo].[UsrCusCart] ([CartId], [CusId], [IpAddress]) VALUES (1, 2, NULL)
SET IDENTITY_INSERT [dbo].[UsrCusCart] OFF
INSERT [dbo].[UsrCusCartDet] ([CartId], [ShpId], [ProId], [Qty]) VALUES (1, 1, 1, 1)
INSERT [dbo].[UsrMer] ([MerId]) VALUES (3)
SET IDENTITY_INSERT [dbo].[UsrMerShp] ON 

INSERT [dbo].[UsrMerShp] ([ShpId], [MerId], [ShpName], [DateStart], [Active]) VALUES (1, 3, N'KICKZ', CAST(0x0000AA16010C05B1 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[UsrMerShp] OFF
INSERT [dbo].[UsrMerShpPro] ([ShpId], [ProId], [ProQuantity], [IsOutOfStock]) VALUES (1, 1, 2, 0)
INSERT [dbo].[UsrMerShpPro] ([ShpId], [ProId], [ProQuantity], [IsOutOfStock]) VALUES (1, 7, 1, 0)
/****** Object:  Index [IX_ReceiptsBuysStates]    Script Date: 3/20/2019 6:10:12 PM ******/
ALTER TABLE [dbo].[RcptBuySta] ADD  CONSTRAINT [IX_ReceiptsBuysStates] UNIQUE NONCLUSTERED 
(
	[RcptBuyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RcptStaStep]    Script Date: 3/20/2019 6:10:12 PM ******/
ALTER TABLE [dbo].[RcptStaStep] ADD  CONSTRAINT [IX_RcptStaStep] UNIQUE NONCLUSTERED 
(
	[StepOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UsersCustomersCarts]    Script Date: 3/20/2019 6:10:12 PM ******/
ALTER TABLE [dbo].[UsrCusCart] ADD  CONSTRAINT [IX_UsersCustomersCarts] UNIQUE NONCLUSTERED 
(
	[CusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UsersMerchantsShops]    Script Date: 3/20/2019 6:10:12 PM ******/
ALTER TABLE [dbo].[UsrMerShp] ADD  CONSTRAINT [IX_UsersMerchantsShops] UNIQUE NONCLUSTERED 
(
	[MerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Pro] ADD  CONSTRAINT [DF_Products_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Pro] ADD  CONSTRAINT [DF_Products_PriceAfter]  DEFAULT ((0)) FOR [PriceAfter]
GO
ALTER TABLE [dbo].[Pro]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([BrandId])
GO
ALTER TABLE [dbo].[Pro] CHECK CONSTRAINT [FK_Products_Brands]
GO
ALTER TABLE [dbo].[Pro]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductsCategories] FOREIGN KEY([CatId])
REFERENCES [dbo].[ProCat] ([CatId])
GO
ALTER TABLE [dbo].[Pro] CHECK CONSTRAINT [FK_Products_ProductsCategories]
GO
ALTER TABLE [dbo].[RcptBuy]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptBuys_Receipts] FOREIGN KEY([RcptBuyId])
REFERENCES [dbo].[Rcpt] ([RcptId])
GO
ALTER TABLE [dbo].[RcptBuy] CHECK CONSTRAINT [FK_ReceiptBuys_Receipts]
GO
ALTER TABLE [dbo].[RcptBuyDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsBuysDetails_ReceiptsBuys] FOREIGN KEY([RcptBuyId])
REFERENCES [dbo].[RcptBuy] ([RcptBuyId])
GO
ALTER TABLE [dbo].[RcptBuyDet] CHECK CONSTRAINT [FK_ReceiptsBuysDetails_ReceiptsBuys]
GO
ALTER TABLE [dbo].[RcptBuyDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsBuysDetails_UsersMerchantsShopsProducts] FOREIGN KEY([ShpId], [ProId])
REFERENCES [dbo].[UsrMerShpPro] ([ShpId], [ProId])
GO
ALTER TABLE [dbo].[RcptBuyDet] CHECK CONSTRAINT [FK_ReceiptsBuysDetails_UsersMerchantsShopsProducts]
GO
ALTER TABLE [dbo].[RcptBuySta]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsBuysStates_ReceiptsBuys] FOREIGN KEY([RcptBuyId])
REFERENCES [dbo].[RcptBuy] ([RcptBuyId])
GO
ALTER TABLE [dbo].[RcptBuySta] CHECK CONSTRAINT [FK_ReceiptsBuysStates_ReceiptsBuys]
GO
ALTER TABLE [dbo].[RcptBuyStaDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsBuysStatesDetails_ReceiptsBuysStates] FOREIGN KEY([StaId])
REFERENCES [dbo].[RcptBuySta] ([StateId])
GO
ALTER TABLE [dbo].[RcptBuyStaDet] CHECK CONSTRAINT [FK_ReceiptsBuysStatesDetails_ReceiptsBuysStates]
GO
ALTER TABLE [dbo].[RcptBuyStaDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsBuysStatesDetails_ReceiptsBuysStatesSteps] FOREIGN KEY([StepId])
REFERENCES [dbo].[RcptStaStep] ([StepId])
GO
ALTER TABLE [dbo].[RcptBuyStaDet] CHECK CONSTRAINT [FK_ReceiptsBuysStatesDetails_ReceiptsBuysStatesSteps]
GO
ALTER TABLE [dbo].[RcptSub]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsSubscriptions_Receipts] FOREIGN KEY([RcptSubId])
REFERENCES [dbo].[Rcpt] ([RcptId])
GO
ALTER TABLE [dbo].[RcptSub] CHECK CONSTRAINT [FK_ReceiptsSubscriptions_Receipts]
GO
ALTER TABLE [dbo].[RcptSubDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsSubscriptionsDetails_ReceiptsSubscriptions] FOREIGN KEY([RcptSubId])
REFERENCES [dbo].[RcptSub] ([RcptSubId])
GO
ALTER TABLE [dbo].[RcptSubDet] CHECK CONSTRAINT [FK_ReceiptsSubscriptionsDetails_ReceiptsSubscriptions]
GO
ALTER TABLE [dbo].[RcptSubDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsSubscriptionsDetails_SubscriptionsDetails] FOREIGN KEY([SubId], [MerId])
REFERENCES [dbo].[SubDet] ([SubId], [MerId])
GO
ALTER TABLE [dbo].[RcptSubDet] CHECK CONSTRAINT [FK_ReceiptsSubscriptionsDetails_SubscriptionsDetails]
GO
ALTER TABLE [dbo].[SubDet]  WITH CHECK ADD  CONSTRAINT [FK_SubscriptionsDetails_Subscriptions] FOREIGN KEY([SubId])
REFERENCES [dbo].[Sub] ([SubId])
GO
ALTER TABLE [dbo].[SubDet] CHECK CONSTRAINT [FK_SubscriptionsDetails_Subscriptions]
GO
ALTER TABLE [dbo].[SubDet]  WITH CHECK ADD  CONSTRAINT [FK_SubscriptionsDetails_UsersMerchants] FOREIGN KEY([MerId])
REFERENCES [dbo].[UsrMer] ([MerId])
GO
ALTER TABLE [dbo].[SubDet] CHECK CONSTRAINT [FK_SubscriptionsDetails_UsersMerchants]
GO
ALTER TABLE [dbo].[UsrCus]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustomers_Users] FOREIGN KEY([CusId])
REFERENCES [dbo].[Usr] ([UsrId])
GO
ALTER TABLE [dbo].[UsrCus] CHECK CONSTRAINT [FK_UsersCustomers_Users]
GO
ALTER TABLE [dbo].[UsrCusCart]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustomersCarts_UsersCustomers] FOREIGN KEY([CusId])
REFERENCES [dbo].[UsrCus] ([CusId])
GO
ALTER TABLE [dbo].[UsrCusCart] CHECK CONSTRAINT [FK_UsersCustomersCarts_UsersCustomers]
GO
ALTER TABLE [dbo].[UsrCusCartDet]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustomersCartsDetails_UsersCustomersCarts] FOREIGN KEY([CartId])
REFERENCES [dbo].[UsrCusCart] ([CartId])
GO
ALTER TABLE [dbo].[UsrCusCartDet] CHECK CONSTRAINT [FK_UsersCustomersCartsDetails_UsersCustomersCarts]
GO
ALTER TABLE [dbo].[UsrCusCartDet]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustomersCartsDetails_UsersMerchantsShopsProducts] FOREIGN KEY([ShpId], [ProId])
REFERENCES [dbo].[UsrMerShpPro] ([ShpId], [ProId])
GO
ALTER TABLE [dbo].[UsrCusCartDet] CHECK CONSTRAINT [FK_UsersCustomersCartsDetails_UsersMerchantsShopsProducts]
GO
ALTER TABLE [dbo].[UsrMer]  WITH CHECK ADD  CONSTRAINT [FK_UsersMerchants_Users] FOREIGN KEY([MerId])
REFERENCES [dbo].[Usr] ([UsrId])
GO
ALTER TABLE [dbo].[UsrMer] CHECK CONSTRAINT [FK_UsersMerchants_Users]
GO
ALTER TABLE [dbo].[UsrMerShp]  WITH CHECK ADD  CONSTRAINT [FK_UsrMerShp_UsrMer] FOREIGN KEY([MerId])
REFERENCES [dbo].[UsrMer] ([MerId])
GO
ALTER TABLE [dbo].[UsrMerShp] CHECK CONSTRAINT [FK_UsrMerShp_UsrMer]
GO
ALTER TABLE [dbo].[UsrMerShpPro]  WITH CHECK ADD  CONSTRAINT [FK_UsersMerchantsShopsProducts_Products] FOREIGN KEY([ProId])
REFERENCES [dbo].[Pro] ([ProId])
GO
ALTER TABLE [dbo].[UsrMerShpPro] CHECK CONSTRAINT [FK_UsersMerchantsShopsProducts_Products]
GO
ALTER TABLE [dbo].[UsrMerShpPro]  WITH CHECK ADD  CONSTRAINT [FK_UsersMerchantsShopsProducts_UsersMerchantsShops] FOREIGN KEY([ShpId])
REFERENCES [dbo].[UsrMerShp] ([ShpId])
GO
ALTER TABLE [dbo].[UsrMerShpPro] CHECK CONSTRAINT [FK_UsersMerchantsShopsProducts_UsersMerchantsShops]
GO
