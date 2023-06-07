
\c ortex;

DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions (
transactionID	integer	,
gvkey	integer	,
companyName	varchar(500)	,
companyISIN	varchar(500)	,
companySEDOL	varchar(500)	,
insiderID	integer	,
insiderName	varchar(500)	,
insiderRelation	varchar(500)	,
insiderLevel	varchar(500)	,
connectionType	varchar(500)	,
connectedInsiderName	varchar(500)	,
connectedInsiderPosition	varchar(500)	,
transactionType	varchar(500)	,
transactionLabel	varchar(500)	,
iid	varchar(500)	,
securityISIN	varchar(500)	,
securitySEDOL	varchar(500)	,
securityDisplay	varchar(500)	,
assetClass	varchar(500)	,
shares	decimal(18,5)	,
inputdate	date	,
tradedate	date	,
maxTradedate	date	,
price	decimal(18,5)	,
maxPrice	decimal(18,5)	,
value	decimal(18,5)	,
currency	varchar(500)	,
valueEUR	decimal(18,5)	,
unit	varchar(500)	,
correctedTransactionID	varchar(500)	,
source	varchar(500)	,
tradeSignificance	integer	,
holdings	decimal(18,5)	,
filingURL	varchar(500)	,
exchange	varchar(500)    ,
PRIMARY KEY (transactionID)	
);


COPY transactions(transactionID,gvkey,companyName,companyISIN,companySEDOL,insiderID,
insiderName,insiderRelation,insiderLevel,connectionType,connectedInsiderName,
connectedInsiderPosition,transactionType,transactionLabel,iid,securityISIN,securitySEDOL,
securityDisplay,assetClass,shares,inputdate,tradedate,maxTradedate,price,maxPrice,value,
currency,valueEUR,unit,correctedTransactionID,source,tradeSignificance,holdings,filingURL,exchange) 
FROM '/docker-entrypoint-initdb.d/2017.csv' 
DELIMITER ',' 
CSV HEADER;