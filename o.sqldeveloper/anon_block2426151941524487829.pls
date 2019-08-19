DECLARE
  TEST_TABLE VARCHAR2(200);
  TEST_ACCESS_CODE VARCHAR2(200);
  TEST_USER_ID VARCHAR2(200);
  TEST_SELECT BOOLEAN;
  TEST_INSERT BOOLEAN;
  TEST_UPDATE BOOLEAN;
BEGIN
  TEST_TABLE := 'OPPORTUNITY_EMPLOYEE';
  TEST_ACCESS_CODE := 'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB';
  TEST_USER_ID := NULL;
  TEST_SELECT := NULL;
  TEST_INSERT := NULL;
  TEST_UPDATE := NULL;

  MAINT.SECURITY_TEST(
    TEST_TABLE => TEST_TABLE,
    TEST_ACCESS_CODE => TEST_ACCESS_CODE,
    TEST_USER_ID => TEST_USER_ID,
    TEST_SELECT => TEST_SELECT,
    TEST_INSERT => TEST_INSERT,
    TEST_UPDATE => TEST_UPDATE
  );
rollback; 
END;
