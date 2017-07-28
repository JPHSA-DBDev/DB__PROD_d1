CREATE TABLE [dbo].[Monitor_InventoryHistory] (
    [T008_PK]                                   INT           NOT NULL,
    [T006_Monitor_Inventory_FK]                 INT           NULL,
    [Note]                                      NTEXT         NULL,
    [DateCreated]                               DATETIME      NULL,
    [T008_Monitor_Inventory_History_RowVersion] ROWVERSION    NULL,
    [TimeStart]                                 DATETIME2 (2) NOT NULL,
    [TimeEnd]                                   DATETIME2 (2) NOT NULL
);


GO
EXECUTE sp_tableoption @TableNamePattern = N'[dbo].[Monitor_InventoryHistory]', @OptionName = N'text in row', @OptionValue = N'256';


GO
CREATE CLUSTERED INDEX [ix_Monitor_InventoryHistory]
    ON [dbo].[Monitor_InventoryHistory]([TimeEnd] ASC, [TimeStart] ASC) WITH (DATA_COMPRESSION = PAGE);

