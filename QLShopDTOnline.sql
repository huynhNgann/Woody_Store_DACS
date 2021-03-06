USE [master]
GO
/****** Object:  Database [QLShopDTOnline]    Script Date: 9/19/2021 4:21:17 AM ******/
CREATE DATABASE [QLShopDTOnline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLShopDTOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\QLShopDTOnline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLShopDTOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\QLShopDTOnline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QLShopDTOnline] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLShopDTOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLShopDTOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLShopDTOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLShopDTOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLShopDTOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLShopDTOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLShopDTOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLShopDTOnline] SET  MULTI_USER 
GO
ALTER DATABASE [QLShopDTOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLShopDTOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLShopDTOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLShopDTOnline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLShopDTOnline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLShopDTOnline] SET QUERY_STORE = OFF
GO
USE [QLShopDTOnline]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QLShopDTOnline]
GO
/****** Object:  Table [dbo].[About]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[DisplayOrder] [int] NOT NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NOT NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
	[ParentID] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Content]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NOT NULL,
	[Status] [bit] NOT NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tags] [nvarchar](500) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContentTag]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [int] NOT NULL,
	[TagID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Chitietgiohang]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietgiohang](
	[ProductId] [bigint] NOT NULL,
	[OrderID] [bigint] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderInfo] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreateDeatils] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Footer]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GroupUser]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupUser](
	[GroupID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_GroupUser] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Giohang]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giohang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Createdate] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMobile] [varchar](50) NULL,
	[ShipAdrress] [nvarchar](50) NULL,
	[ShipEmail] [nvarchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenuType]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [varchar](20) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[Image1] [nvarchar](250) NULL,
	[Image2] [nvarchar](250) NULL,
	[Image3] [nvarchar](250) NULL,
	[Image4] [nvarchar](250) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludeVAT] [bit] NULL,
	[Quantity] [int] NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NOT NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slide]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Value] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tag]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [varchar](50) NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/19/2021 4:21:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[CreateBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Giohang] ON 

INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (1, CAST(N'2021-09-15T00:50:44.737' AS DateTime), NULL, N'', N'', N'', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (2, CAST(N'2021-09-15T08:08:49.267' AS DateTime), NULL, N'', N'', N'', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (3, CAST(N'2021-09-15T08:13:26.493' AS DateTime), NULL, N'', N'', N'', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (4, CAST(N'2021-09-15T13:28:23.737' AS DateTime), NULL, N'abc', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (5, CAST(N'2021-09-18T10:01:34.020' AS DateTime), NULL, N'abc', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (6, CAST(N'2021-09-18T10:04:56.767' AS DateTime), NULL, N'abc', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (7, CAST(N'2021-09-18T10:22:07.863' AS DateTime), NULL, N'abc', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (8, CAST(N'2021-09-18T10:26:39.377' AS DateTime), NULL, N'abc', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (9, CAST(N'2021-09-18T10:29:21.687' AS DateTime), NULL, N'abc', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (10, CAST(N'2021-09-18T10:32:42.780' AS DateTime), NULL, N'abc', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (11, CAST(N'2021-09-18T10:34:13.920' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (12, CAST(N'2021-09-18T10:34:49.000' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (13, CAST(N'2021-09-18T10:37:24.773' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (14, CAST(N'2021-09-18T10:42:23.477' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (15, CAST(N'2021-09-18T10:43:11.957' AS DateTime), NULL, N'abc', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (16, CAST(N'2021-09-18T10:43:26.323' AS DateTime), NULL, N'abc', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (17, CAST(N'2021-09-18T10:46:31.533' AS DateTime), NULL, N'abc', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (18, CAST(N'2021-09-18T10:49:24.737' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (19, CAST(N'2021-09-18T11:00:24.823' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (20, CAST(N'2021-09-18T13:13:51.620' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (21, CAST(N'2021-09-18T13:13:59.593' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (22, CAST(N'2021-09-18T13:14:09.723' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (23, CAST(N'2021-09-18T13:14:31.570' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (24, CAST(N'2021-09-18T13:15:50.933' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (25, CAST(N'2021-09-18T13:15:56.647' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (26, CAST(N'2021-09-18T13:16:33.863' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (27, CAST(N'2021-09-18T16:34:49.317' AS DateTime), NULL, N'Ngân', N'098273', N'13535e', NULL, NULL)
INSERT [dbo].[Giohang] ([ID], [Createdate], [CustomerID], [ShipName], [ShipMobile], [ShipAdrress], [ShipEmail], [Status]) VALUES (28, CAST(N'2021-09-19T01:25:48.163' AS DateTime), NULL, N'', N'', N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Giohang] OFF
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (1, N'Trang chủ', N'/', 1, N'_blank', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (2, N'Giới thiệu', N'/gioi-thieu', 2, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (3, N'Tin tức', N'/tin-tuc', 3, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (4, N'Sản phẩm', N'/san-pham', 4, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (5, N'Liên hệ', N'/lien-he', 5, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (6, N'Đăng nhập', N'/dang-nhap', 1, N'_self', 1, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (7, N'Đăng kí', N'/dang-ki', 2, N'_self', 1, 2)
SET IDENTITY_INSERT [dbo].[MenuType] ON 

INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (1, N'Menu chính')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (2, N'Menu Top')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (1, N'Iphone 11 64GB', N'A01', N'iphone-11-64gb', N'Đa dạng sự lựa chọn với 6 phiên bản màu sắc
Điểm nổi bật của iPhone 11 2019 đó là bên cạnh hai phiên bản đen và trắng quen thuộc thì máy còn có thêm bốn phiên bản khác đó là tím, vàng, xanh lá, đỏ. Với tất cả các phiên bản, bao gồm cả điện thoại iPhone 12 sắp ra mắt thì Apple đều thiết kế cạnh bên trùng màu với thân máy, tạo nên một thể thống nhất.', N'/Asset/User/Image/i_phone-11-dxomark-4.jpg', N'/Asset/User/Image/iphone_11_red_1.jpg', N'/Asset/User/Image/iphone_11_white_4_.webp', N'/Asset/User/Image/iphone_11_yellow-2.jpg', N'/Asset/User/Image/i_phone-11-dxomark-4.jpg', NULL, CAST(14500000 AS Decimal(18, 0)), NULL, NULL, 10, 1, N'Đánh giá iPhone 11  – Camera nâng cấp, màu sắc trẻ trung
iPhone 11 là model có nhiều màu sắc nhất và có giá rẻ nhất trong bộ 3 iPhone 11 series được Apple ra mắt trong năm 2019. Bên cạnh đó, cấu hình máy cũng được nâng cấp đặc biệt về cụm camera sau và Face ID, viên pin dung lượng lớn hơn.', NULL, CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (2, N'Iphone 12 64GB', N'A02', N'iphone-12-64gb', N'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.', N'/Asset/User/Image/iphone-12-xanh-duong-1-1-org.jpg', N'/Asset/User/Image/iphone-12-xanh-la-1-2-org.jpg', N'/Asset/User/Image/iphone-12-violet-gc-3-org.jpg', N'/Asset/User/Image/iphone-12-xanh-la-1-2-org.jpg', N'/Asset/User/Image/iphone-12-den-4-org.jpg', NULL, CAST(20490000 AS Decimal(18, 0)), CAST(20400000 AS Decimal(18, 0)), NULL, 15, 1, N'Với CPU Apple A14 Bionic, bạn có thể dễ dàng trải nghiệm mọi tựa game với những pha chuyển cảnh mượt mà hay hàng loạt hiệu ứng đồ họa tuyệt đẹp ở mức đồ họa cao mà không lo tình trạng giật lag.

', NULL, CAST(N'2021-12-09T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 5)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (3, N'Iphone 12 128GB', N'A03', N'iphone-12-mini-128gb', N'Apple tiếp tục khẳng định vị thế của mình khi cho ra mắt mẫu iPhone 12 series với nhiều điểm được tối ưu hơn, nâng cấp mạnh hơn. Trong đó, iPhone 12 mini 128 GB được ví như là phiên bản thu nhỏ hơn là bản rút gọn với cấu hình không khác gì mấy anh lớn có mức giá hấp dẫn hơn.', N'/Asset/User/Image/iphone-12-mini-xanh-la-1-org.jpg', N'/Asset/User/Image/iphone-12-mini-tim-gc-2-org.jpg', N'/Asset/User/Image/iphone-12-mini-5-org.jpg', N'/Asset/User/Image/iphone-12-mini-trang-3-org.jpg', N'/Asset/User/Image/iphone-12-mini-xanh-la-1-org.jpg', NULL, CAST(18490000 AS Decimal(18, 0)), NULL, NULL, 5, 1, N'Kết nối 5G - tốc độ siêu nhanh
Mọi dòng sản phẩm iPhone 12 đều có hỗ trợ kết nối 5G và iPhone 12 mini cũng không phải ngoại lệ.

Việc hỗ trợ 5G cho tốc độ load cực nhanh, tải các tập phim Full HD giờ đây chỉ được tính bằng giây cho bạn khỏi phải chờ lâu, phát trực tuyến video chất lượng cao, FaceTime ở chế độ HD với độ trễ ít hơn.', NULL, CAST(N'2021-09-12T23:05:59.387' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (4, N'Iphone 12 Pro Max 128GB', N'A04', N'iphone-12-pro-max-128gb', N'iPhone 12 Pro Max 128 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng.', N'/Asset/User/Image/iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg', N'/Asset/User/Image/iphone-12-pro-max-xanh-duong-1-org.jpg', N'/Asset/User/Image/iphone-12-pro-max-xam-1-org.jpg', N'/Asset/User/Image/iphone-12-pro-max-xam-1-org.jpg', N'/Asset/User/Image/iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg', NULL, CAST(30990000 AS Decimal(18, 0)), NULL, NULL, 30, 1, N'iPhone 12 Pro Max 128 GB một siêu phẩm smartphone đến từ Apple. Máy có một hiệu năng hoàn toàn mạnh mẽ đáp ứng tốt nhiều nhu cầu đến từ người dùng và mang trong mình một thiết kế đầy vuông vức, sang trọng', NULL, CAST(N'2021-09-12T23:11:49.040' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (6, N'Samsung Galaxy Z Fold3 5G 256GB ', N'A06', N'Samsung -Galaxy- Z Fold3 -5G -256GB ', N'hiết kế nâng tầm smartphone màn hình gập
Có thể thấy mẫu smartphone Galaxy Z Fold3 lần này vẫn giữ nguyên ngoại hình cùng cơ chế màn hình gập mở dạng quyển sách như của tiền nhiệm, hồ biến chiếc smartphone thành một chiếc máy tính bảng mini một cách dễ dàng và ngược lại.', N'/Asset/User/Image/samsung-galaxy-z-fold-3-green-gc-org.jpg', N'/Aset/User/Image/samsung-galaxy-z-fold-3-slider-tong-quan-1020x570.jpg', N'/Asset/User/Image/vi-vn-samsung-galaxy-z-fold-3-slider-thiet-ke.jpg', N'/Asset/User/Image/vi-vn-samsung-galaxy-z-fold-3-slider-utg.jpg', N'/Asset/User/Image/vi-vn-samsung-galaxy-z-fold-3-slider-da-nhiem.jpg', NULL, CAST(41990000 AS Decimal(18, 0)), NULL, NULL, 10, 4, N'Galaxy Z Fold3 5G, chiếc điện thoại được nâng cấp toàn diện về nhiều mặt, đặc biệt đây là điện thoại màn hình gập đầu tiên trên thế giới có camera ẩn (08/2021). Sản phẩm sẽ là một “cú hit” của Samsung góp phần mang đến những trải nghiệm mới cho người dùng.', NULL, CAST(N'2021-09-13T14:58:02.707' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (11, N'Điện thoại Samsung Galaxy Z Fold2 5G ', N'A07', N'samsung-galaxy-z-flod-2-5g', N'Thiết kế cải tiến hướng đến sự hoàn thiện
Samsung Galaxy Z Fold 2 vẫn giữ nguyên cơ chế màn hình gập ở thế hệ tiền nhiệm. Như một quyển sách, chiếc điện thoại mở ra để hiển thị màn hình lớn bên trong. Bên ngoài là một màn hình phụ tràn viền với thiết kế đục lỗ. ', N'/Asset/User/Image/samsung-galaxy-z-fold-3-green-1-600x600.jpg', N'/Asset/User/Image/samsung-galaxy-z-fold-2-302920-012942 .jpg', N'/Asset/User/Image/samsung-galaxy-z-fold-2-302920-012949 .jpg', N'/Asset/User/Image/samsung-galaxy-z-fold-2-302920-012949 .jpg', N'/Asset/User/Image/samsung-galaxy-z-fold-2-302920-012949 .jpg', NULL, CAST(50000000 AS Decimal(18, 0)), NULL, NULL, 12, 4, N'Galaxy Z Fold 2 là tên gọi chính thức của điện thoại màn hình gập cao cấp của Samsung. Với nhiều nâng cấp tiên phong về thiết kế, hiệu năng và camera, hứa hẹn đây sẽ là một siêu phẩm thành công tiếp theo đến từ “ông trùm” sản xuất điện thoại lớn nhất thế giới. ', NULL, CAST(N'2021-12-09T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 2)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (12, N'Samsung Galaxy Z Flod3 5G', N'A08', N'samsung-galaxy-z-flod3-5g', N'Thiết kế thời thượng đầy lôi cuốn. Biểu tượng thời trang độc đáo nằm gọn trong túi khi gập cho bạn thỏa sức tham gia các hoạt động yêu thích ở bất kì nơi đâu.
Không chỉ là điện thoại, đó là một ngôn ngữ thời trang cá tính
Điện thoại bị ướt ư? Đừng lo
THỏa sức sáng tạo với chiếc điện thoại gập thông minh kháng nước đầu tiên trên thế giới, chuẩn IPX8 giúp điện thoại có khả năng chịu đựng độ sâu 1,5 mét, tối đa 30 phút trong môi trường nước', N'/Asset/User/Image/samsung-galaxy-z-flip-3-cream-1-600x600.jpg', N'/Asset/User/Image/8_1280x1280-800-resize.jpg', N'/Asset/User/Image/galaxy-z-flip3-5g-man-hinh-phu_1280x720-800-resize.jpg', N'/Asset/User/Image/ssglaxy-z-flip3.jpg', N'/Asset/User/Image/samsung-galaxy-z-flip-3-cream-1-600x600.jpg', NULL, CAST(26990000 AS Decimal(18, 0)), NULL, NULL, 10, 4, N'Chỉ cần chọn góc và sẵn sàng tỏa sáng
Bắt trọn mọi khoảnh khắc với chụp một chạm cải tiến. Chọn chế độ gạp mở linh hoạt Flex Mode, bạn có thể chụp ảnh và quay phim cùng một lúc với nhiều góc độ mới lạ đầy sáng tạo
Samsung Galaxy Z Flip3 5G sở hữu cơ cấu gập vỏ sò với ý tưởng là tạo ra một chiếc smartphone có kích thước thông dụng. Với 8 tùy chọn màu sắc, bao gồm Xám, Trắng, Xanh đậm, Hồng, Tím, Xanh lá cây, Đen, và Màu xám tro.
', NULL, CAST(N'2021-09-14T00:47:34.230' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 2)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (13, N'Điện thoại Samsung Galaxy S21 Ultra 5G 128GB ', N'A09', N'samsung-galaxy-s21-ultra-5g-128gb', N'Sự đẳng cấp được Samsung gửi gắm thông qua chiếc smartphone Galaxy S21 Ultra 5G với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong, hứa hẹn đáp ứng trọn vẹn nhu cầu ngày càng cao của người dùng.', N'/Asset/User/Image/samsung-galaxy-s21-ultra-bac-600x600-1-600x600.jpg', N'/Asset/User/Image/samsung-galaxy-s21-ultra-note-2.jpg', N'/Asset/User/Image/samsung-galaxy-s21-ultra-001.jpg', N'/Asset/User/Image/samsung-galaxy-s21-ultra-006.jpg', N'/Asset/User/Image/samsung-galaxy-s21-ultra-5g-6.jpg', NULL, CAST(25990000 AS Decimal(18, 0)), NULL, NULL, 10, 4, N'Đột phá trong thiết kế thời thượng
Không chỉ đơn thuần phục vụ giao tiếp và giải trí, Samsung Galaxy S21 Ultra 5G còn chính là món phụ kiện thời trang khẳng định vị thế của người sở hữu. Vẻ ngoài mảnh mai và thon gọn đến bất ngờ chỉ 165.1 x 75.6 x 8.9 mm và trọng lượng 228 g dù phải “vác” một viên pin lớn.Mặt lưng của thiết bị được phủ bởi một lớp nhám mờ, sang trọng bền bỉ vừa hạn chế bám dấu vân tay tối đa vừa tạo nên vẻ ngoài tinh xảo và cuốn hút đến bất ngờ.Ngoài ra, Galaxy S21 Ultra 5G là mẫu flagship S đầu tiên của Samsung hỗ trợ chiếc bút S Pen, một công cụ vốn đã quen thuộc với nhiều người dùng Galaxy Note. Bằng việc sử dụng công nghệ Wacom, chiếc bút mang đến cảm giác cầm thoải mái hơn và thật hơn.', NULL, CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 2)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (27, N'Điện thoại Samsung Galaxy S21+ 5G 256GB ', N'A10', N'samsung-galxy-s21-5g', N'Bài viết đánh giá
Đắm chìm trong vẻ đẹp tuyệt tác đến từ Samsung Galaxy S21+ 5G 256 GB, làm chủ cuộc chơi với hiệu năng hàng đầu, cụm camera chuyên nghiệp cùng tốc độ 5G bức phá mọi giới hạn, mẫu điện thoại cho bạn thỏa sức khám phá cuộc sống, thể hiện cá tính theo cách riêng của mình', N'/Asset/User/Image/samsung-galaxy-s21-plus-256gb-den-600x600-600x600.jpg', N'/Asset/User/Image/samsung-galaxy-s21-plus-256gb-den-600x600-600x600.jpg', N'/Asset/User/Image/samsung-galaxy-s21-plus-256gb-den-4-org.jpg', N'/Asset/User/Image/samsung-galaxy-s21-plus-256gb-den-6-org.jpg', N'/Asset/User/Image/samsung-galaxy-s21-plus-256gb-den-6-org.jpg', NULL, CAST(23900000 AS Decimal(18, 0)), CAST(23000000 AS Decimal(18, 0)), NULL, 10, 4, N'Thiết kế nguyên khối chuẩn mực không một chi tiết thừa gây khó chịu, cầm nắm vô cùng thoải mái, sử dụng chất liệu kính cao cấp phủ mờ hạn chế trầy xước, bám vân tay và va đập trong quá trình sử dụng.Bộ 3 camera đỉnh cao, kiến tạo từng khoảnh khắcSở hữu cụm 3 camera sau cao cấp, bao gồm camera chính 12 MP hỗ trợ lấy nét kép, camera góc rộng 12 MP và camera tele 64 MP, không chỉ đơn thuần là camera, Samsung Galaxy S21+ còn là nơi ghi lại và lưu trữ mọi khoảnh khắc đáng nhớ xung quanh bạn.', NULL, CAST(N'2021-09-14T08:17:00.783' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 5)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (28, N'Điện thoại Samsung Galaxy S21 5G', N'A11', N'galaxy-s21-5g', N'Galaxy S21 5G nằm trong series S21 đến từ Samsung nổi bật với thiết kế tràn viền, cụm camera ấn tượng cho đến hiệu năng mạnh mẽ hàng đầu.
“Bộ cánh” mới nổi bật và sang trọng
Nổi bật với cụm camera sau được thiết kế đầy mới lạ, phần khuôn hình chữ nhật chứa bộ 3 camera ôm trọn cạnh trái của chiếc smartphone, viền khuôn cong uyển chuyển, hạn chế tối đa độ nhô ra so với mặt lưng, mang lại cái nhìn tổng thể hài hòa, độc đáo.', N'/Asset/User/Image/samsung-galaxy-s21-tim-600x600.jpg', N'/Asset/User/Image/samsung-galaxy-s21-tong-quan-780x433.jpg', N'/Asset/User/Image/vi-vn-samsung-galaxy-s21-5g-camera-slider-copy.jpg', N'/Asset/User/Image/samsung-galaxy-s21-002.jpg', N'/Asset/User/Image/galaxy_s21_5g_17.jpg', NULL, CAST(17900000 AS Decimal(18, 0)), CAST(16000000 AS Decimal(18, 0)), NULL, 20, 4, N'Galaxy S21 là chiếc điện thoại kháng nước, bụi đạt chuẩn IP68, chuẩn cao nhất hiện tại. Máy có thể sống sót ở độ sâu 1.5m lên đến 30 phút, giúp hạn chế được khả năng hư hỏng thiết bị khi bị nước đổ vào, trời mưa hoặc không may làm rơi xuống nước.

Màn hình vô cực Infinity-O siêu mượt
Galaxy S21 được trang bị màn hình Dynamic AMOLED 2X, hỗ trợ HDR10+ tiên tiến do Samsung phát triển, có thể đạt được độ sáng cao nhất lên đến 1300 nits, ngay cả khi dưới ánh sáng mặt trời Galaxy S21 vẫn cho hình ảnh sống động, rõ ràng đến không ngờ, sẽ nâng trải nghiệm thị giác của bạn lên một tầm cao mới.', NULL, CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 5)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (29, N'Điện thoại Samsung Galaxy Note 20', N'A12', N'samsung-galaxy-note-10', N'Tháng 8/2020, Galaxy Note 20 chính thức được lên kệ, với thiết kế camera trước nốt ruồi quen thuộc, cụm camera hình chữ nhật mới lạ cùng với vi xử lý Exynos 990 cao cấp của chính Samsung chắc hẳn sẽ mang lại một trải nghiệm thú vị cùng hiệu năng mạnh mẽ.
Camera cụm hình chữ nhật độc đáo cùng thiết kế mạnh mẽĐiện thoại sở hữu thiết kế khung kim loại chắc chắn, mặt lưng nhựa bóng bẩy, kiểu dáng mạnh mẽ với những góc cạnh vuông vức nhưng vẫn mang lại cảm giác cầm nắm thoải mái.', N'/Asset/User/Image/samsung-galaxy-note-20-062220-122200-fix-600x600.jpg', N'/Asset/User/Image/samsung-galaxy-note-20-235720-125702.jpg', N'/Asset/User/Image/samsung-galaxy-note-20-235520-015514.jpg', N'/Asset/User/Image/-samsung-galaxy-note-20-tinh-nang-noi-bat.jpg', N'/Asset/User/Image/vi-vn-samsung-galaxy-note-20-thietke.jpg', NULL, CAST(14900000 AS Decimal(18, 0)), CAST(14000000 AS Decimal(18, 0)), NULL, 10, 4, N'Camera của Galaxy Note 20 được thiết kế trong cụm hình chữ nhật được đặt gọn ở phía sau bao gồm 1 camera chính 64 MP, camera góc siêu rộng 12 MP và camera tele 12 MP hỗ trợ người dùng dễ dàng lưu lại sắc nét những khoảng khắc đáng nhớ cùng gia đình và bạn bè.Camera Galaxy Note 20 hỗ trợ zoom đến 30x ở chế độ chụp bình thường, trong khi đó, ở chế độ chụp ban đêm, máy vẫn hỗ trợ zoom đến 10x, chi tiết trong điều kiện thiếu sáng nhiều nhưng vẫn cho chất lượng hình tốt và chi tiết.Với khả năng quay video chất lượng cao lên đến 8K siêu nét cùng các tính năng chống rung, lấy nét,... thì việc sở hữu nhiều thước phim xịn mịn bắt mắt là điều hoàn toàn dễ dàng trên chiếc smartphone này.Samsung Note 20 sở hữu camera trước 10 MP trong thiết kế nốt ruồi quen thuộc giúp khung màn hình 6.7 inch được sử dụng tối đa giúp cho việc xem phim hay chơi game đã mắt và tập trung hơn.

', NULL, CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (38, N'Điện thoại Samsung Galaxy S20 FE (8GB/256GB)    ', N'A13', N'samsung-galaxy-s20-fe', N'Samsung đã giới thiệu đến người dùng thành viên mới của dòng điện thoại thông minh S20 Series đó chính là Samsung Galaxy S20 FE. Đây là mẫu flagship cao cấp quy tụ nhiều tính năng mà Samfan yêu thích, hứa hẹn sẽ mang lại trải nghiệm cao cấp của dòng Galaxy S với mức giá dễ tiếp cận hơn.', N'/Asset/User/Image/samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg', N'/Asset/User/Image/samsung-galaxy-s20-fan-edition-122420-082417 .jpg', N'/Asset/User/Image/samsung-galaxy-s20-fan-edition-122820-082802.jpg', N'/Asset/User/Image/samsung-galaxy-s20-fan-edition-123720-083720 .jpg', N'/Asset/User/Image/samsung-galaxy-s20-fan-edition-281220-101256.jpg', NULL, CAST(11900000 AS Decimal(18, 0)), CAST(11000000 AS Decimal(18, 0)), NULL, 10, 4, N'Màn hình:

Super AMOLED6.5"Full HD+
Hệ điều hành:

Android 11
Camera sau:

Chính 12 MP & Phụ 12 MP, 8 MP
Camera trước:

32 MP
Chip:

Snapdragon 865
RAM:

8 GB
Bộ nhớ trong:

256 GB
SIM:

2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 4G
Pin, Sạc:

4500 mAh25 W', NULL, CAST(N'2021-09-17T01:09:19.657' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 5)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (39, N'Điện thoại Samsung Galaxy A52 5G ', N'A14', N'sumsung-galaxy-a52-5g', N'Samsung Galaxy A52 5G ra mắt được trang bị con chip Snapdragon 750G có hỗ trợ 5G tốc độ cao, trải nghiệm đã mắt với màn hình Super AMOLED đi cùng với dung lượng pin lớn và thuộc phân khúc tầm trung rất dễ tiếp cận với mọi người dùng.
Thiết kế hiện đại, mở đầu xu hướng 
Samsung Galaxy A52 5G sở hữu thiết kế nguyên khối với mặt lưng được phủ một lớp nhám, các chi tiết thừa được bỏ đi tạo nên tổng thể đơn giản, sang trọng.', N'/Asset/User/Image/samsung-galaxy-a52-5g-thumb-black-600x600-600x600.jpg', N'/Asset/User/Image/vi-vn-samsung-galaxy-a52-5g-tongquan.jpg', N'/Asset/User/Image/samsung-galaxy-a52-5g-note.jpg', N'/Asset/User/Image/samsung-galaxy-a52-5g-001.jpg', N'/Asset/User/Image/samsung-galaxy-a52-5g-11.jpg', NULL, CAST(10990000 AS Decimal(18, 0)), NULL, NULL, 5, 4, N'Màn hình:

Super AMOLED6.5"Full HD+
Hệ điều hành:

Android 11
Camera sau:

Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP
Camera trước:

32 MP
Chip:

Snapdragon 750G 5G
RAM:

8 GB
Bộ nhớ trong:

128 GB
SIM:

2 Nano SIMHỗ trợ 5G
Pin, Sạc:

4500 mAh25 W', NULL, CAST(N'2021-09-17T01:14:52.973' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 5)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (40, N'Điện thoại Samsung Galaxy A72(8GB/256GB) ', N'A15', N'samsung-galaxy-a71', N'Thiết kế trẻ trung, thời thượng
Galaxy A72 cuốn hút người dùng ngay ánh nhìn đầu tiên với đường cong mềm mại, bóng bẩy. Cụm 4 camera sau nằm gọn trong mô-đun hình chữ nhật quen thuộc cùng với đèn LED flash, màu sắc của phần mô-đun và mặt lưng được thiết kế cùng màu giúp cho tổng thể trở nên đồng bộ, hài hòa hơn.', N'/Asset/User/Image/samsung-galaxy-a72-thumb-balck-600x600-600x600.jpg', N'/Asset/User/Image/samsung-galaxy-a72-note.jpg', N'/Asset/User/Image/samsung-galaxy-a72-800x533-1.jpg', N'/Asset/User/Image/samsung-galaxy-a72-thumb-balck-600x600-600x600.jpg', N'/Asset/User/Image/samsung-galaxy-a72-note.jpg', NULL, CAST(10490000 AS Decimal(18, 0)), CAST(10000000 AS Decimal(18, 0)), NULL, 1, 4, N'Cấu hình Điện thoại Samsung Galaxy A72

Màn hình:

Super AMOLED6.7"Full HD+
Hệ điều hành:

Android 11
Camera sau:

Chính 64 MP & Phụ 12 MP, 8 MP, 5 MP
Camera trước:

32 MP
Chip:

Snapdragon 720G
RAM:

8 GB
Bộ nhớ trong:

256 GB
SIM:

2 Nano SIMHỗ trợ 4G
Pin, Sạc:

5000 mAh25 W', NULL, CAST(N'2021-09-17T01:15:20.703' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 5)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (43, N'Điện thoại Samsung Galaxy M51', N'A16', N'samsung-galaxy-m51', N'Thiết kế hiện đại và đẳng cấp.
Ấn tượng ban đầu với màn hình của Galaxy M51 là kiểu màn hình Infinity-O rộng 6.7 inch. Kiểu thiết kế này đưa camera selfie thu gọn hơn chỉ bằng một hình tròn nhỏ cùng thiết kế màn hình tràn viền làm tăng khả năng hiển thị hình ảnh hơn', N'/Asset/User/Image/samsung-galaxy-m51-trang-new-600x600-600x600.jpg', N'/Asset/User/Image/samsung-galaxy-m51-note.jpg', N'/Asset/User/Image/samsung-galaxy-m51-274020-094023.jpg', N'/Asset/User/Image/samsung-galaxy-m51-trang-new-600x600-600x600 jpg', N'/Asset/User/Image/samsung-galaxy-m51-274020-094023.jpg', NULL, CAST(8490000 AS Decimal(18, 0)), CAST(8000000 AS Decimal(18, 0)), NULL, 1, 4, N'Cấu hình Điện thoại Samsung Galaxy M51

Màn hình:

Super AMOLED Plus6.7"Full HD+
Hệ điều hành:

Android 10
Camera sau:

Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP
Camera trước:

32 MP
Chip:

Snapdragon 730
RAM:

8 GB
Bộ nhớ trong:

128 GB
SIM:

2 Nano SIMHỗ trợ 4G
Pin, Sạc:

7000 mAh25 W', NULL, CAST(N'2021-09-17T08:35:06.020' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 5)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (44, N'Điện thoại Samsung A51', N'A17', N'samsung-galaxy-a51', N'Theo Strategy Analytics, Galaxy A51 là Smartphone Android Bán Chạy Nhất Thế Giới Quý 1/2020, máy sở hữu cụm 4 camera, bao gồm camera macro chụp cận cảnh lần đầu xuất hiện trên smartphone Samsung, màn hình tràn viền vô cực cùng mặt lưng họa tiết kim cương nổi bật.', N'/Asset/User/Image/samsung-galaxy-a51-silver-600x600.jpg', N'/Asset/User/Image/samsung-galaxy-a51-note.jpg', N'/Asset/User/Image/samsung-galaxy-a51-nguyênkhối.jpg', N'/Asset/User/Image/samsung-galaxy-a51-cùngmànhìnhsuper.jpg', N'/Asset/User/Image/samsung-galaxy-a51-cam-nam.jpg', NULL, CAST(7900000 AS Decimal(18, 0)), CAST(7000000 AS Decimal(18, 0)), NULL, 1, 4, N'Cấu hình Điện thoại Samsung Galaxy A31

Màn hình:

Super AMOLED6.4"Full HD+
Hệ điều hành:

Android 10
Camera sau:

Chính 48 MP & Phụ 8 MP, 5 MP, 5 MP
Camera trước:

20 MP
Chip:

MediaTek MT6768 (Helio P65)
RAM:

6 GB
Bộ nhớ trong:

128 GB
SIM:

2 Nano SIMHỗ trợ 4G
Pin, Sạc:

5000 mAh15 W', NULL, CAST(N'2021-09-17T08:36:24.070' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 5)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (45, N'Điện thoại Samsung Galaxy A31', N'A18', N'samsung-galaxy-a31', N'Galaxy A31 là mẫu smartphone tầm trung được ra mắt đầu năm 2020 của Samsung. Thiết bị gây ấn tượng mạnh với ngoại hình thời trang, cụm 4 camera đa chức năng, vân tay dưới màn hình và viên pin khủng lên đến 5000 mAh.', N'/Asset/User/Image/samsung-galaxy-a31-trang-new-600x600-600x600.jpg', N'/Asset/User/Image/samsung-galaxy-a31-note.jpg', N'/Asset/User/Image/samsung-galaxy-a313-2.jpg', N'/Asset/User/Image/samsung-galaxy-a312-3.jpg', N'/Asset/User/Image/samsung-galaxy-a311-3.jpg', NULL, CAST(5790000 AS Decimal(18, 0)), NULL, NULL, 1, 4, N'Galaxy M51 thuộc thế hệ Galaxy M đến từ Samsung và được nằm trong phân khúc giá tầm trung. Máy được nâng cấp và cải tiến với camera góc siêu rộng, dung lượng pin siêu khủng cùng vẻ ngoài sang trọng và thời thượng.', NULL, CAST(N'2021-09-17T08:36:51.103' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 5)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (46, N'Điện thoại OPPO Reno6 5G', N'A19', N'oppo-reno5-5g', N'Reno6 Z 5G đến từ nhà OPPO với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong. Đặc biệt, chiếc điện thoại được hãng đánh giá “chuyên gia chân dung bắt trọn mọi cảm xúc chân thật nhất”, đây chắc chắn sẽ là một “siêu phẩm" mà bạn không thể bỏ qua.', N'/Asset/User/Image/oppo-reno6-z-5g-aurora-1-600x600.jpg', N'/Asset/User/Image/oppo-reno6-z-5g-note-2.jpg', N'/Asset/User/Image/oppo-reno6-z-5g-280721-11481110.jpg', N'/Asset/User/Image/oppo-reno6-z-5g-280721-1148118.jpg', N'/Asset/User/Image/oppo-reno6-z-5g-01.jpg', NULL, CAST(10900000 AS Decimal(18, 0)), CAST(1050000 AS Decimal(18, 0)), NULL, 1, 5, N'Cấu hình Điện thoại OPPO Reno6 Z 5G

Màn hình:

AMOLED6.43"Full HD+
Hệ điều hành:

Android 11
Camera sau:

Chính 64 MP & Phụ 8 MP, 2 MP
Camera trước:

32 MP
Chip:

MediaTek Dimensity 800U 5G
RAM:

8 GB
Bộ nhớ trong:

128 GB
SIM:

2 Nano SIMHỗ trợ 5G
Pin, Sạc:

4310 mAh30 W', NULL, CAST(N'2021-09-17T08:42:58.033' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 5)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (47, N'Điện thoại OPPO A74', N'A20', N'oppo-a74', N'Thiết kế quen thuộc, màu sắc tối giản
Chiếc điện thoại OPPO A74 vẫn sở hữu cụm camera nằm trong mô-đun hình chữ nhật góc trái thân thuộc của hãng, máy được gia công tỉ mỉ, tối ưu kích thước giúp smartphone mỏng nhẹ, thiết kế thân máy cong 3D mảnh mai, dễ cầm nắm sử dụng.', N'/Asset/User/Image/oppo-a74-blue-9-600x600.jpg', N'/Asset/User/Image/oppo-a74-note-2.jpg', N'/Asset/User/Image/oppo-a74-blue-9-600x600.jpg', N'/Asset/User/Image/oppo-a74-4g-002.jpg', N'/Asset/User/Image/oppo-a74-blue-9-600x600.jpg', NULL, CAST(6690000 AS Decimal(18, 0)), CAST(6000000 AS Decimal(18, 0)), NULL, 19, 5, N'Cấu hình Điện thoại OPPO A74

Màn hình:

AMOLED6.43"Full HD+
Hệ điều hành:

Android 11
Camera sau:

Chính 48 MP & Phụ 2 MP, 2 MP
Camera trước:

16 MP
Chip:

Snapdragon 662
RAM:

8 GB
Bộ nhớ trong:

128 GB
SIM:

2 Nano SIMHỗ trợ 4G
Pin, Sạc:

5000 mAh33 W', NULL, CAST(N'2021-09-17T08:45:10.313' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 5)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (48, N'Điện thoại OPPO Find X3 Pro 5G', N'A21', N'oppo-find-x3pro-5g', N'OPPO đã làm khuynh đảo thị trường smartphone khi cho ra đời chiếc điện thoại OPPO Find X3 Pro 5G. Đây là một sản phẩm có thiết kế độc đáo, sở hữu cụm camera khủng, cấu hình thuộc top đầu trong thế giới Android', N'/Asset/User/Image/oppo-find-x3-pro-black-001-1-600x600.jpg', N'/Asset/User/Image/oppo-find-x3-pro-note.jpg', N'/Asset/User/Image/oppo-find-x3-pro-5g-002.jpg', N'/Asset/User/Image/oppo-find-x3-pro-5g-008.jpg', N'/Asset/User/Image/oppo-find-x3-pro-5g-002.jpg', NULL, CAST(26990000 AS Decimal(18, 0)), NULL, NULL, 8, 5, N'Cấu hình Điện thoại OPPO Find X3 Pro 5G

Màn hình:

AMOLED6.7"Quad HD+ (2K+)
Hệ điều hành:

Android 11
Camera sau:

Chính 50 MP & Phụ 50 MP, 13 MP, 3 MP
Camera trước:

32 MP
Chip:

Snapdragon 888
RAM:

12 GB
Bộ nhớ trong:

256 GB
SIM:

2 Nano SIMHỗ trợ 5G
Pin, Sạc:

4500 mAh65 W', NULL, CAST(N'2021-09-17T09:08:45.110' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 5)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (49, N'Điện thoại OPPO Reno5 5G', N'A22', N'oppo-reno-5g', N'OPPO đã trình làng OPPO Reno5 5G phiên bản kết nối 5G internet siêu nhanh ra thị trường. Chiếc điện thoại với hàng loạt các tính năng nổi bật cùng vẻ ngoài thời thượng giúp tôn lên vẻ sang trọng cho người sở hữu.', N'/Asset/User/Image/oppo-reno5-5g-black-thumb-600x600.jpg', N'/Asset/User/Image/oppo-reno5-5g-thumbvideo-780x433.jpg', N'/Asset/User/Image/oppo-reno5-5g-bac-1-org.jpg', N'/Asset/User/Image/oppo-reno5-5g-bac-4-org.jpg', N'/Asset/User/Image/a22.jpg', NULL, CAST(10900000 AS Decimal(18, 0)), CAST(10500000 AS Decimal(18, 0)), NULL, 5, 5, N'Cấu hình Điện thoại OPPO Reno5 5G

Màn hình:

AMOLED6.43"Full HD+
Hệ điều hành:

Android 11
Camera sau:

Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP
Camera trước:

32 MP
Chip:

Snapdragon 765G
RAM:

8 GB
Bộ nhớ trong:

128 GB
SIM:

2 Nano SIMHỗ trợ 5G
Pin, Sạc:

4300 mAh65 W', NULL, CAST(N'2021-09-17T09:10:28.547' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 6)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (50, N'Điện thoại OPPO A74 5G ', N'A23', N'oppo-a74', N'OPPO A74 5G mẫu điện thoại có kết nối 5G với mức giá tốt của OPPO. Máy có thiết kế tinh tế, màn hình 90 Hz mượt mà và cụm camera làm đẹp AI sẽ là những điểm nhấn “đáng tiền” trên mẫu điện thoại này', N'/Asset/User/Image/oppo-a74-5g-silver-01-600x600.jpg', N'/Asset/User/Image/oppo-a74-5g-thumbv-780x433-4.jpg', N'/Asset/User/Image/vi-vn-oppo-a74-5g-tongquan.jpg', N'/Asset/User/Image/oppo-a74-5g-thietke-780x433.jpg', N'/Asset/User/Image/vi-vn-oppo-a74-5g-tongquan.jpg', NULL, CAST(7900000 AS Decimal(18, 0)), CAST(7800000 AS Decimal(18, 0)), NULL, 5, 5, N'Cấu hình Điện thoại OPPO A74 5G

Màn hình:

IPS LCD6.5"Full HD+
Hệ điều hành:

Android 11
Camera sau:

Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP
Camera trước:

16 MP
Chip:

Snapdragon 480 8 nhân 5G
RAM:

6 GB
Bộ nhớ trong:

128 GB
SIM:

2 Nano SIMHỗ trợ 5G
Pin, Sạc:

5000 mAh18 W', NULL, CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 24)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (51, N'Điện thoại OPPO A54 ', N'A24', N'oppo-a54', N'OPPO tung ra mẫu điện thoại OPPO A54, được kế thừa thành công của OPPO A53, sở hữu bộ 3 camera AI thông minh, chấm camera selfie tinh tế nằm gọn trong màn hình tràn viền siêu rộng, vận hành mượt mà với hiệu năng ổn định và trở nên khác biệt so với các đối thủ trong tầm giá.', N'/Asset/User/Image/oppo-a54-4g-black-600x600.jpg', N'/Asset/User/Image/oppo-a54-note.jpg', N'/Asset/User/Image/.oppo-a54-4g-008.jpg', N'/Asset/User/Image/oppo-a54-4g-001.jpg', N'/Asset/User/Image/oppo-a54-4g-009.jpg', NULL, CAST(4690000 AS Decimal(18, 0)), NULL, NULL, 10, 5, N'Cấu hình Điện thoại OPPO A54

Màn hình:

IPS LCD6.5"HD+
Hệ điều hành:

Android 10
Camera sau:

Chính 13 MP & Phụ 2 MP, 2 MP
Camera trước:

16 MP
Chip:

MediaTek Helio P35
RAM:

4 GB
Bộ nhớ trong:

128 GB
SIM:

2 Nano SIMHỗ trợ 4G
Pin, Sạc:

5000 mAh18 W', NULL, CAST(N'2021-09-17T09:19:08.387' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 158)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (52, N'Apple Watch SE 40mm viền nhôm dây cao su đen', N'A25', N'apple-watch-se-40mm', N'Apple Watch SE 40mm viền nhôm dây cao su sở hữu ngoại hình khá giống với Series 5 với mặt kính cong 2.5D cho cảm giác vuốt và chạm thoải mái. Kích thước màn hình 1.57 inch cùng độ phân giải 324 x 394 pixels giúp hiển thị hình ảnh và các thông tin đầy đủ và sắc nét. Dây đeo làm từ chất liệu cao su có đàn hồi cao, tạo cảm giác thoải mái cho cổ tay khi đeo trong thời gian dài. Apple watch không chỉ là đồng hồ với nhiều tính năng thông minh mà còn là một phụ kiện thời trang cao cấp.

', N'/Asset/User/Image/apple-watch-se-40mm-vien-nhom-day-cao-su-ava-600x600.jpg', N'/Asset/User/Image/apple-watch-se-40mm-vien-nhom-day-cao-su-260820-090858.jpg', N'/Asset/User/Image/apple-watch-se-40mm-vien-nhom-day-cao-su-260920-090906.jpg', N'/Asset/User/Image/apple-watch-se-40mm-vien-nhom-day-cao-su-260920-090915.jpg', N'/Asset/User/Image/apple-watch-se-40mm-vien-nhom-day-cao-su-ava-600x600.jpg', NULL, CAST(7641000 AS Decimal(18, 0)), NULL, NULL, 10, 10, N'Cấu hình Apple Watch SE 40mm viền nhôm dây cao su đen

Màn hình:

OLED1.57 inch
Thời lượng pin:

Khoảng 1.5 ngày
Kết nối với hệ điều hành:

iOS 14 trở lên
Mặt:

Ion-X strengthened glass40 mm
Tính năng cho sức khỏe:

Chế độ luyện tậpTheo dõi giấc ngủTính lượng calories tiêu thụTính quãng đường chạyĐo nhịp timĐếm số bước chân', NULL, CAST(N'2021-09-17T09:20:55.977' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 5)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (53, N'Apple Watch S6 40mm viền nhôm dây cao su xanh', N'A26', N'apple-watch-s6-40mm', N'Thiết kế sang trọng, hiện đại, màn hình sắc nét
Apple Watch S6 40mm viền nhôm dây cao su xanh có thiết kế giống với các phiên bản trước đây, mang vẻ đẹp đơn giản, tinh tế và sang trọng. Màn hình OLED với kích thước 1.57 inch giúp hiển thị hình ảnh và thông tin rõ ràng và sắc nét. Dây đeo được làm từ chất liệu cao su có độ co dãn tốt và êm ái cho cổ tay người dùng khi đeo lâu.', N'/Asset/User/Image/s6-40mm-vien-nhom-day-cao-su-xanh-99.jpg', N'/Asset/User/Image/s6-40mm-vien-nhom-day-cao-su-xanh-5.jpg', N'/Asset/User/Image/s6-40mm-vien-nhom-day-cao-su-xanh-4.jpg', N'/Asset/User/Image/s6-40mm-vien-nhom-day-cao-su-xanh-99.jpg', N'/Asset/User/Image/s6-40mm-vien-nhom-day-cao-su-xanh-5.jpg', NULL, CAST(10191000 AS Decimal(18, 0)), NULL, NULL, 10, 10, N'Cấu hình Apple Watch S6 40mm viền nhôm dây cao su xanh

Màn hình:

OLED1.57 inch
Thời lượng pin:

Khoảng 1.5 ngày
Kết nối với hệ điều hành:

iOS 14 trở lên
Mặt:

Ion-X strengthened glass40 mm
Tính năng cho sức khỏe:

Chế độ luyện tậpTheo dõi giấc ngủTính lượng calories tiêu thụTính quãng đường chạyĐiện tâm đồĐo nhịp timĐo nồng độ oxy (SpO2)Đếm số bước chân
', NULL, CAST(N'2021-09-17T09:25:51.117' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (54, N'Điện thoại Vivo Y72 5G', N'A27', N'Vivo-y72-5g', N'Thiết kế cứng cáp, sang trọng
Khung viền của Vivo Y72 5G được gia công tỉ mỉ với độ hoàn thiện cao kết hợp với mặt lưng làm từ nhựa cao cấp nên có độ bền và khả năng chịu lực tốt, giúp bảo vệ điện thoại khỏi tác động của ngoại lực trong quá trình sử dụng.', N'/Asset/User/Image/vivo-y72-5g-blue-600x600.jpg', N'/Asset/User/Image/vivo-y72-5g-note.jpg', N'/Asset/User/Image/vivo-y72-5g-001.jpg', N'/Asset/Uer/Image/vivo-y72-5g-006.jpg', N'/Asset/User/Image/vivo-y72-5g-note.jpg', NULL, CAST(7500000 AS Decimal(18, 0)), CAST(7000000 AS Decimal(18, 0)), NULL, 5, 5, N'Cấu hình Điện thoại Vivo Y72 5G

Màn hình:

IPS LCD6.58"Full HD+
Hệ điều hành:

Android 11
Camera sau:

Chính 64 MP & Phụ 8 MP, 2 MP
Camera trước:

16 MP
Chip:

MediaTek Dimensity 700
RAM:

8 GB
Bộ nhớ trong:

128 GB
SIM:

2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 5G
Pin, Sạc:

5000 mAh18 W', NULL, CAST(N'2021-09-17T09:57:35.113' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 8)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (55, N'Samsung Galaxy Watch Active 2 44mm viền nhôm dây sillicone', N'A28', N'samsung-watch-active2-44mm', N'Đồng hồ thông minh Samsung Galaxy Watch Active 2 cải tiến hơn với màn hình chống chói, hiển thị thông tin sắc nét. Các tiện ích khác cũng được nâng cấp nhằm mang lại sự tiện lợi nhất cho người dùng.
Sang trọng, thời trang
Galaxy Watch Active 2 mang thiết kế gọn gàng, mặt kính tròn 44 mm viền cong sang trọng tôn dáng tay. Dây đeo chất liệu Silicone mềm mại có thể tháo rời tiện lợi để bạn thay màu dây tùy ý.', N'/Asset/User/Image/samsung-galaxy-watch-active-2-44-mm-sillicon-note.jpg', N'/Asset/User/Image/samsung-galaxy-watch-active-2-44-mm-sillicon2-2.jpg', N'/Asset/User/Image/-samsung-galaxy-watch-active-2-44-mm-sillicon-666copy.jpg', N'/Asset/User/Image/samsung-galaxy-watch-active-2-44-mm-sillicon4-2.jpg', N'/Asset/User/Image/samsung-galaxy-watch-active-2-44-mm-sillicon2-2.jpg', NULL, CAST(7990000 AS Decimal(18, 0)), CAST(2690000 AS Decimal(18, 0)), NULL, 20, 10, N'Cấu hình Samsung Galaxy Watch Active 2 44mm viền nhôm dây sillicone

Màn hình:

SUPER AMOLED1.4 inch
Thời lượng pin:

Khoảng 1.5 ngày
Kết nối với hệ điều hành:

Android 5.0iOS 10 trở lên
Mặt:

Kính cường lực Gorrilla Glass Dx+44 mm
Tính năng cho sức khỏe:

Chế độ luyện tậpTheo dõi giấc ngủTính lượng calories tiêu thụTính quãng đường chạyĐo nhịp timĐếm số bước chân', NULL, CAST(N'2021-09-17T10:00:27.750' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 100)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (56, N'Đồng hồ thông minh Garmin Lily dây silicone tím', N'A29', N'dong-ho-tm-garmin-lily-silicon', N'Thiết kế nữ tính, sang trọng với phong cách cổ điển
Đồng hồ Garmin Lily có khung viền polyme bền chắc, chịu va đập tốt cùng dây silicone êm nhẹ, thoải mái khi đeo. Sở hữu thiết kế nhỏ nhắn với đường kính mặt 35 mm cùng trọng lượng khoảng 24g, chiếc đồng hồ này rất thích hợp với các bạn nữ, đặc biệt khi đeo chiếc đồng hồ này khi tập luyện thể thao.', N'/Asset/User/Image/garmin-lily-day-silicone-ava-600x600.jpg', N'/Asset/User/Image/garmin-lily-day-silicone-note.jpg', N'/Asset/User/Image.garmin-lily-day-silicone7.jpg', N'/Asset/User/Image/garmin-lily-day-silicone2.jpg', N'/Asset/User/Image.garmin-lily-day-silicone7.jpg', NULL, CAST(4300000 AS Decimal(18, 0)), CAST(1000000 AS Decimal(18, 0)), NULL, 10, 10, N'Cấu hình Đồng hồ thông minh Garmin Lily dây silicone tím

Màn hình:

LCD1 inch
Thời lượng pin:

Khoảng 5 ngày
Kết nối với hệ điều hành:

AndroidiOS
Mặt:

Kính cường lực Gorilla Glass 335 mm
Tính năng cho sức khỏe:

Theo dõi giấc ngủĐếm số bước chânĐo lượng tiêu thụ oxy tối đa (VO2 max)Đo nhịp timĐo nồng độ oxy (SpO2)Theo dõi mức độ stressChế độ luyện tậpTính quãng đường chạyTính lượng calories tiêu thụTheo dõi chu kì kinh nguyệt', NULL, CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (57, N'Pin sạc dự phòng Polymer 10.000 mAh Type C 15W PD Belkin Pocket Power BPB011 Đen ', N'A30', N'sac-du-phong-polymer-typec-15w', N'Đặc điểm nổi bật

Sạc nhanh hơn với chuẩn sạc nhanh Power Delivery 15 W trên cổng Type-C.
Dung lượng pin lớn 10.000 mAh, hiệu suất sạc tới 60%.
Tích hợp lõi pin Polymer an toàn, có đèn báo hiệu lượng pin tiện quan sát.
Hỗ trợ 2 cổng ra USB 5V - 2.4A, 1 cổng ra/vào Type-C 5V - 3A.
Thiết kế gọn đẹp, màu đen sang trọng. ', N'/Asset/User/Image/pin-polymer-10000-type-c-15w-belkin-pocket-power-den-2-1-org.jpg', N'/Asset/User/Image/pin-polymer-10000-type-c-15w-belkin-pocket-power-den-3-1-org.jpg', N'/Asset/User/Image/pin-polymer-10000-type-c-15w-belkin-pocket-power-den-4-1-org.jpg', N'/Asset/User/Image/pin-polymer-10000-type-c-15w-belkin-power-den-89.jpg', N'/Asset/User/Image/pin-polymer-10000-type-c-15w-belkin-pocket-power-den-3-1-org.jpg', NULL, CAST(790000 AS Decimal(18, 0)), CAST(700000 AS Decimal(18, 0)), NULL, 10, 6, N'Thông số kỹ thuật Pin sạc dự phòng Polymer 10.000 mAh Type C 15W PD Belkin Pocket Power BPB011 Đen

Hiệu suất sạc:

60%
Dung lượng pin:

10.000 mAh
Thời gian sạc đầy pin:

10 - 11 giờ (dùng Adapter 1A)5 - 6 giờ (dùng Adapter 2A)
Nguồn vào:

Type C: 5V - 3A
Nguồn ra:

Type-C: 5V - 3AUSB: 5V - 2.4A
Lõi pin:

Polymer
Công nghệ/Tiện ích:

Power Delivery
Kích thước:

Dày 1.5 cm - Rộng 7 cm - Dài 13.3 cm
Trọng lượng:

222 g
Thương hiệu của:

Mỹ
Sản xuất tại:

Trung Quốc', NULL, CAST(N'2021-09-17T10:13:10.470' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (58, N'Pin sạc dự phòng Polymer 10.000 mAh Hydrus PA CK01', N'A31', N'sac-du-phong-polymer-10000mah', N'Đặc điểm nổi bật

Hiệu suất sạc 64% trên dung lượng 10.000 mAh.
Sử dụng an toàn và lâu bền với lõi pin Polymer có tuổi thọ cao.
Nguồn ra có 2 cổng USB 5V – 2.1A.
Sạc các thiết bị nhỏ như đồng hồ thông minh, tai nghe bluetooth bằng chế độ sạc nhỏ giọt.
Thiết kế đơn giản, 2 phiên bản xám và vàng đẹp mắt, dễ mang đi xa. ', N'/Asset/User/Image/pin-polymer-10000-mah-hydrus-pa-ck01-ava-600x600.jpg', N'/Asset/User/Image/pin-polymer-10000-mah-hydrus-pa-ck01-xam-1-org.jpg', N'/Asset/User/Image/pin-polymer-10000-mah-hydrus-pa-ck01-xam-2-org.jpg', N'/Asset/User/Image/pin-polymer-10000-mah-hydrus-pa-ck01-xam-3-org.jpg', N'/Asset/User/Image/pin-polymer-10000-mah-hydrus-pa-ck01-xam-4-org.jpg', NULL, CAST(220000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)), NULL, 10, 6, N'Thông số kỹ thuật Pin sạc dự phòng Polymer 10.000 mAh Hydrus PA CK01

Hiệu suất sạc:

64%
Dung lượng pin:

10.000 mAh
Thời gian sạc đầy pin:

10 - 11 giờ (dùng Adapter 1A)5 - 6 giờ (dùng Adapter 2A)
Nguồn vào:

Micro USB: 5V - 2A
Nguồn ra:

USB: 5V - 2.1A
Lõi pin:

Polymer
Công nghệ/Tiện ích:

Đèn LED báo hiệu
Kích thước:

Dày 1.5 cm - Rộng 7.5 cm - Dài 14.5cm
Trọng lượng:

233g
Thương hiệu của:

Thế Giới Di Động
Sản xuất tại:

Trung Quốc', NULL, CAST(N'2021-09-17T10:14:54.763' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (59, N'Cáp Micro 1m AVA LTPL-05X ', N'A32', N'cap-micro-1m', N'Đặc điểm nổi bật

Thiết kế nhỏ gọn, màu sắc trang nhã, trẻ trung, đẹp mắt.
Chiều dài dây cáp 1 m thích hợp dùng với pin sạc dự phòng hay kết nối điện thoại với laptop.
Vỏ bọc bằng nhựa dẻo dai bền, hạn chế xoắn rối hay đứt gãy.
Dòng sạc tối đa 5V – 2.1A tương đương 10 W, cho tốc độ sạc nhanh, đường truyền ổn định.
Hỗ trợ truyền dữ liệu dễ dàng giữa điện thoại, máy tính bảng với laptop qua 2 đầu cáp USB và Micro USB.
Dùng được cho các thiết bị có cổng Micro USB.', N'/Asset/User/Image/cap-micro-1m-ava-ltpl-05x-1-600x600.jpg', N'/Asset/User/Image/cap-micro-1m-ava-ltpl-05x-xanh-1-org.jpg', N'/Asset/User/Image/cap-micro-1m-ava-ltpl-05x-xanh-2-org.jpg', N'/Asset/User/Image/cap-micro-1m-ava-ltpl-05x-xanh-3-org.jpg', N'/Asset/User/Image/cap-micro-1m-ava-ltpl-05x-xanh-1-org.jpg', NULL, CAST(49000 AS Decimal(18, 0)), NULL, NULL, 100, 6, N'Thông số kỹ thuật Cáp Micro 1m AVA LTPL-05X

Chức năng

SạcTruyền dữ liệu
Đầu vào

USB Type-A
Đầu ra

Micro USB: 5V - 2.1A
Độ dài dây

1 m
Công suất tối đa

10.5 W
Sản xuất tại

Trung Quốc
Thương hiệu của

Thế Giới Di Động', NULL, CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (60, N'Cáp Micro 1m Xmobile LTM-02 Xanh rêu', N'A33', N'cap-micro-1m-xmobile', N'Đặc điểm nổi bật

Thiết kế đẹp mắt, vỏ dây chất liệu nylon bền chắc.
Chiều dài dây 1 m, dễ quấn gọn, không sợ nứt gãy, tiện mang theo.
Trang bị 1 đầu cáp USB và 1 đầu Micro USB, dùng tốt với nhiều thiết bị.
Sạc pin với tốc độ sạc nhanh, nguồn điện đầu ra là 2.1A tương đương 10.5 W, tiết kiệm thời gian.
Khả năng truyền dữ liệu tốt giữa các thiết bị sử dụng 2 đầu cáp tương thích.', N'/Asset/User/Image/cap-micro-1m-xmobile-ltm-02-xanh-reu-ava-1-600x600.jpg', N'/Asset/User/Image/cap-micro-1m-xmobile-ltm-02-xanh-reu-1-org.jpg', N'/Asset/User/Image/cap-micro-1m-xmobile-ltm-02-xanh-reu-2-org.jpg', N'/Asset/User/Image/cap-micro-1m-xmobile-ltm-02-xanh-reu-3-org.jpg', N'/Asset/User/Image/cap-micro-1m-xmobile-ltm-02-xanh-reu-4-org.jpg', NULL, CAST(100000 AS Decimal(18, 0)), CAST(99000 AS Decimal(18, 0)), NULL, 20, 6, N'Thông số kỹ thuật Cáp Micro 1m Xmobile LTM-02 Xanh rêu

Chức năng

SạcTruyền dữ liệu
Đầu vào

USB Type-A
Đầu ra

Micro USB: 5V - 2.1A
Độ dài dây

1 m
Công suất tối đa

10.5 W
Sản xuất tại

Trung Quốc
Thương hiệu của

Thế Giới Di Động', NULL, CAST(N'2021-09-17T10:21:42.067' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (61, N'Điện thoại iPhone 13 Pro Max 512GB', N'A34', N'dt-iphone-13promax-512gb', N'HÀNG SẮP VỀ, DỰ KIẾN VỀ CUỐI THÁNG 10/2021', N'/Asset/User/Image/iphone-13-pro-max-graphite-600x600.jpg', N'/Asset/User/Image/iphone-13-pro-max-gold-1-600x600.jpg', N'/Asset/User/Image/iphone-13-pro-max-silver-600x600.jpg', N'/Asset/User/Image/iphone-13-pro-max-sierra-blue-600x600.jpg', N'/Asset/User/Image/', NULL, CAST(43990000 AS Decimal(18, 0)), NULL, NULL, 5, 1, N'Cấu hình Điện thoại iPhone 13 Pro Max 512GB

Màn hình:

OLED6.7"Super Retina XDR
Hệ điều hành:

iOS 15
Camera sau:

3 camera 12 MP
Camera trước:

12 MP
Chip:

Apple A15 Bionic
Bộ nhớ trong:

512 GB
SIM:

1 Nano SIM & 1 eSIMHỗ trợ 5G
Pin, Sạc:

20 W', NULL, CAST(N'2021-09-17T14:14:56.123' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (62, N'Tai nghe chụp tai Mozard IP-840 ', N'A35', N'tai-nghe-mozardip-840', N'Đặc điểm nổi bật

Màu sắc trẻ trung, kiểu dáng gọn đẹp, phù hợp cho các bạn trẻ.
Phần đệm tai êm ái thoải mái khi dùng, có thể xếp gọn tiện bảo quản.
Tai nghe với khoảng kéo giãn 3.8 cm để tùy chỉnh theo cỡ đầu người dùng.
Tương thích với hầu hết các điện thoại hiện nay, sử dụng qua jack cắm 3.5 thông dụng.
Có nút nhận cuộc gọi, phát/dừng chơi nhạc, tăng/giảm âm lượng.
Dây dài 147 cm thoải mái để vừa dùng máy vừa nghe nhạc.', N'/Asset/User/Image/tai-nghe-chup-tai-mozard-ip-840-avatar-1-600x600.jpg', N'/Asset/User/Image/tai-nghe-chup-tai-mozard-ip-840-314120-024122.jpg', N'/Asset/User/Image/tai-nghe-chup-tai-mozard-ip-840-314120-024144.jpg', N'/Asset/User/Image/tai-nghe-chup-tai-mozard-ip-840-314120-024133.jpg', N'/Asset/User/Image/tai-nghe-chup-tai-mozard-ip-840-314420-024428.jpg', NULL, CAST(350000 AS Decimal(18, 0)), CAST(250000 AS Decimal(18, 0)), NULL, 10, 6, N'Thông số kỹ thuật Tai nghe chụp tai Mozard IP-840

Jack cắm:

3.5 mm
Tương thích:

AndroidiOS (iPhone)Windows
Tiện ích:

Có mic thoại
Điều khiển bằng:

Phím nhấn
Phím điều khiển:

Tăng/giảm âm lượng', NULL, CAST(N'2021-09-17T14:25:59.743' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (63, N'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N ', N'A36', N'tai-nghe-bluetooth-true-wireless-sam-sung-buds-2', N'Đặc điểm nổi bật

Thiết kế thời thượng, cá tính.
Chất âm chuẩn studio với loa 2 chiều.
Hiệu quả chống ồn lên đến 98%.
Đàm thoại dễ dàng với 3 micro và bộ cảm biến nhận diện giọng nói.
Đồng bộ với các thiết bị Samsung Galaxy.
Nghe nhạc liên tục trong 5 giờ, sử dụng hộp sạc lên đến 15 giờ.
Đạt tiêu chuẩn chống nước IPX2.
Điều khiển cảm ứng dừng/phát, trả lời cuộc gọi, chuyển bài.', N'/Asset/User/Image/bluetooth-true-wireless-samsung-buds-2-r177n-avatar2-600x600.jpg', N'/Asset/User/Image/', N'/Asset/User/Image/', N'/Asset/User/Image/bluetooth-true-wireless-samsung-buds-2-r177n-2-2-org.jpg', N'/Asset/User/Image/', NULL, CAST(2990000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), NULL, 15, 6, N'Thông số kỹ thuật Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N

Thời gian tai nghe:

Dùng 7.5 giờ - Sạc 1.5 giờ
Thời gian hộp sạc:

Dùng 29 giờ - Sạc 1.5 giờ
Cổng sạc:

Type-C
Công nghệ âm thanh:

Active Noise CancellingAmbient Sound
Tương thích:

AndroidRam 1.5G trở lên
Ứng dụng kết nối:

Bluetooth TWS
Tiện ích:

Chống nước IPX2Có mic thoại
Hỗ trợ kết nối:

Bluetooth 5.2
Điều khiển bằng:

Cảm ứng chạm', NULL, CAST(N'2021-09-17T14:26:06.010' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (64, N'Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2', N'A37', N'tai-nghe-bluetooth-airpods2-wriless', N'Thiết kế đơn giản, thời trang và nhỏ gọn.
Trang bị chip H1 hoàn toàn mới, cho tốc độ kết nối, chuyển đổi giữa các thiết bị nhanh chóng.
Kích hoạt nhanh trợ lý ảo Siri bằng cách nói "Hey, Siri".
Có thể sử dụng nghe nhạc lên đến 5 giờ (âm lượng 50%) cho mỗi một lần sạc đầy.
Tích hợp công nghệ sạc nhanh hiện đại. Sạc nhanh 15 phút có thể nghe nhạc 3 giờ (âm lượng 50%).
Hỗ trợ sạc không dây chuẩn Qi tiện lợi.
Sử dụng song song với hộp sạc có thể dùng được lên đến 24 giờ.', N'/Asset/User/Image/airpods-2-wireless-charge-apple-mrxj2-ava-600x600.jpg', N'/Asset/User/Image/airpods-2-wireless-charge-apple-mrxj2-1-org.jpg', N'/Asset/User/Image/airpods-2-wireless-charge-apple-mrxj2-2-org.jpg', N'/Asset/User/Iamge/airpods-2-wireless-charge-apple-mrxj2-3-org.jpg', N'/Asset/User/Image/airpods-2-wireless-charge-apple-mrxj2-1-org.jpg', NULL, CAST(5590000 AS Decimal(18, 0)), CAST(5000000 AS Decimal(18, 0)), NULL, 10, 6, N'Thông số kỹ thuật Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2

Thời gian tai nghe:

Dùng 5 giờ - Sạc 2 giờ
Thời gian hộp sạc:

Dùng 24 giờ - Sạc 3 giờ
Cổng sạc:

LightningSạc không dây
Tương thích:

AndroidiOS (iPhone)
Ứng dụng kết nối:

Siri
Tiện ích:

Có mic thoại
Điều khiển bằng:

Cảm ứng chạm', NULL, CAST(N'2021-09-17T15:09:01.007' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (65, N'Thiết bị định vị thông minh AirTag 4 Pack MX542', N'A38', N'thiet-bi-dinh-vi-thong-minh-airtag4-pack-mx542', N'Đặc điểm nổi bật

Theo dõi chính xác vị trí nhờ công nghệ Ultra-Wideband, chip U1 Apple.
Trang bị thêm loa tích hợp nâng cao hiệu quả tìm kiếm. 
Dễ dàng điều khiển qua ứng dụng Find My hiện đại.
Kích cỡ nhỏ nhắn, hiện đại, đặt gọn vào túi áo, túi xách, balo,...
Chuẩn IP67 cho khả năng chống bụi, chống nước tối ưu. 
Hoạt động với pin CR2032 cho thời gian đến hơn 1 năm sử dụng. ', N'/Asset/User/Image/thiet-bi-dinh-vi-thong-minh-airtag-4-pack-mx542-ava-600x600.jpg', N'/Asset/User/Iamge/vi-vn-thiet-bi-dinh-vi-thong-minh-airtag-4-pack-mx542-thumbvideo.jpg', N'/Asset/User/Image/thiet-bi-dinh-vi-thong-minh-airtag-4-pack-mx542-ava-600x600.jpg', N'/Asset/User/Image/thiet-bi-dinh-vi-thong-minh-airtag-4-pack-mx542-ava-600x600.jpg', N'/Asset/User/Image/thiet-bi-dinh-vi-thong-minh-airtag-4-pack-mx542-ava-600x600.jpg', NULL, CAST(2790000 AS Decimal(18, 0)), CAST(2000000 AS Decimal(18, 0)), NULL, 10, 6, N'Dễ dàng nắm rõ vị trí AirTag với băng thông siêu rộng Ultra-Wideband, chip U1 của Apple
Cùng với Ultra-Wideband, chip U1, kết nối không dây Bluetooth cho tín hiệu ổn định giúp bạn định vị chuẩn xác AirTag.

Nếu bạn gắn AirTag vào chìa khóa xe và không nhớ nó nằm ở đâu trong nhà của mình, sử dụng tính năng Tìm kiếm chính xác - Precision Finding, kèm theo loa tích hợp phát âm thanh rõ ràng, dẫn đường cho bạn tìm đến chìa khóa nhanh chóng, tiết kiệm thời gian tối đa. Tính năng này tương thích cho các dòng điện thoại iPhone 12 | 12 mini | 12 Pro | 12 Pro Max, iPhone 11 | 11 Pro | 11 Pro Max. ', NULL, CAST(N'2021-09-17T16:33:59.217' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 20)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (66, N'Túi chống nước Cosano JMG-C-20 Xanh lá', N'A39', N'tui-chong-nuoc-cosano-jmg-c-20 xanh la', N'Chất liệu nhựa dẽo trong suốt cao cấp, có tính đàn hồi cao đi cùng thiết kế thon gọn hợp lý giúp cho bề mặt túi luôn tiếp xúc với màn hình cảm ứng bên trong đảm bảo thao tác dễ dàng, cảm ứng nhạy . Chất liệu nhựa trong suốt giúp không làm giảm chất lượng ảnh chụp của Camera và chất lượng hình ảnh khi nhìn qua túi .
', N'/Asset/User/Image/tui-chong-nuoc-cosano-jmg-c-20-xanh-la-1-org.jpg', N'/Asset/User/Image/tui-chong-nuoc-cosano-jmg-c-20-xanh-la-2-org.jpg', N'/Asset/User/Image/tui-chong-nuoc-cosano-jmg-c-20-xanh-la-3-org.jpg', N'/Asset/User/Image/tui-chong-nuoc-cosano-jmg-c-20-xanh-la-1-org.jpg', N'/Asset/User/Image/tui-chong-nuoc-cosano-jmg-c-20-xanh-la-2-org.jpg', NULL, CAST(50000 AS Decimal(18, 0)), CAST(25000 AS Decimal(18, 0)), NULL, 10, 6, N'Khóa bảo vệ được thiết kế thông minh, dạng trượt giúp dễ dàng khoá chặt,nhanh chóng và an toàn hơn đảm bảo nước không bị rò rỉ vào bên trong. Bảo vệ an toàn tuyệt đối cho chiếc điện thoại của bạn khi xuống nước.

– Thiết kế tiện dụng có thể đeo cổ , đeo tay hoặc thắc lưng rất phù hợp để đi du lịch', NULL, CAST(N'2021-09-17T16:37:29.233' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 50)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (67, N'Điện thoại Xiaomi Mi 11 5G', N'A40', N'dien-thoai-xiaomi-11-5g', N'Xiaomi Mi 11 một siêu phẩm đến từ Xiaomi, máy cho trải nghiệm hiệu năng hàng đầu với vi xử lý Qualcomm Snapdragon 888, cùng loạt công nghệ đỉnh cao, khiến bất kỳ ai cũng sẽ choáng ngợp về smartphone này.Thiết kế nổi bật với cụm camera độc nhất', N'/Asset/User/Image/xiaomi-mi-11-xanhduong-600x600-600x600.jpg', N'/Asset/User/Image/xiaomi-mi-11-xanhduong-1-org.jpg', N'/Asset/User/Image/xiaomi-mi-11-xamdam-1-org.jpg', N'/Asset/User/Image/xiaomi-mi-11-xamdam-4-org.jpg', N'/Asset/User/Image/xiaomi-mi-11-xamdam-1-org.jpg', NULL, CAST(16900000 AS Decimal(18, 0)), CAST(16000000 AS Decimal(18, 0)), NULL, 10, 5, N'Cấu hình Điện thoại Xiaomi Mi 11 5G

Màn hình:

AMOLED6.81"Quad HD+ (2K+)
Hệ điều hành:

Android 11
Camera sau:

Chính 108 MP & Phụ 13 MP, 5 MP
Camera trước:

20 MP
Chip:

Snapdragon 888
RAM:

8 GB
Bộ nhớ trong:

256 GB
SIM:

2 Nano SIMHỗ trợ 5G
Pin, Sạc:

4600 mAh55 W', NULL, CAST(N'2021-09-17T16:45:10.870' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 20)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (68, N'Điện thoại Xiaomi Mi 11 Lite', N'A41', N'xixao-mi11lite', N'Xiaomi Mi 11 Lite là phiên bản thu gọn của Xiaomi Mi 11 5G được ra mắt trước đó. Thừa hưởng nhiều ưu điểm của đàn anh, Mi 11 Lite hoàn toàn có thể đáp ứng tốt các tác vụ thông thường một cách dễ dàng và đặc biệt hơn máy có thiết kế vô cùng mỏng nhẹ và thời trang', N'/Asset/User/Image/xiaomi-mi-11-lite-4g-blue-600x600.jpg', N'/Asset/User/Image/xiaomi-mi-11-lite-4g-xanh-duong-1-org.jpg', N'/Asset/User/Image/xiaomi-mi-11-lite-4g-hong-1-org.jpg', N'/Asset/User/Image/xiaomi-mi-11-lite-4g-den-1-org.jpg', N'/Asset/User/Image/xiaomi-mi-11-lite-4g-xanh-duong-1-org.jpg', NULL, CAST(7090000 AS Decimal(18, 0)), CAST(7000000 AS Decimal(18, 0)), NULL, 12, 5, N'Cấu hình Điện thoại Xiaomi Mi 11 Lite

Màn hình:

AMOLED6.55"Full HD+
Hệ điều hành:

Android 11
Camera sau:

Chính 64 MP & Phụ 8 MP, 5 MP
Camera trước:

16 MP
Chip:

Snapdragon 732G
RAM:

8 GB
Bộ nhớ trong:

128 GB
SIM:

2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 4G
Pin, Sạc:

4250 mAh33 W', NULL, CAST(N'2021-09-17T16:45:22.980' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (69, N'Điện thoại Xiaomi Redmi Note 9 Pro (6GB/64GB) ', N'A42', N'xiaomi-redmi-note9-pro', N'Kế thừa truyền thống tích hợp nhiều tính năng cực hấp dẫn trong mức giá cực tốt, Redmi Note 9 Pro khi được ra mắt đã để lại nhiều ấn tượng như: Vi xử lý Snapdragon 720G, màn hình nốt ruồi siêu tràn viền, cụm 4 camera 64 “chấm” và một viên pin khủng 5020 mAh.', N'/Asset/User/Image/xiaomi-redmi-note-9-pro-xam-600x600.jpg', N'/Asset/User/Image/xiaomi-redmi-note-9-pro-xam-1-org.jpg', N'/Asset/User/Image/xiaomi-redmi-note-9-pro-xanh-la-1-org.jpg', N'/Asset/User/Image/xiaomi-redmi-note-9-pro-trang-1-org.jpg', N'/Asset/User/Image/xiaomi-redmi-note-9-pro-xam-1-org.jpg', NULL, CAST(5490000 AS Decimal(18, 0)), NULL, NULL, 10, 5, N'Cấu hình Điện thoại Xiaomi Redmi Note 9 Pro (6GB/64GB)

Màn hình:

IPS LCD6.67"Full HD+
Hệ điều hành:

Android 10
Camera sau:

Chính 64 MP & Phụ 8 MP, 5 MP, 2 MP
Camera trước:

16 MP
Chip:

Snapdragon 720G
RAM:

6 GB
Bộ nhớ trong:

64 GB
SIM:

2 Nano SIMHỗ trợ 4G
Pin, Sạc:

5020 mAh30 W', NULL, CAST(N'2021-09-17T16:45:32.557' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (70, N'Điện thoại Vsmart Aris Pro', N'A43', N'vsmart-aris-pro', N'Thương hiệu smartphone Việt - Vsmart chính thức trình làng Vsmart Aris Pro. Mẫu điện thoại này đánh dấu một bước ngoặc lớn trong làng smartphone với công nghệ camera ẩn trong màn hình, mức giá hợp lý giúp người Việt có cơ hội tiếp cận những công nghệ mới nhất.', N'/Asset/User/Image/vsmart-aris-pro-green-600jpg-600x600.jpg', N'/Asset/User/Image/vsmart-aris-pro-xam-1-org.jpg', N'/Asset/User/Image/vsmart-aris-pro-xanh-1-org.jpg', N'/Asset/User/Image/vsmart-aris-pro-note.jpg', N'/Asset/User/Image/vsmart-aris-pro-282420-082418.jpg', NULL, CAST(5500000 AS Decimal(18, 0)), NULL, NULL, 10, 5, N'Cấu hình Điện thoại Vsmart Aris Pro

Màn hình:

AMOLED6.39"Full HD+
Hệ điều hành:

Android 10
Camera sau:

Chính 64 MP & Phụ 8 MP, 8 MP, 2 MP
Camera trước:

20 MP
Chip:

Snapdragon 730
RAM:

8 GB
Bộ nhớ trong:

128 GB
SIM:

2 Nano SIMHỗ trợ 4G
Pin, Sạc:

4000 mAh18 W', NULL, CAST(N'2021-09-17T16:45:43.167' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (71, N'Điện thoại Vsmart Active 3 (6GB/64GB)', N'A44', N'vsmart-active-3', N'Vsmart Active 3 (6GB/64GB) là một smartphone có hiệu năng ổn định, thời lượng pin cả ngày dài và còn nhiều tính năng đặc biệt khác nữa, hứa hẹn sẽ mang đến cho bạn một thiết bị công nghệ chẳng những thời trang mà còn rất hiện đại.', N'/Asset/User/Image/vsmart-active-3-tim-600x600-600x600.jpg', N'/Asset/User/Image/vsmart-active-3-6gb-xanh-la-1-org.jpg', N'/Asset/User/Image/vsmart-active-3-6gb-tim-1-org.jpg', N'/Asset/User/Image/vsmart-active-3-6gb-den-1-org.jpg', N'/Asset/User/Image/vsmart-active-3-6gb-den-1-org.jpg', NULL, CAST(3290000 AS Decimal(18, 0)), NULL, NULL, 10, 5, N'Cấu hình Điện thoại Vsmart Active 3 (6GB/64GB)

Màn hình:

AMOLED6.39"Full HD+
Hệ điều hành:

Android 9 (Pie)
Camera sau:

Chính 48 MP & Phụ 8 MP, 2 MP
Camera trước:

16 MP
Chip:

MediaTek Helio P60
RAM:

6 GB
Bộ nhớ trong:

64 GB
SIM:

2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 4G
Pin, Sạc:

4020 mAh15 W', NULL, CAST(N'2021-09-17T16:45:51.010' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (72, N'Túi đựng Airpods 1 & 2 nhựa dẻo TPU CK-F048 OSMIA', N'A45', N'tui-dung-airport', N'Đặc điểm nổi bật

Thiết kế sang trọng, dễ sử dụng.
Chất liệu nhựa dẻo độ bền cao, đàn hồi tốt, kháng vỡ.
Bảo vệ tai nghe tốt hơn, hạn chế hư hỏng.
Khe hở cắm sạc tai nghe dễ dàng.
Kèm móc khóa tiện bảo quản, dễ mang theo.', N'/Asset/User/Image/1-2-nhua-deo-tpu-ck-f048-osmia-1-org.jpg', N'/Asset/User/Image/1-2-nhua-deo-tpu-ck-f048-osmia-2-org.jpg', N'/Asset/User/Image/tui-dung-airpods-1-2-nhua-deo-tpu-ck-f048-osmia-070621-050601-600x600.jpg', N'/Asset/User/Image/1-2-nhua-deo-tpu-ck-f048-osmia-1-2-org.jpg', N'/Asset/User/Image/1-2-nhua-deo-tpu-ck-f048-osmia-4-2-org.jpg', NULL, CAST(75000 AS Decimal(18, 0)), NULL, NULL, 10, 6, N'Bài viết đánh giá
Thiết kế nhỏ gọn, sang trọng, tiện mang theo, 4 màu đen, xám, đỏ và xanh Navy tùy chọn
Túi đựng Airpods 1 & 2 nhựa dẻo TPU CK-F048 OSMIA được làm từ nhựa dẻo có độ đàn hồi cao, bền tốt, tăng hiệu quả bảo vệ Airpods của bạn khỏi trầy xước và hư hại do tác động lực, rơi vỡ,…', NULL, CAST(N'2021-09-17T16:45:59.057' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (73, N'Ốp lưng Oppo Reno 6 nhựa dẻo Matte-20s TPU OSMIA Xanh', N'A46', N'op-lung-deo-ren6-nhua-deo', N'Đặc điểm nổi bật

Kiểu dáng thời trang và đẹp mắt.
Thiết kế vừa vặn và ôm sát thân máy.
Dễ dàng tháo/lắp ốp vào máy.', N'/Asset/User/Image/op-lung-oppo-reno-6-deo-matte-20s-tpu-osmia-ava-600x600.jpg', N'/Asset/User/Image/op-lung-oppo-reno-6-deo-matte-20s-tpu-osmia-ava-600x600.jpg', N'/Asset/User/Image/op-lung-oppo-reno-6-deo-matte-20s-tpu-osmia-ava-600x600.jpg', N'/Asset/User/Image/op-lung-oppo-reno-6-deo-matte-20s-tpu-osmia-ava-600x600.jpg', N'/Asset/User/Image/op-lung-oppo-reno-6-deo-matte-20s-tpu-osmia-ava-600x600.jpg', NULL, CAST(50000 AS Decimal(18, 0)), CAST(45000 AS Decimal(18, 0)), NULL, 10, 9, N'Kiểu dáng thời trang và đẹp mắt.
Thiết kế vừa vặn và ôm sát thân máy.', NULL, CAST(N'2021-09-17T16:46:03.090' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (74, N'Ốp lưng Galaxy A32 Milky Silicone JM Xanh bạc hà', N'A47', N'op-lung-galaxy-a32-silicon-jm-xanh-bac-ha', N'Thiết kế và sản xuất với các đường cắt và khuôn mẫu chính xác; rất phù hợp với thiết bị của bạn.
Lớp phủ đặc biệt chống ố vàng/phai màu và bụi bẩn.
Thiết kế mỏng vừa vặn không tăng thêm khối lượng và vừa vặn với túi của bạn.', N'/Asset/User/Image/op-lung-galaxy-a32-milky-silicone-jm-xanh-bac-ha-2-org.jpg', N'/Asset/User/Image/op-lung-galaxy-a32-milky-silicone-jm-xanh-bac-ha-4-org.jpg', N'/Asset/User/Image/op-lung-galaxy-a32-milky-silicone-jm-xanh-bac-ha-5-org.jpg', N'/Asset/User/Image/op-lung-galaxy-a32-milky-silicone-jm-xanh-bac-ha-6-org.jpg', N'/Asset/User/Image/op-lung-galaxy-a32-milky-silicone-jm-xanh-bac-ha-2-org.jpg', NULL, CAST(50000 AS Decimal(18, 0)), CAST(40000 AS Decimal(18, 0)), NULL, 10, 9, N'Đặc điểm nổi bật

Kiểu dáng thời trang và đẹp mắt
Thiết kế vừa vặn và ôm sát thân máy
Dễ dàng tháo/lắp ốp vào máy', NULL, CAST(N'2021-09-17T16:46:09.583' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [Image1], [Image2], [Image3], [Image4], [MoreImages], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (75, N'Ốp lưng bảo vệ điện thoại ', N'A48', N'op-lung-bv-dt', N'Thiết kế và sản xuất với các đường cắt và khuôn mẫu chính xác; rất phù hợp với thiết bị của bạn.
Lớp phủ đặc biệt chống ố vàng/phai màu và bụi bẩn.
Thiết kế mỏng vừa vặn không tăng thêm khối lượng và vừa vặn với túi của bạn.', N'/Asset/User/Image/40859665dc18ed4aea4ae48c19811ddc.jpg_2200x2200q80.jpg', N'/Asset/User/Image/2ce18015a013136196b4c2e37b8ada5a.jpg_2200x2200q80.jpg', N'/Asset/User/Image/6da815e8e079c17ecfdce7e610a68925.jpg_2200x2200q80.jpg', N'/Asset/User/Image/950b83e257dd5d09a559fc0148b6a21a.jpg_2200x2200q80.jpg', N'/Asset/User/Image/6da815e8e079c17ecfdce7e610a68925.jpg_2200x2200q80.jpg', NULL, CAST(30000 AS Decimal(18, 0)), NULL, NULL, 100, 9, N'Siêu mỏng, nhẹ, nhưng linh hoạt, nó có thể chống va đập và trầy xước lâu dài.
Chức năng bảo vệ ống kính chất lượng cao, ống kính cao hơn 0.3mm để tránh ma sát ống kính
Chất liệu: Silicone', NULL, CAST(N'2021-09-17T17:41:04.520' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 10)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (1, N'Iphone', N'iphone', NULL, 1, NULL, CAST(N'2021-09-12T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (4, N'Android', N'android', NULL, 1, NULL, CAST(N'2021-12-09T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (5, N'Điện thoại phổ thông', N'dien-thoai-pho-thong', NULL, 1, NULL, CAST(N'2021-09-12T21:36:19.290' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (6, N'Phụ kiện điện thoại', N'phu-kien-dien-thoai', NULL, 1, NULL, CAST(N'2021-12-09T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (9, N'Ốp Lưng', N'op-lung', NULL, 1, NULL, CAST(N'2021-10-08T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (10, N'Đồng hồ thông minh', N'dong-ho-thong-minh', NULL, 1, NULL, CAST(N'2021-10-09T00:00:00.000' AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [ModifiedBy], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (1, N'/Asset/User/Image/iphone-12-pro-hochwertig-edelstahlrahmen-hohe-gewicht-tragen-dazu--290203.jpeg', 1, N'/', NULL, NULL, CAST(N'2021-09-12T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [ModifiedBy], [CreateDate], [CreateBy], [ModifiedDate], [Status]) VALUES (2, N'/Asser/User/Image/2e083b54aded911827e990b48b225ee5e83edc7b.jpeg', 2, N'/', NULL, NULL, CAST(N'2021-12-09T00:00:00.000' AS DateTime), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Slide] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [UserName], [Password], [Name], [Address], [Email], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (2, N'admin', N'202cb962ac59075b964b07152d234b70', N'1', N'2', N'3', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Name], [Address], [Email], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (3, N'admin', N'123', NULL, NULL, NULL, CAST(N'2021-09-02T15:08:19.620' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Name], [Address], [Email], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (7, N'nganhuynh', N'c4ca4238a0b923820dcc509a6f75849b', N'1', N'400B/KP1,p.An Phú Đông,q.12', N'nganhuynh@gmail.com', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Name], [Address], [Email], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (8, N'admin', N'202cb962ac59075b964b07152d234b70', N'Ngân', N'2', N'nganhuynh@gmail.com', NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Name], [Address], [Email], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (14, N'hu?nh ngân', N'e10adc3949ba59abbe56e057f20f883e', N'Huỳnh Thị Hồng Ngân', N'123', N'huynhhuyng@gmail.com', CAST(N'2021-09-18T13:11:37.277' AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[Users] ([ID], [UserName], [Password], [Name], [Address], [Email], [CreateDate], [CreateBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (15, N'HuynhNgan', N'e10adc3949ba59abbe56e057f20f883e', N'Ngân', N'abc', N'huynhthihongngancna@gmail.com', NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[About] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[About] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Category] ADD  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF__Content__CreateD__3C69FB99]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF__Content__Status__3D5E1FD2]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Chitietgiohang] ADD  CONSTRAINT [DF__Chitietgi__Price__52E34C9D]  DEFAULT ((1)) FOR [Price]
GO
ALTER TABLE [dbo].[Giohang] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__Price__4BAC3F29]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__Quantit__4CA06362]  DEFAULT ((0)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__CreateD__4D94879B]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__Status__4E88ABD4]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__ViewCou__4F7CD00D]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF__ProductCa__Creat__5629CD9C]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF__ProductCa__Statu__571DF1D5]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF__ProductCa__ShowO__5812160E]  DEFAULT ((0)) FOR [ShowOnHome]
GO
ALTER TABLE [dbo].[Slide] ADD  DEFAULT ((1)) FOR [DisplayOrder]
GO
ALTER TABLE [dbo].[Slide] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__CreateDat__60A75C0F]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Status]  DEFAULT ((1)) FOR [Status]
GO
USE [master]
GO
ALTER DATABASE [QLShopDTOnline] SET  READ_WRITE 
GO
