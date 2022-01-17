# SQL-API project

It's project time again :tada:!  
In this project you will combine your SQL, Python and API skills and use them in combination with each other.  

## Objective
As we have learned, the two main tools of Data Analysts are SQL and Python.  
In the last lectures and exercises, you have learned how to use SQL, how to get data out of a database into a pandas dataframe and how to enrich your data with the help of APIs.
And now you should do it altogether.


## Task Overview
The Research Center for Aerospace (RSA) where you work for as Data Analyst wants to keep track of accumlated flights data in combination with weather data. Your task is to find a situation where the weather has impacted on flight performance and use this to contribute some knowledge about how different weather affects flights in different cities.

![](images/PIREPs-featured.jpg)  
### Setting-up working environment

1. Fork this repository in Github
2. Open VS Code and a terminal window in VS Code
3. Use your existing environment from our exercises or create a new conda environment for this project. Don't forget to install *sqlalchemy*, *psycopg2* as well as packages needed for doing some EDA and visualizations.  

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

4. Add your sql.py file from the internal data notebooks.
5. In order to avoid pushing notebooks containing your API key to GitHub, in the sql.py file, add you api_key as a variable. Then import this into your notebook as we have with other connection details.  
6. Open a new notebook in VS code.  

### Task steps
1. Choose a historical weather event that occured in the United States sometime in the past 30 years that you believe would have led to the cacnellation of flights.

2. Get data on flights & Set up a connection to our SQL database.  
  a. As described in [this notebook](https://github.com/neuefische/da-sql-api-project/blob/main/get_flights_data.ipynb), download csv file containing flights data for the specific years and months you need from the [Bureau of Transportation Statistics website](https://transtats.bts.gov).    
  b. Clean your data (e.g. specify which columns you want to keep, rename columns etc.).  
  c. Reduce your dataframe to include at least 5 origin airports (choose either big cities or locations from this [list of locations with weather stations](https://bulk.meteostat.net/v2/stations/lite.json.gz)).  You can expand your dataset to include more locations or destinations if this is helpful in your analysis.   
  d. Make an EDA on the flights data you have downloaded to explain what data you have and any unexpected findings.   
  e. Connect to database and join the data with the airports table of our database to get the latitude, longitude or city names for the airports in your dataset. 
  
3. As next step, get historical weather data using the [Meteostat API](https://dev.meteostat.net/api/point/daily.html#endpoint).   
  a. Follow the steps [here](https://dev.meteostat.net/api/) and sign-up to RapidAPI in ordet to get access to the Meteostat API  
  b. Use your API key to get weather data for your chosen month/year and locations.  
  c. If necessary flatten your JSON data and transform it into a DataFrame for future analysis.  
  d. Make sure to have primary and foreign keys so that it's possible to join the weather data to your flights data.  
  
4. Perform a basic EDA on both of the tables.  
  a. Come up with three different hypotheses regarding your available data, taking into account both of the datasets you have (perhaps linking dep_delay to weather).  
  b. Complete EDA following your hypotheses and clearly outline your findings (either that everything is as expected or any unexpected results).  

### Deliverables
1. Clean and structured .ipynb Notebook containing the (well-documented) code to connect to database as well as API as well as the required EDA part.
2. 10-minutes technical presentation to your colleagues, presenting the results of your data exploration and answering your hypotheses.


**Keep in mind that your API calls are limited!**
