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

    csv.create_tables(tables, types, replaces)
    csv.read_data(tables, types, replaces)

    print("")
