import argparse
import os
import re
import traceback
from pprint import pprint

import requests


def arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--id', nargs='?', help="Name of single id to process.")
    parser.add_argument('--verbose', '-v', action='store_true')
    return parser.parse_args()


def dprint(msg):
    if args.verbose:
        print(msg)


def find_ids():

    found = list()

    files = [f for f in os.listdir() if '-' in f and not f.startswith('.wget') and not f.endswith('BLOCKED')]
    if args.id:
        files = [args.id]

    dprint(f"files: {files}")

    for f in files:
        deets = f"{f}/deets.sh"
        try:
            deets_dict = dict()
            with open(deets, 'r') as r:
                lines = r.readlines()
                dprint(f"lines read from web source: {len(lines)}")
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

            dprint(f"deets now read: {deets_dict}")

        except:
            print(f"EXCEPTION! Found in id: {f}")
            if args.verbose:
                traceback.print_exc()

    return found

def url_for_id(vdict):
    if vdict['id'] == 'measurable-hospital-acquired-conditions-composite-patient' \
                      '-safety-indicator-statewide-rate-califo':
        return 'https://data.chhs.ca.gov/dataset/measurable-hospital-acquired-conditions' \
               '-composite-patient-safety-indicator-statewide-rate-california'
    return f"https://data.chhs.ca.gov/dataset/{vdict['id']}"


def read_deets(values):

    found = list()

    for value_dict in values:
        
        url = url_for_id(value_dict)

        # url = f"https://data.chhs.ca.gov/dataset/{value_dict['id']}"

        print(f"url: {url}")

        body = requests.get(url)

        # print(f"body length: {len(body.content)}")

        aUrl = None
        dload = None

        dprint(f"found page with length: {len(body.text)}")

        for line in str(body.text).split('\n'):
            if re.search("primary", line):
                aUrl = line
            if re.search("Download all", line):
                parts = aUrl.split('"')
                dload = parts[-2]

        dprint(f"dload: {dload}")

        if not dload:
            print("nothing found?")
            continue

        parts = dload.split('/')

        uuid1 = parts[-5]

        uuid2 = parts[-3]

        lasts = parts[-1].split('-')         

        hash = lasts[-1].replace('.zip', '')

        deets = dict()
        deets['id'] = value_dict['id']
        if 'script' in value_dict:
            deets['script'] = value_dict['script']
        else:
            deets['script'] = "none"
        deets['uuid1'] = uuid1
        deets['uuid2'] = uuid2
        deets['hash'] = hash

        dprint(f"deets found: {deets}")

        found.append(deets)

    return found


def write_deets(deets):
    for deets_dict in deets:
        filename = f"{deets_dict['id']}/deets.sh"
        dprint(f"writing deets: {filename}")
        with open(filename, 'w') as f:
            f.write(f"export uuid1=\"{deets_dict['uuid1']}\"\n")
            f.write(f"export uuid2=\"{deets_dict['uuid2']}\"\n")
            f.write(f"export id=\"{deets_dict['id']}\"\n")
            f.write(f"export hash=\"{deets_dict['hash']}\"\n")
            f.write(f"export script=\"{deets_dict['script']}\"\n")
            f.close()


if __name__ == '__main__':

    args = arguments()

    print("reading ids...")
    ids = find_ids()
    # print("ids:")
    # pprint(ids)

    print("checking deets...")
    deets = read_deets(ids)
    # print("deets:")
    # pprint(deets)

    print("writing...")
    write_deets(deets)

