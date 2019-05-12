USE [MyShop]
GO

/****** Object:  Table [dbo].[PharMacy]    Script Date: 5/12/2019 8:38:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PharMacy](
	[pname] [varchar](50) NOT NULL,
	[paddr] [varchar](50) NOT NULL,
	[pid] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PharMacy] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


