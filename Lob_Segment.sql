spool RE_ORG_06_VALIDATE_ATTACH_1.log
set time on;
set timing on;
SET SERVEROUTPUT ON SIZE 100000;
DECLARE
OT1 VARCHAR2(20);
TB1 VARCHAR2(32);
LOB1 VARCHAR2(32);
ddl_qry VARCHAR2(650);


CURSOR TBL1 IS
 SELECT owner, table_name, column_name FROM dba_lobs WHERE segment_name = 'SYS_LOB0013016245C00045$$';


BEGIN


OPEN TBL1;
loop
fetch TBL1 INTO OT1,TB1,LOB1;
EXIT WHEN TBL1%NOTFOUND;
 ddl_qry := 'ALTER TABLE ' || OT1 || '.' || TB1 || ' MOVE LOB (' || LOB1 || ') STORE AS (TABLESPACE XBOL_TS_TX_DATA)';
EXECUTE IMMEDIATE ddl_qry;
dbms_output.put_line('TABLE REORG FOR '||TB1||' COMPLETED');

END LOOP;


CLOSE TBL1;
END;
/
spool off
