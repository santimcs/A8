	from sqlalchemy import create_engine

	engine = create_engine("mysql+pymysql://root:@localhost:3306/stock")
	const = engine.connect()
	engine = create_engine(
    "postgresql+psycopg2://postgres:admin@localhost:5432/portpg_development")
	conpg = engine.connect()
	engine = create_engine("sqlite:///c:\\ruby\\port_lite\\db\\development.sqlite3")
	conlite = engine.connect()

[[Data Path]]