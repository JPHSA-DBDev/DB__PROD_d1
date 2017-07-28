CREATE TABLE [dbo].[T000_MVC_Logging] (
    [T000_PK]                   INT            IDENTITY (1, 1) NOT NULL,
    [ApplicationAssemblyName]   NVARCHAR (255) NULL,
    [Browser]                   NVARCHAR (100) NULL,
    [Create_Update_Delete_Read] NVARCHAR (6)   NULL,
    [DateTimeCreated]           DATETIME       CONSTRAINT [T000_DateTimeCreated_Default_GETDATE] DEFAULT (getdate()) NOT NULL,
    [Note]                      NVARCHAR (MAX) NULL,
    [UserLogIn]                 NVARCHAR (MAX) NULL,
    [IP]                        NVARCHAR (15)  NULL,
    [ComputerName]              NVARCHAR (MAX) NULL,
    [T000_RowVersion]           ROWVERSION     NULL,
    CONSTRAINT [T000$T000_PK] PRIMARY KEY CLUSTERED ([T000_PK] ASC)
);

