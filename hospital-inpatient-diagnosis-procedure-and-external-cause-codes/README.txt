
To verify that, through all of the morbidity files being looked at, for the years being looked at (2017-2021), the
icdcm_code values correspond to the descriptions, even though there are text values. There are only <30 of these, so
it is not difficult to scan them visually.

```
echo "select icdcm_code, diagnosis_description from inpatient_deaths;" | \
    mysql --skip-column-names ca_hhs | \
    tr '[a-z]' '[A-Z]' | sort | uniq | \
    awk 'BEGIN{FS="\t"}{print $1}' | \
    sort | uniq -c | \
    awk '{if ($1 > 1) print "select * from inpatient_deaths where icdcm_code = '\''"$2"'\'';"}' | mysql -vvv ca_hhs
```


