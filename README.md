

## Quickstart

Start the container 
- bin/start.sh

Stop the container
- bin/stop.sh

### Open a shell
- PSQL > bin/psql.sh
- BASH > bin/console.sh

### Import the data
The container on its first start will run a the script to import the data.
If you want the re-run, use the bin/psql.sh to open a terminal client
- psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -f init.sql 



## PART 1 - SQL

Tasks: 
The application should be able to calculate and write out the answers to the below questions.
1. Which are the top 3 exchange with the most transactions in the file?
2. In August 2017, which 2 companyNames had the highest combined valueEUR?
3. For 2017, only considering transactions with tradeSignificance 3, what is the percentage of transactions per
month?

- bin/psql.sh part1.sql

## PART 2 - PYTHON

Tasks
The application should be able to calculate and write out the answers to the below questions.
1. Which are the top 3 source with the highest ratio of Buy to Sell transactions weighted by the number of
shares per transaction
2. Which are the top 3 currency by the total numerical value of trades in that currency
3. What is the total number of transactions where inputdate was more than 2 weeks after tradedate

- poetry run python part2.py





