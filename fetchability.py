
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
import utils as u

cfg = config.cfg()

eng = create_engine(f"mysql+pymysql://{cfg['META_USR']}:{cfg['META_PWD']}@{cfg['META_HOST']}/{cfg['META_DB']}")
conn = eng.connect()


def arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('--id')
    parser.add_argument('--opencal-file')
    parser.add_argument('--cal-hhs-file')
    parser.add_argument('--fetch-only', action="store_true")
    parser.add_argument('--download-all-zips', action="store_true")
    parser.add_argument('--verbose', '-v', action="store_true")
    return parser.parse_args()


def fetch_cal_hhs_dataset_detail(item: dict):
    """For a particular dataset, go to the summary page and read all the information
       that is available there."""

    item['dcat_mod_date'] = None
    item['program'] = None
    item['uuid1'] = None
    item['uuid2'] = None
    item['hash'] = None

    item['last_update'] = '1970-01-01 00:00 (UTC)'

    data = requests.get(item['url'])

    soup = bs(data.text, 'html.parser')

    meta = soup.find('table')

    if not meta:
        return item

    try:

        for row in meta.find_all('tr'):
            if row.find('th').text == 'Last Updated':
                # example as found: August 28, 2024, 8:50 PM (UTC-07:00), sometimes just (UTC).
                #
                update = row.find('td').find('span').text.strip()
                if ' (UTC' in update:
                    update = update[:update.index(' (UTC')]
                update_dt = dt.strptime(update, '%B %d, %Y, %H:%M').strftime('%Y-%m-%d %H:%M')

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

    return item


def fetch_cal_hhs_datasets():
    """From from the main Cal HHS Datasets page (https://data.chhs.ca.gov/dataset/) and
       iterate through the list, returning the list of currently available datasets,
       with the information that can be pulled from the summary list page.
       Each dataset can be found as the first (and only?) A tag in a table row
       and the first UL tag with the CSS class identified as "dataset-resources"."""

    found = list()

    print("Reading 20-some pages of datasets lists...")

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

    # TODO I should have a dict_from_array_with_key utility method.

    results = dict(zip([r['id'] for r in found], found))

    return results


def fetch_opencal_datasets():
    """Read the meta data from the datasets table in the ca_hhs_meta database.
       Return a list of dictionaries, but actually return a dictionary keyed on the id values."""

    found = list()

    try:
        # Get the list of ids first.
        #
        rows = u.db_exec(conn, "select pk, name as id from datasets")
        ds = dict(zip([r['pk'] for r in rows], rows))

        # Since we fetch the update records in increasing date order, the last one we will see will be latest.
        #
        sql = "select * from updates order by updated"
        for row in u.db_exec(conn, sql):
            pk = row['ds_pk']

            if pk in ds:
                if row['updated']:
                    ds[pk]['success'] = dt.fromtimestamp(row['updated']).strftime('%Y-%m-%d %H:%M')
                else:
                    ds[pk]['success'] = '1970-01-01 00:00 (UTC)'

        results = list(ds.values())

        result = dict(zip([r['id'] for r in results], results))
    except:
        traceback.print_exc()
        return []

    return results


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

    if args.no_zips:
        return

    if 'fetch_result' in item:
        return

    url = item['dload_all']
    id = item['id']
    fname = item['dload_all'].split('/')[-1]
    full_fname = f"{id}/{fname}"

    if os.path.isfile(full_fname):
        print(f"downloading: SKIPPING, {id}/{fname}\n")
        return

    print(f"downloading: {id}/{fname}\n")

    try:
        if not os.path.isdir(id):
            os.mkdir(id)
    except:
        print("Could NOT create dir: {id}")
        traceback.print_exc()
        return

    os.chdir(id)

    try:
        data = requests.get(url)
        with open(fname, mode='wb') as localfile:
            localfile.write(data.content)

        sql = f"""insert into updates (ds_pk, updated, fetched) values
                  ((select pk from datasets where name = {u.fix(id)}), unix_timestamp(), unix_timestamp())"""
        u.db_exec(conn, sql)

    except:
        traceback.print_exc()
        print(f"Could NOT download file: {fname}")

    os.chdir('..')

    # TODO fetch_result? or fetched? store the 0/1 result or the time of result?


def dump(label, data):
    for key in data:
        print(f"{label}: {data[key]}\n")


if __name__ == '__main__':

    import progressbar as pb

    args = arguments()

    # from ca_hhs_meta:
    # get list of datasets that we have fetched and the time of their last successful fetch.

    if args.opencal_file:
        opencal_datasets = read(args.opencal_file)
    else:
        opencal_datasets = fetch_opencal_datasets()
        opencal_datasets = dict(zip([r['id'] for r in opencal_datasets], opencal_datasets))
        write('data_opencal', opencal_datasets)

    print(f"opencal_datasets # {len(opencal_datasets)}")

    # from Cal HHS website:

    if args.cal_hhs_file:
        cal_hhs_datasets = read(args.cal_hhs_file)
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
        bar = pb.ProgressBar(maxval=len(cal_hhs_datasets))
        bar.start()
        for dataset in cal_hhs_datasets:
            fetch_cal_hhs_dataset_detail(cal_hhs_datasets[dataset])
            bar.increment()
        bar.finish()

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
                    cal_hhs_datasets.pop(id)

    print(f"cal_hhs_datasets # {len(cal_hhs_datasets)}\n")

    if args.fetch_only:
        quit()

    # which datasets have a "Last Update" after their last successful fetch?

    if args.download_all_zips:

        for id in cal_hhs_datasets:
            download_zipfile(cal_hhs_datasets[id])

    else:
        for id in cal_hhs_datasets:

            # if we do not have a download link, why bother?
            if 'dload_all' not in cal_hhs_datasets[id]:
                continue

            if args.download_all_zips:
                download_zipfile(cal_hhs_datasets[id])
                continue

            if id in opencal_datasets:

                if 'success' not in opencal_datasets[id]:
                    opencal_datasets[id]['success'] = '1970-01-01 00:00'

                if opencal_datasets[id]['success'] >= cal_hhs_datasets[id]['last_update']:
                    if args.verbose:
                        print(f"# id: {id}, opencal is more current.\n")
                else:
                    print(f"# id: {id}, opencal is LESS current, " \
                           f"{opencal_datasets[id]['success']} vs " \
                           f"{cal_hhs_datasets[id]['last_update']}\n");
                    download_zipfile(cal_hhs_datasets[id])

