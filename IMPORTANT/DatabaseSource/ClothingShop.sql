USE [master]
GO
/****** Object:  Database [OnlineClothingShop]    Script Date: 10/23/2023 4:11:54 PM ******/
CREATE DATABASE [OnlineClothingShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineClothingShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\OnlineClothingShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OnlineClothingShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\OnlineClothingShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [OnlineClothingShop] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineClothingShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
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
EXEC sys.sp_db_vardecimal_storage_format N'OnlineClothingShop', N'ON'
GO
ALTER DATABASE [OnlineClothingShop] SET QUERY_STORE = ON
GO
ALTER DATABASE [OnlineClothingShop] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [OnlineClothingShop]
GO
/****** Object:  Table [dbo].[tb_Accounts]    Script Date: 10/23/2023 4:11:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [varchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Salt] [nchar](10) NULL,
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
/****** Object:  Table [dbo].[tb_Attributes]    Script Date: 10/23/2023 4:11:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Attributes](
	[AttributeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_tb_Attributes] PRIMARY KEY CLUSTERED 
(
	[AttributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_AttributesPrices]    Script Date: 10/23/2023 4:11:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_AttributesPrices](
	[AttributesPriceID] [int] IDENTITY(1,1) NOT NULL,
	[AttributeID] [int] NULL,
	[ProductID] [int] NULL,
	[Price] [int] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tb_AttributesPrices] PRIMARY KEY CLUSTERED 
(
	[AttributesPriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Categories]    Script Date: 10/23/2023 4:11:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Categories](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[ParentID] [int] NULL,
	[Levels] [int] NULL,
	[Ordering] [int] NULL,
	[Published] [bit] NULL,
	[Thumb] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Cover] [nvarchar](250) NULL,
 CONSTRAINT [PK_tb_Categories] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Customers]    Script Date: 10/23/2023 4:11:54 PM ******/
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
	[LocationID] [int] NULL,
	[District] [int] NULL,
	[Ward] [int] NULL,
	[CreateDate] [datetime] NULL,
	[Password] [nvarchar](50) NULL,
	[Salt] [nchar](8) NULL,
	[LastLogin] [datetime] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_tb_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Locations]    Script Date: 10/23/2023 4:11:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Locations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Type] [nvarchar](20) NULL,
	[Slug] [nvarchar](100) NULL,
	[NameWithType] [nvarchar](255) NULL,
	[PathWithType] [nvarchar](255) NULL,
	[ParentCode] [int] NULL,
	[Levels] [int] NULL,
 CONSTRAINT [PK_tb_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OrderDetails]    Script Date: 10/23/2023 4:11:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[OrderNumber] [int] NULL,
	[Quantity] [int] NULL,
	[Discount] [int] NULL,
	[Total] [int] NULL,
	[ShipDate] [datetime] NULL,
 CONSTRAINT [PK_tb_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Orders]    Script Date: 10/23/2023 4:11:54 PM ******/
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
	[PaymentID] [int] NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_tb_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Products]    Script Date: 10/23/2023 4:11:54 PM ******/
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
	[Thumb] [nvarchar](255) NULL,
	[DateCreated] [datetime] NULL,
	[DateModified] [datetime] NULL,
	[BestSellers] [bit] NULL,
	[HomeFlag] [bit] NULL,
	[Active] [bit] NULL,
	[UnitsInStock] [int] NULL,
 CONSTRAINT [PK_tb_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Roles]    Script Date: 10/23/2023 4:11:54 PM ******/
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
/****** Object:  Table [dbo].[tb_TransactStatus]    Script Date: 10/23/2023 4:11:54 PM ******/
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
ALTER TABLE [dbo].[tb_Accounts]  WITH CHECK ADD  CONSTRAINT [FK_tb_Accounts_tb_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[tb_Roles] ([RoleID])
GO
ALTER TABLE [dbo].[tb_Accounts] CHECK CONSTRAINT [FK_tb_Accounts_tb_Roles]
GO
ALTER TABLE [dbo].[tb_AttributesPrices]  WITH CHECK ADD  CONSTRAINT [FK_tb_AttributesPrices_tb_Attributes] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[tb_Attributes] ([AttributeID])
GO
ALTER TABLE [dbo].[tb_AttributesPrices] CHECK CONSTRAINT [FK_tb_AttributesPrices_tb_Attributes]
GO
ALTER TABLE [dbo].[tb_AttributesPrices]  WITH CHECK ADD  CONSTRAINT [FK_tb_AttributesPrices_tb_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tb_Products] ([ProductID])
GO
ALTER TABLE [dbo].[tb_AttributesPrices] CHECK CONSTRAINT [FK_tb_AttributesPrices_tb_Products]
GO
ALTER TABLE [dbo].[tb_Customers]  WITH CHECK ADD  CONSTRAINT [FK_tb_Customers_tb_Locations] FOREIGN KEY([LocationID])
REFERENCES [dbo].[tb_Locations] ([LocationID])
GO
ALTER TABLE [dbo].[tb_Customers] CHECK CONSTRAINT [FK_tb_Customers_tb_Locations]
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
