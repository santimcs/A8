	from datetime import date, timedelta
	from pandas.tseries.offsets import BDay
	
	today = date.today() # today = '22-12-16'
	today = today - timedelta(days=4) # to force to Monday
	# specify the number of business days
	num_days = 1
	# convert the timedelta object to a BusinessDay object
	num_business_days = BDay(num_days)
	yesterday = today - num_business_days
	today, yesterday


[[Format PortLite]]

#dates