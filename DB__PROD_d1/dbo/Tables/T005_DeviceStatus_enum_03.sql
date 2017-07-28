CREATE TABLE [dbo].[T005_DeviceStatus_enum_03] (
    [T005_DeviceStatus_enum_03_PK]          INT            IDENTITY (1, 1) NOT NULL,
    [T005_DeviceStatus_enum_03_Value]       INT            NOT NULL,
    [T005_DeviceStatus_enum_03_Description] NVARCHAR (255) NOT NULL,
    [T005_e3_Rowversion]                    ROWVERSION     NOT NULL,
    CONSTRAINT [T005_DeviceStatus_enum_03$T005_DeviceStatus_enum_03_PK] PRIMARY KEY CLUSTERED ([T005_DeviceStatus_enum_03_PK] ASC),
    CONSTRAINT [uniqueValues$T005_DeviceStatus_enum_03_Value] UNIQUE NONCLUSTERED ([T005_DeviceStatus_enum_03_Value] ASC)
);


GO
GRANT SELECT
    ON OBJECT::[dbo].[T005_DeviceStatus_enum_03] TO [JPHSA01\IT]
    AS [dbo];

