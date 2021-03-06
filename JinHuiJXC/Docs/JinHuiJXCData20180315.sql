USE [JinHuiJXCData]
GO
/****** Object:  Table [dbo].[Goods]    Script Date: 2018/3/15 17:34:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goods](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Category] [int] NULL,
	[Brand] [int] NULL,
	[Nocode] [nvarchar](100) NULL,
	[Barcode] [nvarchar](100) NULL,
	[Pinyin] [nvarchar](100) NULL,
	[PriceCost] [decimal](18, 2) NULL,
	[PriceRetail] [decimal](18, 2) NULL,
	[PriceTrade] [decimal](18, 2) NULL,
	[PriceMember] [decimal](18, 2) NULL,
	[InvNow] [int] NULL,
	[InvMin] [int] NULL,
	[InvMax] [int] NULL,
	[PackMin] [int] NULL,
	[PackMax] [int] NULL,
	[PackRatio] [int] NULL,
	[PackSpec] [nvarchar](100) NULL,
	[Supplier] [int] NULL,
	[Producter] [int] NULL,
	[Desc] [nvarchar](2000) NULL,
	[AddUser] [int] NULL,
	[AddTime] [datetime] NULL,
	[LastTime] [datetime] NULL,
 CONSTRAINT [PK_Goods] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesRec]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesRec](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SalesNo] [nvarchar](100) NULL,
	[SalesDate] [datetime] NULL,
	[SalesType] [int] NULL,
	[SalerName] [nvarchar](100) NULL,
	[MemberName] [nvarchar](100) NULL,
	[MemberNo] [int] NULL,
	[MemberScore] [int] NULL,
	[AmountCharge] [decimal](18, 2) NULL,
	[AmountDiscount] [decimal](18, 2) NULL,
	[AmountReceive] [decimal](18, 2) NULL,
	[ProfitSum] [decimal](18, 2) NULL,
	[ProfitRate] [decimal](18, 2) NULL,
	[PaymentType] [int] NULL,
	[DeliveryType] [int] NULL,
	[Desc] [nvarchar](1000) NULL,
	[State] [int] NULL,
	[AddUser] [int] NULL,
	[LastTime] [datetime] NULL,
	[AddTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesRecDetail]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesRecDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SalesID] [int] NULL,
	[GoodsID] [int] NULL,
	[GoodsName] [nvarchar](100) NULL,
	[Nocode] [nvarchar](100) NULL,
	[Barcode] [nvarchar](100) NULL,
	[Pinyin] [nvarchar](100) NULL,
	[PackMin] [int] NULL,
	[PriceUnit] [decimal](18, 2) NULL,
	[Sum] [int] NULL,
	[PriceTotal] [decimal](18, 2) NULL,
	[RateDis] [int] NULL,
	[RateTax] [int] NULL,
	[AddUser] [int] NULL,
	[LastTime] [datetime] NULL,
	[AddTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_Name]  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_Category]  DEFAULT ((0)) FOR [Category]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_Brand]  DEFAULT ((0)) FOR [Brand]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_Nocode]  DEFAULT ('') FOR [Nocode]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_Barcode]  DEFAULT ('') FOR [Barcode]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_Pinyin]  DEFAULT ('') FOR [Pinyin]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_PriceCost]  DEFAULT ((0)) FOR [PriceCost]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_PriceRetail]  DEFAULT ((0)) FOR [PriceRetail]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_PriceTrade]  DEFAULT ((0)) FOR [PriceTrade]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_PriceMember]  DEFAULT ((0)) FOR [PriceMember]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_InvNow]  DEFAULT ((0)) FOR [InvNow]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_InvMin]  DEFAULT ((0)) FOR [InvMin]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_InvMax]  DEFAULT ((0)) FOR [InvMax]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_PackMin]  DEFAULT ((0)) FOR [PackMin]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_PackMax]  DEFAULT ((0)) FOR [PackMax]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_PackRatio]  DEFAULT ((0)) FOR [PackRatio]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_Spec]  DEFAULT ('') FOR [PackSpec]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_Supplier]  DEFAULT ((0)) FOR [Supplier]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_Producter]  DEFAULT ((0)) FOR [Producter]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_Desc]  DEFAULT ('') FOR [Desc]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_AddUser]  DEFAULT ((0)) FOR [AddUser]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_LastTime]  DEFAULT (getdate()) FOR [LastTime]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ('') FOR [SalesNo]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT (getdate()) FOR [SalesDate]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [SalesType]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ('') FOR [SalerName]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ('') FOR [MemberName]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [MemberNo]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [MemberScore]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [AmountCharge]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [AmountDiscount]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [AmountReceive]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [ProfitSum]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [ProfitRate]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [PaymentType]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [DeliveryType]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ('') FOR [Desc]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [AddUser]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT (getdate()) FOR [LastTime]
GO
ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT (getdate()) FOR [AddTime]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT ((0)) FOR [SalesID]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT ((0)) FOR [GoodsID]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT ('') FOR [GoodsName]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT ('') FOR [Nocode]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT ('') FOR [Barcode]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT ('') FOR [Pinyin]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT ((0)) FOR [PackMin]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT ((0)) FOR [PriceUnit]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT ((0)) FOR [Sum]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT ((0)) FOR [PriceTotal]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT ((0)) FOR [RateDis]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT ((0)) FOR [RateTax]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT ((0)) FOR [AddUser]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT (getdate()) FOR [LastTime]
GO
ALTER TABLE [dbo].[SalesRecDetail] ADD  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  StoredProcedure [dbo].[GoodsAdd]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GoodsAdd]
(
	@Name nvarchar(100), 
	@Category nvarchar(100), 
	@Brand int, 
	@Nocode nvarchar(100), 
	@Barcode nvarchar(100), 
	@Pinyin nvarchar(100), 
	@PriceCost decimal(18,2), 
	@PriceRetail decimal(18,2), 
	@PriceTrade decimal(18,2), 
	@PriceMember decimal(18,2), 
	@InvNow int, 
	@InvMin int,
	@InvMax int, 
	@PackMin int, 
	@PackMax int, 
	@PackRatio int, 
	@PackSpec nvarchar(100), 
	@Supplier int, 
	@Producter int, 
	@Desc nvarchar(2000), 
	@AddUser int, 
	@AddTime datetime, 
	@LastTime datetime
)
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Goods (Name,Category, Brand, Nocode, Barcode, Pinyin, PriceCost, PriceRetail, PriceTrade, PriceMember, InvNow, InvMin, 
             InvMax, PackMin, PackMax, PackRatio, PackSpec, Supplier, Producter, [Desc], AddUser, AddTime, LastTime)
	VALUES (@Name,@Category, @Brand, @Nocode, @Barcode, @Pinyin, @PriceCost, @PriceRetail, @PriceTrade, @PriceMember, @InvNow, @InvMin, 
             @InvMax, @PackMin, @PackMax, @PackRatio, @PackSpec, @Supplier, @Producter, @Desc, @AddUser, @AddTime, @LastTime)
END
GO
/****** Object:  StoredProcedure [dbo].[GoodsDel]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GoodsDel]
	@ID int
AS
BEGIN
	DELETE  Goods WHERE ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[GoodsGetAll]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GoodsGetAll]
AS
BEGIN
	SELECT   ID, [Name], Category, Brand, Nocode, Barcode, Pinyin, PriceCost, PriceRetail, PriceTrade, PriceMember, InvNow, InvMin, 
             InvMax, PackMin, PackMax, PackRatio, PackSpec, Supplier, Producter, [Desc], AddUser, AddTime, LastTime
	FROM    Goods  ORDER BY ID DESC
END
GO
/****** Object:  StoredProcedure [dbo].[GoodsGetByBarcode]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GoodsGetByBarcode]
	@Barcode nvarchar(100)
AS
BEGIN
	SELECT   ID, [Name], Category, Brand, Nocode, Barcode, Pinyin, PriceCost, PriceRetail, PriceTrade, PriceMember, InvNow, InvMin, 
             InvMax, PackMin, PackMax, PackRatio, PackSpec, Supplier, Producter, [Desc], AddUser, AddTime, LastTime
	FROM     Goods WHERE Barcode=@Barcode
END
GO
/****** Object:  StoredProcedure [dbo].[GoodsGetByID]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GoodsGetByID]
	@ID int
AS
BEGIN
	SELECT   ID, [Name], Category, Brand, Nocode, Barcode, Pinyin, PriceCost, PriceRetail, PriceTrade, PriceMember, InvNow, InvMin, 
             InvMax, PackMin, PackMax, PackRatio, PackSpec, Supplier, Producter, [Desc], AddUser, AddTime, LastTime
	FROM     Goods WHERE ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[GoodsGetByName]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GoodsGetByName]
	@Name nvarchar(100)
AS
BEGIN
	SELECT   ID, [Name], Category, Brand, Nocode, Barcode, Pinyin, PriceCost, PriceRetail, PriceTrade, PriceMember, InvNow, InvMin, 
             InvMax, PackMin, PackMax, PackRatio, PackSpec, Supplier, Producter, [Desc], AddUser, AddTime, LastTime
	FROM     Goods WHERE [Name]=@Name
END
GO
/****** Object:  StoredProcedure [dbo].[GoodsGetByNocode]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GoodsGetByNocode]
	@Nocode nvarchar(100)
AS
BEGIN
	SELECT   ID, [Name], Category, Brand, Nocode, Barcode, Pinyin, PriceCost, PriceRetail, PriceTrade, PriceMember, InvNow, InvMin, 
             InvMax, PackMin, PackMax, PackRatio, PackSpec, Supplier, Producter, [Desc], AddUser, AddTime, LastTime
	FROM     Goods WHERE Nocode=@Nocode
END
GO
/****** Object:  StoredProcedure [dbo].[GoodsGetInvNow]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GoodsGetInvNow]
	@ID int
AS
BEGIN
	SELECT InvNow FROM Goods WHERE ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[GoodsUpdate]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GoodsUpdate]
(
	@ID int,
	@Name nvarchar(100), 
	@Category nvarchar(100), 
	@Brand int, 
	@Nocode nvarchar(100), 
	@Barcode nvarchar(100), 
	@Pinyin nvarchar(100), 
	@PriceCost decimal(18,2), 
	@PriceRetail decimal(18,2), 
	@PriceTrade decimal(18,2), 
	@PriceMember decimal(18,2), 
	@InvMin int,
	@InvMax int, 
	@PackMin int, 
	@PackMax int, 
	@PackRatio int, 
	@PackSpec nvarchar(100), 
	@Supplier int, 
	@Producter int, 
	@Desc nvarchar(100), 
	@LastTime datetime
)
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Goods SET [Name]=@Name,Category=@Category, Brand=@Brand, Nocode=@Nocode, Barcode=@Barcode, 
			Pinyin=@Pinyin, PriceCost=@PriceCost, PriceRetail=@PriceRetail, PriceTrade=@PriceTrade, 
			PriceMember=@PriceMember,InvMin=@InvMin, InvMax=@InvMax, 
			PackMin=@PackMin, PackMax=@PackMax, PackRatio=@PackRatio, PackSpec=@PackSpec, 
			Supplier=@Supplier, Producter=@Producter, [Desc]=@Desc,LastTime=@LastTime
	WHERE ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[GoodsUpdateInvNow]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GoodsUpdateInvNow]
(
	@ID int,
	@InvNow int
)
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Goods SET InvNow=@InvNow
	WHERE ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[SalesRecAdd]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesRecAdd]
	@SalesNo nvarchar(100),
	@SalesDate datetime,
	@SalesType int,
	@SalerName nvarchar(100),
	@MemberName nvarchar(100),
	@MemberNo int,
	@MemberScore int,
	@AmountCharge decimal(18,2),
	@AmountDiscount decimal(18,2),
	@AmountReceive decimal(18,2),
	@ProfitSum decimal(18,2),
	@ProfitRate decimal(18,2),
	@PaymentType int,
	@DeliveryType int,
	@Desc nvarchar(1000), 
	@State int,
	@AddUser int,
	@LastTime datetime,
	@AddTime datetime
AS
INSERT INTO SalesRec (SalesNo ,SalesDate ,SalesType ,SalerName ,MemberName,MemberNo ,MemberScore ,AmountCharge ,AmountDiscount ,AmountReceive ,
		ProfitSum ,ProfitRate ,PaymentType,DeliveryType ,[Desc] ,[State] ,AddUser ,LastTime ,AddTime) 
VALUES (@SalesNo ,@SalesDate ,@SalesType ,@SalerName ,@MemberName,@MemberNo ,@MemberScore ,@AmountCharge ,@AmountDiscount ,@AmountReceive ,
		@ProfitSum ,@ProfitRate ,@PaymentType,@DeliveryType ,@Desc ,@State ,@AddUser ,@LastTime ,@AddTime) 
SELECT SCOPE_IDENTITY();
GO
/****** Object:  StoredProcedure [dbo].[SalesRecDel]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SalesRecDel]
	@ID int
AS
BEGIN
	DELETE  SalesRec WHERE ID=@ID
	DELETE  SalesRecDetail WHERE SalesID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[SalesRecDetailAdd]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesRecDetailAdd]
(
	@SalesID int, 
	@GoodsID int, 
	@GoodsName nvarchar(100), 
	@Nocode nvarchar(100), 
	@Barcode nvarchar(100), 
	@Pinyin nvarchar(100), 
	@PackMin int, 
	@PriceUnit decimal(18,2), 
	@Sum int, 
	@PriceTotal decimal(18,2), 
	@RateDis int, 
	@RateTax int, 
	@AddUser int, 
	@AddTime datetime, 
	@LastTime datetime
)
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO SalesRecDetail (SalesID,GoodsID,GoodsName,Nocode,Barcode,Pinyin,PackMin,PriceUnit,[Sum],
		PriceTotal ,RateDis,RateTax, AddUser, AddTime, LastTime)
	VALUES (@SalesID,@GoodsID,@GoodsName,@Nocode,@Barcode,@Pinyin,@PackMin,@PriceUnit,@Sum,
		@PriceTotal ,@RateDis,@RateTax, @AddUser, @AddTime, @LastTime)
END
GO
/****** Object:  StoredProcedure [dbo].[SalesRecDetailGetAll]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesRecDetailGetAll]
AS
SELECT ID ,SalesID,GoodsID,GoodsName,Nocode,Barcode,Pinyin,PackMin,PriceUnit,[Sum],PriceTotal ,RateDis,RateTax 
FROM SalesRecDetail ORDER BY ID DESC
GO
/****** Object:  StoredProcedure [dbo].[SalesRecDetailGetByGoodsID]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesRecDetailGetByGoodsID]
	@GoodsID int
AS
SELECT ID,SalesID,GoodsID,GoodsName,Nocode,Barcode,Pinyin,PackMin,PriceUnit,[Sum],PriceTotal ,RateDis,RateTax 
FROM SalesRecDetail  WHERE GoodsID=@GoodsID
GO
/****** Object:  StoredProcedure [dbo].[SalesRecDetailGetByID]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesRecDetailGetByID]
	@ID int
AS
SELECT ID,SalesID,GoodsID,GoodsName,Nocode,Barcode,Pinyin,PackMin,PriceUnit,[Sum],PriceTotal ,RateDis,RateTax 
FROM SalesRecDetail  WHERE ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[SalesRecDetailGetBySalesID]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesRecDetailGetBySalesID]
	@SalesID int
AS
SELECT ID,SalesID,GoodsID,GoodsName,Nocode,Barcode,Pinyin,PackMin,PriceUnit,[Sum],PriceTotal ,RateDis,RateTax 
FROM SalesRecDetail  WHERE SalesID=@SalesID
GO
/****** Object:  StoredProcedure [dbo].[SalesRecGetAll]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesRecGetAll]
AS
SELECT ID ,SalesNo ,SalesDate ,SalesType ,SalerName ,MemberName,MemberNo ,MemberScore ,AmountCharge ,AmountDiscount ,AmountReceive ,
		ProfitSum ,ProfitRate ,PaymentType,DeliveryType ,[Desc] ,[State] ,AddUser ,LastTime ,AddTime 
FROM SalesRec  ORDER BY ID DESC
GO
/****** Object:  StoredProcedure [dbo].[SalesRecGetByID]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesRecGetByID]
	@ID int
AS
SELECT ID ,SalesNo ,SalesDate ,SalesType ,SalerName ,MemberName,MemberNo ,MemberScore ,AmountCharge ,AmountDiscount ,AmountReceive ,
		ProfitSum ,ProfitRate ,PaymentType,DeliveryType ,[Desc] ,[State] ,AddUser ,LastTime ,AddTime 
FROM SalesRec  WHERE ID=@ID
GO
/****** Object:  StoredProcedure [dbo].[SalesRecGetByNo]    Script Date: 2018/3/15 17:34:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalesRecGetByNo]
	@SalesNo nvarchar(100)
AS
SELECT ID ,SalesNo ,SalesDate ,SalesType ,SalerName ,MemberName,MemberNo ,MemberScore ,AmountCharge ,AmountDiscount ,AmountReceive ,
		ProfitSum ,ProfitRate ,PaymentType,DeliveryType ,[Desc] ,[State] ,AddUser ,LastTime ,AddTime 
FROM SalesRec  WHERE SalesNo=@SalesNo
GO
