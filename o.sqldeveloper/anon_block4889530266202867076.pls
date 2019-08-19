DECLARE
  A_ID NUMBER;
  v_Return VARCHAR2(200);
BEGIN
  A_ID := 7440964;

  v_Return := ACCOUNT_OWNERS(
    A_ID => A_ID
  );
  /* Legacy output: 
DBMS_OUTPUT.PUT_LINE('v_Return = ' || v_Return);
*/ 
  :v_Return := v_Return;
--rollback; 
END;
