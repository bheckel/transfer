DECLARE
  A_ID NUMBER;
  v_Return DATE;
BEGIN
  A_ID := 1814776;

  v_Return := ACCOUNT_CUSTOMER_SINCE(
    A_ID => A_ID
  );
  /* Legacy output: 
DBMS_OUTPUT.PUT_LINE('v_Return = ' || v_Return);
*/ 
  :v_Return := v_Return;
rollback; 
END;
