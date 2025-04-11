
import argparse
import os.path

import json

import requests as req

import utils

def arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--exec', '-x', action='store_true', help="Locate datasets to update.")
    parser.add_argument('--filter', help="Update only datasets with files that have this extension.")
    parser.add_argument('--all', action='store_true', help="Display all datasets, regardless of update status.")
    parser.add_argument('--datasets', help="File with list of datasets to update.")
    parser.add_argument('--verbose', '-v', action='store_true')
    parser.add_argument('--brief', action='store_true', help="Display only dataset names and nothing else.")
    return parser.parse_args()


def load_datasets_file(name):
    if name is None:
        return []
    dss = list()
    with open(name, 'r') as f:
        for line in f.readlines():
            dss.append(line.strip())
    f.close()
    return dss


if __name__ == '__main__':

    args = arguments()

    overrides = load_datasets_file(args.datasets)

    try:
        ds = utils.hcai_data()
    expect:
        print("There was an error fetching from https://opencalaccess.org/hcaijson")
        ds = {}

    for name in ds:

        if 'ca_update' in ds[name]:
            ca_update = ds[name]['ca_update']
        else:
            ca_update = None

        if 't_update' in ds[name]:
            my_update = ds[name]['t_update']
        else:
            my_update = None

        if 'ext' in ds[name]:
            exts = str(ds[name]['ext'])
        else:
            exts = ''

        if not ca_update or not my_update or my_update < ca_update or args.all or name in overrides:
            if args.exec:

                if args.filter:
                    if 'ext' not in ds[name] or args.filter not in ds[name]['ext']:
                        continue

                if os.path.isfile(f"{name}/deets.sh"):
                    print(f"\n# {name}")
                    print(f"cd {name}; bash ../update_one.sh; cd ..")
                else:
                    print(f"\n# {name} - BAD DIR")
                    print("#")

            else:

                if args.filter:
                    if 'ext' not in ds[name] or args.filter not in ds[name]['ext']:
                        continue

                if args.brief:
                    print(f"ds: {name}")
                else:
                    print(f"ds: {name} my: {my_update} ca: {ca_update} exts: {exts}")

