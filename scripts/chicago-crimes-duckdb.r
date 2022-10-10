library("DBI")

# create in-memory database
db <- dbConnect(duckdb::duckdb(), dbdir = ":memory:")

dbExecute(db, "CREATE TABLE crimes AS SELECT * FROM read_csv_auto('../data/crimes.csv')")

crimes <- dbGetQuery("DESCRIBE crimes;")
print(crimes)