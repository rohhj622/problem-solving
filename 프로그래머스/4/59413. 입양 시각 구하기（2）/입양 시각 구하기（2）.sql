-- 코드를 입력하세요

SELECT
    TO_nUMBER(P.NO), NVL(O.CHOUR,0)
FROM
(
    SELECT
        K.HOUR, COUNT(K.HOUR) AS CHOUR
    FROM(
        SELECT
            TO_NUMBER(TO_CHAR(DATETIME, 'HH24')) AS HOUR
        FROM ANIMAL_OUTS
    )K
    GROUP BY K.HOUR
    ORDER BY K.HOUR
)O RIGHT OUTER JOIN (
    SELECT LEVEL-1 AS NO
    FROM DUAL
    CONNECT BY LEVEL <=24
)P ON O.HOUR = P.NO
ORDER BY TO_NUMBER(P.NO);