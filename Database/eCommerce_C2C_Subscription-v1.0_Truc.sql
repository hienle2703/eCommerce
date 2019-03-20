USE [eCommerce_C2C_Subscription_Truc]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandId] [int] NOT NULL,
	[BrandName] [nvarchar](255) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pro]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pro](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[BrandId] [int] NULL,
	[Unit] [varchar](255) NOT NULL,
	[ProductName] [varchar](255) NOT NULL,
	[Description] [text] NULL,
	[Active] [bit] NOT NULL,
	[Price] [varchar](255) NULL,
	[PriceAfter] [varchar](255) NULL,
	[Stock] [int] NULL,
	[DateAdd] [datetime] NOT NULL,
	[DateEdit] [datetime] NOT NULL,
 CONSTRAINT [Pk_SanPham_Id] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProCat]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCat](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [int] NULL,
	[Active] [bit] NULL,
	[DateAdd] [datetime] NULL,
	[DateEdit] [datetime] NULL,
 CONSTRAINT [PK_ProductsCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rcpt]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rcpt](
	[ReceiptId] [int] NOT NULL,
	[DateAdd] [datetime] NOT NULL,
	[DateEdit] [datetime] NOT NULL,
 CONSTRAINT [Pk_HoaDon_Id] PRIMARY KEY CLUSTERED 
(
	[ReceiptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuy]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuy](
	[ReceiptBuyId] [int] NOT NULL,
 CONSTRAINT [PK_ReceiptBuys] PRIMARY KEY CLUSTERED 
(
	[ReceiptBuyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuyDet]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuyDet](
	[ReceiptBuyId] [int] NOT NULL,
	[ShopId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ReceiptsBuysDetails] PRIMARY KEY CLUSTERED 
(
	[ReceiptBuyId] ASC,
	[ShopId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuySta]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuySta](
	[StateId] [int] NOT NULL,
	[ReceiptsBuyId] [int] NULL,
 CONSTRAINT [PK_ReceiptsBuysStates] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_ReceiptsBuysStates] UNIQUE NONCLUSTERED 
(
	[ReceiptsBuyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuyStaDet]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuyStaDet](
	[StateId] [int] NOT NULL,
	[StepId] [int] NOT NULL,
	[IsDone] [bit] NULL,
 CONSTRAINT [PK_ReceiptsBuysStatesDetails] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC,
	[StepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptBuyStaStep]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptBuyStaStep](
	[StepId] [int] NOT NULL,
	[StepContent] [nvarchar](255) NULL,
	[StepOrder] [int] NULL,
 CONSTRAINT [PK_ReceiptsBuysStatesSteps] PRIMARY KEY CLUSTERED 
(
	[StepId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptSub]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptSub](
	[ReceiptSubscriptionId] [int] NOT NULL,
 CONSTRAINT [PK_ReceiptsSubscriptions] PRIMARY KEY CLUSTERED 
(
	[ReceiptSubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RcptSubDet]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RcptSubDet](
	[ReceiptsSubscriptionId] [int] NOT NULL,
	[SubscriptionId] [int] NOT NULL,
	[MerchantId] [int] NOT NULL,
 CONSTRAINT [PK_ReceiptsSubscriptionsDetails] PRIMARY KEY CLUSTERED 
(
	[ReceiptsSubscriptionId] ASC,
	[SubscriptionId] ASC,
	[MerchantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sub]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sub](
	[SubscriptionId] [int] NOT NULL,
	[SubscriptionContent] [nvarchar](255) NULL,
	[DurationDay] [int] NULL,
 CONSTRAINT [PK_Subscriptions] PRIMARY KEY CLUSTERED 
(
	[SubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubDet]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubDet](
	[SubscriptionId] [int] NOT NULL,
	[MerchantId] [int] NOT NULL,
	[DateStart] [datetime] NULL,
	[DateEnd] [datetime] NULL,
 CONSTRAINT [PK_SubscriptionsDetails] PRIMARY KEY CLUSTERED 
(
	[SubscriptionId] ASC,
	[MerchantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usr]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usr](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
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
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsrCus]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsrCus](
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_UsersCustomers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsrCusCart]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsrCusCart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[IpAddress] [varchar](255) NULL,
 CONSTRAINT [PK_UsersCustomersCarts] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_UsersCustomersCarts] UNIQUE NONCLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsrCusCartDet]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsrCusCartDet](
	[CartId] [int] NOT NULL,
	[ShopId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_UsersCustomersCartsDetails] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC,
	[ShopId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsrMer]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsrMer](
	[MerchantId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Merchants] PRIMARY KEY CLUSTERED 
(
	[MerchantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsrMerShp]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsrMerShp](
	[ShopId] [int] IDENTITY(1,1) NOT NULL,
	[MerchantId] [int] NULL,
	[ShopName] [nvarchar](255) NULL,
	[DateStart] [datetime] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_UsersMerchantsShops] PRIMARY KEY CLUSTERED 
(
	[ShopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_UsersMerchantsShops] UNIQUE NONCLUSTERED 
(
	[MerchantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsrMerShpPro]    Script Date: 3/20/2019 1:16:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsrMerShpPro](
	[ShopId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductQuantity] [int] NULL,
	[IsOutOfStock] [bit] NULL,
 CONSTRAINT [PK_ProductQuantity] PRIMARY KEY CLUSTERED 
(
	[ShopId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Pro] ADD  CONSTRAINT [DF_Products_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Pro] ADD  CONSTRAINT [DF_Products_PriceAfter]  DEFAULT ((0)) FOR [PriceAfter]
GO
ALTER TABLE [dbo].[Pro] ADD  CONSTRAINT [DF_Products_Stock]  DEFAULT ((0)) FOR [Stock]
GO
ALTER TABLE [dbo].[Pro]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brand] ([BrandId])
GO
ALTER TABLE [dbo].[Pro] CHECK CONSTRAINT [FK_Products_Brands]
GO
ALTER TABLE [dbo].[Pro]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductsCategories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ProCat] ([CategoryId])
GO
ALTER TABLE [dbo].[Pro] CHECK CONSTRAINT [FK_Products_ProductsCategories]
GO
ALTER TABLE [dbo].[RcptBuy]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptBuys_Receipts] FOREIGN KEY([ReceiptBuyId])
REFERENCES [dbo].[Rcpt] ([ReceiptId])
GO
ALTER TABLE [dbo].[RcptBuy] CHECK CONSTRAINT [FK_ReceiptBuys_Receipts]
GO
ALTER TABLE [dbo].[RcptBuyDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsBuysDetails_ReceiptsBuys] FOREIGN KEY([ReceiptBuyId])
REFERENCES [dbo].[RcptBuy] ([ReceiptBuyId])
GO
ALTER TABLE [dbo].[RcptBuyDet] CHECK CONSTRAINT [FK_ReceiptsBuysDetails_ReceiptsBuys]
GO
ALTER TABLE [dbo].[RcptBuyDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsBuysDetails_UsersMerchantsShopsProducts] FOREIGN KEY([ShopId], [ProductId])
REFERENCES [dbo].[UsrMerShpPro] ([ShopId], [ProductId])
GO
ALTER TABLE [dbo].[RcptBuyDet] CHECK CONSTRAINT [FK_ReceiptsBuysDetails_UsersMerchantsShopsProducts]
GO
ALTER TABLE [dbo].[RcptBuySta]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsBuysStates_ReceiptsBuys] FOREIGN KEY([ReceiptsBuyId])
REFERENCES [dbo].[RcptBuy] ([ReceiptBuyId])
GO
ALTER TABLE [dbo].[RcptBuySta] CHECK CONSTRAINT [FK_ReceiptsBuysStates_ReceiptsBuys]
GO
ALTER TABLE [dbo].[RcptBuyStaDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsBuysStatesDetails_ReceiptsBuysStates] FOREIGN KEY([StateId])
REFERENCES [dbo].[RcptBuySta] ([StateId])
GO
ALTER TABLE [dbo].[RcptBuyStaDet] CHECK CONSTRAINT [FK_ReceiptsBuysStatesDetails_ReceiptsBuysStates]
GO
ALTER TABLE [dbo].[RcptBuyStaDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsBuysStatesDetails_ReceiptsBuysStatesSteps] FOREIGN KEY([StepId])
REFERENCES [dbo].[RcptBuyStaStep] ([StepId])
GO
ALTER TABLE [dbo].[RcptBuyStaDet] CHECK CONSTRAINT [FK_ReceiptsBuysStatesDetails_ReceiptsBuysStatesSteps]
GO
ALTER TABLE [dbo].[RcptSub]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsSubscriptions_Receipts] FOREIGN KEY([ReceiptSubscriptionId])
REFERENCES [dbo].[Rcpt] ([ReceiptId])
GO
ALTER TABLE [dbo].[RcptSub] CHECK CONSTRAINT [FK_ReceiptsSubscriptions_Receipts]
GO
ALTER TABLE [dbo].[RcptSubDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsSubscriptionsDetails_ReceiptsSubscriptions] FOREIGN KEY([ReceiptsSubscriptionId])
REFERENCES [dbo].[RcptSub] ([ReceiptSubscriptionId])
GO
ALTER TABLE [dbo].[RcptSubDet] CHECK CONSTRAINT [FK_ReceiptsSubscriptionsDetails_ReceiptsSubscriptions]
GO
ALTER TABLE [dbo].[RcptSubDet]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptsSubscriptionsDetails_SubscriptionsDetails] FOREIGN KEY([SubscriptionId], [MerchantId])
REFERENCES [dbo].[SubDet] ([SubscriptionId], [MerchantId])
GO
ALTER TABLE [dbo].[RcptSubDet] CHECK CONSTRAINT [FK_ReceiptsSubscriptionsDetails_SubscriptionsDetails]
GO
ALTER TABLE [dbo].[SubDet]  WITH CHECK ADD  CONSTRAINT [FK_SubscriptionsDetails_Subscriptions] FOREIGN KEY([SubscriptionId])
REFERENCES [dbo].[Sub] ([SubscriptionId])
GO
ALTER TABLE [dbo].[SubDet] CHECK CONSTRAINT [FK_SubscriptionsDetails_Subscriptions]
GO
ALTER TABLE [dbo].[SubDet]  WITH CHECK ADD  CONSTRAINT [FK_SubscriptionsDetails_UsersMerchants] FOREIGN KEY([MerchantId])
REFERENCES [dbo].[UsrMer] ([MerchantId])
GO
ALTER TABLE [dbo].[SubDet] CHECK CONSTRAINT [FK_SubscriptionsDetails_UsersMerchants]
GO
ALTER TABLE [dbo].[UsrCus]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustomers_Users] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Usr] ([UserId])
GO
ALTER TABLE [dbo].[UsrCus] CHECK CONSTRAINT [FK_UsersCustomers_Users]
GO
ALTER TABLE [dbo].[UsrCusCart]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustomersCarts_UsersCustomers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[UsrCus] ([CustomerId])
GO
ALTER TABLE [dbo].[UsrCusCart] CHECK CONSTRAINT [FK_UsersCustomersCarts_UsersCustomers]
GO
ALTER TABLE [dbo].[UsrCusCartDet]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustomersCartsDetails_UsersCustomersCarts] FOREIGN KEY([CartId])
REFERENCES [dbo].[UsrCusCart] ([CartId])
GO
ALTER TABLE [dbo].[UsrCusCartDet] CHECK CONSTRAINT [FK_UsersCustomersCartsDetails_UsersCustomersCarts]
GO
ALTER TABLE [dbo].[UsrCusCartDet]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustomersCartsDetails_UsersMerchantsShopsProducts] FOREIGN KEY([ShopId], [ProductId])
REFERENCES [dbo].[UsrMerShpPro] ([ShopId], [ProductId])
GO
ALTER TABLE [dbo].[UsrCusCartDet] CHECK CONSTRAINT [FK_UsersCustomersCartsDetails_UsersMerchantsShopsProducts]
GO
ALTER TABLE [dbo].[UsrMer]  WITH CHECK ADD  CONSTRAINT [FK_UsersMerchants_Users] FOREIGN KEY([MerchantId])
REFERENCES [dbo].[Usr] ([UserId])
GO
ALTER TABLE [dbo].[UsrMer] CHECK CONSTRAINT [FK_UsersMerchants_Users]
GO
ALTER TABLE [dbo].[UsrMer]  WITH CHECK ADD  CONSTRAINT [FK_UsersMerchants_UsersMerchantsShops] FOREIGN KEY([MerchantId])
REFERENCES [dbo].[UsrMerShp] ([MerchantId])
GO
ALTER TABLE [dbo].[UsrMer] CHECK CONSTRAINT [FK_UsersMerchants_UsersMerchantsShops]
GO
ALTER TABLE [dbo].[UsrMerShpPro]  WITH CHECK ADD  CONSTRAINT [FK_UsersMerchantsShopsProducts_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Pro] ([ProductId])
GO
ALTER TABLE [dbo].[UsrMerShpPro] CHECK CONSTRAINT [FK_UsersMerchantsShopsProducts_Products]
GO
ALTER TABLE [dbo].[UsrMerShpPro]  WITH CHECK ADD  CONSTRAINT [FK_UsersMerchantsShopsProducts_UsersMerchantsShops] FOREIGN KEY([ShopId])
REFERENCES [dbo].[UsrMerShp] ([ShopId])
GO
ALTER TABLE [dbo].[UsrMerShpPro] CHECK CONSTRAINT [FK_UsersMerchantsShopsProducts_UsersMerchantsShops]
GO
