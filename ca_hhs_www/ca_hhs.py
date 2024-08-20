
import sys

from dotenv import dotenv_values
from flask import Flask, redirect, request
from jinja2 import Environment, PackageLoader

cfg = dotenv_values(".env")

sys.path.append(f"{cfg['APP_HOME']}")
import data
ca_hhs = Flask(__name__)
application = ca_hhs
env = Environment(loader=PackageLoader('ca_hhs'))


@ca_hhs.route(f"/{cfg['WWW']}/")
def ca_hhs_main():
    main = env.get_template('main.html')
    context = data.main()
    return main.render(**context)


@ca_hhs.route(f"/{cfg['WWW']}/catalog/")
def catalog_main():
    main = env.get_template('catalog_main.html')
    context = data.catalog_main()
    return main.render(**context)


@ca_hhs.route(f"/{cfg['WWW']}/catalog/detail/<id>")
def catalog_detail(id):
    main = env.get_template('catalog_detail.html')
    context = data.catalog_detail(id)
    return main.render(**context)

@ca_hhs.route(f"/{cfg['WWW']}/catalog/next/<id>/")
def catalog_next(id):
    id = data.catalog_next(id)
    # print(f"next: id for next page is {id}")
    if not id:
        return redirect("/{cfg['WWW']}/catalog/")
    else:
        return redirect(f"/{cfg['WWW']}/catalog/detail/{id}")


@ca_hhs.route(f"/{cfg['WWW']}/catalog/prev/<id>/")
def catalog_prev(id):
    id = data.catalog_prev(id)
    # print(f"next: id for next page is {id}")
    if not id:
        return redirect("/{cfg['WWW']}/catalog/")
    else:
        return redirect(f"/{cfg['WWW']}/catalog/detail/{id}")



@ca_hhs.route(f"/{cfg['WWW']}/chargemasters/years/")
def chargemasters_main_years():
    main = env.get_template('chargemasters_years.html')
    context = data.chargemasters_years()
    return main.render(**context)


@ca_hhs.route(f"/{cfg['WWW']}/chargemasters/year/<year>")
def chargemasters_main_year(year):
    main = env.get_template('chargemasters_main.html')
    context = data.chargemasters_main(year)
    return main.render(**context)


@ca_hhs.route(f"/{cfg['WWW']}/chargemasters/facilities/")
@ca_hhs.route(f"/{cfg['WWW']}/chargemasters/facilities/<initial>/")
def chargemasters_facilities(initial=None):
    main = env.get_template('chargemasters_fac.html')
    context = data.chargemasters_facilities(initial)
    return main.render(**context)


@ca_hhs.route(f"/{cfg['WWW']}/chargemasters/hcai_ids/")
def chargemasters_hcai_ids():
    main = env.get_template('chargemasters_hcai_ids.html')
    context = data.chargemasters_hcai_ids()
    return main.render(**context)


@ca_hhs.route(f"/{cfg['WWW']}/chargemasters/hcai_id/<id>")
def chargemasters_hcai_id(id):
    main = env.get_template('chargemasters_hcai_id.html')
    context = data.chargemasters_hcai_id(id)
    return main.render(**context)


@ca_hhs.route(f"/{cfg['WWW']}/chargemasters/no_hcai_id/")
def chargemasters_no_hcai_id():
    main = env.get_template('chargemasters_files.html')
    context = data.chargemasters_no_hcai_id()
    return main.render(**context)

@ca_hhs.route(f"/{cfg['WWW']}/chargemasters/changes/")
def chargemasters_changes():
    main = env.get_template('chargemasters_changes.html')
    context = data.chargemasters_changes()
    return main.render(**context)


# @ca_hhs.route(f"/{cfg['WWW']}/read_changes/", methods=['POST'])
# def chargemasters_read_changes():
#     main = env.get_template('chargemasters_changes.html')
#     print(data.chargemasters_calc_changes(request.form['change_info']))
#     return redirect(f"/{cfg['WWW']}/")


@ca_hhs.route(f"/{cfg['WWW']}/buildings/spc/")
def buildings_spc_ratings():
    main = env.get_template('buildings_spc.html')
    context = data.buildings_spc()
    return main.render(**context)


@ca_hhs.route(f"/{cfg['WWW']}/table_columns/")
def columns():
    main = env.get_template('ca_hhs_tables.html')
    context = data.table_info()
    return main.render(**context)

if __name__ == '__main__':
    ca_hhs.run(port=8080)

