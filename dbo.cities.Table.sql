USE [trade24]
GO
/****** Object:  Table [dbo].[cities]    Script Date: 13/03/2016 02:26:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cities](
	[cityCode] [varchar](50) NULL,
	[cityName] [varchar](200) NULL,
	[countryCode] [varchar](200) NULL,
	[timezone] [varchar](8) NULL,
	[lat] [varchar](32) NULL,
	[lon] [varchar](32) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[cities] ADD  DEFAULT (NULL) FOR [cityCode]
GO
ALTER TABLE [dbo].[cities] ADD  DEFAULT (NULL) FOR [cityName]
GO
ALTER TABLE [dbo].[cities] ADD  DEFAULT (NULL) FOR [countryCode]
GO
ALTER TABLE [dbo].[cities] ADD  DEFAULT (NULL) FOR [timezone]
GO
ALTER TABLE [dbo].[cities] ADD  DEFAULT (NULL) FOR [lat]
GO
ALTER TABLE [dbo].[cities] ADD  DEFAULT (NULL) FOR [lon]
GO
