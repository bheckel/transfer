BEGIN
  SET_SITE_LOYALTY_OWNER();
--rollback;
commit;
END;