CREATE TABLE [dbo].[T005_DeviceType_enum_01] (
    [T005_DeviceType_enum_01_PK]          INT            IDENTITY (1, 1) NOT NULL,
    [T005_DeviceType_enum_01_Value]       INT            NOT NULL,
    [T005_DeviceType_enum_01_Description] NVARCHAR (255) NOT NULL,
    [T005_e1_Rowversion]                  ROWVERSION     NOT NULL,
    CONSTRAINT [T005_DeviceType_enum_01$T005_DeviceType_enum_01_PK] PRIMARY KEY CLUSTERED ([T005_DeviceType_enum_01_PK] ASC),
    CONSTRAINT [uniqueValues$T005_DeviceType_enum_01_Value] UNIQUE NONCLUSTERED ([T005_DeviceType_enum_01_Value] ASC)
);


GO
GRANT INSERT
    ON OBJECT::[dbo].[T005_DeviceType_enum_01] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT REFERENCES
    ON OBJECT::[dbo].[T005_DeviceType_enum_01] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT SELECT
    ON OBJECT::[dbo].[T005_DeviceType_enum_01] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT UPDATE
    ON OBJECT::[dbo].[T005_DeviceType_enum_01] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT VIEW DEFINITION
    ON OBJECT::[dbo].[T005_DeviceType_enum_01] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT VIEW CHANGE TRACKING
    ON OBJECT::[dbo].[T005_DeviceType_enum_01] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT SELECT
    ON OBJECT::[dbo].[T005_DeviceType_enum_01] TO [InventoryAdmin]
    AS [dbo];

