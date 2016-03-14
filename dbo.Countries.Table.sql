USE [trade24]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 13/03/2016 02:26:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryID] [int] NOT NULL,
	[ISO2] [char](2) NULL,
	[CountryName] [varchar](80) NOT NULL,
	[LongCountryName] [varchar](80) NOT NULL,
	[ISO3] [char](3) NULL,
	[NumCode] [varchar](6) NULL,
	[UNMemberState] [varchar](12) NULL,
	[CallingCode] [varchar](8) NULL,
	[CCTLD] [varchar](5) NULL,
	[InternationalRegion] [varchar](50) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
