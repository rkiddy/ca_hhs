Things are getting big and I need to re-think how this is being done.

## Goal:

As I see it now, I want to produce an MCP, which is an agentic resource that makes the data in the CalHHS easily usable. The data should include meta-data which described the currency of the data and the quality of the data. A rule engine may need to be developed to examine the quality of the data.

## Known knowns
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
