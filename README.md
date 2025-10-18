
The system that I am setting up here attempts to do a few things.

1. List the datasets published by Cal HHS. The discoverability there leaves something to be desired.
2. Put all the different file types (csv files, xlsx files, etc, etc) into mysql tables.
3. Straighten out the data types. The data goes into varchar columns first but this can be moved into proper types.
4. Publish front-ends for as much of the data as possible. See the "App?" column. Just getting started.
5. Generally make the data more obviously useful. We will see.

I am not publishing the data that I have, unless there is a front-end for it. Right now, there is too much data
and I am not sure how useful any of it is. Lots of it is old data and might not be getting updates. There may
have been laws or regulations that required the collection and publishing of it and those have changed.
 
The code I am checking in can be used for anyone else to download the data and construct the tables for
whichever of the datasets that I have working. I have been working on the csv files first and then the xlsx
files. There are other Excel file types that my current python code cannot deal with, such as ".xls" files,
".xlsm" files, and so on. The issues with these may be small. I just have not bothered with them yet.

See the wiki for more details.

As of Oct 2025, I lost a hard drive on my laptop, but everything is up on github. Of course. So, not much was
lost. But this would be a good place to check in.

I am able to run:

     % stp fetchability.py
     % stp processing.py
     % stp update_one.py

There is some data machinery that was taken down that is not completely replaced. But this is working. I run
the scrape of the Cal HHS datasets every morning and this data is put into a publicly accessible JSON file.
Anyone can use that with the --opencal-json-file flag on the fetching script.

The front-end of my app is https://https://opencalaccess.org/hcai/ but an administrative (read-only) page
is giving the status of every CSV file and every table at https://opencalaccess.org/hcai_all/. XLSX files
are TBD, but those were working so thatdata will be updated RSN.

---------

Set up for myaql-ssh:

The mysql database is running on a remote server. I am in a coffee shop. How do I run the daily scripts?

on my laptop:

% ssh -N -L 3307:127.0.0.1:3306 ray@opencal

then access mysql through a connect to the localhost, port 3307, which can be set up in the .env file.

