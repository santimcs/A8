	cols = 'fm_date to_date fm_price to_price qty max_price min_price percent status'.split()
	
	format_dict = {
	    'fm_price':'{:.2f}','to_price':'{:.2f}','diff':'{:.2f}',
	    'max_price':'{:.2f}','min_price':'{:.2f}',
	    'volume':'{:,.2f}','beta':'{:,.2f}',
	    'pct':'{:,.2f}%','percent':'{:,.2f}%',   
	    'fm_date':'{:%Y-%m-%d}','to_date':'{:%Y-%m-%d}',
	    'created_at':'{:%Y-%m-%d}','updated_at':'{:%Y-%m-%d}',
	    
	    'qty':'{:,}','available_qty':'{:,}',
	    'cost':'{:.2f}','buy_target':'{:.2f}','sell_target':'{:.2f}',
	}

[[Calculate Number of Days]]
