CREATE TABLE  "EMP" 
   (	"EMPNO" NUMBER(4,0) NOT NULL ENABLE, 
	"ENAME" VARCHAR2(50), 
	"JOB" VARCHAR2(50), 
	"MGR" NUMBER(4,0), 
	"HIREDATE" DATE, 
	"SAL" NUMBER(7,2), 
	"COMM" NUMBER(7,2), 
	"DEPTNO" NUMBER(2,0), 
	 CONSTRAINT "EMP_PK" PRIMARY KEY ("EMPNO")
  USING INDEX  ENABLE
   );
/
ALTER TABLE  "EMP" ADD CONSTRAINT "EMP_MGR_FK" FOREIGN KEY ("MGR")
	  REFERENCES  "EMP" ("EMPNO") ENABLE;
/
ALTER TABLE  "EMP" ADD CONSTRAINT "EMP_DEPT_FK" FOREIGN KEY ("DEPTNO")
	  REFERENCES  "DEPT" ("DEPTNO") ENABLE;
/

ALTER TABLE "EMP" ADD AGE NUMBER;