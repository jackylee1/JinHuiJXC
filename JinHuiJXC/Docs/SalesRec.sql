USE [JinHuiJXCData]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/** ���ۼ�¼�� **/

CREATE TABLE [dbo].[SalesRec](
	[ID] [int] IDENTITY(1,1) NOT NULL,				--���ۼ�¼ID,����
	[SalesNo] [int] NULL,							--���۵��ݱ��
	[SalesDate] [datetime] NULL,					--���۵�������
	[SalesType] [int] NULL,							--�������ͣ�1СƱ2��Ʊ3�վ�4������5���ⵥ
	[SalerName] [int] NULL,							--������ԱID
	[MemberNo] [int] NULL,							--��Ա���
	[MemberName] [nvarchar](100) NULL,				--��Ա����
	[MemberScore] [int] NULL,						--���ӻ���
	[ChargeAmount] [decimal](18, 2) NULL,				--��������
	[DiscountAmount] [decimal](18, 2) NULL,			--�����Ż�
	[ReceiveAmount] [decimal](18, 2) NULL,			--ʵ�ս��=�ܼ�+����-�Ż�
	[PaymentMethod] [int] NULL,					--���ʽ��1�ֽ�2���п�3���ÿ�4֧����5΢��6��δ����
	[DeliveryMethod] [int] NULL,					--������ʽ��1����2����3�ͻ�����4��������
	[Desc] [nvarchar](2000) NULL,					--��ע˵��
    	[State]	[int]    NULL,						--����״̬0��Ч1��Ч					
	[AddUser] [int] NULL,							--�����ID
	[AddTime] [datetime] NULL,						--���ʱ��
	[LastTime] [datetime] NULL,						--�޸�ʱ��
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [SalesNo]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [SalesType]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [SalerName]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [MemberNo]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ('') FOR [MemberName]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [MemberScore]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [ChargeAmount]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [DiscountAmount]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [ReceiveAmount]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [PaymentMethod]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [DeliveryMethod]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ('') FOR [Desc]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [State]
GO

ALTER TABLE [dbo].[SalesRec] ADD  DEFAULT ((0)) FOR [AddUser]
GO


