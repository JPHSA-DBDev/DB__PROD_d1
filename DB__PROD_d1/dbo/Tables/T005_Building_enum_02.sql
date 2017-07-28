CREATE TABLE [dbo].[T005_Building_enum_02] (
    [T005_Building_enum_02_PK]          INT            IDENTITY (1, 1) NOT NULL,
    [T005_Building_enum_02_Value]       INT            NOT NULL,
    [T005_Building_enum_02_Description] NVARCHAR (255) NOT NULL,
    [T005_e2_Rowversion]                ROWVERSION     NOT NULL,
    CONSTRAINT [T005_Building_enum_02$T005_Building_enum_02_PK] PRIMARY KEY CLUSTERED ([T005_Building_enum_02_PK] ASC),
    CONSTRAINT [uniqueValues$T005_Building_enum_02_Value] UNIQUE NONCLUSTERED ([T005_Building_enum_02_Value] ASC)
);


GO
GRANT SELECT
    ON OBJECT::[dbo].[T005_Building_enum_02] TO [JPHSA01\IT]
    AS [dbo];

