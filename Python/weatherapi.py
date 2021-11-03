import json 

import requests 

r = requests.get('http://api.openweathermap.org/data/2.5/weather?zip=45039,us&appid=03a99c286ec5e210dd48f2252bcbd6c2') 

data=r.json() 

print(data) 