USE [master]
GO
/****** Object:  Database [SalesAssister]    Script Date: 4/24/16 12:41:16 PM ******/
CREATE DATABASE [SalesAssister]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SalesAssister', FILENAME = N'C:\Users\MichaelSmith\SalesAssister.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SalesAssister_log', FILENAME = N'C:\Users\MichaelSmith\SalesAssister_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SalesAssister] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SalesAssister].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SalesAssister] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SalesAssister] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SalesAssister] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SalesAssister] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SalesAssister] SET ARITHABORT OFF 
GO
ALTER DATABASE [SalesAssister] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SalesAssister] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SalesAssister] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SalesAssister] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SalesAssister] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SalesAssister] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SalesAssister] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SalesAssister] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SalesAssister] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SalesAssister] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SalesAssister] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SalesAssister] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SalesAssister] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SalesAssister] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SalesAssister] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SalesAssister] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SalesAssister] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SalesAssister] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SalesAssister] SET  MULTI_USER 
GO
ALTER DATABASE [SalesAssister] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SalesAssister] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SalesAssister] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SalesAssister] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SalesAssister] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SalesAssister]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/24/16 12:41:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_HistoryRow] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clients]    Script Date: 4/24/16 12:41:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[SalesPersonId] [int] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 4/24/16 12:41:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[SalesPersonId] [int] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalesPersons]    Script Date: 4/24/16 12:41:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesPersons](
	[SalesPersonId] [int] IDENTITY(1,1) NOT NULL,
	[Company] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_SalesPerson] PRIMARY KEY CLUSTERED 
(
	[SalesPersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160422180212_Initial', N'7.0.0-rc1-16348')
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [SalesPersonId]) VALUES (1, N'joe@email.org', N'Joe James', N'555-555-5559', 1)
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [SalesPersonId]) VALUES (2, N'barbara@gmail.com', N'Barbara Carbone', N'503-999-1111', 1)
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [SalesPersonId]) VALUES (3, N'michael@jordan.com', N'Michael Jordan', N'444-555-6666', 2)
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [SalesPersonId]) VALUES (4, N'oprah@oprah.com', N'Oprah Whinfrey', N'$$$-$$$-$$$$', 2)
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [SalesPersonId]) VALUES (5, N'johnlegend@music.com', N'John Legend', N'123-456-7890', 1)
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [SalesPersonId]) VALUES (6, N'flotus@whitehouse.com', N'Michelle Obama', N'1-800-whitehouse', 2)
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [SalesPersonId]) VALUES (7, N'b@barney.com', N'Barney the Dinosuar', N'111-111-2222', 2)
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [SalesPersonId]) VALUES (8, N'beth@email.com', N'Beth Smith', N'444-444-4444', 1)
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [SalesPersonId]) VALUES (9, N'hello@email.com', N'Jim Smith', N'430-000-1111', 1)
SET IDENTITY_INSERT [dbo].[Clients] OFF
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [SalesPersonId]) VALUES (1, 1, N'Client said that they would give me a call back tomorrow.', 1)
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [SalesPersonId]) VALUES (2, 2, N'Barbara agreed to meet with me tomorrow to discuss our services', 1)
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [SalesPersonId]) VALUES (3, 3, N'Left a message for Michael Jordan', 2)
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [SalesPersonId]) VALUES (4, 4, N'Met with Oprah today to disucss our paper products, and how they can help her magazine and other businesses.', 2)
SET IDENTITY_INSERT [dbo].[Contacts] OFF
SET IDENTITY_INSERT [dbo].[SalesPersons] ON 

INSERT [dbo].[SalesPersons] ([SalesPersonId], [Company], [Name]) VALUES (1, N'Scottrade Financial Services', N'Michael Smith')
INSERT [dbo].[SalesPersons] ([SalesPersonId], [Company], [Name]) VALUES (2, N'Paper People USA', N'Jessica Collins')
SET IDENTITY_INSERT [dbo].[SalesPersons] OFF
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Client_SalesPerson_SalesPersonId] FOREIGN KEY([SalesPersonId])
REFERENCES [dbo].[SalesPersons] ([SalesPersonId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Client_SalesPerson_SalesPersonId]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Client_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contact_Client_ClientId]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contact_SalesPerson_SalesPersonId] FOREIGN KEY([SalesPersonId])
REFERENCES [dbo].[SalesPersons] ([SalesPersonId])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contact_SalesPerson_SalesPersonId]
GO
USE [master]
GO
ALTER DATABASE [SalesAssister] SET  READ_WRITE 
GO
