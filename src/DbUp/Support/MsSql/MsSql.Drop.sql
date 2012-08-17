--<DisableTransaction>true</DisableTransaction>
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'$databaseName$')
BEGIN
	ALTER DATABASE [$databaseName$]
	SET SINGLE_USER 
	WITH ROLLBACK IMMEDIATE
	
	DROP DATABASE [$databaseName$]
END
GO