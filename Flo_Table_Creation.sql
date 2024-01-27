USE FloDB

GO
CREATE USER [apps] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]

GO
CREATE USER [javaApps] FOR LOGIN [javaApps] WITH DEFAULT_SCHEMA=[dbo]

GO
ALTER ROLE [db_owner] ADD MEMBER [apps]

GO
ALTER ROLE [db_owner] ADD MEMBER [javaApps]

GO
CREATE TABLE Flo_Log(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Description] [nvarchar](max) NULL,
);