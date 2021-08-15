--Create database CRUD_Sample
USE [CRUD_Sample]
GO

create table student
(
ID int identity (1,1) primary key,
Name varchar (100),
Age varchar (50),
Department varchar (50)
)

/****** Object:  Table [dbo].[Customers]    Script Date: 1/23/2016 10:02:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Customers](
	[Id] [bigint] NOT NULL,
	[CustName] [varchar](100) NULL,
	[CustEmail] [varchar](150) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [CRUD_Sample]
GO

/****** Object:  StoredProcedure [dbo].[Delete_Customer]    Script Date: 1/23/2016 10:01:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_Customer]
	-- Add the parameters for the stored procedure here
	 @Id Bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM[dbo].[Customers] WHERE [Id] = @Id
	SELECT 1
END

GO

/****** Object:  StoredProcedure [dbo].[Get_Customer]    Script Date: 1/23/2016 10:01:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_Customer] 
	-- Add the parameters for the stored procedure here
	@Count BIGINT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT top(@Count)* FROM [dbo].[Customers]
END

GO

/****** Object:  StoredProcedure [dbo].[Get_CustomerbyID]    Script Date: 1/23/2016 10:01:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_CustomerbyID] 
	-- Add the parameters for the stored procedure here
	@Id BIGINT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM [dbo].[Customers]
	WHERE Id=@Id
END

GO

/****** Object:  StoredProcedure [dbo].[Set_Customer]    Script Date: 1/23/2016 10:01:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Set_Customer]
	-- Add the parameters for the stored procedure here
	 @CustName Nvarchar(100)
	,@CustEmail Nvarchar(150)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Id bigint 
	SET @Id = ISNULL(((SELECT MAX(Id) FROM [Customers])+1),'1')

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Customers] ([Id],[CustName],[CustEmail])
	VALUES(@Id,@CustName,@CustEmail)
	SELECT 1
END

GO

/****** Object:  StoredProcedure [dbo].[Update_Customer]    Script Date: 1/23/2016 10:01:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_Customer]
	-- Add the parameters for the stored procedure here
	 @Id Bigint
	,@CustName Nvarchar(100)
	,@CustEmail Nvarchar(150)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [dbo].[Customers] SET[CustName] = @CustName ,[CustEmail]= @CustEmail
	WHERE [Id] = @Id
	SELECT 1
END

GO