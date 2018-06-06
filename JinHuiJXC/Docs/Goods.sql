USE [JinHuiJXCData]
GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/** ��Ʒ��Ϣ�� **/
CREATE TABLE [dbo].[Goods](
	[ID] [int] IDENTITY(1,1) NOT NULL,								--��ƷID,����
	[Name] [nvarchar](100) NULL,										--��Ʒ����
	[Category] [int] NULL,													--��Ʒ���
	[Brand] [int] NULL,														--��ƷƷ��
	[Nocode] [nvarchar](100) NULL,										--��Ʒ����
	[Barcode] [nvarchar](100) NULL,									--��Ʒ����
	[Pinyin] [nvarchar](100) NULL,										--ƴ������
	[PriceCost] [decimal](18, 2) NULL,									--�ɱ���
	[PriceRetail] [decimal](18, 2) NULL,									--���ۼ�
	[PriceTrade] [decimal](18, 2) NULL,								--������
	[PriceMember] [decimal](18, 2) NULL,							--��Ա��
	[InvNow] [int] NULL,														--��ǰ���
	[InvMin] [int] NULL,														--��Ϳ��
	[InvMax] [int] NULL,														--��߿��
	[PackMin] [int] NULL,													--��С��װ
	[PackMax] [int] NULL,													--����װ
	[PackRatio] [int] NULL,													--��װϵ��
	[PackSpec] [nvarchar](100) NULL,									--����ͺ�
	[Supplier] [int] NULL,														--��Ӧ��ID
	[Producter] [int] NULL,													--������ID
	[Desc] [nvarchar](2000) NULL,										--��Ʒ˵��
	[AddUser] [int] NULL,													--�����ID
	[AddTime] [datetime] NULL,											--���ʱ��
	[LastTime] [datetime] NULL,											--�޸�ʱ��

	CONSTRAINT [PK_Goods] PRIMARY KEY CLUSTERED 
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

ALTER TABLE [dbo].[Goods] ADD  CONSTRAINT [DF_Goods_Spec]  DEFAULT ('') FOR [Spec]
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
	@Desc nvarchar(100), 
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



CREATE PROCEDURE [dbo].[GoodsGetAll]
AS
BEGIN
	SELECT   ID, Name, Category, Brand, Nocode, Barcode, Pinyin, PriceCost, PriceRetail, PriceTrade, PriceMember, InvNow, InvMin, 
                  InvMax, PackMin, PackMax, PackRatio, PackSpec, Supplier, Producter, [Desc], AddUser, AddTime, LastTime
	FROM    Goods
END
GO

