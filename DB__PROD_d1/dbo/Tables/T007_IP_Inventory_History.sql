CREATE TABLE [dbo].[T007_IP_Inventory_History] (
    [T007_PK]                              INT                                         IDENTITY (1, 1) NOT NULL,
    [T004_IP_Inventory_FK]                 INT                                         NULL,
    [Note]                                 NTEXT                                       NULL,
    [DateCreated]                          DATETIME                                    DEFAULT (getdate()) NULL,
    [T007_IP_Inventory_History_RowVersion] ROWVERSION                                  NULL,
    [TimeStart]                            DATETIME2 (2) GENERATED ALWAYS AS ROW START NOT NULL,
    [TimeEnd]                              DATETIME2 (2) GENERATED ALWAYS AS ROW END   NOT NULL,
    CONSTRAINT [T007_IP_Inventory_History$T007_IP_Inventory_History_PK] PRIMARY KEY NONCLUSTERED ([T007_PK] ASC),
    CONSTRAINT [T007_IP_Inventory_History_FK_00] FOREIGN KEY ([T004_IP_Inventory_FK]) REFERENCES [dbo].[T004_IP_Inventory] ([T004_IP_Inventory_PK]),
    PERIOD FOR SYSTEM_TIME ([TimeStart], [TimeEnd])
);


GO
GRANT INSERT
    ON OBJECT::[dbo].[T007_IP_Inventory_History] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT REFERENCES
    ON OBJECT::[dbo].[T007_IP_Inventory_History] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT SELECT
    ON OBJECT::[dbo].[T007_IP_Inventory_History] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT UPDATE
    ON OBJECT::[dbo].[T007_IP_Inventory_History] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT VIEW DEFINITION
    ON OBJECT::[dbo].[T007_IP_Inventory_History] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT VIEW CHANGE TRACKING
    ON OBJECT::[dbo].[T007_IP_Inventory_History] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT INSERT
    ON OBJECT::[dbo].[T007_IP_Inventory_History] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT REFERENCES
    ON OBJECT::[dbo].[T007_IP_Inventory_History] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT SELECT
    ON OBJECT::[dbo].[T007_IP_Inventory_History] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT UPDATE
    ON OBJECT::[dbo].[T007_IP_Inventory_History] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT VIEW DEFINITION
    ON OBJECT::[dbo].[T007_IP_Inventory_History] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT VIEW CHANGE TRACKING
    ON OBJECT::[dbo].[T007_IP_Inventory_History] TO [InventoryAdmin]
    AS [dbo];

