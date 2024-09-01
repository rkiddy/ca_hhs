
This dataset is complex. There are multiple problems with real data extraction and this is a work
in progress.

---------------------------------------------------------------------------------------

There are files that are keeping track of something.

diffs_2023_2024.txt - These are differences I found between the 2023 files and the 2024 files when the
latter files were released in August of 2024.

cdm.py - Reading from the CDM or 'CDM All' spreadsheets and, where it works, putting the data into a table.

columns.py - Trying to find the column heads, as we need for the Common25 and CDM data.

common25.py - Trying to save the Common25 data.

diffs_2023_2024.txt - These are differences I found between the 2023 files and the 2024 files when the
latter files were released in August of 2024.

excel.py - Trying to abstract out the reading and writing of the various excel files.

files_import.sh - DO NOT USE. This is complex and may not work. Test as you go.

files.txt - Produced by the files_list.sh script, so that we can compare with the files as we started.

sheets.py - Was trying to use a chargemasters_sheets table to keep track of what the various sheets were named.

sources.txt - Produced by the sources/create_source_list.sh script, so that we can track our fixes for file names.

hcai_id_confusion.txt - uses the hcai_id_check.sh script to check the hcai_id in the files table and verify that
the files in a directory all have the same hcai_id. (There are cases where there are differences. -rrk 2024-08-26)

---------------------------------------------------------------------------------------

Each facility is supposed to send in multiple Excel files, or multiple sheets in a single Excel file,
every year. The data one can download is the zip file that contains all of those files.

The facilities are identified by the directory that the files are in, but not in a canonial way.

For example:

     $ ls sources/2023/2023\ Completed\ Reviews/
     'Adventist Health and Rideout'
     'Adventist Health Bakersfield'
     'Adventist Health Clearlake'
     'Adventist Health Delano'
     'Adventist Health Glendale'
     ...
     'Adventist Health Ukiah Valley'
     'Adventist Health Vallejo'
     'Adventist Health White Memorial'
     'AHMC Anaheim Regional Medical Center'
     'AHMC Seton Medical Center'
     'AHMC Seton Medical Center Coastside'
     'Alameda Hospital'
     'Alhambra Hospital Medical Center'
     'Aliso Ridge Behavioral Health, LLC'
     'Alta Bates Summit Medical Center'
     'Alta Bates Summit Medical Center - Alta Bates Campus'
     'Alta Bates Summit Medical Center - Herrick Campus'
     'Alta Bates Summit Medical Center - Summit Campus'
     'Alvarado Hospital Medical Center'
     'Alvarado Parkway Institute B.H.S'

Inside of these directories are the files. The files are sometimes named with the CHAI id number and with
the type of the file. But many files do not include the HCAI id number and there are variations in the names
of the files.

For example:

     $ ls sources/2023/2023\ Completed\ Reviews/'Alhambra Hospital Medical Center'
     106190017_CDM_2023.xlsx
     106190017_Common25_2023.xlsx

This example is fairly clean, except that the year at the end of the file name is unnecessary.

     $ ls sources/2023/2023\ Completed\ Reviews/'Woodland Memorial Hospital'
     106571086_CDM_ALL_2023.xlsx
     'OSHPD Cover Letter Woodland Memorial Hospital.docx'

This example shows the excel file with multiple sheets.

These sheets are not named in any defined way. There are common patters, but no requirements. For example, the
sheet names in the excel file above are:

* CDM's 2023
* AB 1045 Form
* % Increase

Some sheets with use "CDMs" instead of "CDM's" (which is not a possessive), "Common25" instead of "AB 1045" and "Percent" or "Pct" instead of "%". And there are variations of all of these names.

The general approach that I am taking is to get what data I can. I gather information about what I have and put
it into "work" tables, so that my process can be driven from the database contents. I have tables for:

* the files that I have, giving each a pk. I have a flag that tells me if if a "Common25" file. This could be
done for the other desired data types.
* the directories that I see, linking each to its files.
* the HCAI id values, linking each to its directory.
* the sheet names, or tab names, linking each to its file.
* the column heads as I find them, linking each to its location within a sheet.

Needless to say, the column headings are not standard. Also, their distance from the top varies, as some facilities
put in extra notes. And the column order has some common patters but the order can also differ radically. And there
might be extra columns. Some sheets have one column for costs and some have separate columns for outpatient and
inpatient procedures, even though it is not clear that these are needed. I think the outpatient costs are what
is strictly needed, but I am not positive.

---------------------------------------------------------------------------------------

Specific Issues:

We have a file like: 2023/2023 Completed Reviews/Canyon Ridge Hospital/106364050_CDM_ALL_2023.xls

has data:

#	Service Code	Description	CPT Code	PRICE
1	916100-1	ADULT PSYCH GROUP THERAP	90853	 240.00 
2	916101-9	ADULT PSYCH GRP THERAPY	90853	 240.00 
3	916102-7	ADULT ACTIVITY THERAPY	G0176	 150.00 

Right now, I am expecting the CPT Code in column B. Here, CPT Code is in column D.

I need to locate the "CPT Code" label, and then look to the column before and after it,
no matter where it is.

Ultimately, this will still have problems if the columns are not in the correct order.

But can I rely on column names?

---------------------------------------------------------------------------------------

