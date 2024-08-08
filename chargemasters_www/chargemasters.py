
import sys

from dotenv import dotenv_values
from flask import Flask, redirect
from jinja2 import Environment, PackageLoader

cfg = dotenv_values(".env")

sys.path.append(f"{cfg['APP_HOME']}")
import data

chargemasters = Flask(__name__)
application = chargemasters
env = Environment(loader=PackageLoader('chargemasters'))


@chargemasters.route(f"/{cfg['WWW']}/")
def chargemasters_main():
    main = env.get_template('chargemasters_main.html')
    context = data.chargemasters_main(year=None)
    return main.render(**context)


@chargemasters.route(f"/{cfg['WWW']}/year/<year>")
def chargemasters_main_year(year):
    main = env.get_template('chargemasters_main.html')
    context = data.chargemasters_main(year)
    return main.render(**context)


@chargemasters.route(f"/{cfg['WWW']}/facilities/")
@chargemasters.route(f"/{cfg['WWW']}/facilities/<initial>/")
def chargemasters_facilities(initial=None):
    main = env.get_template('chargemasters_fac.html')
    context = data.chargemasters_facilities(initial)
    return main.render(**context)


@chargemasters.route(f"/{cfg['WWW']}/hcai_ids/")
def chargemasters_hcai_ids():
    main = env.get_template('chargemasters_hcai_ids.html')
    context = data.chargemasters_hcai_ids()
    return main.render(**context)


@chargemasters.route(f"/{cfg['WWW']}/hcai_id/<id>")
def chargemasters_hcai_id(id):
    main = env.get_template('chargemasters_hcai_id.html')
    context = data.chargemasters_hcai_id(id)
    return main.render(**context)


if __name__ == '__main__':
    chargemasters.run(port=8080)

