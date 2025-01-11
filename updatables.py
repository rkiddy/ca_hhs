
import argparse
import os.path

import json

import requests as req

import utils

def arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--exec', '-x', action='store_true', help="Locate datasets to update.")
    parser.add_argument('--file_filter', help="Update only datasets with files that have this extension.")
    return parser.parse_args()


if __name__ == '__main__':

    args = arguments()

    ds = utils.hcai_data()

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

        if not ca_update or not my_update or my_update < ca_update:
            if args.exec:

                if args.file_filter:
                    if 'ext' not in ds[name] or args.file_filter not in ds[name]['ext']:
                        continue

                if os.path.isfile(f"{name}/deets.sh"):
                    print(f"\n# {name}")
                    print(f"cd {name}; bash ../update_one.sh; cd ..")
                else:
                    print(f"\n# {name} - BAD DIR")
                    print("#")

            else:

                print(f"ds: {name} my: {my_update} ca: {ca_update} exts: {exts}")

