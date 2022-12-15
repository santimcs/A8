	import panel as pn
	from itables import init_notebook_mode, show
	init_notebook_mode(all_interactive=False)
	pn.extension('tabulator')
	
	sql = '''
	SELECT *
	FROM orders
	ORDER BY trade, name'''
	df = pd.read_sql(sql, conlite)
	
	df_tab = pn.widgets.Tabulator(df)
	df_tab


	show(df[['trans','name','spd','reason','qty','target','current','active']])


[[Display Data without Create Dataframe]]