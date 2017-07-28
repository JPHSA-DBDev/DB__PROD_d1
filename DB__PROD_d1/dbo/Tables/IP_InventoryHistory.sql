CREATE TABLE [dbo].[IP_InventoryHistory] (
    [T007_PK]                              INT           NOT NULL,
    [T004_IP_Inventory_FK]                 INT           NULL,
    [Note]                                 NTEXT         NULL,
    [DateCreated]                          DATETIME      NULL,
    [T007_IP_Inventory_History_RowVersion] ROWVERSION    NULL,
    [TimeStart]                            DATETIME2 (2) NOT NULL,
    [TimeEnd]                              DATETIME2 (2) NOT NULL
);


GO
EXECUTE sp_tableoption @TableNamePattern = N'[dbo].[IP_InventoryHistory]', @OptionName = N'text in row', @OptionValue = N'256';


GO
CREATE CLUSTERED INDEX [ix_IP_InventoryHistory]
    ON [dbo].[IP_InventoryHistory]([TimeEnd] ASC, [TimeStart] ASC) WITH (DATA_COMPRESSION = PAGE);


GO
GRANT INSERT
    ON OBJECT::[dbo].[IP_InventoryHistory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT REFERENCES
    ON OBJECT::[dbo].[IP_InventoryHistory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT SELECT
    ON OBJECT::[dbo].[IP_InventoryHistory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT UPDATE
    ON OBJECT::[dbo].[IP_InventoryHistory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT VIEW DEFINITION
    ON OBJECT::[dbo].[IP_InventoryHistory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT VIEW CHANGE TRACKING
    ON OBJECT::[dbo].[IP_InventoryHistory] TO [JPHSA01\IT]
    AS [dbo];


GO
GRANT INSERT
    ON OBJECT::[dbo].[IP_InventoryHistory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT REFERENCES
    ON OBJECT::[dbo].[IP_InventoryHistory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT SELECT
    ON OBJECT::[dbo].[IP_InventoryHistory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT UPDATE
    ON OBJECT::[dbo].[IP_InventoryHistory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT VIEW DEFINITION
    ON OBJECT::[dbo].[IP_InventoryHistory] TO [InventoryAdmin]
    AS [dbo];


GO
GRANT VIEW CHANGE TRACKING
    ON OBJECT::[dbo].[IP_InventoryHistory] TO [InventoryAdmin]
    AS [dbo];

