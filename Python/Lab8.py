from bs4 import BeautifulSoup
import requests, re

r = requests.get('https://www.hondapartsnow.com/genuine/honda~water~pump~19200-rdv-j01.html').content

soup = BeautifulSoup(r, "html5lib")

strong = soup.findAll("strong", {"class" : "pn-detail-main-desc"})

name = re.compile('Water Pump')
nameFinal = name.search(str(strong)).group()


div = soup.findAll("div", {"class" : "price-section-price"})
price = re.compile('[0-9].+[0-9]{2}')
total =  price.search(str(div)).group()


print ("The %s has a price of $%s" % (nameFinal, total))