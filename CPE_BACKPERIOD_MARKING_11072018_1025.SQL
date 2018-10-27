--------------------------------------------------------
--  File created - Wednesday-July-11-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CPE_YTB_ECD_BP
--------------------------------------------------------

  CREATE TABLE "NICEPFO"."CPE_YTB_ECD_BP" 
   (	"TRRNO" VARCHAR2(13), 
	"TRRNO_ECD" VARCHAR2(13), 
	"CHALLAN_REF_NO" VARCHAR2(15), 
	"EST_ID" VARCHAR2(15), 
	"ACC_YEAR" NUMBER(6,0), 
	"EM_ACC_YEAR" NUMBER(4,0), 
	"DUE_MONTH_EE" NUMBER(6,0), 
	"MONTH_YEAR" NUMBER(6,0), 
	"ECR_FLAG" VARCHAR2(1), 
	"RECON_CHALLAN_3A" VARCHAR2(1), 
	"ECD_TOTAL" NUMBER, 
	"YTB_TOTAL" NUMBER, 
	"MISMATCH_FLAG" VARCHAR2(1), 
	"YT_FLAG" VARCHAR2(1), 
	"YTH_FLAG" VARCHAR2(1), 
	"YTH_TOTAL" NUMBER, 
	"ECR_REJ_FLAG" VARCHAR2(1), 
	"ECR_REJ_TOTAL" NUMBER, 
	"ECR_REV_FLAG" VARCHAR2(1), 
	"ECR_REV_TOTAL" NUMBER, 
	"REMARKS" VARCHAR2(500), 
	"CPE_FLAG" VARCHAR2(1), 
	"CREATED_DATE" DATE, 
	"OP_TS" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table CPE_YTB_ECD_BP_HISTORY
--------------------------------------------------------

  CREATE TABLE "NICEPFO"."CPE_YTB_ECD_BP_HISTORY" 
   (	"TRRNO" VARCHAR2(13), 
	"TRRNO_ECD" VARCHAR2(13), 
	"CHALLAN_REF_NO" VARCHAR2(15), 
	"EST_ID" VARCHAR2(15), 
	"ACC_YEAR" NUMBER(6,0), 
	"EM_ACC_YEAR" NUMBER(4,0), 
	"DUE_MONTH_EE" NUMBER(6,0), 
	"MONTH_YEAR" NUMBER(6,0), 
	"ECR_FLAG" VARCHAR2(1), 
	"RECON_CHALLAN_3A" VARCHAR2(1), 
	"ECD_TOTAL" NUMBER, 
	"YTB_TOTAL" NUMBER, 
	"MISMATCH_FLAG" VARCHAR2(1), 
	"YT_FLAG" VARCHAR2(1), 
	"YTH_FLAG" VARCHAR2(1), 
	"YTH_TOTAL" NUMBER, 
	"ECR_REJ_FLAG" VARCHAR2(1), 
	"ECR_REJ_TOTAL" NUMBER, 
	"ECR_REV_FLAG" VARCHAR2(1), 
	"ECR_REV_TOTAL" NUMBER, 
	"REMARKS" VARCHAR2(500), 
	"CPE_FLAG" VARCHAR2(1), 
	"CREATED_DATE" DATE, 
	"OP_TS" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Index PK_CPE_YTB_ECD_BP_TRRN
--------------------------------------------------------

  CREATE UNIQUE INDEX "NICEPFO"."PK_CPE_YTB_ECD_BP_TRRN" ON "NICEPFO"."CPE_YTB_ECD_BP" ("TRRNO") 
  ;
--------------------------------------------------------
--  DDL for Index INX_CPE_YTB_ECD_BP_ESTIDACCYR
--------------------------------------------------------

  CREATE INDEX "NICEPFO"."INX_CPE_YTB_ECD_BP_ESTIDACCYR" ON "NICEPFO"."CPE_YTB_ECD_BP" ("EST_ID", "ACC_YEAR") 
  ;
--------------------------------------------------------
--  DDL for Index INX_CPE_YTB_ECD_BP_OPTS
--------------------------------------------------------

  CREATE INDEX "NICEPFO"."INX_CPE_YTB_ECD_BP_OPTS" ON "NICEPFO"."CPE_YTB_ECD_BP" ("OP_TS") 
  ;
--------------------------------------------------------
--  DDL for Index PK_CPE_YTBECDBP_H_ESTIDACCYR
--------------------------------------------------------

  CREATE INDEX "NICEPFO"."INX_CPE_YTBECDBP_H_ESTIDACCYR" ON "NICEPFO"."CPE_YTB_ECD_BP_HISTORY" ("EST_ID", "ACC_YEAR") 
  ;
--------------------------------------------------------
--  DDL for Index INX_CPEYTBECDBP_H_OPTS
--------------------------------------------------------

  CREATE INDEX "NICEPFO"."INX_CPEYTBECDBP_H_OPTS" ON "NICEPFO"."CPE_YTB_ECD_BP_HISTORY" ("OP_TS") 
  ;
--------------------------------------------------------
--  DDL for Index INX_CPEYTBECDBP_H_TRRN
--------------------------------------------------------

  CREATE INDEX "NICEPFO"."INX_CPEYTBECDBP_H_TRRN" ON "NICEPFO"."CPE_YTB_ECD_BP_HISTORY" ("TRRNO") 
  ;
  
  
  ---------------------------NEW FIELDS ADDTION----------------------START-----------
  
  ALTER TABLE NICEPFO.CPE_AUTO_SCHEDULER 
ADD (CONT_START_TIME_BP TIMESTAMP );

/
ALTER TABLE  NICEPFO.CPE_AUTO_SCHEDULER 
ADD (CONT_END_TIME_BP TIMESTAMP );
/

ALTER TABLE  NICEPFO.CPE_AUTO_SCHEDULER_LOG 
ADD (CONT_START_TIME_BP TIMESTAMP );
/

ALTER TABLE  NICEPFO.CPE_AUTO_SCHEDULER_LOG 
ADD (CONT_END_TIME_BP TIMESTAMP );
/

ALTER TABLE  NICEPFO.CPE_AUTO_SCHEDULER 
ADD (MARK_CONT_ST_TIME_BP TIMESTAMP);
/

ALTER TABLE  NICEPFO.CPE_AUTO_SCHEDULER 
ADD (MARK_CONT_END_TIME_BP TIMESTAMP);
/

ALTER TABLE  NICEPFO.CPE_AUTO_SCHEDULER_LOG 
ADD (MARK_CONT_ST_TIME_BP TIMESTAMP);
/

ALTER TABLE  NICEPFO.CPE_AUTO_SCHEDULER_LOG 
ADD (MARK_CONT_END_TIME_BP TIMESTAMP);
/



ALTER TABLE NICEPFO.CPE_AUTO_PROCESSING
ADD (CONT_MISMATCH_BP VARCHAR2(1));
/
ALTER TABLE NICEPFO.CPE_AUTO_PROCESSING
ADD (CURR_DUE_BP NUMBER);
/
ALTER TABLE NICEPFO.CPE_AUTO_PROCESSING
ADD (CURR_CONT_BP NUMBER);
/

ALTER TABLE NICEPFO.CPE_AUTO_PROCESSING_HISTORY
ADD (CONT_MISMATCH_BP VARCHAR2(1));
/
ALTER TABLE NICEPFO.CPE_AUTO_PROCESSING_HISTORY
ADD (CURR_DUE_BP NUMBER);
/
ALTER TABLE NICEPFO.CPE_AUTO_PROCESSING_HISTORY
ADD (CURR_CONT_BP NUMBER);
/

ALTER TABLE NICEPFO.CPE_AUTO_PROCESSING
ADD (BP_TRRN_LIST VARCHAR2(4000));
/

ALTER TABLE NICEPFO.CPE_AUTO_PROCESSING_HISTORY
ADD (BP_TRRN_LIST VARCHAR2(4000));
/
  
  ---------------------------NEW FIELDS ADDTION----------------------END-----------
  
  
--------------------------------------------------------
--  DDL for Package CPE_MARKING_BP_FO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "NICEPFO"."CPE_MARKING_BP_FO" AS
    FUNCTION MGN RETURN VARCHAR2;

    PROCEDURE ANAYLISE_CPE_ESTS_BP;
    PROCEDURE TEST_BP_RUN;
    PROCEDURE ANAYLISE_EST_BP (
        VESTID_IN      IN VARCHAR2,
        VACC_YR_IN     IN VARCHAR2,
        V_OP_MODE      IN VARCHAR2,
        V_STATUS_OUT   OUT VARCHAR2,
        V_ERR_MSG      OUT VARCHAR
    );

    FUNCTION TRRN_EXITS_ECD (
        VTRRNO_IN IN VARCHAR2
    ) RETURN VARCHAR2;

    PROCEDURE GET_ECD_DETAILS (
        VTRRNO_IN             IN VARCHAR2,
        VTRRNO_ECD_OUT        OUT VARCHAR2,
        VCHALLAN_REF_NO_OUT   OUT VARCHAR2,
        VDUE_MONTH_EE_OUT     OUT VARCHAR2,
        VECD_TOTAL_OUT        OUT NUMBER,
        VECR_FLAG_OUT OUT VARCHAR2
    );
    PROCEDURE GET_VDR_DETAILS (
        VTRRNO_IN             IN VARCHAR2,
        VTRRNO_ECD_OUT        OUT VARCHAR2,
        VCHALLAN_REF_NO_OUT   OUT VARCHAR2,
        VDUE_MONTH_EE_OUT     OUT VARCHAR2,
        VECD_TOTAL_OUT        OUT NUMBER,
        VECR_FLAG_OUT OUT VARCHAR2
    );

     PROCEDURE GET_ECD_VDR_DETAILS (
        VTRRNO_IN             IN VARCHAR2,
        VTRRNO_ECD_OUT        OUT VARCHAR2,
        VCHALLAN_REF_NO_OUT   OUT VARCHAR2,
        VDUE_MONTH_EE_OUT     OUT VARCHAR2,
        VECD_TOTAL_OUT        OUT NUMBER,
        VECR_FLAG_OUT OUT VARCHAR2
    );
END CPE_MARKING_BP_FO;

/
--------------------------------------------------------
--  DDL for Package CPE_SCHEDULAR_FO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "NICEPFO"."CPE_SCHEDULAR_FO" AS
    G_PACKAGE VARCHAR2(30) := '#CPE_SCHEDULAR_FO';
    G_PROCNAME VARCHAR2(100) := NULL;
    G_SCHEDULER_ID NUMBER := 0;
    G_CPE_REFNO VARCHAR2(20);---TO HOLD CPE REFNO IN NEW FORMAT
    G_SCHEDULER_START TIMESTAMP;
    ------------------------CONSTANTS DEFINATION START-----------------
    MOVE_TO_SCHEDULER_LOG CONSTANT NUMBER :=-1;
    GENERATE_SCHEDULER_ID CONSTANT NUMBER := 0;
    PENDING_TRANS_START_TIME CONSTANT NUMBER := 1;
    PENDING_TRANS_END_TIME CONSTANT NUMBER := 2;
    CONT_MISMATCH_START_TIME CONSTANT NUMBER := 3;
    CONT_MISMATCH_END_TIME CONSTANT NUMBER := 4;
    MARK_EST_PEND_TRANS_START_TIME CONSTANT NUMBER := 5;
    MARK_EST_PEND_TRANS_END_TIME CONSTANT NUMBER := 6;
    MARK_CONT_MISMATCH_START_TIME CONSTANT NUMBER := 7;
    MARK_CONT_MISMATCH_END_TIME CONSTANT NUMBER := 8;
    MEMBAL_MISMATCH_START_TIME CONSTANT NUMBER := 9;
    MEMBAL_MISMATCH_END_TIME CONSTANT NUMBER := 10;
    CONT_MISMATCH_START_TIME_BP CONSTANT NUMBER := 11;
    CONT_MISMATCH_END_TIME_BP CONSTANT NUMBER := 12;
    MARK_CONTMISMATCH_ST_TIME_BP CONSTANT NUMBER := 13;
    MARK_CONTMISMATCH_END_TIME_BP CONSTANT NUMBER := 14;
    
    ------------------------CONSTANTS DEFINATION ENDS-----------------
    FUNCTION MGN RETURN VARCHAR2;

    FUNCTION GEN_CPE_REFNO RETURN VARCHAR2;

    FUNCTION GET_CURR_SCHEDULER_ID RETURN VARCHAR2;

    PROCEDURE MAIN_RUN_FRONT_END (
        VSTATUS_OUT   OUT VARCHAR2,
        VMSG_OUT      OUT VARCHAR2
    );

    PROCEDURE MAIN_RUN;

    PROCEDURE LOCK_EST_ALL;

    PROCEDURE UNLOCK_EST_ALL;

    PROCEDURE MARK_EST_CONT (
        VEST_ID_IN            IN VARCHAR2,
        VACC_YR_IN            IN VARCHAR2,
        V_FLAG_MISMATCH_OUT   OUT VARCHAR2,
        V_CURR_DUE_OUT        OUT NUMBER,
        V_CURR_CONT_OUT       OUT NUMBER
    );

    PROCEDURE MARK_EST_CONT_ALL;

    PROCEDURE MARK_EST_CONT_ALL_BP;

    PROCEDURE MARK_EST_CONT_BP (
        VEST_ID_IN            IN VARCHAR2,
        VACC_YR_IN            IN VARCHAR2,
        VOPTS_START_IN        IN TIMESTAMP,
        V_FLAG_MISMATCH_OUT   OUT VARCHAR2,
        V_CURR_DUE_OUT        OUT NUMBER,
        V_CURR_CONT_OUT       OUT NUMBER,
        V_TRRN_LIST_OUT       OUT VARCHAR2
    );

    PROCEDURE MARK_EST_PEND_TXN (
        VEST_ID_IN                IN VARCHAR2,
        VACC_YR_IN                IN VARCHAR2,
        V_TXN_MISMATCH_FLAG_OUT   OUT VARCHAR2
    );

    PROCEDURE MARK_EST_PEND_TXN_ALL;

    PROCEDURE LOG_PROGRESS (
        VSTEP_NO_IN IN NUMBER
    );

    PROCEDURE UPDATE_FINAL_STATUS;

    PROCEDURE UPDATE_FINAL_STATUS_BP;

    PROCEDURE CPE_READY;

    PROCEDURE CPE_END_PROCESS;

    PROCEDURE CPE_END_PROCESS_FRONT_END (
        VSTATUS_OUT   OUT VARCHAR2,
        VMSG_OUT      OUT VARCHAR2
    );

END CPE_SCHEDULAR_FO;

/
--------------------------------------------------------
--  DDL for Package Body CPE_MARKING_BP_FO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "NICEPFO"."CPE_MARKING_BP_FO" AS

    FUNCTION MGN RETURN VARCHAR2
        AS
    BEGIN
        RETURN 'MGN BACK PERIOD SHOULD WORK CORRECTLY';
    END MGN;

    PROCEDURE ANAYLISE_CPE_ESTS_BP AS
        V_STATUS   VARCHAR2(1);
        V_ERRMSG   VARCHAR2(500);
    BEGIN
        FOR Y IN (
            SELECT
                EST_ID,
                ACC_YEAR
            FROM
                CPE_AUTO_PROCESSING
            WHERE
                TRANS_TYPE IN (
                    'BP'
                )
                AND   STATUS_FLAG IS NULL
        ) LOOP
            ANAYLISE_EST_BP(Y.EST_ID,Y.ACC_YEAR,'0',V_STATUS,V_ERRMSG);
            COMMIT;
        END LOOP;
    END ANAYLISE_CPE_ESTS_BP;

    PROCEDURE ANAYLISE_EST_BP (
        VESTID_IN      IN VARCHAR2,
        VACC_YR_IN     IN VARCHAR2,
        V_OP_MODE      IN VARCHAR2,
        V_STATUS_OUT   OUT VARCHAR2,
        V_ERR_MSG      OUT VARCHAR
    ) AS

        V_OPRATION_TS       TIMESTAMP(6) := SYSDATE;
        V_TRRN_LIST         VARCHAR2(4000);
        VV_TRRNO            EST_CHALLAN_DETAILS.TRRN%TYPE;
        VV_TRRNO_ECD        EST_CHALLAN_DETAILS.TRRN%TYPE;
        VV_CHALLAN_REF_NO   EST_CHALLAN_DETAILS.CHALLAN_REF_NO%TYPE;
        VV_DUE_MONTH_EE     EST_CHALLAN_DETAILS.DUE_MONTH_EE%TYPE;
        VV_ECD_TOTAL        NUMBER;
        VV_YTB_TOTAL        NUMBER;
        VV_ECR_FLAG         EST_CHALLAN_DETAILS.ECR_FLAG%TYPE;
        VV_EM_ACC_YEAR      CPE_YTB_ECD_BP.EM_ACC_YEAR%TYPE;
        VV_MONTH_YEAR       CPE_YTB_ECD_BP.MONTH_YEAR%TYPE;
        VV_ACC_YEAR         CPE_YTB_ECD_BP.ACC_YEAR%TYPE;
        VV_MISMATCH_FLAG    VARCHAR2(1);
        CURSOR YTB_TRRNS IS SELECT
            TRRNO,
            EST_ID,
            ACC_YEAR,
            ACTIONABLE_STATUS,
            EM_ACC_YEAR,
            MONTH_YEAR
                            FROM
            (
                SELECT DISTINCT
                    TRRNO TRRNO,
                    EST_ID EST_ID,
                    ACTIONABLE_STATUS,
                    ACC_YEAR EM_ACC_YEAR,
                    MONTH_YEAR,
                    EYEAR ACC_YEAR
                FROM
                    (
                        SELECT
                            TRRNO,
                            SUBSTR(YTB.MEMBER_ID,1,15) AS EST_ID,
                            EM.EST_NAME,
                            EM.ACTIONABLE_STATUS,
                            EM.ACC_YEAR,
                            YTB.MONTH_YEAR AS MONTH_YEAR,
                            AY(YTB.MONTH_YEAR) AS EYEAR
                        FROM
                            YEARLY_TRANSACTION_BACKLOG YTB,
                            EST_MASTER EM
                        WHERE
                            SUBSTR(YTB.MEMBER_ID,1,15) = EM.EST_ID
                            AND   EM.ACC_YEAR IS NOT NULL
                            AND   YTB.SLIP_TYPE = '600'
                            AND   YTB.RECORD_STATUS = '0'
                            AND   YTB.INTEREST_ID IS NULL
                            AND   SUBSTR(EM.EXEMPTION_STATUS,1,1) = 'U'
                            AND   EM.ACC_YEAR > AY(YTB.MONTH_YEAR)
                            AND   YTB.TRRNO IS NOT NULL
                            AND   YTB.MEMBER_ID LIKE VESTID_IN
                            || '%'
                            AND   AY(YTB.MONTH_YEAR) = VACC_YR_IN
                    )
            );

        YTB_TRRNS_RT        YTB_TRRNS%ROWTYPE;

        PROCEDURE MOVE_TO_HISTORY
            AS
        BEGIN
            INSERT INTO CPE_YTB_ECD_BP_HISTORY (
                TRRNO,
                TRRNO_ECD,
                CHALLAN_REF_NO,
                EST_ID,
                ACC_YEAR,
                EM_ACC_YEAR,
                DUE_MONTH_EE,
                MONTH_YEAR,
                ECR_FLAG,
                RECON_CHALLAN_3A,
                ECD_TOTAL,
                YTB_TOTAL,
                MISMATCH_FLAG,
                YT_FLAG,
                YTH_FLAG,
                YTH_TOTAL,
                ECR_REJ_FLAG,
                ECR_REJ_TOTAL,
                ECR_REV_FLAG,
                ECR_REV_TOTAL,
                REMARKS,
                CPE_FLAG,
                CREATED_DATE,
                OP_TS
            )
                SELECT
                    TRRNO,
                    TRRNO_ECD,
                    CHALLAN_REF_NO,
                    EST_ID,
                    ACC_YEAR,
                    EM_ACC_YEAR,
                    DUE_MONTH_EE,
                    MONTH_YEAR,
                    ECR_FLAG,
                    RECON_CHALLAN_3A,
                    ECD_TOTAL,
                    YTB_TOTAL,
                    MISMATCH_FLAG,
                    YT_FLAG,
                    YTH_FLAG,
                    YTH_TOTAL,
                    ECR_REJ_FLAG,
                    ECR_REJ_TOTAL,
                    ECR_REV_FLAG,
                    ECR_REV_TOTAL,
                    REMARKS,
                    CPE_FLAG,
                    CREATED_DATE,
                    OP_TS
                FROM
                    CPE_YTB_ECD_BP
                WHERE
                    EST_ID = VESTID_IN
                    AND   ACC_YEAR = VACC_YR_IN;

            DELETE FROM CPE_YTB_ECD_BP
            WHERE
                EST_ID = VESTID_IN
                AND   ACC_YEAR = VACC_YR_IN;

            COMMIT;
        END MOVE_TO_HISTORY;

        PROCEDURE CAPTURE_INIT_STATE
            AS
        BEGIN
            INSERT INTO CPE_YTB_ECD_BP (
                TRRNO,
                EST_ID,
                ACC_YEAR,
                EM_ACC_YEAR,
                MONTH_YEAR,
                OP_TS
            ) VALUES (
                VV_TRRNO,
                VESTID_IN,
                VV_ACC_YEAR,
                VV_EM_ACC_YEAR,
                VV_MONTH_YEAR,
                V_OPRATION_TS
            );

        END CAPTURE_INIT_STATE;

        PROCEDURE INIT_VARIABLES
            AS
        BEGIN
            VV_TRRNO := NULL;
            VV_TRRNO_ECD := NULL;
            VV_CHALLAN_REF_NO := NULL;
            VV_DUE_MONTH_EE := NULL;
            VV_ECD_TOTAL := 0;
            VV_ECR_FLAG := NULL;
        END INIT_VARIABLES;

        PROCEDURE INIT_LOCAL_VAR_WITH_CURSOR (
            M_TRRNO_IN         IN YTB_TRRNS_RT.TRRNO%TYPE,
            M_EM_ACC_YEAR_IN   IN YTB_TRRNS_RT.EM_ACC_YEAR%TYPE,
            M_MONTH_YEAR_IN    IN YTB_TRRNS_RT.MONTH_YEAR%TYPE,
            M_ACC_YEAR_IN      IN YTB_TRRNS_RT.ACC_YEAR%TYPE
        )
            AS
        BEGIN
            VV_TRRNO := M_TRRNO_IN;
            VV_EM_ACC_YEAR := M_EM_ACC_YEAR_IN;
            VV_MONTH_YEAR := M_MONTH_YEAR_IN;
            VV_ACC_YEAR := M_ACC_YEAR_IN;
        END INIT_LOCAL_VAR_WITH_CURSOR;

        PROCEDURE CAL_MISMATCH_UPDATE_DATA
            AS
        BEGIN
            VV_YTB_TOTAL := CPE_MARKING_FO.GET_YTB_TOTAL(VV_TRRNO);
            IF
                VV_YTB_TOTAL = VV_ECD_TOTAL
            THEN
                VV_MISMATCH_FLAG := 'N';
            ELSE
                VV_MISMATCH_FLAG := 'Y';
            END IF;

            UPDATE CPE_YTB_ECD_BP
                SET
                    TRRNO_ECD = VV_TRRNO_ECD,
                    EST_ID = VESTID_IN,
                    ACC_YEAR = VV_ACC_YEAR,
                    EM_ACC_YEAR = VV_EM_ACC_YEAR,
                    MONTH_YEAR = VV_MONTH_YEAR,
                    OP_TS = V_OPRATION_TS,
                    CHALLAN_REF_NO = VV_CHALLAN_REF_NO,
                    DUE_MONTH_EE = VV_DUE_MONTH_EE,
                    ECD_TOTAL = VV_ECD_TOTAL,
                    YTB_TOTAL = VV_YTB_TOTAL,
                    ECR_FLAG = VV_ECR_FLAG,
                    MISMATCH_FLAG = VV_MISMATCH_FLAG,
                    CREATED_DATE = SYSDATE
            WHERE
                TRRNO = VV_TRRNO;

        END CAL_MISMATCH_UPDATE_DATA;

    BEGIN
    ----MAIN EXECUTION BLOCK------
        MOVE_TO_HISTORY;
        FOR X IN YTB_TRRNS LOOP
            INIT_VARIABLES;
            INIT_LOCAL_VAR_WITH_CURSOR(X.TRRNO,X.EM_ACC_YEAR,X.MONTH_YEAR,X.ACC_YEAR);

            V_TRRN_LIST := V_TRRN_LIST + X.TRRNO;
            CAPTURE_INIT_STATE;
            IF
                TRRN_EXITS_ECD(X.TRRNO) = 'Y'
            THEN
                GET_ECD_DETAILS(VV_TRRNO,VV_TRRNO_ECD,VV_CHALLAN_REF_NO,VV_DUE_MONTH_EE,VV_ECD_TOTAL,VV_ECR_FLAG);
            ELSE
                GET_ECD_VDR_DETAILS(VV_TRRNO,VV_TRRNO_ECD,VV_CHALLAN_REF_NO,VV_DUE_MONTH_EE,VV_ECD_TOTAL,VV_ECR_FLAG);
            END IF;

            CAL_MISMATCH_UPDATE_DATA;
        END LOOP;

    END ANAYLISE_EST_BP;

    FUNCTION TRRN_EXITS_ECD (
        VTRRNO_IN IN VARCHAR2
    ) RETURN VARCHAR2 AS
        V_STATUS   VARCHAR2(1);
    BEGIN
        SELECT
            (
                CASE
                    WHEN EXISTS (
                        ( SELECT
                            TRRN
                          FROM
                            EST_CHALLAN_DETAILS A
                          WHERE
                            A.TRRN = VTRRNO_IN
                            AND   SLIP_TYPE = 600
                            AND   RECORD_STATUS = 0
                        )
                    ) THEN 'Y'
                    ELSE 'N'
                END
            ) STATUS_YT
        INTO
            V_STATUS
        FROM
            DUAL;

        RETURN V_STATUS;
    END TRRN_EXITS_ECD;

    PROCEDURE GET_ECD_DETAILS (
        VTRRNO_IN             IN VARCHAR2,
        VTRRNO_ECD_OUT        OUT VARCHAR2,
        VCHALLAN_REF_NO_OUT   OUT VARCHAR2,
        VDUE_MONTH_EE_OUT     OUT VARCHAR2,
        VECD_TOTAL_OUT        OUT NUMBER,
        VECR_FLAG_OUT         OUT VARCHAR2
    )
        AS
    BEGIN
        VECD_TOTAL_OUT := 0;
        ---TO DO ADD CHECK TO COUNT THE CHALLAN_REF_NO AGAINST TRRN IF IT IS>1 THEN ERROR MAY BE RAISED.
        SELECT
            TRRN ECD_TRRN,
            CHALLAN_REF_NO,
            NVL(TOTAL_AMOUNT_01,0) + NVL(TOTAL_AMOUNT_10,0) TOTAL_ECD,
            DUE_MONTH_EE DUE_MONTH_EE_OUT,
            ECR_FLAG
        INTO
            VTRRNO_ECD_OUT,VCHALLAN_REF_NO_OUT,VECD_TOTAL_OUT,VDUE_MONTH_EE_OUT,VECR_FLAG_OUT
        FROM
            EST_CHALLAN_DETAILS
        WHERE
            TRRN = VTRRNO_IN
            AND   RECORD_STATUS = 0
            AND   SLIP_TYPE = 600;
----EXCEPTION HANDLING PENDING

    END GET_ECD_DETAILS;

    PROCEDURE GET_ECD_VDR_DETAILS (
        VTRRNO_IN             IN VARCHAR2,
        VTRRNO_ECD_OUT        OUT VARCHAR2,
        VCHALLAN_REF_NO_OUT   OUT VARCHAR2,
        VDUE_MONTH_EE_OUT     OUT VARCHAR2,
        VECD_TOTAL_OUT        OUT NUMBER,
        VECR_FLAG_OUT         OUT VARCHAR2
    )
        AS
    BEGIN
        VECD_TOTAL_OUT := 0;
        ---TO DO ADD CHECK TO COUNT THE CHALLAN_REF_NO AGAINST TRRN IF IT IS>1 THEN ERROR MAY BE RAISED.
        SELECT
            VDR_TRRN ECD_TRRN,
            (
                SELECT
                    CHALLAN_REF_NO
                FROM
                    EST_CHALLAN_DETAILS
                WHERE
                    TRRN = (
                        SELECT
                            VDR_TRRN
                        FROM
                            VDR_ECR_TO_FO_SUMMARY
                        WHERE
                            ECR_TRRN = VTRRNO_IN
                            AND   ROWNUM = 1
                    )
            ),
            NVL(ECR_AMT1,0) + NVL(ECR_AMT10,0) TOTAL_ECD,
            TO_NUMBER(TO_CHAR(ECR_WAGE_MONTH,'MMYYYY') ) DUE_MONTH_EE_OUT,
            'V'
        INTO
            VTRRNO_ECD_OUT,VCHALLAN_REF_NO_OUT,VECD_TOTAL_OUT,VDUE_MONTH_EE_OUT,VECR_FLAG_OUT
        FROM
            VDR_ECR_TO_FO_SUMMARY
        WHERE
            ECR_TRRN = VTRRNO_IN
            AND   ROWNUM = 1;

    END GET_ECD_VDR_DETAILS;

    PROCEDURE TEST_BP_RUN AS

        CURSOR TRRN_BACK IS SELECT DISTINCT
            EST_ID,
            EYEAR
                            FROM
            (
                SELECT
                    SUBSTR(YTB.MEMBER_ID,1,15) AS EST_ID,
                    EM.EST_NAME,
                    EM.ACTIONABLE_STATUS,
                    AY(YTB.MONTH_YEAR) AS EYEAR,
                    YTB.MONTH_YEAR,
                    YTB.TRRNO
                FROM
                    YEARLY_TRANSACTION_BACKLOG YTB,
                    TASK_MAPPING TM,
                    EST_MASTER EM
                WHERE
                    SUBSTR(YTB.MEMBER_ID,1,15) = EM.EST_ID
                    AND   EM.ACC_TASK_ID = TM.TASK_ID
                    AND   EM.ACC_YEAR IS NOT NULL
                    AND   YTB.SLIP_TYPE = '600'
                    AND   YTB.RECORD_STATUS = '0'
                    AND   TM.SLIP_TYPE = '600'
    --AND   YTB.RECON_ID IS NULL
                    AND   YTB.INTEREST_ID IS NULL
                    AND   SUBSTR(EM.EXEMPTION_STATUS,1,1) = 'U'
                    AND   EM.ACC_YEAR > AY(YTB.MONTH_YEAR)
                            --AND   AY(YTB.MONTH_YEAR) >= 2012
                    AND   YTB.TRRNO IS NOT NULL
    --AND   TM.DEAL_HAND_ID = VUSERID_IN
            );

        V_STATUS_OUT   VARCHAR2(1);
        V_ERR_MSG      VARCHAR2(500);
    BEGIN
        FOR X IN TRRN_BACK LOOP
            ANAYLISE_EST_BP(X.EST_ID,X.EYEAR,0,V_STATUS_OUT,V_ERR_MSG);
            ---COMMIT;
        END LOOP;
    END TEST_BP_RUN;

    PROCEDURE GET_VDR_DETAILS (
        VTRRNO_IN             IN VARCHAR2,
        VTRRNO_ECD_OUT        OUT VARCHAR2,
        VCHALLAN_REF_NO_OUT   OUT VARCHAR2,
        VDUE_MONTH_EE_OUT     OUT VARCHAR2,
        VECD_TOTAL_OUT        OUT NUMBER,
        VECR_FLAG_OUT         OUT VARCHAR2
    )
        AS
    BEGIN
    -- TODO: Implementation required for PROCEDURE CPE_MARKING_BP_FO.GET_VDR_DETAILS
        NULL;
    END GET_VDR_DETAILS;

END CPE_MARKING_BP_FO;

/
--------------------------------------------------------
--  DDL for Package Body CPE_SCHEDULAR_FO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "NICEPFO"."CPE_SCHEDULAR_FO" AS

    FUNCTION MGN RETURN VARCHAR2
        AS
    BEGIN
        RETURN 'MGN SHOULD WORK CORRECTLY';
    END MGN;

    PROCEDURE MAIN_RUN AS
        P_OUTPUT   NUMBER;
        P_MSG      VARCHAR2(5000);
    BEGIN
        G_PROCNAME := '#MAIN_RUN';
        G_SCHEDULER_START := SYSDATE;
        --INITILIZE
        LOG_PROGRESS(MOVE_TO_SCHEDULER_LOG);
        LOG_PROGRESS(GENERATE_SCHEDULER_ID);
        --STEP1 LOCK ALL ESTABLISHMENT
        DBMS_OUTPUT.PUT_LINE('RUNNING STEP1 LOCKING ESTABLISHMENTS');
        LOCK_EST_ALL;
        --STEP2 RUN THE PROC FOR PENDING TRANSACTIN
        ----------CALCULATIONS BASED ON ESTABLSIHMENTS IN CPE_AUTO_PROCESSING PUT ALL PROCEDURE HERE--- 
        LOG_PROGRESS(PENDING_TRANS_START_TIME);
        DBMS_OUTPUT.PUT_LINE('RUNNING STEP2 ANAYLISING ESTABLISHMENTS FOR PENDING TRASNACTION');
        CPE_PENDING_TX.PENDING_TRANSACTION(P_OUTPUT,P_MSG);
        LOG_PROGRESS(PENDING_TRANS_END_TIME);
        --STEP3 RUN THE PROC FOR CONTRIBUTION
        LOG_PROGRESS(CONT_MISMATCH_START_TIME);
        DBMS_OUTPUT.PUT_LINE('RUNNING STEP3 ANAYLISING ESTABLISHMENTS FOR CONTRIBUTION');
        CPE_MARKING_FO.ANAYLISE_CPE_ESTS;
        LOG_PROGRESS(CONT_MISMATCH_END_TIME);
        ----------MARKING BASED ON ESTABLSIHMENTS IN CPE_AUTO_PROCESSING PUT ALL PROCEDURE HERE--- 
        --STEP4 MARK EST FOR PENDING TXN
        LOG_PROGRESS(MARK_EST_PEND_TRANS_START_TIME);
        MARK_EST_PEND_TXN_ALL;
        LOG_PROGRESS(MARK_EST_PEND_TRANS_END_TIME);
        --STEP5 MARK EST FOR CONTRIBUTION
        LOG_PROGRESS(MARK_CONT_MISMATCH_START_TIME);
        MARK_EST_CONT_ALL;
        LOG_PROGRESS(MARK_CONT_MISMATCH_END_TIME);
        LOG_PROGRESS(MEMBAL_MISMATCH_START_TIME);
        CPE_PP_CLAIM_DATA_CHECK(TO_CHAR(G_SCHEDULER_ID) );
        LOG_PROGRESS(MEMBAL_MISMATCH_END_TIME);
        ------BACK PERIOD PROCESSING--START
        LOG_PROGRESS(CONT_MISMATCH_START_TIME_BP);
        CPE_MARKING_BP_FO.ANAYLISE_CPE_ESTS_BP;
        LOG_PROGRESS(CONT_MISMATCH_END_TIME_BP);
        ------BACK PERIOD PROCESSING--END
        ------BACK PERIOD MARKING START----------
        LOG_PROGRESS(MARK_CONTMISMATCH_ST_TIME_BP);
        MARK_EST_CONT_ALL_BP;
        LOG_PROGRESS(MARK_CONTMISMATCH_END_TIME_BP);
        ------BACK PERIOD MARKING END----------
        --UPDATE ESTABLISHMENT WISE FINAL STATUS BACK----
        UPDATE_FINAL_STATUS;
        --UPDATE ESTABLISHMENT WISE FINAL STATUS BACK FOR BACKPERIOD----
        UPDATE_FINAL_STATUS_BP;
        ---READY FOR CPE--
        CPE_READY;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
                --LOG THE ERROR
            CPE_ERROR_LOGGER_FO.LOG_ERROR(G_PACKAGE
            || G_PROCNAME,'SCHEDULAR id:'
            || TO_CHAR(G_SCHEDULER_ID) );
            DBMS_OUTPUT.PUT_LINE('SCHEDULAR ERROR:'
            || G_PACKAGE
            || G_PROCNAME
            || '#SCHEDULAR id:'
            || TO_CHAR(G_SCHEDULER_ID) );

            RAISE;
    END MAIN_RUN;

    PROCEDURE LOCK_EST_ALL
        AS
    BEGIN
        G_PROCNAME := 'LOCK_EST_ALL';
        UPDATE EST_MASTER
            SET
                SLIP_TYPE = 999
        WHERE
            EST_ID IN (
                SELECT
                    EST_ID
                FROM
                    CPE_AUTO_PROCESSING
                WHERE
                    TRANS_TYPE IN (
                        'CP',
                        'BP'
                    )
                    AND   STATUS_FLAG IS NULL
            );

        UPDATE CPE_AUTO_PROCESSING
            SET
                SCHEDULER_ID = G_SCHEDULER_ID,
                CPE_REF_NO = G_CPE_REFNO
        WHERE
            TRANS_TYPE IN (
                'CP',
                'BP'
            )
            AND   STATUS_FLAG IS NULL;

        COMMIT;
    END LOCK_EST_ALL;

    PROCEDURE UNLOCK_EST_ALL
        AS
    BEGIN
        UPDATE EST_MASTER
            SET
                SLIP_TYPE = 600
        WHERE
            EST_ID IN (
                SELECT
                    EST_ID
                FROM
                    CPE_AUTO_PROCESSING
                WHERE
                    TRANS_TYPE IN (
                        'CP',
                        'BP'
                    )
            );

        COMMIT;
    END UNLOCK_EST_ALL;

    PROCEDURE MARK_EST_CONT (
        VEST_ID_IN            IN VARCHAR2,
        VACC_YR_IN            IN VARCHAR2,
        V_FLAG_MISMATCH_OUT   OUT VARCHAR2,
        V_CURR_DUE_OUT        OUT NUMBER,
        V_CURR_CONT_OUT       OUT NUMBER
    )
        AS
    BEGIN
        SELECT
            NVL(SUM(NVL(ECD_TOTAL,0) ),0),
            NVL(SUM(NVL(YT_TOTAL,0) ),0)
        INTO
            V_CURR_CONT_OUT,V_CURR_DUE_OUT
        FROM
            CPE_ECD_YT
        WHERE
            EST_ID = VEST_ID_IN
            AND   EM_ACC_YEAR = VACC_YR_IN;

        SELECT DISTINCT
            ( MISMATCH_FLAG ) M_FLAG
        INTO
            V_FLAG_MISMATCH_OUT
        FROM
            CPE_ECD_YT
        WHERE
            EST_ID = VEST_ID_IN
            AND   EM_ACC_YEAR = VACC_YR_IN;

    EXCEPTION
        WHEN TOO_MANY_ROWS THEN
            V_FLAG_MISMATCH_OUT := 'Y';
        WHEN NO_DATA_FOUND THEN
            V_FLAG_MISMATCH_OUT := 'W';
    END MARK_EST_CONT;

    PROCEDURE MARK_EST_CONT_ALL AS
        V_MISMATCH_FLAG   VARCHAR2(1);
        V_CURR_CONT       NUMBER;
        V_CURR_DUE        NUMBER;
    BEGIN
        G_PROCNAME := '#MARK_EST_CONT_ALL';
        FOR Y IN (
            SELECT
                EST_ID,
                ACC_YEAR
            FROM
                CPE_AUTO_PROCESSING
            WHERE
                TRANS_TYPE IN (
                    'CP'
                )
                AND   STATUS_FLAG IS NULL
        ) LOOP
            BEGIN
                V_MISMATCH_FLAG := NULL;
                V_CURR_CONT := 0;
                V_CURR_DUE := 0;
                MARK_EST_CONT(Y.EST_ID,Y.ACC_YEAR,V_MISMATCH_FLAG,V_CURR_DUE,V_CURR_CONT);
                UPDATE CPE_AUTO_PROCESSING
                    SET
                        CONT_MISMATCH = V_MISMATCH_FLAG,
                        CURR_DUE = V_CURR_DUE,
                        CURR_CONT = V_CURR_CONT
                WHERE
                    EST_ID = Y.EST_ID
                    AND   ACC_YEAR = Y.ACC_YEAR;

            EXCEPTION
                WHEN OTHERS THEN
                    CPE_ERROR_LOGGER_FO.LOG_ERROR(G_PACKAGE
                    || G_PROCNAME,'SCHEDULER ID:'
                    || TO_CHAR(G_SCHEDULER_ID)
                    || ' EST_ID:'
                    || Y.EST_ID
                    || ' ACC_YEAR:'
                    || Y.ACC_YEAR);
            END;
        END LOOP;

        G_PROCNAME := '#MAIN_RUN';
    END MARK_EST_CONT_ALL;

    PROCEDURE MARK_EST_PEND_TXN (
        VEST_ID_IN                IN VARCHAR2,
        VACC_YR_IN                IN VARCHAR2,
        V_TXN_MISMATCH_FLAG_OUT   OUT VARCHAR2
    )
        AS
    BEGIN
        SELECT
            (
                CASE
                    WHEN EXISTS (
                        ( SELECT
                            A.EST_ID
                          FROM
                            CPE_PENDING_TRANSACTION A
                          WHERE
                            A.EST_ID = VEST_ID_IN
                            AND   A.ACC_YEAR = VACC_YR_IN
                        )
                    ) THEN 'Y'
                    ELSE 'N'
                END
            ) STATUS_PEND_TXN
        INTO
            V_TXN_MISMATCH_FLAG_OUT
        FROM
            DUAL;

    END MARK_EST_PEND_TXN;

    PROCEDURE MARK_EST_PEND_TXN_ALL AS
        V_TXN_MISMATCH_FLAG   VARCHAR2(1);
    BEGIN
        G_PROCNAME := '#MARK_EST_PEND_TXN_ALL';
        FOR Y IN (
            SELECT
                EST_ID,
                ACC_YEAR
            FROM
                CPE_AUTO_PROCESSING
            WHERE
                TRANS_TYPE IN (
                    'CP'
                )
                AND   STATUS_FLAG IS NULL
        ) LOOP
            BEGIN
                V_TXN_MISMATCH_FLAG := NULL;
                MARK_EST_PEND_TXN(Y.EST_ID,Y.ACC_YEAR,V_TXN_MISMATCH_FLAG);
                UPDATE CPE_AUTO_PROCESSING
                    SET
                        TXN_MISMATCH = V_TXN_MISMATCH_FLAG
                WHERE
                    EST_ID = Y.EST_ID
                    AND   ACC_YEAR = Y.ACC_YEAR;

            EXCEPTION
                WHEN OTHERS THEN
                    CPE_ERROR_LOGGER_FO.LOG_ERROR(G_PACKAGE
                    || G_PROCNAME,'SCHEDULER_ID'
                    || TO_CHAR(G_SCHEDULER_ID)
                    || 'EST_ID:'
                    || Y.EST_ID
                    || 'ACC_YEAR:'
                    || Y.ACC_YEAR);
            END;
        END LOOP;

        G_PROCNAME := '#MAIN_RUN';
    END MARK_EST_PEND_TXN_ALL;

    PROCEDURE LOG_PROGRESS (
        VSTEP_NO_IN IN NUMBER
    ) AS
        PRAGMA AUTONOMOUS_TRANSACTION;
        V_EST_CNT        NUMBER;
        V_SCHEDULAR_ID   NUMBER;
    BEGIN
        G_PROCNAME := '#LOG_PROGRESS';
        CASE
            WHEN VSTEP_NO_IN =-1 THEN
                INSERT INTO CPE_AUTO_SCHEDULER_LOG (
                    SCHEDULER_ID,
                    CREATED_DATE,
                    TOTAL_EST,
                    PEND_TX_START_TIME,
                    PEND_TX_END_TIME,
                    CONT_START_TIME,
                    CONT_END_TIME,
                    MARK_PEND_TX_START_TIME,
                    MARK_PEND_TX_END_TIME,
                    MARK_CONT_START_TIME,
                    MARK_CONT_END_TIME,
                    CPE_SCH_FLAG,
                    CPE_REF_NO,
                    CPE_RUN_FLAG,
                    MEMBAL_MISMATCH_START_TIME,
                    MEMBAL_MISMATCH_END_TIME
                )
                    SELECT
                        SCHEDULER_ID,
                        CREATED_DATE,
                        TOTAL_EST,
                        PEND_TX_START_TIME,
                        PEND_TX_END_TIME,
                        CONT_START_TIME,
                        CONT_END_TIME,
                        MARK_PEND_TX_START_TIME,
                        MARK_PEND_TX_END_TIME,
                        MARK_CONT_START_TIME,
                        MARK_CONT_END_TIME,
                        CPE_SCH_FLAG,
                        CPE_REF_NO,
                        CPE_RUN_FLAG,
                        MEMBAL_MISMATCH_START_TIME,
                        MEMBAL_MISMATCH_END_TIME
                    FROM
                        CPE_AUTO_SCHEDULER;

                DELETE FROM CPE_AUTO_SCHEDULER;

            WHEN VSTEP_NO_IN = 0 THEN
                SELECT
                    COUNT(1)
                INTO
                    V_EST_CNT
                FROM
                    CPE_AUTO_PROCESSING
                WHERE
                    TRANS_TYPE IN (
                        'CP',
                        'BP'
                    )
                    AND   STATUS_FLAG IS NULL;

                SELECT
                    NVL(MAX(SCHEDULER_ID),0) + 1
                INTO
                    V_SCHEDULAR_ID
                FROM
                    CPE_AUTO_SCHEDULER_LOG;

                G_SCHEDULER_ID := V_SCHEDULAR_ID;
                G_CPE_REFNO := GEN_CPE_REFNO;
                INSERT INTO CPE_AUTO_SCHEDULER (
                    SCHEDULER_ID,
                    CREATED_DATE,
                    TOTAL_EST,
                    CPE_REF_NO
                ) VALUES (
                    V_SCHEDULAR_ID,
                    SYSDATE,
                    V_EST_CNT,
                    G_CPE_REFNO
                );

                -----UPDATE CPE TABLE ALSO....

            WHEN VSTEP_NO_IN = 1 THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        PEND_TX_START_TIME = SYSDATE;

            WHEN VSTEP_NO_IN = 2 THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        PEND_TX_END_TIME = SYSDATE;

            WHEN VSTEP_NO_IN = 3 THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        CONT_START_TIME = SYSDATE;

            WHEN VSTEP_NO_IN = 4 THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        CONT_END_TIME = SYSDATE;

            WHEN VSTEP_NO_IN = 5 THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        MARK_PEND_TX_START_TIME = SYSDATE;

            WHEN VSTEP_NO_IN = 6 THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        MARK_PEND_TX_END_TIME = SYSDATE;

            WHEN VSTEP_NO_IN = 7 THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        MARK_CONT_START_TIME = SYSDATE;

            WHEN VSTEP_NO_IN = 8 THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        MARK_CONT_END_TIME = SYSDATE;

            WHEN VSTEP_NO_IN = 9 THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        MEMBAL_MISMATCH_START_TIME = SYSDATE;

            WHEN VSTEP_NO_IN = 10 THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        MEMBAL_MISMATCH_END_TIME = SYSDATE;

            WHEN VSTEP_NO_IN = CONT_MISMATCH_START_TIME_BP THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        CONT_START_TIME_BP = SYSDATE;

            WHEN VSTEP_NO_IN = CONT_MISMATCH_END_TIME_BP THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        CONT_END_TIME_BP = SYSDATE;

            WHEN VSTEP_NO_IN = MARK_CONTMISMATCH_ST_TIME_BP THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        MARK_CONT_ST_TIME_BP = SYSDATE;

            WHEN VSTEP_NO_IN = MARK_CONTMISMATCH_END_TIME_BP THEN
                UPDATE CPE_AUTO_SCHEDULER
                    SET
                        MARK_CONT_END_TIME_BP = SYSDATE;

            ELSE
                NULL;
        END CASE;

        COMMIT;
        G_PROCNAME := '#MAIN_RUN';
    END LOG_PROGRESS;

    PROCEDURE UPDATE_FINAL_STATUS AS
        V_SCHEDULAR_ID   NUMBER;
    BEGIN
        SELECT
            NVL(SCHEDULER_ID,0)
        INTO
            V_SCHEDULAR_ID
        FROM
            CPE_AUTO_SCHEDULER;

        UPDATE CPE_AUTO_PROCESSING
            SET
                STATUS_FLAG = (
                    CASE
                        WHEN (
                            (
                                CONT_MISMATCH = 'N'
                                OR CONT_MISMATCH = 'W'
                            )
                            AND TXN_MISMATCH = 'N'
                            AND CLAIM_MISMATCH_STATUS = 'N'
                        ) THEN 'Y'
                        ELSE 'N'
                    END
                )
        WHERE
            TRANS_TYPE = 'CP'
            AND   STATUS_FLAG IS NULL;

    END UPDATE_FINAL_STATUS;

    PROCEDURE MAIN_RUN_FRONT_END (
        VSTATUS_OUT   OUT VARCHAR2,
        VMSG_OUT      OUT VARCHAR2
    )
        AS
    BEGIN
        MAIN_RUN;
        VSTATUS_OUT := 1;
        VMSG_OUT := 'OK';
    EXCEPTION
        WHEN OTHERS THEN
            VMSG_OUT := 'ERROR : '
            || SQLERRM;
            VSTATUS_OUT := 0;
    END MAIN_RUN_FRONT_END;

    PROCEDURE CPE_READY
        AS
    BEGIN
        UPDATE CPE_AUTO_SCHEDULER
            SET
                CPE_SCH_FLAG = 'Y';

    END CPE_READY;

    PROCEDURE CPE_END_PROCESS AS

        FUNCTION CHECK_STOP_FLAG RETURN NUMBER AS
            V_CNT   NUMBER;
        BEGIN
            SELECT
                COUNT(1)
            INTO
                V_CNT
            FROM
                CPE_AUTO_SCHEDULER
            WHERE
                CPE_RUN_FLAG = 'C';

            RETURN V_CNT;
        END;

        PROCEDURE MOVE_CPE_DATA
            AS
        BEGIN
            INSERT INTO CPE_AUTO_PROCESSING_HISTORY (
                EST_ID,
                ACC_YEAR,
                CREATED_BY,
                CREATED_DATE,
                CPE_START_TIME,
                CPE_END_TIME,
                CPE_END_FLAG,
                CPE_REF_NO,
                STATUS_FLAG,
                CPE_ERROR_CODE,
                EXEMPTION_STATUS,
                ACTIONABLE_STATUS,
                MISMATCH_FLAG,
                TRANS_TYPE,
                CONT_MISMATCH,
                CURR_DUE,
                CURR_CONT,
                TXN_MISMATCH,
                SCHEDULER_ID,
                CPE_PROCESSED_STATUS
            )
                SELECT
                    EST_ID,
                    ACC_YEAR,
                    CREATED_BY,
                    CREATED_DATE,
                    CPE_START_TIME,
                    CPE_END_TIME,
                    CPE_END_FLAG,
                    CPE_REF_NO,
                    STATUS_FLAG,
                    CPE_ERROR_CODE,
                    EXEMPTION_STATUS,
                    ACTIONABLE_STATUS,
                    MISMATCH_FLAG,
                    TRANS_TYPE,
                    CONT_MISMATCH,
                    CURR_DUE,
                    CURR_CONT,
                    TXN_MISMATCH,
                    SCHEDULER_ID,
                    CPE_PROCESSED_STATUS
                FROM
                    CPE_AUTO_PROCESSING
                WHERE
                    STATUS_FLAG = 'Y';

            DELETE FROM CPE_AUTO_PROCESSING WHERE
                STATUS_FLAG = 'Y';

        END MOVE_CPE_DATA;

        PROCEDURE UNLOCK_ESTABLISHMENTS
            AS
        BEGIN
            UPDATE EST_MASTER
                SET
                    SLIP_TYPE = 600
            WHERE
                EST_ID IN (
                    SELECT
                        EST_ID
                    FROM
                        CPE_AUTO_PROCESSING
                    WHERE
                        TRANS_TYPE IN (
                            'CP',
                            'BP'
                        )
                );

        END UNLOCK_ESTABLISHMENTS;

        PROCEDURE MOVE_CPE_SCHEDULAR_DATA
            AS
        BEGIN
            INSERT INTO CPE_AUTO_SCHEDULER_LOG (
                SCHEDULER_ID,
                CREATED_DATE,
                TOTAL_EST,
                PEND_TX_START_TIME,
                PEND_TX_END_TIME,
                CONT_START_TIME,
                CONT_END_TIME,
                MARK_PEND_TX_START_TIME,
                MARK_PEND_TX_END_TIME,
                MARK_CONT_START_TIME,
                MARK_CONT_END_TIME,
                CPE_SCH_FLAG,
                CPE_REF_NO,
                CPE_RUN_FLAG,
                MEMBAL_MISMATCH_START_TIME,
                MEMBAL_MISMATCH_END_TIME
            )
                SELECT
                    SCHEDULER_ID,
                    CREATED_DATE,
                    TOTAL_EST,
                    PEND_TX_START_TIME,
                    PEND_TX_END_TIME,
                    CONT_START_TIME,
                    CONT_END_TIME,
                    MARK_PEND_TX_START_TIME,
                    MARK_PEND_TX_END_TIME,
                    MARK_CONT_START_TIME,
                    MARK_CONT_END_TIME,
                    CPE_SCH_FLAG,
                    CPE_REF_NO,
                    CPE_RUN_FLAG,
                    MEMBAL_MISMATCH_START_TIME,
                    MEMBAL_MISMATCH_END_TIME
                FROM
                    CPE_AUTO_SCHEDULER;

            DELETE FROM CPE_AUTO_SCHEDULER;

        END MOVE_CPE_SCHEDULAR_DATA;

    BEGIN
    -- MAIN EXECUTION BLOCK-------
        G_PROCNAME := 'CPE_END_PROCESS';
        IF
            CHECK_STOP_FLAG = 1
        THEN
            UNLOCK_ESTABLISHMENTS;
            MOVE_CPE_DATA;
            MOVE_CPE_SCHEDULAR_DATA;
            COMMIT;
        ELSE
            RAISE_APPLICATION_ERROR(-20001,'CANNOT STOP SCHEDULER!! CPE_RUN_FLAG NOT SET TO C BY CPE ENGINE ,NO UNLOCKING DONE');
        END IF;

    EXCEPTION
        WHEN OTHERS THEN
            CPE_ERROR_LOGGER_FO.LOG_ERROR(G_PACKAGE
            || G_PROCNAME,'SCHEDULAR id:'
            || GET_CURR_SCHEDULER_ID);
    END CPE_END_PROCESS;

    PROCEDURE CPE_END_PROCESS_FRONT_END (
        VSTATUS_OUT   OUT VARCHAR2,
        VMSG_OUT      OUT VARCHAR2
    )
        AS
    BEGIN
        CPE_END_PROCESS;
        VSTATUS_OUT := '1';
        VMSG_OUT := 'OK';
    EXCEPTION
        WHEN OTHERS THEN
            VMSG_OUT := 'ERROR : '
            || SQLERRM;
            VSTATUS_OUT := '0';
    END CPE_END_PROCESS_FRONT_END;

    FUNCTION GEN_CPE_REFNO RETURN VARCHAR2 AS

        FUNCTION GET_OFFICE_ID RETURN VARCHAR2 AS
            VOFFICE_ID   VARCHAR2(3);
        BEGIN
            SELECT
                OFFICE_ID
            INTO
                VOFFICE_ID
            FROM
                EPFO_OFF_MASTER
            WHERE
                SLIP_TYPE = 600
                AND   RECORD_STATUS = 0;

            RETURN VOFFICE_ID;
        END GET_OFFICE_ID;

    BEGIN
        RETURN('CPE'
        || GET_OFFICE_ID
        || TO_CHAR(SYSDATE,'DDMMYYYYHHMISS') );
    END GEN_CPE_REFNO;

    FUNCTION GET_CURR_SCHEDULER_ID RETURN VARCHAR2 AS
        V_SCH_ID   VARCHAR2(20);
    BEGIN
        SELECT
            NVL(SCHEDULER_ID,0)
        INTO
            V_SCH_ID
        FROM
            CPE_AUTO_SCHEDULER;

        RETURN V_SCH_ID;
    END GET_CURR_SCHEDULER_ID;

    PROCEDURE MARK_EST_CONT_BP (
        VEST_ID_IN            IN VARCHAR2,
        VACC_YR_IN            IN VARCHAR2,
        VOPTS_START_IN        IN TIMESTAMP,
        V_FLAG_MISMATCH_OUT   OUT VARCHAR2,
        V_CURR_DUE_OUT        OUT NUMBER,
        V_CURR_CONT_OUT       OUT NUMBER,
        V_TRRN_LIST_OUT       OUT VARCHAR2
    )
        AS
    BEGIN
        SELECT
            NVL(SUM(NVL(ECD_TOTAL,0) ),0),
            NVL(SUM(NVL(YTB_TOTAL,0) ),0),
            LISTAGG(TRRNO,
            ',') WITHIN GROUP(
            ORDER BY
                TRRNO
            ) TRRNLIST
        INTO
            V_CURR_CONT_OUT,V_CURR_DUE_OUT,V_TRRN_LIST_OUT
        FROM
            CPE_YTB_ECD_BP
        WHERE
            EST_ID = VEST_ID_IN
            AND   ACC_YEAR = VACC_YR_IN
            AND   OP_TS >= VOPTS_START_IN;

        SELECT DISTINCT
            ( MISMATCH_FLAG ) M_FLAG
        INTO
            V_FLAG_MISMATCH_OUT
        FROM
            CPE_YTB_ECD_BP
        WHERE
            EST_ID = VEST_ID_IN
            AND   ACC_YEAR = VACC_YR_IN
            AND   OP_TS >= VOPTS_START_IN;

    EXCEPTION
        WHEN TOO_MANY_ROWS THEN
            V_FLAG_MISMATCH_OUT := 'Y';
        WHEN NO_DATA_FOUND THEN
            V_FLAG_MISMATCH_OUT := NULL;
    END MARK_EST_CONT_BP;

    PROCEDURE MARK_EST_CONT_ALL_BP AS
        V_MISMATCH_FLAG   VARCHAR2(1);
        V_CURR_CONT       NUMBER;
        V_CURR_DUE        NUMBER;
        V_TRRN_LIST       VARCHAR2(4000);
    BEGIN
        G_PROCNAME := '#MARK_EST_CONT_ALL_BP';
        FOR Y IN (
            SELECT
                EST_ID,
                ACC_YEAR
            FROM
                CPE_AUTO_PROCESSING
            WHERE
                TRANS_TYPE IN (
                    'BP'
                )
                AND   STATUS_FLAG IS NULL
        ) LOOP
            BEGIN
                V_MISMATCH_FLAG := NULL;
                V_CURR_CONT := 0;
                V_CURR_DUE := 0;
                V_TRRN_LIST := NULL;
                MARK_EST_CONT_BP(Y.EST_ID,Y.ACC_YEAR,G_SCHEDULER_START,V_MISMATCH_FLAG,V_CURR_DUE,V_CURR_CONT,V_TRRN_LIST);

                UPDATE CPE_AUTO_PROCESSING
                    SET
                        CONT_MISMATCH_BP = V_MISMATCH_FLAG,
                        CURR_DUE_BP = V_CURR_DUE,
                        CURR_CONT_BP = V_CURR_CONT,
                        BP_TRRN_LIST=V_TRRN_LIST
                WHERE
                    EST_ID = Y.EST_ID
                    AND   ACC_YEAR = Y.ACC_YEAR;

            EXCEPTION
                WHEN OTHERS THEN
                    CPE_ERROR_LOGGER_FO.LOG_ERROR(G_PACKAGE
                    || G_PROCNAME,'SCHEDULER ID:'
                    || TO_CHAR(G_SCHEDULER_ID)
                    || ' EST_ID:'
                    || Y.EST_ID
                    || ' ACC_YEAR:'
                    || Y.ACC_YEAR);
            END;
        END LOOP;

        G_PROCNAME := '#MAIN_RUN';
    END MARK_EST_CONT_ALL_BP;

    PROCEDURE UPDATE_FINAL_STATUS_BP
        AS
    BEGIN
        UPDATE CPE_AUTO_PROCESSING
            SET
                STATUS_FLAG = (
                    CASE
                        WHEN (
                            ( CONT_MISMATCH_BP = 'N' )
                        ) THEN 'Y'
                        ELSE 'N'
                    END
                )
        WHERE
            TRANS_TYPE = 'BP'
            AND   STATUS_FLAG IS NULL;

    END UPDATE_FINAL_STATUS_BP;

END CPE_SCHEDULAR_FO;

/
--------------------------------------------------------
--  Constraints for Table CPE_YTB_ECD_BP
--------------------------------------------------------

  ALTER TABLE "NICEPFO"."CPE_YTB_ECD_BP" ADD CONSTRAINT "PK_CPE_YTB_ECD_BP_TRRN" PRIMARY KEY ("TRRNO")
  USING INDEX  ENABLE;
