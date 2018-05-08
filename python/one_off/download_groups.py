from bs4 import BeautifulSoup as bs

## For use with http://www.icm.tu-bs.de/ag_algebra/software/small/number.html

with open("number.html", "r") as data:
    page = bs(data, "lxml")
    tds = page.find_all('td', class_='')

with open("small.txt", "w") as out:
    for i, td in enumerate(tds[1:]):
        print >> out, i+1, td.text
