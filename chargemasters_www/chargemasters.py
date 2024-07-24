
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
    return redirect(f"/{cfg['WWW']}/year/2023")


@chargemasters.route(f"/{cfg['WWW']}/year/<year>")
def chargemasters_main_year(year):
    main = env.get_template('chargemasters_main.html')
    context = data.chargemasters_main(year)
    return main.render(**context)


@chargemasters.route(f"/{cfg['WWW']}/noC25")
def chargemasters_main_noC25(year):
    return redirect(f"/{cfg['WWW']}/noC25/year/2023")


@chargemasters.route(f"/{cfg['WWW']}/noC25/year/<year>")
def chargemasters_main_noC25_year(year):
    main = env.get_template('chargemasters_noC25.html')
    context = data.chargemasters_main_noC25(year)
    return main.render(**context)


if __name__ == '__main__':
    chargemasters.run(port=8080)

