-- Create a table
CREATE TABLE ServerErrors
(
    ErrorInfo NVARCHAR2(100)
);

-- Execute Trigger

CREATE OR REPLACE TRIGGER log_errors AFTER SERVERERROR ON DATABASE 
BEGIN
    INSERT INTO ServerErrors VALUES ('Error occured on server');
END;