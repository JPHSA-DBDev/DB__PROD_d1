CREATE TABLE [dbo].[T006_Monitor_Inventory] (
    [T006_Monitor_Inventory_PK] INT            IDENTITY (1, 1) NOT NULL,
    [JPHSA_Tag]                 NVARCHAR (25)  NULL,
    [Monitor_Size]              NVARCHAR (25)  NULL,
    [Vendor_Service_Tag]        NVARCHAR (25)  NULL,
    [Model_Brand]               NVARCHAR (255) NULL,
    [Comment]                   NVARCHAR (255) NULL,
    [Building_T005_e2]          INT            CONSTRAINT [TypeStatus_T005_e2_Default_ZERO] DEFAULT ((0)) NOT NULL,
    [Project]                   NVARCHAR (255) NULL,
    [DeviceStatus_T005_e3]      INT            CONSTRAINT [TypeStatus_T005_e3_Default_ZERO] DEFAULT ((0)) NOT NULL,
    [CreateRecord_dateTime]     DATETIME       CONSTRAINT [T006_CreateRecord_dateTime] DEFAULT (getdate()) NULL,
    [CreateRecord_name]         [sysname]      CONSTRAINT [T006_CreateRecord_name] DEFAULT (coalesce(suser_sname(),'?')) NOT NULL,
    [UpdateRecord_dateTime]     DATETIME       CONSTRAINT [T006_UpdateRecord_dateTime] DEFAULT (getdate()) NULL,
    [UpdateRecord_name]         [sysname]      CONSTRAINT [T006_UpdateRecord_name] DEFAULT (coalesce(suser_sname(),'?')) NOT NULL,
    [T006_RowVersion]           ROWVERSION     NULL,
    CONSTRAINT [T006_Monitor_Inventory$T006_PK] PRIMARY KEY NONCLUSTERED ([T006_Monitor_Inventory_PK] ASC),
    CONSTRAINT [uniqueValues$T006_JPHSA_Tag_Value] UNIQUE NONCLUSTERED ([JPHSA_Tag] ASC)
);


GO

--For updates, but the inserted and deleted tables exist. I choose to join on the inserted for the update.

-- create the update trigger
create trigger TRG_001_recordChanged_T006 on dbo.T006_Monitor_Inventory
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
       T006_Monitor_Inventory d join inserted i 
    on 
       d.[T006_Monitor_Inventory_PK] = i.[T006_Monitor_Inventory_PK];

end

GO
GRANT INSERT
    ON OBJECT::[dbo].[T006_Monitor_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT REFERENCES
    ON OBJECT::[dbo].[T006_Monitor_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT SELECT
    ON OBJECT::[dbo].[T006_Monitor_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT UPDATE
    ON OBJECT::[dbo].[T006_Monitor_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT VIEW DEFINITION
    ON OBJECT::[dbo].[T006_Monitor_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT VIEW CHANGE TRACKING
    ON OBJECT::[dbo].[T006_Monitor_Inventory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT INSERT
    ON OBJECT::[dbo].[T006_Monitor_Inventory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT REFERENCES
    ON OBJECT::[dbo].[T006_Monitor_Inventory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT SELECT
    ON OBJECT::[dbo].[T006_Monitor_Inventory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT UPDATE
    ON OBJECT::[dbo].[T006_Monitor_Inventory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT VIEW DEFINITION
    ON OBJECT::[dbo].[T006_Monitor_Inventory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT VIEW CHANGE TRACKING
    ON OBJECT::[dbo].[T006_Monitor_Inventory] TO [InventoryAdmin]
    AS [dbo];

