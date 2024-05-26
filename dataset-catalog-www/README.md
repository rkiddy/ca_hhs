# CA HHS Dataset Catalog

See https://data.chhs.ca.gov/dataset/dataset-catalog for this dataset. It is one of many found on
the Calfornia Health and Human Services department Open Data Portal, and it is of course a catalog
of all of the other datasets.

I downloaded the csv from the page above.

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
       `language` varchar(63),
       `frequency` varchar(63),
       `de_identification_method` varchar(63),
       `source_link` varchar(255),
       `data_collection_tool` varchar(127),
       `license` varchar(255),
       `limitations` varchar(127),
       `add_limitations` varchar(127),
       `add_information` VARCHAR(127),
       `related_resources` varchar(255),
       `secondary_sources` varchar(255),
       `citation` varchar(127),
       `created` varchar(63),
       `updated` varchar(63),
       `topic` varchar(1023),
       `tags` varchar(2046),
       `dataset_url` varchar(255),
       `dataset_id` varchar(255)
     )

     mysql> LOAD DATA LOCAL INFILE '/home/ray/Projects/CalHHS/dataset-catalog/data/dataset-catalog.csv'
            INTO TABLE catalog
            FIELDS TERMINATED BY ','
            OPTIONALLY ENCLOSED BY '"'
            LINES TERMINATED BY '\r\n'
            IGNORE 1 LINES;

And then I am using the Flask application that you see here to look at the catalog.

YMMV!

If you have any suggestions or questions, feel free to create an issue and pull-requests are always welcome.

