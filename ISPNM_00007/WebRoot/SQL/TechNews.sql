USE [isp4mn]
GO
/****** 对象:  Table [dbo].[TechNews]    脚本日期: 08/10/2011 20:07:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TechNews](
	[newsid] [int] NOT NULL,
	[newstitle] [nvarchar](50) NULL,
	[newscontent] [text] NULL,
	[newstime] [datetime] NULL,
	[newsauthor] [nvarchar](50) NULL,
	[newsfrom] [nvarchar](50) NULL,
	[newspicture] [varchar](150) NULL,
	[bigclassname] [nvarchar](50) NULL,
	[smallclassname] [nvarchar](50) NULL,
	[isimg] [nchar](10) NULL,
 CONSTRAINT [PK_TechnologyNews] PRIMARY KEY CLUSTERED 
(
	[newsid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF