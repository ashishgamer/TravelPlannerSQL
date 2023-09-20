USE [TravelPlanner]
GO

/****** Object:  Table [dbo].[Airlines]    Script Date: 20-09-2023 10:46:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Airlines](
	[AirlineID] [int] NOT NULL,
	[Name] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AirlineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


