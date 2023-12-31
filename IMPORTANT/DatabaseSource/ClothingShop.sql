USE [master]
GO
/****** Object:  Database [OnlineClothingShop]    Script Date: 10/30/2023 8:08:19 PM ******/
CREATE DATABASE [OnlineClothingShop]
GO
ALTER DATABASE [OnlineClothingShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineClothingShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineClothingShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OnlineClothingShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineClothingShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET RECOVERY FULL 
GO
ALTER DATABASE [OnlineClothingShop] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineClothingShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineClothingShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineClothingShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineClothingShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OnlineClothingShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OnlineClothingShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OnlineClothingShop] SET QUERY_STORE = ON
GO
ALTER DATABASE [OnlineClothingShop] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [OnlineClothingShop]
GO
/****** Object:  Table [dbo].[tb_Accounts]    Script Date: 10/30/2023 8:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [varchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Active] [bit] NULL,
	[FullName] [nvarchar](150) NULL,
	[RoleID] [int] NULL,
	[LastLogin] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_tb_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Categories]    Script Date: 10/30/2023 8:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Categories](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](250) NULL,
	[Thumb] [nvarchar](250) NULL,
 CONSTRAINT [PK_tb_Categories] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Customers]    Script Date: 10/30/2023 8:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](250) NULL,
	[Birthday] [datetime] NULL,
	[Avatar] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Email] [nchar](150) NULL,
	[Phone] [varchar](12) NULL,
	[CreateDate] [datetime] NULL,
	[Password] [nvarchar](50) NULL,
	[LastLogin] [datetime] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tb_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OrderDetails]    Script Date: 10/30/2023 8:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[OrderNumber] [int] NULL,
	[Quantity] [int] NULL,
	[Discount] [int] NULL,
	[Total] [int] NULL,
	[ShipDate] [datetime] NULL,
 CONSTRAINT [PK_tb_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Orders]    Script Date: 10/30/2023 8:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[ShipDate] [datetime] NULL,
	[TransactStatusID] [int] NULL,
	[Deleted] [bit] NULL,
	[Paid] [bit] NULL,
	[PaymentDate] [datetime] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Products]    Script Date: 10/30/2023 8:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NULL,
	[ShortDesc] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[CatID] [int] NULL,
	[Price] [int] NULL,
	[Discount] [int] NULL,
	[ThumbImg] [nvarchar](255) NULL,
	[SingleImg] [nvarchar](255) NULL,
	[DescImg] [nvarchar](255) NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[BestSellers] [bit] NULL,
	[HomeFlag] [bit] NULL,
	[Active] [bit] NULL,
	[UnitsInStock] [int] NULL,
 CONSTRAINT [PK_tb_Products_1] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Roles]    Script Date: 10/30/2023 8:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_tb_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_TransactStatus]    Script Date: 10/30/2023 8:08:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_TransactStatus](
	[TransactStatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_TransactStatus] PRIMARY KEY CLUSTERED 
(
	[TransactStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_Categories] ON 

INSERT [dbo].[tb_Categories] ([CatID], [CatName], [Thumb]) VALUES (1, N'Women''s', N'/images/Index/banner_1.jpg')
INSERT [dbo].[tb_Categories] ([CatID], [CatName], [Thumb]) VALUES (2, N'Accessories''s', N'/images/Index/banner_2.jpg')
INSERT [dbo].[tb_Categories] ([CatID], [CatName], [Thumb]) VALUES (3, N'Men''s', N'/images/Index/banner_3.jpg')
SET IDENTITY_INSERT [dbo].[tb_Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Products] ON 

INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (1, N'COTTON AND VISCOSE TWILL WAISTCOAT', N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', N'- Plunging Y-neck

- Button closure

- Welt pockets

- Adjustable cinch tabs at back

- Fully lined', 3, 549, 0, N'product_1_thumb.jpg', N'product_1_single.jpg', N'product_1_desc.jpg', CAST(N'2023-10-23T00:00:00.000' AS DateTime), CAST(N'2023-10-23T00:00:00.000' AS DateTime), 1, 1, 1, 20)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (2, N'ANUBIS HEIOS SILVER ORIGINAL', N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', N'- Material: S925 Silver
- Type of stone used: No
- Brand: HELIOS', 2, 299, 0, N'product_2_thumb.jpg', N'product_2_single.jpg', N'product_2_desc.jpg', CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime), 0, 1, 1, 12)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (3, N'CROPPED WOOL BLEND CARDIGAN', N'Blazer made of a wool blend. Lapel collar and long sleeves. Front patch pockets with flaps. Button-up front.', N'We work with monitoring programmes to ensure compliance with our social, environmental and health and safety standards for our products. To assess compliance, we have developed a programme of audits and continuous improvement plans.', 1, 519, 25, N'product_3_thumb.jpg', N'product_3_single.jpg', N'product_3_desc.jpg', CAST(N'2023-08-03T00:00:00.000' AS DateTime), CAST(N'2023-08-03T00:00:00.000' AS DateTime), 1, 1, 1, 15)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (4, N'RIB KNIT WOOL- AND COTTON-BLEND CARDIGAN', N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', N'- Rib knit spread collar, hem, and cuffs

- Button closure

- Dropped shoulders', 3, 719, 10, N'product_4_thumb.jpg', N'product_4_single.jpg', N'product_4_desc.jpg', CAST(N'2023-09-08T00:00:00.000' AS DateTime), CAST(N'2023-09-08T00:00:00.000' AS DateTime), 1, 1, 1, 8)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (5, N'TEXTURED CHECK JACKET', N'Cropped collared blazer featuring long sleeves and shoulder pads. False flap pockets on the front. Fastening at the front with golden buttons.', N'We work with monitoring programmes to ensure compliance with our social, environmental and health and safety standards for our products. To assess compliance, we have developed a programme of audits and continuous improvement plans.', 1, 999, 0, N'product_5_thumb.jpg', N'product_5_single.jpg', N'product_5_desc.jpg', CAST(N'2023-09-08T00:00:00.000' AS DateTime), CAST(N'2023-09-08T00:00:00.000' AS DateTime), 0, 0, 1, 10)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (6, N'DREAMY HELIOS SILVER ORIGINAL', N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', N'Old prejudices always limit a woman''s appearance to just being gentle and modest.
But you know, our beloved women are more than that. They are emotional, they are strong, they are independent. They are seductive, sharp but still equally soft.', 2, 399, 0, N'product_6_thumb.jpg', N'product_6_single.jpg', N'product_6_desc.jpg', CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime), 1, 1, 1, 13)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (7, N'KNIT WOOL-BLEND TURTLENECK', N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', N'- Rib knit collar, hem, and cuffs', 3, 449, 25, N'product_7_thumb.jpg', N'product_7_single.jpg', N'product_7_desc.jpg', CAST(N'2023-08-20T00:00:00.000' AS DateTime), CAST(N'2023-08-20T00:00:00.000' AS DateTime), 0, 0, 1, 5)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (8, N'TAILORED DOUBLE-BREASTED BLAZER', N'Blazer featuring a lapel collar with long sleeves and padded shoulders. Front flap pockets. Double-breasted button fastening on the front.', N'We work with monitoring programmes to ensure compliance with our social, environmental and health and safety standards for our products. To assess compliance, we have developed a programme of audits and continuous improvement plans.', 1, 519, 10, N'product_8_thumb.jpg', N'product_8_single.jpg', N'product_8_desc.jpg', CAST(N'2023-07-25T00:00:00.000' AS DateTime), CAST(N'2023-07-25T00:00:00.000' AS DateTime), 0, 1, 1, 15)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (9, N'FAUX LEATHER BIKER JACKET', N'Collared jacket with long sleeves and shoulder tabs. Featuring front zip pockets, a hem featuring a matching belt with metal buckle and front crossover zip fastening.', N'We work with monitoring programmes to ensure compliance with our social, environmental and health and safety standards for our products. To assess compliance, we have developed a programme of audits and continuous improvement plans.', 1, 649, 0, N'product_9_thumb.jpg', N'product_9_single.jpg', N'product_9_desc.jpg', CAST(N'2023-10-23T00:00:00.000' AS DateTime), CAST(N'2023-10-23T00:00:00.000' AS DateTime), 0, 0, 1, 13)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (10, N'BAND COLLAR SHIRT', N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', N'- Band collar

- Button closure

- Single-button barrel cuffs

- Shirttail hem', 3, 649, 30, N'product_10_thumb.jpg', N'product_10_single.jpg', N'product_10_desc.jpg', CAST(N'2023-07-25T00:00:00.000' AS DateTime), CAST(N'2023-07-25T00:00:00.000' AS DateTime), 1, 1, 1, 4)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (11, N'ASAP-ANHPHAN COLLAR SHIRT', N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', N'- Band collar

- Button closure

- Single-button barrel cuffs

- Shirttail hem', 3, 449, 0, N'product_11_thumb.jpg', N'product_11_single.jpg', N'product_11_desc.jpg', CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime), 0, 0, 1, 7)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (12, N'SHORT FAUX LEATHER TRENCH COAT', N'Trench coat with a lapel collar. Long sleeves with padded shoulders. Front jetted pockets. Double-breasted button fastening on the front and a belt in the same fabric.', N'We work with monitoring programmes to ensure compliance with our social, environmental and health and safety standards for our products. To assess compliance, we have developed a programme of audits and continuous improvement plans.', 1, 749, 20, N'product_12_thumb.jpg', N'product_12_single.jpg', N'product_12_desc.jpg', CAST(N'2023-08-03T00:00:00.000' AS DateTime), CAST(N'2023-08-03T00:00:00.000' AS DateTime), 0, 1, 1, 12)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (13, N'RIB KNIT WOOL- AND COTTON-BLEND CARDIGAN  ', N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', N'- Rib knit spread collar, hem, and cuffs

- Button closure

- Dropped shoulders', 3, 599, 0, N'product_13_thumb.jpg', N'product_13_single.jpg', N'product_13_desc.jpg', CAST(N'2023-08-20T00:00:00.000' AS DateTime), CAST(N'2023-08-20T00:00:00.000' AS DateTime), 0, 0, 1, 14)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (14, N'RIB KNIT VIRGIN WOOL CARDIGAN', N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', N'- Rib knit Y-neck, hem, and cuffs

- Button closure', 3, 629, 10, N'product_14_thumb.jpg', N'product_14_single.jpg', N'product_14_desc.jpg', CAST(N'2023-07-25T00:00:00.000' AS DateTime), CAST(N'2023-07-25T00:00:00.000' AS DateTime), 0, 1, 1, 6)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (15, N'GATHERED T-SHIRT', N'Fitted T-shirt made of a cotton blend. Asymmetric neckline with gathered detail and long sleeves.', N'We work with monitoring programmes to ensure compliance with our social, environmental and health and safety standards for our products. To assess compliance, we have developed a programme of audits and continuous improvement plans.', 1, 449, 15, N'product_15_thumb.jpg', N'product_15_single.jpg', N'product_15_desc.jpg', CAST(N'2023-09-08T00:00:00.000' AS DateTime), CAST(N'2023-09-08T00:00:00.000' AS DateTime), 1, 1, 1, 13)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (16, N'FANCY CROSS HELIOS SILVER ORIGINAL KTB272', N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', N'HeliSilver always continuously updates silver earring models for men and women according to the trends of young people, from basic minimalist to unconventional.', 2, 429, 0, N'product_16_thumb.jpg', N'product_16_single.jpg', N'product_16_desc.jpg', CAST(N'2023-10-23T00:00:00.000' AS DateTime), CAST(N'2023-10-23T00:00:00.000' AS DateTime), 0, 0, 1, 17)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (17, N'LONG ASYMMETRIC POLYAMIDE DRESS', N'Long dress made of a polyamide blend. Featuring an asymmetric neckline, long sleeves and gathered detail on the shoulder.', N'We work with monitoring programmes to ensure compliance with our social, environmental and health and safety standards for our products. To assess compliance, we have developed a programme of audits and continuous improvement plans.', 1, 559, 0, N'product_17_thumb.jpg', N'product_17_single.jpg', N'product_17_desc.jpg', CAST(N'2023-10-23T00:00:00.000' AS DateTime), CAST(N'2023-10-23T00:00:00.000' AS DateTime), 0, 0, 1, 20)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (18, N'SMILE 50CM HELIOS SILVER ORIGINAL', N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', N'
Men''s Silver Necklaces and Men''s Silver Necklaces at HeliSilver are carefully selected and screened for quality, with materials and chains of Italian silver or Thai silver S925, stone motifs... durable. by the time.', 2, 429, 20, N'product_18_thumb.jpg', N'product_18_single.jpg', N'product_18_desc.jpg', CAST(N'2023-07-25T00:00:00.000' AS DateTime), CAST(N'2023-07-25T00:00:00.000' AS DateTime), 0, 0, 1, 2)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (19, N'TAUPE STRAIGHT-FIT DENIM JEANS', N'Nam tempus turpis at metus scelerisque placerat nulla deumantos solicitud felis. Pellentesque diam dolor, elementum etos lobortis des mollis ut...', N'- Belt loops

- Five-pocket styling

- Button-fly

- Leather logo patch at back waistband', 3, 499, 0, N'product_19_thumb.jpg', N'product_19_single.jpg', N'product_19_desc.jpg', CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime), 0, 0, 1, 20)
INSERT [dbo].[tb_Products] ([ProductID], [ProductName], [ShortDesc], [Description], [CatID], [Price], [Discount], [ThumbImg], [SingleImg], [DescImg], [DateCreated], [DateModified], [BestSellers], [HomeFlag], [Active], [UnitsInStock]) VALUES (20, N'LONG FLOWING TROUSERS', N'Loose-fitting high-waist trousers with a straight-leg design. Invisible side zip fastening.', N'We work with monitoring programmes to ensure compliance with our social, environmental and health and safety standards for our products. To assess compliance, we have developed a programme of audits and continuous improvement plans.', 1, 619, 0, N'product_20_thumb.jpg', N'product_20_single.jpg', N'product_20_desc.jpg', CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime), 0, 0, 1, 18)
SET IDENTITY_INSERT [dbo].[tb_Products] OFF
GO
ALTER TABLE [dbo].[tb_Accounts]  WITH CHECK ADD  CONSTRAINT [FK_tb_Accounts_tb_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tb_Roles] ([RoleID])
GO
ALTER TABLE [dbo].[tb_Accounts] CHECK CONSTRAINT [FK_tb_Accounts_tb_Roles]
GO
ALTER TABLE [dbo].[tb_OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_tb_OrderDetails_tb_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[tb_Orders] ([OrderID])
GO
ALTER TABLE [dbo].[tb_OrderDetails] CHECK CONSTRAINT [FK_tb_OrderDetails_tb_Orders]
GO
ALTER TABLE [dbo].[tb_OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_tb_OrderDetails_tb_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tb_Products] ([ProductID])
GO
ALTER TABLE [dbo].[tb_OrderDetails] CHECK CONSTRAINT [FK_tb_OrderDetails_tb_Products]
GO
ALTER TABLE [dbo].[tb_Orders]  WITH CHECK ADD  CONSTRAINT [FK_tb_Orders_tb_Customers] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[tb_Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[tb_Orders] CHECK CONSTRAINT [FK_tb_Orders_tb_Customers]
GO
ALTER TABLE [dbo].[tb_Orders]  WITH CHECK ADD  CONSTRAINT [FK_tb_Orders_tb_TransactStatus] FOREIGN KEY([TransactStatusID])
REFERENCES [dbo].[tb_TransactStatus] ([TransactStatusID])
GO
ALTER TABLE [dbo].[tb_Orders] CHECK CONSTRAINT [FK_tb_Orders_tb_TransactStatus]
GO
ALTER TABLE [dbo].[tb_Products]  WITH CHECK ADD  CONSTRAINT [FK_tb_Products_tb_Categories] FOREIGN KEY([CatID])
REFERENCES [dbo].[tb_Categories] ([CatID])
GO
ALTER TABLE [dbo].[tb_Products] CHECK CONSTRAINT [FK_tb_Products_tb_Categories]
GO
USE [master]
GO
ALTER DATABASE [OnlineClothingShop] SET  READ_WRITE 
GO
