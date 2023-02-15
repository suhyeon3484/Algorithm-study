select ICECREAM_INFO.INGREDIENT_TYPE, 
    sum(FIRST_HALF.TOTAL_ORDER) as TOTAL_ORDER
from 
    FIRST_HALF
inner join 
    ICECREAM_INFO
on 
    FIRST_HALF.FLAVOR = ICECREAM_INFO.FLAVOR
group by 
    ICECREAM_INFO.INGREDIENT_TYPE
order by 
    TOTAL_ORDER;
