import argparse
import sys

sys.path.append('..')

import csv_helper as csv

if __name__ == '__main__':

    parser = argparse.ArgumentParser()
    parser.add_argument('--file')
    args = parser.parse_args()

    tables = dict()

    with open(args.file, 'r') as f:
        for line in f:
            parts = line.strip().split('\t')
            tables[parts[1]] = parts[0]

    if len(tables) == 0:
        quit()

    types = {}

    replaces = {}

    failed_create = csv.create_tables(tables, types, replaces)
    print(f"failed_create: {failed_create}")

    failed_read = csv.read_data(tables, types, replaces)
    print(f"failed_read: {failed_read}")

    fails = len(failed_create) + len(failed_read)

    print("")

    if fails > 0:
        sys.exit(1)
