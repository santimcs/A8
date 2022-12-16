	import panel as pn
	from itables import init_notebook_mode, show
	init_notebook_mode(all_interactive=False)
	pn.extension('tabulator')
	
	sql = '''
	SELECT *
	FROM orders
	ORDER BY trade, name'''
	df = pd.read_sql(sql, conlite)
	
	df_tab = pn.widgets.Tabulator(orders, layout='fit_data', width=710)
	df_tab


	show(df[['trans','name','spd','reason','qty','target','current','active']])


[Medium](https://medium.com/spatial-data-science/styling-pandas-dataframe-elegantly-with-tabulator-c66f33b1905f)

[Tabulator](https://pyviz-dev.github.io/panel/reference/widgets/Tabulator.html)


[[Display Data without Create Dataframe]]