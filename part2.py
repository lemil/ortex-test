"""Module used to process data """
from datetime import timedelta
import pandas as pd
import numpy as np



CSV_PATH = './docs/2017.csv'

df = pd.read_csv(CSV_PATH)


print(" ")
print("1. Top 3 source with the highest ratio of Buy to Sell " \
    +"transactions weighted by the number of shares per transaction")

combined = df.assign(
 all_buy = np.where(df['transactionType']=='Buy',df.shares,0),
 all_sell = np.where(df['transactionType']=='Sell',df.shares,0)
  ).groupby('source').agg({'all_buy':sum, 'all_sell':sum})

combined["ratio"] = combined["all_sell"] / combined["all_buy"]
combined.sort_values("ratio", ascending=False)["ratio"].head(3)

print(combined.sort_values("ratio", ascending=False)["ratio"].head(3))
print(" ")
print(" ")

print("2. Top 3 currency by the total numerical value of trades " \
    +"in that currency ")

combined = df.groupby('currency').agg({'value':sum})
print(combined.sort_values("value", ascending=False)["value"].head(3))
print(" ")
print(" ")

print("3. Total number of transactions where inputdate was more " \
    +" than 2 weeks after tradedate ")

df["result"] = pd.to_datetime( df["inputdate"], format="%Y%m%d") \
        > pd.to_datetime( df["tradedate"], format="%Y%m%d") +  timedelta(days=14)

result = df.agg({"result":sum})
print("Reuslt " + str(result))


print(" ")
