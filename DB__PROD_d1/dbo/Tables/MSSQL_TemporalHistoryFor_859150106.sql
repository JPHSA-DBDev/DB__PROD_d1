CREATE TABLE [dbo].[MSSQL_TemporalHistoryFor_859150106] (
    [T007_PK]                              INT           NOT NULL,
    [T004_IP_Inventory_FK]                 INT           NULL,
    [Note]                                 NTEXT         NULL,
    [DateCreated]                          DATETIME      NULL,
    [T007_IP_Inventory_History_RowVersion] ROWVERSION    NULL,
    [TimeStart]                            DATETIME2 (2) NOT NULL,
    [TimeEnd]                              DATETIME2 (2) NOT NULL
);


GO
EXECUTE sp_tableoption @TableNamePattern = N'[dbo].[MSSQL_TemporalHistoryFor_859150106]', @OptionName = N'text in row', @OptionValue = N'256';


GO
CREATE CLUSTERED INDEX [ix_MSSQL_TemporalHistoryFor_859150106]
    ON [dbo].[MSSQL_TemporalHistoryFor_859150106]([TimeEnd] ASC, [TimeStart] ASC) WITH (DATA_COMPRESSION = PAGE);

