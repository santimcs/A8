	name = 'BH'
	limit = 20 # 1 month of data
	
	sql = """
	SELECT *
	FROM price 
	WHERE name = '%s'
	ORDER BY date DESC
	LIMIT %s"""
	sql = sql % (name, limit)
	df = pd.read_sql(sql, const)
	df.describe().round(2)