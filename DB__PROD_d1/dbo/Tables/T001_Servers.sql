CREATE TABLE [dbo].[T001_Servers] (
    [T001_PK]             INT            IDENTITY (1, 1) NOT NULL,
    [Name]                NVARCHAR (255) NULL,
    [IP_1]                NVARCHAR (255) NULL,
    [IP_2]                NVARCHAR (255) NULL,
    [Notes]               NVARCHAR (255) NULL,
    [Description]         NVARCHAR (255) NULL,
    [Roles_and_Functions] NVARCHAR (MAX) NULL,
    [Service_tag]         NVARCHAR (255) NULL,
    [Install_Date]        DATETIME       NULL,
    [JPHSA_Tag]           NVARCHAR (255) NULL,
    [OS]                  NVARCHAR (255) NULL,
    [BIOS SerialNumber]   NVARCHAR (255) NULL,
    [Old_Purchase_Notes]  NVARCHAR (255) NULL,
    [T001_RowVersion]     ROWVERSION     NULL,
    CONSTRAINT [T001$T001_PK] PRIMARY KEY CLUSTERED ([T001_PK] ASC)
);

