select Dates, count(*) as Number_of_Crimes
	from (select substring([Date], 1, 10) as Dates
			from Crimes_2001_to_Present) Crime_Counts
	group by Dates
	order by Dates asc

-- (retrieved from https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-Present/ijzp-q8t2/about_data)