CREATE OR REPLACE PROCEDURE create_table
    (p_table_name VARCHAR2, p_col_specs VARCHAR2) IS
    BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE ' || p_table_name
        || ' (' || p_col_specs|| ' )';
    END;

BEGIN
    create_table ('EMPLOYEES_NAMES', 'id NUMBER (4)
    PRIMARY KEY, name VARCHAR2 (40)');
    END;