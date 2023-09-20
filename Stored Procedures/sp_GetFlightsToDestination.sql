USE [TravelPlanner]
GO

/****** Object:  StoredProcedure [dbo].[sp_GetFlightsToDestination]    Script Date: 20-09-2023 10:47:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetFlightsToDestination]
	@destination varchar(max),
	@source varchar(max)
AS
BEGIN
	select src.Name as SAirport, src.City as SCity, src.Country as SCountry, dest.Name as DAirport, dest.City as DCity, dest.Country as DCountry, ar.Name as Airline
	from Airports dest inner join FlightRoutes r
	on dest.AirportID = r.DAirportId
	inner join Airports src
	on src.AirportID = r.SAirportId
	inner join Airlines ar
	on r.AirlineId = ar.AirlineID
	where dest.City = @destination
	and src.City = @source

RETURN 0
END
GO


