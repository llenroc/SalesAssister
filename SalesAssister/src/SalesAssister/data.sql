USE [master]
GO
/****** Object:  Database [SalesAssiter2]    Script Date: 5/1/16 11:48:37 AM ******/
CREATE DATABASE [SalesAssiter2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SalesAssiter2', FILENAME = N'C:\Users\MichaelSmith\SalesAssiter2.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SalesAssiter2_log', FILENAME = N'C:\Users\MichaelSmith\SalesAssiter2_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SalesAssiter2] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SalesAssiter2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SalesAssiter2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SalesAssiter2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SalesAssiter2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SalesAssiter2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SalesAssiter2] SET ARITHABORT OFF 
GO
ALTER DATABASE [SalesAssiter2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SalesAssiter2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SalesAssiter2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SalesAssiter2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SalesAssiter2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SalesAssiter2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SalesAssiter2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SalesAssiter2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SalesAssiter2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SalesAssiter2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SalesAssiter2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SalesAssiter2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SalesAssiter2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SalesAssiter2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SalesAssiter2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SalesAssiter2] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SalesAssiter2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SalesAssiter2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SalesAssiter2] SET  MULTI_USER 
GO
ALTER DATABASE [SalesAssiter2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SalesAssiter2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SalesAssiter2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SalesAssiter2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SalesAssiter2] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SalesAssiter2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/1/16 11:48:37 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/1/16 11:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_IdentityRoleClaim<string>] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/1/16 11:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_IdentityRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/1/16 11:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_IdentityUserClaim<string>] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/1/16 11:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_IdentityUserLogin<string>] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/1/16 11:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_IdentityUserRole<string>] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/1/16 11:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_ApplicationUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clients]    Script Date: 5/1/16 11:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientId] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 5/1/16 11:48:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160429162306_Initial', N'7.0.0-rc1-16348')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160429174737_AddTables', N'7.0.0-rc1-16348')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160429175320_AddTables1', N'7.0.0-rc1-16348')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20160501180025_A', N'7.0.0-rc1-16348')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'085033a4-7884-4d67-82ad-77433cb9fe36', N'7fed343f-8e6b-429f-ae95-de6c91094e4f', N'Admin', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'991a1db0-3958-447f-90de-e853f08063d5', N'6776bfb8-d0e0-432e-996b-22c11673e42e', N'Gaurd', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'9dda8df1-afb1-4eb1-b610-c4607f2f6017', N'c068cdd0-515b-46d9-ae75-8a15e144a665', N'Chef', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'eaf7a9e6-faaf-48b4-8a62-37659bdbc953', N'2bec284c-9018-4fb9-a310-f76f57ae07e8', N'Farmer', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'38a24eeb-9275-46bc-94c6-bd0a138873fd', N'085033a4-7884-4d67-82ad-77433cb9fe36')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'38a24eeb-9275-46bc-94c6-bd0a138873fd', N'eaf7a9e6-faaf-48b4-8a62-37659bdbc953')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'daae6196-122f-4440-ab30-f27d8fcccfa1', N'085033a4-7884-4d67-82ad-77433cb9fe36')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e5703d67-135a-4b48-a4ed-f7c901e4d049', N'085033a4-7884-4d67-82ad-77433cb9fe36')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'efe4502f-a040-4cda-a366-3d03cfede039', N'9dda8df1-afb1-4eb1-b610-c4607f2f6017')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'38a24eeb-9275-46bc-94c6-bd0a138873fd', 0, N'fe92332b-8516-4d7c-b8b9-dcd691f395ee', NULL, 0, 1, NULL, NULL, N'ALVIN', N'AQAAAAEAACcQAAAAEEkFnkxglVIAi3KIShmV5EYcUDSvPXRZAU/tM1RkoOgkeGk98UM0WS1RwLwqCVlHeA==', NULL, 0, N'9e2898a5-c4e3-45c1-ba1e-592d06a6ce22', 0, N'Alvin')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'9a648497-9f11-4bad-a977-3f6aa2af8684', 0, N'ee2851b7-c3dd-4b7a-8980-7df6c71320d5', NULL, 0, 1, NULL, NULL, N'BOB', N'AQAAAAEAACcQAAAAEEWIC6AyQpCfdYmqQpVMqRZRFvBjlc4k0dy9IDTMS01cen8RpcgjSAcHcY9IJYzljg==', NULL, 0, N'44d63ea6-8491-4723-aac2-e292bdcd72e3', 0, N'bob')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'daae6196-122f-4440-ab30-f27d8fcccfa1', 0, N'f104f4bc-ff3b-42e5-b6ca-280f320d297c', NULL, 0, 1, NULL, NULL, N'SAMANTHA', N'AQAAAAEAACcQAAAAEPLT77zbuh4wbLSJQT+uHuuboBEeRUTlLT7L31tdvdMPJ7UsZYPA5Wm4xQU0z5RFJA==', NULL, 0, N'0ae7d552-c060-49a1-b8a2-f030eef130c2', 0, N'Samantha')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'e5703d67-135a-4b48-a4ed-f7c901e4d049', 0, N'235ac4cd-134f-476a-8e55-644a4dbc0cab', NULL, 0, 1, NULL, NULL, N'THEADMIN', N'AQAAAAEAACcQAAAAENDHbAKwj/jHfgMukDVfZuh37In+2bsV088n1EuCDBG/JpP5y38zd/LNscHfFRJHXw==', NULL, 0, N'dd44f226-e9bf-4a9a-a08a-a2a2a9e2317f', 0, N'TheAdmin')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'efe4502f-a040-4cda-a366-3d03cfede039', 0, N'308e3615-b034-4a61-9373-bf5a741e3984', NULL, 0, 1, NULL, NULL, N'MICHAEL', N'AQAAAAEAACcQAAAAEInSZSsFXg6Ee5+AlBNKiiKmkpCDk0EyMrfFWEAwQfoyQfb6pyjT+0yDECEruXOC1A==', NULL, 0, N'f1927a59-17ce-4075-8740-018e7ba053df', 0, N'michael')
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (1, N'drake@the6.com', N'Drake', N'1-800-hotlinebling', N'efe4502f-a040-4cda-a366-3d03cfede039')
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (2, N'michael@jordan.com', N'Michael Jordan', N'333-888-9000', N'efe4502f-a040-4cda-a366-3d03cfede039')
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (3, N'wayne@cashmoney.com', N'Lil Wayne', N'$$$-$$$-$$$$', N'efe4502f-a040-4cda-a366-3d03cfede039')
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (4, N'sarah@sellyourhouse.com', N'Sarah Sales!', N'444-444-4444', N'38a24eeb-9275-46bc-94c6-bd0a138873fd')
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (6, N'zayne@popstar.com', N'Zayne Malik', N'333-044-0000', N'efe4502f-a040-4cda-a366-3d03cfede039')
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (7, N'frank@Fourfingers.com', N'Frank Ocean', N'223-the-pyramid', N'38a24eeb-9275-46bc-94c6-bd0a138873fd')
SET IDENTITY_INSERT [dbo].[Clients] OFF
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (1, 1, N'SUCCESS!', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'1999-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (2, 1, N'YES!!', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'1999-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (3, 3, N'test???', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'2016-04-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (4, 3, N'Touched Michaels butt - meeting accomplished.', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'2016-04-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (5, 4, N'Nevermind none of this happened.', N'38a24eeb-9275-46bc-94c6-bd0a138873fd', CAST(N'2016-04-30T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (6, 4, N'Aliquam efficitur orci id orci egestas interdum in non ex. Phasellus et blandit lectus. Curabitur interdum suscipit maximus. Sed maximus erat eget odio dignissim sollicitudin. Ut eu consectetur nunc. Integer diam turpis, aliquet eu sapien vitae, cursus faucibus lectus. Aenean blandit imperdiet quam non accumsan. Vivamus efficitur pulvinar pharetra.

Aliquam efficitur orci id orci egestas interdum in non ex. Phasellus et blandit lectus. Curabitur interdum suscipit maximus. Sed maximus erat eget odio dignissim sollicitudin. Ut eu consectetur nunc. Integer diam turpis, aliquet eu sapien vitae, cursus faucibus lectus. Aenean blandit imperdiet quam non accumsan. Vivamus efficitur pulvinar pharetra.', N'38a24eeb-9275-46bc-94c6-bd0a138873fd', CAST(N'2016-04-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (8, 4, N'Aliquam efficitur orci id orci egestas interdum in non ex. Phasellus et blandit lectus. Curabitur interdum suscipit maximus. Sed maximus erat eget odio dignissim sollicitudin. 

Aliquam efficitur orci id orci egestas interdum in non ex. Phasellus et blandit lectus. Curabitur interdum suscipit maximus. Sed maximus erat eget odio dignissim sollicitudin. 

Aliquam efficitur orci id orci egestas interdum in non ex. Phasellus et blandit lectus. Curabitur interdum suscipit maximus. Sed maximus erat eget odio dignissim sollicitudin. ', N'38a24eeb-9275-46bc-94c6-bd0a138873fd', CAST(N'2016-05-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (9, 4, N'one 

two 

three 

four

five', N'38a24eeb-9275-46bc-94c6-bd0a138873fd', CAST(N'2016-06-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (9012, 7, N'eidited again', N'38a24eeb-9275-46bc-94c6-bd0a138873fd', CAST(N'2016-04-30T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (11011, 7, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', N'38a24eeb-9275-46bc-94c6-bd0a138873fd', CAST(N'2016-05-02T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Contacts] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/1/16 11:48:38 AM ******/
CREATE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 5/1/16 11:48:38 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/1/16 11:48:38 AM ******/
CREATE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contacts] ADD  DEFAULT ('0001-01-01 00:00:00.0000000') FOR [Date]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityRoleClaim<string>_IdentityRole_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_IdentityRoleClaim<string>_IdentityRole_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserClaim<string>_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_IdentityUserClaim<string>_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserLogin<string>_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_IdentityUserLogin<string>_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserRole<string>_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_IdentityUserRole<string>_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserRole<string>_IdentityRole_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_IdentityUserRole<string>_IdentityRole_RoleId]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Client_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Client_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contact_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contact_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Client_ClientId] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([ClientId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contacts] CHECK CONSTRAINT [FK_Contact_Client_ClientId]
GO
USE [master]
GO
ALTER DATABASE [SalesAssiter2] SET  READ_WRITE 
GO
