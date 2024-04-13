-- 코드를 
SELECT CAR_TYPE, count(CAR_TYPE)
from CAR_RENTAL_COMPANY_CAR 
-- where OPTIONS LIKE '%통풍시트%' OR OPTIONS LIKE '%열선시트%' OR OPTIONS LIKE '%가죽시트%'
where OPTIONS regexp '통풍시트|열선시트|가죽시트'
group by CAR_TYPE
order by CAR_TYPE asc
;