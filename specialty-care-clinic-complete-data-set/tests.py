
import unittest

import specialty as spec


types = {'long': ['fac_address_one', 'fac_address_two', 'parent_name',
                  'parent_address_one', 'parent_address_two'],
         'id9': ['oshpd_id', 'license_no'],
         'id10': ['cens_tract'],
         'int': ['assembly_dist', 'senate_dist', 'congress_dist'],
         'float': ['longitude','latitude'],
         'date': ['beg_date', 'end_date', 'lic_status_date'],
         'yesno': ['fac_oper_curryr', 'equip_acq_over_500k', 'cap_exp_over_1mil']}

class BitmapTest(unittest.TestCase):


    def test_fix_01(self):
        result = spec.fix('longitude', '-120.85215', types)
        self.assertEqual('-120.85215', result)


if __name__ == '__main__':
    unittest.main()

