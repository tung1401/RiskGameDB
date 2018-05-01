CREATE SERVICE [SqlQueryNotificationService-7040dcb5-5610-4c5f-bda7-79b589476b35]
    AUTHORIZATION [dbo]
    ON QUEUE [dbo].[SqlQueryNotificationService-7040dcb5-5610-4c5f-bda7-79b589476b35]
    ([http://schemas.microsoft.com/SQL/Notifications/PostQueryNotification]);

