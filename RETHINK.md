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
I need to have the phases of the process more clearly separated. It will be good to determine whether a phase needs to read data or write data and whether it really needs to do both, or if these can be separated.

### Phase One
One phase is the updated dataset download phase. I need to be able to see if there has been a changed via the dataset's "Last Updated" value. I need to then (optionally) download the file and determine if an update to individual files has been made. This information should then to passed on to the processing layer or, in a dry run, just displayed. This phase reads communicates to the Cal HHS web system. This phase will read from the ca_hhs_meta database and only write for the updates table, to track the fetch.

See the source file, fetchability.py, for the phase one functionality.

### Phase two
The processing phase needs to read the data from the file and store it to the database. This phase should do nothing else. This should only write to the database.

### Phase three
A fixing phase needs to happen. This needs to both read and write to the database and is database-specific. But this phase is also optional. Subject to the desire for quality, this may or may not need to do very much.

### Phase four
A verification can run a rule engine to analyze the quality of the data. This phase should only read from the database.

## The Updates Table
My ideas about this table are changing and so I can document here what I think this means.

The updates column started out with just three columns:
```
+----------------+--------+------+-----+---------+-------+
| Field          | Type   | Null | Key | Default | Extra |
+----------------+--------+------+-----+---------+-------+
| ds_pk          | int    | YES  |     | NULL    |       |
| updated        | bigint | YES  |     | NULL    |       |
| result         | int    | YES  |     | NULL    |       |
+----------------+--------+------+-----+---------+-------+
```

When I re-fetched and processed a dataset, I would create a row here. The updated column would be the create-time for the row. The result would be either 0 or 1. If all the processing succeeded, then the result was 0. If there was any problem, there would be a 1 in this column.

I added two columns: fetch_result and process_result, thinking that these would be 0/1 values also. But I want to support some other things.

I am downloading the zip file in the phase one script. I should track that. I think that, in addition to a updated timestamp column, I should have a fetched timestamp column. Then I should have a processed timestamp column but then also a process_result 0/1 column.

Downloading is different than processing. There is no nuance in downloading. Either it works or it does not, because I am not supporting partial downloads. But there are many things that could go wrong in processing and I may want to differentiate them in the future.

Now, I have:
```
+----------------+--------+------+-----+---------+-------+
| Field          | Type   | Null | Key | Default | Extra |
+----------------+--------+------+-----+---------+-------+
| ds_pk          | int    | YES  |     | NULL    |       |
| updated        | bigint | YES  |     | NULL    |       |
| fetched        | bigint | YES  |     | NULL    |       |
| processed      | bigint | YES  |     | NULL    |       |
| process_result | int    | YES  |     | NULL    |       |
+----------------+--------+------+-----+---------+-------+
```

One thing is different. When I do a fetch-only, I will create an updates row, with a NULL value for processed and process_result. 
