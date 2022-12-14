	from sqlalchemy import create_engine
	
	engine = create_engine("sqlite:///c:\\ruby\\port_lite\\db\\development.sqlite3")
	conlite = engine.connect()