
import unittest

import csv_helper as csv


class BitmapTest(unittest.TestCase):

    def test_csv_helper_fix_date_001(self):
        expected = "'1969-10-19'"
        self.assertEqual(expected, csv.fix_date('1969-10-19'))


    def test_csv_helper_fix_date_002(self):
        expected = "'1969-10-19'"
        self.assertEqual(expected, csv.fix_date('10/19/1969'))


    def test_csv_helper_fix_col_head_001(self):
        expected = 'everything_normal'
        self.assertEqual(expected, csv.fix_col_head('everything_normal'))


    def test_csv_helper_fix_col_heads_001(self):
        """What is wrong with this one?"""
        expected = ['case_rate_used_for_tier_adjusted_using_linear_adjustment_7_day_',
                    'unadjusted_case_rate_per_100_000_excl_prisons_7_day_avg_7_day_l',
                    'linear_adjustment_factor_applied_to_case_rate']
        start = ['"Case Rate Used for Tier Adjusted Using Linear Adjustment (7-day avg, 7-day lag)"',
                 '"Unadjusted Case Rate per 100,000 excl prisons (7-day avg, 7-day lag)"',
                 'Linear Adjustment Factor Applied to Case Rate']
        self.assertEqual(expected, csv.fix_col_heads(start))


    def test_csv_helper_fix_col_head_002(self):
        expected = 'notes_about_countys_tier_status_for_05_31_21_assessment'
        self.assertEqual(expected, csv.fix_col_head("Notes About County's Tier Status for 05-31-21 Assessment"))


    def test_csv_helper_uniqify_columns_001(self):
        expected = ['a', 'b', 'c']
        self.assertEqual(expected, csv.uniqify_columns(['a', 'b', 'c']))


    def test_csv_helper_uniqify_columns_002(self):
        expected = ['fac_no', 'fac_name', 'beg_date', 'end_date', 'day_per', 'data_ind',
                    'audit_ind', 'county', 'hsa', 'hfpa', 'type_cntrl', 'type_care', 'type_hosp',
                    'teach_rurl', 'phone', 'address', 'city', 'zip_code', 'ceo', 'ceo_title',
                    'web_site1', 'owner', 'rpt_prep', 'org_name1', 'er_desig', 'mcar_pronum',
                    'mcal_pronum', 'reg_mcalnum', 'bed_lic', 'bed_avl', 'bed_stf', 'variable',
                    'amount', 'web_site2', 'org_name2']
        start = ['fac_no', 'fac_name', 'beg_date', 'end_date', 'day_per', 'data_ind', 'audit_ind',
                 'county', 'hsa', 'hfpa', 'type_cntrl', 'type_care', 'type_hosp', 'teach_rurl',
                 'phone', 'address', 'city', 'zip_code', 'ceo', 'ceo_title', 'web_site', 'owner',
                 'rpt_prep', 'org_name', 'er_desig', 'mcar_pronum', 'mcal_pronum', 'reg_mcalnum',
                 'bed_lic', 'bed_avl', 'bed_stf', 'variable', 'amount', 'web_site', 'org_name']
        self.assertEqual(set(expected), set(csv.uniqify_columns(start)))


if __name__ == '__main__':
    unittest.main()

