-- 코드를 입력하세요
SELECT usu.USER_ID, usu.NICKNAME, ugb.TOTAL_SALES
FROM USED_GOODS_USER usu
JOIN (
    SELECT WRITER_ID, SUM(PRICE) AS TOTAL_SALES
    FROM USED_GOODS_BOARD 
    WHERE STATUS = 'DONE'
    GROUP BY WRITER_ID
    HAVING TOTAL_SALES >= 700000 ) as ugb on usu.USER_ID = ugb.WRITER_ID
ORDER BY ugb.TOTAL_SALES ASC
;