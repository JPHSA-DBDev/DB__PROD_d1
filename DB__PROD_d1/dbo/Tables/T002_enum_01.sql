CREATE TABLE [dbo].[T002_enum_01] (
    [T002_enum_01_Value]       INT            NOT NULL,
    [T002_enum_01_Description] NVARCHAR (255) NOT NULL,
    [T002_enum_01_PK]          INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [uniqueValues$T002_enum_01_Value] UNIQUE NONCLUSTERED ([T002_enum_01_Value] ASC)
);

