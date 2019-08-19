DECLARE
  COL VARCHAR2(200);
BEGIN
  COL := 'CREATED';

  ORION39366.DO_AUDIT(
    COL => COL
  );
rollback; 
END;
