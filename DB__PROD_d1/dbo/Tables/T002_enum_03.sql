CREATE TABLE [dbo].[T002_enum_03] (
    [T002_enum_03_Value]       INT            NOT NULL,
    [T002_enum_03_Description] NVARCHAR (255) NOT NULL,
    [T002_enum_03_PK]          INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [uniqueValues$T002_enum_03_Value] UNIQUE NONCLUSTERED ([T002_enum_03_Value] ASC)
);

