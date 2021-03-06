/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2017 (14.0.1000)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [RecruitDB]    Script Date: 2017/10/06 16:27:00 ******/
CREATE DATABASE [RecruitDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RecruitDB', FILENAME = N'E:\Program Files\SQL Server 2017 Developer\MSSQL14.MSSQLSERVER\MSSQL\DATA\RecruitDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RecruitDB_log', FILENAME = N'E:\Program Files\SQL Server 2017 Developer\MSSQL14.MSSQLSERVER\MSSQL\DATA\RecruitDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [RecruitDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RecruitDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RecruitDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RecruitDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RecruitDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RecruitDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RecruitDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [RecruitDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RecruitDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RecruitDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RecruitDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RecruitDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RecruitDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RecruitDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RecruitDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RecruitDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RecruitDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RecruitDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RecruitDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RecruitDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RecruitDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RecruitDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RecruitDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RecruitDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RecruitDB] SET RECOVERY FULL 
GO
ALTER DATABASE [RecruitDB] SET  MULTI_USER 
GO
ALTER DATABASE [RecruitDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RecruitDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RecruitDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RecruitDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RecruitDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'RecruitDB', N'ON'
GO
ALTER DATABASE [RecruitDB] SET QUERY_STORE = OFF
GO
USE [RecruitDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [RecruitDB]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 2017/10/06 16:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[CandidateID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateFirstName] [nvarchar](50) NOT NULL,
	[CandidateLastName] [nvarchar](50) NOT NULL,
	[LastLogin] [datetime] NULL,
 CONSTRAINT [PK_Candidate] PRIMARY KEY CLUSTERED 
(
	[CandidateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateDetails]    Script Date: 2017/10/06 16:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateDetails](
	[CandidateDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[Remote] [bit] NOT NULL,
	[CandidateID] [int] NOT NULL,
	[SpokenLanguageID] [int] NOT NULL,
	[CandidateLocation] [geography] NULL,
 CONSTRAINT [PK_CandidateDetails] PRIMARY KEY CLUSTERED 
(
	[CandidateDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateTechStack]    Script Date: 2017/10/06 16:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateTechStack](
	[CandidateDetailsID] [int] NOT NULL,
	[TechID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateWorkItem]    Script Date: 2017/10/06 16:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateWorkItem](
	[CadidateWorkItemID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateID] [int] NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_CandidateWorkHistory] PRIMARY KEY CLUSTERED 
(
	[CadidateWorkItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employer]    Script Date: 2017/10/06 16:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer](
	[EmployerID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessName] [nvarchar](100) NOT NULL,
	[ContactFirstName] [nvarchar](50) NOT NULL,
	[ContactLastName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Employer] PRIMARY KEY CLUSTERED 
(
	[EmployerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployerDetails]    Script Date: 2017/10/06 16:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployerDetails](
	[EmployerDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[Remote] [bit] NOT NULL,
	[OnSite] [bit] NOT NULL,
	[EmployerLocation] [geography] NULL,
	[EmployerID] [int] NOT NULL,
 CONSTRAINT [PK_EmployerDetails] PRIMARY KEY CLUSTERED 
(
	[EmployerDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployerTechStack]    Script Date: 2017/10/06 16:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployerTechStack](
	[EmployerDetailsID] [int] NOT NULL,
	[TechID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployerUser]    Script Date: 2017/10/06 16:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployerUser](
	[EmployerUserID] [int] IDENTITY(1,1) NOT NULL,
	[EmployerUserFirstName] [nvarchar](50) NOT NULL,
	[EmployerUserLastName] [nvarchar](50) NOT NULL,
	[EmployerUserEmail] [nvarchar](50) NOT NULL,
	[EmployerID] [int] NOT NULL,
 CONSTRAINT [PK_EmployerUser] PRIMARY KEY CLUSTERED 
(
	[EmployerUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 2017/10/06 16:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[OfferID] [int] NOT NULL,
	[MessageText] [nvarchar](1500) NOT NULL,
	[CandidateID] [int] NOT NULL,
	[EmployerID] [int] NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offer]    Script Date: 2017/10/06 16:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offer](
	[OfferID] [int] IDENTITY(1,1) NOT NULL,
	[OfferAmount] [decimal](18, 2) NOT NULL,
	[CandidateID] [int] NOT NULL,
	[EmployerID] [int] NOT NULL,
	[OfferDesc] [nvarchar](500) NULL,
 CONSTRAINT [PK_Offer] PRIMARY KEY CLUSTERED 
(
	[OfferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Techs]    Script Date: 2017/10/06 16:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Techs](
	[TechID] [int] IDENTITY(1,1) NOT NULL,
	[TechName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Techs] PRIMARY KEY CLUSTERED 
(
	[TechID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CandidateDetails]  WITH CHECK ADD  CONSTRAINT [FK_CandidateDetails_Candidate] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([CandidateID])
GO
ALTER TABLE [dbo].[CandidateDetails] CHECK CONSTRAINT [FK_CandidateDetails_Candidate]
GO
ALTER TABLE [dbo].[CandidateTechStack]  WITH CHECK ADD  CONSTRAINT [FK_TechStack_CandidateDetails] FOREIGN KEY([CandidateDetailsID])
REFERENCES [dbo].[CandidateDetails] ([CandidateDetailsID])
GO
ALTER TABLE [dbo].[CandidateTechStack] CHECK CONSTRAINT [FK_TechStack_CandidateDetails]
GO
ALTER TABLE [dbo].[CandidateTechStack]  WITH CHECK ADD  CONSTRAINT [FK_TechStack_Techs] FOREIGN KEY([TechID])
REFERENCES [dbo].[Techs] ([TechID])
GO
ALTER TABLE [dbo].[CandidateTechStack] CHECK CONSTRAINT [FK_TechStack_Techs]
GO
ALTER TABLE [dbo].[CandidateWorkItem]  WITH CHECK ADD  CONSTRAINT [FK_CandidateWorkItem_Candidate] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([CandidateID])
GO
ALTER TABLE [dbo].[CandidateWorkItem] CHECK CONSTRAINT [FK_CandidateWorkItem_Candidate]
GO
ALTER TABLE [dbo].[EmployerDetails]  WITH CHECK ADD  CONSTRAINT [FK_EmployerDetails_Employer] FOREIGN KEY([EmployerID])
REFERENCES [dbo].[Employer] ([EmployerID])
GO
ALTER TABLE [dbo].[EmployerDetails] CHECK CONSTRAINT [FK_EmployerDetails_Employer]
GO
ALTER TABLE [dbo].[EmployerTechStack]  WITH CHECK ADD  CONSTRAINT [FK_EmployerTechStack_EmployerDetails] FOREIGN KEY([EmployerDetailsID])
REFERENCES [dbo].[EmployerDetails] ([EmployerDetailsID])
GO
ALTER TABLE [dbo].[EmployerTechStack] CHECK CONSTRAINT [FK_EmployerTechStack_EmployerDetails]
GO
ALTER TABLE [dbo].[EmployerTechStack]  WITH CHECK ADD  CONSTRAINT [FK_EmployerTechStack_Techs] FOREIGN KEY([TechID])
REFERENCES [dbo].[Techs] ([TechID])
GO
ALTER TABLE [dbo].[EmployerTechStack] CHECK CONSTRAINT [FK_EmployerTechStack_Techs]
GO
ALTER TABLE [dbo].[EmployerUser]  WITH CHECK ADD  CONSTRAINT [FK_EmployerUser_Employer] FOREIGN KEY([EmployerID])
REFERENCES [dbo].[Employer] ([EmployerID])
GO
ALTER TABLE [dbo].[EmployerUser] CHECK CONSTRAINT [FK_EmployerUser_Employer]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Candidate] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([CandidateID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Candidate]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Employer] FOREIGN KEY([EmployerID])
REFERENCES [dbo].[Employer] ([EmployerID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Employer]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Message_Offer] FOREIGN KEY([OfferID])
REFERENCES [dbo].[Offer] ([OfferID])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Message_Offer]
GO
ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [FK_Offer_Candidate] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([CandidateID])
GO
ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [FK_Offer_Candidate]
GO
ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [FK_Offer_Employer] FOREIGN KEY([EmployerID])
REFERENCES [dbo].[Employer] ([EmployerID])
GO
ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [FK_Offer_Employer]
GO
USE [master]
GO
ALTER DATABASE [RecruitDB] SET  READ_WRITE 
GO
