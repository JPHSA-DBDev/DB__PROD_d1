CREATE TABLE [dbo].[inventory_2017_05_15] (
    [ID]            INT            NOT NULL,
    [Tag]           NVARCHAR (25)  NULL,
    [Monitor_Tag-1] NVARCHAR (25)  NULL,
    [Monitor_Tag-2] NVARCHAR (25)  NULL,
    [Monitor_Size]  NVARCHAR (50)  NULL,
    [Service_Tag]   NVARCHAR (25)  NULL,
    [Room_No]       NVARCHAR (25)  NULL,
    [User]          NVARCHAR (25)  NULL,
    [Group]         NVARCHAR (50)  NULL,
    [Location]      NVARCHAR (25)  NULL,
    [Type]          NVARCHAR (25)  NULL,
    [Model_Brand]   NVARCHAR (50)  NULL,
    [Comment]       NVARCHAR (MAX) NULL,
    [Building]      NVARCHAR (25)  NULL,
    [Project]       NVARCHAR (50)  NULL,
    [Status]        NVARCHAR (25)  NULL
);

