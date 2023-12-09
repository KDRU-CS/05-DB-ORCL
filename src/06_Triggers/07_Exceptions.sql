CREATE TABLE Persons (
    FullName VARCHAR2(200),
    Gender VARCHAR2(10)
);

DECLARE
  myError EXCEPTION;
  v_gender varchar2 (10);
BEGIN
  SELECT gender INTO v_gender from Persons WHERE FullName = '';
  IF v_gender = 'M' THEN
      RAISE myError;
  END IF;
EXCEPTION
  WHEN myError THEN
    ROLLBACK;
    RAISE;
END;
