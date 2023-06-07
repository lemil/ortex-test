

# Quickstart

Start the container 
- bin/start.sh

Stop the container
- bin/stop.sh

# Open a shell
- PSQL > bin/psql.sh
- BASH > bin/console.sh

# Import the data
The container on its first start will run a the script to import the data.
If you want the re-run, use the bin/psql.sh to open a terminal client
- psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -f init.sql 



# PART 1 - Tasks
The application should be able to calculate and write out the answers to the below questions.
1. Which are the top 3 exchange with the most transactions in the file?
- 

2. In August 2017, which 2 companyNames had the highest combined valueEUR?
3. For 2017, only considering transactions with tradeSignificance 3, what is the percentage of transactions per
month?


