USE [JinHuiJXCData]
GO

/****** Object:  Table [dbo].[SalesRec]    Script Date: 2017/5/23 16:32:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SalesRecDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,				--ID,����
	[SalesID] [int] NULL,										--���۵�ID
	[GoodsID] [int] NULL,									--��ƷID
	[GoodsName] [nvarchar](100) NULL,				--��Ʒ����
	[Nocode] [nvarchar](100) NULL,						--��Ʒ����
	[Barcode] [nvarchar](100) NULL,					--��Ʒ����
	[Pinyin] [nvarchar](100) NULL,						--ƴ������
	[PackMin] [int] NULL,									--��С��װ
	[UnitPrice] [decimal](18, 2) NULL,					--����
	[Sum] [int] NULL,											--����
	[DisRate] [int] NULL,										--�ۿ�(%)
	[TaxRate] [int] NULL,										--˰��(%)
	[TotalPrice] [decimal](18, 2) NULL,					--�ܼ�
	[AddUser] [int] NULL,									--�����ID
	[AddTime] [datetime] NULL,							--���ʱ��
	[LastTime] [datetime] NULL,							--�޸�ʱ��
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SalesDetail] ADD  DEFAULT ((0)) FOR [SalesID]
GO

ALTER TABLE [dbo].[SalesDetail] ADD  DEFAULT ((0)) FOR [GoodsID]
GO

ALTER TABLE [dbo].[SalesDetail] ADD  DEFAULT ('') FOR [GoodsName]
GO

ALTER TABLE [dbo].[SalesDetail] ADD  DEFAULT ('') FOR [Nocode]
GO

ALTER TABLE [dbo].[SalesDetail] ADD  DEFAULT ('') FOR [Barcode]
GO

ALTER TABLE [dbo].[SalesDetail] ADD  DEFAULT ('') FOR [Pinyin]
GO

ALTER TABLE [dbo].[SalesDetail] ADD  DEFAULT ((0)) FOR [PackMin]
GO

ALTER TABLE [dbo].[SalesDetail] ADD  DEFAULT ((0)) FOR [UnitPrice]
GO

ALTER TABLE [dbo].[SalesDetail] ADD DEFAULT ((0)) FOR [Sum]
GO

ALTER TABLE [dbo].[SalesDetail] ADD DEFAULT ((0)) FOR [DisRate]
GO

ALTER TABLE [dbo].[SalesDetail] ADD DEFAULT ((0)) FOR [TaxRate]
GO

ALTER TABLE [dbo].[SalesDetail] ADD  DEFAULT ((0)) FOR [TotalPrice]
GO

ALTER TABLE [dbo].[SalesDetail] ADD DEFAULT ((1)) FOR [AddUser]
GO

ALTER TABLE [dbo].[SalesDetail] ADD  DEFAULT (getdate()) FOR [AddTime]
GO

ALTER TABLE [dbo].[SalesDetail] ADD  DEFAULT (getdate()) FOR [LastTime]
GO


