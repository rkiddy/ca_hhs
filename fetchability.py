"""Fetch information from the Cal HHS website.


   First, the data is read from the Cal HHS web site. This information is also stored in a json file.
   Second, the Opencal database content is also read and stored as a json file.

   If the --fetch-only flag is present, the script stops here. If the --opencal-file and --opencal-file
   are provided, then the previous steps would have been skipped.

   Third, we can determine if the dataset has been updated and if the zip file for the dataset should
   be re-fetched. If there is no workable 'Download All' link, then we should be able to use selenium,
   but we are not doing this at present.
"""

import argparse
import json
import os
import os.path
import traceback
from datetime import datetime as dt

import pytz
import requests
from bs4 import BeautifulSoup as bs
from sqlalchemy import create_engine

import config
import sql_helper
import utils as u

cfg = config.cfg()

dbmeta = create_engine(f"mysql+pymysql://{cfg['META_USR']}:{cfg['META_PWD']}@{cfg['META_HOST']}/{cfg['META_DB']}")
conn = dbmeta.connect()


def arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--id', help="Fetch only the dataset for this id.")
    parser.add_argument('--json-in', action="store_true",
                        help="Use previously fetched data for Cal HHS, instead of fetching it.")
    parser.add_argument('--opencal-json-in', action="store_true")
    parser.add_argument('--fetch-only', action="store_true",
                        help="Only fetch and process opencal and Cal HHS data.")
    parser.add_argument('--download-all-zips', action="store_true",
                        help="Download all available zip files, not checking update dates.")
    parser.add_argument('--no-write-json', action="store_true",
                        help="Do not write fetched info to json files. Effect disabled with --json-in.")
    parser.add_argument('--verbose', '-v', action="store_true")
    parser.add_argument('--non-interactive', '-ni', action="store_true",
                        help="Prevent all output, except for errors. Useful when called via cron.")
    return parser.parse_args()


def dprint(msg):
    if args.verbose:
        print(msg)


def iprint(msg):
    if not args.non_interactive:
        print(msg)


def diprint(msg):
    if args.verbose and not args.non_interactive:
        print(msg)


def fetch_cal_hhs_dataset_detail(item: dict):
    """For a particular dataset, go to the summary page and read all the information
       that is available there."""

    try:
        item['dcat_mod_date'] = None
        item['program'] = None
        item['uuid1'] = None
        item['uuid2'] = None
        item['hash'] = None

        item['last_update'] = 0

        data = requests.get(item['url'])

        soup = bs(data.text, 'html.parser')

        meta = soup.find('table')

        if not meta:
            return item

        for row in meta.find_all('tr'):
            if row.find('th').text == 'Last Updated':
                # example as found: August 28, 2024, 8:50 PM (UTC-07:00), sometimes just (UTC).
                #
                update = row.find('span').text.strip()

                if ' (UTC' in update:
                    update = update[:update.index(' (UTC')]

                update_dt = dt.strptime(update, '%B %d, %Y, %H:%M')
                offset = pytz.timezone("America/Los_Angeles").utcoffset(update_dt).seconds
                update_dt_sec = int(update_dt.timestamp()) - offset

                # there are datasets that have an updated date far in the future...
                if update_dt_sec > int(dt.now().timestamp()):
                    update_dt_sec = int(dt.now().timestamp())

                item['last_update'] = str(update_dt_sec)

            if row.find('th').text == 'DCAT Modified Date':
                # example as found: 'dcat_mod_date': '2025-07-03T17:53:31.874Z'
                #
                mod = row.find('td').text
                item['dcat_mod_date'] = f"{mod[:10]} {mod[11:16]}"

            if row.find('th').text == 'Program':
                item['program'] = row.find('td').text.strip()

        for link in soup.find_all('a'):
            if 'Download all' in link.text:

                # a "Download all" link looks like this and is taken apart here:
                #   https://data.chhs.ca.gov/dataset/04ccec8c-17ca-4659-9001-f7e4ffa8604b/resource/
                #              18464913-bf6a-4460-8465-a64b78107af4/download/
                #              abortion-related-services-funded-by-medi-cal-8eai0lxy.zip
                href = link['href']
                if href:
                    parts = href.split('/')
                    if len(parts) > 6:
                        item['uuid1'] = parts[4]
                        item['uuid2'] = parts[6]
                        last = parts[-1]
                        item['hash'] = last[len(item['id']):].replace('.zip', '')
                        item['dload_all'] = href

    except:
        print(f"exception from: {item}")
        traceback.print_exc()
        return None

    return item


def fetch_cal_hhs_datasets_lists():
    """From from the main Cal HHS Datasets page (https://data.chhs.ca.gov/dataset/) and
       iterate through the list, returning the list of currently available datasets,
       with the information that can be pulled from the summary list page.
       Each dataset can be found as the first (and only?) A tag in a table row
       and the first UL tag with the CSS class identified as "dataset-resources"."""

    found = list()

    if not args.non_interactive:
        print("Reading 20-some pages of datasets lists...")
        import progressbar as pb
        assumed_max = 25
        bar = pb.ProgressBar(maxval=assumed_max)
        bar.start()

    url_base = 'https://data.chhs.ca.gov/dataset/'
    page_num = 1
    done = False
    while not done:

        found_here = list()

        if page_num == 1:
            url = url_base
        else:
            url = f"{url_base}?page={page_num}"

        try:
            data = requests.get(url)

            soup = bs(data.text, 'html.parser')

            items = soup.find_all('li')

            dataset_items = list()

            for item in items:
                if 'class' in item.attrs and 'dataset-item' in item['class']:
                    dataset_items.append(item)

            for item in dataset_items:

                dataset = dict()
                dataset['url'] = None
                dataset['id'] = None
                dataset['tags'] = list()

                link = item.find('a')
                if link:
                    dataset['url'] = f"https://data.chhs.ca.gov/{link['href']}"
                    dataset['id'] = dataset['url'].split("/")[-1]

                for inner_item in item.find_all('li'):
                    inner_link = inner_item.find('a')
                    dataset['tags'].append(inner_link.text)

                found_here.append(dataset)

            #print(f"page # {page_num} found {len(found_here)} datasets")

            if len(found_here) == 0:
                done = True
            else:
                found.extend(found_here)
                page_num += 1

        except:
            print(f"exception in fetching list of datasets at page # {page_num}")
            traceback.print_exc()
            done = True

        if not args.non_interactive and page_num < assumed_max:
            bar.increment()

    if not args.non_interactive:
        bar.finish()

    # TODO I should have a dict_from_array_with_key utility method.

    results = dict(zip([r['id'] for r in found], found))

    return results

def build_one_dataset(id):
    cal_hhs_datasets = dict()
    cal_hhs_dataset = dict()
    cal_hhs_dataset['id'] = args.id
    cal_hhs_dataset['url'] = f"https://data.chhs.ca.gov/dataset/{args.id}"
    cal_hhs_datasets[args.id] = cal_hhs_dataset
    return cal_hhs_datasets


def record_ca_hhs_last_update(data):
    if 'last_update' in data:
        last_update_str = data['last_update']
        sql = f"""update datasets
                  set update_ca_hhs = {last_update_str}, update_ca_hhs_fails = 0
                  where name = '{data['id']}'"""
        try:
            sql_helper.db_exec(dbmeta, sql)
        except:
            print(f"BAD sql: {sql}")
            quit()


def record_ca_hhs_last_update_fails(id):
    sql = f"update datasets set update_ca_hhs_fails = update_ca_hhs_fails + 1 where name = '{id}'"
    sql_helper.db_exec(dbmeta, sql)


def update_dataset_details(dss):
    if args.non_interactive:
       for dataset in dss:
           item = fetch_cal_hhs_dataset_detail(dss[dataset])
           if item is not None:
               record_ca_hhs_last_update(item)
               record_ca_hhs_last_update_fails(dataset)

    else:
        print("Fetching detail pages for each dataset:")
        import progressbar as pb
        bar = pb.ProgressBar(maxval=len(dss))
        bar.start()
        for dataset in dss:
            item = fetch_cal_hhs_dataset_detail(dss[dataset])
            if item is not None:
                record_ca_hhs_last_update(item)
                record_ca_hhs_last_update_fails(dataset)
            bar.increment()
        bar.finish()

    return dss


def record_zip_file_update(data, zip_file):
    sql = f"""update datasets
              set update_zip_file = unix_timestamp(), update_zip_file_fails = 0, zip_file = '{zip_file}'
              where name = '{data['id']}' and inactive is NULL"""
    try:
        sql_helper.db_exec(dbmeta, sql)
    except:
        print(f"BAD sql: {sql}")
        quit()


def record_zip_file_update_fails(id):
    sql = f"""update datasets set update_zip_file_fails = update_zip_file_fails + 1, zip_file = NULL
              where name = '{id}'"""
    sql_helper.db_exec(dbmeta, sql)


def fetch_opencal_datasets():
    """Read the meta data from the datasets table in the ca_hhs_meta database.
       Return a list of dictionaries, but actually return a dictionary keyed on the id values."""

    found = list()

    # mysql> desc datasets;
    # +-----------------------+---------------+------+-----+---------+-------+
    # | Field                 | Type          | Null | Key | Default | Extra |
    # +-----------------------+---------------+------+-----+---------+-------+
    # | pk                    | int           | NO   | PRI | NULL    |       |
    # | name                  | varchar(255)  | YES  | UNI | NULL    |       |
    # | update_ca_hhs         | bigint        | YES  |     | NULL    |       |
    # | update_ca_hhs_fails   | tinyint       | YES  |     | NULL    |       |
    # | update_zip_file       | bigint        | YES  |     | NULL    |       |
    # | update_zip_file_fails | tinyint       | YES  |     | NULL    |       |
    # | update_tables         | bigint        | YES  |     | NULL    |       |
    # | update_tables_fails   | tinyint       | YES  |     | NULL    |       |
    # | url                   | varchar(1027) | YES  |     | NULL    |       |
    # | zip_file              | varchar(127)  | YES  |     | NULL    |       |
    # | updated               | bigint        | YES  |     | NULL    |       |
    # | inactive              | bigint        | YES  |     | NULL    |       |
    # +-----------------------+---------------+------+-----+---------+-------+

    try:
        # Get the list of ids first.
        #
        rows = sql_helper.db_exec(dbmeta, "select * from datasets where inactive is NULL")

        return dict(zip([r['name'] for r in rows], rows))

    except:
        traceback.print_exc()
        return []


def update_opencal_table_counts():

    sql = """select d1.pk, count(0) as count
             from datasets d1, sources s1
             where d1.pk = s1.ds_pk and
                   (s1.file_name like '%%.csv' or s1.file_name like '%%.xslx') and
                   d1.name not like '%%dictionary%%'
                   group by d1.name order by d1.name"""

    rows = sql_helper.db_exec(dbmeta, sql)

    for row in rows:

        pk = row['pk']
        count = row['count']
        if count is None:
            count = 0

        sql = f"update datasets set tables_count = {count} where pk = {pk}"
        sql_helper.db_exec(dbmeta, sql)


def read_local_json_data():
    """
    The json files for previous fetches are stored like "data_cal_hhs_1756422450.json".
    """
    cal_hhs_file = [f for f in os.listdir() if f.startswith('data_cal_hhs_') and f.endswith('.json')][-1]
    with open(cal_hhs_file, 'r') as file:
        return json.load(file)


def read_opencal_json_data():
    """
    The fetch-only version of this script is run on opencalaccess every day and the result
    is placed into the web server, so that it can be fetched here.
    """
    resp = requests.get('https://opencalaccess.com/ca_hhs/latest.json')
    return resp.json()


def write(label: str, data: dict):
    obj = json.dumps(data)
    t = int(dt.timestamp(dt.now()))
    file = f"{label}_{t}.json"
    with open(file, "w") as outfile:
        outfile.write(obj)


def download_zipfile(item: dict):
    """Download a zip file and record the success of the download operation."""

    if 'dload_all' not in item:
         return

    url = item['dload_all']
    id = item['id']
    fname = item['dload_all'].split('/')[-1]
    full_fname = f"{id}/{fname}"

    print(f"downloading: {id}/{fname}")

    try:
        if not os.path.isdir(id):
            os.mkdir(id)
    except:
        print("Could NOT create dir: {id}")
        traceback.print_exc()
        return 2

    try:
        os.chdir(id)

        # clear out existing zip files first
        with os.scandir('.') as it:
            for entry in it:
                if entry.name.endswith('.zip') and entry.is_file():
                    os.remove(entry.name)

        data = requests.get(url)
        with open(fname, mode='wb') as localfile:
            localfile.write(data.content)

        found_zip_file = None

        with os.scandir('.') as it:
            for entry in it:
                if entry.name.endswith('.zip') and entry.is_file():
                    found_zip_file = entry.name
                    si = os.stat(found_zip_file)
                    #if args.verbose:
                    print(f"si: {si}")
                    print(f"    size: {si.st_size}")

        # TODO get file downloaded size here to return the value

        os.chdir('..')

        record_zip_file_update(item, found_zip_file)

        return 0

    except:
        traceback.print_exc()
        print(f"Could NOT download file: {fname}")

        record_zip_file_update_fails(item)

        return 1


def dump(label, data):
    for key in data:
        print(f"{label}: {data[key]}\n")


def fromtimestamp(ts):
    ts1 = dt.fromtimestamp(ts)
    return ts1.strftime('%Y-%m-%d %H:%M')


if __name__ == '__main__':

    args = arguments()

    iprint("")

    # from the opencal database, ca_hhs_meta:
    # get list of datasets that we have fetched and the time of their last successful fetch.

    opencal_datasets = fetch_opencal_datasets()

    iprint(f"opencal_datasets # {len(opencal_datasets)}")

    # from Cal HHS website:

    if args.json_in:

        cal_hhs_datasets = read_local_json_data()

    elif args.opencal_json_in:

        cal_hhs_datasets = read_opencal_json_data()

    else:
        if not args.id:
            cal_hhs_datasets = fetch_cal_hhs_datasets_lists()
        else:
            cal_hhs_datasets = build_one_dataset(args.id)

        # Read the page for each dataset url, using a progress bar to display as we go.
        #
        cal_hhs_datasets = update_dataset_details(cal_hhs_datasets)

        if not args.no_write_json:
            write('data_cal_hhs', cal_hhs_datasets)

    iprint(f"cal_hhs_datasets # {len(cal_hhs_datasets)}\n")

    if args.fetch_only:
        quit()

    # which datasets have a "Last Update" after their last successful fetch?

    if args.download_all_zips:

        for id in cal_hhs_datasets:
            r = download_zipfile(cal_hhs_datasets[id])
            diprint(f"zip file for {id}, result: {r}")

    else:
        downloadables = list()

        for id in cal_hhs_datasets:

            # if we do not have a download link, why bother?
            #
            if 'dload_all' not in cal_hhs_datasets[id]:
                print(f"\nLink for \"dload_all\" not found in {id}")
                continue

            if id in opencal_datasets:

                #print(f"ds detail: {opencal_datasets[id]}")

                ca_hhs_update = cal_hhs_datasets[id]['last_update']
                if ca_hhs_update is None:
                    continue

                ca_hhs_update = int(ca_hhs_update)

                zip_file_update = opencal_datasets[id]['update_zip_file']
                if zip_file_update is None:
                    zip_file_update = 0

                # TODO What the fuck? 5 seconds? Why? Arg!
                #
                if (zip_file_update + (5*1000)) >= ca_hhs_update:
                    diprint(f"\n# id: {id}, opencal is up to date.\n")
                else:
                    iprint(f"\n# id: {id}, opencal is OUT OF DATE\n" \
                           f"    zip file: {fromtimestamp(zip_file_update)}\n" \
                           f"    ca hhs: {fromtimestamp(ca_hhs_update)}\n")
                    downloadables.append(id)
            else:
                print(f"\nid: {id} not in opencal_datasets")

        iprint(f"\ndownloadables # {len(downloadables)}")

        if len(downloadables) > 0 and not args.non_interactive:
            print("\nok to download? ", end="")
            input()

        for id in downloadables:
            r = download_zipfile(cal_hhs_datasets[id])
            iprint(f"\nzip file for {id}, result: {r}\n")

