DECLARE
  ACCT_ID NUMBER;
  v_Return VARCHAR2(200);
BEGIN
  ACCT_ID := 2055032;

  v_Return := ACCOUNTS.GET_ACCOUNT_IP_TERRS(
    ACCT_ID => ACCT_ID
  );
  /* Legacy output: 
DBMS_OUTPUT.PUT_LINE('v_Return = ' || v_Return);
*/ 
  :v_Return := v_Return;
--rollback; 
END;
