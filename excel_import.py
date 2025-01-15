import argparse
import sys

sys.path.append('..')

import excel_helper as exc

if __name__ == '__main__':

    parser = argparse.ArgumentParser()
    parser.add_argument('--file')
    args = parser.parse_args()

    tables = dict()

    with open(args.file, 'r') as f:
        for line in f:
            parts = line.strip().split('\t')
            detail = {'file': parts[0], 'sheet': parts[1]}
            tables[parts[2]] = detail

    # print(f"tables: {tables}")

    if len(tables) == 0:
        quit()

    types = {}

    replaces = {}

    exc.create_tables(tables, types, replaces)
    exc.read_data(tables, types, replaces)

    print("")
