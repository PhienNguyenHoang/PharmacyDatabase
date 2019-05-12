USE [MyShop]
GO

/****** Object:  Table [dbo].[Medicine]    Script Date: 5/12/2019 8:37:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Medicine](
	[mid] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[pid] [varchar](50) NOT NULL,
	[dates] [date] NOT NULL,
	[prices] [real] NOT NULL,
 CONSTRAINT [PK_Medicine] PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Medicine]  WITH CHECK ADD  CONSTRAINT [FK_Medicine_PharMacy] FOREIGN KEY([pid])
REFERENCES [dbo].[PharMacy] ([pid])
GO

ALTER TABLE [dbo].[Medicine] CHECK CONSTRAINT [FK_Medicine_PharMacy]
GO


