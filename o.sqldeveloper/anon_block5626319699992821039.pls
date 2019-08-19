DECLARE
  TSROWNERID NUMBER;
  v_Return ESTARS.ACCOUNT_ASSIGNMENTS_TYPES.EMPLOYEE_ASSIGNMENT_VA;
BEGIN
  TSROWNERID := 58069;

  v_Return := ACCOUNT_ASSIGNMENTS.GET_TSR_OWNER_TEAM(
    TSROWNERID => TSROWNERID
  );
  /* Legacy output: 
DBMS_OUTPUT.PUT_LINE('v_Return = ' || v_Return);
*/ 
  --:v_Return := v_Return;
rollback; 
END;
