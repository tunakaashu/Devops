USE [ashu]
GO

/****** Object:  Table [dbo].[patient]    Script Date: 19-10-2019 14:34:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[patient](
	[patient_Id] [int] IDENTITY(1,1) NOT NULL,
	[patient_Name] [varchar](50) NULL,
	[gender] [varchar](10) NULL,
	[marital_status] [varchar](10) NULL,
	[age] [int] NULL,
	[phone_no] [bigint] NULL,
	[address] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[patient_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
