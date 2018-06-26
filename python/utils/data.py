import requests


def get_sequence(a_number):
    URL = "https://oeis.org/search?q=%s&fmt=json"
    url = URL % (a_number,)
    r = requests.get(url)
    return r.json()


def get_values(a_number):
    data = get_sequence(a_number)
    value_str = data['results'][0]['data']
    return [ int(j) for j in value_str.split(",") ]
