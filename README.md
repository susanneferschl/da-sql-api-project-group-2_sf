# SQL-API project

It's project time again :tada:!  
In this project you will combine your SQL, Python and API skills and use them in combination with each other.  

## Objective
As we have learned, the two main tools of Data Analysts are SQL and Python.  
In the last lectures and exercises, you have learned how to use SQL, how to get data out of a database into a pandas dataframe and how to enrich your data with the help of APIs.
And now you should do it altogether.


## Task 
Airline wants to know if weather affects their flight delays.


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
Also after having created this environment, you can install additional packages within it. **Therefore you need to have activated your environment**!  

3. Add your database.ini file from the SQL-Database connection-repo to this repo, without pushing it. 
4. Start jupyter lab.  

### Task description
1. Set up a connection to the flights table in our SQL database and get all the data in a pandas dataframe.
3. Enrich your flights data by historical weather data using the [meteostat API](https://dev.meteostat.net/api/point/daily.html#endpoint). 
  2.a) Sign-up to the Meteostat API [here](https://auth.meteostat.net) and use your API key to make your first call to the Weather API.  
  2.b) Access and extract data from your JSON.  
  2.c) Flatten your nested JSON data and transform it into a DataFrame for your future analysis.  
5. Make a basic EDA on both of the tables.
6. Come up with three different hypotheses regarding your available data, taking into account both of the datasets you have.
7. Make an EDA following your hypotheses.

### Deliverables
1. Clean adn structured Jupyter Notebook containing the (well-documented) code to connect to database as well as API as well as the required EDA part.
2. Presentation to the stakeholder, answering their question regarding weather and flights.

**Find some help/support here**:

[](links)
