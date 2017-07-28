CREATE TABLE [dbo].[OLD_T003_Telephone_Contacts] (
    [T003_PK]                INT            IDENTITY (1, 1) NOT NULL,
    [Toshiba_DisplayName]    NVARCHAR (255) NULL,
    [Display_For_Users]      NVARCHAR (55)  NULL,
    [ShowUsers_0_1]          BIT            NULL,
    [Ext_OLD]                NVARCHAR (10)  NULL,
    [Ext_Toshiba]            NVARCHAR (255) NULL,
    [Position]               NVARCHAR (255) NULL,
    [Department]             NVARCHAR (255) NULL,
    [Fax]                    NVARCHAR (100) NULL,
    [Email]                  NVARCHAR (255) NULL,
    [PhoneNumber]            NVARCHAR (100) NULL,
    [Last_Name]              NVARCHAR (255) NULL,
    [First_Name]             NVARCHAR (255) NULL,
    [EB_WB]                  NVARCHAR (15)  NULL,
    [Toshiba_Directory_Type] NVARCHAR (100) NULL,
    CONSTRAINT [T003$T003_PK] PRIMARY KEY CLUSTERED ([T003_PK] ASC)
);

