CREATE TABLE [dbo].[T008_Monitor_Inventory_History] (
    [T008_PK]                                   INT                                         IDENTITY (1, 1) NOT NULL,
    [T006_Monitor_Inventory_FK]                 INT                                         NULL,
    [Note]                                      NTEXT                                       NULL,
    [DateCreated]                               DATETIME                                    DEFAULT (getdate()) NULL,
    [T008_Monitor_Inventory_History_RowVersion] ROWVERSION                                  NULL,
    [TimeStart]                                 DATETIME2 (2) GENERATED ALWAYS AS ROW START NOT NULL,
    [TimeEnd]                                   DATETIME2 (2) GENERATED ALWAYS AS ROW END   NOT NULL,
    CONSTRAINT [T008_Monitor_Inventory_History$T008_Monitor_Inventory_History_PK] PRIMARY KEY NONCLUSTERED ([T008_PK] ASC),
    CONSTRAINT [T008_Monitor_Inventory_History_FK_00] FOREIGN KEY ([T006_Monitor_Inventory_FK]) REFERENCES [dbo].[T006_Monitor_Inventory] ([T006_Monitor_Inventory_PK]),
    PERIOD FOR SYSTEM_TIME ([TimeStart], [TimeEnd])
);


GO
GRANT INSERT
    ON OBJECT::[dbo].[T008_Monitor_Inventory_History] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT REFERENCES
    ON OBJECT::[dbo].[T008_Monitor_Inventory_History] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT SELECT
    ON OBJECT::[dbo].[T008_Monitor_Inventory_History] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT UPDATE
    ON OBJECT::[dbo].[T008_Monitor_Inventory_History] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT VIEW DEFINITION
    ON OBJECT::[dbo].[T008_Monitor_Inventory_History] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT VIEW CHANGE TRACKING
    ON OBJECT::[dbo].[T008_Monitor_Inventory_History] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT INSERT
    ON OBJECT::[dbo].[T008_Monitor_Inventory_History] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT REFERENCES
    ON OBJECT::[dbo].[T008_Monitor_Inventory_History] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT SELECT
    ON OBJECT::[dbo].[T008_Monitor_Inventory_History] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT UPDATE
    ON OBJECT::[dbo].[T008_Monitor_Inventory_History] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT VIEW DEFINITION
    ON OBJECT::[dbo].[T008_Monitor_Inventory_History] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT VIEW CHANGE TRACKING
    ON OBJECT::[dbo].[T008_Monitor_Inventory_History] TO [InventoryAdmin]
    AS [dbo];

