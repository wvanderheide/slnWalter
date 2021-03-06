USE [Walter]
GO
/****** Object:  StoredProcedure [dbo].[AllClimbs]    Script Date: 10/17/2016 1:31:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AllClimbs] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT       
			 dbo.Mountains.Id
			, dbo.Mountains.Name
			, dbo.Mountains.Elevation
			, dbo.Mountains.Country
			, dbo.Mountains.State
			, dbo.Mountains.Latitude
			, dbo.Mountains.Longitude
			, dbo.Mountains.MountainNote
			, dbo.MountainSummitLog.MountainID
			, dbo.MountainSummitLog.SummitDate
			, dbo.MountainSummitLog.SummitNote
FROM            dbo.Mountains LEFT OUTER JOIN
                         dbo.MountainSummitLog ON dbo.Mountains.Id = dbo.MountainSummitLog.MountainID

						 order by  dbo.MountainSummitLog.SummitDate desc
END


GO
