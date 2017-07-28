CREATE TABLE [dbo].[T002_enum_02] (
    [T002_enum_02_Value]       INT            NOT NULL,
    [T002_enum_02_Description] NVARCHAR (255) NOT NULL,
    [T002_enum_02_PK]          INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [uniqueValues$T002_enum_02_Value] UNIQUE NONCLUSTERED ([T002_enum_02_Value] ASC)
);

