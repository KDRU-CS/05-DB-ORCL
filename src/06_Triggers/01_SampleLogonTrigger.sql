-- Create a table
CREATE TABLE LogInInfo
(
    LogOn NVARCHAR2(100)
);

-- Execute Trigger

CREATE OR REPLACE TRIGGER On_Logon  
  AFTER LOGON  
  ON SYSTEM.Schema  
BEGIN  
  INSERT INTO LogInInfo VALUES ('User logged in');  
END; 