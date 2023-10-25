# Chicago-Crimes
#### *Analysis of Chicago crime data in 2023 using Python and R.*
&nbsp;
### *Dataset*
Data was acquired from https://data.cityofchicago.org/Public-Safety/Crimes-2023/xguy-4ndq (on 7/19/2023).

## 1. Data Cleaning and EDA
Exploratory data analysis was conducted to investigate basic information about the data set. This is present in the "EDA" 


![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/50991c9e-9645-4898-8dbf-86adcdb3d663)


Main insights: 
* Crimes occur most at 12 am, slowly decrease over time from midday.

theft, battery, and motor vehicle theft are the most common crimes commit

Crimes like Motor Vehicle Theft and Criminal Damage have similar distributions.

Correlation plots were mostly created to investigate different crimes relationships with domestic crimes and
crimes with arrest.
All crimes had positive correlations with arrests. Motor vehicle theft and deceptive practice had the lowest
correlations with arrests while weapons violations and narcotics had the highest correlations with arrests.
Whether or not crimes were correlated with domestic crimes depended on the crimes. Battery and criminal
damage had the highest correlations with domestic crimes, while narcotics and deceptive practice had the
lowest correlations with domestic crimes.

## 2. Geographical visualization

Plots of crime density in different Chicago areas were created using geopandas. These are shown below. 

![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/678190d7-c957-47f1-b6a3-b9cda42e2f88)

By this, Fuller Park has the highest density of crimes (0.144%) by population for the community areas, while Edison Park has the smallest density of crimes (0.0124%) by population.
Furthermore, Austin has the highest number of overall crimes (6615) for the community areas, while Edison Park has the smallest number of overall crimes (143).


## 3. Time Series

A time series model was created to predict current crime trends (2023) based on past crime trends (2001-2022)

Error Stats of the Models:
![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/2ad6dbd3-d4a5-48cb-9e83-654e2abc9087)

Error Stats of the models, comparing test data with actual data:
![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/94b82e83-c6b1-4f20-b29d-f5262bd12f6e)



Chicago Time Series with forecast
![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/c4dd1221-3dd0-45a1-91d6-fa590f9b32f4)




