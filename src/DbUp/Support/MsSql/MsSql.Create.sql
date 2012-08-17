--<DisableTransaction>true</DisableTransaction>
CREATE DATABASE [$databaseName$]
GO

USE [$databaseName$]
GO

CREATE TABLE [dbo].[DbVersion](
	[DbVersionId] [int] IDENTITY(1,1) NOT NULL,
	[Major] [smallint] NOT NULL,
	[Minor] [smallint] NOT NULL,
	[Build] [smallint] NOT NULL,
	[Revision] [smallint] NOT NULL,
	[Username] [varchar](75) NOT NULL,
	[Comments] [varchar](max) NULL,
 CONSTRAINT [PK_DbVersion] PRIMARY KEY CLUSTERED 
(
	[DbVersionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE PROCEDURE dbo.InsertDbVersion
	@major smallint,
	@minor smallint,
	@build smallint,
	@revision smallint,
	@username varchar(75),
	@comments varchar(max) = null
AS
BEGIN
	INSERT into DbVersion(major, minor, build, revision, username, comments)
	VALUES(@major, @minor, @build, @revision, @username, @comments)
END
GO

CREATE PROCEDURE dbo.GetDbVersion
AS
BEGIN
	SELECT TOP 1 *
	FROM dbversion
	ORDER BY major DESC, minor DESC, build DESC, revision DESC
END
GO