	colt =  'percent status fm_price to_price market \
	fm_date bdays max_price min_price'.split()
	watch_list = df.loc[abs(df.percent) >= 3,colt]
	watch_list.sort_values(by="percent",ascending=False).style.format(format_dict)
