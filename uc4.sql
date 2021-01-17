DECLARE
  NEWJOBID NUMBER;
BEGIN
  SYS.DBMS_JOB.SUBMIT
    ( JOB       => NEWJOBID
     ,WHAT      => 'GENERAL_SPORT.COMPUTE_INVOICE(1);'
     ,NEXT_DATE => TO_DATE('06/Aug/20', 'DD/MON/YY')
     ,INTERVAL  => 'TRUNC(SYSDATE+1)'
     ,NO_PARSE  => FALSE);
  SYS.DBMS_OUTPUT.PUT_LINE
    ('Job Number is: ' || TO_CHAR(NEWJOBID));
  COMMIT;
END;


BEGIN
  DBMS_SCHEDULER.CREATE_JOB (
    job_name   => 'MY_TEST_JOB',
    job_type   => 'PLSQL_BLOCK',
    job_action => 'BEGIN NULL; END;',
    start_date => TRUNC(SYSDATE), 
    repeat_interval => 'FREQ=weekly;BYDAY=min,tue,wed,thu,fri;BYHOUR=7,8,9,10,11,12;BYMINUTE=0;BYSECOND=0');
END;
/
