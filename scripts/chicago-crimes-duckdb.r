library(DBI)

# create in-memory database
db <- dbConnect(duckdb::duckdb(), dbdir = ":memory:")

crimes <- dbExecute(db, "CREATE TABLE crimes AS SELECT * FROM read_csv_auto('../data/crimes.csv')")

crimes_info <- dbGetQuery(db, "DESCRIBE crimes;")
print(crimes_info)
