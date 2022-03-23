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
2. Census info: https://www.census.gov/data/tables/time-series/demo/popest/2010s-total-cities-and-towns.html 

The Process
**E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).
**T**ransform: what data cleaning or transformation was required.
**L**oad: the final database, tables/collections, and why this was chosen.


Step 1 Extract:
1. Downloaded avocado sales CSV file from Kaggle and converted it into a data frame. Fixed dates and removed zeroes. Formatted text and numbers.
2. Downloaded SUB-IP/population CSV from census.gov website. 

Step 2 Transform: 
1.	Avocado sales CSV: 
	- Imported into Jupyter Notebook.
	- Formatted dates from YYYY-MM-DD to MM/DD/YYYY. 
	- Removed ###### values from date column. 
	- Formatted text and numbers. 
	- Removed bag (Total Bags/Small Bags/Large Bags/XLarge Bags) columns. 
	- Removed commas from region column. 
	- Removed non-city data from region.
	- Formatted columns names to be lower case.
	
2.	SUB-IP-EST2019-ANNRES:
	- Renamed to "population" and imported into Jupyter Notebook. 
	- Removed "Unnamed: 0" column.
	- 
	- Split city_state column into separate city and state columns.
	- Added city ID. 

3.	Junction Table
	- Created new "cities" table using the 'city' and 'state' columns from the population table to use as the IDs. Matched cities from the "cities" table to the "avocado" table to make 
	queries easier. 

Step 3 Load:
After extracting and transforming the data, we were left with two data frames, the population with city populations, and the avocado table with weekly sales, date, average price, total volume and year. These databases were loaded into SQL primarily because of the structure of the data and how easily queries could be run. Joins could be made between any of the tables to show information such as how many sales were made in a certain city in a certain year or seeing the population compared to total volume to help with advertising and research.

## **Schema**

We created our Entity Relationship Database using Quick DBD

![erd](https://github.com/mannievilla/Project_2/blob/main/QuickDBD-Project%202.png)

