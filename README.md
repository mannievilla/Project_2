# Project_2

Extract-Transform-Load Homework
Avocados around the US!
Proposal: As new employees for the Hass Avocado comapny, we have been tasked with creating a database to help the advertising and sales team find out who (besides millenials) are buying their avocados and where. The avocado toast trend is stronger than ever and it's up to us to help detangle all of this data.

Roles
Miguel: Loading
Johnathan: Transform
Marquetta: ERD and ReadMe
Manny: Transform


Sources:
1. Weekly Avocado Sales from 2015-2018: https://www.kaggle.com/datasets/neuromusic/avocado-prices
2. Zip Code info: https://simplemaps.com/data/us-zips (Johnathan)
3. Census info: https://www.census.gov/data/tables/time-series/demo/popest/2010s-total-cities-and-towns.html 

Step 1 Extract:
1. Downloaded csv file from Kaggle and converted into a dataframe. Fixed dates and removed zeroes. Formatted text and numbers.


Kaggle table: removed bag info from avocado table, removed ###### from date column, cleaned up region column to show only cities

2. Downloaded USzips csv and imported into Jupyter Notebook: keep columns A D F
SUB-IP csv: columns 2015-2018 and city names

Step 2 Transform:





Step 3 Load:
After extracting and transforming the data, we were left with three data frames: population with city populations from 2015 to 2018, a junction uszips table with zip codes, cities, and state names and the avocado table with weekly sales, date, average price, total volume and year. These databases were loaded into MongoDG