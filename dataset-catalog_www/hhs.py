
import sys

from dotenv import dotenv_values
from flask import Flask, redirect
from jinja2 import Environment, PackageLoader

cfg = dotenv_values(".env")

sys.path.append(f"{cfg['APP_HOME']}")
import data

hhs = Flask(__name__)
application = hhs
env = Environment(loader=PackageLoader('hhs'))


@hhs.route(f"/{cfg['WWW']}/")
def hhs_main():
    main = env.get_template('hhs_main.html')
    context = data.hhs_main()
    return main.render(**context)


@hhs.route(f"/{cfg['WWW']}/detail/<id>/")
def hhs_detail(id):
    main = env.get_template('hhs_detail.html')
    context = data.hhs_detail(id)
    return main.render(**context)


@hhs.route(f"/{cfg['WWW']}/next/<id>/")
def hhs_next(id):
    id = data.next(id)
    # print(f"next: id for next page is {id}")
    if not id:
        return redirect("/{cfg['WWW']}/")
    else:
        return redirect(f"/{cfg['WWW']}/detail/{id}")


@hhs.route(f"/{cfg['WWW']}/prev/<id>/")
def hhs_prev(id):
    id = data.prev(id)
    # print(f"next: id for next page is {id}")
    if not id:
        return redirect("/{cfg['WWW']}/")
    else:
        return redirect(f"/{cfg['WWW']}/detail/{id}")


@hhs.route(f"/{cfg['WWW']}/details/")
def hhs_raw_details():
    context = dict()
    main = env.get_template('details_list.html')
    return main.render(**context)


@hhs.route(f"/{cfg['WWW']}/details/description_blank/")
def hhs_descriptions_blank():
    context = dict()
    main = env.get_template('raw_details.html')
    context['rows'] = data.hhs_raw('blankDescriptions')
    context['label'] = 'Blank Descriptions in Cataolog Dataset'
    return main.render(**context)


if __name__ == '__main__':
    hhs.run(port=8080)

