create database J6Store
go
USE J6Store
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [char](4) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Students]    Script Date: 4/12/2021 3:07:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[email] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[marks] [float] NOT NULL,
	[gender] [bit] NOT NULL,
	[country] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ductai', N'13102003', N'Trương Đức Tài', N'ductaitruongcr7@gmail.com', N'me.jpg')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'diemquynh', N'25112003', N'Ngô Thị Diễm Quỳnh', N'diemquynh@gmail.com', N'bae.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ALFKI', N'alfki', N'Maria Anders', N'alfki@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ANATR', N'anatr', N'Ana Trujillo', N'anatr@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ANTON', N'anton', N'Antonio Moreno', N'anton@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'AROUT', N'arout', N'Thomas Hardy', N'arout@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BERGS', N'bergs', N'Christina Berglund', N'bergs@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BLAUS', N'blaus', N'Hanna Moos', N'blaus@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BLONP', N'blonp', N'Frédérique Citeaux', N'blonp@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BOLID', N'bolid', N'Martín Sommer', N'bolid@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BONAP', N'bonap', N'Laurence Lebihan', N'bonap@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BOTTM', N'bottm', N'Elizabeth Lincoln', N'bottm@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'BSBEV', N'bsbev', N'Victoria Ashworth', N'bsbev@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CACTU', N'cactu', N'Patricio Simpson', N'cactu@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CENTC', N'centc', N'Francisco Chang', N'centc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CHOPS', N'chops', N'Yang Wang', N'chops@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'COMMI', N'commi', N'Pedro Afonso', N'commi@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'CONSH', N'consh', N'Elizabeth Brown', N'consh@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'customer', N'123', N'Nguyễn Văn Tèo', N'teonv@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'director', N'123', N'Nguyễn Chí Phèo', N'pheonc@fpt.edu.vn', N'-1407968806.jpg')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'DRACD', N'dracd', N'Sven Ottlieb', N'dracd@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'DUMON', N'dumon', N'Janine Labrune', N'dumon@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'EASTC', N'eastc', N'Ann Devon', N'eastc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ERNSH', N'ernsh', N'Roland Mendel', N'ernsh@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FAMIA', N'famia', N'Aria Cruz', N'famia@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FISSA', N'fissa', N'Diego Roel', N'fissa@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FOLIG', N'folig', N'Martine Rancé', N'folig@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FOLKO', N'folko', N'Maria Larsson', N'folko@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FRANK', N'frank', N'Peter Franken', N'frank@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FRANR', N'franr', N'Carine Schmitt', N'franr@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FRANS', N'frans', N'Paolo Accorti', N'frans@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'FURIB', N'furib', N'Lino Rodriguez', N'furib@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GALED', N'galed', N'Eduardo Saavedra', N'galed@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GODOS', N'godos', N'José Pedro Freyre', N'godos@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GOURL', N'gourl', N'André Fonseca', N'gourl@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GREAL', N'greal', N'Howard Snyder', N'greal@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'GROSR', N'grosr', N'Manuel Pereira', N'grosr@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'HANAR', N'hanar', N'Mario Pontes', N'hanar@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'HILAA', N'hilaa', N'Carlos Hernández', N'hilaa@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'HUNGC', N'hungc', N'Yoshi Latimer', N'hungc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'HUNGO', N'hungo', N'Patricia McKenna', N'hungo@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ISLAT', N'islat', N'Helen Bennett', N'islat@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'KOENE', N'koene', N'Philip Cramer', N'koene@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LACOR', N'lacor', N'Daniel Tonini', N'lacor@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LAMAI', N'lamai', N'Annette Roulet', N'lamai@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LAUGB', N'laugb', N'Yoshi Tannamuri', N'laugb@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LAZYK', N'lazyk', N'John Steel', N'lazyk@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LEHMS', N'lehms', N'Renate Messner', N'lehms@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LETSS', N'letss', N'Jaime Yorres', N'letss@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LILAS', N'lilas', N'Carlos González', N'lilas@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LINOD', N'linod', N'Felipe Izquierdo', N'linod@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'LONEP', N'lonep', N'Fran Wilson', N'lonep@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'MAGAA', N'magaa', N'Giovanni Rovelli', N'magaa@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'MAISD', N'maisd', N'Catherine Dewey', N'maisd@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'MEREP', N'merep', N'Jean Fresnière', N'merep@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'MORGK', N'morgk', N'Alexander Feuer', N'morgk@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'NORTS', N'norts', N'Simon Crowther', N'norts@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'OCEAN', N'ocean', N'Yvonne Moncada', N'ocean@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'OLDWO', N'oldwo', N'Rene Phillips', N'oldwo@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'OTTIK', N'ottik', N'Henriette Pfalzheim', N'ottik@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'PARIS', N'paris', N'Marie Bertrand', N'paris@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'PERIC', N'peric', N'Guillermo Fernández', N'peric@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'PICCO', N'picco', N'Georg Pipps', N'picco@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'PRINI', N'prini', N'Isabel de Castro', N'prini@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'QUEDE', N'quede', N'Bernardo Batista', N'quede@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'QUEEN', N'queen', N'Lúcia Carvalho', N'queen@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'QUICK', N'quick', N'Horst Kloss', N'quick@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'RANCH', N'ranch', N'Sergio Gutiérrez', N'ranch@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'RATTC', N'rattc', N'Paula Wilson', N'rattc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'REGGC', N'reggc', N'Maurizio Moroni', N'reggc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'RICAR', N'ricar', N'Janete Limeira', N'ricar@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'RICSU', N'ricsu', N'Michael Holz', N'ricsu@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'ROMEY', N'romey', N'Alejandra Camino', N'romey@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SANTG', N'santg', N'Jonas Bergulfsen', N'santg@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SAVEA', N'savea', N'Jose Pavarotti', N'savea@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SEVES', N'seves', N'Hari Kumar', N'seves@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SIMOB', N'simob', N'Jytte Petersen', N'simob@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SPECD', N'specd', N'Dominique Perrier', N'specd@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SPLIR', N'splir', N'Art Braunschweiger', N'splir@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'staff', N'123', N'Phạm Thị Nở', N'nopt@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'SUPRD', N'suprd', N'Pascale Cartrain', N'suprd@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'THEBI', N'thebi', N'Liz Nixon', N'thebi@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'THECR', N'thecr', N'Liu Wong', N'thecr@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'TOMSP', N'tomsp', N'Karin Josephs', N'tomsp@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'TORTU', N'tortu', N'Miguel Angel Paolino', N'tortu@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'TRADH', N'tradh', N'Anabela Domingues', N'tradh@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'TRAIH', N'traih', N'Helvetius Nagy', N'traih@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'VAFFE', N'vaffe', N'Palle Ibsen', N'vaffe@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'VICTE', N'victe', N'Mary Saveley', N'victe@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'VINET', N'vinet', N'Paul Henriot', N'vinet@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WANDK', N'wandk', N'Rita Müller', N'wandk@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WARTH', N'warth', N'Pirkko Koskitalo', N'warth@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WELLI', N'welli', N'Paula Parente', N'welli@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WHITC', N'whitc', N'Karl Jablonski', N'whitc@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WILMK', N'wilmk', N'Matti Karttunen', N'wilmk@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'WOLZA', N'wolza', N'Zbyszek Piestrzeniewicz', N'wolza@gmail.com', N'user.png')

SET IDENTITY_INSERT [dbo].[Authorities] ON 
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2, N'ALFKI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (3, N'ANATR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (4, N'ANTON', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (5, N'AROUT', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (6, N'BERGS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7, N'BLAUS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (8, N'BLONP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (9, N'BOLID', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (10, N'BONAP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (11, N'BOTTM', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (12, N'BSBEV', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (13, N'CACTU', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (14, N'CENTC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (15, N'CHOPS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (16, N'COMMI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (17, N'CONSH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (18, N'DRACD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (19, N'DUMON', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (20, N'EASTC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (21, N'ERNSH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (22, N'FAMIA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (23, N'FISSA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (24, N'FOLIG', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (25, N'FOLKO', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (26, N'FRANK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (27, N'FRANR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (28, N'FRANS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (29, N'FURIB', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (30, N'GALED', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (31, N'GODOS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (32, N'GOURL', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (33, N'GREAL', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (34, N'GROSR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (35, N'HANAR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (36, N'HILAA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (37, N'HUNGC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (38, N'HUNGO', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (39, N'ISLAT', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (40, N'KOENE', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (41, N'LACOR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (42, N'LAMAI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (43, N'LAUGB', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (44, N'LAZYK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (45, N'LEHMS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (46, N'LETSS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (47, N'LILAS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (48, N'LINOD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (49, N'LONEP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (50, N'MAGAA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (51, N'MAISD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (52, N'MEREP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (53, N'MORGK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (55, N'NORTS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (56, N'OCEAN', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (57, N'OLDWO', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (58, N'OTTIK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (59, N'PARIS', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (60, N'PERIC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (61, N'PICCO', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (62, N'PRINI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (63, N'QUEDE', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (64, N'QUEEN', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (65, N'QUICK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (66, N'RANCH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (67, N'RATTC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (68, N'REGGC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (69, N'RICAR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (70, N'RICSU', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (71, N'ROMEY', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (72, N'SANTG', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (74, N'SAVEA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (75, N'SEVES', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (76, N'SIMOB', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (77, N'SPECD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (78, N'SPLIR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (79, N'SUPRD', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (80, N'customer', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (82, N'THEBI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (83, N'THECR', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (84, N'TOMSP', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (85, N'TORTU', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (86, N'TRADH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (87, N'TRAIH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (89, N'VAFFE', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (90, N'VICTE', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (91, N'VINET', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (92, N'WANDK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (93, N'WARTH', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (94, N'WELLI', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (95, N'WHITC', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (96, N'WILMK', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (97, N'WOLZA', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (98, N'director', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (100, N'staff', N'STAF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2103, N'director', N'STAF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (7103, N'staff', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2003, N'ductai', N'DIRE')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2004, N'diemquynh', N'DIRE')
SET IDENTITY_INSERT [dbo].[Authorities] OFF

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1000', N'Áo Thun')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1001', N'Áo Khoác')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1002', N'Quần tây')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1003', N'Quần jean')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1004', N'Quần short')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1005', N'Nữ trang')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1006', N'Nón thời trang')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1007', N'Túi xách')



SET IDENTITY_INSERT [dbo].[OrderDetails] ON 
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122506, 31205, 1004, 22, 19)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122507, 31205, 1001, 190, 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122508, 31206, 1029, 123.79, 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122509, 31206, 1017, 39, 6)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122510, 31206, 1009, 97, 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122511, 31207, 1013, 6, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122512, 31207, 1010, 31, 7)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122513, 31207, 1004, 22, 6)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122514, 31207, 1003, 10, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (122515, 31207, 1015, 15.5, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132505, 41205, 1074, 10, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132506, 41206, 1024, 4.5, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132507, 41206, 1038, 263.5, 8)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132508, 41206, 1035, 18, 6)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132509, 41208, 1014, 23.25, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132510, 41208, 1007, 30, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132511, 41208, 1028, 45.6, 6)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132512, 41208, 1074, 10, 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (132513, 41208, 1051, 53, 4)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (142505, 51205, 1024, 4.5, 8)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (142506, 51205, 1014, 23.25, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (142507, 51205, 1028, 45.6, 7)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (152505, 61205, 1002, 19, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (152506, 61205, 1001, 190, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162505, 71205, 1029, 123.79, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162506, 71205, 1019, 9.2, 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162507, 71206, 1042, 14, 7)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162508, 71206, 1024, 4.5, 15)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162509, 71206, 1002, 19, 9)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162510, 71206, 1001, 190, 9)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162511, 71206, 1075, 7.75, 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162512, 71206, 1081, 19, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162513, 71206, 1070, 15, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162514, 71206, 1022, 21, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (162515, 71206, 1019, 9.2, 12)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172505, 81206, 1012, 38, 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172506, 81206, 1031, 12.5, 6)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172507, 81206, 1028, 45.6, 15)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172508, 81207, 1019, 9.2, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172509, 81207, 1016, 17.45, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172510, 81207, 1005, 21.35, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172511, 81207, 1042, 14, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172512, 81208, 1013, 6, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172513, 81208, 1014, 23.25, 8)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172514, 81208, 1002, 19, 8)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172515, 81209, 1006, 25, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172516, 81209, 1004, 22, 4)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172517, 81210, 1016, 17.45, 4)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172518, 81211, 1014, 23.25, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172519, 81211, 1028, 45.6, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172520, 81211, 1007, 30, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172521, 81212, 1004, 22, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172522, 81212, 1003, 10, 6)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (172523, 81212, 1006, 25, 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (182505, 91205, 1042, 14, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (182506, 91205, 1023, 9, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (182507, 91205, 1022, 21, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (192505, 101205, 1003, 10, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (192506, 101205, 1004, 22, 5)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (192507, 101205, 1006, 25, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202505, 111205, 1006, 25, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202506, 111205, 1004, 22, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202507, 111205, 1012, 38, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202508, 111205, 1011, 21, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202509, 111205, 1031, 12.5, 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202510, 111206, 1016, 17.45, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202511, 111206, 1005, 21.35, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (202512, 111206, 1019, 9.2, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212505, 121205, 1003, 10, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212506, 121205, 1002, 19, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212507, 121205, 1001, 190, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212508, 121206, 1023, 9, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212509, 121206, 1022, 21, 3)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212510, 121206, 1042, 14, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (212511, 121206, 1017, 39, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF

SET IDENTITY_INSERT [dbo].[Orders] ON 
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (21209, N'director', CAST(0x0000ACE900000000 AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (31205, N'staff', CAST(0x0000ACEA00000000 AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (31206, N'staff', CAST(0x0000ACEA00000000 AS DateTime), N'Mishi Kobe Niku')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (31207, N'director', CAST(0x0000ACEA00000000 AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (41205, N'staff', CAST(0x0000ACEC00000000 AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (41206, N'staff', CAST(0x0000ACEC00000000 AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (41208, N'staff', CAST(0x0000ACEC00000000 AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (51205, N'director', CAST(0x0000ACED00000000 AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (61205, N'customer', CAST(0x0000ACED00000000 AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (71205, N'customer', CAST(0x0000ACED00000000 AS DateTime), N'778/B1 Nguyễn Kiệm, F.4 Q.Tân Phú, HCM')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (71206, N'director', CAST(0x0000ACEE00000000 AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81206, N'customer', CAST(0x0000ACEE00000000 AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81207, N'customer', CAST(0x0000ACEE00000000 AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81208, N'director', CAST(0x0000ACEE00000000 AS DateTime), N'Shipping Address')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81209, N'director', CAST(0x0000ACEE00000000 AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81210, N'staff', CAST(0x0000ACEE00000000 AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81211, N'staff', CAST(0x0000ACEE00000000 AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (81212, N'staff', CAST(0x0000ACEE00000000 AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (91205, N'customer', CAST(0x0000ACF300000000 AS DateTime), N'Shipping Address:')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (101205, N'customer', CAST(0x0000ACF300000000 AS DateTime), N'2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (111205, N'customer', CAST(0x0000ACF400000000 AS DateTime), N'FPT Polytechnic © 2021. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (111206, N'customer', CAST(0x0000ACF400000000 AS DateTime), N'FPT Polytechnic © 2021. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (121205, N'staff', CAST(0x0000AD0100000000 AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (121206, N'staff', CAST(0x0000AD0100000000 AS DateTime), N'© 2021 by FPT Polytechnic. All rights reserved.')
SET IDENTITY_INSERT [dbo].[Orders] OFF

SET IDENTITY_INSERT [dbo].[Products] ON 
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1001, N'Áo thun INFINITEE Fni0050', N'1001.jpg', 190, CAST(0xD6070B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1002, N'Áo thun Simon Lovely tee', N'1002.jpg', 19, CAST(0xB80B0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1003, N'Áo thun Local Brand Unisex Karants', N'1003.jpg', 10, CAST(0x26FE0A00 AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1004, N'Áo thun unisex Local Brand Otis Club', N'1004.jpg', 22, CAST(0x0E020B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1005, N'Áo thun Simon Biglogo tee - Đen', N'1005.jpg', 21.35, CAST(0xF7050B00 AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1006, N'Áo thun Tee basic ss1 CREWZ', N'1006.jpg', 25, CAST(0xE1090B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1007, N'Áo thun phông nam đen BEEYANBUY', N'1007.jpg', 30, CAST(0x0D0C0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1008, N'Áo Phông basic SAINT PARIS', N'1008.jpg', 40, CAST(0x4CFC0A00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1009, N'Áo thun local brand By Unispace', N'1009.jpg', 97, CAST(0xF80F0B00 AS Date), 0, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1010, N'Áo Thun Simon Soothing tee', N'1010.jpg', 31, CAST(0xC91B0B00 AS Date), 0, N'1000')

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1011, N'Áo khoác gió unisex 2 lớp', N'1011.jpg', 21, CAST(0xEC0F0B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1012, N'Áo Khoác Nỉ Zip Kéo Unisex', N'1012.jpg', 38, CAST(0xD7130B00 AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1013, N'Áo Khoác Bomber', N'1013.jpg', 6, CAST(0x97270B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1014, N'Áo Khoác Nỉ Form Rộng Logo Con Bò', N'1014.jpg', 23.25, CAST(0x90270B00 AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1015, N'Áo Hoodie Zip Basic', N'1015.jpg', 15.5, CAST(0xAB170B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1016, N'Áo Khoác JEAN NHUNG', N'1016.jpg', 17.45, CAST(0x8B1F0B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1017, N'Áo Khoác Dù Có Nón CAMPING', N'1017.jpg', 39, CAST(0x602F0B00 AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1018, N'Áo Khoác Nỉ Nam Nữ Form Rộng Tay Lỡ', N'1018.jpg', 62.5, CAST(0x1F340B00 AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1019, N'Áo khoác hoodie zip chất nỉ bông', N'1019.jpg', 9.2, CAST(0x4A2B0B00 AS Date), 0, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1020, N'ÁO KHOÁC TARBO.CLUB', N'1020.jpg', 81, CAST(0x342F0B00 AS Date), 0, N'1001')

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1021, N'Quần âu nam - quần tây nam KIZAWA Công Sở Đen', N'1021.jpg', 10, CAST(0x1D330B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1022, N'Quần âu nam Ikemen chất vải tuyết mưa', N'1022.jpg', 21, CAST(0xC0300B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1023, N'Quần Tây Nam - Quần Âu Nam ORENO dáng ôm', N'1023.jpg', 9, CAST(0xAB340B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1024, N'Quần âu vải tuyết mưa 1HAND', N'1024.jpg', 4.5, CAST(0xB92F0B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1025, N'Quần Tây Nam Hàn Quốc KJ Ống Côn Cao Cấp', N'1025.jpg', 14, CAST(0x81340B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1026, N'Quần Tây Âu Nam MANDO Ống Côn Công Sở', N'1026.jpg', 31.23, CAST(0x49310B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1027, N'Quần Tây Nam Nữ Vitex Ống hơi Loe', N'1027.jpg', 43.9, CAST(0x112E0B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1028, N'Quần kaki 200X ống rộng màu đen', N'1028.jpg', 45.6, CAST(0xC6330B00 AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1029, N'Quần âu nam Qthouse', N'1029.jpg', 123.79, CAST(0xAE330B00 AS Date), 0, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1030, N'Quần âu nam hàn quốc dáng baggy suông', N'1030.jpg', 25.89, CAST(0x3E340B00 AS Date), 0, N'1002')

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1031, N'Quần jean nam ANYOUNG', N'1031.jpg', 12.5, CAST(0x7A330B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1032, N'Quần Kaki Nam Nữ Ống Rộng Màu Trắng', N'1032.jpg', 32, CAST(0x8B340B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1033, N'Quần jean nam cạp cao ống suông', N'1033.jpg', 2.5, CAST(0xC2320B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1034, N'Quần jean baggy nam unisex Hàn Quốc', N'1034.jpg', 14, CAST(0x1E330B00 AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1035, N'Quần jean nam nữ unisex dáng suông rộng', N'1035.jpg', 18, CAST(0x2B340B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1036, N'Quần Jean Ống Rộng Unisex Nam Nữ Màu Xám Đen', N'1036.jpg', 19, CAST(0xCA080B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1037, N'Quần baggy jean rách', N'1037.jpg', 26, CAST(0xB80C0B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1038, N'Quần jean túi hộp nam ulzzang', N'1038.jpg', 263.5, CAST(0xAC090B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1039, N'Quần Jean Ống Rộng Nam Nữ Unisex WASH', N'1039.jpg', 18, CAST(0x950D0B00 AS Date), 0, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1040, N'Quần Jean Dài Dáng Suông Rộng', N'1040.jpg', 18.4, CAST(0x1F030B00 AS Date), 0, N'1003')

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1041, N'Quần Short unisex nam nữ chất cotton cao cấp', N'1041.jpg', 9.65, CAST(0x0D070B00 AS Date), 0, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1042, N'Quần short kaki nam KALOS', N'1042.jpg', 14, CAST(0xC6FE0A00 AS Date), 0, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1043, N'Quần short Túi Hộp Pant', N'1043.jpg', 46, CAST(0xCD070B00 AS Date), 0, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1044, N'Quần Short nhiều túi chất liệu kaki', N'1044.jpg', 19.45, CAST(0x63FA0A00 AS Date), 0, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1045, N'Quần đùi thể thao dây rút', N'1045.jpg', 9.5, CAST(0xCA160B00 AS Date), 1, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1046, N'Quần short bò unisex', N'1046.jpg', 12, CAST(0xB81A0B00 AS Date), 0, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1047, N'Quần đùi nam nữ unisex in hình vịt vàng', N'1047.jpg', 9.5, CAST(0x340A0B00 AS Date), 0, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1048, N'Quần short nữ PINKSTORE29 dáng ôm vòng 3', N'1048.jpg', 12.75, CAST(0x1F0E0B00 AS Date), 0, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1049, N'Quần Sooc Nữ', N'1049.jpg', 20, CAST(0x09120B00 AS Date), 0, N'1004')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1050, N'Quần đùi nam cotton', N'1050.jpg', 16.25, CAST(0xF2150B00 AS Date), 0, N'1004')

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1051, N'Vòng Tay Mặt Bướm Đính Đá Opal', N'1051.jpg', 53, CAST(0x4A2A0B00 AS Date), 0, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1052, N'Vòng tay nữ, lắc tay cỏ bốn lá may mắn', N'1052.jpg', 7, CAST(0x00260B00 AS Date), 0, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1053, N'Vòng tay RINHOO bạc mặt hình trái tim', N'1053.jpg', 32.8, CAST(0x092E0B00 AS Date), 0, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1054, N'Vòng Tay Bạc S925 Đính Hạt Ngọc Trai', N'1054.jpg', 7.45, CAST(0xF6310B00 AS Date), 1, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1055, N'Nhẫn thép titan không gỉ', N'1055.jpg', 24, CAST(0xC02E0B00 AS Date), 0, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1056, N'Nhẫn hở tim hồng cá tính', N'1056.jpg', 38, CAST(0x8D2E0B00 AS Date), 0, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1057, N'Nhẫn Ghép Hình Trái Tim', N'1057.jpg', 19.5, CAST(0x7A320B00 AS Date), 0, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1058, N'Dây chuyền nữ Madeline', N'1058.jpg', 13.25, CAST(0x87340B00 AS Date), 0, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1059, N'Vòng cổ Mặt Hoa Tulip Đính Đá Opal', N'1059.jpg', 55, CAST(0x0C2F0B00 AS Date), 0, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1060, N'Dây chuyền nữ V64 mặt trái tim', N'1060.jpg', 34, CAST(0xF6320B00 AS Date), 0, N'1005')

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1061, N'Mũ lưỡi trai Hàn Quốc', N'1061.jpg', 28.5, CAST(0x982E0B00 AS Date), 0, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1062, N'Nón lưỡi trai du lịch', N'1062.jpg', 49.3, CAST(0x852F0B00 AS Date), 0, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1063, N'Mũ lưỡi trai thêu chữ CRUISE', N'1063.jpg', 43.9, CAST(0x482F0B00 AS Date), 0, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1064, N'Mũ Len Beanie Nón len Nam nữ', N'1064.jpg', 33.25, CAST(0x65310B00 AS Date), 0, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1065, N'Mũ nón phớt cói đi biển nam và nữ', N'1065.jpg', 21.05, CAST(0xF82F0B00 AS Date), 0, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1066, N'Nón cói panama đi biển cho Nam Nữ', N'1066.jpg', 17, CAST(0xE1330B00 AS Date), 1, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1067, N'Nón Cao Bồi Cực Chất thoáng khí', N'1067.jpg', 14, CAST(0x9E330B00 AS Date), 1, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1068, N'Nón kết lưới và da lộn chữ S', N'1068.jpg', 12.5, CAST(0x9B310B00 AS Date), 0, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1069, N'Nón Bucket Nam 2 Lớp Thêu Chú Vịt', N'1069.jpg', 36, CAST(0xFC330B00 AS Date), 0, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1070, N'Nón Kết Lưới The Indian Nón Hiphop', N'1070.jpg', 15, CAST(0x12310B00 AS Date), 0, N'1006')

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1071, N'Túi xách nữ thời trang thiết kế ô kẻ', N'1071.jpg', 21.5, CAST(0x75080B00 AS Date), 1, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1072, N'Túi xách nữ đẹp thời trang công sở', N'1072.jpg', 34.8, CAST(0x5F0C0B00 AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1073, N'Túi xách YADOU da mềm gấp gọn', N'1073.jpg', 15, CAST(0xA90B0B00 AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1074, N'Túi xách nữ đeo vai đeo chéo kẹp nách thời trang', N'1074.jpg', 10, CAST(0x660B0B00 AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1075, N'Túi xách đeo vai NALLCHEER bằng da PU', N'1075.jpg', 7.75, CAST(0x880B0B00 AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1076, N'Túi kẹp nách đi chơi dự tiệc', N'1076.jpg', 18, CAST(0x0AFA0A00 AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1077, N'Túi Xách Đeo Vai Vải Nhung', N'1077.jpg', 13, CAST(0x27020B00 AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1078, N'Túi đeo chéo nữ mini da trơn', N'1078.jpg', 19, CAST(0x910D0B00 AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1079, N'Túi Xách Đeo Vai Sức Chứa Lớn', N'1079.jpg', 97, CAST(0x21150B00 AS Date), 0, N'1007')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (1080, N'Túi xách xiên túi nữ túi điện thoại di động', N'1080.jpg', 97, CAST(0x21150B00 AS Date), 0, N'1007')
SET IDENTITY_INSERT [dbo].[Products] OFF
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAF', N'Staffs')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'anhntps10770@fpt.edu.vn', N'Nguyễn Tiến Anh', 10, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'chaulnnps10835@fpt.edu.vn', N'Lê Nguyễn Ngọc Châu', 7, 0, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'cuonglcps10817@fpt.edu.vn', N'Lý Chí Cường', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'datnvps10930@fpt.edu.vn', N'Nguyễn Vũ Đạt', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'dobps10723@fpt.edu.vn', N'Bùi Đỏ', 10, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'ducnpps10800@fpt.edu.vn', N'Nguyễn Phúc Đức', 7, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'duytkps10303@fpt.edu.vn', N'Trần Khánh Duy', 6, 1, N'US')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'huyntps10808@fpt.edu.vn', N'Nguyễn Thanh Huy', 4, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'khaihcps10763@fpt.edu.vn', N'Hoàng Cao Khải', 5, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'luudpps10344@fpt.edu.vn', N'Đào Phong Lưu', 8, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'manhbdps09585@fpt.edu.vn', N'Bùi Đức Mạnh', 5, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'phatltps10691@fpt.edu.vn', N'Lê Tấn Phát', 9, 1, N'US')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'phucpbps10710@fpt.edu.vn', N'Phạm Bá Phúc', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'phuongntdps09013@fpt.edu.vn', N'Nguyễn Thị Diễm Phương', 8, 0, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'quangnmps10741@fpt.edu.vn', N'Nguyễn Minh Quang', 6, 1, N'US')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'quangvvtps09851@fpt.edu.vn', N'Võ Văn Thanh Quang', 5, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'sangntps10356@fpt.edu.vn', N'Nguyễn Tống Sang', 5, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'sonntps10858@fpt.edu.vn', N'Nguyễn Thanh Sơn', 9, 1, N'US')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'suotlvmps10970@fpt.edu.vn', N'Lê Vương Minh Suốt', 7, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'thachnhps10818@fpt.edu.vn', N'Nguyễn Hữu Thạch', 8, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'thangtvps10394@fpt.edu.vn', N'Trằn Văn Thắng', 9, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'trangntpps10956@fpt.edu.vn', N'Nguyễn Thị Phương Trang', 4, 0, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'trungdvps10716@fpt.edu.vn', N'Đặng Văn Trung', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'tuanncqps10850@fpt.edu.vn', N'Nguyễn Cửu Quang Tuấn', 6, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'tuannnps10819@fpt.edu.vn', N'Nguyễn Ngọc Tuấn', 10, 1, N'VN')
INSERT [dbo].[Students] ([email], [fullname], [marks], [gender], [country]) VALUES (N'vinhptps09842@fpt.edu.vn', N'Phạm Thế Vinh', 10, 1, N'VN')
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Customers_Photo]  DEFAULT (N'Photo.gif') FOR [Photo]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Order_Details_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_OrderDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Image]  DEFAULT (N'Product.gif') FOR [Image]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_UnitPrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ProductDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Available]  DEFAULT ((1)) FOR [Available]
GO
ALTER TABLE [dbo].[Students] ADD  CONSTRAINT [DF_Students_gender]  DEFAULT ((1)) FOR [gender]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Roles]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_UserRoles_Users]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK3ess0s7i9qs6sim1pf9kxhkpq]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tiếng Việt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Categories', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá bán' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày đặt hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đơn giá' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sản xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Đang kinh doanh ?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Available'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại, FK' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
