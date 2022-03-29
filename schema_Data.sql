USE [DbTestTime]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 29-03-2022 9.40.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[StockID] [int] NOT NULL,
	[Value] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 29-03-2022 9.40.17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ID], [Name], [StockID], [Value]) VALUES (1, N'Laptop A', 1, 1000)
GO
INSERT [dbo].[Product] ([ID], [Name], [StockID], [Value]) VALUES (2, N'Printer A', 1, 500)
GO
INSERT [dbo].[Product] ([ID], [Name], [StockID], [Value]) VALUES (3, N'Laptop B', 2, 1500)
GO
INSERT [dbo].[Product] ([ID], [Name], [StockID], [Value]) VALUES (4, N'Printer A', 2, 500)
GO
INSERT [dbo].[Product] ([ID], [Name], [StockID], [Value]) VALUES (6, N'Server A', 2, 1500)
GO
INSERT [dbo].[Product] ([ID], [Name], [StockID], [Value]) VALUES (7, N'Laptop A', 3, 1200)
GO
INSERT [dbo].[Product] ([ID], [Name], [StockID], [Value]) VALUES (8, N'Laptop B', 3, 1800)
GO
INSERT [dbo].[Product] ([ID], [Name], [StockID], [Value]) VALUES (9, N'Laptop C', 1, 1000)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Stock] ON 
GO
INSERT [dbo].[Stock] ([ID], [Name]) VALUES (1, N'London')
GO
INSERT [dbo].[Stock] ([ID], [Name]) VALUES (2, N'Paris')
GO
INSERT [dbo].[Stock] ([ID], [Name]) VALUES (3, N'Brussels')
GO
SET IDENTITY_INSERT [dbo].[Stock] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Stock] FOREIGN KEY([StockID])
REFERENCES [dbo].[Stock] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Stock]
GO
