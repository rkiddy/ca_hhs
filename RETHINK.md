Things are getting big and I need to re-think how this is being done.

## Goals:
As I see it now, I want to produce an MCP, which is an agentic resource that makes the data in the CalHHS easily usable. The data should include meta-data which described the currency of the data and the quality of the data. A rule engine may need to be developed to examine the quality of the data.

## Known knowns:
- There are almost 600 datasets and there are all sorts of problems with them.
  - There may be no 'Download All' link.
  - There may be a 'Download All' link but it may be broken.
  - If there is no 'Download All' link, a selenium tool can get the list files and download them.
  - The download may just not work.
  - If the dataset is updated, then only files which themselves have been updated need to be processed.
- There are lots of kinds of data files, looking at them via their extensions.
  - There are CSV files and they are not too hard to deal with.
  - There are XLSX files and they are also not too hard to deal with.
  - Some datasets have "arcgis-geoservices-rest-api" files, but they are just placeholders?
  - There are "Thumbs.db" files, which can be removed.
  - There are "geojson" files.
  - There are document files (not data) which may be "doc", "docx". "pdf", "rtf" files.
  - Some "pdf" may actually be data.
  - There are spreadsheet files (not being read), which are "xls" (3k), "xlsb", "xlsm", "xsd", "xslt" files.
- Tables and files are mostly tracked by the sources table and the tables/columns table.
  - The source links to a dataset via its pk.
  - The source contains a file_name, file_digest and a sheet name (for spreadsheet files).
  - The source gives the name of a table, the target for the file's data.
  - There are some flags, TBD: "removed", "missing", "merges_to".
  - There are rows_num and cols_num columns in the source. Why?
  - The table table also tracks the number of rows.
  - The table in the sources table and the row in the tables table are not connected. Why?
- There is a tags table, with a join table, for connecting tags to either datasets or some other object.
  - The tag join table links via the target pk, an identifier for the target table, and the tag pk.
- An updates table tracks when datasets are downloaded and tracks whether the processing had an error.

## Known unknowns:
- How hard is it going to be to read all of the different spreadsheet types? Is there a way to make this a less obnoxious task?
- Can we get geo data out of the ArcGIS tarpits?
- Who is interested in this data and who might value this work?

## Unknown unknowns:
- Are there any? :--)

## Questions:
- Should I just bite the bullet and stop using bash scripts?
- What kind of data abstraction layer should I use? SQLAlchemy? Something else?
- Do I need to think about the ability to store to other databases?

## Design Ideas
There are a series of questions. Each phase of the process answers a question and stores the result.

Q: Have we seen this dataset?

If it is a new page, add it to the datasets table.

Q: Have we downloaded the current zip file?

Read the dataset information off of the page, store updated information and note when the dataset
was updated by Cal HHS.

These questions are handled by the fetchability script and the data is stored in the datasets table
and the sources table.

```
mysql> desc datasets;
+-----------------------+---------------+------+-----+---------+-------+
| Field                 | Type          | Null | Key | Default | Extra |
+-----------------------+---------------+------+-----+---------+-------+
| pk                    | int           | NO   | PRI | NULL    |       |
| name                  | varchar(255)  | YES  | UNI | NULL    |       |
| update_ca_hhs         | bigint        | YES  |     | NULL    |       |
| update_ca_hhs_fails   | tinyint       | YES  |     | NULL    |       |
| update_zip_file       | bigint        | YES  |     | NULL    |       |
| update_zip_file_fails | tinyint       | YES  |     | NULL    |       |
| update_tables         | bigint        | YES  |     | NULL    |       |
| update_tables_fails   | tinyint       | YES  |     | NULL    |       |
| url                   | varchar(1027) | YES  |     | NULL    |       |
| zip_file              | varchar(127)  | YES  |     | NULL    |       |
| updated               | bigint        | YES  |     | NULL    |       |
| inactive              | bigint        | YES  |     | NULL    |       |
+-----------------------+---------------+------+-----+---------+-------+
```

The update_ca_hhs columns stores the time that the Cal HHS gives for the last update of the dataset.
The update_zip_file column stores the time that we downloaded a zip file. These dates are checked, and
if the update_ca_hhs value is greater than the update_zip_file value, the zip file is downloaded and
the time is noted.

The update_tables value stores the time that the zip file was used to add data to the database tables.
The value of this should be greater than the value of the update_zip_file column,

The update_ca_hhs_fails, update_zip_file_fails, and update_tables_fails store a count of how many times
the referenced update has failed. This only keeps the number of continuous failures. If an operation
succeeds, the value will be set to 0. If an operation starts to fail and continues to fail, these
values will go up. The referenced value should only be considered valid if the references "fails" value
is 0.

What if it is not true that update_ca_hhs < update_zip_file < update_tables?

If the update_zip_file value is less than the update_ca_hhs value, download the zip file. If the
update_tables value is less than the update_zip_file value, then process the zip file and put its data
into the database. If this process fails, note that this occurred.

```
mysql> desc sources;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| pk          | int          | NO   | PRI | NULL    |       |
| ds_pk       | int          | YES  | MUL | NULL    |       |
| file_name   | varchar(255) | YES  |     | NULL    |       |
| file_digest | char(64)     | YES  |     | NULL    |       |
| sheet_name  | varchar(255) | YES  |     | NULL    |       |
| table_name  | varchar(255) | YES  | MUL | NULL    |       |
| created     | bigint       | YES  |     | NULL    |       |
| inactive    | bigint       | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
```

