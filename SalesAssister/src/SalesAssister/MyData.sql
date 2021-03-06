USE [master]
GO
/****** Object:  Database [MaxDanger]    Script Date: 5/12/16 11:37:31 AM ******/
CREATE DATABASE [MaxDanger]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MaxDanger', FILENAME = N'C:\Users\MichaelSmith\MaxDanger.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MaxDanger_log', FILENAME = N'C:\Users\MichaelSmith\MaxDanger_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MaxDanger] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MaxDanger].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MaxDanger] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MaxDanger] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MaxDanger] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MaxDanger] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MaxDanger] SET ARITHABORT OFF 
GO
ALTER DATABASE [MaxDanger] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MaxDanger] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MaxDanger] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MaxDanger] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MaxDanger] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MaxDanger] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MaxDanger] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MaxDanger] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MaxDanger] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MaxDanger] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MaxDanger] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MaxDanger] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MaxDanger] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MaxDanger] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MaxDanger] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MaxDanger] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MaxDanger] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MaxDanger] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MaxDanger] SET  MULTI_USER 
GO
ALTER DATABASE [MaxDanger] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MaxDanger] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MaxDanger] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MaxDanger] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MaxDanger] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MaxDanger]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/12/16 11:37:31 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/12/16 11:37:31 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/12/16 11:37:31 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/12/16 11:37:31 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/12/16 11:37:31 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/12/16 11:37:31 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/12/16 11:37:31 AM ******/
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
/****** Object:  Table [dbo].[Clients]    Script Date: 5/12/16 11:37:31 AM ******/
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
/****** Object:  Table [dbo].[Contacts]    Script Date: 5/12/16 11:37:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [int] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
	[Date] [datetime2](7) NULL,
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
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c040a0b1-8341-4240-b197-f7c9fb52dce3', N'085033a4-7884-4d67-82ad-77433cb9fe36')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'daae6196-122f-4440-ab30-f27d8fcccfa1', N'085033a4-7884-4d67-82ad-77433cb9fe36')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e5703d67-135a-4b48-a4ed-f7c901e4d049', N'085033a4-7884-4d67-82ad-77433cb9fe36')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'efe4502f-a040-4cda-a366-3d03cfede039', N'9dda8df1-afb1-4eb1-b610-c4607f2f6017')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'38a24eeb-9275-46bc-94c6-bd0a138873fd', 0, N'9284f146-8d5f-4767-9f38-92199aaa2b44', NULL, 0, 1, NULL, NULL, N'ALVIN', N'AQAAAAEAACcQAAAAEEkFnkxglVIAi3KIShmV5EYcUDSvPXRZAU/tM1RkoOgkeGk98UM0WS1RwLwqCVlHeA==', NULL, 0, N'9e2898a5-c4e3-45c1-ba1e-592d06a6ce22', 0, N'Alvin')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'58a31d1e-ef38-438a-a77e-e1251e1d8ef6', 0, N'28516296-d392-4a68-ba08-37f44dc694a0', NULL, 0, 1, NULL, NULL, N'CHARLIE', N'AQAAAAEAACcQAAAAEOHTXMoXJbhy1A+3jn3j3TTAdKrOuPdzMxRdKtfc7CNDd3qcG/qxiREzc4snSOWd7w==', NULL, 0, N'6a8a4d89-e80c-4bab-bd01-fe80f0f34964', 0, N'Charlie')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'9a648497-9f11-4bad-a977-3f6aa2af8684', 0, N'ee2851b7-c3dd-4b7a-8980-7df6c71320d5', NULL, 0, 1, NULL, NULL, N'BOB', N'AQAAAAEAACcQAAAAEEWIC6AyQpCfdYmqQpVMqRZRFvBjlc4k0dy9IDTMS01cen8RpcgjSAcHcY9IJYzljg==', NULL, 0, N'44d63ea6-8491-4723-aac2-e292bdcd72e3', 0, N'bob')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'c040a0b1-8341-4240-b197-f7c9fb52dce3', 0, N'844c7f46-e1a3-434f-8a69-955d99f2a408', NULL, 0, 1, NULL, NULL, N'ANASUYA.DINDRAL@GMAIL.COM', N'AQAAAAEAACcQAAAAEA0VVJlMttId8lpC6TygU23wcGT3hY11/seY2iMRMCtDNRTfvBZYZzUvrQ6khqh5BQ==', NULL, 0, N'6bcd530f-8c6d-493a-b260-d8206a043c17', 0, N'anasuya.dindral@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'daae6196-122f-4440-ab30-f27d8fcccfa1', 0, N'f104f4bc-ff3b-42e5-b6ca-280f320d297c', NULL, 0, 1, NULL, NULL, N'SAMANTHA', N'AQAAAAEAACcQAAAAEPLT77zbuh4wbLSJQT+uHuuboBEeRUTlLT7L31tdvdMPJ7UsZYPA5Wm4xQU0z5RFJA==', NULL, 0, N'0ae7d552-c060-49a1-b8a2-f030eef130c2', 0, N'Samantha')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'e1b3e623-b7a0-4fc1-ac71-98aafd24748a', 0, N'56aa6efa-e81d-4afd-9ec6-47ded566edfe', NULL, 0, 1, NULL, NULL, N'JESSICA', N'AQAAAAEAACcQAAAAEC0FCsaeSchJ0TvfICBAoEWy4r5P0hHItSASCjeZ97XD9pBcMtef245C5HbXBLfLRA==', NULL, 0, N'48ef3c5d-8c8d-40fb-a666-61cf6dbd958b', 0, N'Jessica')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'e4503bbf-0421-4f55-bd01-34797d8a790a', 0, N'9517f3fc-0de5-4caa-8765-db1da4859e53', NULL, 0, 1, NULL, NULL, N'NEWUSER', N'AQAAAAEAACcQAAAAEKggserwALDDJ1jEXbBtUL237N0TFOm7aRvL/mzFlPwGb95vpyp3t1CAAlVtmTQqSQ==', NULL, 0, N'c5d19dd4-e409-4ba4-822e-15c236d72a44', 0, N'newUser')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'e5703d67-135a-4b48-a4ed-f7c901e4d049', 0, N'235ac4cd-134f-476a-8e55-644a4dbc0cab', NULL, 0, 1, NULL, NULL, N'THEADMIN', N'AQAAAAEAACcQAAAAENDHbAKwj/jHfgMukDVfZuh37In+2bsV088n1EuCDBG/JpP5y38zd/LNscHfFRJHXw==', NULL, 0, N'dd44f226-e9bf-4a9a-a08a-a2a2a9e2317f', 0, N'TheAdmin')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'ecc99f75-c47d-471c-a607-f69bc8a6595e', 0, N'5030faf8-ef02-454b-9279-7d66c76ee54f', NULL, 0, 1, NULL, NULL, N'SWAYZE', N'AQAAAAEAACcQAAAAEHY48jjlKHG8ORah77k056F0CsEsye49g0pw53x8yp+1lbVWRgHvhU66PHEptVRcGw==', NULL, 0, N'a7623106-69df-455e-993c-b9fcb43ff7ec', 0, N'Swayze')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'efe4502f-a040-4cda-a366-3d03cfede039', 0, N'308e3615-b034-4a61-9373-bf5a741e3984', NULL, 0, 1, NULL, NULL, N'MICHAEL', N'AQAAAAEAACcQAAAAEInSZSsFXg6Ee5+AlBNKiiKmkpCDk0EyMrfFWEAwQfoyQfb6pyjT+0yDECEruXOC1A==', NULL, 0, N'f1927a59-17ce-4075-8740-018e7ba053df', 0, N'michael')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'f0624dd7-b191-47ee-aa36-e89778e7f493', 0, N'113bea14-990c-4eb3-825f-7caf7338bd5e', NULL, 0, 1, NULL, NULL, N'CLEOPATRA', N'AQAAAAEAACcQAAAAELCf8L+rBPR1W0H50FjDiU2+PNJRQffPSBBGP0lrrO8TawxiPQ5KeUlZcoC6fQCQ/w==', NULL, 0, N'4759bbee-e8e8-45de-9f7a-07fee95514cd', 0, N'Cleopatra')
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (1, N'Toronto@the6.com', N'Drake ', N'+15036863025', N'efe4502f-a040-4cda-a366-3d03cfede039')
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (2, N'michael@jordan.com', N'Michael Jordan', N'+15036863025', N'efe4502f-a040-4cda-a366-3d03cfede039')
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (3, N'wayne@cashmoney.com', N'Lil Wayne', N'+15036863025', N'efe4502f-a040-4cda-a366-3d03cfede039')
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (4, N'sarah@sellyourhouse.com', N'Sarah Sales', N'444-444-4444', N'38a24eeb-9275-46bc-94c6-bd0a138873fd')
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (6, N'zayne@popstar.com', N'Zayne Malik', N'+15036863025', N'efe4502f-a040-4cda-a366-3d03cfede039')
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (7, N'frank@Fourfingers.com', N'Frank Ocean', N'223-the-pyramid', N'38a24eeb-9275-46bc-94c6-bd0a138873fd')
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (9, N'janet@theJacksons.com', N'Janet Jackson', N'+15036863025', N'efe4502f-a040-4cda-a366-3d03cfede039')
INSERT [dbo].[Clients] ([ClientId], [Email], [Name], [Phone], [UserId]) VALUES (1009, N'usher@letitburn.com', N'Usher Raymond', N'1-800-atlanta', N'e5703d67-135a-4b48-a4ed-f7c901e4d049')
SET IDENTITY_INSERT [dbo].[Clients] OFF
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (1, 1, N'SUCCESS!', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'1999-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (2, 1, N'YES!!', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'1999-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (3, 3, N'test???', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'2016-04-29T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (4, 3, N'meeting accomplished.', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'2016-05-06T00:00:00.0000000' AS DateTime2))
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
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (11012, 7, N'Talked to Frank.', N'38a24eeb-9275-46bc-94c6-bd0a138873fd', CAST(N'2016-03-09T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (11013, 6, N'Met with Zayne', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'2016-05-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (11014, 2, N' อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ. 

 อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ. ', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'2016-04-07T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (11015, 2, N' อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ. ', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'2016-05-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (12018, 1, N'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'',

It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'',', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'2016-02-04T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (14014, 1009, N'التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام "هنا يوجد محتوى نصي، هنا يوجد محتوى نصي" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال "lorem ipsum" في أي محرك بحث ستظهر العديد من المواقع الحديث

التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام "هنا يوجد محتوى نصي، هنا يوجد محتوى نصي" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال "lorem ipsum" في أي محرك بحث ستظهر العديد من المواقع الحديث', N'e5703d67-135a-4b48-a4ed-f7c901e4d049', CAST(N'2014-08-13T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (14015, 1009, N'التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام "هنا يوجد محتوى نصي، هنا يوجد محتوى نصي" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص،

التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام "هنا يوجد محتوى نصي، هنا يوجد محتوى نصي" فتجعلها تبدو (أي الأح إيبسوم بشكل إفتراضي كنموذج عن النص', N'e5703d67-135a-4b48-a4ed-f7c901e4d049', CAST(N'2016-05-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (15017, 2, N'อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ.

อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ.

อยู่ยงคงกระพันมาไม่ใช่แค่เพียงห้าศตวรรษ แต่อยู่มาจนถึงยุคที่พลิกโฉมเข้าสู่งานเรียงพิมพ์ด้วยวิธีทางอิเล็กทรอนิกส์ และยังคงสภาพเดิมไว้อย่างไม่มีการเปลี่ยนแปลง มันได้รับความนิยมมากขึ้นในยุค ค.ศ.', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'2016-05-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (17017, 1, N'This note will be deleted', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'2016-05-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (21018, 2, N'This note is supposed to be first.', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'2016-06-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (26018, 9, N'notes notes notes notes ', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'2016-06-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Contacts] ([ContactId], [ClientId], [Notes], [UserId], [Date]) VALUES (26019, 2, N'uhhh we talked about a lot of shoes', N'efe4502f-a040-4cda-a366-3d03cfede039', CAST(N'2016-05-18T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Contacts] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/12/16 11:37:31 AM ******/
CREATE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 5/12/16 11:37:31 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/12/16 11:37:31 AM ******/
CREATE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contacts] ADD  CONSTRAINT [DF__Contacts__Date__1FCDBCEB]  DEFAULT ('0001-01-01 00:00:00.0000000') FOR [Date]
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
USE [master]
GO
ALTER DATABASE [MaxDanger] SET  READ_WRITE 
GO
