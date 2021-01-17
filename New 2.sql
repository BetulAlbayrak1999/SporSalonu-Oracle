BEGIN
  DBMS_SCHEDULER.CREATE_JOB (
    job_name   => 'MY_TEST_JOB',
    job_type   => 'PLSQL_BLOCK',
    job_action => 'BEGIN NULL; END;',
    start_date => TRUNC(SYSDATE), 
    repeat_interval => 'FREQ=weekly;BYDAY=min,tue,wed,thu,fri;BYHOUR=7,8,9,10,11,12;BYMINUTE=0;BYSECOND=0');
END;
/
