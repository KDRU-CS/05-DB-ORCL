CREATE TABLE Persons (
    FullName VARCHAR2(200),
    Gender VARCHAR2(10)
);

DECLARE
  v_gender varchar2 (10);
  message varchar2 (250);
BEGIN
  SELECT gender INTO v_gender from Persons WHERE FullName = '';
  IF v_gender = 'M' THEN
    message := 'MALE';
  ELSE
    RAISE_APPLICATION_ERROR(-20101, 'Gender is missing');
  END IF;
  DBMS_OUTPUT.PUT_LINE('Message: ' || message);
END;