# CA HHS Dataset Catalog

See https://data.chhs.ca.gov/dataset/dataset-catalog for this dataset. It is one of many found on
the Calfornia Health and Human Services department Open Data Portal, and it is of course a catalog
of all of the other datasets.

I downloaded the csv from the page above. I opened it in Libre Calc. I removed some of the columns.
You can leave them if you desire to. I left these columns:

* _id
* Title
* Description
* Department
* Program
* Contact
* Email
* Homepage URL
* Temporal Coverage
* Spatial/Geographic Coverage
* Geographic Granularity
* Created
* Last Updated
* Topic
* Tags
* Dataset URL
* Dataset ID

I then created a table in MySQL for this data. I used the following:

     % mysql --local-infile=1

     mysql> create database ca_hss;

     mysql> CREATE TABLE `catalog` (
       `_id` int,
       `title` varchar(1023),
       `description` text,
       `department` varchar(255),
       `contact` varchar(1023),
       `email` varchar(63),
       `homepage_url` varchar(255),
       `temporal_coverage` varchar(1023),
       `geo_coverage` varchar(1023),
       `geo_granularity` varchar(63),
       `created` varchar(63),
       `updated` varchar(63),
       `topic` varchar(1023),
       `tags` varchar(2046),
       `dataset_url` varchar(255),
       `dataset_id` varchar(255)
     )

     mysql> LOAD DATA LOCAL INFILE '/home/ray/Projects/CalHHS/catalog/dataset-catalog-lessdata.tsv'
            INTO TABLE catalog
            FIELDS TERMINATED BY '\t'
            OPTIONALLY ENCLOSED BY '"'
            LINES TERMINATED BY '\n'
            IGNORE 1 LINES;

And then I am using the Flask application that you see here to look at the catalog.

YMMV!

If you have any suggestions or questions, feel free to create an issue and pull-requests are always welcome.

