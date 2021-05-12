USE [MyMagazin2]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 12.05.2021 16:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[IdClient] [int] NOT NULL,
	[IdUserOfClient] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[IdDeletid] [bit] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[IdClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListOfProductsInOrder]    Script Date: 12.05.2021 16:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListOfProductsInOrder](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[IdDeletid] [bit] NULL,
 CONSTRAINT [PK_ListOfProductsInOrder] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12.05.2021 16:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] NOT NULL,
	[OrderName] [nvarchar](50) NOT NULL,
	[IdDeletid] [bit] NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12.05.2021 16:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[IdDeletid] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOfClient]    Script Date: 12.05.2021 16:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOfClient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
	[IdDeletid] [bit] NULL,
 CONSTRAINT [PK_UserOfClient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12.05.2021 16:14:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IdUsers] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IdUserOfClient] [int] NOT NULL,
	[IdDeletid] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[IdUsers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Client] ([IdClient], [IdUserOfClient], [OrderId], [IdDeletid]) VALUES (1, 1, 1, 0)
INSERT [dbo].[Client] ([IdClient], [IdUserOfClient], [OrderId], [IdDeletid]) VALUES (2, 2, 2, 0)
INSERT [dbo].[Client] ([IdClient], [IdUserOfClient], [OrderId], [IdDeletid]) VALUES (3, 3, 3, 0)
GO
INSERT [dbo].[ListOfProductsInOrder] ([OrderId], [ProductId], [IdDeletid]) VALUES (1, 1, 0)
INSERT [dbo].[ListOfProductsInOrder] ([OrderId], [ProductId], [IdDeletid]) VALUES (1, 2, 0)
INSERT [dbo].[ListOfProductsInOrder] ([OrderId], [ProductId], [IdDeletid]) VALUES (1, 3, 0)
INSERT [dbo].[ListOfProductsInOrder] ([OrderId], [ProductId], [IdDeletid]) VALUES (2, 2, 0)
INSERT [dbo].[ListOfProductsInOrder] ([OrderId], [ProductId], [IdDeletid]) VALUES (3, 1, 0)
INSERT [dbo].[ListOfProductsInOrder] ([OrderId], [ProductId], [IdDeletid]) VALUES (3, 3, 0)
GO
INSERT [dbo].[Orders] ([Id], [OrderName], [IdDeletid], [ClientId]) VALUES (1, N'order_1', 0, 1)
INSERT [dbo].[Orders] ([Id], [OrderName], [IdDeletid], [ClientId]) VALUES (2, N'order_2', 0, 2)
INSERT [dbo].[Orders] ([Id], [OrderName], [IdDeletid], [ClientId]) VALUES (3, N'order_3', 0, 3)
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [IdDeletid]) VALUES (1, N'Tea', 13.3700, N'', 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [IdDeletid]) VALUES (2, N'Chocolate', 420.6900, N'', 0)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Description], [IdDeletid]) VALUES (3, N'Apple', 14.8800, N'', 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[UserOfClient] ON 

INSERT [dbo].[UserOfClient] ([Id], [LastName], [FirstName], [MiddleName], [IdDeletid]) VALUES (1, N'Уваров', N'Савелий', N'Игоревич', 0)
INSERT [dbo].[UserOfClient] ([Id], [LastName], [FirstName], [MiddleName], [IdDeletid]) VALUES (2, N'Никонов', N'Роберт', N'Максимович', 0)
INSERT [dbo].[UserOfClient] ([Id], [LastName], [FirstName], [MiddleName], [IdDeletid]) VALUES (3, N'Кабанов', N'Эльдар', N'Максович', 0)
INSERT [dbo].[UserOfClient] ([Id], [LastName], [FirstName], [MiddleName], [IdDeletid]) VALUES (4, N'Иванов', N'Иван', N'Петрович', 0)
INSERT [dbo].[UserOfClient] ([Id], [LastName], [FirstName], [MiddleName], [IdDeletid]) VALUES (5, N'Петр', N'Иванович', N'Данилов', 0)
INSERT [dbo].[UserOfClient] ([Id], [LastName], [FirstName], [MiddleName], [IdDeletid]) VALUES (6, N'Елизавета', N'Олеговна', N'Пашковская', 0)
SET IDENTITY_INSERT [dbo].[UserOfClient] OFF
GO
ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [DF__Client__IdDeleti__2E1BDC42]  DEFAULT ((0)) FOR [IdDeletid]
GO
ALTER TABLE [dbo].[ListOfProductsInOrder] ADD  CONSTRAINT [DF__ListOfPro__IdDel__2F10007B]  DEFAULT ((0)) FOR [IdDeletid]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__IdDeleti__300424B4]  DEFAULT ((0)) FOR [IdDeletid]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__IdDele__30F848ED]  DEFAULT ((0)) FOR [IdDeletid]
GO
ALTER TABLE [dbo].[UserOfClient] ADD  CONSTRAINT [DF__UserOfCli__IdDel__31EC6D26]  DEFAULT ((0)) FOR [IdDeletid]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IdDeletid__32E0915F]  DEFAULT ((0)) FOR [IdDeletid]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Orders]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_UserOfClient] FOREIGN KEY([IdUserOfClient])
REFERENCES [dbo].[UserOfClient] ([Id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_UserOfClient]
GO
ALTER TABLE [dbo].[ListOfProductsInOrder]  WITH CHECK ADD  CONSTRAINT [FK_ListOfProductsInOrder_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[ListOfProductsInOrder] CHECK CONSTRAINT [FK_ListOfProductsInOrder_Order]
GO
ALTER TABLE [dbo].[ListOfProductsInOrder]  WITH CHECK ADD  CONSTRAINT [FK_ListOfProductsInOrder_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ListOfProductsInOrder] CHECK CONSTRAINT [FK_ListOfProductsInOrder_Products]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserOfClient] FOREIGN KEY([IdUserOfClient])
REFERENCES [dbo].[UserOfClient] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserOfClient]
GO
