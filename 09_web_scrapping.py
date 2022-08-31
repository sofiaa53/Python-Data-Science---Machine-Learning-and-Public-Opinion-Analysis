from ipaddress import collapse_addresses
from urllib.request import urlopen
from bs4 import BeautifulSoup
import pandas as pd

keyword = ""
address = "https://www.kompas.com/"
html = urlopen(address+keyword).read()
print(type(address))

data = BeautifulSoup(html, 'html.parser')
popular = data.findAll('div', {"class":'most ga--most mt1 clearfix'})[0]

result = []

for i in popular.findAll("h4", "most__title"):
  #print(i.get_text())
  hasil = i.get_text()
  result.append(hasil)


list = [result]
df = pd.DataFrame(list)
print(df)

headline = df.to_csv('assets/news_headline.csv')

