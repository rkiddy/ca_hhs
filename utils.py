
import json

import requests as req


def hcai_data():

    r = req.get('https://opencalaccess.org/hcaijson/')
    d = json.loads(r.text)
    return d['datasets']

