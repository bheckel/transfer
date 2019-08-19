DECLARE
  IN_ACCOUNT_ID NUMBER;
  IN_FORCE NUMBER;
  IN_OUT_INFO VARCHAR2(200);
BEGIN
  IN_ACCOUNT_ID := 6643913;
  IN_FORCE := 2;
  IN_OUT_INFO := NULL;

  ACCOUNTS.EXECUTE_ACCOUNT_DELETE(
    IN_ACCOUNT_ID => IN_ACCOUNT_ID,
    IN_FORCE => IN_FORCE,
    IN_OUT_INFO => IN_OUT_INFO
  );
  /* Legacy output: 
DBMS_OUTPUT.PUT_LINE('IN_OUT_INFO = ' || IN_OUT_INFO);
*/ 
  :IN_OUT_INFO := IN_OUT_INFO;
rollback; 
END;
