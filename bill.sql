USE [MyShop]
GO

/****** Object:  Table [dbo].[Bill]    Script Date: 5/12/2019 8:36:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Bill](
	[bid] [varchar](50) NOT NULL,
	[cid] [varchar](50) NOT NULL,
	[bdate] [varchar](50) NOT NULL,
	[total] [real] NOT NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Customer1] FOREIGN KEY([cid])
REFERENCES [dbo].[Customer] ([cid])
GO

ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Customer1]
GO


