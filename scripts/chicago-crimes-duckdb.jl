using Dates
using DuckDB

# create a new in-memory database
db = DBInterface.connect(DuckDB.DB, ":memory:")

# import raw CSV crimes data into in-memory DuckDB instance
println("Loading CSV data ...")
startTime = Dates.Time(Dates.now())
DBInterface.execute(db,
  "CREATE TABLE crimes AS SELECT * FROM read_csv_auto('./data/crimes.csv')")
endTime = Dates.Time(Dates.now())
loadTime = round((endTime - startTime), Dates.Second)
println("CSV data loaded in $(loadTime)")

# get crimes table info
println("\ncrimes table info:")
crimesInfo = DBInterface.execute(db, "DESCRIBE crimes;")
println(crimesInfo)

# drop crimes data table
println("\nDropping crimes table ...")
DBInterface.execute(db, "DROP TABLE crimes;")

dataTables = DBInterface.execute(db, "SELECT * from information_schema.tables;")
print("Empty DuckDB 'information_schema.tables' view: $(dataTables)")
