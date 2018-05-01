CREATE QUEUE [dbo].[SqlQueryNotificationService-7040dcb5-5610-4c5f-bda7-79b589476b35]
    WITH ACTIVATION (STATUS = ON, PROCEDURE_NAME = [dbo].[SqlQueryNotificationStoredProcedure-7040dcb5-5610-4c5f-bda7-79b589476b35], MAX_QUEUE_READERS = 1, EXECUTE AS OWNER);

