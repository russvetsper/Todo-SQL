USE [todo]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 7/26/2016 4:51:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tasks]    Script Date: 7/26/2016 4:51:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL,
	[category_id] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([id], [name]) VALUES (1, N'Outside')
INSERT [dbo].[categories] ([id], [name]) VALUES (2, N'Inside')
SET IDENTITY_INSERT [dbo].[categories] OFF
SET IDENTITY_INSERT [dbo].[tasks] ON 

INSERT [dbo].[tasks] ([id], [description], [category_id]) VALUES (1, N'Walk the dog', 1)
INSERT [dbo].[tasks] ([id], [description], [category_id]) VALUES (2, N'Water the shrubs', 1)
INSERT [dbo].[tasks] ([id], [description], [category_id]) VALUES (3, N'Wash the dishes', 2)
SET IDENTITY_INSERT [dbo].[tasks] OFF
