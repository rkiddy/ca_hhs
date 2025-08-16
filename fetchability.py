
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

                update_dt = dt.strptime(update, '%B %d, %Y, %H:%M').strftime('%s')
                item['last_update'] = update_dt

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


def fetch_cal_hhs_datasets():
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


def record_zip_file_update(data):
    sql = f"""update datasets
              set update_zip_file = unix_timestamp(), update_zip_file_fails = 0
              where name = '{data['id']}'"""
    try:
        sql_helper.db_exec(dbmeta, sql)
    except:
        print(f"BAD sql: {sql}")
        quit()


def record_zip_file_update_fails(id):
    sql = f"update datasets set update_zip_file_fails = uupdate_zip_file_fails + 1 where name = '{id}'"
    sql_helper.db_exec(dbmeta, sql)


def fetch_opencal_datasets():
    """Read the meta data from the datasets table in the ca_hhs_meta database.
       Return a list of dictionaries, but actually return a dictionary keyed on the id values."""

    found = list()

    try:
        # Get the list of ids first.
        #
        rows = sql_helper.db_exec(dbmeta, "select * from datasets where inactive is NULL")
        ds = dict(zip([r['pk'] for r in rows], rows))

        # do something here?

        results = list(ds.values())

        result = dict(zip([r['name'] for r in results], results))
    except:
        traceback.print_exc()
        return []

    return results


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


def write(label: str, data: dict):
    obj = json.dumps(data)
    t = int(dt.timestamp(dt.now()))
    file = f"{label}_{t}.json"
    with open(file, "w") as outfile:
        outfile.write(obj)


def read(fname):
    with open(fname, 'r') as file:
        return json.load(file)


def download_zipfile(item: dict):

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

        data = requests.get(url)
        with open(fname, mode='wb') as localfile:
            localfile.write(data.content)

        with os.scandir('.') as it:
            for entry in it:
                if entry.name.endswith('.zip') and entry.is_file():
                    si = os.stat(entry.name)
                    #if args.verbose:
                    print(f"si: {si}")
                    print(f"    size: {si.st_size}")

        # TODO get file downloaded size here to return the value

        os.chdir('..')

        return 0

    except:
        traceback.print_exc()
        print(f"Could NOT download file: {fname}")

        return 1


def dump(label, data):
    for key in data:
        print(f"{label}: {data[key]}\n")


if __name__ == '__main__':

    args = arguments()

    if not args.non_interactive:
        print("")

    # from ca_hhs_meta:
    # get list of datasets that we have fetched and the time of their last successful fetch.

    opencal_datasets = fetch_opencal_datasets()
    opencal_datasets = dict(zip([r['name'] for r in opencal_datasets], opencal_datasets))

    # TODO when should this be called? when should we assume this is updated?
    #update_opencal_table_counts()

    if not args.non_interactive:
        print(f"opencal_datasets # {len(opencal_datasets)}")

    # from Cal HHS website:

    if args.json_in:
        cal_hhs_file = [f for f in os.listdir() if f.startswith('data_cal_hhs_') and f.endswith('.json')][-1]
        cal_hhs_datasets = read(cal_hhs_file)
    else:
        if not args.id:
            cal_hhs_datasets = fetch_cal_hhs_datasets()
        else:
            # TODO Not working. The dict cannot be turned into json. Why? -rrk 2025-07-11
            cal_hhs_datasets = dict()
            cal_hhs_dataset = dict()
            cal_hhs_dataset['id'] = id
            cal_hhs_dataset['url'] = f"https://data.chhs.ca.gov/dataset/{id}"
            cal_hhs_datasets[id] = cal_hhs_dataset

        # Read the page for each dataset url, using a progress bar to display as we go.
        #
        # If I get a good fetch of the page, update the info. If I fail to read the page, mark that.
        #
        if args.non_interactive:
            for dataset in cal_hhs_datasets:
                item = fetch_cal_hhs_dataset_detail(cal_hhs_datasets[dataset])
                if item is not None:
                    record_ca_hhs_last_update(item)
                    record_ca_hhs_last_update_fails(dataset)

        else:
            print("Fetching detail pages for each dataset:")
            import progressbar as pb
            bar = pb.ProgressBar(maxval=len(cal_hhs_datasets))
            bar.start()
            for dataset in cal_hhs_datasets:
                item = fetch_cal_hhs_dataset_detail(cal_hhs_datasets[dataset])
                if item is not None:
                    record_ca_hhs_last_update(item)
                    record_ca_hhs_last_update_fails(dataset)
                bar.increment()
            bar.finish()

        if not args.no_write_json:
            write('data_cal_hhs', cal_hhs_datasets)

    for id in opencal_datasets:
        # TODO inactive should always be present but sometimes it is not? Why?
        #
        if 'inactive' in opencal_datasets[id]:
            # if 'inactive' is a timestamp, that is when it was marked inactive.
            #
            if opencal_datasets[id]['inactive'] is not None:
                if id not in cal_hhs_datasets:
                    print(f"# To be REMOVED: {opencal_datasets[id]}\n")
                    #cal_hhs_datasets.pop(id)

    if not args.non_interactive:
        print(f"cal_hhs_datasets # {len(cal_hhs_datasets)}\n")

    if args.fetch_only:
        quit()

    # which datasets have a "Last Update" after their last successful fetch?

    if args.download_all_zips:

        for id in cal_hhs_datasets:
            r = download_zipfile(cal_hhs_datasets[id])
            if args.verbose and not args.non_interactive:
                print(f"zip file for {id}, result: {r}")

    else:
        downloadables = list()

        for id in cal_hhs_datasets:

            # if we do not have a download link, why bother?
            #
            if 'dload_all' not in cal_hhs_datasets[id]:
                continue

            if id in opencal_datasets:

                ca_hhs_update = cal_hhs_datasets[id]['last_update']
                if ca_hhs_update is None:
                    continue

                ca_hhs_update = int(ca_hhs_update)

                zip_file_update = opencal_datasets[id]['update_zip_file']
                if zip_file_update is None:
                    zip_file_update = 0

                if zip_file_update > ca_hhs_update:
                    if args.verbose and not args.non_interactive:
                        print(f"\n# id: {id}, opencal is up to date.\n")
                else:
                    if not args.non_interactive:
                        print(f"\n# id: {id}, opencal is OUT OF DATE, " \
                              f"zip file: {zip_file_update}, ca hhs: {ca_hhs_update}")
                    downloadables.append(id)

        if not args.non_interactive:
            print(f"downloadables # {len(downloadables)}")

        if len(downloadables) > 0:

            if not args.non_interactive:
                print("\nok to download? ", end="")
                input()

            for id in downloadables:
                r = download_zipfile(cal_hhs_datasets[id])
                if not args.non_interactive:
                    print(f"\nzip file for {id}, result: {r}\n")

                if r == 0: # 0 means GOOD, as of now.
                    record_zip_file_update(cal_hhs_datasets[id])
                else:
                    record_zip_file_update_fails(id)

