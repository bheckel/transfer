DECLARE
  COL VARCHAR2(200);
BEGIN
  COL := 'CREATED';

  ORION39366.DO_UPDATE(
    COL => COL
  );
rollback; 
END;
