#reference: https://github.com/julia-git/webscraping_ny_mta/blob/master/Webscraping.ipynb
#Python 3 please. 

import requests
import urllib.request
import time
from bs4 import BeautifulSoup
url = 'https://online.vfsglobal.com/Global-Appointment/'
response = requests.get(url)
print(response)
soup = BeautifulSoup(response.text, "html.parser")
#To get input_name = __RequestVerificationToken
print(soup.find('input').get('value'))


