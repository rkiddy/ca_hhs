
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By

import csv
import time
import requests

if __name__ == '__main__':
    pass

    chrome_options = Options()
    chrome_options.add_argument("--disable-extensions")
    chrome_options.add_argument("--disable-gpu")
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--headless=new")

    driver = webdriver.Chrome(options=chrome_options)

    driver.get("https://data.chhs.ca.gov/dataset/dataset-catalog")
    time.sleep(2)

    url = None

    for elt in driver.find_elements(By.TAG_NAME, "a"):
        clazz = elt.get_attribute('class')
        if clazz is not None and clazz == 'heading':
            url = elt.get_attribute('href')

    if not url:
        print("Could NOT find url...")
        quit()
 
    driver.get(url)
    time.sleep(2)

    final_url = None

    for elt in driver.find_elements(By.TAG_NAME, "a"):
        clazz = elt.get_attribute('class')
        if clazz is not None and clazz.endswith('resource-type-csv'):
            final_url = elt.get_attribute('href')
            # final_url = f"{final_url}?format=json"

    if not final_url:
        print("Could NOT find final_url...")
        quit()

    data = requests.get(final_url)

    w = open('catalog.csv', 'w')
    w.write(data.text)
    w.close()

    driver.quit()

