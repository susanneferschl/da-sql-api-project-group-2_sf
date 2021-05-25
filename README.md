# SQL-API project

It's project time again :tada:!  
In this project you will combine your SQL, Python and API skills and use them in combination with each other.  

## Objective
As we have learned, the two main tools of Data Analysts are SQL and Python.  
In the last lectures and exercises, you have learned how to use SQL, how to get data out of a database into a pandas dataframe and how to enrich your data with the help of APIs.
And now you should do it altogether.


## Task 
The research center for aerospace you work for as Data Analyst wants to keep track of accumlated flights data in combination with weather data.  


### Setting-up working environment

1. Fork and clone this repository
2. Create your own project conda environment. Don't forget to install *sqlalchemy* as well as packages needed for doing some EDA and visualizations.

```BASH 
# Create new environment
$ conda create --name <env_name>
# Activate environment 
$ conda activate <env_name>
# Installing packages 
$ conda install <package_name>
```
Activate your environment. 
Also after having created this environment, you can install additional packages within it. 

3. Add your database.ini file from the SQL-Database connection-repo to this repo, without pushing it. 
4. Start jupyter lab.  

### Task description
1. Set up a connection to our SQL database.   
  1.a) As we did before in [this notebook](https://github.com/neuefische/da-sql_database_connection/blob/main/Connect_to_db_1.ipynb), download csv file containing flights data for a specific year and month from the [Bureau of Transportation Statistics website](https://transtats.bts.gov).  
  1.b) Clean your data (e.g. specify which columns you want to keep, rename columns etc.) and make a basic EDA on the flights data you have downloaded.  
  1.c) Check which origin locations are included in your data. Choose three different of these locations and adapt your dataframe so that it only contains your location selection.
2. In addition, get historical weather data using the [meteostat API](https://dev.meteostat.net/api/point/daily.html#endpoint).  
  2.a) Sign-up to the Meteostat API [here](https://auth.meteostat.net).
  2.b) Use your API key to make your first call to the Weather API for your chosen month/year and locations.  
  - how to find the weather stations linked to your chosen locations is described [here](https://dev.meteostat.net/api/stations/search.html#endpoint).    
  - [Here](https://dev.meteostat.net/api/stations/daily.html#endpoint) you can find instructions on how to get daily data for specific period of time.  
  2.c) Access and extract these data from your JSON.  
  2.d) Flatten your nested JSON data and transform it into a DataFrame for your future analysis.  
3. Make sure your tables can be joined on a related column.  
4. Make a basic EDA on both of the tables.  
5. Come up with three different hypotheses regarding your available data, taking into account both of the datasets you have.  
6. Make an EDA following your hypotheses.  

### Deliverables
1. Clean and structured Jupyter Notebook containing the (well-documented) code to connect to database as well as API as well as the required EDA part.
2. Presentation to the stakeholder, answering their question regarding weather and flights.

**Find some help/support here**:

[](links)
