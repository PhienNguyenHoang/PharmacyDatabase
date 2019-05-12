USE [MyShop]
GO

/****** Object:  Table [dbo].[Receipt]    Script Date: 5/12/2019 8:38:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Receipt](
	[mid] [varchar](50) NOT NULL,
	[bid] [varchar](50) NOT NULL,
	[rid] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mid] ASC,
	[bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Bill1] FOREIGN KEY([bid])
REFERENCES [dbo].[Bill] ([bid])
GO

ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Bill1]
GO

ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Medicine1] FOREIGN KEY([mid])
REFERENCES [dbo].[Medicine] ([mid])
GO

ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Medicine1]
GO


