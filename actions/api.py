from ast import parse
from urllib import response
import requests
import json

state = input("Enter the state\n")
District = input("Enter the district\n")

response_API = requests.get(
    'https://api.covid19india.org/state_district_wise.json')

data = response_API.text

parse_json = json.loads(data)
active_case = parse_json[state]['districtData'][District]['active']
print("Active cases in {} : ".format(state), active_case)
