# Chicago-Crimes
#### *Analysis of Chicago crime data in 2023 using Python and R.*
&nbsp;
### *Dataset*
Data was acquired from https://data.cityofchicago.org/Public-Safety/Crimes-2023/xguy-4ndq (on 7/19/2023).

The "EDA" and "Geographical Vizualization" sections were created using data from 2023.

The time series was computed after transforming the dataset to only include crime counts per day. 

&nbsp;

## 1. Data Cleaning and EDA
Exploratory data analysis was conducted to investigate basic information about the data set. This is present in the "EDA" 

&nbsp;

![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/32a972e0-d787-4f23-b8f1-72d2428e3723)

Crimes occur most frequently at 12 am. Apart from this, crimes slowly increase from 6 am to 3 pm, and then they slowly decrease until around 5 am (excluding 12 am)

&nbsp;

![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/d3493dd5-c617-4836-be59-08295ae974b2)

Theft, battery, and motor vehicle theft are the most common reported crimes.

&nbsp;

![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/271792d5-6652-4252-ab26-56729998e1b9)

Correlation plots were mostly created to investigate different crimes relationships with domestic crimes and
crimes with arrest.
All crimes had positive correlations with arrests. Motor vehicle theft and deceptive practice had the lowest
correlations with arrests while weapons violations and narcotics had the highest correlations with arrests.
Whether or not crimes were correlated with domestic crimes depended on the crimes. Battery and criminal
damage had the highest correlations with domestic crimes, while narcotics and deceptive practice had the
lowest correlations with domestic crimes.

&nbsp;

## 2. Geographical visualization

Plots of crime density in different Chicago areas were created using geopandas. These are shown below. 

![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/678190d7-c957-47f1-b6a3-b9cda42e2f88)

By this, Fuller Park has the highest density of crimes (0.144%) by population for the community areas, while Edison Park has the smallest density of crimes (0.0124%) by population.
Furthermore, Austin has the highest number of overall crimes (6615) for the community areas, while Edison Park has the smallest number of overall crimes (143).

&nbsp;

## 3. Time Series

A time series model was created to predict current crime trends (January 2020 - July 2023) based on past crime trends (2001 - 2019).

&nbsp;

### *Chicago Crimes Time Series (January 2001 to July 2022):*
![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/f7ed8f81-2467-42cc-9541-e52ebcfcfde4)


Basic information understood about the time series from the initial analysis includes:
* Yearly seasonality
* Weekly seasonality
* A downwards trend
* Spikes on New Years Day
  

Six different models were built for the Chicago Crimes time series. These models are compared below in the two tables.

&nbsp;

### *Error Statistics of the Models:*
![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/2ad6dbd3-d4a5-48cb-9e83-654e2abc9087)


### *Error Statistics of the models, comparing test data with actual data:*
![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/94b82e83-c6b1-4f20-b29d-f5262bd12f6e)


By the analysis of the errors, the best model was found to be the STLM ARIMA model with multiple seasonality. 
This model, its forecast for Jan. 2020 to July 2023, and information about its residuals are shown below.

&nbsp;


### *Chicago Time Series with STLM ARIMA(4, 1, 2) Forecast with Multiple Seasonality:*
![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/dc6043a5-be82-4874-91c3-7c2155693733)


### *STLM ARIMA(4, 1, 2) Forecast Residuals:* 
![image](https://github.com/krtfesm/Chicago-Crimes/assets/110089197/56ebb78e-d9ad-4d16-8d9d-530d22991833)






