DECLARE
  IN_ACCOUNTID NUMBER;
  IN_CONTEXTBEINGUSED NUMBER;
  v_Return NUMBER;
BEGIN
  IN_ACCOUNTID := NULL;
  IN_CONTEXTBEINGUSED := 2;

  v_Return := ACCOUNTS.HASLINKAGES(
    IN_ACCOUNTID => IN_ACCOUNTID,
    IN_CONTEXTBEINGUSED => IN_CONTEXTBEINGUSED
  );
  /* Legacy output: 
DBMS_OUTPUT.PUT_LINE('v_Return = ' || v_Return);
*/ 
  :v_Return := v_Return;
rollback; 
END;
