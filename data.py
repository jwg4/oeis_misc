import requests


def get_sequence(a_number):
    URL = "https://oeis.org/search?q=%s&fmt=json"
    url = URL % (a_number,)
    r = requests.get(url)
    return r.json