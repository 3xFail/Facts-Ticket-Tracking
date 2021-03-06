USE [master]
GO
/****** Object:  Database [ITS_TicketStatsWarehouse]    Script Date: 2/6/2018 1:02:06 PM ******/
CREATE DATABASE [ITS_TicketStatsWarehouse]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ITS_TicketStatsWarehouse', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER4745\MSSQL\DATA\ITS_TicketStatsWarehouse.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ITS_TicketStatsWarehouse_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER4745\MSSQL\DATA\ITS_TicketStatsWarehouse_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ITS_TicketStatsWarehouse].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET ARITHABORT OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET RECOVERY FULL 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET  MULTI_USER 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ITS_TicketStatsWarehouse]
GO
/****** Object:  Table [dbo].[Ticket_Snap_Shot]    Script Date: 2/6/2018 1:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ticket_Snap_Shot](
	[Assigned_To_Name] [varchar](50) NOT NULL,
	[Status] [varchar](15) NOT NULL,
	[Priority] [varchar](15) NOT NULL,
	[Date_Requested] [datetime] NOT NULL,
	[Date_Completed] [datetime] NULL,
	[Support_Group] [varchar](50) NOT NULL,
	[Ticket_ID] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Velocity_Storage]    Script Date: 2/6/2018 1:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Velocity_Storage](
	[Report_Date] [datetime] NOT NULL,
	[Open_Count] [int] NOT NULL,
	[Assigned_Count] [int] NOT NULL,
	[Seven_Day_Created_Count] [int] NOT NULL,
	[Thirty_Day_Created_Count] [int] NOT NULL,
	[Ninety_Day_Created_Count] [int] NOT NULL,
	[Seven_Day_Closed_Count] [int] NOT NULL,
	[Thirty_Day_Closed_Count] [int] NOT NULL,
	[Ninety_Day_Closed_Count] [int] NOT NULL,
	[Seven_Day_Age] [int] NOT NULL,
	[Eight_Day_Age] [int] NOT NULL,
	[Fifteen_Day_Age] [int] NOT NULL,
	[Twent_Day_Age] [int] NOT NULL,
	[Thirty_Day_Age] [int] NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Assigned', N'Low', CAST(N'2018-02-05 18:49:06.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Assigned', N'Low', CAST(N'2018-02-05 18:42:17.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Assigned', N'Medium', CAST(N'2018-02-05 18:38:51.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Assigned', N'High', CAST(N'2018-02-05 18:35:51.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Assigned', N'Low', CAST(N'2018-02-05 18:31:27.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Assigned', N'Low', CAST(N'2018-02-05 16:51:17.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Assigned', N'Low', CAST(N'2018-02-05 15:56:54.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mboese', N'Closed', N'Low', CAST(N'2018-02-05 15:30:37.000' AS DateTime), CAST(N'2018-02-05 15:44:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Assigned', N'Low', CAST(N'2018-02-05 15:11:37.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Assigned', N'Low', CAST(N'2018-02-05 15:03:57.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Assigned', N'Low', CAST(N'2018-02-05 14:35:10.000' AS DateTime), NULL, N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-02-05 14:27:11.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Assigned', N'Low', CAST(N'2018-02-05 13:59:28.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Assigned', N'Low', CAST(N'2018-02-05 12:17:08.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'In Progress', N'High', CAST(N'2018-02-05 10:26:00.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Assigned', N'Low', CAST(N'2018-02-05 10:09:07.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Assigned', N'Low', CAST(N'2018-02-05 10:09:06.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2018-02-05 09:43:37.000' AS DateTime), CAST(N'2018-02-05 09:43:34.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'In Progress', N'Low', CAST(N'2018-02-05 08:21:59.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-02-03 15:27:14.000' AS DateTime), CAST(N'2018-02-03 15:27:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Assigned', N'Low', CAST(N'2018-02-03 14:08:40.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Assigned', N'Low', CAST(N'2018-02-03 11:14:17.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Assigned', N'Low', CAST(N'2018-02-03 09:10:49.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Assigned', N'Low', CAST(N'2018-02-02 18:23:27.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Medium', CAST(N'2018-02-02 16:26:42.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-02-02 15:54:29.000' AS DateTime), CAST(N'2018-02-05 09:37:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-02-02 15:37:35.000' AS DateTime), CAST(N'2018-02-02 15:41:02.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.ckaiser', N'Awaiting Feedba', N'Low', CAST(N'2018-02-02 12:16:03.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'Medium', CAST(N'2018-02-02 11:44:02.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Medium', CAST(N'2018-02-02 11:35:03.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-02-02 10:51:38.000' AS DateTime), CAST(N'2018-02-02 10:51:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Assigned', N'Medium', CAST(N'2018-02-01 17:51:03.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'High', CAST(N'2018-02-01 17:39:10.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'High', CAST(N'2018-02-01 17:33:16.000' AS DateTime), CAST(N'2018-02-01 17:54:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Medium', CAST(N'2018-02-01 17:28:32.000' AS DateTime), CAST(N'2018-02-01 17:28:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Assigned', N'High', CAST(N'2018-02-01 16:22:35.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Assigned', N'Medium', CAST(N'2018-02-01 15:20:50.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2018-02-01 14:03:41.000' AS DateTime), CAST(N'2018-02-05 13:35:25.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-02-01 13:51:09.000' AS DateTime), CAST(N'2018-02-05 16:33:15.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'Medium', CAST(N'2018-02-01 13:29:36.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'Medium', CAST(N'2018-02-01 13:15:48.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-02-01 12:10:43.000' AS DateTime), CAST(N'2018-02-01 12:10:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-02-01 12:09:44.000' AS DateTime), CAST(N'2018-02-01 12:09:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Regulatory', CAST(N'2018-02-01 11:25:48.000' AS DateTime), CAST(N'2018-02-01 11:25:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-02-01 11:19:49.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Awaiting Feedba', N'Medium', CAST(N'2018-02-01 10:40:59.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Cancelled', N'Low', CAST(N'2018-02-01 10:12:44.000' AS DateTime), CAST(N'2018-02-01 10:13:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'High', CAST(N'2018-02-01 09:50:56.000' AS DateTime), CAST(N'2018-02-05 10:19:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-02-01 09:50:56.000' AS DateTime), CAST(N'2018-02-01 10:06:54.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'High', CAST(N'2018-02-01 09:38:20.000' AS DateTime), CAST(N'2018-02-01 17:29:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Assigned', N'Low', CAST(N'2018-02-01 08:48:14.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-02-01 08:11:58.000' AS DateTime), CAST(N'2018-02-01 08:12:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Assigned', N'Medium', CAST(N'2018-02-01 07:34:00.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Assigned', N'Low', CAST(N'2018-01-31 17:22:54.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Awaiting Feedba', N'Low', CAST(N'2018-01-31 17:10:02.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Assigned', N'Medium', CAST(N'2018-01-31 16:32:26.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-31 16:16:59.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-31 15:21:23.000' AS DateTime), CAST(N'2018-01-31 21:39:11.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'On Hold', N'Low', CAST(N'2018-01-31 14:51:16.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Assigned', N'Low', CAST(N'2018-01-31 14:12:36.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Assigned', N'Low', CAST(N'2018-01-31 14:06:27.000' AS DateTime), NULL, N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Medium', CAST(N'2018-01-31 13:35:24.000' AS DateTime), CAST(N'2018-01-31 16:22:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-31 13:33:46.000' AS DateTime), CAST(N'2018-01-31 15:09:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-31 13:31:41.000' AS DateTime), CAST(N'2018-02-01 16:28:54.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-31 12:13:08.000' AS DateTime), CAST(N'2018-02-02 16:23:22.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'Medium', CAST(N'2018-01-31 11:58:05.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'On Hold', N'High', CAST(N'2018-01-31 11:04:55.000' AS DateTime), NULL, N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2018-01-31 10:40:39.000' AS DateTime), CAST(N'2018-01-31 21:46:29.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Medium', CAST(N'2018-01-31 09:39:00.000' AS DateTime), CAST(N'2018-02-01 16:27:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Assigned', N'Medium', CAST(N'2018-01-31 09:12:34.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-31 08:33:27.000' AS DateTime), CAST(N'2018-01-31 08:34:15.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'Medium', CAST(N'2018-01-31 08:07:13.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-30 17:08:22.000' AS DateTime), CAST(N'2018-01-31 15:05:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-30 16:50:17.000' AS DateTime), CAST(N'2018-02-02 10:40:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-30 16:26:45.000' AS DateTime), CAST(N'2018-01-30 16:26:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-30 16:20:12.000' AS DateTime), CAST(N'2018-01-31 08:10:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-30 16:11:12.000' AS DateTime), CAST(N'2018-01-30 16:11:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Assigned', N'Low', CAST(N'2018-01-30 15:54:24.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-30 15:49:18.000' AS DateTime), CAST(N'2018-01-31 15:11:59.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Cancelled', N'Low', CAST(N'2018-01-30 15:45:22.000' AS DateTime), CAST(N'2018-01-30 16:21:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Assigned', N'Medium', CAST(N'2018-01-30 15:42:41.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-30 15:37:04.000' AS DateTime), CAST(N'2018-01-31 16:09:35.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-30 15:35:41.000' AS DateTime), CAST(N'2018-01-30 16:59:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-30 15:34:49.000' AS DateTime), CAST(N'2018-01-31 16:34:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-30 15:32:20.000' AS DateTime), CAST(N'2018-02-01 16:28:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-30 14:42:40.000' AS DateTime), CAST(N'2018-01-31 17:00:06.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Assigned', N'Low', CAST(N'2018-01-30 14:00:41.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Assigned', N'Medium', CAST(N'2018-01-30 13:33:28.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-30 11:56:29.000' AS DateTime), CAST(N'2018-01-31 16:05:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-30 11:30:19.000' AS DateTime), CAST(N'2018-01-30 11:55:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-30 11:24:09.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-30 11:17:24.000' AS DateTime), CAST(N'2018-01-30 11:17:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Awaiting Feedba', N'Medium', CAST(N'2018-01-30 10:46:39.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Medium', CAST(N'2018-01-30 10:23:51.000' AS DateTime), CAST(N'2018-02-05 15:44:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-30 10:07:07.000' AS DateTime), CAST(N'2018-01-30 10:07:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Medium', CAST(N'2018-01-30 10:03:29.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-30 09:59:10.000' AS DateTime), CAST(N'2018-01-31 15:07:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-30 09:33:31.000' AS DateTime), CAST(N'2018-01-31 15:44:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-30 09:21:48.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-30 09:20:48.000' AS DateTime), CAST(N'2018-01-30 12:53:50.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'Medium', CAST(N'2018-01-30 08:53:19.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Awaiting Feedba', N'High', CAST(N'2018-01-30 08:48:18.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mboese', N'In Progress', N'Low', CAST(N'2018-01-30 08:33:01.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-30 08:31:18.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Low', CAST(N'2018-01-30 08:06:12.000' AS DateTime), CAST(N'2018-01-30 08:06:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-30 07:59:47.000' AS DateTime), CAST(N'2018-01-30 09:24:33.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-30 07:02:57.000' AS DateTime), CAST(N'2018-01-30 07:10:30.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Medium', CAST(N'2018-01-29 20:45:56.000' AS DateTime), CAST(N'2018-01-31 09:53:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mboese', N'Closed', N'Medium', CAST(N'2018-01-29 19:56:01.000' AS DateTime), CAST(N'2018-01-30 08:56:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-29 16:35:42.000' AS DateTime), CAST(N'2018-01-30 08:19:59.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-29 15:32:23.000' AS DateTime), CAST(N'2018-01-30 07:36:30.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'Medium', CAST(N'2018-01-29 15:03:49.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Medium', CAST(N'2018-01-29 14:58:24.000' AS DateTime), CAST(N'2018-01-30 13:34:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-29 14:39:15.000' AS DateTime), CAST(N'2018-01-29 14:39:15.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Assigned', N'Low', CAST(N'2018-01-29 14:16:37.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-29 13:58:35.000' AS DateTime), CAST(N'2018-01-30 07:21:05.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'In Progress', N'Low', CAST(N'2018-01-29 13:31:11.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2018-01-29 13:24:38.000' AS DateTime), CAST(N'2018-01-29 15:53:50.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-29 13:18:58.000' AS DateTime), CAST(N'2018-01-29 13:31:27.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'High', CAST(N'2018-01-29 13:09:38.000' AS DateTime), CAST(N'2018-01-30 15:10:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'Low', CAST(N'2018-01-29 12:41:01.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-29 12:35:17.000' AS DateTime), CAST(N'2018-01-31 14:21:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Medium', CAST(N'2018-01-29 12:32:50.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Medium', CAST(N'2018-01-29 12:17:01.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Assigned', N'Low', CAST(N'2018-01-29 11:48:39.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jpeach', N'Closed', N'Medium', CAST(N'2018-01-29 11:12:38.000' AS DateTime), CAST(N'2018-01-29 11:12:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-29 10:48:05.000' AS DateTime), CAST(N'2018-01-29 10:48:06.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-29 10:44:03.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-29 10:34:12.000' AS DateTime), CAST(N'2018-01-30 08:04:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-29 10:20:26.000' AS DateTime), CAST(N'2018-01-31 08:13:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-29 10:00:56.000' AS DateTime), CAST(N'2018-01-30 12:50:05.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Awaiting Feedba', N'Medium', CAST(N'2018-01-29 09:57:17.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-29 09:39:31.000' AS DateTime), CAST(N'2018-01-29 09:39:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Medium', CAST(N'2018-01-29 09:27:11.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-29 09:23:36.000' AS DateTime), CAST(N'2018-01-29 10:03:49.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-29 09:01:00.000' AS DateTime), CAST(N'2018-01-30 11:10:33.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-29 08:41:53.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-29 08:41:33.000' AS DateTime), CAST(N'2018-02-01 09:07:22.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-29 08:40:32.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-29 08:31:26.000' AS DateTime), CAST(N'2018-01-29 08:34:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mboese', N'Closed', N'Medium', CAST(N'2018-01-29 08:11:48.000' AS DateTime), CAST(N'2018-01-31 08:13:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-29 08:00:25.000' AS DateTime), CAST(N'2018-01-31 10:44:29.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Assigned', N'High', CAST(N'2018-01-28 09:50:24.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-26 16:17:34.000' AS DateTime), CAST(N'2018-01-30 11:11:33.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Assigned', N'Low', CAST(N'2018-01-26 15:55:43.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'High', CAST(N'2018-01-26 15:52:00.000' AS DateTime), CAST(N'2018-01-29 14:57:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2018-01-26 15:47:24.000' AS DateTime), CAST(N'2018-02-01 16:37:33.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Assigned', N'Low', CAST(N'2018-01-26 15:47:24.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Assigned', N'Low', CAST(N'2018-01-26 14:38:49.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-26 13:23:29.000' AS DateTime), CAST(N'2018-01-29 21:55:57.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Assigned', N'Low', CAST(N'2018-01-26 12:56:15.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'Medium', CAST(N'2018-01-26 10:27:55.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'Medium', CAST(N'2018-01-26 10:20:44.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-26 10:05:27.000' AS DateTime), CAST(N'2018-01-26 10:05:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-26 08:11:25.000' AS DateTime), CAST(N'2018-01-26 08:59:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-26 08:11:25.000' AS DateTime), CAST(N'2018-01-31 09:24:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-25 17:10:54.000' AS DateTime), CAST(N'2018-02-05 14:14:23.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-25 16:18:58.000' AS DateTime), CAST(N'2018-01-26 10:23:33.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-25 16:14:27.000' AS DateTime), CAST(N'2018-01-25 16:35:41.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-25 15:16:41.000' AS DateTime), CAST(N'2018-01-25 15:54:03.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2018-01-25 15:02:41.000' AS DateTime), CAST(N'2018-01-25 15:02:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Medium', CAST(N'2018-01-25 13:49:27.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-25 13:10:10.000' AS DateTime), CAST(N'2018-01-25 13:52:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-25 12:39:05.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Assigned', N'Medium', CAST(N'2018-01-25 12:17:19.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2018-01-25 12:17:19.000' AS DateTime), CAST(N'2018-02-05 14:25:38.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Assigned', N'Medium', CAST(N'2018-01-25 12:17:19.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'On Hold', N'High', CAST(N'2018-01-25 11:31:11.000' AS DateTime), NULL, N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Assigned', N'Low', CAST(N'2018-01-25 11:23:17.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mboese', N'Closed', N'Low', CAST(N'2018-01-25 10:06:07.000' AS DateTime), CAST(N'2018-01-31 15:55:08.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Low', CAST(N'2018-01-25 09:37:56.000' AS DateTime), CAST(N'2018-01-26 07:40:41.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-25 09:26:04.000' AS DateTime), CAST(N'2018-01-26 08:37:24.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Low', CAST(N'2018-01-25 09:21:25.000' AS DateTime), CAST(N'2018-01-25 17:25:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Awaiting Feedba', N'High', CAST(N'2018-01-25 08:54:47.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2018-01-25 08:46:28.000' AS DateTime), CAST(N'2018-01-25 09:23:13.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-25 07:37:34.000' AS DateTime), CAST(N'2018-01-25 07:37:34.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Awaiting Feedba', N'Medium', CAST(N'2018-01-25 07:30:12.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Assigned', N'Low', CAST(N'2018-01-24 17:36:14.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-24 17:26:19.000' AS DateTime), CAST(N'2018-01-29 09:18:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-24 17:04:19.000' AS DateTime), CAST(N'2018-01-24 17:04:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2018-01-24 16:50:38.000' AS DateTime), CAST(N'2018-01-26 09:33:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'In Progress', N'Medium', CAST(N'2018-01-24 16:24:31.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-24 16:13:46.000' AS DateTime), CAST(N'2018-01-24 16:13:46.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Assigned', N'Low', CAST(N'2018-01-24 15:56:57.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-24 15:48:33.000' AS DateTime), CAST(N'2018-01-25 07:00:07.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Assigned', N'Medium', CAST(N'2018-01-24 15:36:54.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Assigned', N'Medium', CAST(N'2018-01-24 15:36:26.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Open', N'Low', CAST(N'2018-01-24 14:42:12.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'High', CAST(N'2018-01-24 11:59:52.000' AS DateTime), CAST(N'2018-01-29 10:02:50.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'High', CAST(N'2018-01-24 10:57:09.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'High', CAST(N'2018-01-24 10:47:11.000' AS DateTime), CAST(N'2018-01-24 15:46:50.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Assigned', N'Critical', CAST(N'2018-01-24 10:42:41.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'Low', CAST(N'2018-01-24 10:36:46.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-24 10:36:23.000' AS DateTime), CAST(N'2018-01-25 09:23:43.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Assigned', N'Medium', CAST(N'2018-01-24 10:31:47.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Assigned', N'Low', CAST(N'2018-01-24 10:22:17.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Medium', CAST(N'2018-01-24 09:45:45.000' AS DateTime), CAST(N'2018-01-24 11:26:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2018-01-24 09:41:44.000' AS DateTime), CAST(N'2018-01-25 16:29:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-24 09:25:12.000' AS DateTime), CAST(N'2018-01-24 09:25:59.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-24 08:38:44.000' AS DateTime), CAST(N'2018-01-24 09:09:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-24 07:51:14.000' AS DateTime), CAST(N'2018-01-24 09:26:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-23 17:32:04.000' AS DateTime), CAST(N'2018-02-01 13:53:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-23 17:06:04.000' AS DateTime), CAST(N'2018-01-24 13:21:57.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'High', CAST(N'2018-01-23 16:52:45.000' AS DateTime), CAST(N'2018-01-25 15:53:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Medium', CAST(N'2018-01-23 16:51:13.000' AS DateTime), CAST(N'2018-01-23 16:51:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'Medium', CAST(N'2018-01-23 15:47:31.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Medium', CAST(N'2018-01-23 15:30:17.000' AS DateTime), CAST(N'2018-01-25 08:30:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'High', CAST(N'2018-01-23 15:19:25.000' AS DateTime), CAST(N'2018-01-23 15:48:57.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-23 15:17:44.000' AS DateTime), CAST(N'2018-01-23 15:17:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mboese', N'Closed', N'Low', CAST(N'2018-01-23 15:10:15.000' AS DateTime), CAST(N'2018-02-05 15:17:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Medium', CAST(N'2018-01-23 15:08:36.000' AS DateTime), CAST(N'2018-01-23 15:08:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-23 14:56:28.000' AS DateTime), CAST(N'2018-01-25 16:25:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Assigned', N'High', CAST(N'2018-01-23 14:52:30.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-23 14:28:56.000' AS DateTime), CAST(N'2018-01-23 14:28:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Assigned', N'Low', CAST(N'2018-01-23 14:06:14.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2018-01-23 13:37:11.000' AS DateTime), CAST(N'2018-01-24 10:36:07.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2018-01-23 13:02:58.000' AS DateTime), CAST(N'2018-01-23 15:18:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Critical', CAST(N'2018-01-23 12:39:39.000' AS DateTime), CAST(N'2018-01-23 14:38:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-23 12:14:16.000' AS DateTime), CAST(N'2018-02-01 16:31:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-23 12:13:18.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2018-01-23 10:38:41.000' AS DateTime), CAST(N'2018-02-01 11:22:14.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-23 10:20:10.000' AS DateTime), CAST(N'2018-01-23 10:20:38.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Medium', CAST(N'2018-01-23 10:10:33.000' AS DateTime), CAST(N'2018-01-23 13:40:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-23 10:07:25.000' AS DateTime), CAST(N'2018-01-25 11:06:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mboese', N'Closed', N'Medium', CAST(N'2018-01-23 09:36:49.000' AS DateTime), CAST(N'2018-01-23 10:29:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-23 09:05:36.000' AS DateTime), CAST(N'2018-01-23 10:18:46.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-22 19:47:08.000' AS DateTime), CAST(N'2018-01-25 13:18:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'High', CAST(N'2018-01-22 19:21:32.000' AS DateTime), CAST(N'2018-01-23 14:50:23.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Assigned', N'Low', CAST(N'2018-01-22 18:18:37.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Medium', CAST(N'2018-01-22 18:02:03.000' AS DateTime), CAST(N'2018-01-22 18:02:03.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-22 17:04:10.000' AS DateTime), CAST(N'2018-01-23 15:49:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-22 15:09:34.000' AS DateTime), CAST(N'2018-01-23 10:36:33.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-22 15:05:18.000' AS DateTime), CAST(N'2018-01-22 15:05:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Awaiting Feedba', N'Low', CAST(N'2018-01-22 14:49:06.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Assigned', N'Low', CAST(N'2018-01-22 14:47:59.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Assigned', N'Medium', CAST(N'2018-01-22 14:38:26.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-22 14:20:57.000' AS DateTime), CAST(N'2018-01-29 13:59:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'Low', CAST(N'2018-01-22 13:39:35.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-22 13:36:15.000' AS DateTime), CAST(N'2018-01-31 09:28:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Medium', CAST(N'2018-01-22 12:25:31.000' AS DateTime), CAST(N'2018-01-23 13:26:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mboese', N'Closed', N'Low', CAST(N'2018-01-22 12:22:55.000' AS DateTime), CAST(N'2018-01-23 15:58:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-22 12:07:17.000' AS DateTime), CAST(N'2018-01-22 20:21:24.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2018-01-22 12:06:54.000' AS DateTime), CAST(N'2018-01-24 12:01:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-22 10:56:44.000' AS DateTime), CAST(N'2018-01-23 11:15:03.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2018-01-22 10:35:47.000' AS DateTime), CAST(N'2018-01-22 13:04:57.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Assigned', N'Low', CAST(N'2018-01-22 09:38:19.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2018-01-22 09:31:32.000' AS DateTime), CAST(N'2018-01-23 15:53:40.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mboese', N'Closed', N'Low', CAST(N'2018-01-22 09:27:07.000' AS DateTime), CAST(N'2018-01-27 13:14:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-22 08:48:05.000' AS DateTime), CAST(N'2018-01-22 09:03:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-22 08:33:42.000' AS DateTime), CAST(N'2018-01-24 11:40:14.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-22 08:01:34.000' AS DateTime), CAST(N'2018-01-22 08:02:00.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-22 07:24:54.000' AS DateTime), CAST(N'2018-01-31 11:19:55.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-22 07:01:41.000' AS DateTime), CAST(N'2018-01-22 08:14:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2018-01-21 16:59:52.000' AS DateTime), CAST(N'2018-01-22 16:37:00.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-21 16:59:51.000' AS DateTime), CAST(N'2018-01-24 09:53:05.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mboese', N'Closed', N'Medium', CAST(N'2018-01-20 15:51:17.000' AS DateTime), CAST(N'2018-01-22 09:33:07.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-19 23:22:20.000' AS DateTime), CAST(N'2018-01-22 09:32:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'In Progress', N'Medium', CAST(N'2018-01-19 20:39:03.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-19 17:15:21.000' AS DateTime), CAST(N'2018-01-24 16:16:37.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'In Progress', N'Medium', CAST(N'2018-01-19 16:30:24.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Awaiting Feedba', N'Low', CAST(N'2018-01-19 16:22:22.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'Low', CAST(N'2018-01-19 16:02:23.000' AS DateTime), CAST(N'2018-01-25 10:02:27.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Assigned', N'Low', CAST(N'2018-01-19 15:49:56.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Assigned', N'Low', CAST(N'2018-01-19 15:46:34.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-19 15:30:49.000' AS DateTime), CAST(N'2018-01-23 14:19:50.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Awaiting Feedba', N'Low', CAST(N'2018-01-19 15:02:11.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mboese', N'Closed', N'Low', CAST(N'2018-01-19 15:00:23.000' AS DateTime), CAST(N'2018-01-27 13:16:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-19 14:48:07.000' AS DateTime), CAST(N'2018-01-25 08:38:19.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-19 13:55:44.000' AS DateTime), CAST(N'2018-01-23 13:26:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-19 13:50:51.000' AS DateTime), CAST(N'2018-01-22 16:08:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-19 13:35:24.000' AS DateTime), CAST(N'2018-01-24 16:00:57.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-19 13:31:36.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-19 13:14:17.000' AS DateTime), CAST(N'2018-01-31 09:02:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'On Hold', N'Low', CAST(N'2018-01-19 11:34:47.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2018-01-19 10:27:47.000' AS DateTime), CAST(N'2018-01-19 11:18:07.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-19 10:27:45.000' AS DateTime), CAST(N'2018-01-19 13:27:42.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Critical', CAST(N'2018-01-19 09:44:14.000' AS DateTime), CAST(N'2018-01-19 13:54:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2018-01-19 09:09:29.000' AS DateTime), CAST(N'2018-01-23 10:35:58.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'Medium', CAST(N'2018-01-19 08:49:54.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-19 08:48:32.000' AS DateTime), CAST(N'2018-01-19 08:49:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-19 08:47:08.000' AS DateTime), CAST(N'2018-01-23 10:34:03.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-19 08:33:53.000' AS DateTime), CAST(N'2018-01-19 10:18:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-01-18 17:02:05.000' AS DateTime), CAST(N'2018-02-05 15:38:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2018-01-18 16:49:27.000' AS DateTime), CAST(N'2018-01-30 11:34:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Medium', CAST(N'2018-01-18 16:35:14.000' AS DateTime), CAST(N'2018-02-01 15:32:57.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2018-01-18 16:24:16.000' AS DateTime), CAST(N'2018-01-23 09:20:55.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-18 16:23:55.000' AS DateTime), CAST(N'2018-01-22 15:11:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Assigned', N'Low', CAST(N'2018-01-18 16:22:51.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-18 16:18:48.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-18 15:57:48.000' AS DateTime), CAST(N'2018-01-18 15:57:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-01-18 15:56:16.000' AS DateTime), CAST(N'2018-01-26 14:48:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Critical', CAST(N'2018-01-18 15:52:42.000' AS DateTime), CAST(N'2018-01-19 10:22:20.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-18 15:26:29.000' AS DateTime), CAST(N'2018-01-18 15:26:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Medium', CAST(N'2018-01-18 15:15:56.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Cancelled', N'Medium', CAST(N'2018-01-18 14:29:00.000' AS DateTime), CAST(N'2018-01-18 17:27:37.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Medium', CAST(N'2018-01-18 14:22:47.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-18 14:09:08.000' AS DateTime), CAST(N'2018-01-18 17:14:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-01-18 13:58:57.000' AS DateTime), CAST(N'2018-01-25 13:16:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Cancelled', N'Low', CAST(N'2018-01-18 13:25:06.000' AS DateTime), CAST(N'2018-01-22 08:09:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-18 12:35:56.000' AS DateTime), CAST(N'2018-01-18 12:35:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-18 12:32:37.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'High', CAST(N'2018-01-18 12:09:58.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2018-01-18 12:04:17.000' AS DateTime), CAST(N'2018-01-18 12:17:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2018-01-18 12:00:07.000' AS DateTime), CAST(N'2018-01-18 12:00:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-18 11:35:03.000' AS DateTime), CAST(N'2018-01-18 11:35:03.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-18 11:34:01.000' AS DateTime), CAST(N'2018-01-18 11:34:02.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'Low', CAST(N'2018-01-18 10:53:27.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-18 10:50:42.000' AS DateTime), CAST(N'2018-01-25 09:38:31.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'High', CAST(N'2018-01-18 10:43:57.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-18 10:28:09.000' AS DateTime), CAST(N'2018-01-18 10:35:05.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Medium', CAST(N'2018-01-18 10:06:36.000' AS DateTime), CAST(N'2018-01-22 14:56:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-18 09:56:24.000' AS DateTime), CAST(N'2018-02-05 16:40:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-18 09:53:56.000' AS DateTime), CAST(N'2018-01-22 14:28:16.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-18 09:52:59.000' AS DateTime), CAST(N'2018-01-18 10:38:17.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'Medium', CAST(N'2018-01-18 09:22:19.000' AS DateTime), CAST(N'2018-01-18 09:22:19.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'High', CAST(N'2018-01-18 09:15:33.000' AS DateTime), CAST(N'2018-01-18 09:18:02.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-18 09:13:07.000' AS DateTime), CAST(N'2018-01-25 16:22:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-18 08:37:54.000' AS DateTime), CAST(N'2018-01-18 09:13:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2018-01-18 07:51:23.000' AS DateTime), CAST(N'2018-01-22 13:40:43.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'On Hold', N'High', CAST(N'2018-01-18 07:43:34.000' AS DateTime), NULL, N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-18 07:17:08.000' AS DateTime), CAST(N'2018-01-22 14:25:15.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-17 18:53:52.000' AS DateTime), CAST(N'2018-01-17 18:53:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-01-17 17:19:39.000' AS DateTime), CAST(N'2018-01-26 15:14:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-17 17:02:42.000' AS DateTime), CAST(N'2018-01-22 13:21:39.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Medium', CAST(N'2018-01-17 15:58:19.000' AS DateTime), CAST(N'2018-01-17 17:06:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-17 15:26:04.000' AS DateTime), CAST(N'2018-01-18 08:35:23.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'Medium', CAST(N'2018-01-17 15:15:23.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-17 15:12:19.000' AS DateTime), CAST(N'2018-01-23 16:39:10.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-17 15:10:47.000' AS DateTime), CAST(N'2018-01-25 09:47:48.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Awaiting Feedba', N'Medium', CAST(N'2018-01-17 14:32:20.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-17 14:24:26.000' AS DateTime), CAST(N'2018-01-31 14:11:37.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Assigned', N'Medium', CAST(N'2018-01-17 14:05:50.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'Low', CAST(N'2018-01-17 13:43:08.000' AS DateTime), CAST(N'2018-01-18 09:13:07.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-17 13:12:36.000' AS DateTime), CAST(N'2018-01-22 13:41:45.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-17 13:01:03.000' AS DateTime), CAST(N'2018-01-17 13:49:35.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-17 12:50:11.000' AS DateTime), CAST(N'2018-01-17 12:50:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-17 12:46:38.000' AS DateTime), CAST(N'2018-01-17 17:05:46.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Assigned', N'Medium', CAST(N'2018-01-17 12:13:43.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Assigned', N'Medium', CAST(N'2018-01-17 12:13:43.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'On Hold', N'Medium', CAST(N'2018-01-17 12:13:42.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-17 11:37:19.000' AS DateTime), CAST(N'2018-01-17 11:37:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-17 11:36:13.000' AS DateTime), CAST(N'2018-01-17 11:36:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'High', CAST(N'2018-01-17 11:34:54.000' AS DateTime), CAST(N'2018-01-17 11:34:54.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-17 11:31:45.000' AS DateTime), CAST(N'2018-01-17 13:06:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Assigned', N'Medium', CAST(N'2018-01-17 10:49:11.000' AS DateTime), NULL, N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Low', CAST(N'2018-01-17 10:37:12.000' AS DateTime), CAST(N'2018-01-18 10:07:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-17 09:43:52.000' AS DateTime), CAST(N'2018-01-22 14:44:46.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-17 09:24:34.000' AS DateTime), CAST(N'2018-01-19 17:06:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Critical', CAST(N'2018-01-17 09:09:34.000' AS DateTime), CAST(N'2018-01-24 09:23:04.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-17 08:49:53.000' AS DateTime), CAST(N'2018-01-17 08:50:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2018-01-17 08:37:54.000' AS DateTime), CAST(N'2018-01-26 09:52:45.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-17 08:13:25.000' AS DateTime), CAST(N'2018-01-17 08:14:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2018-01-17 07:35:13.000' AS DateTime), CAST(N'2018-01-17 07:35:13.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Awaiting Feedba', N'Medium', CAST(N'2018-01-17 06:02:03.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-16 17:18:46.000' AS DateTime), CAST(N'2018-01-17 14:18:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-16 17:16:18.000' AS DateTime), CAST(N'2018-01-22 09:05:06.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-16 17:12:31.000' AS DateTime), CAST(N'2018-01-16 20:06:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-16 17:09:09.000' AS DateTime), CAST(N'2018-01-16 17:09:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-16 16:56:00.000' AS DateTime), CAST(N'2018-01-24 15:39:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-16 16:31:41.000' AS DateTime), CAST(N'2018-01-16 16:31:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2018-01-16 16:09:43.000' AS DateTime), CAST(N'2018-01-22 15:49:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Assigned', N'Medium', CAST(N'2018-01-16 15:47:16.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Assigned', N'Medium', CAST(N'2018-01-16 15:43:05.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-16 15:32:02.000' AS DateTime), CAST(N'2018-01-16 15:32:02.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Assigned', N'Low', CAST(N'2018-01-16 15:19:01.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'Low', CAST(N'2018-01-16 15:14:52.000' AS DateTime), CAST(N'2018-01-18 09:11:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-16 15:13:33.000' AS DateTime), CAST(N'2018-01-16 15:24:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-16 15:13:18.000' AS DateTime), CAST(N'2018-01-17 16:43:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'In Progress', N'Low', CAST(N'2018-01-16 15:12:41.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2018-01-16 14:58:36.000' AS DateTime), CAST(N'2018-01-19 11:15:18.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-16 14:55:12.000' AS DateTime), CAST(N'2018-01-16 14:55:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-16 14:37:12.000' AS DateTime), CAST(N'2018-01-23 15:18:59.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-16 14:29:42.000' AS DateTime), CAST(N'2018-01-22 14:44:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-16 14:14:50.000' AS DateTime), CAST(N'2018-01-22 07:51:47.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'High', CAST(N'2018-01-16 13:53:35.000' AS DateTime), CAST(N'2018-01-18 10:19:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2018-01-16 13:45:46.000' AS DateTime), CAST(N'2018-01-17 12:08:46.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Cancelled', N'Low', CAST(N'2018-01-16 13:18:04.000' AS DateTime), CAST(N'2018-01-17 14:42:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'High', CAST(N'2018-01-16 13:05:05.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2018-01-16 13:03:54.000' AS DateTime), CAST(N'2018-01-16 13:04:11.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-16 12:59:54.000' AS DateTime), CAST(N'2018-01-23 13:58:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-16 12:50:33.000' AS DateTime), CAST(N'2018-01-22 13:08:36.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-16 12:48:27.000' AS DateTime), CAST(N'2018-01-30 10:38:41.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Medium', CAST(N'2018-01-16 12:23:39.000' AS DateTime), CAST(N'2018-01-16 14:02:57.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-16 12:22:33.000' AS DateTime), CAST(N'2018-01-17 12:09:19.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-16 12:13:34.000' AS DateTime), CAST(N'2018-01-22 07:46:15.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-16 12:05:17.000' AS DateTime), CAST(N'2018-01-16 12:05:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-16 10:20:43.000' AS DateTime), CAST(N'2018-01-19 14:40:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-16 10:20:06.000' AS DateTime), CAST(N'2018-01-22 07:25:54.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2018-01-16 10:09:15.000' AS DateTime), CAST(N'2018-01-16 10:09:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-16 09:42:41.000' AS DateTime), CAST(N'2018-01-16 12:36:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-16 09:41:22.000' AS DateTime), CAST(N'2018-01-17 14:00:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2018-01-16 09:32:47.000' AS DateTime), CAST(N'2018-01-16 16:15:34.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-16 09:30:05.000' AS DateTime), CAST(N'2018-01-22 14:02:33.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Medium', CAST(N'2018-01-16 08:38:35.000' AS DateTime), CAST(N'2018-01-22 20:19:54.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Assigned', N'High', CAST(N'2018-01-16 08:33:43.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-16 07:28:34.000' AS DateTime), CAST(N'2018-01-16 09:35:59.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-15 18:44:57.000' AS DateTime), CAST(N'2018-02-01 08:47:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-12 23:23:46.000' AS DateTime), CAST(N'2018-01-16 09:58:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2018-01-12 15:16:32.000' AS DateTime), CAST(N'2018-01-23 16:29:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-12 15:06:18.000' AS DateTime), CAST(N'2018-01-17 15:33:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'High', CAST(N'2018-01-12 14:50:33.000' AS DateTime), CAST(N'2018-01-17 17:07:02.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-12 14:24:16.000' AS DateTime), CAST(N'2018-01-23 10:49:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'Medium', CAST(N'2018-01-12 14:19:04.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-12 14:01:55.000' AS DateTime), CAST(N'2018-01-12 14:01:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-12 11:55:48.000' AS DateTime), CAST(N'2018-01-22 10:52:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-12 11:51:44.000' AS DateTime), CAST(N'2018-01-31 17:08:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Medium', CAST(N'2018-01-12 11:38:30.000' AS DateTime), CAST(N'2018-01-30 13:02:13.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2018-01-12 11:08:13.000' AS DateTime), CAST(N'2018-01-12 23:40:04.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Assigned', N'Medium', CAST(N'2018-01-12 10:43:37.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Assigned', N'Medium', CAST(N'2018-01-12 10:24:58.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Assigned', N'Medium', CAST(N'2018-01-12 10:20:36.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'High', CAST(N'2018-01-12 10:17:33.000' AS DateTime), CAST(N'2018-01-12 10:31:36.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Assigned', N'Medium', CAST(N'2018-01-12 10:10:31.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-12 09:52:19.000' AS DateTime), CAST(N'2018-01-12 09:52:51.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-12 09:39:51.000' AS DateTime), CAST(N'2018-01-23 11:03:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'High', CAST(N'2018-01-12 09:23:30.000' AS DateTime), CAST(N'2018-01-12 16:44:46.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Medium', CAST(N'2018-01-12 08:22:19.000' AS DateTime), CAST(N'2018-01-12 16:46:28.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'High', CAST(N'2018-01-12 08:13:28.000' AS DateTime), CAST(N'2018-01-25 13:19:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-11 23:06:04.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-11 17:14:52.000' AS DateTime), CAST(N'2018-01-12 15:39:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2018-01-11 16:31:31.000' AS DateTime), CAST(N'2018-01-12 23:34:11.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Awaiting Feedba', N'Medium', CAST(N'2018-01-11 16:15:57.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Assigned', N'Low', CAST(N'2018-01-11 16:11:03.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-01-11 15:59:53.000' AS DateTime), CAST(N'2018-01-11 15:59:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-11 15:52:09.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-11 15:32:10.000' AS DateTime), CAST(N'2018-01-12 23:38:54.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-11 14:52:56.000' AS DateTime), CAST(N'2018-01-24 10:09:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-11 14:50:58.000' AS DateTime), CAST(N'2018-01-11 14:50:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 14:48:42.000' AS DateTime), CAST(N'2018-01-11 14:48:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-11 14:37:09.000' AS DateTime), CAST(N'2018-01-11 14:37:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-01-11 13:53:23.000' AS DateTime), CAST(N'2018-01-11 13:53:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2018-01-11 13:46:02.000' AS DateTime), CAST(N'2018-01-18 11:46:38.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2018-01-11 13:38:09.000' AS DateTime), CAST(N'2018-01-23 15:48:55.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Assigned', N'Low', CAST(N'2018-01-11 13:35:23.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-11 13:30:58.000' AS DateTime), CAST(N'2018-01-11 13:31:06.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Assigned', N'Low', CAST(N'2018-01-11 13:25:44.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-11 13:13:43.000' AS DateTime), CAST(N'2018-01-22 17:26:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-01-11 13:04:22.000' AS DateTime), CAST(N'2018-01-24 15:07:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Cancelled', N'Low', CAST(N'2018-01-11 13:00:14.000' AS DateTime), CAST(N'2018-01-12 10:38:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 12:46:44.000' AS DateTime), CAST(N'2018-01-11 12:46:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2018-01-11 12:09:16.000' AS DateTime), CAST(N'2018-02-05 12:09:21.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-11 11:56:50.000' AS DateTime), CAST(N'2018-01-16 13:56:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:55:01.000' AS DateTime), CAST(N'2018-01-11 11:55:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'High', CAST(N'2018-01-11 11:53:13.000' AS DateTime), CAST(N'2018-01-12 08:14:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Assigned', N'Low', CAST(N'2018-01-11 11:51:17.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Medium', CAST(N'2018-01-11 11:50:19.000' AS DateTime), CAST(N'2018-01-12 17:02:01.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:42:53.000' AS DateTime), CAST(N'2018-01-11 11:42:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:42:34.000' AS DateTime), CAST(N'2018-01-11 11:42:34.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:42:15.000' AS DateTime), CAST(N'2018-01-11 11:42:14.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:41:49.000' AS DateTime), CAST(N'2018-01-11 11:41:49.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:41:01.000' AS DateTime), CAST(N'2018-01-11 11:41:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:40:41.000' AS DateTime), CAST(N'2018-01-11 11:40:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:39:52.000' AS DateTime), CAST(N'2018-01-11 11:39:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:39:26.000' AS DateTime), CAST(N'2018-01-11 11:39:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:39:09.000' AS DateTime), CAST(N'2018-01-11 11:39:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:38:24.000' AS DateTime), CAST(N'2018-01-11 11:38:24.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:37:58.000' AS DateTime), CAST(N'2018-01-11 11:37:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:36:49.000' AS DateTime), CAST(N'2018-01-11 11:36:50.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:36:30.000' AS DateTime), CAST(N'2018-01-11 11:36:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:34:43.000' AS DateTime), CAST(N'2018-01-11 11:34:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 11:23:09.000' AS DateTime), CAST(N'2018-01-11 11:45:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-11 11:16:38.000' AS DateTime), CAST(N'2018-01-11 11:28:03.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-11 11:03:33.000' AS DateTime), CAST(N'2018-01-24 08:31:24.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'High', CAST(N'2018-01-11 10:58:31.000' AS DateTime), CAST(N'2018-01-11 17:15:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-01-11 10:44:56.000' AS DateTime), CAST(N'2018-01-11 10:44:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-11 10:40:02.000' AS DateTime), CAST(N'2018-01-11 11:17:00.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2018-01-11 10:36:13.000' AS DateTime), CAST(N'2018-01-22 12:13:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-01-11 10:31:39.000' AS DateTime), CAST(N'2018-01-11 12:41:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Assigned', N'Low', CAST(N'2018-01-11 10:30:02.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2018-01-11 10:28:30.000' AS DateTime), CAST(N'2018-01-11 11:17:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-11 10:27:10.000' AS DateTime), CAST(N'2018-01-23 11:18:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Medium', CAST(N'2018-01-11 10:26:24.000' AS DateTime), CAST(N'2018-01-16 15:56:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'Medium', CAST(N'2018-01-11 10:24:55.000' AS DateTime), CAST(N'2018-01-30 10:09:13.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Assigned', N'Medium', CAST(N'2018-01-11 10:22:27.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2018-01-11 10:15:14.000' AS DateTime), CAST(N'2018-01-25 09:39:29.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-11 09:59:47.000' AS DateTime), CAST(N'2018-01-24 12:59:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2018-01-11 09:49:30.000' AS DateTime), CAST(N'2018-01-17 14:22:37.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'leehon.tan', N'Closed', N'Medium', CAST(N'2018-01-11 09:34:04.000' AS DateTime), CAST(N'2018-01-17 07:22:34.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2018-01-11 09:28:45.000' AS DateTime), CAST(N'2018-01-11 14:44:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Medium', CAST(N'2018-01-11 09:24:53.000' AS DateTime), CAST(N'2018-01-11 17:33:49.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'Low', CAST(N'2018-01-11 09:22:29.000' AS DateTime), CAST(N'2018-01-12 15:21:20.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-11 09:19:07.000' AS DateTime), CAST(N'2018-01-11 09:24:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-01-11 08:56:08.000' AS DateTime), CAST(N'2018-01-11 08:56:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Awaiting Feedba', N'Medium', CAST(N'2018-01-11 08:54:31.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-11 08:45:16.000' AS DateTime), CAST(N'2018-01-11 08:52:35.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-11 08:43:19.000' AS DateTime), CAST(N'2018-01-16 14:21:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-01-11 08:36:29.000' AS DateTime), CAST(N'2018-01-11 08:36:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Low', CAST(N'2018-01-11 08:08:02.000' AS DateTime), CAST(N'2018-01-18 11:44:36.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-11 07:51:49.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'Low', CAST(N'2018-01-10 19:47:53.000' AS DateTime), CAST(N'2018-01-10 19:47:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-10 19:02:11.000' AS DateTime), CAST(N'2018-01-10 19:02:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-10 18:02:49.000' AS DateTime), CAST(N'2018-01-10 18:02:49.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-10 17:05:35.000' AS DateTime), CAST(N'2018-01-10 17:05:35.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2018-01-10 16:31:36.000' AS DateTime), CAST(N'2018-02-01 10:03:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'High', CAST(N'2018-01-10 16:19:40.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2018-01-10 15:49:59.000' AS DateTime), CAST(N'2018-01-12 12:36:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-10 15:47:50.000' AS DateTime), CAST(N'2018-01-11 08:08:05.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-10 15:42:15.000' AS DateTime), CAST(N'2018-01-10 15:42:15.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2018-01-10 14:50:24.000' AS DateTime), CAST(N'2018-01-17 15:36:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2018-01-10 14:35:42.000' AS DateTime), CAST(N'2018-01-12 23:39:31.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2018-01-10 14:34:15.000' AS DateTime), CAST(N'2018-01-11 11:53:23.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-10 14:23:52.000' AS DateTime), CAST(N'2018-01-22 14:29:45.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2018-01-10 14:18:05.000' AS DateTime), CAST(N'2018-01-10 15:21:34.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'High', CAST(N'2018-01-10 14:16:59.000' AS DateTime), CAST(N'2018-02-01 11:30:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scott.adams', N'Closed', N'Low', CAST(N'2018-01-10 13:39:40.000' AS DateTime), CAST(N'2018-01-24 08:32:50.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scott.adams', N'Closed', N'Low', CAST(N'2018-01-10 13:38:51.000' AS DateTime), CAST(N'2018-01-24 08:32:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scott.adams', N'Closed', N'Low', CAST(N'2018-01-10 13:37:59.000' AS DateTime), CAST(N'2018-01-24 08:31:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scott.adams', N'Closed', N'Low', CAST(N'2018-01-10 13:36:41.000' AS DateTime), CAST(N'2018-01-24 08:32:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scott.adams', N'Closed', N'Low', CAST(N'2018-01-10 13:35:51.000' AS DateTime), CAST(N'2018-01-24 08:31:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'Critical', CAST(N'2018-01-10 13:31:31.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2018-01-10 13:11:52.000' AS DateTime), CAST(N'2018-01-10 16:23:17.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'High', CAST(N'2018-01-10 13:10:56.000' AS DateTime), CAST(N'2018-01-10 20:16:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2018-01-10 13:03:47.000' AS DateTime), CAST(N'2018-01-22 14:24:50.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-01-10 12:54:01.000' AS DateTime), CAST(N'2018-01-26 15:14:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'Medium', CAST(N'2018-01-10 12:51:11.000' AS DateTime), CAST(N'2018-01-12 15:22:13.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2018-01-10 12:48:49.000' AS DateTime), CAST(N'2018-01-28 14:38:02.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2018-01-10 12:46:35.000' AS DateTime), CAST(N'2018-01-12 16:42:49.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2018-01-10 12:42:39.000' AS DateTime), CAST(N'2018-01-18 10:10:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'Low', CAST(N'2018-01-10 11:23:46.000' AS DateTime), CAST(N'2018-01-10 12:09:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Critical', CAST(N'2018-01-10 10:35:19.000' AS DateTime), CAST(N'2018-01-19 12:30:24.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-10 10:34:22.000' AS DateTime), CAST(N'2018-01-22 15:50:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Awaiting Feedba', N'Medium', CAST(N'2018-01-10 10:21:52.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-10 10:20:05.000' AS DateTime), CAST(N'2018-01-17 08:40:59.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-10 10:16:16.000' AS DateTime), CAST(N'2018-01-10 10:16:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-10 09:41:31.000' AS DateTime), CAST(N'2018-01-10 09:41:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'High', CAST(N'2018-01-10 09:36:12.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-10 08:36:50.000' AS DateTime), CAST(N'2018-01-10 12:15:46.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Critical', CAST(N'2018-01-10 08:19:18.000' AS DateTime), CAST(N'2018-01-11 15:26:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Low', CAST(N'2018-01-10 07:48:01.000' AS DateTime), CAST(N'2018-01-10 17:59:59.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2018-01-10 07:40:06.000' AS DateTime), CAST(N'2018-01-10 08:15:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-09 20:33:49.000' AS DateTime), CAST(N'2018-01-24 14:17:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2018-01-09 17:53:13.000' AS DateTime), CAST(N'2018-01-10 15:21:46.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Medium', CAST(N'2018-01-09 17:31:20.000' AS DateTime), CAST(N'2018-01-16 14:02:14.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mboese', N'Closed', N'Medium', CAST(N'2018-01-09 16:50:09.000' AS DateTime), CAST(N'2018-01-26 10:42:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'High', CAST(N'2018-01-09 16:37:40.000' AS DateTime), CAST(N'2018-01-10 14:36:23.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'Critical', CAST(N'2018-01-09 16:29:34.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Open', N'High', CAST(N'2018-01-09 16:18:10.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Critical', CAST(N'2018-01-09 16:09:57.000' AS DateTime), CAST(N'2018-01-30 12:23:41.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-09 15:36:02.000' AS DateTime), CAST(N'2018-01-09 15:36:02.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-09 15:26:40.000' AS DateTime), CAST(N'2018-01-10 17:05:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Assigned', N'Low', CAST(N'2018-01-09 14:49:14.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-09 14:43:32.000' AS DateTime), CAST(N'2018-01-25 12:42:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'High', CAST(N'2018-01-09 14:15:51.000' AS DateTime), CAST(N'2018-01-09 16:02:28.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2018-01-09 13:52:59.000' AS DateTime), CAST(N'2018-01-10 13:12:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Low', CAST(N'2018-01-09 13:42:41.000' AS DateTime), CAST(N'2018-01-16 16:50:03.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-09 13:41:32.000' AS DateTime), CAST(N'2018-01-09 16:44:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2018-01-09 13:19:46.000' AS DateTime), CAST(N'2018-01-12 12:39:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-09 12:56:35.000' AS DateTime), CAST(N'2018-01-09 12:56:35.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'In Progress', N'Critical', CAST(N'2018-01-09 11:58:15.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-09 11:53:26.000' AS DateTime), CAST(N'2018-01-09 11:53:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Critical', CAST(N'2018-01-09 11:51:58.000' AS DateTime), CAST(N'2018-01-10 16:57:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Critical', CAST(N'2018-01-09 11:43:20.000' AS DateTime), CAST(N'2018-01-10 16:57:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2018-01-09 11:33:40.000' AS DateTime), CAST(N'2018-01-30 10:55:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Critical', CAST(N'2018-01-09 11:23:04.000' AS DateTime), CAST(N'2018-01-10 10:16:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2018-01-09 11:17:41.000' AS DateTime), CAST(N'2018-01-09 14:03:14.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-09 10:38:30.000' AS DateTime), CAST(N'2018-01-31 11:30:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Cancelled', N'Medium', CAST(N'2018-01-09 10:37:13.000' AS DateTime), CAST(N'2018-01-16 10:00:53.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Medium', CAST(N'2018-01-09 10:35:40.000' AS DateTime), CAST(N'2018-01-09 11:40:51.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Assigned', N'Medium', CAST(N'2018-01-09 10:33:16.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-09 10:28:54.000' AS DateTime), CAST(N'2018-01-09 10:28:54.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2018-01-09 10:20:08.000' AS DateTime), CAST(N'2018-01-09 14:35:39.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-09 10:02:21.000' AS DateTime), CAST(N'2018-01-09 10:02:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2018-01-09 09:50:21.000' AS DateTime), CAST(N'2018-01-28 14:37:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Medium', CAST(N'2018-01-09 09:33:48.000' AS DateTime), CAST(N'2018-01-09 11:45:58.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2018-01-09 09:26:06.000' AS DateTime), CAST(N'2018-02-01 12:09:03.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Cancelled', N'High', CAST(N'2018-01-09 09:22:37.000' AS DateTime), CAST(N'2018-01-30 12:14:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-09 09:13:58.000' AS DateTime), CAST(N'2018-01-11 09:38:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-09 08:49:00.000' AS DateTime), CAST(N'2018-01-09 11:05:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-09 08:26:40.000' AS DateTime), CAST(N'2018-01-09 12:38:50.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-09 08:26:17.000' AS DateTime), CAST(N'2018-01-09 09:09:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Awaiting Feedba', N'Medium', CAST(N'2018-01-09 08:12:06.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-09 08:11:09.000' AS DateTime), CAST(N'2018-01-22 07:46:43.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-09 08:06:49.000' AS DateTime), CAST(N'2018-01-09 08:09:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Cancelled', N'Low', CAST(N'2018-01-09 07:28:36.000' AS DateTime), CAST(N'2018-01-09 08:11:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-08 19:37:43.000' AS DateTime), CAST(N'2018-01-08 19:37:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-08 17:54:39.000' AS DateTime), CAST(N'2018-01-08 17:54:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-08 17:46:50.000' AS DateTime), CAST(N'2018-01-09 17:13:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-08 16:34:45.000' AS DateTime), CAST(N'2018-01-08 16:34:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-08 16:28:00.000' AS DateTime), CAST(N'2018-01-12 13:29:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-08 16:24:11.000' AS DateTime), CAST(N'2018-01-11 08:35:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-08 15:38:40.000' AS DateTime), CAST(N'2018-01-08 17:39:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2018-01-08 15:33:21.000' AS DateTime), CAST(N'2018-01-08 17:57:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'High', CAST(N'2018-01-08 15:26:37.000' AS DateTime), CAST(N'2018-01-08 16:23:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'In Progress', N'Low', CAST(N'2018-01-08 15:09:45.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-08 15:01:08.000' AS DateTime), CAST(N'2018-01-08 15:12:11.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-08 14:39:04.000' AS DateTime), CAST(N'2018-01-08 15:10:10.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-08 14:21:17.000' AS DateTime), CAST(N'2018-01-08 14:21:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-08 14:14:15.000' AS DateTime), CAST(N'2018-01-08 14:14:15.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-08 14:11:10.000' AS DateTime), CAST(N'2018-01-08 14:27:41.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-08 13:46:16.000' AS DateTime), CAST(N'2018-01-08 13:46:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-08 13:38:26.000' AS DateTime), CAST(N'2018-01-11 08:36:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-08 12:47:32.000' AS DateTime), CAST(N'2018-01-08 12:47:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2018-01-08 12:25:57.000' AS DateTime), CAST(N'2018-01-09 15:20:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-08 12:11:51.000' AS DateTime), CAST(N'2018-01-08 12:11:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-08 12:10:35.000' AS DateTime), CAST(N'2018-01-08 12:53:29.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-08 12:00:25.000' AS DateTime), CAST(N'2018-01-08 12:00:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2018-01-08 11:50:37.000' AS DateTime), CAST(N'2018-01-08 11:50:37.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-08 11:50:17.000' AS DateTime), CAST(N'2018-01-08 11:50:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2018-01-08 11:42:04.000' AS DateTime), CAST(N'2018-01-08 11:42:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-08 11:35:52.000' AS DateTime), CAST(N'2018-01-08 11:35:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-08 11:32:30.000' AS DateTime), CAST(N'2018-01-08 11:32:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-08 11:19:54.000' AS DateTime), CAST(N'2018-01-10 08:36:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'High', CAST(N'2018-01-08 11:07:48.000' AS DateTime), CAST(N'2018-01-09 15:13:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-08 10:36:45.000' AS DateTime), CAST(N'2018-01-08 15:13:00.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2018-01-08 10:35:30.000' AS DateTime), CAST(N'2018-01-08 10:37:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-08 10:30:07.000' AS DateTime), CAST(N'2018-01-22 14:53:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Medium', CAST(N'2018-01-08 10:16:28.000' AS DateTime), CAST(N'2018-01-22 15:03:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Re-Open', N'High', CAST(N'2018-01-08 10:09:54.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-08 10:08:24.000' AS DateTime), CAST(N'2018-01-11 17:14:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Medium', CAST(N'2018-01-08 10:05:29.000' AS DateTime), CAST(N'2018-01-11 08:22:00.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-08 09:44:26.000' AS DateTime), CAST(N'2018-01-22 14:28:58.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Cancelled', N'Critical', CAST(N'2018-01-08 09:27:32.000' AS DateTime), CAST(N'2018-01-09 14:00:54.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'High', CAST(N'2018-01-08 09:00:45.000' AS DateTime), CAST(N'2018-01-18 11:34:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-08 08:56:43.000' AS DateTime), CAST(N'2018-01-09 15:15:06.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-08 08:33:14.000' AS DateTime), CAST(N'2018-01-08 09:34:04.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-08 08:29:45.000' AS DateTime), CAST(N'2018-01-08 08:39:24.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2018-01-08 08:25:15.000' AS DateTime), CAST(N'2018-01-22 19:11:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'High', CAST(N'2018-01-08 08:19:31.000' AS DateTime), CAST(N'2018-01-16 12:37:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Low', CAST(N'2018-01-08 08:05:14.000' AS DateTime), CAST(N'2018-01-12 12:37:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2018-01-08 07:55:06.000' AS DateTime), CAST(N'2018-01-08 07:55:06.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-07 17:54:47.000' AS DateTime), CAST(N'2018-01-08 07:42:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2018-01-06 15:13:37.000' AS DateTime), CAST(N'2018-01-08 10:56:04.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-05 21:52:53.000' AS DateTime), CAST(N'2018-01-08 07:54:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2018-01-05 17:46:01.000' AS DateTime), CAST(N'2018-01-08 12:52:46.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Critical', CAST(N'2018-01-05 15:39:31.000' AS DateTime), CAST(N'2018-01-08 15:14:29.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2018-01-05 15:15:20.000' AS DateTime), CAST(N'2018-01-08 17:17:50.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Closed', N'Low', CAST(N'2018-01-05 15:09:19.000' AS DateTime), CAST(N'2018-01-05 15:09:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-05 14:11:57.000' AS DateTime), CAST(N'2018-01-10 14:11:42.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-05 14:09:43.000' AS DateTime), CAST(N'2018-01-05 14:09:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2018-01-05 14:01:43.000' AS DateTime), CAST(N'2018-01-08 07:38:00.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-05 13:32:27.000' AS DateTime), CAST(N'2018-01-05 13:32:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Medium', CAST(N'2018-01-05 12:21:56.000' AS DateTime), CAST(N'2018-01-05 12:24:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-05 12:04:16.000' AS DateTime), CAST(N'2018-01-05 12:04:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-05 11:51:01.000' AS DateTime), CAST(N'2018-01-16 10:01:16.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'High', CAST(N'2018-01-05 11:37:53.000' AS DateTime), CAST(N'2018-01-28 14:34:37.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-05 11:08:32.000' AS DateTime), CAST(N'2018-01-05 11:08:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-05 10:54:57.000' AS DateTime), CAST(N'2018-01-09 09:44:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2018-01-05 10:48:25.000' AS DateTime), CAST(N'2018-01-05 11:46:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2018-01-05 10:47:12.000' AS DateTime), CAST(N'2018-01-05 11:46:57.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2018-01-05 10:46:08.000' AS DateTime), CAST(N'2018-01-05 11:47:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2018-01-05 10:36:22.000' AS DateTime), CAST(N'2018-01-09 09:47:45.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Medium', CAST(N'2018-01-05 10:27:12.000' AS DateTime), CAST(N'2018-01-19 17:00:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.aackerman', N'Closed', N'Low', CAST(N'2018-01-05 10:22:41.000' AS DateTime), CAST(N'2018-01-09 14:16:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-05 10:12:57.000' AS DateTime), CAST(N'2018-01-12 09:54:34.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-05 09:58:35.000' AS DateTime), CAST(N'2018-01-12 16:12:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Critical', CAST(N'2018-01-04 21:59:05.000' AS DateTime), CAST(N'2018-01-04 21:59:56.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'In Progress', N'Medium', CAST(N'2018-01-04 21:57:06.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Regulatory', CAST(N'2018-01-04 21:53:24.000' AS DateTime), CAST(N'2018-02-01 07:27:30.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'High', CAST(N'2018-01-04 19:59:54.000' AS DateTime), CAST(N'2018-01-05 12:09:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-04 16:24:39.000' AS DateTime), CAST(N'2018-01-04 16:24:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2018-01-04 16:09:27.000' AS DateTime), CAST(N'2018-01-05 16:52:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-04 16:08:39.000' AS DateTime), CAST(N'2018-01-16 15:09:00.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2018-01-04 15:23:42.000' AS DateTime), CAST(N'2018-01-04 16:36:52.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-04 15:23:24.000' AS DateTime), CAST(N'2018-01-05 09:58:59.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2018-01-04 14:47:03.000' AS DateTime), CAST(N'2018-01-05 09:58:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2018-01-04 14:21:31.000' AS DateTime), CAST(N'2018-01-08 09:54:06.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-04 14:11:34.000' AS DateTime), CAST(N'2018-01-05 12:28:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'High', CAST(N'2018-01-04 13:37:11.000' AS DateTime), CAST(N'2018-01-04 14:13:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'In Progress', N'Critical', CAST(N'2018-01-04 11:40:28.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-04 10:56:15.000' AS DateTime), CAST(N'2018-01-04 10:58:18.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Critical', CAST(N'2018-01-04 10:32:46.000' AS DateTime), CAST(N'2018-01-04 10:39:52.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2018-01-04 09:50:01.000' AS DateTime), CAST(N'2018-01-05 10:09:05.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Awaiting Feedba', N'High', CAST(N'2018-01-04 09:40:12.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2018-01-04 08:49:57.000' AS DateTime), CAST(N'2018-01-23 16:58:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'Medium', CAST(N'2018-01-04 08:47:45.000' AS DateTime), CAST(N'2018-01-04 08:49:18.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Medium', CAST(N'2018-01-04 08:35:46.000' AS DateTime), CAST(N'2018-01-11 08:22:54.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'Critical', CAST(N'2018-01-04 08:26:13.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Critical', CAST(N'2018-01-04 08:25:02.000' AS DateTime), CAST(N'2018-01-12 12:39:49.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Assigned', N'Medium', CAST(N'2018-01-04 08:23:36.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2018-01-03 16:31:28.000' AS DateTime), CAST(N'2018-01-04 08:18:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Critical', CAST(N'2018-01-03 15:46:23.000' AS DateTime), CAST(N'2018-02-01 08:17:03.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-03 14:46:40.000' AS DateTime), CAST(N'2018-01-03 14:46:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-03 14:40:00.000' AS DateTime), CAST(N'2018-01-03 14:40:00.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'High', CAST(N'2018-01-03 14:10:02.000' AS DateTime), CAST(N'2018-01-04 11:00:49.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2018-01-03 13:05:21.000' AS DateTime), CAST(N'2018-01-11 12:57:50.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-03 12:25:47.000' AS DateTime), CAST(N'2018-01-03 12:47:13.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Critical', CAST(N'2018-01-03 11:31:33.000' AS DateTime), CAST(N'2018-01-16 14:30:34.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-03 11:02:46.000' AS DateTime), CAST(N'2018-01-03 11:02:46.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2018-01-03 10:48:19.000' AS DateTime), CAST(N'2018-01-04 09:17:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-03 10:43:44.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-03 09:58:15.000' AS DateTime), CAST(N'2018-01-03 09:58:15.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'On Hold', N'Medium', CAST(N'2018-01-03 07:13:06.000' AS DateTime), NULL, N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'Medium', CAST(N'2018-01-02 17:01:49.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Open', N'High', CAST(N'2018-01-02 16:12:04.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-02 15:37:23.000' AS DateTime), CAST(N'2018-01-04 11:00:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2018-01-02 15:19:37.000' AS DateTime), CAST(N'2018-01-02 18:16:42.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2018-01-02 15:12:09.000' AS DateTime), CAST(N'2018-01-03 07:57:50.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-02 14:58:29.000' AS DateTime), CAST(N'2018-01-02 14:58:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2018-01-02 14:57:57.000' AS DateTime), CAST(N'2018-01-02 14:57:57.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2018-01-02 14:10:30.000' AS DateTime), CAST(N'2018-01-05 13:32:14.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2018-01-02 14:00:44.000' AS DateTime), CAST(N'2018-01-03 07:43:35.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Critical', CAST(N'2018-01-02 13:51:38.000' AS DateTime), CAST(N'2018-01-09 14:11:34.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2018-01-02 13:49:05.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-02 13:40:23.000' AS DateTime), CAST(N'2018-01-02 13:40:23.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2018-01-02 11:21:41.000' AS DateTime), CAST(N'2018-01-04 09:16:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2018-01-02 11:06:20.000' AS DateTime), CAST(N'2018-01-03 10:41:50.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Critical', CAST(N'2018-01-02 11:04:52.000' AS DateTime), CAST(N'2018-01-05 11:18:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Awaiting Feedba', N'Medium', CAST(N'2018-01-02 10:06:41.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-02 09:45:04.000' AS DateTime), CAST(N'2018-01-02 10:12:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2018-01-02 09:24:50.000' AS DateTime), CAST(N'2018-01-02 10:48:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2018-01-02 09:13:43.000' AS DateTime), CAST(N'2018-01-02 13:23:55.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2018-01-02 08:52:25.000' AS DateTime), CAST(N'2018-01-02 08:52:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-02 08:32:22.000' AS DateTime), CAST(N'2018-01-03 09:09:59.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2018-01-02 07:06:41.000' AS DateTime), CAST(N'2018-01-08 09:43:12.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-29 16:48:51.000' AS DateTime), CAST(N'2018-01-08 17:30:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Assigned', N'Medium', CAST(N'2017-12-29 15:29:50.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Low', CAST(N'2017-12-29 13:52:27.000' AS DateTime), CAST(N'2018-01-16 14:05:56.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Open', N'Medium', CAST(N'2017-12-29 13:36:58.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Critical', CAST(N'2017-12-29 12:56:36.000' AS DateTime), CAST(N'2018-01-04 15:54:18.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Medium', CAST(N'2017-12-29 11:45:25.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Critical', CAST(N'2017-12-29 11:43:50.000' AS DateTime), CAST(N'2018-01-23 12:06:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Medium', CAST(N'2017-12-29 11:25:33.000' AS DateTime), CAST(N'2018-01-04 16:21:49.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Medium', CAST(N'2017-12-29 11:13:19.000' AS DateTime), CAST(N'2017-12-29 11:13:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-12-29 11:10:45.000' AS DateTime), CAST(N'2017-12-29 11:10:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-12-29 11:07:18.000' AS DateTime), CAST(N'2017-12-29 11:07:18.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-29 11:05:30.000' AS DateTime), CAST(N'2018-01-12 12:40:49.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-29 10:47:20.000' AS DateTime), CAST(N'2018-01-09 15:11:29.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-12-29 09:44:22.000' AS DateTime), CAST(N'2018-01-04 16:38:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'Low', CAST(N'2017-12-29 09:13:24.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-28 17:01:28.000' AS DateTime), CAST(N'2018-01-04 16:38:32.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Critical', CAST(N'2017-12-28 16:30:38.000' AS DateTime), CAST(N'2018-01-16 12:39:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-28 16:10:10.000' AS DateTime), CAST(N'2017-12-28 16:11:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'On Hold', N'Low', CAST(N'2017-12-28 15:34:58.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Assigned', N'High', CAST(N'2017-12-28 15:13:15.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-28 14:53:02.000' AS DateTime), CAST(N'2017-12-29 10:05:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Low', CAST(N'2017-12-28 14:31:44.000' AS DateTime), CAST(N'2018-01-04 16:33:25.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Low', CAST(N'2017-12-28 14:31:44.000' AS DateTime), CAST(N'2018-01-10 17:58:45.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-28 14:31:43.000' AS DateTime), CAST(N'2018-01-12 12:56:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'leehon.tan', N'Closed', N'High', CAST(N'2017-12-28 13:17:53.000' AS DateTime), CAST(N'2018-01-09 14:13:22.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-28 13:10:12.000' AS DateTime), CAST(N'2018-01-08 17:31:15.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Cancelled', N'Medium', CAST(N'2017-12-28 12:14:38.000' AS DateTime), CAST(N'2017-12-28 14:29:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-12-28 11:07:04.000' AS DateTime), CAST(N'2018-01-03 13:31:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-28 11:06:22.000' AS DateTime), CAST(N'2018-01-12 12:55:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2017-12-28 09:53:25.000' AS DateTime), CAST(N'2018-01-22 08:08:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-28 09:37:30.000' AS DateTime), CAST(N'2017-12-28 15:18:03.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-28 09:36:24.000' AS DateTime), CAST(N'2017-12-28 09:43:48.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-28 09:17:33.000' AS DateTime), CAST(N'2017-12-29 10:03:34.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-28 08:24:03.000' AS DateTime), CAST(N'2018-01-24 12:50:27.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-12-28 08:23:39.000' AS DateTime), CAST(N'2018-01-03 13:32:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-27 19:06:53.000' AS DateTime), CAST(N'2017-12-28 15:18:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.wduarte', N'Cancelled', N'Low', CAST(N'2017-12-27 16:09:46.000' AS DateTime), CAST(N'2018-01-12 10:39:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-27 16:05:08.000' AS DateTime), CAST(N'2017-12-28 15:18:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Critical', CAST(N'2017-12-27 15:36:05.000' AS DateTime), CAST(N'2018-01-10 11:56:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Critical', CAST(N'2017-12-27 15:24:02.000' AS DateTime), CAST(N'2018-01-11 09:34:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Critical', CAST(N'2017-12-27 14:28:27.000' AS DateTime), CAST(N'2018-01-04 08:56:50.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Low', CAST(N'2017-12-27 13:57:15.000' AS DateTime), CAST(N'2018-01-02 15:47:27.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Medium', CAST(N'2017-12-27 13:42:22.000' AS DateTime), CAST(N'2018-01-12 12:54:59.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-27 13:33:13.000' AS DateTime), CAST(N'2017-12-27 13:33:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-27 12:33:01.000' AS DateTime), CAST(N'2017-12-27 12:34:44.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-12-27 12:15:20.000' AS DateTime), CAST(N'2018-01-04 16:36:19.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'High', CAST(N'2017-12-27 12:13:48.000' AS DateTime), CAST(N'2017-12-28 10:19:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Critical', CAST(N'2017-12-27 12:10:07.000' AS DateTime), CAST(N'2018-01-04 08:57:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Critical', CAST(N'2017-12-27 11:46:43.000' AS DateTime), CAST(N'2018-01-10 15:49:51.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2017-12-27 11:23:42.000' AS DateTime), CAST(N'2017-12-27 12:12:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2017-12-27 09:54:50.000' AS DateTime), CAST(N'2018-01-18 12:54:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-27 09:25:08.000' AS DateTime), CAST(N'2018-01-23 11:17:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-27 09:20:22.000' AS DateTime), CAST(N'2017-12-27 12:06:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Critical', CAST(N'2017-12-27 09:17:00.000' AS DateTime), CAST(N'2018-01-09 13:38:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Awaiting Feedba', N'Critical', CAST(N'2017-12-27 07:15:43.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-26 16:46:42.000' AS DateTime), CAST(N'2018-01-12 12:54:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-26 16:46:42.000' AS DateTime), CAST(N'2018-01-04 10:46:28.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-26 13:30:29.000' AS DateTime), CAST(N'2017-12-26 13:30:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-26 12:43:23.000' AS DateTime), CAST(N'2018-01-05 13:52:46.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-26 11:05:03.000' AS DateTime), CAST(N'2018-01-12 14:42:05.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2017-12-26 10:17:28.000' AS DateTime), CAST(N'2018-01-24 16:05:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-26 09:36:58.000' AS DateTime), CAST(N'2018-01-09 09:43:13.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Medium', CAST(N'2017-12-26 09:33:09.000' AS DateTime), CAST(N'2018-01-30 13:45:48.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-26 09:31:24.000' AS DateTime), CAST(N'2018-01-05 09:32:30.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'High', CAST(N'2017-12-26 08:45:30.000' AS DateTime), CAST(N'2017-12-27 08:11:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-12-26 08:36:04.000' AS DateTime), CAST(N'2018-01-16 10:22:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-12-26 08:30:56.000' AS DateTime), CAST(N'2017-12-27 08:42:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-12-26 08:29:23.000' AS DateTime), CAST(N'2018-01-09 16:18:14.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Critical', CAST(N'2017-12-24 07:34:44.000' AS DateTime), CAST(N'2018-01-19 12:33:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-22 13:40:17.000' AS DateTime), CAST(N'2017-12-26 13:08:49.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2017-12-22 12:16:35.000' AS DateTime), CAST(N'2018-01-11 11:00:24.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-22 12:00:38.000' AS DateTime), CAST(N'2017-12-26 13:06:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Medium', CAST(N'2017-12-22 11:18:15.000' AS DateTime), CAST(N'2018-01-22 14:34:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Assigned', N'Medium', CAST(N'2017-12-22 10:26:46.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2017-12-22 08:47:30.000' AS DateTime), CAST(N'2018-01-08 13:30:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Low', CAST(N'2017-12-22 08:33:37.000' AS DateTime), CAST(N'2018-02-05 10:38:21.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Critical', CAST(N'2017-12-22 08:19:26.000' AS DateTime), CAST(N'2018-01-09 15:07:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'In Progress', N'Critical', CAST(N'2017-12-22 08:03:24.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-21 21:40:50.000' AS DateTime), CAST(N'2017-12-22 09:20:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'In Progress', N'Low', CAST(N'2017-12-21 17:05:19.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-12-21 15:48:25.000' AS DateTime), CAST(N'2018-01-02 09:59:49.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-21 15:27:13.000' AS DateTime), CAST(N'2018-02-01 10:02:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-21 15:18:21.000' AS DateTime), CAST(N'2017-12-22 08:26:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2017-12-21 13:45:16.000' AS DateTime), CAST(N'2018-01-24 14:35:22.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Critical', CAST(N'2017-12-21 13:29:00.000' AS DateTime), CAST(N'2018-01-10 10:17:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-12-21 12:09:13.000' AS DateTime), CAST(N'2018-01-03 13:34:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-12-21 11:44:20.000' AS DateTime), CAST(N'2018-01-05 16:47:26.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-21 11:40:14.000' AS DateTime), CAST(N'2018-01-02 09:01:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-21 10:10:11.000' AS DateTime), CAST(N'2017-12-21 14:46:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Critical', CAST(N'2017-12-21 09:41:40.000' AS DateTime), CAST(N'2018-01-23 09:33:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Cancelled', N'Medium', CAST(N'2017-12-21 09:22:20.000' AS DateTime), CAST(N'2017-12-26 12:51:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-12-21 09:21:31.000' AS DateTime), CAST(N'2017-12-21 09:21:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2017-12-21 09:14:11.000' AS DateTime), CAST(N'2018-01-30 10:57:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Assigned', N'Critical', CAST(N'2017-12-21 09:03:49.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Medium', CAST(N'2017-12-21 09:02:56.000' AS DateTime), CAST(N'2018-01-08 08:22:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-21 08:34:34.000' AS DateTime), CAST(N'2017-12-21 09:26:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Awaiting Feedba', N'Low', CAST(N'2017-12-21 08:30:43.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Cancelled', N'Medium', CAST(N'2017-12-21 08:26:59.000' AS DateTime), CAST(N'2017-12-21 14:57:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Medium', CAST(N'2017-12-20 15:46:51.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2017-12-20 14:22:25.000' AS DateTime), CAST(N'2017-12-20 14:24:06.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Medium', CAST(N'2017-12-20 13:53:44.000' AS DateTime), CAST(N'2018-01-04 16:23:59.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-12-20 13:44:19.000' AS DateTime), CAST(N'2018-01-04 10:29:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-12-20 13:32:29.000' AS DateTime), CAST(N'2017-12-20 14:33:08.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-20 13:27:10.000' AS DateTime), CAST(N'2017-12-21 07:35:57.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-12-20 12:19:25.000' AS DateTime), CAST(N'2018-01-04 16:25:45.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-12-20 12:00:46.000' AS DateTime), CAST(N'2018-01-08 09:36:34.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2017-12-20 11:41:57.000' AS DateTime), CAST(N'2018-01-16 13:21:58.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-20 11:38:48.000' AS DateTime), CAST(N'2017-12-20 11:38:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-20 11:31:33.000' AS DateTime), CAST(N'2017-12-28 12:16:42.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-12-20 11:22:28.000' AS DateTime), CAST(N'2017-12-20 11:22:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-12-20 10:53:45.000' AS DateTime), CAST(N'2017-12-20 10:53:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-12-20 10:50:50.000' AS DateTime), CAST(N'2018-01-25 09:54:59.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'High', CAST(N'2017-12-20 10:47:46.000' AS DateTime), CAST(N'2018-01-08 16:49:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2017-12-20 10:29:15.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-20 10:10:55.000' AS DateTime), CAST(N'2017-12-21 10:00:48.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-20 09:54:50.000' AS DateTime), CAST(N'2018-01-04 16:58:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-20 09:47:10.000' AS DateTime), CAST(N'2018-01-05 10:47:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Assigned', N'Medium', CAST(N'2017-12-20 09:14:01.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2017-12-20 08:51:55.000' AS DateTime), CAST(N'2018-01-11 10:18:11.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-20 08:36:03.000' AS DateTime), CAST(N'2017-12-20 08:54:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2017-12-20 08:35:24.000' AS DateTime), CAST(N'2018-01-08 14:26:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Critical', CAST(N'2017-12-20 08:18:26.000' AS DateTime), CAST(N'2018-01-30 08:32:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-19 21:57:49.000' AS DateTime), CAST(N'2017-12-21 11:04:00.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-19 16:55:13.000' AS DateTime), CAST(N'2017-12-20 09:12:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2017-12-19 16:44:46.000' AS DateTime), CAST(N'2017-12-21 10:04:46.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-19 16:23:52.000' AS DateTime), CAST(N'2017-12-19 16:24:36.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-19 15:38:40.000' AS DateTime), CAST(N'2017-12-19 15:38:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Medium', CAST(N'2017-12-19 15:26:36.000' AS DateTime), CAST(N'2017-12-21 14:46:57.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'High', CAST(N'2017-12-19 15:10:35.000' AS DateTime), CAST(N'2018-01-02 09:46:18.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-12-19 14:39:04.000' AS DateTime), CAST(N'2018-01-04 15:13:46.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-12-19 12:51:49.000' AS DateTime), CAST(N'2017-12-19 16:03:05.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'In Progress', N'Critical', CAST(N'2017-12-19 12:18:26.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-12-19 10:40:49.000' AS DateTime), CAST(N'2018-01-31 09:42:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2017-12-19 10:32:42.000' AS DateTime), CAST(N'2018-01-16 12:50:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-12-19 10:14:30.000' AS DateTime), CAST(N'2017-12-19 10:19:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-19 10:09:36.000' AS DateTime), CAST(N'2017-12-19 10:09:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-19 08:47:56.000' AS DateTime), CAST(N'2017-12-19 08:54:00.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-12-19 08:22:52.000' AS DateTime), CAST(N'2017-12-19 08:22:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-19 08:17:34.000' AS DateTime), CAST(N'2017-12-19 11:03:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-19 07:38:26.000' AS DateTime), CAST(N'2017-12-19 09:04:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Medium', CAST(N'2017-12-19 07:21:09.000' AS DateTime), CAST(N'2018-01-18 09:23:14.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'Low', CAST(N'2017-12-18 16:45:15.000' AS DateTime), CAST(N'2018-01-22 09:19:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-18 16:40:32.000' AS DateTime), CAST(N'2017-12-19 17:02:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-12-18 16:39:02.000' AS DateTime), CAST(N'2018-01-02 08:44:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Assigned', N'Medium', CAST(N'2017-12-18 16:36:03.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-18 16:30:53.000' AS DateTime), CAST(N'2017-12-19 09:33:32.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-18 16:22:01.000' AS DateTime), CAST(N'2018-01-25 10:25:44.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-18 16:16:06.000' AS DateTime), CAST(N'2017-12-20 14:18:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-18 15:53:02.000' AS DateTime), CAST(N'2018-01-02 08:59:57.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-18 15:44:12.000' AS DateTime), CAST(N'2017-12-29 09:02:00.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2017-12-18 15:29:46.000' AS DateTime), CAST(N'2018-01-28 09:15:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-18 15:14:56.000' AS DateTime), CAST(N'2017-12-22 10:39:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-18 14:52:02.000' AS DateTime), CAST(N'2017-12-19 10:36:05.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-18 14:48:00.000' AS DateTime), CAST(N'2018-01-02 11:34:09.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-18 14:36:18.000' AS DateTime), CAST(N'2017-12-18 14:36:18.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-18 14:08:58.000' AS DateTime), CAST(N'2017-12-18 14:09:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Medium', CAST(N'2017-12-18 13:17:12.000' AS DateTime), CAST(N'2017-12-29 07:51:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-18 13:10:30.000' AS DateTime), CAST(N'2017-12-18 13:10:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-18 12:32:36.000' AS DateTime), CAST(N'2017-12-18 23:51:22.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-18 12:12:37.000' AS DateTime), CAST(N'2017-12-18 23:51:59.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-18 12:03:55.000' AS DateTime), CAST(N'2017-12-19 17:03:37.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-18 11:30:27.000' AS DateTime), CAST(N'2017-12-22 09:24:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'High', CAST(N'2017-12-18 11:28:53.000' AS DateTime), CAST(N'2018-01-08 13:44:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-18 11:22:18.000' AS DateTime), CAST(N'2017-12-18 11:25:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2017-12-18 11:21:43.000' AS DateTime), CAST(N'2017-12-18 11:59:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-18 11:20:53.000' AS DateTime), CAST(N'2017-12-19 10:29:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-18 11:17:29.000' AS DateTime), CAST(N'2017-12-19 10:14:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'High', CAST(N'2017-12-18 11:16:19.000' AS DateTime), CAST(N'2018-01-05 08:13:05.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-18 11:11:00.000' AS DateTime), CAST(N'2017-12-18 11:11:00.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-18 11:03:04.000' AS DateTime), CAST(N'2018-01-22 14:30:35.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Awaiting Feedba', N'High', CAST(N'2017-12-18 10:46:53.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-12-18 09:44:51.000' AS DateTime), CAST(N'2018-01-04 16:20:01.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-18 09:43:48.000' AS DateTime), CAST(N'2018-01-05 10:11:33.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'High', CAST(N'2017-12-18 09:09:52.000' AS DateTime), CAST(N'2017-12-19 10:13:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-18 09:06:25.000' AS DateTime), CAST(N'2017-12-18 09:06:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-12-18 08:56:19.000' AS DateTime), CAST(N'2018-01-04 11:56:32.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'High', CAST(N'2017-12-18 08:42:45.000' AS DateTime), CAST(N'2018-01-04 16:26:20.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Critical', CAST(N'2017-12-18 08:42:24.000' AS DateTime), CAST(N'2017-12-18 10:00:33.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-18 08:17:38.000' AS DateTime), CAST(N'2017-12-18 11:23:58.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-18 08:14:34.000' AS DateTime), CAST(N'2017-12-18 08:22:31.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-18 08:00:39.000' AS DateTime), CAST(N'2017-12-19 16:43:25.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-18 07:57:48.000' AS DateTime), CAST(N'2017-12-18 08:09:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-18 07:56:30.000' AS DateTime), CAST(N'2017-12-21 16:15:08.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-18 06:45:00.000' AS DateTime), CAST(N'2017-12-18 11:09:47.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Critical', CAST(N'2017-12-17 12:06:51.000' AS DateTime), CAST(N'2017-12-19 16:48:18.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'High', CAST(N'2017-12-16 14:55:11.000' AS DateTime), CAST(N'2018-01-10 17:55:14.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-15 16:44:32.000' AS DateTime), CAST(N'2017-12-15 16:44:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-12-15 16:22:00.000' AS DateTime), CAST(N'2017-12-19 10:01:59.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2017-12-15 15:59:55.000' AS DateTime), CAST(N'2017-12-19 17:03:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-15 15:31:35.000' AS DateTime), CAST(N'2017-12-15 15:40:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Assigned', N'Medium', CAST(N'2017-12-15 15:14:55.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2017-12-15 12:18:38.000' AS DateTime), CAST(N'2018-01-11 10:09:41.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-15 12:16:55.000' AS DateTime), CAST(N'2018-01-08 13:44:58.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-15 11:24:48.000' AS DateTime), CAST(N'2018-01-22 14:41:47.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2017-12-15 09:45:43.000' AS DateTime), CAST(N'2018-01-11 11:02:52.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-15 09:43:22.000' AS DateTime), CAST(N'2017-12-15 12:19:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-12-15 09:41:01.000' AS DateTime), CAST(N'2017-12-18 16:25:50.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-15 08:58:29.000' AS DateTime), CAST(N'2017-12-15 09:59:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-15 08:57:44.000' AS DateTime), CAST(N'2017-12-15 10:00:00.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-15 08:46:30.000' AS DateTime), CAST(N'2017-12-15 08:47:18.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2017-12-15 08:00:30.000' AS DateTime), CAST(N'2017-12-15 11:06:24.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-15 07:19:27.000' AS DateTime), CAST(N'2017-12-20 08:50:40.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-14 17:07:46.000' AS DateTime), CAST(N'2017-12-19 12:23:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2017-12-14 16:58:31.000' AS DateTime), CAST(N'2018-01-03 14:52:41.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-12-14 16:00:32.000' AS DateTime), CAST(N'2017-12-14 16:10:18.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-14 15:18:12.000' AS DateTime), CAST(N'2018-01-22 14:41:23.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-14 14:15:53.000' AS DateTime), CAST(N'2018-01-08 07:56:14.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2017-12-14 14:08:33.000' AS DateTime), CAST(N'2018-02-01 10:45:22.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-14 13:56:45.000' AS DateTime), CAST(N'2017-12-19 14:44:17.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-14 13:54:49.000' AS DateTime), CAST(N'2017-12-14 14:00:59.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Critical', CAST(N'2017-12-14 13:52:15.000' AS DateTime), CAST(N'2017-12-14 13:53:54.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Low', CAST(N'2017-12-14 11:44:04.000' AS DateTime), CAST(N'2018-01-16 12:32:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-14 10:40:32.000' AS DateTime), CAST(N'2017-12-19 13:06:26.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Low', CAST(N'2017-12-14 10:38:53.000' AS DateTime), CAST(N'2018-01-16 12:30:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-14 10:25:10.000' AS DateTime), CAST(N'2017-12-14 15:49:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'In Progress', N'Low', CAST(N'2017-12-14 09:47:55.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Medium', CAST(N'2017-12-14 09:20:26.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Low', CAST(N'2017-12-14 08:48:35.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-14 08:46:30.000' AS DateTime), CAST(N'2017-12-14 13:34:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'High', CAST(N'2017-12-14 07:10:04.000' AS DateTime), CAST(N'2017-12-18 11:21:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Assigned', N'Low', CAST(N'2017-12-14 06:22:01.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-14 05:21:49.000' AS DateTime), CAST(N'2017-12-19 10:11:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-12-13 16:29:46.000' AS DateTime), CAST(N'2017-12-14 11:59:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-13 15:55:37.000' AS DateTime), CAST(N'2017-12-14 08:05:19.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-13 15:55:35.000' AS DateTime), CAST(N'2017-12-14 14:22:37.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-13 15:50:07.000' AS DateTime), CAST(N'2017-12-13 15:50:07.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Medium', CAST(N'2017-12-13 15:08:10.000' AS DateTime), CAST(N'2018-01-11 10:19:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-13 14:27:08.000' AS DateTime), CAST(N'2017-12-13 15:48:35.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-13 14:18:13.000' AS DateTime), CAST(N'2017-12-20 08:59:23.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-12-13 14:14:35.000' AS DateTime), CAST(N'2017-12-15 15:52:51.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2017-12-13 13:57:16.000' AS DateTime), CAST(N'2017-12-13 13:57:15.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-13 13:55:17.000' AS DateTime), CAST(N'2017-12-20 14:23:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-13 13:41:01.000' AS DateTime), CAST(N'2017-12-14 12:15:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-13 12:39:59.000' AS DateTime), CAST(N'2017-12-19 15:52:34.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-13 12:36:09.000' AS DateTime), CAST(N'2017-12-13 12:38:33.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'On Hold', N'Low', CAST(N'2017-12-13 12:31:25.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Critical', CAST(N'2017-12-13 11:39:29.000' AS DateTime), CAST(N'2017-12-13 12:59:54.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-13 11:05:25.000' AS DateTime), CAST(N'2017-12-26 10:54:58.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-13 10:41:59.000' AS DateTime), CAST(N'2017-12-13 13:14:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-13 09:57:07.000' AS DateTime), CAST(N'2017-12-13 09:57:07.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-12-13 09:52:26.000' AS DateTime), CAST(N'2017-12-14 16:24:57.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-13 09:26:53.000' AS DateTime), CAST(N'2017-12-13 10:09:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-13 09:18:51.000' AS DateTime), CAST(N'2017-12-13 09:18:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-13 09:05:55.000' AS DateTime), CAST(N'2017-12-13 09:05:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-13 08:37:39.000' AS DateTime), CAST(N'2017-12-14 12:05:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-13 08:31:42.000' AS DateTime), CAST(N'2017-12-14 12:28:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-13 08:29:13.000' AS DateTime), CAST(N'2017-12-13 08:29:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Awaiting Feedba', N'Low', CAST(N'2017-12-13 08:09:16.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 16:11:31.000' AS DateTime), CAST(N'2018-01-08 11:13:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-12 16:03:17.000' AS DateTime), CAST(N'2017-12-12 16:03:17.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-12 15:54:29.000' AS DateTime), CAST(N'2017-12-12 15:54:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-12 15:49:05.000' AS DateTime), CAST(N'2017-12-15 10:00:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2017-12-12 15:28:56.000' AS DateTime), CAST(N'2017-12-14 17:52:40.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-12 15:24:08.000' AS DateTime), CAST(N'2017-12-15 08:06:57.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-12 15:20:48.000' AS DateTime), CAST(N'2017-12-12 15:20:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-12 15:18:47.000' AS DateTime), CAST(N'2017-12-20 14:21:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-12-12 14:54:29.000' AS DateTime), CAST(N'2017-12-21 16:30:09.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-12 14:06:19.000' AS DateTime), CAST(N'2018-01-26 10:32:32.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-12 13:16:52.000' AS DateTime), CAST(N'2017-12-12 13:16:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-12 12:26:40.000' AS DateTime), CAST(N'2017-12-19 10:00:22.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Medium', CAST(N'2017-12-12 12:18:15.000' AS DateTime), CAST(N'2017-12-13 15:13:21.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-12 12:08:12.000' AS DateTime), CAST(N'2018-01-22 14:32:35.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-12 11:39:28.000' AS DateTime), CAST(N'2017-12-14 10:11:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Medium', CAST(N'2017-12-12 11:38:36.000' AS DateTime), CAST(N'2017-12-12 13:13:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Medium', CAST(N'2017-12-12 11:37:52.000' AS DateTime), CAST(N'2017-12-12 13:13:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Medium', CAST(N'2017-12-12 11:36:44.000' AS DateTime), CAST(N'2017-12-12 13:13:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Medium', CAST(N'2017-12-12 11:34:15.000' AS DateTime), CAST(N'2017-12-12 13:13:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:13:37.000' AS DateTime), CAST(N'2017-12-12 11:13:37.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:13:28.000' AS DateTime), CAST(N'2017-12-12 11:13:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-12 11:13:02.000' AS DateTime), CAST(N'2017-12-12 11:13:02.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:05:39.000' AS DateTime), CAST(N'2017-12-12 11:05:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:05:31.000' AS DateTime), CAST(N'2017-12-12 11:05:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:05:21.000' AS DateTime), CAST(N'2017-12-12 11:05:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:05:13.000' AS DateTime), CAST(N'2017-12-12 11:05:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:05:04.000' AS DateTime), CAST(N'2017-12-12 11:05:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:04:55.000' AS DateTime), CAST(N'2017-12-12 11:04:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:04:46.000' AS DateTime), CAST(N'2017-12-12 11:04:46.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:04:37.000' AS DateTime), CAST(N'2017-12-12 11:04:37.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:04:29.000' AS DateTime), CAST(N'2017-12-12 11:04:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:04:19.000' AS DateTime), CAST(N'2017-12-12 11:04:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:04:10.000' AS DateTime), CAST(N'2017-12-12 11:04:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:04:01.000' AS DateTime), CAST(N'2017-12-12 11:04:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 11:03:45.000' AS DateTime), CAST(N'2017-12-12 11:03:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-12 11:00:39.000' AS DateTime), CAST(N'2017-12-21 07:41:04.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-12 10:38:14.000' AS DateTime), CAST(N'2017-12-12 11:49:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-12 10:32:09.000' AS DateTime), CAST(N'2017-12-14 07:46:28.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-12 10:20:49.000' AS DateTime), CAST(N'2017-12-12 10:20:49.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-12 10:19:02.000' AS DateTime), CAST(N'2017-12-12 10:28:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-12-12 10:17:33.000' AS DateTime), CAST(N'2017-12-14 08:40:40.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-12 10:14:31.000' AS DateTime), CAST(N'2017-12-12 10:14:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2017-12-12 09:54:10.000' AS DateTime), CAST(N'2018-01-10 15:16:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-12 09:51:52.000' AS DateTime), CAST(N'2018-01-11 12:47:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'jeff.hower', N'Closed', N'Low', CAST(N'2017-12-12 09:25:06.000' AS DateTime), CAST(N'2018-01-31 11:04:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-12 09:10:44.000' AS DateTime), CAST(N'2017-12-12 09:10:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-12 09:07:18.000' AS DateTime), CAST(N'2017-12-14 07:45:01.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'Low', CAST(N'2017-12-12 09:03:31.000' AS DateTime), CAST(N'2017-12-12 09:06:51.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-12 08:40:15.000' AS DateTime), CAST(N'2017-12-12 09:16:06.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-12 08:34:05.000' AS DateTime), CAST(N'2017-12-12 08:34:05.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Assigned', N'Low', CAST(N'2017-12-12 08:27:39.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-12 08:13:09.000' AS DateTime), CAST(N'2017-12-12 08:14:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-12 08:12:59.000' AS DateTime), CAST(N'2017-12-12 08:14:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-12-12 08:03:09.000' AS DateTime), CAST(N'2018-01-02 17:04:25.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2017-12-12 07:24:09.000' AS DateTime), CAST(N'2017-12-12 08:32:28.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Assigned', N'Medium', CAST(N'2017-12-11 17:08:51.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-11 16:17:51.000' AS DateTime), CAST(N'2017-12-11 16:17:51.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2017-12-11 15:56:06.000' AS DateTime), CAST(N'2018-01-16 10:02:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'High', CAST(N'2017-12-11 15:43:38.000' AS DateTime), CAST(N'2017-12-11 16:12:54.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-11 15:01:05.000' AS DateTime), CAST(N'2017-12-14 07:48:07.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-11 15:00:52.000' AS DateTime), CAST(N'2017-12-12 08:43:41.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-11 14:42:10.000' AS DateTime), CAST(N'2017-12-11 14:42:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Assigned', N'High', CAST(N'2017-12-11 13:44:09.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-12-11 13:17:59.000' AS DateTime), CAST(N'2017-12-11 15:19:30.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-11 12:17:53.000' AS DateTime), CAST(N'2017-12-11 12:17:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-11 11:50:08.000' AS DateTime), CAST(N'2018-01-23 12:37:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-11 11:37:44.000' AS DateTime), CAST(N'2017-12-11 11:37:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-11 11:04:03.000' AS DateTime), CAST(N'2017-12-11 13:26:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-11 10:34:20.000' AS DateTime), CAST(N'2017-12-11 13:25:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.gtan', N'Closed', N'Low', CAST(N'2017-12-11 10:15:12.000' AS DateTime), CAST(N'2018-02-02 15:58:22.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-11 09:28:22.000' AS DateTime), CAST(N'2017-12-11 10:03:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-11 09:17:54.000' AS DateTime), CAST(N'2017-12-14 09:02:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-11 09:09:47.000' AS DateTime), CAST(N'2017-12-11 09:09:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'In Progress', N'Low', CAST(N'2017-12-11 09:09:31.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-11 08:38:06.000' AS DateTime), CAST(N'2017-12-11 08:38:06.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-11 08:34:43.000' AS DateTime), CAST(N'2017-12-11 08:43:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'In Progress', N'Medium', CAST(N'2017-12-11 08:20:25.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Assigned', N'Low', CAST(N'2017-12-11 07:28:54.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'Low', CAST(N'2017-12-11 07:19:30.000' AS DateTime), CAST(N'2017-12-15 16:44:43.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'Low', CAST(N'2017-12-11 07:19:30.000' AS DateTime), CAST(N'2017-12-15 16:42:25.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-12-11 07:19:29.000' AS DateTime), CAST(N'2018-01-10 08:52:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-11 07:05:16.000' AS DateTime), CAST(N'2017-12-18 11:04:21.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-12-10 10:37:51.000' AS DateTime), CAST(N'2017-12-14 08:42:34.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-08 16:36:12.000' AS DateTime), CAST(N'2017-12-08 16:36:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-08 16:04:08.000' AS DateTime), CAST(N'2017-12-08 16:16:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-12-08 15:29:02.000' AS DateTime), CAST(N'2017-12-14 17:06:08.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-08 14:54:28.000' AS DateTime), CAST(N'2017-12-11 11:14:50.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2017-12-08 14:51:01.000' AS DateTime), CAST(N'2017-12-11 08:04:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-12-08 14:30:06.000' AS DateTime), CAST(N'2017-12-14 16:01:57.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Low', CAST(N'2017-12-08 13:52:14.000' AS DateTime), CAST(N'2017-12-08 14:12:15.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-08 13:41:23.000' AS DateTime), CAST(N'2017-12-08 14:31:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-08 12:29:32.000' AS DateTime), CAST(N'2017-12-08 12:30:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-08 11:04:36.000' AS DateTime), CAST(N'2017-12-11 08:09:10.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-08 11:03:42.000' AS DateTime), CAST(N'2017-12-11 08:09:35.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-08 10:48:34.000' AS DateTime), CAST(N'2017-12-08 15:30:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-08 10:16:27.000' AS DateTime), CAST(N'2017-12-08 11:16:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-08 09:53:14.000' AS DateTime), CAST(N'2017-12-08 16:01:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-08 09:44:44.000' AS DateTime), CAST(N'2017-12-14 15:25:16.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Assigned', N'Low', CAST(N'2017-12-08 09:35:15.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-08 09:19:43.000' AS DateTime), CAST(N'2017-12-08 09:46:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-12-08 09:14:47.000' AS DateTime), CAST(N'2017-12-08 09:28:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-08 09:10:20.000' AS DateTime), CAST(N'2017-12-11 16:49:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-12-08 09:06:08.000' AS DateTime), CAST(N'2017-12-08 15:21:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Critical', CAST(N'2017-12-08 08:06:41.000' AS DateTime), CAST(N'2017-12-08 15:13:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-08 07:34:50.000' AS DateTime), CAST(N'2017-12-21 07:38:46.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Critical', CAST(N'2017-12-07 16:22:20.000' AS DateTime), CAST(N'2018-01-11 13:50:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-07 15:55:10.000' AS DateTime), CAST(N'2017-12-11 08:04:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-12-07 15:20:18.000' AS DateTime), CAST(N'2017-12-07 15:54:34.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-07 15:08:56.000' AS DateTime), CAST(N'2017-12-11 14:26:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-07 14:06:28.000' AS DateTime), CAST(N'2017-12-07 14:31:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-07 13:30:50.000' AS DateTime), CAST(N'2017-12-15 10:23:00.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-07 12:59:12.000' AS DateTime), CAST(N'2017-12-11 13:28:27.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'In Progress', N'High', CAST(N'2017-12-07 12:57:31.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Awaiting Feedba', N'High', CAST(N'2017-12-07 12:53:27.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-07 12:05:13.000' AS DateTime), CAST(N'2017-12-08 09:15:59.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-12-07 11:45:13.000' AS DateTime), CAST(N'2017-12-07 11:47:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-07 11:38:18.000' AS DateTime), CAST(N'2017-12-12 15:48:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-07 11:38:18.000' AS DateTime), CAST(N'2017-12-12 15:47:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-12-07 11:30:43.000' AS DateTime), CAST(N'2017-12-07 15:44:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-07 10:55:36.000' AS DateTime), CAST(N'2017-12-12 13:35:19.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2017-12-07 10:17:20.000' AS DateTime), CAST(N'2017-12-18 12:48:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2017-12-07 09:55:53.000' AS DateTime), CAST(N'2018-01-28 14:31:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-12-07 09:48:56.000' AS DateTime), CAST(N'2017-12-07 10:53:23.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-12-07 09:31:15.000' AS DateTime), CAST(N'2017-12-14 16:12:03.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-07 08:49:26.000' AS DateTime), CAST(N'2017-12-11 09:42:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-12-07 08:31:10.000' AS DateTime), CAST(N'2017-12-08 16:14:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-07 08:30:11.000' AS DateTime), CAST(N'2017-12-15 10:01:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-06 17:15:44.000' AS DateTime), CAST(N'2018-01-08 11:07:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-06 17:14:56.000' AS DateTime), CAST(N'2018-01-29 13:56:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-06 16:34:48.000' AS DateTime), CAST(N'2017-12-07 14:31:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-06 15:03:20.000' AS DateTime), CAST(N'2017-12-06 15:03:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-12-06 14:41:43.000' AS DateTime), CAST(N'2018-01-08 15:17:51.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-12-06 14:40:22.000' AS DateTime), CAST(N'2017-12-07 15:45:37.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-06 14:10:07.000' AS DateTime), CAST(N'2017-12-06 14:10:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-06 13:57:46.000' AS DateTime), CAST(N'2017-12-06 14:02:22.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-06 13:52:50.000' AS DateTime), CAST(N'2017-12-11 11:15:18.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Medium', CAST(N'2017-12-06 13:26:07.000' AS DateTime), CAST(N'2017-12-12 08:14:35.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-12-06 13:24:29.000' AS DateTime), CAST(N'2018-01-08 14:07:49.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-12-06 13:17:30.000' AS DateTime), CAST(N'2017-12-07 17:23:30.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-06 13:15:25.000' AS DateTime), CAST(N'2017-12-06 13:51:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-06 12:01:47.000' AS DateTime), CAST(N'2017-12-06 12:34:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2017-12-06 11:55:52.000' AS DateTime), CAST(N'2018-01-03 13:00:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'High', CAST(N'2017-12-06 11:24:21.000' AS DateTime), CAST(N'2017-12-12 09:34:22.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-06 11:08:59.000' AS DateTime), CAST(N'2017-12-06 11:52:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-06 11:08:43.000' AS DateTime), CAST(N'2017-12-06 14:26:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-06 11:07:41.000' AS DateTime), CAST(N'2017-12-06 13:09:00.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-06 10:57:15.000' AS DateTime), CAST(N'2017-12-11 09:42:22.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-06 10:28:13.000' AS DateTime), CAST(N'2017-12-08 15:53:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-06 10:18:16.000' AS DateTime), CAST(N'2017-12-14 16:19:36.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-06 10:01:01.000' AS DateTime), CAST(N'2017-12-06 12:35:49.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'High', CAST(N'2017-12-06 09:49:04.000' AS DateTime), CAST(N'2017-12-07 09:48:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Awaiting Feedba', N'Low', CAST(N'2017-12-06 09:27:38.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-12-06 08:31:52.000' AS DateTime), CAST(N'2017-12-08 16:12:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-06 08:30:47.000' AS DateTime), CAST(N'2017-12-07 09:34:19.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'High', CAST(N'2017-12-06 08:09:19.000' AS DateTime), CAST(N'2017-12-07 15:48:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Cancelled', N'High', CAST(N'2017-12-06 07:18:11.000' AS DateTime), CAST(N'2017-12-07 14:51:37.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-12-05 16:36:10.000' AS DateTime), CAST(N'2017-12-19 15:56:13.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'Medium', CAST(N'2017-12-05 16:11:57.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2017-12-05 16:01:30.000' AS DateTime), CAST(N'2017-12-05 16:12:15.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-05 16:01:25.000' AS DateTime), CAST(N'2017-12-05 16:33:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Medium', CAST(N'2017-12-05 14:47:48.000' AS DateTime), CAST(N'2017-12-15 16:01:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2017-12-05 14:46:49.000' AS DateTime), CAST(N'2018-01-08 10:57:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-05 14:22:26.000' AS DateTime), CAST(N'2017-12-08 10:31:25.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-12-05 14:19:52.000' AS DateTime), CAST(N'2017-12-08 10:31:15.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-05 13:23:59.000' AS DateTime), CAST(N'2017-12-05 14:13:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-05 13:15:59.000' AS DateTime), CAST(N'2018-01-09 14:01:23.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-05 12:10:21.000' AS DateTime), CAST(N'2017-12-05 12:19:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2017-12-05 12:06:11.000' AS DateTime), CAST(N'2017-12-05 12:20:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-05 12:06:11.000' AS DateTime), CAST(N'2017-12-26 12:46:35.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2017-12-05 12:04:56.000' AS DateTime), CAST(N'2017-12-05 12:20:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-12-05 12:04:56.000' AS DateTime), CAST(N'2017-12-27 12:07:06.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-05 12:02:06.000' AS DateTime), CAST(N'2017-12-05 12:02:06.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-12-05 11:45:20.000' AS DateTime), CAST(N'2017-12-07 08:54:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'Low', CAST(N'2017-12-05 11:45:20.000' AS DateTime), CAST(N'2017-12-07 15:55:31.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-12-05 11:45:20.000' AS DateTime), CAST(N'2018-01-10 08:51:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-05 11:41:32.000' AS DateTime), CAST(N'2017-12-05 13:01:54.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-05 11:37:49.000' AS DateTime), CAST(N'2017-12-12 08:55:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-05 11:32:56.000' AS DateTime), CAST(N'2017-12-05 13:03:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-12-05 11:17:07.000' AS DateTime), CAST(N'2017-12-05 13:27:19.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-05 11:13:00.000' AS DateTime), CAST(N'2017-12-06 11:00:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Cancelled', N'Medium', CAST(N'2017-12-05 11:06:21.000' AS DateTime), CAST(N'2017-12-05 13:15:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-12-05 11:06:20.000' AS DateTime), CAST(N'2017-12-27 12:06:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-05 11:00:03.000' AS DateTime), CAST(N'2018-01-10 12:05:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'In Progress', N'Low', CAST(N'2017-12-05 10:56:31.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-12-05 10:54:31.000' AS DateTime), CAST(N'2017-12-07 15:20:32.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-05 10:37:25.000' AS DateTime), CAST(N'2017-12-14 16:03:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'High', CAST(N'2017-12-05 10:23:59.000' AS DateTime), CAST(N'2018-01-15 21:36:15.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-05 10:23:00.000' AS DateTime), CAST(N'2017-12-05 10:58:18.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Medium', CAST(N'2017-12-05 10:15:03.000' AS DateTime), CAST(N'2018-01-24 10:16:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-05 10:07:15.000' AS DateTime), CAST(N'2017-12-05 11:21:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-12-05 09:25:04.000' AS DateTime), CAST(N'2017-12-05 09:30:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Cancelled', N'Low', CAST(N'2017-12-05 09:15:20.000' AS DateTime), CAST(N'2017-12-07 11:50:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'On Hold', N'Medium', CAST(N'2017-12-05 09:00:22.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Cancelled', N'Low', CAST(N'2017-12-05 08:08:50.000' AS DateTime), CAST(N'2017-12-13 08:41:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'Low', CAST(N'2017-12-05 07:56:28.000' AS DateTime), CAST(N'2017-12-05 08:15:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Medium', CAST(N'2017-12-04 16:51:04.000' AS DateTime), CAST(N'2018-01-28 14:30:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'Low', CAST(N'2017-12-04 15:48:11.000' AS DateTime), CAST(N'2017-12-05 08:10:22.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-04 15:45:05.000' AS DateTime), CAST(N'2017-12-04 15:45:05.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-12-04 15:22:06.000' AS DateTime), CAST(N'2017-12-15 23:53:02.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-12-04 14:45:01.000' AS DateTime), CAST(N'2018-01-24 15:38:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Critical', CAST(N'2017-12-04 14:36:33.000' AS DateTime), CAST(N'2018-01-04 08:29:30.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-04 14:25:50.000' AS DateTime), CAST(N'2017-12-06 12:36:46.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-04 13:55:14.000' AS DateTime), CAST(N'2017-12-05 12:34:01.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2017-12-04 13:14:16.000' AS DateTime), CAST(N'2018-01-28 14:30:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2017-12-04 13:02:01.000' AS DateTime), CAST(N'2017-12-07 15:56:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'High', CAST(N'2017-12-04 12:59:58.000' AS DateTime), CAST(N'2017-12-13 08:42:46.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-04 12:54:54.000' AS DateTime), CAST(N'2018-01-30 10:05:06.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-12-04 12:43:20.000' AS DateTime), CAST(N'2017-12-06 12:53:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-12-04 12:07:24.000' AS DateTime), CAST(N'2017-12-06 13:07:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-04 11:45:50.000' AS DateTime), CAST(N'2017-12-04 11:45:49.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Critical', CAST(N'2017-12-04 11:17:39.000' AS DateTime), CAST(N'2018-01-04 08:33:31.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-04 10:38:43.000' AS DateTime), CAST(N'2017-12-21 07:38:11.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-04 10:31:07.000' AS DateTime), CAST(N'2017-12-04 10:38:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-04 10:04:49.000' AS DateTime), CAST(N'2017-12-11 08:03:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-04 09:58:00.000' AS DateTime), CAST(N'2017-12-13 16:04:43.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-04 09:43:12.000' AS DateTime), CAST(N'2017-12-11 08:11:32.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-04 09:37:23.000' AS DateTime), CAST(N'2017-12-04 11:46:18.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-04 09:26:29.000' AS DateTime), CAST(N'2017-12-04 09:41:27.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-12-04 09:12:15.000' AS DateTime), CAST(N'2018-01-25 13:37:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-12-04 09:07:39.000' AS DateTime), CAST(N'2017-12-15 16:43:56.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-12-04 09:07:39.000' AS DateTime), CAST(N'2017-12-07 15:57:22.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-12-04 09:07:39.000' AS DateTime), CAST(N'2018-01-10 08:50:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-04 08:16:55.000' AS DateTime), CAST(N'2017-12-04 09:41:06.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2017-12-04 08:09:39.000' AS DateTime), CAST(N'2017-12-04 12:04:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-04 08:08:05.000' AS DateTime), CAST(N'2017-12-04 08:37:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Cancelled', N'Low', CAST(N'2017-12-02 18:46:30.000' AS DateTime), CAST(N'2017-12-08 08:04:23.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2017-12-02 13:58:17.000' AS DateTime), CAST(N'2017-12-06 13:07:34.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-01 16:44:20.000' AS DateTime), CAST(N'2017-12-01 16:44:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Medium', CAST(N'2017-12-01 16:18:50.000' AS DateTime), CAST(N'2018-01-02 13:22:11.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-01 16:02:27.000' AS DateTime), CAST(N'2017-12-04 09:31:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-01 16:01:21.000' AS DateTime), CAST(N'2017-12-01 16:01:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-01 15:51:56.000' AS DateTime), CAST(N'2017-12-01 15:51:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-01 14:49:36.000' AS DateTime), CAST(N'2017-12-01 14:49:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-01 14:48:52.000' AS DateTime), CAST(N'2017-12-01 14:48:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-12-01 14:47:49.000' AS DateTime), CAST(N'2017-12-04 11:18:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Low', CAST(N'2017-12-01 13:53:31.000' AS DateTime), CAST(N'2018-01-26 07:51:05.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-12-01 12:17:41.000' AS DateTime), CAST(N'2017-12-01 12:17:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Medium', CAST(N'2017-12-01 12:09:57.000' AS DateTime), CAST(N'2017-12-01 14:06:16.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Assigned', N'Medium', CAST(N'2017-12-01 10:40:21.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Medium', CAST(N'2017-12-01 10:31:44.000' AS DateTime), CAST(N'2018-01-30 17:48:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2017-12-01 10:08:37.000' AS DateTime), CAST(N'2017-12-05 09:05:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-12-01 10:04:47.000' AS DateTime), CAST(N'2017-12-01 13:03:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'High', CAST(N'2017-12-01 09:47:09.000' AS DateTime), CAST(N'2017-12-12 09:42:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Medium', CAST(N'2017-12-01 09:06:06.000' AS DateTime), CAST(N'2017-12-07 15:55:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2017-12-01 08:49:23.000' AS DateTime), CAST(N'2017-12-11 09:42:50.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-12-01 08:39:06.000' AS DateTime), CAST(N'2017-12-01 08:39:06.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-12-01 08:33:46.000' AS DateTime), CAST(N'2017-12-04 08:01:47.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-12-01 06:49:49.000' AS DateTime), CAST(N'2017-12-08 15:33:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-11-30 17:38:00.000' AS DateTime), CAST(N'2018-01-02 22:15:55.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-30 17:35:51.000' AS DateTime), CAST(N'2017-12-01 13:32:34.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'High', CAST(N'2017-11-30 14:21:34.000' AS DateTime), CAST(N'2018-01-15 21:22:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2017-11-30 12:53:32.000' AS DateTime), CAST(N'2017-12-07 07:20:24.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Medium', CAST(N'2017-11-30 12:00:46.000' AS DateTime), CAST(N'2017-11-30 20:28:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2017-11-30 11:55:21.000' AS DateTime), CAST(N'2017-11-30 17:29:36.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-30 10:49:21.000' AS DateTime), CAST(N'2017-11-30 17:29:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-30 10:47:28.000' AS DateTime), CAST(N'2017-11-30 10:47:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Low', CAST(N'2017-11-30 10:36:45.000' AS DateTime), CAST(N'2017-12-13 13:07:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-11-30 10:35:07.000' AS DateTime), CAST(N'2017-12-13 13:07:59.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-30 10:14:57.000' AS DateTime), CAST(N'2017-11-30 10:17:02.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-30 09:59:56.000' AS DateTime), CAST(N'2017-11-30 10:00:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Cancelled', N'Low', CAST(N'2017-11-29 18:41:50.000' AS DateTime), CAST(N'2017-12-04 14:36:18.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-29 16:24:08.000' AS DateTime), CAST(N'2018-01-23 12:19:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-29 14:42:46.000' AS DateTime), CAST(N'2017-11-29 14:42:46.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-29 14:28:31.000' AS DateTime), CAST(N'2017-12-04 08:16:04.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-29 13:19:36.000' AS DateTime), CAST(N'2017-12-04 14:25:41.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-29 11:45:14.000' AS DateTime), CAST(N'2017-12-01 11:28:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-11-29 11:35:55.000' AS DateTime), CAST(N'2017-12-07 08:57:36.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-29 11:14:28.000' AS DateTime), CAST(N'2017-12-01 11:27:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-29 11:03:01.000' AS DateTime), CAST(N'2017-11-29 14:25:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-29 10:35:47.000' AS DateTime), CAST(N'2017-12-12 09:00:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2017-11-29 10:35:39.000' AS DateTime), CAST(N'2017-11-29 13:43:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-29 10:20:11.000' AS DateTime), CAST(N'2017-12-04 15:37:22.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-11-29 09:17:06.000' AS DateTime), CAST(N'2017-12-28 12:17:50.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-28 20:13:29.000' AS DateTime), CAST(N'2017-11-30 14:29:50.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-28 18:58:23.000' AS DateTime), CAST(N'2017-11-30 11:04:03.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-11-28 18:28:41.000' AS DateTime), CAST(N'2017-12-01 14:12:07.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-28 18:26:06.000' AS DateTime), CAST(N'2017-11-29 13:26:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-28 17:51:19.000' AS DateTime), CAST(N'2017-12-04 14:50:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-11-28 17:44:14.000' AS DateTime), CAST(N'2017-12-19 16:15:01.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-28 17:35:07.000' AS DateTime), CAST(N'2018-01-11 09:35:50.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-28 17:26:31.000' AS DateTime), CAST(N'2017-11-30 10:39:50.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'High', CAST(N'2017-11-28 17:10:36.000' AS DateTime), CAST(N'2017-12-15 08:54:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-28 16:59:55.000' AS DateTime), CAST(N'2017-11-29 15:30:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Medium', CAST(N'2017-11-28 16:56:45.000' AS DateTime), CAST(N'2017-11-30 10:01:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-11-28 16:55:00.000' AS DateTime), CAST(N'2017-12-20 08:55:13.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'High', CAST(N'2017-11-28 16:54:18.000' AS DateTime), CAST(N'2018-01-15 21:22:02.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'In Progress', N'Medium', CAST(N'2017-11-28 16:28:46.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-28 16:01:05.000' AS DateTime), CAST(N'2017-11-29 11:41:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-11-28 14:27:43.000' AS DateTime), CAST(N'2017-11-28 14:27:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-28 14:10:42.000' AS DateTime), CAST(N'2017-12-21 07:37:54.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Low', CAST(N'2017-11-28 14:10:42.000' AS DateTime), CAST(N'2017-12-06 13:30:50.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-28 14:10:41.000' AS DateTime), CAST(N'2018-01-02 08:39:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-28 13:50:51.000' AS DateTime), CAST(N'2018-01-02 09:32:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-11-28 13:22:36.000' AS DateTime), CAST(N'2017-11-30 11:16:49.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Cancelled', N'Low', CAST(N'2017-11-28 12:47:17.000' AS DateTime), CAST(N'2018-01-16 15:35:06.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-11-28 12:14:27.000' AS DateTime), CAST(N'2017-11-29 23:43:40.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Critical', CAST(N'2017-11-28 12:09:53.000' AS DateTime), CAST(N'2018-01-18 07:23:46.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-28 11:55:02.000' AS DateTime), CAST(N'2018-01-15 21:20:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Low', CAST(N'2017-11-28 11:42:34.000' AS DateTime), CAST(N'2018-01-15 21:13:54.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-28 11:12:11.000' AS DateTime), CAST(N'2017-11-28 11:12:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-28 11:04:40.000' AS DateTime), CAST(N'2017-11-30 10:54:43.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2017-11-28 10:52:39.000' AS DateTime), CAST(N'2017-12-06 15:37:54.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-28 10:50:12.000' AS DateTime), CAST(N'2017-11-28 10:50:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-28 09:55:03.000' AS DateTime), CAST(N'2017-11-30 12:37:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-28 08:25:09.000' AS DateTime), CAST(N'2017-11-28 10:49:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-11-28 08:17:54.000' AS DateTime), CAST(N'2017-12-13 11:07:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Tracking', N'Low', CAST(N'2017-11-27 20:31:14.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2017-11-27 17:50:33.000' AS DateTime), CAST(N'2017-11-28 23:05:04.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Cancelled', N'Low', CAST(N'2017-11-27 15:58:57.000' AS DateTime), CAST(N'2017-12-20 08:38:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-27 15:35:19.000' AS DateTime), CAST(N'2017-11-30 17:29:06.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Critical', CAST(N'2017-11-27 15:28:54.000' AS DateTime), CAST(N'2017-12-01 16:07:28.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-27 14:22:05.000' AS DateTime), CAST(N'2017-12-04 12:05:05.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'High', CAST(N'2017-11-27 13:51:35.000' AS DateTime), CAST(N'2017-11-27 15:19:47.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-27 13:51:27.000' AS DateTime), CAST(N'2018-01-08 13:30:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-27 13:37:28.000' AS DateTime), CAST(N'2017-11-27 13:37:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-27 13:24:22.000' AS DateTime), CAST(N'2017-11-28 10:49:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-27 13:20:06.000' AS DateTime), CAST(N'2017-11-27 13:23:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Awaiting Feedba', N'Medium', CAST(N'2017-11-27 13:00:40.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-11-27 12:55:49.000' AS DateTime), CAST(N'2017-11-27 12:55:50.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-11-27 12:38:00.000' AS DateTime), CAST(N'2017-11-27 12:50:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-27 12:17:01.000' AS DateTime), CAST(N'2017-11-27 12:17:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-27 12:11:28.000' AS DateTime), CAST(N'2017-11-27 12:11:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-27 11:08:23.000' AS DateTime), CAST(N'2017-11-27 11:08:24.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-11-27 10:56:23.000' AS DateTime), CAST(N'2017-11-30 11:01:08.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-11-27 10:53:25.000' AS DateTime), CAST(N'2017-11-30 11:01:45.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-11-27 10:21:13.000' AS DateTime), CAST(N'2017-12-12 08:03:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Low', CAST(N'2017-11-27 10:20:28.000' AS DateTime), CAST(N'2017-12-06 13:23:43.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-11-27 10:20:28.000' AS DateTime), CAST(N'2017-12-19 10:05:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-11-27 10:20:28.000' AS DateTime), CAST(N'2017-12-19 10:06:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-27 10:18:34.000' AS DateTime), CAST(N'2017-12-01 11:54:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-27 09:19:33.000' AS DateTime), CAST(N'2017-12-08 16:46:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2017-11-27 09:16:59.000' AS DateTime), CAST(N'2017-11-27 11:14:04.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-27 09:02:03.000' AS DateTime), CAST(N'2017-11-27 11:42:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2017-11-27 08:59:44.000' AS DateTime), CAST(N'2017-11-27 09:01:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-27 08:59:35.000' AS DateTime), CAST(N'2017-11-28 11:38:18.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-27 08:42:20.000' AS DateTime), CAST(N'2017-11-29 15:58:49.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-27 08:07:11.000' AS DateTime), CAST(N'2017-11-27 08:58:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-22 12:46:12.000' AS DateTime), CAST(N'2017-11-28 10:52:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2017-11-22 12:44:36.000' AS DateTime), CAST(N'2017-11-22 17:02:04.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-22 09:17:55.000' AS DateTime), CAST(N'2017-11-22 09:17:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-21 18:27:27.000' AS DateTime), CAST(N'2017-12-05 11:23:00.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-21 17:49:51.000' AS DateTime), CAST(N'2017-12-01 16:05:45.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-11-21 14:00:59.000' AS DateTime), CAST(N'2017-12-01 13:12:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-21 13:53:20.000' AS DateTime), CAST(N'2018-01-09 13:51:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2017-11-21 13:46:42.000' AS DateTime), CAST(N'2017-11-28 08:11:24.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-21 13:04:32.000' AS DateTime), CAST(N'2017-12-04 14:40:30.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Medium', CAST(N'2017-11-21 12:31:08.000' AS DateTime), CAST(N'2017-11-21 14:58:30.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-11-21 12:20:57.000' AS DateTime), CAST(N'2017-11-21 12:20:57.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'High', CAST(N'2017-11-21 11:25:12.000' AS DateTime), CAST(N'2017-11-21 11:57:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-21 11:07:38.000' AS DateTime), CAST(N'2017-11-21 11:07:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Critical', CAST(N'2017-11-21 10:58:44.000' AS DateTime), CAST(N'2018-01-18 11:41:05.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-11-21 10:35:01.000' AS DateTime), CAST(N'2017-11-27 08:35:08.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'High', CAST(N'2017-11-21 10:15:36.000' AS DateTime), CAST(N'2017-12-01 07:44:11.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-11-21 10:14:14.000' AS DateTime), CAST(N'2017-11-22 09:36:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-21 10:09:39.000' AS DateTime), CAST(N'2017-11-21 11:06:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Low', CAST(N'2017-11-21 10:08:52.000' AS DateTime), CAST(N'2017-11-22 12:44:20.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Medium', CAST(N'2017-11-21 10:04:33.000' AS DateTime), CAST(N'2017-11-21 13:30:22.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-21 09:57:59.000' AS DateTime), CAST(N'2017-12-11 08:36:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-21 09:48:29.000' AS DateTime), CAST(N'2017-11-21 13:31:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-21 08:16:55.000' AS DateTime), CAST(N'2017-11-21 09:49:52.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Cancelled', N'Low', CAST(N'2017-11-21 07:40:11.000' AS DateTime), CAST(N'2017-11-21 08:02:08.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-21 07:40:09.000' AS DateTime), CAST(N'2017-12-05 14:47:24.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Critical', CAST(N'2017-11-20 18:01:19.000' AS DateTime), CAST(N'2017-11-21 11:36:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2017-11-20 16:25:49.000' AS DateTime), CAST(N'2017-11-20 16:26:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Cancelled', N'Medium', CAST(N'2017-11-20 16:25:41.000' AS DateTime), CAST(N'2018-01-16 15:34:25.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-20 16:07:17.000' AS DateTime), CAST(N'2017-11-21 11:00:35.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-11-20 15:40:40.000' AS DateTime), CAST(N'2017-12-19 16:24:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-20 15:39:52.000' AS DateTime), CAST(N'2017-11-20 15:39:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-20 14:19:25.000' AS DateTime), CAST(N'2017-12-08 16:36:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-20 13:37:54.000' AS DateTime), CAST(N'2017-11-20 13:44:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-11-20 12:41:55.000' AS DateTime), CAST(N'2017-11-21 16:17:06.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-20 11:39:30.000' AS DateTime), CAST(N'2017-11-21 11:07:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rjenks', N'Closed', N'High', CAST(N'2017-11-20 11:24:29.000' AS DateTime), CAST(N'2018-01-08 17:37:06.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2017-11-20 11:10:25.000' AS DateTime), CAST(N'2017-11-20 22:10:23.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-20 10:40:07.000' AS DateTime), CAST(N'2017-11-20 10:40:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-20 10:17:21.000' AS DateTime), CAST(N'2017-11-20 14:31:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-20 10:16:11.000' AS DateTime), CAST(N'2017-12-14 14:40:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-20 09:28:08.000' AS DateTime), CAST(N'2017-12-04 09:43:39.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2017-11-20 09:19:40.000' AS DateTime), CAST(N'2017-11-27 11:46:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'High', CAST(N'2017-11-20 08:33:15.000' AS DateTime), CAST(N'2017-11-20 14:33:22.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-20 08:32:39.000' AS DateTime), CAST(N'2017-12-05 12:34:59.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Assigned', N'Medium', CAST(N'2017-11-20 08:10:11.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'High', CAST(N'2017-11-19 11:14:34.000' AS DateTime), CAST(N'2017-11-21 16:23:26.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Regulatory', CAST(N'2017-11-19 11:11:38.000' AS DateTime), CAST(N'2017-11-20 12:40:13.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-17 21:55:11.000' AS DateTime), CAST(N'2017-11-20 09:33:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-11-17 21:15:08.000' AS DateTime), CAST(N'2017-11-22 13:14:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-17 16:50:55.000' AS DateTime), CAST(N'2017-11-17 16:50:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-17 16:19:18.000' AS DateTime), CAST(N'2017-12-08 15:50:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'High', CAST(N'2017-11-17 16:13:42.000' AS DateTime), CAST(N'2018-01-11 13:36:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Low', CAST(N'2017-11-17 15:29:41.000' AS DateTime), CAST(N'2018-01-15 21:15:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-11-17 15:26:56.000' AS DateTime), CAST(N'2017-11-17 16:33:44.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-17 14:09:48.000' AS DateTime), CAST(N'2017-11-19 10:07:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-17 13:11:52.000' AS DateTime), CAST(N'2017-11-29 08:57:54.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'Low', CAST(N'2017-11-17 13:10:18.000' AS DateTime), CAST(N'2017-11-17 16:37:44.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Critical', CAST(N'2017-11-17 13:03:21.000' AS DateTime), CAST(N'2017-11-17 13:04:03.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'High', CAST(N'2017-11-17 10:13:36.000' AS DateTime), CAST(N'2017-11-20 08:18:25.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-11-17 09:37:20.000' AS DateTime), CAST(N'2017-12-14 14:00:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-17 09:24:22.000' AS DateTime), CAST(N'2017-11-17 09:24:22.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Medium', CAST(N'2017-11-17 09:24:01.000' AS DateTime), CAST(N'2017-12-09 14:32:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2017-11-17 08:46:12.000' AS DateTime), CAST(N'2017-11-20 13:43:54.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-17 08:20:46.000' AS DateTime), CAST(N'2017-11-17 14:43:15.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-17 08:07:43.000' AS DateTime), CAST(N'2017-11-17 08:20:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-17 08:03:04.000' AS DateTime), CAST(N'2017-11-17 08:37:50.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-11-17 07:21:39.000' AS DateTime), CAST(N'2018-01-15 21:14:19.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Low', CAST(N'2017-11-16 20:08:53.000' AS DateTime), CAST(N'2018-01-15 21:11:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-11-16 17:20:31.000' AS DateTime), CAST(N'2017-11-29 07:35:34.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-16 17:10:01.000' AS DateTime), CAST(N'2017-11-20 15:01:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'High', CAST(N'2017-11-16 16:53:27.000' AS DateTime), CAST(N'2017-11-29 09:42:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-11-16 16:45:25.000' AS DateTime), CAST(N'2017-11-17 16:41:28.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-16 16:28:13.000' AS DateTime), CAST(N'2017-11-17 12:26:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2017-11-16 16:22:30.000' AS DateTime), CAST(N'2017-12-01 09:11:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-11-16 16:04:50.000' AS DateTime), CAST(N'2017-11-17 16:42:33.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-16 15:59:08.000' AS DateTime), CAST(N'2017-11-27 08:56:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-11-16 15:48:36.000' AS DateTime), CAST(N'2017-11-20 13:24:49.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2017-11-16 15:25:04.000' AS DateTime), CAST(N'2017-11-16 15:28:54.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-16 15:15:50.000' AS DateTime), CAST(N'2017-11-27 08:18:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-11-16 15:09:36.000' AS DateTime), CAST(N'2017-11-20 16:36:40.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'Low', CAST(N'2017-11-16 14:58:13.000' AS DateTime), CAST(N'2017-11-20 13:13:15.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'High', CAST(N'2017-11-16 14:48:04.000' AS DateTime), CAST(N'2017-11-20 16:02:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'Low', CAST(N'2017-11-16 14:43:33.000' AS DateTime), CAST(N'2017-11-17 16:54:27.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'High', CAST(N'2017-11-16 13:29:24.000' AS DateTime), CAST(N'2017-11-22 08:43:39.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-16 13:29:00.000' AS DateTime), CAST(N'2017-11-16 13:29:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-16 11:38:53.000' AS DateTime), CAST(N'2017-11-16 11:42:54.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Critical', CAST(N'2017-11-16 11:26:25.000' AS DateTime), CAST(N'2018-01-05 12:08:56.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-11-16 11:26:07.000' AS DateTime), CAST(N'2017-11-16 12:41:11.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-16 11:00:45.000' AS DateTime), CAST(N'2017-11-27 11:48:59.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-11-16 10:27:15.000' AS DateTime), CAST(N'2017-11-20 13:19:48.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-11-16 10:21:03.000' AS DateTime), CAST(N'2017-11-17 10:20:24.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-16 10:09:30.000' AS DateTime), CAST(N'2017-11-22 10:36:43.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-16 10:09:30.000' AS DateTime), CAST(N'2017-11-27 08:59:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-11-16 10:09:30.000' AS DateTime), CAST(N'2017-11-17 16:55:20.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2017-11-16 09:11:26.000' AS DateTime), CAST(N'2017-11-16 09:55:18.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-16 08:54:16.000' AS DateTime), CAST(N'2017-11-27 14:41:32.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Low', CAST(N'2017-11-16 08:34:45.000' AS DateTime), CAST(N'2018-01-15 20:55:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Cancelled', N'High', CAST(N'2017-11-16 07:09:27.000' AS DateTime), CAST(N'2018-01-09 17:31:15.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2017-11-16 00:02:52.000' AS DateTime), CAST(N'2017-11-27 11:07:49.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-11-15 16:40:31.000' AS DateTime), CAST(N'2017-11-20 13:14:25.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'High', CAST(N'2017-11-15 16:14:00.000' AS DateTime), CAST(N'2017-11-16 14:19:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-15 15:56:35.000' AS DateTime), CAST(N'2017-11-16 16:28:16.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-11-15 15:29:08.000' AS DateTime), CAST(N'2017-11-15 15:29:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'Low', CAST(N'2017-11-15 15:18:17.000' AS DateTime), CAST(N'2017-11-15 16:01:57.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-15 15:17:38.000' AS DateTime), CAST(N'2017-11-16 08:35:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-15 15:14:07.000' AS DateTime), CAST(N'2017-11-15 15:17:35.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Cancelled', N'Low', CAST(N'2017-11-15 15:05:18.000' AS DateTime), CAST(N'2018-01-16 15:33:53.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'High', CAST(N'2017-11-15 14:51:16.000' AS DateTime), CAST(N'2017-11-28 10:24:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-11-15 14:47:44.000' AS DateTime), CAST(N'2017-11-17 14:15:48.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-15 14:44:29.000' AS DateTime), CAST(N'2017-11-15 16:49:59.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-11-15 14:37:21.000' AS DateTime), CAST(N'2017-11-15 16:59:13.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Cancelled', N'Low', CAST(N'2017-11-15 14:28:47.000' AS DateTime), CAST(N'2017-11-15 14:40:29.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Low', CAST(N'2017-11-15 14:16:15.000' AS DateTime), CAST(N'2018-01-30 13:46:16.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Low', CAST(N'2017-11-15 12:18:31.000' AS DateTime), CAST(N'2018-01-15 21:09:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-11-15 12:13:30.000' AS DateTime), CAST(N'2017-12-11 16:34:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-15 11:17:28.000' AS DateTime), CAST(N'2017-12-11 08:21:01.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-15 11:13:55.000' AS DateTime), CAST(N'2017-11-15 11:13:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-11-15 09:52:28.000' AS DateTime), CAST(N'2018-01-08 11:06:42.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-11-15 09:48:50.000' AS DateTime), CAST(N'2017-11-17 10:19:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-15 09:06:41.000' AS DateTime), CAST(N'2017-11-15 14:03:30.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2017-11-15 09:05:38.000' AS DateTime), CAST(N'2017-11-15 14:03:07.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-15 09:01:57.000' AS DateTime), CAST(N'2017-11-15 14:04:22.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-15 08:44:18.000' AS DateTime), CAST(N'2017-11-15 09:25:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-11-15 08:36:37.000' AS DateTime), CAST(N'2017-11-15 08:52:52.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-15 08:30:51.000' AS DateTime), CAST(N'2017-12-08 16:06:48.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-11-15 08:21:52.000' AS DateTime), CAST(N'2017-11-15 09:45:07.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2017-11-15 07:22:02.000' AS DateTime), CAST(N'2017-11-22 08:12:06.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-14 20:20:36.000' AS DateTime), CAST(N'2017-12-01 11:28:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Awaiting Feedba', N'Low', CAST(N'2017-11-14 17:13:33.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Critical', CAST(N'2017-11-14 16:52:23.000' AS DateTime), CAST(N'2017-11-20 16:04:00.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-11-14 16:51:45.000' AS DateTime), CAST(N'2017-11-30 11:05:22.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Critical', CAST(N'2017-11-14 16:51:36.000' AS DateTime), CAST(N'2017-11-20 16:03:01.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-14 16:50:43.000' AS DateTime), CAST(N'2017-12-04 12:33:10.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Low', CAST(N'2017-11-14 16:38:44.000' AS DateTime), CAST(N'2017-11-14 16:39:27.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'High', CAST(N'2017-11-14 16:01:39.000' AS DateTime), CAST(N'2017-11-20 13:07:53.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-14 15:55:47.000' AS DateTime), CAST(N'2017-12-04 14:39:18.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-14 15:50:44.000' AS DateTime), CAST(N'2017-11-17 08:03:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Medium', CAST(N'2017-11-14 15:32:20.000' AS DateTime), CAST(N'2017-12-01 13:16:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-14 14:16:47.000' AS DateTime), CAST(N'2017-11-16 09:18:26.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-14 14:16:39.000' AS DateTime), CAST(N'2017-11-14 14:56:48.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'Medium', CAST(N'2017-11-14 14:05:56.000' AS DateTime), CAST(N'2017-11-27 14:28:18.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-11-14 13:53:49.000' AS DateTime), CAST(N'2018-01-15 21:08:00.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Cancelled', N'High', CAST(N'2017-11-14 12:59:40.000' AS DateTime), CAST(N'2017-11-14 13:02:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2017-11-14 12:52:51.000' AS DateTime), CAST(N'2017-11-15 07:47:52.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2017-11-14 12:28:10.000' AS DateTime), CAST(N'2017-11-15 09:03:56.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-14 12:18:12.000' AS DateTime), CAST(N'2017-11-14 12:45:47.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-14 12:13:29.000' AS DateTime), CAST(N'2017-11-14 12:13:29.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-14 12:00:22.000' AS DateTime), CAST(N'2017-11-14 17:05:59.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-14 10:43:24.000' AS DateTime), CAST(N'2017-11-27 09:00:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-14 09:43:14.000' AS DateTime), CAST(N'2017-11-14 09:43:14.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-11-14 08:03:32.000' AS DateTime), CAST(N'2018-01-03 10:15:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Cancelled', N'High', CAST(N'2017-11-14 08:02:40.000' AS DateTime), CAST(N'2017-11-17 14:25:44.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Cancelled', N'Medium', CAST(N'2017-11-14 07:57:27.000' AS DateTime), CAST(N'2017-11-14 07:58:14.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-14 07:52:53.000' AS DateTime), CAST(N'2017-11-17 08:03:09.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-14 07:44:36.000' AS DateTime), CAST(N'2017-11-15 07:54:49.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Awaiting Feedba', N'Low', CAST(N'2017-11-13 22:42:56.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-13 22:42:55.000' AS DateTime), CAST(N'2017-11-15 12:09:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-13 22:06:23.000' AS DateTime), CAST(N'2017-11-15 14:35:51.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Assigned', N'High', CAST(N'2017-11-13 18:01:08.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'Unassigned', N'Closed', N'Low', CAST(N'2017-11-13 17:47:32.000' AS DateTime), CAST(N'2017-11-15 14:32:17.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-13 17:08:17.000' AS DateTime), CAST(N'2017-11-13 17:08:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-13 16:23:00.000' AS DateTime), CAST(N'2017-11-17 07:59:20.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Cancelled', N'Low', CAST(N'2017-11-13 16:06:39.000' AS DateTime), CAST(N'2017-12-20 08:39:05.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'High', CAST(N'2017-11-13 15:43:35.000' AS DateTime), CAST(N'2017-11-21 07:12:02.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Closed', N'Low', CAST(N'2017-11-13 15:02:26.000' AS DateTime), CAST(N'2017-11-30 13:27:34.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2017-11-13 14:55:39.000' AS DateTime), CAST(N'2017-11-28 11:41:34.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-13 13:43:50.000' AS DateTime), CAST(N'2017-11-29 13:00:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-13 13:38:51.000' AS DateTime), CAST(N'2018-01-16 13:04:28.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-11-13 13:37:55.000' AS DateTime), CAST(N'2017-11-17 08:02:44.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-11-13 13:31:01.000' AS DateTime), CAST(N'2017-11-13 21:45:46.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'Critical', CAST(N'2017-11-13 13:27:41.000' AS DateTime), CAST(N'2018-01-30 10:07:48.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'Medium', CAST(N'2017-11-13 12:57:08.000' AS DateTime), CAST(N'2017-12-20 07:25:05.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Medium', CAST(N'2017-11-13 11:29:57.000' AS DateTime), CAST(N'2017-11-15 14:33:57.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-13 11:17:51.000' AS DateTime), CAST(N'2017-11-13 11:17:51.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Medium', CAST(N'2017-11-13 11:10:11.000' AS DateTime), CAST(N'2017-11-14 13:51:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'High', CAST(N'2017-11-13 10:49:04.000' AS DateTime), CAST(N'2017-11-14 13:01:23.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-13 10:31:55.000' AS DateTime), CAST(N'2017-11-15 07:58:14.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'edis.worden', N'Closed', N'Low', CAST(N'2017-11-13 10:25:23.000' AS DateTime), CAST(N'2017-11-27 14:31:08.000' AS DateTime), N'Educational Technology Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2017-11-13 10:20:34.000' AS DateTime), CAST(N'2017-12-11 12:22:40.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Medium', CAST(N'2017-11-13 09:42:46.000' AS DateTime), CAST(N'2017-11-29 16:04:33.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'glenn.elfbrandt', N'Awaiting Feedba', N'Regulatory', CAST(N'2017-11-13 08:23:01.000' AS DateTime), NULL, N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-13 07:16:03.000' AS DateTime), CAST(N'2017-11-20 09:26:44.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-11-11 11:36:30.000' AS DateTime), CAST(N'2017-11-11 11:36:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'High', CAST(N'2017-11-10 15:47:57.000' AS DateTime), CAST(N'2017-11-13 14:42:55.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Medium', CAST(N'2017-11-09 16:45:02.000' AS DateTime), CAST(N'2017-11-13 09:53:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Medium', CAST(N'2017-11-09 16:26:05.000' AS DateTime), CAST(N'2017-11-27 14:37:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Medium', CAST(N'2017-11-09 15:39:49.000' AS DateTime), CAST(N'2017-11-13 16:03:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-09 15:36:51.000' AS DateTime), CAST(N'2017-12-11 10:35:30.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-09 14:43:11.000' AS DateTime), CAST(N'2017-12-08 10:09:12.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-09 14:00:33.000' AS DateTime), CAST(N'2017-11-09 14:00:31.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-09 13:30:38.000' AS DateTime), CAST(N'2017-12-08 09:56:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-09 13:29:07.000' AS DateTime), CAST(N'2017-11-29 14:35:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-09 13:03:55.000' AS DateTime), CAST(N'2017-11-09 13:03:55.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-09 12:44:26.000' AS DateTime), CAST(N'2017-11-22 09:28:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-09 12:16:51.000' AS DateTime), CAST(N'2017-11-27 08:56:56.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-09 11:40:25.000' AS DateTime), CAST(N'2017-11-14 08:09:24.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Medium', CAST(N'2017-11-09 10:36:20.000' AS DateTime), CAST(N'2017-12-04 14:45:22.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-11-09 09:21:54.000' AS DateTime), CAST(N'2017-11-21 22:35:47.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2017-11-09 08:59:31.000' AS DateTime), CAST(N'2017-11-27 11:00:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-09 08:43:48.000' AS DateTime), CAST(N'2017-11-15 07:57:36.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-09 08:24:02.000' AS DateTime), CAST(N'2017-11-17 07:43:41.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Medium', CAST(N'2017-11-09 08:17:38.000' AS DateTime), CAST(N'2017-12-04 13:51:38.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.rwilliams', N'Closed', N'Low', CAST(N'2017-11-09 07:32:20.000' AS DateTime), CAST(N'2017-11-09 09:46:05.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'High', CAST(N'2017-11-08 17:05:16.000' AS DateTime), CAST(N'2017-11-08 17:18:36.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-08 16:54:13.000' AS DateTime), CAST(N'2017-11-09 08:25:17.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-11-08 15:43:51.000' AS DateTime), CAST(N'2017-11-09 15:30:16.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jbroughton', N'Closed', N'Low', CAST(N'2017-11-08 15:28:21.000' AS DateTime), CAST(N'2017-11-08 15:28:21.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'woody.blackman', N'Closed', N'Medium', CAST(N'2017-11-08 15:26:38.000' AS DateTime), CAST(N'2017-11-27 14:01:02.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'scotty.hayes', N'Closed', N'Low', CAST(N'2017-11-08 14:27:59.000' AS DateTime), CAST(N'2018-01-15 20:50:17.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'carl.agrifoglio', N'Closed', N'Low', CAST(N'2017-11-08 14:02:27.000' AS DateTime), CAST(N'2017-11-17 07:49:18.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Low', CAST(N'2017-11-08 13:40:37.000' AS DateTime), CAST(N'2017-11-30 13:54:28.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Re-Open', N'High', CAST(N'2017-11-08 13:37:09.000' AS DateTime), NULL, N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'High', CAST(N'2017-11-08 13:35:16.000' AS DateTime), CAST(N'2017-11-17 14:10:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'tony.richey', N'Closed', N'Low', CAST(N'2017-11-08 13:32:41.000' AS DateTime), CAST(N'2017-11-15 14:48:01.000' AS DateTime), N'Technical Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-08 13:25:51.000' AS DateTime), CAST(N'2017-11-08 13:30:11.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Low', CAST(N'2017-11-08 13:14:03.000' AS DateTime), CAST(N'2017-11-13 14:55:52.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'On Hold', N'Low', CAST(N'2017-11-08 13:03:09.000' AS DateTime), NULL, N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-08 12:32:33.000' AS DateTime), CAST(N'2017-12-04 14:00:35.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.jjastak', N'Closed', N'Medium', CAST(N'2017-11-08 12:31:06.000' AS DateTime), CAST(N'2018-01-11 12:48:25.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'kathy.stanek', N'Closed', N'Medium', CAST(N'2017-11-08 11:43:56.000' AS DateTime), CAST(N'2017-12-07 15:54:57.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-11-08 10:10:48.000' AS DateTime), CAST(N'2017-11-20 22:39:12.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-08 09:53:20.000' AS DateTime), CAST(N'2017-11-08 10:01:02.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Low', CAST(N'2017-11-08 09:42:06.000' AS DateTime), CAST(N'2017-11-08 14:06:09.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'Low', CAST(N'2017-11-08 09:30:50.000' AS DateTime), CAST(N'2017-11-22 10:05:08.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Medium', CAST(N'2017-11-08 09:27:02.000' AS DateTime), CAST(N'2017-11-20 13:20:13.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.adelucca', N'Closed', N'High', CAST(N'2017-11-08 09:01:31.000' AS DateTime), CAST(N'2017-11-08 09:01:31.000' AS DateTime), N'Telecom Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.mcluff', N'Closed', N'Medium', CAST(N'2017-11-08 08:46:25.000' AS DateTime), CAST(N'2017-11-17 14:50:58.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'sw.tmiller2', N'Closed', N'Low', CAST(N'2017-11-08 08:45:49.000' AS DateTime), CAST(N'2017-12-07 10:33:26.000' AS DateTime), N'Service Desk Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'Medium', CAST(N'2017-11-08 08:39:45.000' AS DateTime), CAST(N'2017-11-08 09:43:14.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Ticket_Snap_Shot] ([Assigned_To_Name], [Status], [Priority], [Date_Requested], [Date_Completed], [Support_Group], [Ticket_ID]) VALUES (N'alan.wallace', N'Closed', N'High', CAST(N'2017-11-08 08:26:53.000' AS DateTime), CAST(N'2017-11-21 10:12:40.000' AS DateTime), N'Web Support', NULL)
GO
INSERT [dbo].[Velocity_Storage] ([Report_Date], [Open_Count], [Assigned_Count], [Seven_Day_Created_Count], [Thirty_Day_Created_Count], [Ninety_Day_Created_Count], [Seven_Day_Closed_Count], [Thirty_Day_Closed_Count], [Ninety_Day_Closed_Count], [Seven_Day_Age], [Eight_Day_Age], [Fifteen_Day_Age], [Twent_Day_Age], [Thirty_Day_Age]) VALUES (CAST(N'2018-02-01 00:00:00.000' AS DateTime), 226, 220, 89, 573, 1493, 45, 417, 1271, 44, 44, 36, 32, 70)
GO
INSERT [dbo].[Velocity_Storage] ([Report_Date], [Open_Count], [Assigned_Count], [Seven_Day_Created_Count], [Thirty_Day_Created_Count], [Ninety_Day_Created_Count], [Seven_Day_Closed_Count], [Thirty_Day_Closed_Count], [Ninety_Day_Closed_Count], [Seven_Day_Age], [Eight_Day_Age], [Fifteen_Day_Age], [Twent_Day_Age], [Thirty_Day_Age]) VALUES (CAST(N'2018-02-02 00:00:00.000' AS DateTime), 216, 212, 110, 593, 1513, 60, 442, 1300, 50, 38, 34, 29, 65)
GO
INSERT [dbo].[Velocity_Storage] ([Report_Date], [Open_Count], [Assigned_Count], [Seven_Day_Created_Count], [Thirty_Day_Created_Count], [Ninety_Day_Created_Count], [Seven_Day_Closed_Count], [Thirty_Day_Closed_Count], [Ninety_Day_Closed_Count], [Seven_Day_Age], [Eight_Day_Age], [Fifteen_Day_Age], [Twent_Day_Age], [Thirty_Day_Age]) VALUES (CAST(N'2018-02-03 00:00:00.000' AS DateTime), 220, 214, 118, 601, 1521, 63, 445, 1304, 55, 38, 34, 29, 64)
GO
INSERT [dbo].[Velocity_Storage] ([Report_Date], [Open_Count], [Assigned_Count], [Seven_Day_Created_Count], [Thirty_Day_Created_Count], [Ninety_Day_Created_Count], [Seven_Day_Closed_Count], [Thirty_Day_Closed_Count], [Ninety_Day_Closed_Count], [Seven_Day_Age], [Eight_Day_Age], [Fifteen_Day_Age], [Twent_Day_Age], [Thirty_Day_Age]) VALUES (CAST(N'2018-02-04 00:00:00.000' AS DateTime), 221, 214, 120, 603, 1523, 64, 446, 1305, 56, 38, 34, 29, 64)
GO
INSERT [dbo].[Velocity_Storage] ([Report_Date], [Open_Count], [Assigned_Count], [Seven_Day_Created_Count], [Thirty_Day_Created_Count], [Ninety_Day_Created_Count], [Seven_Day_Closed_Count], [Thirty_Day_Closed_Count], [Ninety_Day_Closed_Count], [Seven_Day_Age], [Eight_Day_Age], [Fifteen_Day_Age], [Twent_Day_Age], [Thirty_Day_Age]) VALUES (CAST(N'2018-02-05 00:00:00.000' AS DateTime), 218, 211, 120, 603, 1520, 64, 446, 1302, 56, 38, 34, 29, 61)
GO
INSERT [dbo].[Velocity_Storage] ([Report_Date], [Open_Count], [Assigned_Count], [Seven_Day_Created_Count], [Thirty_Day_Created_Count], [Ninety_Day_Created_Count], [Seven_Day_Closed_Count], [Thirty_Day_Closed_Count], [Ninety_Day_Closed_Count], [Seven_Day_Age], [Eight_Day_Age], [Fifteen_Day_Age], [Twent_Day_Age], [Thirty_Day_Age]) VALUES (CAST(N'2018-02-06 00:00:00.000' AS DateTime), 226, 215, 129, 622, 1519, 63, 456, 1293, 66, 39, 33, 28, 60)
GO
/****** Object:  StoredProcedure [dbo].[StatsTracker_GetTickets]    Script Date: 2/6/2018 1:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ryan Williams
-- Create date: 2/6/2018
-- Description:	Gets data for the stat tracker application
-- =============================================
CREATE PROCEDURE [dbo].[StatsTracker_GetTickets] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * 
	FROM Ticket_Snap_Shot 
END

GO
/****** Object:  StoredProcedure [dbo].[StatsTracker_Velocity]    Script Date: 2/6/2018 1:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ryan Williams
-- Create date: 2/6/2018
-- Description:	This gets all the infromation for the velocity portian of the tracking
-- =============================================
CREATE PROCEDURE [dbo].[StatsTracker_Velocity] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * 
	FROM Velocity_Storage
END

GO
/****** Object:  StoredProcedure [dbo].[Ticket_Clear]    Script Date: 2/6/2018 1:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ryan Williams
-- Create date: 2/5/2018
-- Description:	This is to clear the snap shot table before each days entry of information
-- =============================================
CREATE PROCEDURE [dbo].[Ticket_Clear] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket_Snap_Shot'

/****** Object:  Table [dbo].[Ticket_Snap_Shot]    Script Date: 2/5/2018 12:49:00 PM ******/
DROP TABLE [dbo].[Ticket_Snap_Shot]

/****** Object:  Table [dbo].[Ticket_Snap_Shot]    Script Date: 2/5/2018 12:49:00 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

SET ANSI_PADDING ON

CREATE TABLE [dbo].[Ticket_Snap_Shot](
	[Assigned_To_Name] [varchar](50) NOT NULL,
	[Status] [varchar](15) NOT NULL,
	[Priority] [varchar](15) NOT NULL,
	[Date_Requested] [datetime] NOT NULL,
	[Date_Completed] [datetime] NULL,
	[Support_Group] [varchar](50) NOT NULL,
	[Ticket_ID] [int] NULL
) ON [PRIMARY]

SET ANSI_PADDING OFF

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is a snapshot of the ticket that will either be updated or recreated daily' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket_Snap_Shot'

END

GO
/****** Object:  StoredProcedure [dbo].[Ticket_Insert]    Script Date: 2/6/2018 1:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ryan Williams
-- Create date: 2/5/18
-- Description:	This is the insert of the ticket snap shot, this may be subject to change but I will updated it when or if it does
-- =============================================
CREATE PROCEDURE [dbo].[Ticket_Insert] 
	-- Add the parameters for the stored procedure here
	@assignedname varchar(50),
	@stat varchar(15),
	@prior varchar(15),
	@dater datetime,
	@datec datetime = null,
	@support varchar(50),
	@ticket int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Ticket_Snap_Shot
	( Assigned_To_Name,
	[Status],
	[Priority],
	Date_Requested,
	Date_Completed,
	Support_Group,
	Ticket_ID)
	VALUES
	(@assignedname,
	@stat,
	@prior,
	@dater,
	@datec,
	@support,
	@ticket)
END

GO
/****** Object:  StoredProcedure [dbo].[Velocity_Insert]    Script Date: 2/6/2018 1:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ryan Williams
-- Create date: 1-30-2018
-- Description:	This is the insert for the Velocity table
-- =============================================
CREATE PROCEDURE [dbo].[Velocity_Insert] 
	-- Add the parameters for the stored procedure here
	
	@reportdate DATETIME,
	@opencount INT,
	@assignedcount INT,
	@sevendaycreate INT,
	@thirtydaycreate INT,
	@ninetydaycreate INT,
	@sevendayclose INT,
	@thirtydayclose INT,
	@ninetydayclose INT,
	@sevenage INT,
	@eightage INT,
	@fifteenage INT,
	@twentdayage INT,
	@thirtydayage INT
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	IF (SELECT COUNT(Report_Date) FROM Velocity_Storage WHERE Report_Date = @reportdate) <> 1
		BEGIN
		INSERT INTO Velocity_Storage 
			(Report_Date,
			Open_Count,
			Assigned_Count,
			Seven_Day_Created_Count,
			Thirty_Day_Created_Count,
			Ninety_Day_Created_Count,
			Seven_Day_Closed_Count,
			Thirty_Day_Closed_Count,
			Ninety_Day_Closed_Count,
			Seven_Day_Age,
			Eight_Day_Age,
			Fifteen_Day_Age,
			Twent_Day_Age,
			Thirty_Day_Age)
		VALUES 
			(@reportdate,
			@opencount,
			@assignedcount,
			@sevendaycreate,
			@thirtydaycreate,
			@ninetydaycreate,
			@sevendayclose,
			@thirtydayclose,
			@ninetydayclose,
			@sevenage,
			@eightage,
			@fifteenage,
			@twentdayage,
			@thirtydayage);
		END
	ELSE
	BEGIN
		UPDATE [dbo].[Velocity_Storage]
		SET [Report_Date] = @reportdate
		,[Open_Count] = @opencount
        ,[Assigned_Count] = @assignedcount
        ,[Seven_Day_Created_Count] = @sevendaycreate
        ,[Thirty_Day_Created_Count] = @thirtydaycreate
        ,[Ninety_Day_Created_Count] = @ninetydaycreate
        ,[Seven_Day_Closed_Count] = @sevendayclose
        ,[Thirty_Day_Closed_Count] = @thirtydayclose
        ,[Ninety_Day_Closed_Count] = @ninetydayclose
        ,[Seven_Day_Age] = @sevenage
        ,[Eight_Day_Age] = @eightage
        ,[Fifteen_Day_Age] = @fifteenage
        ,[Twent_Day_Age] = @twentdayage
        ,[Thirty_Day_Age] = @thirtydayage
		WHERE Report_Date = @reportdate
	END
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is a snapshot of the ticket that will either be updated or recreated daily' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ticket_Snap_Shot'
GO
USE [master]
GO
ALTER DATABASE [ITS_TicketStatsWarehouse] SET  READ_WRITE 
GO
