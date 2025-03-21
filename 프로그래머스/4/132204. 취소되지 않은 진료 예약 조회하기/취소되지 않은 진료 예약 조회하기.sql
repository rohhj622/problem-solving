-- 코드를 입력하세요
SELECT
    A.APNT_NO, 
    C.PT_NAME,
    C.PT_NO,
    A.MCDP_CD,
    B.DR_NAME,
    TO_DATE(TO_CHAR(A.APNT_YMD, 'YYYY-MM-DD HH24:MI:SS'), 'YYYY-MM-DD HH24:MI:SS') 
FROM APPOINTMENT A JOIN DOCTOR B ON A.MDDR_ID=B.DR_ID JOIN PATIENT C ON A.PT_NO = C.PT_NO
where 
    A.MCDP_CD = 'CS'
    AND A.APNT_CNCL_YN != 'Y'
    and TO_DATE(TO_CHAR(A.APNT_YMD, 'YYYY-MM-DD HH24:MI:SS'),  'YYYY-MM-DD HH24:MI:SS') 
        between TO_DATE('2022-04-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS') 
        and TO_DATE('2022-04-13 23:59:59', 'YYYY-MM-DD HH24:MI:SS') 
order by A.APNT_YMD;