
Changing the county_code value. It is, right now, similar to '43 - Santa Clara'. I am changing that to 43, so
that it corresponds to the dhcs_county_code_references table data.

Looking at the SPC Rating value, I see numbers, but it is a VARCHAR(3) column. The value may be set to 'N/A'.

I am also seeing -1, which is not documented, but appears to be a 'Not Yet Existing' building. They seem to be
either proposed, or in construction.

```
     mysql> select spc_rating, count(0) from hospital_buildings group by spc_rating order by spc_rating;
     +------------+----------+
     | spc_rating | count(0) |
     +------------+----------+
     | -1         |        5 |
     | 1          |       39 |
     | 1s         |        2 |
     | 2          |      655 |
     | 2s         |        5 |
     | 3          |      331 |
     | 3s         |       52 |
     | 4          |      700 |
     | 4D         |       13 |
     | 4s         |       78 |
     | 5          |     1090 |
     | 5s         |      435 |
     | N/A        |      608 |
     +------------+----------+
```

I am changing the SPC Rating to to a number. I will add a SPC Verfied flag (a CHAR(1)) for the "s" or "D"(?).
An 'N/A' in the SPC Rating column will be set to 'N' in the SPC Verified column.

Question: Why does the hospital_buildings data not have capacity?

