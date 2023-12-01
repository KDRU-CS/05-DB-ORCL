-- Create a table
CREATE TABLE Products
(
    ProductName NVARCHAR2(100),
    ProductCompany NVARCHAR2(100)
);

-- Create a table for logs
CREATE TABLE ProductLogs
(
    EventName NVARCHAR2(100)
);

-- Trigger
CREATE OR REPLACE TRIGGER trg_1 
    BEFORE DELETE OR INSERT OR UPDATE ON Products
BEGIN
    IF INSERTING THEN
        INSERT INTO ProductLogs VALUES
              ('INSERTED');
    ELSIF DELETING THEN
        INSERT INTO ProductLogs VALUES
              ('DELETED');
    ELSE
        INSERT INTO ProductLogs VALUES
              ('UPDATED');   
    END IF;
END;
