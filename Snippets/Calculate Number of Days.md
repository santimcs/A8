	df['bdays'] = (df['to_date'] - df['fm_date']).dt.days



	import pandas as pd
	from datetime import timedelta
	from pandas.tseries.offsets import BDay
	
	# create a dataframe with an 'end_date' column
	df = pd.DataFrame({'end_date': ['2022-01-03', '2022-01-10', '2022-01-17']})
	
	# convert the 'end_date' column to datetime type
	df['end_date'] = pd.to_datetime(df['end_date'])
	
	# specify the number of business days
	num_days = 4 # total 5 days including start and end date
	
	# convert the timedelta object to a BusinessDay object
	num_business_days = BDay(num_days)
	
	# create a new column 'start_date' by subtracting the specified number of business days from the 'end_date'
	df['start_date'] = df['end_date'] - num_business_days
	
	# view the dataframe
	df

[[Yesterday]]

#dates 


