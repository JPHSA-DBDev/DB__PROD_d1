CREATE TABLE [dbo].[MonitorHistory] (
    [T008_PK]                         INT           NOT NULL,
    [T006_IP_Inventory_FK]            INT           NULL,
    [Note]                            NTEXT         NULL,
    [DateCreated]                     DATETIME      NULL,
    [T008_Monitor_History_RowVersion] ROWVERSION    NULL,
    [TimeStart]                       DATETIME2 (2) NOT NULL,
    [TimeEnd]                         DATETIME2 (2) NOT NULL
);


GO
EXECUTE sp_tableoption @TableNamePattern = N'[dbo].[MonitorHistory]', @OptionName = N'text in row', @OptionValue = N'256';


GO
CREATE CLUSTERED INDEX [ix_MonitorHistory]
    ON [dbo].[MonitorHistory]([TimeEnd] ASC, [TimeStart] ASC) WITH (DATA_COMPRESSION = PAGE);

