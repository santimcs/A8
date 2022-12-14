| How to do things pandas way | Source |
|---|---|
| Calculate number of days in sqlite | Weekly/010 |
| Filter stocks into SET50, SET100, mai & SET | Weekly/010 |
| Export data in JSON format  | Weekly/010 |
| Export data in CSV format | Weekly/010 |
| Define performance (Better, Worse, No change) | Weekly/020 |
| Apply lambda by sending row of data | Weekly/110 |
| Simple apply function by sending column value | Weekly/110 |
| Format value counts to percentage | .value_counts(normalize=True).to_frame().style.format('{:.2%}') 
| Display row with null value | df_tmp\[df_tmp\['volbuy'\].isna()\] |
| Create sqlite table from dataframe | Weekly/060 |
| Panel tabulator | Weekly/130 |
| Beautiful Soup | Weekly/230 |
| Filter and set values including default | Ad hoc/020 |
| Join series value into list to be used for filter | Daily/012 |
| Display row with null value | df_tmp[df_tmp['volbuy'].isna()] |
| Rename column names | df_merge.rename(columns={'shares_x': 'shares'}, inplace=True) |
| Drop columns | df.drop(columns=['A','B'],inplace=True) |
| Drop duplicated records | df = df.drop_duplicates(subset='name', keep='first') |
| Display data without create dataframe | pd.read_sql_query ('select * from buys', conpf) |





