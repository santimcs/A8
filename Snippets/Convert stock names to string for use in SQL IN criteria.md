	names = df["name"].values.tolist()
	in_p = ", ".join(map(lambda name: "'%s'" % name, names))
	in_p
	
	sql = """
	SELECT name, price 
	FROM price 
	WHERE date = '%s' AND name IN (%s) 
	ORDER BY name"""
	sql = sql % (today, in_p)

[[Temp Snippet]]