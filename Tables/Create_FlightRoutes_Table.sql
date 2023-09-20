USE [TravelPlanner]
GO

/****** Object:  Table [dbo].[FlightRoutes]    Script Date: 20-09-2023 10:46:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FlightRoutes](
	[FlightId] [int] IDENTITY(1,1) NOT NULL,
	[Airline] [varchar](100) NULL,
	[AirlineId] [int] NULL,
	[Source] [varchar](100) NULL,
	[SAirportId] [int] NULL,
	[Destination] [varchar](100) NULL,
	[DAirportId] [int] NULL,
	[Codeshare] [char](100) NULL,
	[Stops] [int] NULL,
	[Equipment] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[FlightId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


