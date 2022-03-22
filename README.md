# Project_2
Extract-Transform-Load Homework
Avocados around the US!

Proposal: As new employees for the Hass Avocado company, we have been tasked with creating a database to help the advertising and sales team find out who (besides Millenials) are buying their avocados and where. The avocado toast trend is stronger than ever and it's up to us to help detangle all of this data. Our final database is meant to be used to help track avocado sales weekly, by region, city, state, or zip code.

Roles
Miguel: Loading
Johnathan: Transform
Marquetta: ERD and ReadMe
Manny: Transform


Sources:
1. Weekly Avocado Sales from 2015-2018: https://www.kaggle.com/datasets/neuromusic/avocado-prices
2. Zip Code info: https://simplemaps.com/data/us-zips (Johnathan)
3. Census info: https://www.census.gov/data/tables/time-series/demo/popest/2010s-total-cities-and-towns.html 

The Process
**E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).
**T**ransform: what data cleaning or transformation was required.
**L**oad: the final database, tables/collections, and why this was chosen.


Step 1 Extract:
1. Downloaded avocado sales CSV file from Kaggle and converted it into a data frame. Fixed dates and removed zeroes. Formatted text and numbers.
2. Downloaded USzips CSV from simplemaps.com website. 
3. Downloaded SUB-IP/population CSV from census.gov website. 

Step 2 Transform: 
1.	Avocado sales CSV: Formatted dates from YYYY-MM-DD to MM/DD/YYYY. Removed ###### values from date column. Formatted text and numbers. Removed bag (Total Bags/Small Bags/Large Bags/XLarge Bags) columns. Removed commas from region column. 

2.	simplemaps
3.	SUB-IP: renamed to "population". 

Step 3 Load:
After extracting and transforming the data, we were left with three data frames: population with city populations from 2015 to 2018, a junction uszips table with zip codes, cities, and state names, and the avocado table with weekly sales, date, average price, total volume and year. These databases were loaded into MongoDB. Include reason for using 

Queries
