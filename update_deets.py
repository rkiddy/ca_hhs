
import os

import re

import requests

from pprint import pprint

def find_ids():

    found = list()

    for f in os.listdir():
        deets = f"{f}/deets.sh"
        try:
            deets_dict = dict()
            with open(deets, 'r') as r:
                lines = r.readlines()
                # print(f"lines: {lines}")

                for line in lines:
                    if line.startswith('export id='):
                        id_value = line[10:].replace('"', '').replace('\n', '')
                        # print(f"id_value: {id_value}")
                        deets_dict['id'] = id_value

                    if line.startswith('export script='):
                        script_value = line[15:].replace('"', '').replace('\n', '')
                        # print(f"script_value: {script_value}")
                        deets_dict['script'] = script_value

                if len(deets_dict) > 0:
                    found.append(deets_dict)

        except:
            pass

    return found


def read_deets(values):

    found = list()

    for value_dict in values:

        url = f"https://data.chhs.ca.gov/dataset/{value_dict['id']}"

        print(f"url: {url}")

        body = requests.get(url)

        print(f"body length: {len(body.content)}")

        aUrl = None
        dload = None

        for line in str(body.text).split('\n'):
            if re.search("primary", line):
                aUrl = line
            if re.search("Download all", line):
                parts = aUrl.split('"')
                dload = parts[-2]

        print(f"dload: {dload}")

        parts = dload.split('/')

        uuid1 = parts[-5]

        uuid2 = parts[-3]

        lasts = parts[-1].split('-')         

        hash = lasts[-1].replace('.zip', '')

        deets = dict()
        deets['id'] = value_dict['id']
        deets['script'] = value_dict['script']
        deets['uuid1'] = uuid1
        deets['uuid2'] = uuid2
        deets['hash'] = hash

        found.append(deets)

    return found


def write_deets(deets):
    for deets_dict in deets:
        filename = f"{deets_dict['id']}/deets.sh"
        with open(filename, 'w') as f:
            f.write(f"export uuid1=\"{deets_dict['uuid1']}\"\n")
            f.write(f"export uuid2=\"{deets_dict['uuid2']}\"\n")
            f.write(f"export id=\"{deets_dict['id']}\"\n")
            f.write(f"export hash=\"{deets_dict['hash']}\"\n")
            f.write(f"export script=\"{deets_dict['script']}\"\n")
            f.close()


if __name__ == '__main__':

    ids = find_ids()
    print("ids:")
    pprint(ids)

    deets = read_deets(ids)
    print("deets:")
    pprint(deets)

