CREATE TABLE [dbo].[T004_IP_Inventory] (
    [T004_IP_Inventory_PK]         INT            IDENTITY (1, 1) NOT NULL,
    [JPHSA_Tag]                    NVARCHAR (25)  NULL,
    [Monitor_1_FK]                 INT            NULL,
    [Monitor_2_FK]                 INT            NULL,
    [Monitor_3_FK]                 INT            NULL,
    [Vendor_Service_Tag]           NVARCHAR (25)  NULL,
    [Room_Number]                  NVARCHAR (25)  NULL,
    [User]                         NVARCHAR (255) NULL,
    [Group]                        NVARCHAR (255) NULL,
    [Location]                     NVARCHAR (25)  NULL,
    [DeviceType_T005_e1]           INT            CONSTRAINT [DeviceType_T005_e1_Default_ZERO] DEFAULT ((0)) NOT NULL,
    [Model_Brand]                  NVARCHAR (255) NULL,
    [Comment]                      NVARCHAR (255) NULL,
    [Building_T005_e2]             INT            CONSTRAINT [DeviceType_T005_e2_Default_ZERO] DEFAULT ((0)) NOT NULL,
    [Project]                      NVARCHAR (255) NULL,
    [DeviceStatus_T005_e3]         INT            CONSTRAINT [DeviceType_T005_e3_Default_ZERO] DEFAULT ((0)) NOT NULL,
    [CreateRecord_dateTime]        DATETIME       CONSTRAINT [T004_CreateRecord_dateTime] DEFAULT (getdate()) NULL,
    [CreateRecord_name]            [sysname]      CONSTRAINT [T004_CreateRecord_name] DEFAULT (coalesce(suser_sname(),'?')) NOT NULL,
    [UpdateRecord_dateTime]        DATETIME       CONSTRAINT [T004_UpdateRecord_dateTime] DEFAULT (getdate()) NULL,
    [UpdateRecord_name]            [sysname]      CONSTRAINT [T004_UpdateRecord_name] DEFAULT (coalesce(suser_sname(),'?')) NOT NULL,
    [T004_RowVersion]              ROWVERSION     NULL,
    [Attached_T004_IP_Device_1_FK] INT            NULL,
    [Attached_T004_IP_Device_2_FK] INT            NULL,
    [Attached_T004_IP_Device_3_FK] INT            NULL,
    CONSTRAINT [T004_IP_Inventory$T004_PK] PRIMARY KEY NONCLUSTERED ([T004_IP_Inventory_PK] ASC),
    CONSTRAINT [uniqueValues$JPHSA_Tag_Value] UNIQUE NONCLUSTERED ([JPHSA_Tag] ASC)
);


GO

--For updates, but the inserted and deleted tables exist. I choose to join on the inserted for the update.

-- create the update trigger
create trigger TRG_001_recordChanged_T004 on dbo.T004_IP_Inventory
for update
as
begin

    -- nothing to do?
    if (@@rowcount = 0)
      return;

    update d
    set 
       UpdateRecord_dateTime = getdate(),
       UpdateRecord_name = (coalesce(suser_sname(),'?'))
    from
       T004_IP_Inventory d join inserted i 
    on 
       d.T004_IP_Inventory_PK = i.T004_IP_Inventory_PK;

end

GO
GRANT ALTER
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT CONTROL
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT DELETE
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT INSERT
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT REFERENCES
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT SELECT
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT TAKE OWNERSHIP
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT UPDATE
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT VIEW DEFINITION
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT VIEW CHANGE TRACKING
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT INSERT
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT REFERENCES
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT SELECT
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT UPDATE
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT VIEW DEFINITION
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT VIEW CHANGE TRACKING
    ON OBJECT::[dbo].[T004_IP_Inventory] TO [InventoryAdmin]
    AS [dbo];

