-- 코드를 입력하세요
SELECT ai.NAME, ai.DATETIME
FROM ANIMAL_INS ai
left join ANIMAL_OUTS ao on ai.ANIMAL_ID = ao.ANIMAL_ID
where ao.ANIMAL_ID IS NULL
ORDER BY ai.datetime asc
limit 3
;