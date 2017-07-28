CREATE TABLE [dbo].[T002_Passwords_ALL] (
    [Audience_Me_IT]              NVARCHAR (255) NULL,
    [Audience_e01]                INT            NULL,
    [UserType_OS_SQL_Application] NVARCHAR (255) NULL,
    [UserType_e02]                INT            NULL,
    [UserName]                    NVARCHAR (255) NULL,
    [password]                    NVARCHAR (255) NULL,
    [Application_or_Device]       NVARCHAR (255) NULL,
    [OS_user_type]                NVARCHAR (255) NULL,
    [OS_User_Type_e03]            INT            NULL,
    [Computer_for_UserName]       NVARCHAR (255) NULL,
    [Notes]                       NVARCHAR (255) NULL,
    [T002_PK]                     INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [T002_Passwords_ALL_$_T002_PK] PRIMARY KEY CLUSTERED ([T002_PK] ASC),
    CONSTRAINT [T002_Passwords_ALL_$_Audience_e01_$enum$_T002_enum_01_Value] FOREIGN KEY ([Audience_e01]) REFERENCES [dbo].[T002_enum_01] ([T002_enum_01_Value]),
    CONSTRAINT [T002_Passwords_ALL_$_OS_User_Type_e03_$enum$_T002_enum_03_Value] FOREIGN KEY ([OS_User_Type_e03]) REFERENCES [dbo].[T002_enum_03] ([T002_enum_03_Value]),
    CONSTRAINT [T002_Passwords_ALL_$_UserType_e02_$enum$_T002_enum_02_Value] FOREIGN KEY ([UserType_e02]) REFERENCES [dbo].[T002_enum_02] ([T002_enum_02_Value])
);

