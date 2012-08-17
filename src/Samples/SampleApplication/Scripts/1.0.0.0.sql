/*
<VersionComment>Initial creation of database</VersionComment>
*/
/****** Object:  Table [dbo].[SYUserRole]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYUserRole](
	[SYUserRoleGUID] [uniqueidentifier] NOT NULL,
	[SYUserRoleCode] [varchar](10) NOT NULL,
	[SYUserRoleDescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYUserRole] PRIMARY KEY NONCLUSTERED 
(
	[SYUserRoleGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UKSYUserRoleCode] ON [dbo].[SYUserRole] 
(
	[SYUserRoleCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table is used to define the security roles that are available in the Service Order System.   This is a pre-populated table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYUserRole'
GO
/****** Object:  Table [dbo].[SYUser]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYUser](
	[SYUserGUID] [uniqueidentifier] NOT NULL,
	[SYUserLogin] [varchar](50) NOT NULL,
	[SYUserName] [varchar](50) NOT NULL,
	[SYUserPassword] [varchar](50) NOT NULL,
	[SYUserIsActive] [bit] NOT NULL,
	[SYUserRoleGUID] [uniqueidentifier] NULL,
	[SYUserEmail] [varchar](50) NULL,
	[SYUserLockedUntil] [datetime2](7) NULL,
	[CreateDate] [datetime2](7) NULL,
	[CreateUserGUID] [uniqueidentifier] NULL,
	[UpdateDate] [datetime2](7) NULL,
	[UpdateUserGUID] [uniqueidentifier] NULL,
	[IsActive] [bit] NOT NULL,
	[IsFieldWorker] [bit] NULL,
	[IsOfficeWorker] [bit] NULL,
	[SYLastName] [varchar](50) NOT NULL,
 CONSTRAINT [PKSYUsers] PRIMARY KEY NONCLUSTERED 
(
	[SYUserGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UKSYUserLogin] ON [dbo].[SYUser] 
(
	[SYUserLogin] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The User access table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYUser'
GO
/****** Object:  Table [dbo].[SOOrderMemoType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOOrderMemoType](
	[SOOrderMemoTypeGUID] [uniqueidentifier] NOT NULL,
	[SOOrderMemoTypeCode] [varchar](5) NOT NULL,
	[SOOrderMemoTypeDescription] [varchar](35) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOOrderTypeMemo] PRIMARY KEY NONCLUSTERED 
(
	[SOOrderMemoTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UKSOOrderMemoTypeCode] ON [dbo].[SOOrderMemoType] 
(
	[SOOrderMemoTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines different types of comments that are associated with a Service Order.   This table is pre-populated.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOOrderMemoType'
GO
/****** Object:  Table [dbo].[SOPriority]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOPriority](
	[SOPriorGUID] [uniqueidentifier] NOT NULL,
	[SOPriorLevel] [varchar](5) NOT NULL,
	[SOPriorDescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOPriority] PRIMARY KEY NONCLUSTERED 
(
	[SOPriorGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UK_SOPriorLevel] ON [dbo].[SOPriority] 
(
	[SOPriorLevel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Priority values are assigned to Service Order, which is then used in scheduling the Service Orders.  The priorities are user defined.  The Priorities are also used in configuring the Default table which sets select fields when creating a new Service Order. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOPriority'
GO
/****** Object:  Table [dbo].[SOReasonForCall]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SOReasonForCall](
	[SORFCGUID] [uniqueidentifier] NOT NULL,
	[SORFCCode] [varchar](5) NOT NULL,
	[SORFCDescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PKSOReasonForCall] PRIMARY KEY NONCLUSTERED 
(
	[SORFCGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Reason For Call table allows the users to define how they would like to track the reason for the Service Orders.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOReasonForCall'
GO
/****** Object:  Table [dbo].[SOSourceOfCall]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOSourceOfCall](
	[SOSOCGUID] [uniqueidentifier] NOT NULL,
	[SOSOCCode] [varchar](5) NOT NULL,
	[SOSOCDescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOSourceOfCall] PRIMARY KEY NONCLUSTERED 
(
	[SOSOCGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UKSOSOCCode] ON [dbo].[SOSourceOfCall] 
(
	[SOSOCCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Source of Call table allows the users to define how they would like to track the source of the Service Orders.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOSourceOfCall'
GO
/****** Object:  Table [dbo].[SOWorkStatus]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOWorkStatus](
	[SOWorkStatusGUID] [uniqueidentifier] NOT NULL,
	[SOWorkStatusCode] [varchar](5) NOT NULL,
	[SOWorkStatusDescription] [varchar](35) NOT NULL,
	[SOWorkStatusDefault] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOWorkStatus] PRIMARY KEY NONCLUSTERED 
(
	[SOWorkStatusGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UKSOWorkStatusCode] ON [dbo].[SOWorkStatus] 
(
	[SOWorkStatusCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Work Status is used in the Service Orders to set the current status.   This table is pre-populated.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOWorkStatus'
GO
/****** Object:  Table [dbo].[SYAccountType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SYAccountType](
	[SYAccountTypeGUID] [uniqueidentifier] NOT NULL,
	[SYAccountTypeCode] [varchar](5) NOT NULL,
	[SYAccountTypeDescription] [varchar](35) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYAccountType] PRIMARY KEY NONCLUSTERED 
(
	[SYAccountTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines different types of account types that can be associated with a Customer Account. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYAccountType'
GO
/****** Object:  Table [dbo].[SYCustClass]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SYCustClass](
	[SYCustClassGUID] [uniqueidentifier] NOT NULL,
	[SYCustClassCode] [varchar](5) NOT NULL,
	[SYCustClassDescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PKSYCustClass] PRIMARY KEY NONCLUSTERED 
(
	[SYCustClassGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the Class of Customer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustClass'
GO
/****** Object:  Table [dbo].[SYCustDept]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SYCustDept](
	[SYCustDeptGUID] [uniqueidentifier] NOT NULL,
	[SYCustDeptCode] [varchar](5) NOT NULL,
	[SYCustDeptDescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PKSYCustDept] PRIMARY KEY NONCLUSTERED 
(
	[SYCustDeptGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the Customer Department for Internal Service Orders.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustDept'
GO
/****** Object:  Table [dbo].[SYCustomerStatusType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustomerStatusType](
	[SYCustStatusGUID] [uniqueidentifier] NOT NULL,
	[SYCustStatusCode] [varchar](10) NOT NULL,
	[SYCustStatusDescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYCustomerStatus] PRIMARY KEY NONCLUSTERED 
(
	[SYCustStatusGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the types of statuses that can be given a customer.   For example, active, inactive etc.   This is a pre-populated table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustomerStatusType'
GO
/****** Object:  Table [dbo].[SYCustomer]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustomer](
	[SYCustGUID] [uniqueidentifier] NOT NULL,
	[SYCustAccount] [varchar](22) NOT NULL,
	[SYCustAcctId] [varchar](5) NULL,
	[SYCustAltId] [varchar](22) NULL,
	[SYCustLastname] [varchar](35) NULL,
	[SYCustFirstname] [varchar](35) NULL,
	[SYCustOwnerLast] [varchar](25) NULL,
	[SYCustOwnerFirst] [varchar](20) NULL,
	[SYCustOwnerGUID] [uniqueidentifier] NULL,
	[SYCustBillToName] [varchar](35) NULL,
	[SYCustBillCarrier] [varchar](10) NULL,
	[SYCustMasterAcctId] [int] NULL,
	[SYCustStatusGUID] [uniqueidentifier] NOT NULL,
	[SYCustBillDelivery] [varchar](2) NULL,
	[SYCustSortName] [varchar](50) NULL,
	[SYCustBlock] [float] NULL,
	[SYCustSubBlock] [varchar](4) NULL,
	[SYCustLot] [float] NULL,
	[SYCustSubLot] [varchar](4) NULL,
	[SYCustEmailAddress] [varchar](50) NULL,
	[SYCustBillToName2] [varchar](35) NULL,
	[SYCustIConnectKey] [int] NULL,
	[SYCustAcceptEmail] [bit] NULL,
	[SYCustMoveInDate] [datetime] NULL,
	[SYCustActivationDate] [datetime] NULL,
	[SYCustNoShutoff] [bit] NULL,
	[SYCustLastPaymentDate] [datetime] NULL,
	[SYCustDelinquent] [bit] NULL,
	[SYCustSubdivision] [varchar](30) NULL,
	[SYCustTenantEmail] [varchar](75) NULL,
	[SYCustTenantActivationDate] [datetime] NULL,
	[SYCustTenantAcceptEmail] [bit] NULL,
	[SYCustOwnerEmail] [varchar](75) NULL,
	[SYCustTenantOccupiedFlag] [bit] NULL,
	[SYCustLastShtNotDate] [datetime] NULL,
	[SYCustStatusDate] [datetime] NULL,
	[SYCustNoShutoffExpireDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[SYCustBillAddress1] [varchar](30) NULL,
	[SYCustBillAddress2] [varchar](30) NULL,
	[SYCustBillAptNo] [varchar](5) NULL,
	[SYCustBillCity] [varchar](30) NULL,
	[SYCustBillState] [varchar](2) NULL,
	[SYCustBillZip] [varchar](10) NULL,
	[SYCustBillCountry] [varchar](25) NULL,
	[IsActive] [bit] NOT NULL,
	[SYAccountTypeGUID] [uniqueidentifier] NOT NULL,
	[SYCustClassGUID] [uniqueidentifier] NULL,
	[SYCustDeptGUID] [uniqueidentifier] NULL,
	[SYCustBusinessName] [varchar](50) NULL,
 CONSTRAINT [PKSYCustomer] PRIMARY KEY NONCLUSTERED 
(
	[SYCustGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE CLUSTERED INDEX [UXSYCustAccount] ON [dbo].[SYCustomer] 
(
	[SYCustAccount] ASC,
	[SYCustAcctId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IXCustomerAccount] ON [dbo].[SYCustomer] 
(
	[SYCustAccount] ASC,
	[SYCustAcctId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains the customer information.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustomer'
GO
/****** Object:  Table [dbo].[SOCrewSchedule]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOCrewSchedule](
	[SOCrewScheduleGUID] [uniqueidentifier] NOT NULL,
	[SOCrewScheduleWeekDay] [varchar](1) NOT NULL,
	[SOCrewScheduleStartTime] [datetime] NULL,
	[SOCrewScheduleEndTime] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOSchedule] PRIMARY KEY NONCLUSTERED 
(
	[SOCrewScheduleGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A list of days and times available to work.   This is a general setup and will be assigned to one or more crew members.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOCrewSchedule'
GO
/****** Object:  Table [dbo].[SOCrewGroup]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOCrewGroup](
	[SOCrewGroupGUID] [uniqueidentifier] NOT NULL,
	[SOCrewGroupName] [varchar](15) NOT NULL,
	[SOCrewGroupDescription] [varchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SOScheduleGUID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_SOCrewGroup] PRIMARY KEY NONCLUSTERED 
(
	[SOCrewGroupGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Crew Group table contains the description of the crew.   The actual members of this crew can be determined by the Crew Members that have been assigned to this group via the Crew Assignment table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOCrewGroup'
GO
/****** Object:  Table [dbo].[SOOrderMaster]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOOrderMaster](
	[SOOrdMstGUID] [uniqueidentifier] NOT NULL,
	[SOOrdMstOrderNumber] [varchar](22) NOT NULL,
	[SYCustGUID] [uniqueidentifier] NULL,
	[SOPriorGUID] [uniqueidentifier] NOT NULL,
	[SOOrdMstCustomerLastName] [varchar](35) NULL,
	[SOOrdMstCustomerFirstName] [varchar](35) NULL,
	[SOOrdMstOwnerLastName] [varchar](35) NULL,
	[SOOrdMstOwnerFirstName] [varchar](35) NULL,
	[SYCustGUIDOwnerId] [uniqueidentifier] NULL,
	[SOOrdMstCallDate] [datetime] NOT NULL,
	[SOOrdMstCallTime] [time](7) NOT NULL,
	[SYUserGUIDCallTakenBy] [uniqueidentifier] NOT NULL,
	[SOOrdMstRequestedDate] [datetime] NULL,
	[SOOrdMstRequestedTime] [time](7) NULL,
	[SOWorkStatusGUID] [uniqueidentifier] NOT NULL,
	[SOSOCGUID] [uniqueidentifier] NOT NULL,
	[SOOrdMstWorkOnHold] [bit] NULL,
	[SOOrdMstCanPrint] [bit] NULL,
	[SOOrdMstSafetyIssue] [bit] NULL,
	[SOOrdMstServiceDate] [datetime] NULL,
	[SOOrdMstServiceTime] [time](7) NULL,
	[SOOrdMstCompletedDate] [datetime] NULL,
	[SOOrdMstCompletedTime] [time](7) NULL,
	[SOOrdMstServiceOrderNumber] [varchar](15) NULL,
	[SOOrdMstWorkOrderNumber] [varchar](15) NULL,
	[SOOrdMstJobNumber] [varchar](15) NULL,
	[SOCrewGroupGUID] [uniqueidentifier] NULL,
	[SOOrdMstBillToName] [varchar](35) NULL,
	[SOOrdMstBillAdd1] [varchar](30) NULL,
	[SOOrdMstBillAdd2] [varchar](30) NULL,
	[SOOrdMstBillCity] [varchar](40) NULL,
	[SOOrdMstBillState] [varchar](2) NULL,
	[SOOrdMstBillZip] [varchar](10) NULL,
	[SOOrdMstBillAptNo] [varchar](5) NULL,
	[SOOrdMstPrinted] [bit] NULL,
	[SOOrdMstMeteredService] [bit] NOT NULL,
	[SOOrdMstMeterBook] [varchar](4) NULL,
	[SOOrdMstRouteNo] [float] NULL,
	[SOOrdMstCreatedFrom] [varchar](12) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SORFCGUID] [uniqueidentifier] NOT NULL,
	[SOOrdMstEstTime] [float] NULL,
 CONSTRAINT [PKSOOrderMaster] PRIMARY KEY NONCLUSTERED 
(
	[SOOrdMstGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE CLUSTERED INDEX [UXSOOrdMstOrderNumber] ON [dbo].[SOOrderMaster] 
(
	[SOOrdMstOrderNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UKSOOrdMstOrderNumber] ON [dbo].[SOOrderMaster] 
(
	[SOOrdMstOrderNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table is contains the actual Service Order as created by the user.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOOrderMaster'
GO
/****** Object:  Table [dbo].[SOOrderMemo]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOOrderMemo](
	[SOOrderMemoGUID] [uniqueidentifier] NOT NULL,
	[SOOrdMstGUID] [uniqueidentifier] NOT NULL,
	[SOOrderMemoTypeGUID] [uniqueidentifier] NOT NULL,
	[SOOrderMemo] [varchar](8000) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOOrderMemo] PRIMARY KEY NONCLUSTERED 
(
	[SOOrderMemoGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the properties of a memo that is associated with a Service Order.   This table is a child of  the SOOrderMaster.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOOrderMemo'
GO
/****** Object:  Table [dbo].[SOOrderEvent]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOOrderEvent](
	[SOOrderEventGUID] [uniqueidentifier] NOT NULL,
	[SOOrdMstGUID] [uniqueidentifier] NOT NULL,
	[SOOrderEvent] [varchar](200) NOT NULL,
	[SOOrderEventOrder] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOOrderEvent] PRIMARY KEY NONCLUSTERED 
(
	[SOOrderEventGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the properties of an event that is associated with a Service Order.   This table is a child of  the SOOrderMaster.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOOrderEvent'
GO
/****** Object:  Table [dbo].[SOCategoryType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOCategoryType](
	[SOCategoryTypeGUID] [uniqueidentifier] NOT NULL,
	[SOCategoryTypeCode] [varchar](5) NOT NULL,
	[SOCategoryTypeDescription] [varchar](35) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ExportCode] [varchar](50) NULL,
 CONSTRAINT [PKSOCategoryType] PRIMARY KEY NONCLUSTERED 
(
	[SOCategoryTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines different types of categories that can be associated with a Service Order. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOCategoryType'
GO
/****** Object:  Table [dbo].[SOOrderCategory]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOOrderCategory](
	[SOOrderCategoryGUID] [uniqueidentifier] NOT NULL,
	[SOOrdMstGUID] [uniqueidentifier] NOT NULL,
	[SOCategoryTypeGUID] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOOrderCategory] PRIMARY KEY NONCLUSTERED 
(
	[SOOrderCategoryGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the Category that is requested for this Service Order. This table is a child of  the SOOrderMaster and is optional.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOOrderCategory'
GO
/****** Object:  Table [dbo].[SOEventTemplate]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOEventTemplate](
	[SOEventTemplateGUID] [uniqueidentifier] NOT NULL,
	[SOEventTemplateCode] [varchar](15) NOT NULL,
	[SOEventTemplateDescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOEventGroup] PRIMARY KEY NONCLUSTERED 
(
	[SOEventTemplateGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UKSODefaultEventCode] ON [dbo].[SOEventTemplate] 
(
	[SOEventTemplateCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The default events are used in configuring the Default table which sets select fields when creating a new Service Order.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOEventTemplate'
GO
/****** Object:  Table [dbo].[SOEventDetail]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOEventDetail](
	[SOEventDetGUID] [uniqueidentifier] NOT NULL,
	[SOEventDetOrder] [int] NOT NULL,
	[SOEventGrpGUID] [uniqueidentifier] NOT NULL,
	[SOEventDetDescription] [varchar](200) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOEventDetail] PRIMARY KEY NONCLUSTERED 
(
	[SOEventDetGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Events are step by step instructions that can be defined for use on a Service Order.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOEventDetail'
GO
/****** Object:  Table [dbo].[SOCrewMemTimeOff]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOCrewMemTimeOff](
	[SOCrewMemTOGUID] [uniqueidentifier] NOT NULL,
	[SOCrewMemTOWeekDay] [varchar](7) NOT NULL,
	[SOCrewMemTOStartTime] [datetime] NULL,
	[SOCrewMemTOEndTime] [datetime] NULL,
	[SOCrewMemTOStartDate] [datetime] NULL,
	[SOCrewMemTOEndDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SyUserGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PKSOCrewMemTimeOff] PRIMARY KEY NONCLUSTERED 
(
	[SOCrewMemTOGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This contains any time off for this crew member that makes them unavailable during their normal working assigned schedule.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOCrewMemTimeOff'
GO
/****** Object:  Table [dbo].[SOCrewAssignment]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOCrewAssignment](
	[SOCrewAssignGUID] [uniqueidentifier] NOT NULL,
	[SOCrewGroupGUID] [uniqueidentifier] NOT NULL,
	[SOCrewAssignCrewLeader] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SyUserGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PKSOCrewAssignment] PRIMARY KEY NONCLUSTERED 
(
	[SOCrewAssignGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Crew Assignment table allows the individual Crew Members to be assigned to a Crew Group.   It also will allow one of the members to be selected as the crew lead.   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOCrewAssignment'
GO
/****** Object:  Table [dbo].[SOBillType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOBillType](
	[SOBillTypeGUID] [uniqueidentifier] NOT NULL,
	[SOBillTypeCode] [varchar](5) NOT NULL,
	[SOBillTypeDescription] [varchar](35) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOBillType] PRIMARY KEY NONCLUSTERED 
(
	[SOBillTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines different types of charges that can be associated with a Service Order. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOBillType'
GO
/****** Object:  Table [dbo].[SOAccountCategoryType]    Script Date: 08/17/2012 11:43:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOAccountCategoryType](
	[SOAccountCategoryTypeGUID] [uniqueidentifier] NOT NULL,
	[SOCategoryTypeGUID] [uniqueidentifier] NOT NULL,
	[SYAccountTypeGUID] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOAccountCategoryType] PRIMARY KEY NONCLUSTERED 
(
	[SOAccountCategoryTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Category / Account Type table links a Account Type to a Category Type.  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOAccountCategoryType'
GO
/****** Object:  Table [dbo].[SYServiceMaster]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYServiceMaster](
	[SYServMastGUID] [uniqueidentifier] NOT NULL,
	[SYServMastName] [varchar](15) NOT NULL,
	[SYServMastIdent] [varchar](4) NOT NULL,
	[SYServMastDescription] [varchar](35) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsDeleted] [bit] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYServiceMaster] PRIMARY KEY NONCLUSTERED 
(
	[SYServMastGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Service Master is filled from data loaded from the FlexiBill (FBSERVM).  This becomes a link to that system for billing.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYServiceMaster'
GO
/****** Object:  Table [dbo].[SOCategoryServiceMaster]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOCategoryServiceMaster](
	[SOCategoryServiceMasterGUID] [uniqueidentifier] NOT NULL,
	[SOCategoryTypeGUID] [uniqueidentifier] NOT NULL,
	[SYServMastGUID] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOCategoryServiceMaster] PRIMARY KEY NONCLUSTERED 
(
	[SOCategoryServiceMasterGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Category / Service Master table links a Service Master to a Category Type.  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOCategoryServiceMaster'
GO
/****** Object:  Table [dbo].[SYSecurityType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYSecurityType](
	[SYSecurityTypeGUID] [uniqueidentifier] NOT NULL,
	[SYSecurityTypeCode] [varchar](5) NOT NULL,
	[SYSecurityTypeDescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYSecurityType] PRIMARY KEY NONCLUSTERED 
(
	[SYSecurityTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Security Type table defines the different types of Securities that can be assigned.  This is a pre-populated table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYSecurityType'
GO
/****** Object:  Table [dbo].[SYReadType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYReadType](
	[SYReadTypeGUID] [uniqueidentifier] NOT NULL,
	[SYReadTypeCode] [varchar](5) NOT NULL,
	[SYReadTypeDescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYReadType] PRIMARY KEY NONCLUSTERED 
(
	[SYReadTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UKSYReadTypeCode] ON [dbo].[SYReadType] 
(
	[SYReadTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Read Type table defines the different types of Reads that can be done.  This is a pre-populated table with data such as Dial 1, Dial 2, Current Read, Previous, etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYReadType'
GO
/****** Object:  Table [dbo].[SYReadMethodType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYReadMethodType](
	[SYReadMethodGUID] [uniqueidentifier] NOT NULL,
	[SYReadMethodCode] [varchar](5) NOT NULL,
	[SYReadMethodDescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYReadMethod] PRIMARY KEY NONCLUSTERED 
(
	[SYReadMethodGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains the different Read Methods that are available for meters.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYReadMethodType'
GO
/****** Object:  Table [dbo].[SYPhoneType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYPhoneType](
	[SYPhoneTypeGUID] [uniqueidentifier] NOT NULL,
	[SYPhoneTypeCode] [varchar](5) NOT NULL,
	[SYPhoneTypeDescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYPhoneType] PRIMARY KEY NONCLUSTERED 
(
	[SYPhoneTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of phone numbers that can be entered for a customer.  For example home, cell, work.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYPhoneType'
GO
/****** Object:  Table [dbo].[SYParcel]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYParcel](
	[SYParcelGUID] [uniqueidentifier] NOT NULL,
	[SYParcelNumber] [varchar](100) NOT NULL,
	[SYParcelStreetNo] [varchar](10) NULL,
	[SYParcelStreet] [varchar](30) NULL,
	[SYParcelAddress2] [varchar](30) NULL,
	[SYParcelCity] [varchar](25) NULL,
	[SYParcelState] [varchar](2) NULL,
	[SYParcelZip] [varchar](10) NULL,
	[SYParcelCarrierRte] [varchar](10) NULL,
	[SYParcelTaxNo] [varchar](30) NULL,
	[SYParcelDistrict] [varchar](50) NULL,
	[SYParcelCounty] [varchar](15) NULL,
	[SYParcelCountry] [varchar](30) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYParcel] PRIMARY KEY NONCLUSTERED 
(
	[SYParcelGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE CLUSTERED INDEX [UXSYParcelNumber] ON [dbo].[SYParcel] 
(
	[SYParcelNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The parcel description.   This description is separate from any particular customer.   The table SYParcelCustomer defines which customer belongs to which parcel.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYParcel'
GO
/****** Object:  Table [dbo].[SYOrganization]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[SYOrganization](
	[SYOrgGUID] [uniqueidentifier] NOT NULL,
	[SYOrgName] [varchar](50) NOT NULL,
	[SYOrgAddress1Name] [varchar](50) NULL,
	[SYOrgAddress2Name] [varchar](50) NULL,
	[SYOrgAddress3Name] [varchar](50) NULL,
	[SYOrgCityName] [varchar](40) NULL,
	[SYOrgState1Name] [varchar](2) NULL,
	[SYOrgZipName] [varchar](10) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PKSYOrg] PRIMARY KEY NONCLUSTERED 
(
	[SYOrgGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SYMeterReadCodeType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYMeterReadCodeType](
	[SYMeterReadTypeGUID] [uniqueidentifier] NOT NULL,
	[SYMeterReadTypeCode] [varchar](5) NOT NULL,
	[SYMeterReadTypeDescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYMeterReadType] PRIMARY KEY NONCLUSTERED 
(
	[SYMeterReadTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UKSYMeterReadTypeCode] ON [dbo].[SYMeterReadCodeType] 
(
	[SYMeterReadTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Final Read Type table defines the different types of Final Reads that can be done.  This is a pre-populated table with data such as Dial 1, Dial 2, etc.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYMeterReadCodeType'
GO
/****** Object:  Table [dbo].[SYCustMeterLocationType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustMeterLocationType](
	[SYMeterLocationGUID] [uniqueidentifier] NOT NULL,
	[SYMeterLocationCode] [varchar](5) NOT NULL,
	[SYMeterLocationDescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYMeterLocation] PRIMARY KEY NONCLUSTERED 
(
	[SYMeterLocationGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains the different types of Locations that are available for meters.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustMeterLocationType'
GO
/****** Object:  Table [dbo].[SYCustMeterMeasureType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustMeterMeasureType](
	[SYMeterMeasureGUID] [uniqueidentifier] NOT NULL,
	[SYMeterMeasureCode] [varchar](5) NOT NULL,
	[SYMeterMeasureDescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYMeterMeasure] PRIMARY KEY NONCLUSTERED 
(
	[SYMeterMeasureGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains the different types of measures that are available for meters.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustMeterMeasureType'
GO
/****** Object:  Table [dbo].[SYCustMeterType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustMeterType](
	[SYMeterTypeGUID] [uniqueidentifier] NOT NULL,
	[SYMeterTypeCode] [varchar](5) NOT NULL,
	[SYMeterTypeDescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYMeterType] PRIMARY KEY NONCLUSTERED 
(
	[SYMeterTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains the different types of meters that are available.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustMeterType'
GO
/****** Object:  Table [dbo].[SYCustMeter]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustMeter](
	[SYMtrGUID] [uniqueidentifier] NOT NULL,
	[SYCustGUID] [uniqueidentifier] NULL,
	[SYMtrMeterNo] [varchar](10) NULL,
	[SYMtrRecnum] [float] NULL,
	[SYMtrRegisterNo] [varchar](10) NULL,
	[SYMtrManufacturer] [varchar](15) NULL,
	[SYMtrSetDate] [datetime] NULL,
	[SYMtrDialSize] [float] NULL,
	[SYMtrThroughPut] [float] NULL,
	[SYMtrMultiplier] [float] NULL,
	[SYMeterMeasureGUID] [uniqueidentifier] NULL,
	[SYMeterTypeGUID] [uniqueidentifier] NULL,
	[SYMtrModIdent] [varchar](10) NULL,
	[SYMtrTestcir] [varchar](2) NULL,
	[SYMtrMxu] [varchar](1) NULL,
	[SYMtrActiveStatus] [bit] NULL,
	[SYMtrPipeSize] [float] NULL,
	[SYMtrDemMultiplier] [float] NULL,
	[SYMtrNoteInd] [bit] NULL,
	[SYMtrFreeForm] [varchar](32) NULL,
	[SYMtrLat] [float] NULL,
	[SYMtrLong] [float] NULL,
	[SYMtrBillCorrFlag] [bit] NULL,
	[SYMtrException] [bit] NULL,
	[SYMtrDial2RegNo] [varchar](10) NULL,
	[SYReadMethodGUID] [uniqueidentifier] NULL,
	[SYMtrMeterLocNum] [varchar](4) NULL,
	[SYMtrTransmitterNo] [varchar](10) NULL,
	[SYMtrConsecutiveEst] [int] NULL,
	[SYMtrPressureFactor] [float] NULL,
	[SYMtrGenericField] [varchar](20) NULL,
	[SYMtrDeviceCode] [varchar](1) NULL,
	[SYMtrRatchetDemandCons] [float] NULL,
	[SYMtrTestcir1] [varchar](2) NULL,
	[SYMtrDeviceCode1] [varchar](1) NULL,
	[SYMeterLocationGUID] [uniqueidentifier] NULL,
	[SYMtrItronInd1] [smallint] NULL,
	[SYMtrTempDialSize] [float] NULL,
	[SYMtrReplacedPrevReadDate] [datetime] NULL,
	[SYMtrMeterIdent] [int] NULL,
	[SYMtrSharedMeterMainSub] [smallint] NULL,
	[SYMtrSharedMeterSYCustGUID] [uniqueidentifier] NULL,
	[SYMtrSharedMeterSYMtrGUID] [uniqueidentifier] NULL,
	[SYMtrSharedMeterSplitMethod] [smallint] NULL,
	[SYMtrSharedMeterSplitUnitsPC] [float] NULL,
	[SYMtrJustReplaced] [bit] NULL,
	[SYMtrLocationDescription] [varchar](100) NULL,
	[SYMtrActualDemReplacedRead] [float] NULL,
	[SYMtrMRInitials] [varchar](10) NULL,
	[SYMtrInactiveDate] [datetime] NULL,
	[SYMtrModel] [varchar](20) NULL,
	[SYMtrAverageConsumption] [float] NULL,
	[SYMtrDemandDialSize] [float] NULL,
	[SYMtrReadingMultiplier] [float] NULL,
	[SYMtrCurbStopLoc] [varchar](8000) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYMeter] PRIMARY KEY NONCLUSTERED 
(
	[SYMtrGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IXMeterCustomer] ON [dbo].[SYCustMeter] 
(
	[SYCustGUID] ASC,
	[SYMeterTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains the meter information for an account.   There can be multiple meters for one account differentiated by the SYMtrMeterTypeGUID.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustMeter'
GO
/****** Object:  Table [dbo].[SOOrderMeter]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOOrderMeter](
	[SOOrderMeterGUID] [uniqueidentifier] NOT NULL,
	[SOOrdMstGUID] [uniqueidentifier] NOT NULL,
	[SYMtrGUID] [uniqueidentifier] NULL,
	[SOOrderMeterMeterNumOK] [bit] NULL,
	[SOOrderMeterNewRegNum] [varchar](10) NULL,
	[SOOrderMeterOldRegNum] [varchar](10) NULL,
	[SOOrderMeterRegNumOK] [bit] NULL,
	[SOOrderMeterMXUNum] [varchar](10) NULL,
	[SOOrderMeterMXUDate] [datetime] NULL,
	[SOOrderMeterOutsideReading] [float] NULL,
	[SOOrderMeterOutsideReadDate] [datetime] NULL,
	[SOOrderMeterLocationofRemote] [varchar](30) NULL,
	[SOOrderMeterSealOKOutside] [bit] NULL,
	[SOOrderMeterSealOKInside] [bit] NULL,
	[SOOrderMeterCurbBoxOK] [bit] NULL,
	[SOOrderMeterCurbReason] [varchar](30) NULL,
	[SOOrderMeterDCInstalled] [bit] NULL,
	[SOOrderMeterDCWhy] [varchar](30) NULL,
	[SOOrderMeterCurbStopLoc] [varchar](8000) NULL,
	[SOOrderMeterTransmitterNum] [varchar](10) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOOrderMeterMaster] PRIMARY KEY NONCLUSTERED 
(
	[SOOrderMeterGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the properties of a meter that is associated with the account that is connected to the Service Order.   This table is a child of  the SOOrderMaster.  This data is defaulted from the Meter information that is on file for this account.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOOrderMeter'
GO
/****** Object:  Table [dbo].[SOOrderMeterRead]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOOrderMeterRead](
	[SOOrderMeterReadGUID] [uniqueidentifier] NOT NULL,
	[SOOrderMeterGUID] [uniqueidentifier] NOT NULL,
	[SYMeterReadTypeGUID] [uniqueidentifier] NOT NULL,
	[SOOrderMeterFinalRead] [bit] NOT NULL,
	[SOOrderMeterReading] [float] NOT NULL,
	[SOOrderMeterConsumption] [float] NOT NULL,
	[SOOrderMeterReadDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOMeterRead] PRIMARY KEY NONCLUSTERED 
(
	[SOOrderMeterReadGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Reads done for a meter for a Service Order.   This table is a child of the SOOrderMeter table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOOrderMeterRead'
GO
/****** Object:  Table [dbo].[SYImpExpTable]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYImpExpTable](
	[SYImpExpTableGUID] [uniqueidentifier] NOT NULL,
	[SYImpExpTableName] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYImpExpTable] PRIMARY KEY NONCLUSTERED 
(
	[SYImpExpTableGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the table names used for Importing & Exporting Data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYImpExpTable'
GO
/****** Object:  Table [dbo].[SYImpExpFields]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYImpExpFields](
	[SYImpExpFieldsGUID] [uniqueidentifier] NOT NULL,
	[SYImpExpTableGUID] [uniqueidentifier] NOT NULL,
	[SYImpExpFieldName] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYImpExpFields] PRIMARY KEY NONCLUSTERED 
(
	[SYImpExpFieldsGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the field names used for Importing & Exporting Data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYImpExpFields'
GO
/****** Object:  Table [dbo].[SYImpExpTranslate]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYImpExpTranslate](
	[SYImpExpTranslateGUID] [uniqueidentifier] NOT NULL,
	[SYImpExpFieldsGUID] [uniqueidentifier] NOT NULL,
	[SYImpExpInternalID] [uniqueidentifier] NOT NULL,
	[SYImpExpFieldsExtValue] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYImpExpTranslate] PRIMARY KEY NONCLUSTERED 
(
	[SYImpExpTranslateGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the Translation used for Importing & Exporting Data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYImpExpTranslate'
GO
/****** Object:  Table [dbo].[SYForm]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYForm](
	[SYFormGUID] [uniqueidentifier] NOT NULL,
	[SYFormDescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYForm] PRIMARY KEY NONCLUSTERED 
(
	[SYFormGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Form table contains a list of all items available to be assigned for security purposes ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYForm'
GO
/****** Object:  Table [dbo].[SYUserRoleForm]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYUserRoleForm](
	[SYUserRoleFormGUID] [uniqueidentifier] NOT NULL,
	[SYFormGUID] [uniqueidentifier] NOT NULL,
	[SYUserRoleGUID] [uniqueidentifier] NOT NULL,
	[SYSecurityTypeGUID] [uniqueidentifier] NOT NULL,
	[SYUserRoleFormAllowAction] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYUserRoleForm] PRIMARY KEY CLUSTERED 
(
	[SYUserRoleFormGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UXUserRoleFormAccess] ON [dbo].[SYUserRoleForm] 
(
	[SYUserRoleGUID] ASC,
	[SYFormGUID] ASC,
	[SYSecurityTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table links the forms to a User Role. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYUserRoleForm'
GO
/****** Object:  Table [dbo].[SYCustomTableList]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustomTableList](
	[SYCustomTableGUID] [uniqueidentifier] NOT NULL,
	[SYCustomTableCode] [varchar](5) NOT NULL,
	[SYCustomTableDescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYCustomTableList] PRIMARY KEY NONCLUSTERED 
(
	[SYCustomTableGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains a list of tables in the system that users are allowed to define custom fields for.   This will then need to turn on a field in the appropriate screen for that table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustomTableList'
GO
/****** Object:  Table [dbo].[SYCustomFieldType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustomFieldType](
	[SYCstFldTypeGUID] [uniqueidentifier] NOT NULL,
	[SYCstFldTypeCode] [varchar](5) NOT NULL,
	[SYCstFldTypeDescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYCustomFieldType] PRIMARY KEY NONCLUSTERED 
(
	[SYCstFldTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the type of field being stored in SYCustomField.   While all actual values are being kept as a varchar this type can be used for validating data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustomFieldType'
GO
/****** Object:  Table [dbo].[SYCustomFieldAttribute]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustomFieldAttribute](
	[SYCstFldAttGUID] [uniqueidentifier] NOT NULL,
	[SYCustomTableGUID] [uniqueidentifier] NOT NULL,
	[SYCstFldTypeGUID] [uniqueidentifier] NOT NULL,
	[SYCstFldAttRightDec] [int] NULL,
	[SYCstFldAttLeftDec] [int] NULL,
	[SYCstFldAttAllowNull] [bit] NOT NULL,
	[SYCstFldAttActive] [bit] NOT NULL,
	[SYCstFldAttDefault] [varchar](100) NULL,
	[SYCstFldAttLabel] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYCustomFieldAttribute] PRIMARY KEY NONCLUSTERED 
(
	[SYCstFldAttGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information regarding the type of custom user field that the user wants to store.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustomFieldAttribute'
GO
/****** Object:  Table [dbo].[SYCustomField]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustomField](
	[SYCustomFieldGUID] [uniqueidentifier] NOT NULL,
	[SYCstFldAttGUID] [uniqueidentifier] NOT NULL,
	[SYCustomFieldLookupGUID] [uniqueidentifier] NOT NULL,
	[SYCustomFieldString] [varchar](100) NULL,
	[SYCustomFieldDate] [datetime] NULL,
	[SYCustomFieldNumber] [float] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYCustomField] PRIMARY KEY NONCLUSTERED 
(
	[SYCustomFieldGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The table to store the User Custom field data.   This table contains the actual values that are being stored.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustomField'
GO
/****** Object:  Table [dbo].[SYParcelCustomer]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYParcelCustomer](
	[SYParcelCustGUID] [uniqueidentifier] NOT NULL,
	[SYParcelGUID] [uniqueidentifier] NOT NULL,
	[SYCustGUID] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[CustUpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYParcelCustomer] PRIMARY KEY NONCLUSTERED 
(
	[SYParcelCustGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains the link between the SYCustomer table and the SYParcel table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYParcelCustomer'
GO
/****** Object:  Table [dbo].[SYCustUser]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustUser](
	[SYCustUserGUID] [uniqueidentifier] NOT NULL,
	[SYCustGUID] [uniqueidentifier] NOT NULL,
	[SYCustUserLogin] [varchar](50) NOT NULL,
	[SYCustUserFirstName] [varchar](50) NULL,
	[SYCustUserLastName] [varchar](50) NULL,
	[SYCustUserPassword] [varchar](50) NOT NULL,
	[SYCustUserIsActive] [bit] NOT NULL,
	[SYCustUserEmail] [varchar](50) NULL,
	[SYCustUserLockedUntil] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOCustUser] PRIMARY KEY NONCLUSTERED 
(
	[SYCustUserGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Consumer access table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustUser'
GO
/****** Object:  Table [dbo].[SYCustServMaster]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYCustServMaster](
	[SYCustServMasterGUID] [uniqueidentifier] NOT NULL,
	[SYCustGUID] [uniqueidentifier] NOT NULL,
	[SYServMastGUID] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYCustServMaster] PRIMARY KEY NONCLUSTERED 
(
	[SYCustServMasterGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the Service Name that is assigned to this Account. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustServMaster'
GO
/****** Object:  Table [dbo].[SYCustPhone]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustPhone](
	[SYCustPhoneGUID] [uniqueidentifier] NOT NULL,
	[SYCustGUID] [uniqueidentifier] NOT NULL,
	[SYPhoneTypeGUID] [uniqueidentifier] NOT NULL,
	[SYCustPhone] [varchar](15) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYCustPhone] PRIMARY KEY NONCLUSTERED 
(
	[SYCustPhoneGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone numbers for a customer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustPhone'
GO
/****** Object:  Table [dbo].[SYCustMeterRead]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustMeterRead](
	[SyMtrReadGUID] [uniqueidentifier] NOT NULL,
	[SYMtrGUID] [uniqueidentifier] NOT NULL,
	[SYReadTypeGUID] [uniqueidentifier] NOT NULL,
	[SyMtrReading] [float] NOT NULL,
	[SyMtrReadDate] [datetime] NULL,
	[SyMtrReadPrev] [float] NULL,
	[SyMtrReadPrevDate] [datetime] NULL,
	[SyMtrReadCurr] [float] NULL,
	[SyMtrReadCurrDate] [datetime] NULL,
	[SyMtrReadCons] [float] NULL,
	[SyMtrReadCode] [varchar](1) NULL,
	[SyMtrReadReplacedNo] [varchar](10) NULL,
	[SyMtrReadReplacedDate] [datetime] NULL,
	[SyMtrReadReplacedRead] [float] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSyMtrRead] PRIMARY KEY NONCLUSTERED 
(
	[SyMtrReadGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains the meter reads.   It is a child of SYMeter.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustMeterRead'
GO
/****** Object:  Table [dbo].[SYCustMeterMemo]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustMeterMemo](
	[SYMtrMemoGUID] [uniqueidentifier] NOT NULL,
	[SYMtrGUID] [uniqueidentifier] NOT NULL,
	[SYMtrMemo] [varchar](8000) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYMeterMemo] PRIMARY KEY NONCLUSTERED 
(
	[SYMtrMemoGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains the meter memos.   It is a child of SYMeter.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustMeterMemo'
GO
/****** Object:  Table [dbo].[SOOrderNewMeter]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOOrderNewMeter](
	[SOOrderNewMeterGUID] [uniqueidentifier] NOT NULL,
	[SOOrderNewMeterUpdateMasterSystem] [bit] NOT NULL,
	[SOOrderMeterReplacedDate] [datetime] NULL,
	[SOOrderNewMeterFinalRead] [float] NULL,
	[SOOrderNewMeterFinalConsumption] [float] NULL,
	[SOOrderNewMeterNewNum] [varchar](10) NULL,
	[SOOrderNewMeterNewRead] [float] NULL,
	[SOOrderNewMeterRegister] [varchar](10) NULL,
	[SOOrderNewMeterManufacturer] [varchar](15) NULL,
	[SOOrderNewMeterMultiplier] [float] NULL,
	[SOOrderNewMeterDialSize] [float] NULL,
	[SOOrderNewMeterPipeSize] [float] NULL,
	[SOOrderNewMeterTestCircle] [varchar](2) NULL,
	[SOOrderNewMeterModIdent] [varchar](10) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SYMtrGUID] [uniqueidentifier] NULL,
	[SOOrdMstGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PKSONewMeter] PRIMARY KEY NONCLUSTERED 
(
	[SOOrderNewMeterGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the properties of a new meter when installed as part of a Service Order.   This table is a child of  the SOOrderMaster.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOOrderNewMeter'
GO
/****** Object:  Table [dbo].[SYCustMemo]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SYCustMemo](
	[SYCustMemoGUID] [uniqueidentifier] NOT NULL,
	[SYCustGUID] [uniqueidentifier] NOT NULL,
	[SYCustMemo] [varchar](8000) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSYCustMemo] PRIMARY KEY NONCLUSTERED 
(
	[SYCustMemoGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains the memo fields for the SYCustomer table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SYCustMemo'
GO
/****** Object:  Table [dbo].[SOOrderHistory]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOOrderHistory](
	[SOOrderHistoryGUID] [uniqueidentifier] NOT NULL,
	[SOOrdMstGUID] [uniqueidentifier] NOT NULL,
	[SOWorkStatusGUID] [uniqueidentifier] NULL,
	[SOOrderActionDate] [datetime] NOT NULL,
	[SOOrderHistComment] [varchar](2000) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOOrder] PRIMARY KEY NONCLUSTERED 
(
	[SOOrderHistoryGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains a history of all activity associated with a Service Order.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOOrderHistory'
GO
/****** Object:  Table [dbo].[SOStatusRequest]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOStatusRequest](
	[SOStatusReqGUID] [uniqueidentifier] NOT NULL,
	[SOStatusReqCode] [varchar](5) NOT NULL,
	[SOStatusReqDescription] [varchar](35) NOT NULL,
	[SOStatusReqDefault] [bit] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOStatusRequest] PRIMARY KEY NONCLUSTERED 
(
	[SOStatusReqGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the types of request statuses that can be given to a consumer request.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOStatusRequest'
GO
/****** Object:  Table [dbo].[SOConfiguration]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOConfiguration](
	[SOConfigGUID] [uniqueidentifier] NOT NULL,
	[SOConfigReportHeader] [varchar](35) NULL,
	[SOConfigServiceOrdersHeader] [varchar](35) NULL,
	[SOConfigDefaultCrewReportHeader] [varchar](35) NULL,
	[SOConfigDefaultServiceOrderForm] [varchar](35) NULL,
	[SOConfigGenerateSoNumbers] [bit] NULL,
	[SOConfigGenerateServiceOrder] [bit] NULL,
	[SOConfigGenerateSOPayment] [bit] NULL,
	[SOConfigChangeStatusCode] [bit] NULL,
	[SOConfigDaysMaxAllowedReq] [int] NULL,
	[SOConfigDaysMinAllowedReq] [int] NULL,
	[SOSOCGUIDDefCust] [uniqueidentifier] NULL,
	[SOSOCGUIDDefPublic] [uniqueidentifier] NULL,
	[SOConfigDefFirstAcctIdent] [bit] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CustomersImported] [bit] NULL,
 CONSTRAINT [PK_SOConfiguration] PRIMARY KEY CLUSTERED 
(
	[SOConfigGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier for this table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOConfigGUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The client shall be able to define a heading that will be printed on all reports.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOConfigReportHeader'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The client shall be able to define a heading that will be printed on all Service orders.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOConfigServiceOrdersHeader'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The client shall be able to define a heading that will be printed on the Crew report.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOConfigDefaultCrewReportHeader'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the Service Order form so that custom forms can override the standard form.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOConfigDefaultServiceOrderForm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The client shall be able to define whether the system will automatically generate a service Order number, or if will be manually entered.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOConfigGenerateSoNumbers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The client shall be able to define whether the system will automatically generate service orders for shutoff notices.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOConfigGenerateServiceOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The client shall be able to define whether the system will automatically generate service orders for shutoff notices.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOConfigGenerateSOPayment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The client shall be able to define whether the system will change the Shutoff code to be locked once the service order has been completed.  This option will need to flow down to Flexibill when the user gets the completed shutoff Service Orders.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOConfigChangeStatusCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The citizen shall be allowed to request a date and time for the service with the maximum and minimum date defined by the system configuration, if allowed for this service type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOConfigDaysMaxAllowedReq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The citizen shall be allowed to request a date and time for the service with the maximum and minimum date defined by the system configuration, if allowed for this service type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOConfigDaysMinAllowedReq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source of call shall default to the configuration option in the configuration table, for orders entered by a consumer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOSOCGUIDDefCust'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source of call shall default to the configuration option in the configuration table, for orders entered by the general public.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOSOCGUIDDefPublic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The client shall be able to enter an ID that belongs to this account number to identify the correct resident.  This field will automatically default to the first id of the selected account number if this configuration option is true, otherwise it will use the last.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'SOConfigDefFirstAcctIdent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this option is true the customer information is imported from another system and should be read only.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration', @level2type=N'COLUMN',@level2name=N'CustomersImported'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Sales Order Configuration table contains general fields for the setup and configuration of the Sales Order system.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOConfiguration'
GO
/****** Object:  Table [dbo].[SOSkillType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOSkillType](
	[SOSkillTypeGUID] [uniqueidentifier] NOT NULL,
	[SOSkillTypeCode] [varchar](5) NOT NULL,
	[SOSkillTypeDescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOSkillType] PRIMARY KEY NONCLUSTERED 
(
	[SOSkillTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is a list of the types of skills that a crew member can obtain.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOSkillType'
GO
/****** Object:  Table [dbo].[SOCrewMemSkill]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOCrewMemSkill](
	[SOCrewMemSkillGUID] [uniqueidentifier] NOT NULL,
	[SOSkillTypeGUID] [uniqueidentifier] NOT NULL,
	[SOCrewMemSkillWeekDay] [varchar](7) NOT NULL,
	[SOCrewMemSkillStartTime] [datetime] NULL,
	[SOCrewMemSkillEndTime] [datetime] NULL,
	[SOCrewMemSkillStartDate] [datetime] NULL,
	[SOCrewMemSkillEndDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SyUserGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PKSOCrewMemSkill] PRIMARY KEY NONCLUSTERED 
(
	[SOCrewMemSkillGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains a list of skills that this crew member has obtained.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOCrewMemSkill'
GO
/****** Object:  Table [dbo].[SOSimpleView]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOSimpleView](
	[SOSimpleViewGUID] [uniqueidentifier] NOT NULL,
	[SOSimpleViewName] [varchar](100) NOT NULL,
	[SOSimpleViewDesc] [varchar](100) NOT NULL,
	[SOSimpleDisplay] [bit] NOT NULL,
	[SoSimpleUserGUID] [uniqueidentifier] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOSimpleView] PRIMARY KEY NONCLUSTERED 
(
	[SOSimpleViewGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The table to store what Views display on the Service Order simple view.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOSimpleView'
GO
/****** Object:  Table [dbo].[SORateType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SORateType](
	[SORateTypeGUID] [uniqueidentifier] NOT NULL,
	[SORateTypeCode] [varchar](5) NOT NULL,
	[SORateTypeDescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSORateType] PRIMARY KEY NONCLUSTERED 
(
	[SORateTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Rate Type table is used in defining the types of rates available for the different types of services.   This table is pre-populated.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SORateType'
GO
/****** Object:  Table [dbo].[SOServiceActionType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOServiceActionType](
	[SOServTypeGUID] [uniqueidentifier] NOT NULL,
	[SOServTypeCode] [varchar](5) NOT NULL,
	[SOServTypeDescription] [varchar](35) NOT NULL,
	[SORateTypeGUID] [uniqueidentifier] NOT NULL,
	[SOPriorGUID] [uniqueidentifier] NOT NULL,
	[SOServTypeCustomerSelect] [bit] NOT NULL,
	[SOServTypePublicSelect] [bit] NOT NULL,
	[SOServTypeAllowReqDays] [bit] NULL,
	[SOServTypeAssignSchedule] [bit] NULL,
	[SOServTypeRate] [float] NULL,
	[SOServTypeDefaultHours] [float] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[SOServTypeAutoCreateSO] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[isBillable] [bit] NOT NULL,
	[FlatAmount] [float] NULL,
	[SOCategoryTypeGUID] [uniqueidentifier] NULL,
 CONSTRAINT [PKServiceType] PRIMARY KEY NONCLUSTERED 
(
	[SOServTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UKSOServTypeCode] ON [dbo].[SOServiceActionType] 
(
	[SOServTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Service Types is a user populated table that defines the types of Service Orders that can be created.   It also defines whether a service can be directly requested by a consumer via the web portal, both for customers with current accounts and public customers.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOServiceActionType'
GO
/****** Object:  Table [dbo].[SOServiceSkillType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOServiceSkillType](
	[SOServSkillTypeGUID] [uniqueidentifier] NOT NULL,
	[SOSkillTypeGUID] [uniqueidentifier] NOT NULL,
	[SOServTypeGUID] [uniqueidentifier] NOT NULL,
	[SOSkillTypeDescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOServSkillType] PRIMARY KEY NONCLUSTERED 
(
	[SOServSkillTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains a list of the skills needed to perform this service.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOServiceSkillType'
GO
/****** Object:  Table [dbo].[SOCategoryServiceType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOCategoryServiceType](
	[SOCategoryServiceTypeGUID] [uniqueidentifier] NOT NULL,
	[SOCategoryTypeGUID] [uniqueidentifier] NOT NULL,
	[SOServTypeGUID] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOCategoryServiceType] PRIMARY KEY NONCLUSTERED 
(
	[SOCategoryServiceTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Category / Service Type table links a Service Type to a Category Type.  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOCategoryServiceType'
GO
/****** Object:  Table [dbo].[SOResponseType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOResponseType](
	[SOResponseTypeGUID] [uniqueidentifier] NOT NULL,
	[SOResponseTypeCode] [varchar](5) NOT NULL,
	[SOResponseTypeDescription] [varchar](35) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOResponseType] PRIMARY KEY NONCLUSTERED 
(
	[SOResponseTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines different types of responses that are associated with a Service Order.   This table is pre-populated.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOResponseType'
GO
/****** Object:  Table [dbo].[SORequest]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SORequest](
	[SORequestGUID] [uniqueidentifier] NOT NULL,
	[SORequestOrderNumber] [varchar](22) NOT NULL,
	[SORequestCustomerAcctNo] [int] NULL,
	[SORequestCustomerLastName] [varchar](35) NULL,
	[SORequestCustomerFirstName] [varchar](35) NULL,
	[SORequestEMail] [varchar](50) NULL,
	[SORequestStreet] [varchar](30) NULL,
	[SORequestStreetNum] [varchar](10) NULL,
	[SORequestAptNo] [varchar](5) NULL,
	[SORequestCity] [varchar](40) NULL,
	[SORequestState] [varchar](2) NULL,
	[SORequestZIP] [varchar](10) NULL,
	[SORequestEnterDate] [datetime] NOT NULL,
	[SORequestEnterTime] [time](7) NOT NULL,
	[SORequestRequestedDate] [datetime] NULL,
	[SORequestRequestedTime] [time](7) NULL,
	[SOServTypeGUID] [uniqueidentifier] NULL,
	[SOSOCGUID] [uniqueidentifier] NOT NULL,
	[SOStatusReqGUID] [uniqueidentifier] NOT NULL,
	[SORequestPrint] [bit] NULL,
	[SORequestProcessedDate] [datetime] NULL,
	[SORequestProcessedTime] [time](7) NULL,
	[SOPriorGUID] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSORequest] PRIMARY KEY NONCLUSTERED 
(
	[SORequestGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE CLUSTERED INDEX [UXSORequestOrderNumber] ON [dbo].[SORequest] 
(
	[SORequestOrderNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table is contains the Service Request entered by the Consumer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SORequest'
GO
/****** Object:  Table [dbo].[SORequestStatusHistory]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SORequestStatusHistory](
	[SORequestStatusGUID] [uniqueidentifier] NOT NULL,
	[SOStatusReqGUID] [uniqueidentifier] NOT NULL,
	[SORequestGUID] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSORequestStatus] PRIMARY KEY NONCLUSTERED 
(
	[SORequestStatusGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains a history of all Request Status associated with a Service Request.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SORequestStatusHistory'
GO
/****** Object:  Table [dbo].[SORequestServiceOrder]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SORequestServiceOrder](
	[SOReqSrvOrdGUID] [uniqueidentifier] NOT NULL,
	[SORequestGUID] [uniqueidentifier] NOT NULL,
	[SOOrdMstGUID] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSORequestServiceOrder] PRIMARY KEY NONCLUSTERED 
(
	[SOReqSrvOrdGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Request / Service Order table links a Service Request to a Service Order.  This allows multiple Service Orders to be created for one Service Request or visa versa. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SORequestServiceOrder'
GO
/****** Object:  Table [dbo].[SORequestPhone]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SORequestPhone](
	[SOReqPhoneGUID] [uniqueidentifier] NOT NULL,
	[SORequestGUID] [uniqueidentifier] NOT NULL,
	[SYPhoneTypeGUID] [uniqueidentifier] NOT NULL,
	[SOReqPhone] [varchar](15) NOT NULL,
	[SOReqPhoneContactName] [varchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOReqPhone] PRIMARY KEY NONCLUSTERED 
(
	[SOReqPhoneGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone numbers entered by the consumer for a Service Request.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SORequestPhone'
GO
/****** Object:  Table [dbo].[SORequestMemo]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SORequestMemo](
	[SORequestMemoGUID] [uniqueidentifier] NOT NULL,
	[SORequestGUID] [uniqueidentifier] NOT NULL,
	[SORequestMemoVisibleToCust] [bit] NOT NULL,
	[SORequestMemo] [varchar](8000) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSORequestMemo] PRIMARY KEY NONCLUSTERED 
(
	[SORequestMemoGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consumer entered phone numbers for a Service Request' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SORequestMemo'
GO
/****** Object:  Table [dbo].[SOProcessType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOProcessType](
	[SOProcessTypeGUID] [uniqueidentifier] NOT NULL,
	[SOProcessTypeCode] [varchar](5) NOT NULL,
	[SOProcessTypeDescription] [varchar](35) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOProcessType] PRIMARY KEY NONCLUSTERED 
(
	[SOProcessTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [UKSOProcessTypeCode] ON [dbo].[SOProcessType] 
(
	[SOProcessTypeCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The process type is used by the Default table to determine the type of Default.   Currently this table is pre-populated with Payment and Shutoff.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOProcessType'
GO
/****** Object:  Table [dbo].[SODefaults]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SODefaults](
	[SODefGUID] [uniqueidentifier] NOT NULL,
	[SOProcessTypeGUID] [uniqueidentifier] NOT NULL,
	[SYServMastGUID] [uniqueidentifier] NOT NULL,
	[SOCrewGroupGUID] [uniqueidentifier] NULL,
	[SOPriorGUID] [uniqueidentifier] NULL,
	[SOServTypeGUID] [uniqueidentifier] NULL,
	[SOEventGrpGUID] [uniqueidentifier] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SOShutoffServTypeGUID] [uniqueidentifier] NOT NULL,
	[SOPaymentServTypeGUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PKSODefaults] PRIMARY KEY NONCLUSTERED 
(
	[SODefGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Service Order Default table is used to automatically default select values when creating a new Service Order.  These defaults are based on the Service.  The Process Type field defines whether this default is for a payment or for a shutoff. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SODefaults'
GO
/****** Object:  Table [dbo].[SOOrderServiceType]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOOrderServiceType](
	[SOOrderServTypeGUID] [uniqueidentifier] NOT NULL,
	[SOOrdMstGUID] [uniqueidentifier] NOT NULL,
	[SOServTypeGUID] [uniqueidentifier] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CompleteDate] [datetime] NULL,
	[ExportCode] [varchar](50) NULL,
 CONSTRAINT [PKSOOrderServiceType] PRIMARY KEY NONCLUSTERED 
(
	[SOOrderServTypeGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the Service Types that are requested for this Service Order. This table is a child of  the SOOrderMaster.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOOrderServiceType'
GO
/****** Object:  Table [dbo].[SOOrderServResponse]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SOOrderServResponse](
	[SOOrderServResponseGUID] [uniqueidentifier] NOT NULL,
	[SOOrderServTypeGUID] [uniqueidentifier] NOT NULL,
	[SOResponseTypeGUID] [uniqueidentifier] NOT NULL,
	[SOOrderServResponseComment] [varchar](200) NULL,
	[SOOrderServRespCompletedDate] [date] NULL,
	[SOOrderServRespCompletedTime] [time](7) NULL,
	[SOCrewGroupGUID] [uniqueidentifier] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PKSOOrderServResponse] PRIMARY KEY NONCLUSTERED 
(
	[SOOrderServResponseGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table defines the Responses that are associated with a Service Order.   This table is a child of  the SOOrderServices.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOOrderServResponse'
GO
/****** Object:  Table [dbo].[SOOrderServCharge]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOOrderServCharge](
	[SOOrderServChrgGUID] [uniqueidentifier] NOT NULL,
	[SOOrderServTypeGUID] [uniqueidentifier] NOT NULL,
	[SORateTypeGUID] [uniqueidentifier] NULL,
	[SOBillTypeGUID] [uniqueidentifier] NOT NULL,
	[SOOrderServChrgRate] [float] NULL,
	[SOOrderServChrgQty] [float] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[isBillable] [bit] NOT NULL,
	[SOCategoryTypeGUID] [uniqueidentifier] NULL,
	[ChargeAmount] [float] NULL,
 CONSTRAINT [PKSOOrderServCharge] PRIMARY KEY NONCLUSTERED 
(
	[SOOrderServChrgGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This table contains the charges that are associated with this Service Order. This table is a child of  the SOOrderServiceType.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SOOrderServCharge'
GO
/****** Object:  Table [dbo].[SOOrderNumber]    Script Date: 08/17/2012 11:43:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOOrderNumber](
	[SOOrderNumberGUID] [uniqueidentifier] NOT NULL,
	[SOOrderNumberValue] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreateUserGUID] [uniqueidentifier] NOT NULL,
	[UpdateDate] [datetime] NOT NULL,
	[UpdateUserGUID] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_SOOrderNumber] PRIMARY KEY NONCLUSTERED 
(
	[SOOrderNumberGUID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Default [DF_SOSimpleView_SOSimpleViewGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOSimpleView] ADD  CONSTRAINT [DF_SOSimpleView_SOSimpleViewGUID]  DEFAULT (newid()) FOR [SOSimpleViewGUID]
GO
/****** Object:  Default [DF_SOWorkStatus_SOWorkStatusGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOWorkStatus] ADD  CONSTRAINT [DF_SOWorkStatus_SOWorkStatusGUID]  DEFAULT (newid()) FOR [SOWorkStatusGUID]
GO
/****** Object:  ForeignKey [FKSOCatAcctCategoryTypeCreateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOAccountCategoryType]  WITH CHECK ADD  CONSTRAINT [FKSOCatAcctCategoryTypeCreateSYUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOAccountCategoryType] CHECK CONSTRAINT [FKSOCatAcctCategoryTypeCreateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSOCatAcctCategoryTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOAccountCategoryType]  WITH CHECK ADD  CONSTRAINT [FKSOCatAcctCategoryTypeGUID] FOREIGN KEY([SOCategoryTypeGUID])
REFERENCES [dbo].[SOCategoryType] ([SOCategoryTypeGUID])
GO
ALTER TABLE [dbo].[SOAccountCategoryType] CHECK CONSTRAINT [FKSOCatAcctCategoryTypeGUID]
GO
/****** Object:  ForeignKey [FKSOCatAcctCategoryTypeUpdateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOAccountCategoryType]  WITH CHECK ADD  CONSTRAINT [FKSOCatAcctCategoryTypeUpdateSYUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOAccountCategoryType] CHECK CONSTRAINT [FKSOCatAcctCategoryTypeUpdateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSOBillTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOBillType]  WITH CHECK ADD  CONSTRAINT [FKSOBillTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOBillType] CHECK CONSTRAINT [FKSOBillTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOBillTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOBillType]  WITH CHECK ADD  CONSTRAINT [FKSOBillTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOBillType] CHECK CONSTRAINT [FKSOBillTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOCatSrvMasterCatGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCategoryServiceMaster]  WITH CHECK ADD  CONSTRAINT [FKSOCatSrvMasterCatGUID] FOREIGN KEY([SOCategoryTypeGUID])
REFERENCES [dbo].[SOCategoryType] ([SOCategoryTypeGUID])
GO
ALTER TABLE [dbo].[SOCategoryServiceMaster] CHECK CONSTRAINT [FKSOCatSrvMasterCatGUID]
GO
/****** Object:  ForeignKey [FKSOCatSrvMasterCreateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCategoryServiceMaster]  WITH CHECK ADD  CONSTRAINT [FKSOCatSrvMasterCreateSYUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCategoryServiceMaster] CHECK CONSTRAINT [FKSOCatSrvMasterCreateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSOCatSrvMasterSMGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCategoryServiceMaster]  WITH CHECK ADD  CONSTRAINT [FKSOCatSrvMasterSMGUID] FOREIGN KEY([SYServMastGUID])
REFERENCES [dbo].[SYServiceMaster] ([SYServMastGUID])
GO
ALTER TABLE [dbo].[SOCategoryServiceMaster] CHECK CONSTRAINT [FKSOCatSrvMasterSMGUID]
GO
/****** Object:  ForeignKey [FKSOCatSrvMasterUpdateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCategoryServiceMaster]  WITH CHECK ADD  CONSTRAINT [FKSOCatSrvMasterUpdateSYUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCategoryServiceMaster] CHECK CONSTRAINT [FKSOCatSrvMasterUpdateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSOCatSrvCategoryTypeCreateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCategoryServiceType]  WITH CHECK ADD  CONSTRAINT [FKSOCatSrvCategoryTypeCreateSYUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCategoryServiceType] CHECK CONSTRAINT [FKSOCatSrvCategoryTypeCreateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSOCatSrvCategoryTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCategoryServiceType]  WITH CHECK ADD  CONSTRAINT [FKSOCatSrvCategoryTypeGUID] FOREIGN KEY([SOCategoryTypeGUID])
REFERENCES [dbo].[SOCategoryType] ([SOCategoryTypeGUID])
GO
ALTER TABLE [dbo].[SOCategoryServiceType] CHECK CONSTRAINT [FKSOCatSrvCategoryTypeGUID]
GO
/****** Object:  ForeignKey [FKSOCatSrvCategoryTypeUpdateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCategoryServiceType]  WITH CHECK ADD  CONSTRAINT [FKSOCatSrvCategoryTypeUpdateSYUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCategoryServiceType] CHECK CONSTRAINT [FKSOCatSrvCategoryTypeUpdateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSOCatSrvServiceTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCategoryServiceType]  WITH CHECK ADD  CONSTRAINT [FKSOCatSrvServiceTypeGUID] FOREIGN KEY([SOServTypeGUID])
REFERENCES [dbo].[SOServiceActionType] ([SOServTypeGUID])
GO
ALTER TABLE [dbo].[SOCategoryServiceType] CHECK CONSTRAINT [FKSOCatSrvServiceTypeGUID]
GO
/****** Object:  ForeignKey [FKSOCategoryTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCategoryType]  WITH CHECK ADD  CONSTRAINT [FKSOCategoryTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCategoryType] CHECK CONSTRAINT [FKSOCategoryTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOCategoryTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCategoryType]  WITH CHECK ADD  CONSTRAINT [FKSOCategoryTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCategoryType] CHECK CONSTRAINT [FKSOCategoryTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOConfigCreateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOConfiguration]  WITH CHECK ADD  CONSTRAINT [FKSOConfigCreateSYUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOConfiguration] CHECK CONSTRAINT [FKSOConfigCreateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSoConfigSOSOCGUIDDefCust]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOConfiguration]  WITH CHECK ADD  CONSTRAINT [FKSoConfigSOSOCGUIDDefCust] FOREIGN KEY([SOSOCGUIDDefCust])
REFERENCES [dbo].[SOSourceOfCall] ([SOSOCGUID])
GO
ALTER TABLE [dbo].[SOConfiguration] CHECK CONSTRAINT [FKSoConfigSOSOCGUIDDefCust]
GO
/****** Object:  ForeignKey [FKSoConfigSOSOCGUIDDefPublic]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOConfiguration]  WITH CHECK ADD  CONSTRAINT [FKSoConfigSOSOCGUIDDefPublic] FOREIGN KEY([SOSOCGUIDDefPublic])
REFERENCES [dbo].[SOSourceOfCall] ([SOSOCGUID])
GO
ALTER TABLE [dbo].[SOConfiguration] CHECK CONSTRAINT [FKSoConfigSOSOCGUIDDefPublic]
GO
/****** Object:  ForeignKey [FKSOConfigUpdateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOConfiguration]  WITH CHECK ADD  CONSTRAINT [FKSOConfigUpdateSYUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOConfiguration] CHECK CONSTRAINT [FKSOConfigUpdateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSOCrewAssignCreateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewAssignment]  WITH CHECK ADD  CONSTRAINT [FKSOCrewAssignCreateSYUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCrewAssignment] CHECK CONSTRAINT [FKSOCrewAssignCreateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSOCrewAssignCrewGroupGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewAssignment]  WITH CHECK ADD  CONSTRAINT [FKSOCrewAssignCrewGroupGUID] FOREIGN KEY([SOCrewGroupGUID])
REFERENCES [dbo].[SOCrewGroup] ([SOCrewGroupGUID])
GO
ALTER TABLE [dbo].[SOCrewAssignment] CHECK CONSTRAINT [FKSOCrewAssignCrewGroupGUID]
GO
/****** Object:  ForeignKey [FKSOCrewAssignUpdateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewAssignment]  WITH CHECK ADD  CONSTRAINT [FKSOCrewAssignUpdateSYUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCrewAssignment] CHECK CONSTRAINT [FKSOCrewAssignUpdateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSOCrewMemAsgnForUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewAssignment]  WITH CHECK ADD  CONSTRAINT [FKSOCrewMemAsgnForUserGUID] FOREIGN KEY([SyUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCrewAssignment] CHECK CONSTRAINT [FKSOCrewMemAsgnForUserGUID]
GO
/****** Object:  ForeignKey [FKSOCrewGroupCreateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewGroup]  WITH CHECK ADD  CONSTRAINT [FKSOCrewGroupCreateSYUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCrewGroup] CHECK CONSTRAINT [FKSOCrewGroupCreateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSOCrewGroupScheduleGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewGroup]  WITH CHECK ADD  CONSTRAINT [FKSOCrewGroupScheduleGUID] FOREIGN KEY([SOScheduleGUID])
REFERENCES [dbo].[SOCrewSchedule] ([SOCrewScheduleGUID])
GO
ALTER TABLE [dbo].[SOCrewGroup] CHECK CONSTRAINT [FKSOCrewGroupScheduleGUID]
GO
/****** Object:  ForeignKey [FKSOCrewGroupUpdateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewGroup]  WITH CHECK ADD  CONSTRAINT [FKSOCrewGroupUpdateSYUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCrewGroup] CHECK CONSTRAINT [FKSOCrewGroupUpdateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSOCrewMemSkillCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewMemSkill]  WITH CHECK ADD  CONSTRAINT [FKSOCrewMemSkillCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCrewMemSkill] CHECK CONSTRAINT [FKSOCrewMemSkillCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOCrewMemSkillForUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewMemSkill]  WITH CHECK ADD  CONSTRAINT [FKSOCrewMemSkillForUserGUID] FOREIGN KEY([SyUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCrewMemSkill] CHECK CONSTRAINT [FKSOCrewMemSkillForUserGUID]
GO
/****** Object:  ForeignKey [FKSOCrewMemSkillTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewMemSkill]  WITH CHECK ADD  CONSTRAINT [FKSOCrewMemSkillTypeGUID] FOREIGN KEY([SOSkillTypeGUID])
REFERENCES [dbo].[SOSkillType] ([SOSkillTypeGUID])
GO
ALTER TABLE [dbo].[SOCrewMemSkill] CHECK CONSTRAINT [FKSOCrewMemSkillTypeGUID]
GO
/****** Object:  ForeignKey [FKSOCrewMemSkillUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewMemSkill]  WITH CHECK ADD  CONSTRAINT [FKSOCrewMemSkillUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCrewMemSkill] CHECK CONSTRAINT [FKSOCrewMemSkillUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOCrewMemTOCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewMemTimeOff]  WITH CHECK ADD  CONSTRAINT [FKSOCrewMemTOCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCrewMemTimeOff] CHECK CONSTRAINT [FKSOCrewMemTOCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOCrewMemTOForUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewMemTimeOff]  WITH CHECK ADD  CONSTRAINT [FKSOCrewMemTOForUserGUID] FOREIGN KEY([SyUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCrewMemTimeOff] CHECK CONSTRAINT [FKSOCrewMemTOForUserGUID]
GO
/****** Object:  ForeignKey [FKSOCrewMemTOUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewMemTimeOff]  WITH CHECK ADD  CONSTRAINT [FKSOCrewMemTOUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCrewMemTimeOff] CHECK CONSTRAINT [FKSOCrewMemTOUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOScheduleCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewSchedule]  WITH CHECK ADD  CONSTRAINT [FKSOScheduleCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCrewSchedule] CHECK CONSTRAINT [FKSOScheduleCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOScheduleUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOCrewSchedule]  WITH CHECK ADD  CONSTRAINT [FKSOScheduleUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOCrewSchedule] CHECK CONSTRAINT [FKSOScheduleUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSODefCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SODefaults]  WITH CHECK ADD  CONSTRAINT [FKSODefCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SODefaults] CHECK CONSTRAINT [FKSODefCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSODefCrewGroupGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SODefaults]  WITH CHECK ADD  CONSTRAINT [FKSODefCrewGroupGUID] FOREIGN KEY([SOCrewGroupGUID])
REFERENCES [dbo].[SOCrewGroup] ([SOCrewGroupGUID])
GO
ALTER TABLE [dbo].[SODefaults] CHECK CONSTRAINT [FKSODefCrewGroupGUID]
GO
/****** Object:  ForeignKey [FKSODefEventGrpGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SODefaults]  WITH CHECK ADD  CONSTRAINT [FKSODefEventGrpGUID] FOREIGN KEY([SOEventGrpGUID])
REFERENCES [dbo].[SOEventTemplate] ([SOEventTemplateGUID])
GO
ALTER TABLE [dbo].[SODefaults] CHECK CONSTRAINT [FKSODefEventGrpGUID]
GO
/****** Object:  ForeignKey [FKSODefPriorGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SODefaults]  WITH CHECK ADD  CONSTRAINT [FKSODefPriorGUID] FOREIGN KEY([SOPriorGUID])
REFERENCES [dbo].[SOPriority] ([SOPriorGUID])
GO
ALTER TABLE [dbo].[SODefaults] CHECK CONSTRAINT [FKSODefPriorGUID]
GO
/****** Object:  ForeignKey [FKSODefProcessTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SODefaults]  WITH CHECK ADD  CONSTRAINT [FKSODefProcessTypeGUID] FOREIGN KEY([SOProcessTypeGUID])
REFERENCES [dbo].[SOProcessType] ([SOProcessTypeGUID])
GO
ALTER TABLE [dbo].[SODefaults] CHECK CONSTRAINT [FKSODefProcessTypeGUID]
GO
/****** Object:  ForeignKey [FKSODefServTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SODefaults]  WITH CHECK ADD  CONSTRAINT [FKSODefServTypeGUID] FOREIGN KEY([SOServTypeGUID])
REFERENCES [dbo].[SOServiceActionType] ([SOServTypeGUID])
GO
ALTER TABLE [dbo].[SODefaults] CHECK CONSTRAINT [FKSODefServTypeGUID]
GO
/****** Object:  ForeignKey [FKSODefSYServMastGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SODefaults]  WITH CHECK ADD  CONSTRAINT [FKSODefSYServMastGUID] FOREIGN KEY([SYServMastGUID])
REFERENCES [dbo].[SYServiceMaster] ([SYServMastGUID])
GO
ALTER TABLE [dbo].[SODefaults] CHECK CONSTRAINT [FKSODefSYServMastGUID]
GO
/****** Object:  ForeignKey [FKSODefUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SODefaults]  WITH CHECK ADD  CONSTRAINT [FKSODefUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SODefaults] CHECK CONSTRAINT [FKSODefUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOPaymentServTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SODefaults]  WITH CHECK ADD  CONSTRAINT [FKSOPaymentServTypeGUID] FOREIGN KEY([SOPaymentServTypeGUID])
REFERENCES [dbo].[SOServiceActionType] ([SOServTypeGUID])
GO
ALTER TABLE [dbo].[SODefaults] CHECK CONSTRAINT [FKSOPaymentServTypeGUID]
GO
/****** Object:  ForeignKey [FKSOShutoffServTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SODefaults]  WITH CHECK ADD  CONSTRAINT [FKSOShutoffServTypeGUID] FOREIGN KEY([SOShutoffServTypeGUID])
REFERENCES [dbo].[SOServiceActionType] ([SOServTypeGUID])
GO
ALTER TABLE [dbo].[SODefaults] CHECK CONSTRAINT [FKSOShutoffServTypeGUID]
GO
/****** Object:  ForeignKey [FKSOEventDetCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOEventDetail]  WITH CHECK ADD  CONSTRAINT [FKSOEventDetCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOEventDetail] CHECK CONSTRAINT [FKSOEventDetCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOEventDetEventGrpGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOEventDetail]  WITH CHECK ADD  CONSTRAINT [FKSOEventDetEventGrpGUID] FOREIGN KEY([SOEventGrpGUID])
REFERENCES [dbo].[SOEventTemplate] ([SOEventTemplateGUID])
GO
ALTER TABLE [dbo].[SOEventDetail] CHECK CONSTRAINT [FKSOEventDetEventGrpGUID]
GO
/****** Object:  ForeignKey [FKSOEventDetUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOEventDetail]  WITH CHECK ADD  CONSTRAINT [FKSOEventDetUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOEventDetail] CHECK CONSTRAINT [FKSOEventDetUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOEventGrpCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOEventTemplate]  WITH CHECK ADD  CONSTRAINT [FKSOEventGrpCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOEventTemplate] CHECK CONSTRAINT [FKSOEventGrpCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOEventGrpUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOEventTemplate]  WITH CHECK ADD  CONSTRAINT [FKSOEventGrpUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOEventTemplate] CHECK CONSTRAINT [FKSOEventGrpUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderCategoryCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderCategory]  WITH CHECK ADD  CONSTRAINT [FKSOOrderCategoryCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderCategory] CHECK CONSTRAINT [FKSOOrderCategoryCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderCategoryOrdMstGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderCategory]  WITH CHECK ADD  CONSTRAINT [FKSOOrderCategoryOrdMstGUID] FOREIGN KEY([SOOrdMstGUID])
REFERENCES [dbo].[SOOrderMaster] ([SOOrdMstGUID])
GO
ALTER TABLE [dbo].[SOOrderCategory] CHECK CONSTRAINT [FKSOOrderCategoryOrdMstGUID]
GO
/****** Object:  ForeignKey [FKSOOrderCategorySYServMastGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderCategory]  WITH CHECK ADD  CONSTRAINT [FKSOOrderCategorySYServMastGUID] FOREIGN KEY([SOCategoryTypeGUID])
REFERENCES [dbo].[SOCategoryType] ([SOCategoryTypeGUID])
GO
ALTER TABLE [dbo].[SOOrderCategory] CHECK CONSTRAINT [FKSOOrderCategorySYServMastGUID]
GO
/****** Object:  ForeignKey [FKSOOrderCategoryUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderCategory]  WITH CHECK ADD  CONSTRAINT [FKSOOrderCategoryUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderCategory] CHECK CONSTRAINT [FKSOOrderCategoryUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderEventCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderEvent]  WITH CHECK ADD  CONSTRAINT [FKSOOrderEventCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderEvent] CHECK CONSTRAINT [FKSOOrderEventCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderEventMstGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderEvent]  WITH CHECK ADD  CONSTRAINT [FKSOOrderEventMstGUID] FOREIGN KEY([SOOrdMstGUID])
REFERENCES [dbo].[SOOrderMaster] ([SOOrdMstGUID])
GO
ALTER TABLE [dbo].[SOOrderEvent] CHECK CONSTRAINT [FKSOOrderEventMstGUID]
GO
/****** Object:  ForeignKey [FKSOOrderEventUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderEvent]  WITH CHECK ADD  CONSTRAINT [FKSOOrderEventUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderEvent] CHECK CONSTRAINT [FKSOOrderEventUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOMstHistoryGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderHistory]  WITH CHECK ADD  CONSTRAINT [FKSOMstHistoryGUID] FOREIGN KEY([SOOrdMstGUID])
REFERENCES [dbo].[SOOrderMaster] ([SOOrdMstGUID])
GO
ALTER TABLE [dbo].[SOOrderHistory] CHECK CONSTRAINT [FKSOMstHistoryGUID]
GO
/****** Object:  ForeignKey [FKSOOrderHistoryCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderHistory]  WITH CHECK ADD  CONSTRAINT [FKSOOrderHistoryCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderHistory] CHECK CONSTRAINT [FKSOOrderHistoryCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderHistoryUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderHistory]  WITH CHECK ADD  CONSTRAINT [FKSOOrderHistoryUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderHistory] CHECK CONSTRAINT [FKSOOrderHistoryUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderSOWorkStatusGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderHistory]  WITH CHECK ADD  CONSTRAINT [FKSOOrderSOWorkStatusGUID] FOREIGN KEY([SOWorkStatusGUID])
REFERENCES [dbo].[SOWorkStatus] ([SOWorkStatusGUID])
GO
ALTER TABLE [dbo].[SOOrderHistory] CHECK CONSTRAINT [FKSOOrderSOWorkStatusGUID]
GO
/****** Object:  ForeignKey [FKSOOrderMasterSORFCGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMaster]  WITH CHECK ADD  CONSTRAINT [FKSOOrderMasterSORFCGUID] FOREIGN KEY([SORFCGUID])
REFERENCES [dbo].[SOReasonForCall] ([SORFCGUID])
GO
ALTER TABLE [dbo].[SOOrderMaster] CHECK CONSTRAINT [FKSOOrderMasterSORFCGUID]
GO
/****** Object:  ForeignKey [FKSOOrdMstCallTakenByID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMaster]  WITH CHECK ADD  CONSTRAINT [FKSOOrdMstCallTakenByID] FOREIGN KEY([SYUserGUIDCallTakenBy])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderMaster] CHECK CONSTRAINT [FKSOOrdMstCallTakenByID]
GO
/****** Object:  ForeignKey [FKSOOrdMstCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMaster]  WITH CHECK ADD  CONSTRAINT [FKSOOrdMstCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderMaster] CHECK CONSTRAINT [FKSOOrdMstCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrdMstPriorGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMaster]  WITH CHECK ADD  CONSTRAINT [FKSOOrdMstPriorGUID] FOREIGN KEY([SOPriorGUID])
REFERENCES [dbo].[SOPriority] ([SOPriorGUID])
GO
ALTER TABLE [dbo].[SOOrderMaster] CHECK CONSTRAINT [FKSOOrdMstPriorGUID]
GO
/****** Object:  ForeignKey [FKSOOrdMstSOCrewGroupGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMaster]  WITH CHECK ADD  CONSTRAINT [FKSOOrdMstSOCrewGroupGUID] FOREIGN KEY([SOCrewGroupGUID])
REFERENCES [dbo].[SOCrewGroup] ([SOCrewGroupGUID])
GO
ALTER TABLE [dbo].[SOOrderMaster] CHECK CONSTRAINT [FKSOOrdMstSOCrewGroupGUID]
GO
/****** Object:  ForeignKey [FKSOOrdMstSOSOCGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMaster]  WITH CHECK ADD  CONSTRAINT [FKSOOrdMstSOSOCGUID] FOREIGN KEY([SOSOCGUID])
REFERENCES [dbo].[SOSourceOfCall] ([SOSOCGUID])
GO
ALTER TABLE [dbo].[SOOrderMaster] CHECK CONSTRAINT [FKSOOrdMstSOSOCGUID]
GO
/****** Object:  ForeignKey [FKSOOrdMstSOWorkStatusGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMaster]  WITH CHECK ADD  CONSTRAINT [FKSOOrdMstSOWorkStatusGUID] FOREIGN KEY([SOWorkStatusGUID])
REFERENCES [dbo].[SOWorkStatus] ([SOWorkStatusGUID])
GO
ALTER TABLE [dbo].[SOOrderMaster] CHECK CONSTRAINT [FKSOOrdMstSOWorkStatusGUID]
GO
/****** Object:  ForeignKey [FKSOOrdMstUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMaster]  WITH CHECK ADD  CONSTRAINT [FKSOOrdMstUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderMaster] CHECK CONSTRAINT [FKSOOrdMstUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYOrdMstSOOrdMstOwnerId]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMaster]  WITH CHECK ADD  CONSTRAINT [FKSYOrdMstSOOrdMstOwnerId] FOREIGN KEY([SYCustGUIDOwnerId])
REFERENCES [dbo].[SYCustomer] ([SYCustGUID])
GO
ALTER TABLE [dbo].[SOOrderMaster] CHECK CONSTRAINT [FKSYOrdMstSOOrdMstOwnerId]
GO
/****** Object:  ForeignKey [FKSYOrdMstSYCustGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMaster]  WITH CHECK ADD  CONSTRAINT [FKSYOrdMstSYCustGUID] FOREIGN KEY([SYCustGUID])
REFERENCES [dbo].[SYCustomer] ([SYCustGUID])
GO
ALTER TABLE [dbo].[SOOrderMaster] CHECK CONSTRAINT [FKSYOrdMstSYCustGUID]
GO
/****** Object:  ForeignKey [FKSOOrderMemoCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMemo]  WITH CHECK ADD  CONSTRAINT [FKSOOrderMemoCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderMemo] CHECK CONSTRAINT [FKSOOrderMemoCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderMemoTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMemo]  WITH CHECK ADD  CONSTRAINT [FKSOOrderMemoTypeGUID] FOREIGN KEY([SOOrderMemoTypeGUID])
REFERENCES [dbo].[SOOrderMemoType] ([SOOrderMemoTypeGUID])
GO
ALTER TABLE [dbo].[SOOrderMemo] CHECK CONSTRAINT [FKSOOrderMemoTypeGUID]
GO
/****** Object:  ForeignKey [FKSOOrderMemoUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMemo]  WITH CHECK ADD  CONSTRAINT [FKSOOrderMemoUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderMemo] CHECK CONSTRAINT [FKSOOrderMemoUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrdMstGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMemo]  WITH CHECK ADD  CONSTRAINT [FKSOOrdMstGUID] FOREIGN KEY([SOOrdMstGUID])
REFERENCES [dbo].[SOOrderMaster] ([SOOrdMstGUID])
GO
ALTER TABLE [dbo].[SOOrderMemo] CHECK CONSTRAINT [FKSOOrdMstGUID]
GO
/****** Object:  ForeignKey [FKSOOrderMemoTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMemoType]  WITH CHECK ADD  CONSTRAINT [FKSOOrderMemoTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderMemoType] CHECK CONSTRAINT [FKSOOrderMemoTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderMemoTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMemoType]  WITH CHECK ADD  CONSTRAINT [FKSOOrderMemoTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderMemoType] CHECK CONSTRAINT [FKSOOrderMemoTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOMtrOrdMstGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMeter]  WITH CHECK ADD  CONSTRAINT [FKSOMtrOrdMstGUID] FOREIGN KEY([SOOrdMstGUID])
REFERENCES [dbo].[SOOrderMaster] ([SOOrdMstGUID])
GO
ALTER TABLE [dbo].[SOOrderMeter] CHECK CONSTRAINT [FKSOMtrOrdMstGUID]
GO
/****** Object:  ForeignKey [FKSOMtrSYMtrGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMeter]  WITH CHECK ADD  CONSTRAINT [FKSOMtrSYMtrGUID] FOREIGN KEY([SYMtrGUID])
REFERENCES [dbo].[SYCustMeter] ([SYMtrGUID])
GO
ALTER TABLE [dbo].[SOOrderMeter] CHECK CONSTRAINT [FKSOMtrSYMtrGUID]
GO
/****** Object:  ForeignKey [FKSOOrderMeterCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMeter]  WITH CHECK ADD  CONSTRAINT [FKSOOrderMeterCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderMeter] CHECK CONSTRAINT [FKSOOrderMeterCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderMeterOrdMstGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMeter]  WITH CHECK ADD  CONSTRAINT [FKSOOrderMeterOrdMstGUID] FOREIGN KEY([SOOrdMstGUID])
REFERENCES [dbo].[SOOrderMaster] ([SOOrdMstGUID])
GO
ALTER TABLE [dbo].[SOOrderMeter] CHECK CONSTRAINT [FKSOOrderMeterOrdMstGUID]
GO
/****** Object:  ForeignKey [FKSOOrderMeterUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMeter]  WITH CHECK ADD  CONSTRAINT [FKSOOrderMeterUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderMeter] CHECK CONSTRAINT [FKSOOrderMeterUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOMeterOrderMeterGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMeterRead]  WITH CHECK ADD  CONSTRAINT [FKSOMeterOrderMeterGUID] FOREIGN KEY([SOOrderMeterGUID])
REFERENCES [dbo].[SOOrderMeter] ([SOOrderMeterGUID])
GO
ALTER TABLE [dbo].[SOOrderMeterRead] CHECK CONSTRAINT [FKSOMeterOrderMeterGUID]
GO
/****** Object:  ForeignKey [FKSOMeterReadCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMeterRead]  WITH CHECK ADD  CONSTRAINT [FKSOMeterReadCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderMeterRead] CHECK CONSTRAINT [FKSOMeterReadCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOMeterReadUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMeterRead]  WITH CHECK ADD  CONSTRAINT [FKSOMeterReadUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderMeterRead] CHECK CONSTRAINT [FKSOMeterReadUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOMeterSyMeterReadTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderMeterRead]  WITH CHECK ADD  CONSTRAINT [FKSOMeterSyMeterReadTypeGUID] FOREIGN KEY([SYMeterReadTypeGUID])
REFERENCES [dbo].[SYMeterReadCodeType] ([SYMeterReadTypeGUID])
GO
ALTER TABLE [dbo].[SOOrderMeterRead] CHECK CONSTRAINT [FKSOMeterSyMeterReadTypeGUID]
GO
/****** Object:  ForeignKey [FKSONewMeterCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderNewMeter]  WITH CHECK ADD  CONSTRAINT [FKSONewMeterCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderNewMeter] CHECK CONSTRAINT [FKSONewMeterCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSONewMeterUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderNewMeter]  WITH CHECK ADD  CONSTRAINT [FKSONewMeterUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderNewMeter] CHECK CONSTRAINT [FKSONewMeterUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSONewMtrSOOrdMstGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderNewMeter]  WITH CHECK ADD  CONSTRAINT [FKSONewMtrSOOrdMstGUID] FOREIGN KEY([SOOrdMstGUID])
REFERENCES [dbo].[SOOrderMaster] ([SOOrdMstGUID])
GO
ALTER TABLE [dbo].[SOOrderNewMeter] CHECK CONSTRAINT [FKSONewMtrSOOrdMstGUID]
GO
/****** Object:  ForeignKey [FKSONewMtrSYMtrGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderNewMeter]  WITH CHECK ADD  CONSTRAINT [FKSONewMtrSYMtrGUID] FOREIGN KEY([SYMtrGUID])
REFERENCES [dbo].[SYCustMeter] ([SYMtrGUID])
GO
ALTER TABLE [dbo].[SOOrderNewMeter] CHECK CONSTRAINT [FKSONewMtrSYMtrGUID]
GO
/****** Object:  ForeignKey [FKSOOrderServChargeCatGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServCharge]  WITH CHECK ADD  CONSTRAINT [FKSOOrderServChargeCatGUID] FOREIGN KEY([SOCategoryTypeGUID])
REFERENCES [dbo].[SOCategoryType] ([SOCategoryTypeGUID])
GO
ALTER TABLE [dbo].[SOOrderServCharge] CHECK CONSTRAINT [FKSOOrderServChargeCatGUID]
GO
/****** Object:  ForeignKey [FKSOOrderServChrgBillTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServCharge]  WITH CHECK ADD  CONSTRAINT [FKSOOrderServChrgBillTypeGUID] FOREIGN KEY([SOBillTypeGUID])
REFERENCES [dbo].[SOBillType] ([SOBillTypeGUID])
GO
ALTER TABLE [dbo].[SOOrderServCharge] CHECK CONSTRAINT [FKSOOrderServChrgBillTypeGUID]
GO
/****** Object:  ForeignKey [FKSOOrderServChrgCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServCharge]  WITH CHECK ADD  CONSTRAINT [FKSOOrderServChrgCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderServCharge] CHECK CONSTRAINT [FKSOOrderServChrgCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderServChrgRateTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServCharge]  WITH CHECK ADD  CONSTRAINT [FKSOOrderServChrgRateTypeGUID] FOREIGN KEY([SORateTypeGUID])
REFERENCES [dbo].[SORateType] ([SORateTypeGUID])
GO
ALTER TABLE [dbo].[SOOrderServCharge] CHECK CONSTRAINT [FKSOOrderServChrgRateTypeGUID]
GO
/****** Object:  ForeignKey [FKSOOrderServChrgServicesGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServCharge]  WITH CHECK ADD  CONSTRAINT [FKSOOrderServChrgServicesGUID] FOREIGN KEY([SOOrderServTypeGUID])
REFERENCES [dbo].[SOOrderServiceType] ([SOOrderServTypeGUID])
GO
ALTER TABLE [dbo].[SOOrderServCharge] CHECK CONSTRAINT [FKSOOrderServChrgServicesGUID]
GO
/****** Object:  ForeignKey [FKSOOrderServChrgUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServCharge]  WITH CHECK ADD  CONSTRAINT [FKSOOrderServChrgUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderServCharge] CHECK CONSTRAINT [FKSOOrderServChrgUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderServTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServiceType]  WITH CHECK ADD  CONSTRAINT [FKSOOrderServTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderServiceType] CHECK CONSTRAINT [FKSOOrderServTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderServTypeOrdMstGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServiceType]  WITH CHECK ADD  CONSTRAINT [FKSOOrderServTypeOrdMstGUID] FOREIGN KEY([SOOrdMstGUID])
REFERENCES [dbo].[SOOrderMaster] ([SOOrdMstGUID])
GO
ALTER TABLE [dbo].[SOOrderServiceType] CHECK CONSTRAINT [FKSOOrderServTypeOrdMstGUID]
GO
/****** Object:  ForeignKey [FKSOOrderServTypeTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServiceType]  WITH CHECK ADD  CONSTRAINT [FKSOOrderServTypeTypeGUID] FOREIGN KEY([SOServTypeGUID])
REFERENCES [dbo].[SOServiceActionType] ([SOServTypeGUID])
GO
ALTER TABLE [dbo].[SOOrderServiceType] CHECK CONSTRAINT [FKSOOrderServTypeTypeGUID]
GO
/****** Object:  ForeignKey [FKSOOrderServTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServiceType]  WITH CHECK ADD  CONSTRAINT [FKSOOrderServTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderServiceType] CHECK CONSTRAINT [FKSOOrderServTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderResponseCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServResponse]  WITH CHECK ADD  CONSTRAINT [FKSOOrderResponseCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderServResponse] CHECK CONSTRAINT [FKSOOrderResponseCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderResponseMstGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServResponse]  WITH CHECK ADD  CONSTRAINT [FKSOOrderResponseMstGUID] FOREIGN KEY([SOOrderServTypeGUID])
REFERENCES [dbo].[SOOrderServiceType] ([SOOrderServTypeGUID])
GO
ALTER TABLE [dbo].[SOOrderServResponse] CHECK CONSTRAINT [FKSOOrderResponseMstGUID]
GO
/****** Object:  ForeignKey [FKSOOrderResponseUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServResponse]  WITH CHECK ADD  CONSTRAINT [FKSOOrderResponseUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOOrderServResponse] CHECK CONSTRAINT [FKSOOrderResponseUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOOrderServResponseTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServResponse]  WITH CHECK ADD  CONSTRAINT [FKSOOrderServResponseTypeGUID] FOREIGN KEY([SOResponseTypeGUID])
REFERENCES [dbo].[SOResponseType] ([SOResponseTypeGUID])
GO
ALTER TABLE [dbo].[SOOrderServResponse] CHECK CONSTRAINT [FKSOOrderServResponseTypeGUID]
GO
/****** Object:  ForeignKey [FKSOOrdServResponseCrewGroupGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOOrderServResponse]  WITH CHECK ADD  CONSTRAINT [FKSOOrdServResponseCrewGroupGUID] FOREIGN KEY([SOCrewGroupGUID])
REFERENCES [dbo].[SOCrewGroup] ([SOCrewGroupGUID])
GO
ALTER TABLE [dbo].[SOOrderServResponse] CHECK CONSTRAINT [FKSOOrdServResponseCrewGroupGUID]
GO
/****** Object:  ForeignKey [FKSOPriorCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOPriority]  WITH CHECK ADD  CONSTRAINT [FKSOPriorCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOPriority] CHECK CONSTRAINT [FKSOPriorCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOPriorUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOPriority]  WITH CHECK ADD  CONSTRAINT [FKSOPriorUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOPriority] CHECK CONSTRAINT [FKSOPriorUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOProcessTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOProcessType]  WITH CHECK ADD  CONSTRAINT [FKSOProcessTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOProcessType] CHECK CONSTRAINT [FKSOProcessTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOProcessTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOProcessType]  WITH CHECK ADD  CONSTRAINT [FKSOProcessTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOProcessType] CHECK CONSTRAINT [FKSOProcessTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSORateTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORateType]  WITH CHECK ADD  CONSTRAINT [FKSORateTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SORateType] CHECK CONSTRAINT [FKSORateTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSORateTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORateType]  WITH CHECK ADD  CONSTRAINT [FKSORateTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SORateType] CHECK CONSTRAINT [FKSORateTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSORFCCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOReasonForCall]  WITH CHECK ADD  CONSTRAINT [FKSORFCCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOReasonForCall] CHECK CONSTRAINT [FKSORFCCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSORFCUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOReasonForCall]  WITH CHECK ADD  CONSTRAINT [FKSORFCUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOReasonForCall] CHECK CONSTRAINT [FKSORFCUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKRequestSOSOCGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequest]  WITH CHECK ADD  CONSTRAINT [FKRequestSOSOCGUID] FOREIGN KEY([SOSOCGUID])
REFERENCES [dbo].[SOSourceOfCall] ([SOSOCGUID])
GO
ALTER TABLE [dbo].[SORequest] CHECK CONSTRAINT [FKRequestSOSOCGUID]
GO
/****** Object:  ForeignKey [FKSORequestCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequest]  WITH CHECK ADD  CONSTRAINT [FKSORequestCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SORequest] CHECK CONSTRAINT [FKSORequestCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSORequestSOPriorGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequest]  WITH CHECK ADD  CONSTRAINT [FKSORequestSOPriorGUID] FOREIGN KEY([SOPriorGUID])
REFERENCES [dbo].[SOPriority] ([SOPriorGUID])
GO
ALTER TABLE [dbo].[SORequest] CHECK CONSTRAINT [FKSORequestSOPriorGUID]
GO
/****** Object:  ForeignKey [FKSORequestSOServTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequest]  WITH CHECK ADD  CONSTRAINT [FKSORequestSOServTypeGUID] FOREIGN KEY([SOServTypeGUID])
REFERENCES [dbo].[SOServiceActionType] ([SOServTypeGUID])
GO
ALTER TABLE [dbo].[SORequest] CHECK CONSTRAINT [FKSORequestSOServTypeGUID]
GO
/****** Object:  ForeignKey [FKSORequestStatusReqGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequest]  WITH CHECK ADD  CONSTRAINT [FKSORequestStatusReqGUID] FOREIGN KEY([SOStatusReqGUID])
REFERENCES [dbo].[SOStatusRequest] ([SOStatusReqGUID])
GO
ALTER TABLE [dbo].[SORequest] CHECK CONSTRAINT [FKSORequestStatusReqGUID]
GO
/****** Object:  ForeignKey [FKSORequestUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequest]  WITH CHECK ADD  CONSTRAINT [FKSORequestUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SORequest] CHECK CONSTRAINT [FKSORequestUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSORequestMemoCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestMemo]  WITH CHECK ADD  CONSTRAINT [FKSORequestMemoCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SORequestMemo] CHECK CONSTRAINT [FKSORequestMemoCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSORequestMemoUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestMemo]  WITH CHECK ADD  CONSTRAINT [FKSORequestMemoUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SORequestMemo] CHECK CONSTRAINT [FKSORequestMemoUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSORequestSORequestGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestMemo]  WITH CHECK ADD  CONSTRAINT [FKSORequestSORequestGUID] FOREIGN KEY([SORequestGUID])
REFERENCES [dbo].[SORequest] ([SORequestGUID])
GO
ALTER TABLE [dbo].[SORequestMemo] CHECK CONSTRAINT [FKSORequestSORequestGUID]
GO
/****** Object:  ForeignKey [FKSOReqPhoneCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestPhone]  WITH CHECK ADD  CONSTRAINT [FKSOReqPhoneCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SORequestPhone] CHECK CONSTRAINT [FKSOReqPhoneCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOReqPhoneSORequestGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestPhone]  WITH CHECK ADD  CONSTRAINT [FKSOReqPhoneSORequestGUID] FOREIGN KEY([SORequestGUID])
REFERENCES [dbo].[SORequest] ([SORequestGUID])
GO
ALTER TABLE [dbo].[SORequestPhone] CHECK CONSTRAINT [FKSOReqPhoneSORequestGUID]
GO
/****** Object:  ForeignKey [FKSOReqPhoneTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestPhone]  WITH CHECK ADD  CONSTRAINT [FKSOReqPhoneTypeGUID] FOREIGN KEY([SYPhoneTypeGUID])
REFERENCES [dbo].[SYPhoneType] ([SYPhoneTypeGUID])
GO
ALTER TABLE [dbo].[SORequestPhone] CHECK CONSTRAINT [FKSOReqPhoneTypeGUID]
GO
/****** Object:  ForeignKey [FKSOReqPhoneUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestPhone]  WITH CHECK ADD  CONSTRAINT [FKSOReqPhoneUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SORequestPhone] CHECK CONSTRAINT [FKSOReqPhoneUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOReqServOrdMstGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestServiceOrder]  WITH CHECK ADD  CONSTRAINT [FKSOReqServOrdMstGUID] FOREIGN KEY([SOOrdMstGUID])
REFERENCES [dbo].[SOOrderMaster] ([SOOrdMstGUID])
GO
ALTER TABLE [dbo].[SORequestServiceOrder] CHECK CONSTRAINT [FKSOReqServOrdMstGUID]
GO
/****** Object:  ForeignKey [FKSOReqServRequestGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestServiceOrder]  WITH CHECK ADD  CONSTRAINT [FKSOReqServRequestGUID] FOREIGN KEY([SORequestGUID])
REFERENCES [dbo].[SORequest] ([SORequestGUID])
GO
ALTER TABLE [dbo].[SORequestServiceOrder] CHECK CONSTRAINT [FKSOReqServRequestGUID]
GO
/****** Object:  ForeignKey [FKSOReqSrvOrdCreateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestServiceOrder]  WITH CHECK ADD  CONSTRAINT [FKSOReqSrvOrdCreateSYUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SORequestServiceOrder] CHECK CONSTRAINT [FKSOReqSrvOrdCreateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSOReqStatStatusReqGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestStatusHistory]  WITH CHECK ADD  CONSTRAINT [FKSOReqStatStatusReqGUID] FOREIGN KEY([SOStatusReqGUID])
REFERENCES [dbo].[SOStatusRequest] ([SOStatusReqGUID])
GO
ALTER TABLE [dbo].[SORequestStatusHistory] CHECK CONSTRAINT [FKSOReqStatStatusReqGUID]
GO
/****** Object:  ForeignKey [FKSOReqStatusSORequestGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestStatusHistory]  WITH CHECK ADD  CONSTRAINT [FKSOReqStatusSORequestGUID] FOREIGN KEY([SORequestGUID])
REFERENCES [dbo].[SORequest] ([SORequestGUID])
GO
ALTER TABLE [dbo].[SORequestStatusHistory] CHECK CONSTRAINT [FKSOReqStatusSORequestGUID]
GO
/****** Object:  ForeignKey [FKSORequestStatusCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestStatusHistory]  WITH CHECK ADD  CONSTRAINT [FKSORequestStatusCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SORequestStatusHistory] CHECK CONSTRAINT [FKSORequestStatusCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSORequestStatusUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SORequestStatusHistory]  WITH CHECK ADD  CONSTRAINT [FKSORequestStatusUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SORequestStatusHistory] CHECK CONSTRAINT [FKSORequestStatusUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOResponseTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOResponseType]  WITH CHECK ADD  CONSTRAINT [FKSOResponseTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOResponseType] CHECK CONSTRAINT [FKSOResponseTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOResponseTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOResponseType]  WITH CHECK ADD  CONSTRAINT [FKSOResponseTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOResponseType] CHECK CONSTRAINT [FKSOResponseTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKServTypeSOPriorGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOServiceActionType]  WITH CHECK ADD  CONSTRAINT [FKServTypeSOPriorGUID] FOREIGN KEY([SOPriorGUID])
REFERENCES [dbo].[SOPriority] ([SOPriorGUID])
GO
ALTER TABLE [dbo].[SOServiceActionType] CHECK CONSTRAINT [FKServTypeSOPriorGUID]
GO
/****** Object:  ForeignKey [FKSOServActTypeCatGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOServiceActionType]  WITH CHECK ADD  CONSTRAINT [FKSOServActTypeCatGUID] FOREIGN KEY([SOCategoryTypeGUID])
REFERENCES [dbo].[SOCategoryType] ([SOCategoryTypeGUID])
GO
ALTER TABLE [dbo].[SOServiceActionType] CHECK CONSTRAINT [FKSOServActTypeCatGUID]
GO
/****** Object:  ForeignKey [FKSOServTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOServiceActionType]  WITH CHECK ADD  CONSTRAINT [FKSOServTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOServiceActionType] CHECK CONSTRAINT [FKSOServTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOServTypeRateGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOServiceActionType]  WITH CHECK ADD  CONSTRAINT [FKSOServTypeRateGUID] FOREIGN KEY([SORateTypeGUID])
REFERENCES [dbo].[SORateType] ([SORateTypeGUID])
GO
ALTER TABLE [dbo].[SOServiceActionType] CHECK CONSTRAINT [FKSOServTypeRateGUID]
GO
/****** Object:  ForeignKey [FKSOServTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOServiceActionType]  WITH CHECK ADD  CONSTRAINT [FKSOServTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOServiceActionType] CHECK CONSTRAINT [FKSOServTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOServSkillTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOServiceSkillType]  WITH CHECK ADD  CONSTRAINT [FKSOServSkillTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOServiceSkillType] CHECK CONSTRAINT [FKSOServSkillTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOServSkillTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOServiceSkillType]  WITH CHECK ADD  CONSTRAINT [FKSOServSkillTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOServiceSkillType] CHECK CONSTRAINT [FKSOServSkillTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOServTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOServiceSkillType]  WITH CHECK ADD  CONSTRAINT [FKSOServTypeGUID] FOREIGN KEY([SOServTypeGUID])
REFERENCES [dbo].[SOServiceActionType] ([SOServTypeGUID])
GO
ALTER TABLE [dbo].[SOServiceSkillType] CHECK CONSTRAINT [FKSOServTypeGUID]
GO
/****** Object:  ForeignKey [FKSOSkillTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOServiceSkillType]  WITH CHECK ADD  CONSTRAINT [FKSOSkillTypeGUID] FOREIGN KEY([SOSkillTypeGUID])
REFERENCES [dbo].[SOSkillType] ([SOSkillTypeGUID])
GO
ALTER TABLE [dbo].[SOServiceSkillType] CHECK CONSTRAINT [FKSOSkillTypeGUID]
GO
/****** Object:  ForeignKey [FKSOSimpleViewCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOSimpleView]  WITH CHECK ADD  CONSTRAINT [FKSOSimpleViewCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOSimpleView] CHECK CONSTRAINT [FKSOSimpleViewCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOSimpleViewSimpleUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOSimpleView]  WITH CHECK ADD  CONSTRAINT [FKSOSimpleViewSimpleUserGUID] FOREIGN KEY([SoSimpleUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOSimpleView] CHECK CONSTRAINT [FKSOSimpleViewSimpleUserGUID]
GO
/****** Object:  ForeignKey [FKSOSimpleViewUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOSimpleView]  WITH CHECK ADD  CONSTRAINT [FKSOSimpleViewUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOSimpleView] CHECK CONSTRAINT [FKSOSimpleViewUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOSkillTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOSkillType]  WITH CHECK ADD  CONSTRAINT [FKSOSkillTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOSkillType] CHECK CONSTRAINT [FKSOSkillTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOSkillTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOSkillType]  WITH CHECK ADD  CONSTRAINT [FKSOSkillTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOSkillType] CHECK CONSTRAINT [FKSOSkillTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOSOCCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOSourceOfCall]  WITH CHECK ADD  CONSTRAINT [FKSOSOCCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOSourceOfCall] CHECK CONSTRAINT [FKSOSOCCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOSOCUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOSourceOfCall]  WITH CHECK ADD  CONSTRAINT [FKSOSOCUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOSourceOfCall] CHECK CONSTRAINT [FKSOSOCUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOStatusReqCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOStatusRequest]  WITH CHECK ADD  CONSTRAINT [FKSOStatusReqCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOStatusRequest] CHECK CONSTRAINT [FKSOStatusReqCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOStatusReqUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOStatusRequest]  WITH CHECK ADD  CONSTRAINT [FKSOStatusReqUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOStatusRequest] CHECK CONSTRAINT [FKSOStatusReqUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOWorkStatusCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOWorkStatus]  WITH CHECK ADD  CONSTRAINT [FKSOWorkStatusCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOWorkStatus] CHECK CONSTRAINT [FKSOWorkStatusCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSOWorkStatusUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SOWorkStatus]  WITH CHECK ADD  CONSTRAINT [FKSOWorkStatusUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SOWorkStatus] CHECK CONSTRAINT [FKSOWorkStatusUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYAccountTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYAccountType]  WITH CHECK ADD  CONSTRAINT [FKSYAccountTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYAccountType] CHECK CONSTRAINT [FKSYAccountTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYAccountTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYAccountType]  WITH CHECK ADD  CONSTRAINT [FKSYAccountTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYAccountType] CHECK CONSTRAINT [FKSYAccountTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustClassCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustClass]  WITH CHECK ADD  CONSTRAINT [FKSYCustClassCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustClass] CHECK CONSTRAINT [FKSYCustClassCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustClassUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustClass]  WITH CHECK ADD  CONSTRAINT [FKSYCustClassUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustClass] CHECK CONSTRAINT [FKSYCustClassUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustDeptCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustDept]  WITH CHECK ADD  CONSTRAINT [FKSYCustDeptCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustDept] CHECK CONSTRAINT [FKSYCustDeptCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustDeptUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustDept]  WITH CHECK ADD  CONSTRAINT [FKSYCustDeptUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustDept] CHECK CONSTRAINT [FKSYCustDeptUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustMemoCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMemo]  WITH CHECK ADD  CONSTRAINT [FKSYCustMemoCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMemo] CHECK CONSTRAINT [FKSYCustMemoCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustMemoCustGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMemo]  WITH CHECK ADD  CONSTRAINT [FKSYCustMemoCustGUID] FOREIGN KEY([SYCustGUID])
REFERENCES [dbo].[SYCustomer] ([SYCustGUID])
GO
ALTER TABLE [dbo].[SYCustMemo] CHECK CONSTRAINT [FKSYCustMemoCustGUID]
GO
/****** Object:  ForeignKey [FKSYCustMemoUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMemo]  WITH CHECK ADD  CONSTRAINT [FKSYCustMemoUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMemo] CHECK CONSTRAINT [FKSYCustMemoUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustMtrReadMethodGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeter]  WITH CHECK ADD  CONSTRAINT [FKSYCustMtrReadMethodGUID] FOREIGN KEY([SYReadMethodGUID])
REFERENCES [dbo].[SYReadMethodType] ([SYReadMethodGUID])
GO
ALTER TABLE [dbo].[SYCustMeter] CHECK CONSTRAINT [FKSYCustMtrReadMethodGUID]
GO
/****** Object:  ForeignKey [FKSYMeterCustGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeter]  WITH CHECK ADD  CONSTRAINT [FKSYMeterCustGUID] FOREIGN KEY([SYCustGUID])
REFERENCES [dbo].[SYCustomer] ([SYCustGUID])
GO
ALTER TABLE [dbo].[SYCustMeter] CHECK CONSTRAINT [FKSYMeterCustGUID]
GO
/****** Object:  ForeignKey [FKSyMtrCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeter]  WITH CHECK ADD  CONSTRAINT [FKSyMtrCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMeter] CHECK CONSTRAINT [FKSyMtrCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYMtrMeasureGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeter]  WITH CHECK ADD  CONSTRAINT [FKSYMtrMeasureGUID] FOREIGN KEY([SYMeterMeasureGUID])
REFERENCES [dbo].[SYCustMeterMeasureType] ([SYMeterMeasureGUID])
GO
ALTER TABLE [dbo].[SYCustMeter] CHECK CONSTRAINT [FKSYMtrMeasureGUID]
GO
/****** Object:  ForeignKey [FKSYMtrMeterLocationGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeter]  WITH CHECK ADD  CONSTRAINT [FKSYMtrMeterLocationGUID] FOREIGN KEY([SYMeterLocationGUID])
REFERENCES [dbo].[SYCustMeterLocationType] ([SYMeterLocationGUID])
GO
ALTER TABLE [dbo].[SYCustMeter] CHECK CONSTRAINT [FKSYMtrMeterLocationGUID]
GO
/****** Object:  ForeignKey [FKSYMtrMeterTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeter]  WITH CHECK ADD  CONSTRAINT [FKSYMtrMeterTypeGUID] FOREIGN KEY([SYMeterTypeGUID])
REFERENCES [dbo].[SYCustMeterType] ([SYMeterTypeGUID])
GO
ALTER TABLE [dbo].[SYCustMeter] CHECK CONSTRAINT [FKSYMtrMeterTypeGUID]
GO
/****** Object:  ForeignKey [FKSyMtrUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeter]  WITH CHECK ADD  CONSTRAINT [FKSyMtrUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMeter] CHECK CONSTRAINT [FKSyMtrUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYMeterLocationCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeterLocationType]  WITH CHECK ADD  CONSTRAINT [FKSYMeterLocationCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMeterLocationType] CHECK CONSTRAINT [FKSYMeterLocationCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYMeterLocationUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeterLocationType]  WITH CHECK ADD  CONSTRAINT [FKSYMeterLocationUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMeterLocationType] CHECK CONSTRAINT [FKSYMeterLocationUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYMeterMeasureCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeterMeasureType]  WITH CHECK ADD  CONSTRAINT [FKSYMeterMeasureCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMeterMeasureType] CHECK CONSTRAINT [FKSYMeterMeasureCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYMeterMeasureUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeterMeasureType]  WITH CHECK ADD  CONSTRAINT [FKSYMeterMeasureUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMeterMeasureType] CHECK CONSTRAINT [FKSYMeterMeasureUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYMtrMemoCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeterMemo]  WITH CHECK ADD  CONSTRAINT [FKSYMtrMemoCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMeterMemo] CHECK CONSTRAINT [FKSYMtrMemoCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYMtrMemoMeterGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeterMemo]  WITH CHECK ADD  CONSTRAINT [FKSYMtrMemoMeterGUID] FOREIGN KEY([SYMtrGUID])
REFERENCES [dbo].[SYCustMeter] ([SYMtrGUID])
GO
ALTER TABLE [dbo].[SYCustMeterMemo] CHECK CONSTRAINT [FKSYMtrMemoMeterGUID]
GO
/****** Object:  ForeignKey [FKSYMtrMemoUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeterMemo]  WITH CHECK ADD  CONSTRAINT [FKSYMtrMemoUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMeterMemo] CHECK CONSTRAINT [FKSYMtrMemoUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSyMtrMeterGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeterRead]  WITH CHECK ADD  CONSTRAINT [FKSyMtrMeterGUID] FOREIGN KEY([SYMtrGUID])
REFERENCES [dbo].[SYCustMeter] ([SYMtrGUID])
GO
ALTER TABLE [dbo].[SYCustMeterRead] CHECK CONSTRAINT [FKSyMtrMeterGUID]
GO
/****** Object:  ForeignKey [FKSyMtrReadCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeterRead]  WITH CHECK ADD  CONSTRAINT [FKSyMtrReadCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMeterRead] CHECK CONSTRAINT [FKSyMtrReadCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSyMtrReadTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeterRead]  WITH CHECK ADD  CONSTRAINT [FKSyMtrReadTypeGUID] FOREIGN KEY([SYReadTypeGUID])
REFERENCES [dbo].[SYReadType] ([SYReadTypeGUID])
GO
ALTER TABLE [dbo].[SYCustMeterRead] CHECK CONSTRAINT [FKSyMtrReadTypeGUID]
GO
/****** Object:  ForeignKey [FKSyMtrReadUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeterRead]  WITH CHECK ADD  CONSTRAINT [FKSyMtrReadUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMeterRead] CHECK CONSTRAINT [FKSyMtrReadUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYMeterTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeterType]  WITH CHECK ADD  CONSTRAINT [FKSYMeterTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMeterType] CHECK CONSTRAINT [FKSYMeterTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYMeterTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustMeterType]  WITH CHECK ADD  CONSTRAINT [FKSYMeterTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustMeterType] CHECK CONSTRAINT [FKSYMeterTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomer]  WITH CHECK ADD  CONSTRAINT [FKSYCustCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustomer] CHECK CONSTRAINT [FKSYCustCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSyCustomerAccountGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomer]  WITH CHECK ADD  CONSTRAINT [FKSyCustomerAccountGUID] FOREIGN KEY([SYAccountTypeGUID])
REFERENCES [dbo].[SYAccountType] ([SYAccountTypeGUID])
GO
ALTER TABLE [dbo].[SYCustomer] CHECK CONSTRAINT [FKSyCustomerAccountGUID]
GO
/****** Object:  ForeignKey [FKSYCustSYCustClassGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomer]  WITH CHECK ADD  CONSTRAINT [FKSYCustSYCustClassGUID] FOREIGN KEY([SYCustClassGUID])
REFERENCES [dbo].[SYCustClass] ([SYCustClassGUID])
GO
ALTER TABLE [dbo].[SYCustomer] CHECK CONSTRAINT [FKSYCustSYCustClassGUID]
GO
/****** Object:  ForeignKey [FKSYCustSYCustDeptGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomer]  WITH CHECK ADD  CONSTRAINT [FKSYCustSYCustDeptGUID] FOREIGN KEY([SYCustDeptGUID])
REFERENCES [dbo].[SYCustDept] ([SYCustDeptGUID])
GO
ALTER TABLE [dbo].[SYCustomer] CHECK CONSTRAINT [FKSYCustSYCustDeptGUID]
GO
/****** Object:  ForeignKey [FKSYCustSYCustOwnerGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomer]  WITH CHECK ADD  CONSTRAINT [FKSYCustSYCustOwnerGUID] FOREIGN KEY([SYCustOwnerGUID])
REFERENCES [dbo].[SYCustomer] ([SYCustGUID])
GO
ALTER TABLE [dbo].[SYCustomer] CHECK CONSTRAINT [FKSYCustSYCustOwnerGUID]
GO
/****** Object:  ForeignKey [FKSYCustSYCustStatusGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomer]  WITH CHECK ADD  CONSTRAINT [FKSYCustSYCustStatusGUID] FOREIGN KEY([SYCustStatusGUID])
REFERENCES [dbo].[SYCustomerStatusType] ([SYCustStatusGUID])
GO
ALTER TABLE [dbo].[SYCustomer] CHECK CONSTRAINT [FKSYCustSYCustStatusGUID]
GO
/****** Object:  ForeignKey [FKSYCustUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomer]  WITH CHECK ADD  CONSTRAINT [FKSYCustUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustomer] CHECK CONSTRAINT [FKSYCustUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustStatusCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomerStatusType]  WITH CHECK ADD  CONSTRAINT [FKSYCustStatusCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustomerStatusType] CHECK CONSTRAINT [FKSYCustStatusCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustStatusUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomerStatusType]  WITH CHECK ADD  CONSTRAINT [FKSYCustStatusUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustomerStatusType] CHECK CONSTRAINT [FKSYCustStatusUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustomFieldCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomField]  WITH CHECK ADD  CONSTRAINT [FKSYCustomFieldCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustomField] CHECK CONSTRAINT [FKSYCustomFieldCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustomFieldSYCstFldAttGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomField]  WITH CHECK ADD  CONSTRAINT [FKSYCustomFieldSYCstFldAttGUID] FOREIGN KEY([SYCstFldAttGUID])
REFERENCES [dbo].[SYCustomFieldAttribute] ([SYCstFldAttGUID])
GO
ALTER TABLE [dbo].[SYCustomField] CHECK CONSTRAINT [FKSYCustomFieldSYCstFldAttGUID]
GO
/****** Object:  ForeignKey [FKSYCustomFieldUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomField]  WITH CHECK ADD  CONSTRAINT [FKSYCustomFieldUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustomField] CHECK CONSTRAINT [FKSYCustomFieldUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCstFldAttCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomFieldAttribute]  WITH CHECK ADD  CONSTRAINT [FKSYCstFldAttCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustomFieldAttribute] CHECK CONSTRAINT [FKSYCstFldAttCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCstFldAttSYCstFldTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomFieldAttribute]  WITH CHECK ADD  CONSTRAINT [FKSYCstFldAttSYCstFldTypeGUID] FOREIGN KEY([SYCstFldTypeGUID])
REFERENCES [dbo].[SYCustomFieldType] ([SYCstFldTypeGUID])
GO
ALTER TABLE [dbo].[SYCustomFieldAttribute] CHECK CONSTRAINT [FKSYCstFldAttSYCstFldTypeGUID]
GO
/****** Object:  ForeignKey [FKSYCstFldAttUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomFieldAttribute]  WITH CHECK ADD  CONSTRAINT [FKSYCstFldAttUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustomFieldAttribute] CHECK CONSTRAINT [FKSYCstFldAttUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCstFldCustomTableGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomFieldAttribute]  WITH CHECK ADD  CONSTRAINT [FKSYCstFldCustomTableGUID] FOREIGN KEY([SYCustomTableGUID])
REFERENCES [dbo].[SYCustomTableList] ([SYCustomTableGUID])
GO
ALTER TABLE [dbo].[SYCustomFieldAttribute] CHECK CONSTRAINT [FKSYCstFldCustomTableGUID]
GO
/****** Object:  ForeignKey [FKSYCstFldTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomFieldType]  WITH CHECK ADD  CONSTRAINT [FKSYCstFldTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustomFieldType] CHECK CONSTRAINT [FKSYCstFldTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCstFldTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomFieldType]  WITH CHECK ADD  CONSTRAINT [FKSYCstFldTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustomFieldType] CHECK CONSTRAINT [FKSYCstFldTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustomTableCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomTableList]  WITH CHECK ADD  CONSTRAINT [FKSYCustomTableCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustomTableList] CHECK CONSTRAINT [FKSYCustomTableCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustomTableUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustomTableList]  WITH CHECK ADD  CONSTRAINT [FKSYCustomTableUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustomTableList] CHECK CONSTRAINT [FKSYCustomTableUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustPhoneCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustPhone]  WITH CHECK ADD  CONSTRAINT [FKSYCustPhoneCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustPhone] CHECK CONSTRAINT [FKSYCustPhoneCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustPhoneSYCustGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustPhone]  WITH CHECK ADD  CONSTRAINT [FKSYCustPhoneSYCustGUID] FOREIGN KEY([SYCustGUID])
REFERENCES [dbo].[SYCustomer] ([SYCustGUID])
GO
ALTER TABLE [dbo].[SYCustPhone] CHECK CONSTRAINT [FKSYCustPhoneSYCustGUID]
GO
/****** Object:  ForeignKey [FKSYCustPhoneTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustPhone]  WITH CHECK ADD  CONSTRAINT [FKSYCustPhoneTypeGUID] FOREIGN KEY([SYPhoneTypeGUID])
REFERENCES [dbo].[SYPhoneType] ([SYPhoneTypeGUID])
GO
ALTER TABLE [dbo].[SYCustPhone] CHECK CONSTRAINT [FKSYCustPhoneTypeGUID]
GO
/****** Object:  ForeignKey [FKSYCustPhoneUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustPhone]  WITH CHECK ADD  CONSTRAINT [FKSYCustPhoneUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustPhone] CHECK CONSTRAINT [FKSYCustPhoneUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustServMasterCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustServMaster]  WITH CHECK ADD  CONSTRAINT [FKSYCustServMasterCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustServMaster] CHECK CONSTRAINT [FKSYCustServMasterCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustServMasterOrdMstGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustServMaster]  WITH CHECK ADD  CONSTRAINT [FKSYCustServMasterOrdMstGUID] FOREIGN KEY([SYCustGUID])
REFERENCES [dbo].[SYCustomer] ([SYCustGUID])
GO
ALTER TABLE [dbo].[SYCustServMaster] CHECK CONSTRAINT [FKSYCustServMasterOrdMstGUID]
GO
/****** Object:  ForeignKey [FKSYCustServMasterSYServMastGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustServMaster]  WITH CHECK ADD  CONSTRAINT [FKSYCustServMasterSYServMastGUID] FOREIGN KEY([SYServMastGUID])
REFERENCES [dbo].[SYServiceMaster] ([SYServMastGUID])
GO
ALTER TABLE [dbo].[SYCustServMaster] CHECK CONSTRAINT [FKSYCustServMasterSYServMastGUID]
GO
/****** Object:  ForeignKey [FKSYCustServMasterUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustServMaster]  WITH CHECK ADD  CONSTRAINT [FKSYCustServMasterUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustServMaster] CHECK CONSTRAINT [FKSYCustServMasterUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSOCustCreateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustUser]  WITH CHECK ADD  CONSTRAINT [FKSOCustCreateSYUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustUser] CHECK CONSTRAINT [FKSOCustCreateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSSOCustUpdateSYUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustUser]  WITH CHECK ADD  CONSTRAINT [FKSSOCustUpdateSYUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYCustUser] CHECK CONSTRAINT [FKSSOCustUpdateSYUserGUID]
GO
/****** Object:  ForeignKey [FKSYCustUserSYCustGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYCustUser]  WITH CHECK ADD  CONSTRAINT [FKSYCustUserSYCustGUID] FOREIGN KEY([SYCustGUID])
REFERENCES [dbo].[SYCustomer] ([SYCustGUID])
GO
ALTER TABLE [dbo].[SYCustUser] CHECK CONSTRAINT [FKSYCustUserSYCustGUID]
GO
/****** Object:  ForeignKey [FKSYFormCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYForm]  WITH CHECK ADD  CONSTRAINT [FKSYFormCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYForm] CHECK CONSTRAINT [FKSYFormCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYFormUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYForm]  WITH CHECK ADD  CONSTRAINT [FKSYFormUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYForm] CHECK CONSTRAINT [FKSYFormUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYImpExpFieldseCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYImpExpFields]  WITH CHECK ADD  CONSTRAINT [FKSYImpExpFieldseCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYImpExpFields] CHECK CONSTRAINT [FKSYImpExpFieldseCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYImpExpFieldsTableGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYImpExpFields]  WITH CHECK ADD  CONSTRAINT [FKSYImpExpFieldsTableGUID] FOREIGN KEY([SYImpExpTableGUID])
REFERENCES [dbo].[SYImpExpTable] ([SYImpExpTableGUID])
GO
ALTER TABLE [dbo].[SYImpExpFields] CHECK CONSTRAINT [FKSYImpExpFieldsTableGUID]
GO
/****** Object:  ForeignKey [FKSYImpExpFieldsUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYImpExpFields]  WITH CHECK ADD  CONSTRAINT [FKSYImpExpFieldsUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYImpExpFields] CHECK CONSTRAINT [FKSYImpExpFieldsUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYImpExpTableCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYImpExpTable]  WITH CHECK ADD  CONSTRAINT [FKSYImpExpTableCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYImpExpTable] CHECK CONSTRAINT [FKSYImpExpTableCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYImpExpTableUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYImpExpTable]  WITH CHECK ADD  CONSTRAINT [FKSYImpExpTableUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYImpExpTable] CHECK CONSTRAINT [FKSYImpExpTableUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYImpExpTranslateCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYImpExpTranslate]  WITH CHECK ADD  CONSTRAINT [FKSYImpExpTranslateCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYImpExpTranslate] CHECK CONSTRAINT [FKSYImpExpTranslateCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYImpExpTranslateFieldsGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYImpExpTranslate]  WITH CHECK ADD  CONSTRAINT [FKSYImpExpTranslateFieldsGUID] FOREIGN KEY([SYImpExpFieldsGUID])
REFERENCES [dbo].[SYImpExpFields] ([SYImpExpFieldsGUID])
GO
ALTER TABLE [dbo].[SYImpExpTranslate] CHECK CONSTRAINT [FKSYImpExpTranslateFieldsGUID]
GO
/****** Object:  ForeignKey [FKSYImpExpTranslateUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYImpExpTranslate]  WITH CHECK ADD  CONSTRAINT [FKSYImpExpTranslateUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYImpExpTranslate] CHECK CONSTRAINT [FKSYImpExpTranslateUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYMeterReadTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYMeterReadCodeType]  WITH CHECK ADD  CONSTRAINT [FKSYMeterReadTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYMeterReadCodeType] CHECK CONSTRAINT [FKSYMeterReadTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYMeterReadTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYMeterReadCodeType]  WITH CHECK ADD  CONSTRAINT [FKSYMeterReadTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYMeterReadCodeType] CHECK CONSTRAINT [FKSYMeterReadTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYOrgCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYOrganization]  WITH CHECK ADD  CONSTRAINT [FKSYOrgCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYOrganization] CHECK CONSTRAINT [FKSYOrgCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYOrgUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYOrganization]  WITH CHECK ADD  CONSTRAINT [FKSYOrgUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYOrganization] CHECK CONSTRAINT [FKSYOrgUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYParcelCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYParcel]  WITH CHECK ADD  CONSTRAINT [FKSYParcelCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYParcel] CHECK CONSTRAINT [FKSYParcelCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYParcelUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYParcel]  WITH CHECK ADD  CONSTRAINT [FKSYParcelUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYParcel] CHECK CONSTRAINT [FKSYParcelUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYParcelCustCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYParcelCustomer]  WITH CHECK ADD  CONSTRAINT [FKSYParcelCustCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYParcelCustomer] CHECK CONSTRAINT [FKSYParcelCustCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYParcelCustCustGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYParcelCustomer]  WITH CHECK ADD  CONSTRAINT [FKSYParcelCustCustGUID] FOREIGN KEY([SYCustGUID])
REFERENCES [dbo].[SYCustomer] ([SYCustGUID])
GO
ALTER TABLE [dbo].[SYParcelCustomer] CHECK CONSTRAINT [FKSYParcelCustCustGUID]
GO
/****** Object:  ForeignKey [FKSYParcelCustParcelGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYParcelCustomer]  WITH CHECK ADD  CONSTRAINT [FKSYParcelCustParcelGUID] FOREIGN KEY([SYParcelGUID])
REFERENCES [dbo].[SYParcel] ([SYParcelGUID])
GO
ALTER TABLE [dbo].[SYParcelCustomer] CHECK CONSTRAINT [FKSYParcelCustParcelGUID]
GO
/****** Object:  ForeignKey [FKSYParcelCustUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYParcelCustomer]  WITH CHECK ADD  CONSTRAINT [FKSYParcelCustUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYParcelCustomer] CHECK CONSTRAINT [FKSYParcelCustUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYPhoneTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYPhoneType]  WITH CHECK ADD  CONSTRAINT [FKSYPhoneTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYPhoneType] CHECK CONSTRAINT [FKSYPhoneTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYPhoneTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYPhoneType]  WITH CHECK ADD  CONSTRAINT [FKSYPhoneTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYPhoneType] CHECK CONSTRAINT [FKSYPhoneTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYReadMethodCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYReadMethodType]  WITH CHECK ADD  CONSTRAINT [FKSYReadMethodCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYReadMethodType] CHECK CONSTRAINT [FKSYReadMethodCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYReadMethodUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYReadMethodType]  WITH CHECK ADD  CONSTRAINT [FKSYReadMethodUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYReadMethodType] CHECK CONSTRAINT [FKSYReadMethodUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYReadTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYReadType]  WITH CHECK ADD  CONSTRAINT [FKSYReadTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYReadType] CHECK CONSTRAINT [FKSYReadTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYReadTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYReadType]  WITH CHECK ADD  CONSTRAINT [FKSYReadTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYReadType] CHECK CONSTRAINT [FKSYReadTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYSecurityTypeCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYSecurityType]  WITH CHECK ADD  CONSTRAINT [FKSYSecurityTypeCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYSecurityType] CHECK CONSTRAINT [FKSYSecurityTypeCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYSecurityTypeUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYSecurityType]  WITH CHECK ADD  CONSTRAINT [FKSYSecurityTypeUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYSecurityType] CHECK CONSTRAINT [FKSYSecurityTypeUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYServMastCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYServiceMaster]  WITH CHECK ADD  CONSTRAINT [FKSYServMastCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYServiceMaster] CHECK CONSTRAINT [FKSYServMastCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYServMastUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYServiceMaster]  WITH CHECK ADD  CONSTRAINT [FKSYServMastUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYServiceMaster] CHECK CONSTRAINT [FKSYServMastUpdateUserGUID]
GO
/****** Object:  ForeignKey [FK_SYUser_SYUser]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYUser]  WITH CHECK ADD  CONSTRAINT [FK_SYUser_SYUser] FOREIGN KEY([SYUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYUser] CHECK CONSTRAINT [FK_SYUser_SYUser]
GO
/****** Object:  ForeignKey [FKSYUserRoleGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYUser]  WITH CHECK ADD  CONSTRAINT [FKSYUserRoleGUID] FOREIGN KEY([SYUserRoleGUID])
REFERENCES [dbo].[SYUserRole] ([SYUserRoleGUID])
GO
ALTER TABLE [dbo].[SYUser] CHECK CONSTRAINT [FKSYUserRoleGUID]
GO
/****** Object:  ForeignKey [FKSYUserRoleCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYUserRole]  WITH CHECK ADD  CONSTRAINT [FKSYUserRoleCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYUserRole] CHECK CONSTRAINT [FKSYUserRoleCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYUserRoleUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYUserRole]  WITH CHECK ADD  CONSTRAINT [FKSYUserRoleUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYUserRole] CHECK CONSTRAINT [FKSYUserRoleUpdateUserGUID]
GO
/****** Object:  ForeignKey [FKSYUserRoleFormCreateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYUserRoleForm]  WITH CHECK ADD  CONSTRAINT [FKSYUserRoleFormCreateUserGUID] FOREIGN KEY([CreateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYUserRoleForm] CHECK CONSTRAINT [FKSYUserRoleFormCreateUserGUID]
GO
/****** Object:  ForeignKey [FKSYUserRoleFormSYFormGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYUserRoleForm]  WITH CHECK ADD  CONSTRAINT [FKSYUserRoleFormSYFormGUID] FOREIGN KEY([SYFormGUID])
REFERENCES [dbo].[SYForm] ([SYFormGUID])
GO
ALTER TABLE [dbo].[SYUserRoleForm] CHECK CONSTRAINT [FKSYUserRoleFormSYFormGUID]
GO
/****** Object:  ForeignKey [FKSYUserRoleFormSYSecurityTypeGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYUserRoleForm]  WITH CHECK ADD  CONSTRAINT [FKSYUserRoleFormSYSecurityTypeGUID] FOREIGN KEY([SYSecurityTypeGUID])
REFERENCES [dbo].[SYSecurityType] ([SYSecurityTypeGUID])
GO
ALTER TABLE [dbo].[SYUserRoleForm] CHECK CONSTRAINT [FKSYUserRoleFormSYSecurityTypeGUID]
GO
/****** Object:  ForeignKey [FKSYUserRoleFormSYUserRoleGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYUserRoleForm]  WITH CHECK ADD  CONSTRAINT [FKSYUserRoleFormSYUserRoleGUID] FOREIGN KEY([SYUserRoleGUID])
REFERENCES [dbo].[SYUserRole] ([SYUserRoleGUID])
GO
ALTER TABLE [dbo].[SYUserRoleForm] CHECK CONSTRAINT [FKSYUserRoleFormSYUserRoleGUID]
GO
/****** Object:  ForeignKey [FKSYUserRoleFormUpdateUserGUID]    Script Date: 08/17/2012 11:43:39 ******/
ALTER TABLE [dbo].[SYUserRoleForm]  WITH CHECK ADD  CONSTRAINT [FKSYUserRoleFormUpdateUserGUID] FOREIGN KEY([UpdateUserGUID])
REFERENCES [dbo].[SYUser] ([SYUserGUID])
GO
ALTER TABLE [dbo].[SYUserRoleForm] CHECK CONSTRAINT [FKSYUserRoleFormUpdateUserGUID]
GO
