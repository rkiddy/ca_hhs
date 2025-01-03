
import argparse
import os.path

import json

import requests as req

import utils

def arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--exec', '-x', action='store_true')
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

        if not ca_update or not my_update or my_update < ca_update:
            if args.exec:
                if os.path.isfile(f"{name}/deets.sh"):
                    print(f"\n# {name}")
                    print(f"cd {name}; bash ../update_one.sh; cd ..")
                else:
                    print(f"\n# {name} - BAD DIR")
                    print("#")
            else:
                print(f"ds: {name} my: {my_update} ca: {ca_update}")


