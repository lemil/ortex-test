\c ortex


\echo -------------------------------------------------
\echo PART 1 Answers
\echo -------------------------------------------------

\echo 
\echo Top 3 Exchanges
\echo 

select  exchange , count(1) tota_transactions
from transactions t 
group by exchange 
order by 2 desc
limit 3;

\echo 
\echo Highest combined valueEUR of 2 companies in Aug-2017
\echo 


select companyname 
from (
select companyname , sum(valueeur)
from transactions t
where tradedate between '2017-08-01' and '2017-08-31'
group by companyname
order by 2 desc 
limit 2 
) a;


\echo 
\echo Percentage of transactions per month in 2017 only considering transactions with tradeSignificance 3
\echo  


select month_of_year , concat( round( tradesignificance3 * 100 /total ) , '%') as percentage
from (
select to_char(tradedate,'MM-Month') month_of_year, sum(1) total, sum(case tradesignificance when 3 then 1 else 0 end) tradesignificance3 
from transactions t
where extract (year from tradedate) = 2017
group by to_char(tradedate,'MM-Month')
)a;




