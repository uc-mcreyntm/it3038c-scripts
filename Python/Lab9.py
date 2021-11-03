import json 
import requests 

r = requests.get('http://localhost:3000/') 

data=r.json()


for x in range(len(data)):

    print (data[x]['name'] + " is " + data[x]['color'])